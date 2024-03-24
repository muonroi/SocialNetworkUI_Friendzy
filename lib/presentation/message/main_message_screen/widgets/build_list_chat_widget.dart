part of '../main_message_screen.dart';

Widget _buildListChat(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 8.h),
    child: Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Opacity(
              opacity: 0.08,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0.v),
                child: SizedBox(
                  width: 327.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.38),
                  ),
                ),
              ),
            );
          },
          itemCount:
              ref.watch(messagesNotifier).messagesModelObj?.chatList.length ??
                  0,
          itemBuilder: (context, index) {
            ChatBoxViewModel model =
                ref.watch(messagesNotifier).messagesModelObj?.chatList[index] ??
                    ChatBoxViewModel();
            return ChatBoxWidget(model);
          },
        );
      },
    ),
  );
}
