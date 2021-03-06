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
  Category(name: 'Indonesia', icon: 'π²π¨'),
  Category(name: 'Japan', icon: 'π―π΅'),
  Category(name: 'USA', icon: 'πΊπΈ'),
  Category(name: 'Europe', icon: 'πͺπΊ'),
];
