class Category {
  final String name;
  final String icon;

  Category({
    required this.name,
    this.icon = '',
  });
}

List<Category> categories = [
  Category(name: 'All'),
  Category(name: 'Indonesia', icon: '🇲🇨'),
  Category(name: 'Japan', icon: '🇯🇵'),
  Category(name: 'USA', icon: '🇺🇸'),
  Category(name: 'Europe', icon: '🇪🇺'),
];
