part of '../../login_phone_number/login_phone_number_screen.dart';

class CountryCode extends ConsumerStatefulWidget {
  const CountryCode({super.key});

  @override
  CountryCodeState createState() => CountryCodeState();
}

class CountryCodeState extends ConsumerState<CountryCode> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final countryPicked =
          ref.watch(loginPhoneNumberNotifier).selectedCountry ??
              Country(
                isoCode: "VN",
                phoneCode: "84",
                name: "Vietnam",
                iso3Code: "VNM",
              );
      return GestureDetector(
        onTap: () => _openCountryPicker(context, ref),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 19.v,
                bottom: 19.v,
              ),
              child: CountryPickerUtils.getDefaultFlagImage(countryPicked),
            ),
            Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  '+${countryPicked.phoneCode}',
                  style: CustomTextStyles.bodyLargePrimary,
                )),
            Container(
              padding: const EdgeInsets.all(5),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(5),
                child: Text(
                  '|',
                  style: CustomTextStyles.bodyLargeGray400,
                )),
          ],
        ),
      );
    });
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context, WidgetRef ref) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: '${LocalizationKeys.lblSearch.name.tr}...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text(LocalizationKeys.lblSearchPhoneCountryCode.name.tr,
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) {
            ref
                .read(loginPhoneNumberNotifier.notifier)
                .updateSelectedCountry(country);
          },
          itemBuilder: _buildDialogItem,
        ),
      );
}
