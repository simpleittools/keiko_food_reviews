enum DatabaseCollections {
  users,
  usersData,
  reviews,
}

enum MenuItems {
  add,
  signout,
}

enum MenuItemsPhoto {
  camera,
  gallery,
}

enum ReviewMode {
  add,
  edit,
  readOnly,
}

enum Affordability {
  $,
  $$,
  $$$,
  $$$$,
}

enum ResponsiveSizes {
  mobile(640.0),
  weDesktopTablet(641.0);

  const ResponsiveSizes(this.value);

  final double value;
}
