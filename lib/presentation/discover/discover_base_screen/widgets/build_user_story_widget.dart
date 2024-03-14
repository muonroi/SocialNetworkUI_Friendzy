part of '../../discover_base_screen/discover_base_screen.dart';

Widget _buildUsersStory(BuildContext context) {
  return SizedBox(
    height: 160.v,
    child: Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount: ref
                  .watch(discoverNotifier)
                  .discoverModelObj
                  ?.newUsersItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            NewUsersItemModel model = ref
                    .watch(discoverNotifier)
                    .discoverModelObj
                    ?.newUsersItemList[index] ??
                NewUsersItemModel();
            return NewUsersItemWidget(
              model,
            );
          },
        );
      },
    ),
  );
}
