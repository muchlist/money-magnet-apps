const String icon1 = '💵';
const String icon2 = '💸';
const String icon3 = '💰';
const String icon4 = '🤑';
const String icon5 = '💳';
const String icon6 = '🪙';
const String icon7 = '₿';

String getIcon(int iconIndex) {
  return iconMap[iconIndex] ?? icon1;
}

List<String> getIconList() {
  return [icon1, icon2, icon3, icon4, icon5, icon6, icon7];
}

const Map<int, String> iconMap = {
  1: icon1,
  2: icon2,
  3: icon3,
  4: icon4,
  5: icon5,
  6: icon6,
  7: icon7,
};
