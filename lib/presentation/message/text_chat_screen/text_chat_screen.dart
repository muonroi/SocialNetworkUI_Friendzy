import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_tab_screen/widgets/build_appbar_leading_icon_button_one.dart';
import 'package:muonroi_friends/presentation/message/text_chat_screen/notifier/text_chat_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_subtitle.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_text_form_field.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:voice_message_package/voice_message_package.dart';
part './widget/build_message_input_widget.dart';

class MessageTextScreen extends ConsumerStatefulWidget {
  const MessageTextScreen({super.key});

  @override
  MessageTextScreenState createState() => MessageTextScreenState();
}

class MessageTextScreenState extends ConsumerState {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  @override
  void initState() {
    super.initState();
    _isVoice = true;
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    _loadMessages(ref);
    ref.watch(textChatNotifier.notifier).initialiseController();
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.image_outlined)),
                      const Text('Images')
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();
                },
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.folder)),
                      const Text('File')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _loadMessages(WidgetRef ref) async {
    final messages = ref
        .watch(textChatNotifier)
        .textChatModelObj!
        .chatItemsList
        .map((e) => types.Message.fromJson(e.toMap()))
        .toList();

    setState(() {
      _messages = messages;
    });
  }

  void _onChange(String value) {
    setState(() {
      _isVoice = value.isEmpty;
    });
  }

  late bool _isVoice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: appTheme.purple200,
          leadingWidth: 64.h,
          leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgIconOnerrorcontainer48x48,
              onTap: () {
                onTapArrowLeft(context);
              }),
          title: AppbarSubtitle(text: LocalizationKeys.lblClaraHazel.name.tr),
          actions: [
            IconButton(
                iconSize: 24.adaptSize,
                color: appTheme.gray5001,
                onPressed: () {},
                icon: const Icon(Icons.phone)),
            IconButton(
                iconSize: 24.adaptSize,
                color: appTheme.gray5001,
                onPressed: () {},
                icon: const Icon(Icons.videocam)),
            IconButton(
                iconSize: 24.adaptSize,
                color: appTheme.gray5001,
                onPressed: () =>
                    onTapScreenTitle(AppRoutes.datingProfileDetailScreen),
                icon: const Icon(Icons.more_horiz))
          ]),
      body: Chat(
        customMessageBuilder: (customMessage, {required messageWidth}) {
          String content = '';
          if (customMessage.repliedMessage is types.TextMessage) {
            content = (customMessage.repliedMessage as types.TextMessage).text!;
          }
          return customMessage.author.id == _user.id
              ? Container(
                  width: messageWidth.toDouble(),
                  margin: EdgeInsets.only(right: 8.h),
                  child: Text(content,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeOnErrorContainer
                          .copyWith(height: 1.50)))
              : Container(
                  width: messageWidth.toDouble(),
                  margin: EdgeInsets.only(right: 79.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
                  decoration: AppDecoration.fillPurple20033.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL241),
                  child: SizedBox(
                      width: 216.h,
                      child: Text(content,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeOnErrorContainer
                              .copyWith(height: 1.50))));
        },
        audioMessageBuilder: (types.AudioMessage audioMessage,
            {required int messageWidth}) {
          return SizedBox(
            width: messageWidth.toDouble(),
            child: VoiceMessageView(
              activeSliderColor: appTheme.purple200,
              circlesColor: appTheme.purple200,
              controller: VoiceController(
                audioSrc: audioMessage.uri,
                maxDuration: const Duration(seconds: 10),
                isFile: false,
                onComplete: () {},
                onPause: () {},
                onPlaying: () {},
                onError: (err) {},
              ),
            ),
          );
        },
        customBottomWidget: _buildMessage(context, ref,
            _handleAttachmentPressed, _isVoice, _handleSendPressed, _onChange),
        isLeftStatus: true,
        messages: _messages,
        onAttachmentPressed: _handleAttachmentPressed,
        onMessageTap: _handleMessageTap,
        onPreviewDataFetched: _handlePreviewDataFetched,
        onSendPressed: _handleSendPressed,
        showUserAvatars: true,
        showUserNames: true,
        user: _user,
        theme: const DarkChatTheme(),
      ),
    );
  }
}
