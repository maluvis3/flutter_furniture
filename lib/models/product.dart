class Product{
  final int id;
  final int price;
  final String title;
  final String description;
  final String image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

List<Product> products = [
  Product(
    id:1,
    price:56,
    title:'Classic Leather Arm Char',
    image:'assets/images/Item_1.png',
    description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ),
  Product(
      id:2,
      price:68,
      title:'Classic Leather Arm Char',
      image:'assets/images/Item_2.png',
      description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  ),
  Product(
      id:3,
      price:39,
      title:'Classic Leather Arm Char',
      image:'assets/images/Item_3.png',
      description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  ),
];