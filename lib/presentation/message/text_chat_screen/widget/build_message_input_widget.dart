part of '../text_chat_screen.dart';

Widget _buildMessage(
    BuildContext context,
    WidgetRef ref,
    Function handleAttachmentPressed,
    bool isVoice,
    Function handleSendPressed,
    Function(String) onChange) {
  return Padding(
      padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 32.v),
      child: Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            textStyle: CustomTextStyles.bodyMediumGray600,
            controller: ref.watch(textChatNotifier).messageController,
            hintText: LocalizationKeys.msgTypeYourMessage.name.tr,
            hintStyle: CustomTextStyles.bodyLargeOnPrimaryContainer_2,
            textInputAction: TextInputAction.done,
            prefix: SizedBox(
                child: SizedBox(
                    child: Transform.rotate(
              angle: -0.7,
              child: IconButton(
                iconSize: 24.adaptSize,
                onPressed: () => handleAttachmentPressed(),
                icon: const Icon(Icons.attachment_outlined),
              ),
            ))),
            prefixConstraints: BoxConstraints(maxHeight: 56.v),
            suffix: Container(
              margin: EdgeInsets.only(right: 10.v),
              child: isVoice
                  ? SizedBox(
                      child: IconButton(
                      iconSize: 24.adaptSize,
                      onPressed: () {},
                      icon: const Icon(Icons.mic),
                    ))
                  : SizedBox(
                      child: Transform.rotate(
                      angle: -0.7,
                      child: IconButton(
                        iconSize: 24.adaptSize,
                        onPressed: () {
                          handleSendPressed(types.PartialText(
                              text: ref
                                  .watch(textChatNotifier)
                                  .messageController!
                                  .text));
                          ref.watch(textChatNotifier).messageController!.text =
                              '';
                          onChange('');
                        },
                        icon: const Icon(Icons.send),
                      ),
                    )),
            ),
            onChanged: onChange,
            suffixConstraints: BoxConstraints(maxHeight: 56.v),
            contentPadding: EdgeInsets.symmetric(vertical: 18.v),
            borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainer,
            filled: true,
            fillColor: theme.colorScheme.onErrorContainer.withOpacity(1));
      }));
}
