import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/message/text_chat_screen/models/text_chat_list_model.dart';
import 'package:muonroi_friends/presentation/message/text_chat_screen/models/text_chat_model.dart';

part 'text_chat_state.dart';

final textChatNotifier = StateNotifierProvider<TextChatNotifier, TextChatState>(
    (ref) => TextChatNotifier(TextChatState(
        messageController: TextEditingController(),
        textChatModelObj: ChatModel(chatItemsList: [
          TextChatModel(
            author: Author(
              firstName: "John",
              id: "1",
              lastName: "Doe",
              imageUrl: "https://example.com/johndoe.jpg",
            ),
            createdAt: 1655648403000,
            height: 1280,
            id: "1",
            name: "Chat 1",
            size: 585000,
            status: "seen",
            text: "Hello!",
            type: "text",
            uri: "https://example.com/chat1.jpg",
            width: 1920,
            mimeType: "image/jpeg",
          ),
          TextChatModel(
            author: Author(
              firstName: "Alice",
              id: "2",
              lastName: "Smith",
              imageUrl: "https://example.com/alicesmith.jpg",
            ),
            createdAt: 1655648403000,
            height: 720,
            id: "2",
            name: "Chat 2",
            size: 300000,
            status: "sent",
            text: "How are you?",
            type: "text",
            uri: "https://example.com/chat2.jpg",
            width: 1280,
            mimeType: "image/jpeg",
          ),
          TextChatModel(
            author: Author(
              firstName: "Bob",
              id: "82091008-a484-4a89-ae75-a22bf8d6f3ac",
              lastName: "Johnson",
              imageUrl: "https://example.com/bobjohnson.jpg",
            ),
            createdAt: 1655648403000,
            height: 1080,
            id: "3",
            name: "Chat 3",
            size: 500000,
            status: "sent",
            text: "I'm fine, thank you!",
            type: "text",
            uri: "https://example.com/chat3.jpg",
            width: 1920,
            mimeType: "image/jpeg",
          ),
          TextChatModel(
            author: Author(
              firstName: "Emily",
              id: "4",
              lastName: "Williams",
              imageUrl: "https://example.com/emilywilliams.jpg",
            ),
            createdAt: 1655648403000,
            height: 720,
            id: "4",
            name: "Chat 4",
            size: 400000,
            status: "seen",
            text: "Good to hear!",
            type: "text",
            uri: "https://example.com/chat4.jpg",
            width: 1280,
            mimeType: "image/jpeg",
          ),
          TextChatModel(
            author: Author(
              firstName: "David",
              id: "5",
              lastName: "Brown",
              imageUrl: "https://example.com/davidbrown.jpg",
            ),
            createdAt: 1655648403000,
            height: 1080,
            id: "5",
            name: "Chat 5",
            size: 600000,
            status: "sent",
            text: "What about you?",
            type: "text",
            uri: "https://example.com/chat5.jpg",
            width: 1920,
            mimeType: "image/jpeg",
          ),
          TextChatModel(
            author: Author(
              firstName: "David",
              id: "5",
              lastName: "Brown",
              imageUrl:
                  "https://i.pravatar.cc/300?u=e52552f4-835d-4dbe-ba77-b076e659774d",
            ),
            createdAt: 1655648403000,
            height: 1080,
            id: "6",
            name: "Chat 5",
            size: 50000,
            status: "sent",
            text: "What about you?",
            type: "audio",
            uri: "https://samplelib.com/lib/preview/mp3/sample-3s.mp3",
            width: 1920,
            mimeType: "audio/mp3",
            duration: Durations.extralong4,
          ),
          TextChatModel(
            author: Author(
              firstName: "David",
              id: "82091008-a484-4a89-ae75-a22bf8d6f3ac",
              lastName: "Brown",
              imageUrl:
                  "https://i.pravatar.cc/300?u=e52552f4-835d-4dbe-ba77-b076e659774d",
            ),
            createdAt: 1655648403000,
            height: 1080,
            id: "7",
            name: "Chat 7",
            size: 200000,
            status: "sent",
            text: "What about you?",
            type: "audio",
            uri: "https://samplelib.com/lib/preview/mp3/sample-12s.mp3",
            width: 1920,
            mimeType: "audio/mp3",
            duration: Durations.extralong4,
          ),
        ]))));
final textChatStateProvider = Provider<bool>((ref) {
  return ref.watch(textChatNotifier).messageController!.text.isEmpty;
});

class TextChatNotifier extends StateNotifier<TextChatState> {
  TextChatNotifier(TextChatState state) : super(state);
  void initialiseController() {
    Future(() => state.recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 16000);
  }
}
