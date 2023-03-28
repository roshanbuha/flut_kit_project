class CartListModel {
  String image;
  String name;
  String price;
  int count = 0;

  CartListModel(
    this.image,
    this.name,
    this.price,
  );

  getSum() {
    return count++;
  }

  getMinus() {
    return count--;
  }
}
