const String iconSalary = '💼';
const String iconGrants = '💸';
const String iconRefund = '🔄';
const String iconSale = '💰';
const String iconRental = '🗓️';
const String iconBaby = '🍼';
const String iconBeauty = '🪷';
const String iconBill = '🧾';
const String iconCar = '🚙';
const String iconClothing = '👕';
const String iconEducation = '📚';
const String iconElectronic = '📺';
const String iconEntertainment = '🍿';
const String iconFood = '🍙';
const String iconHealth = '🩺';
const String iconHome = '🏠';
const String iconInsurance = '🔖';
const String iconShopping = '🛍️';
const String iconSocial = '👥';
const String iconSport = '⚽';
const String iconTax = '✂️';
const String iconTelephone = '☎️';
const String iconInternet = '🌍';
const String iconTransfort = '🚈';
const String iconWork = '👔';
const String iconDefault = '💵';

String getIconCategory(int iconIndex) {
  return iconCategoryMap[iconIndex] ?? iconDefault;
}

List<String> getIconCategoryList() {
  return [
    iconSalary,
    iconGrants,
    iconRefund,
    iconSale,
    iconRental,
    iconBaby,
    iconBeauty,
    iconBill,
    iconCar,
    iconClothing,
    iconEducation,
    iconElectronic,
    iconEntertainment,
    iconFood,
    iconHealth,
    iconHome,
    iconInsurance,
    iconShopping,
    iconSocial,
    iconSport,
    iconTax,
    iconTelephone,
    iconInternet,
    iconTransfort,
    iconWork,
    iconDefault,
  ];
}

const Map<int, String> iconCategoryMap = {
  1: iconSalary,
  2: iconGrants,
  3: iconRefund,
  4: iconSale,
  5: iconRental,
  6: iconBaby,
  7: iconBeauty,
  8: iconBill,
  9: iconCar,
  10: iconClothing,
  11: iconEducation,
  12: iconElectronic,
  13: iconEntertainment,
  14: iconFood,
  15: iconHealth,
  16: iconHome,
  17: iconInsurance,
  18: iconShopping,
  19: iconSocial,
  20: iconSport,
  21: iconTax,
  22: iconTelephone,
  23: iconInternet,
  24: iconTransfort,
  25: iconWork,
  26: iconDefault,
};
