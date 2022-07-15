class Transaction {
  final String title;
  final int price;
  final DateTime dateTime;

  Transaction(
      {required this.dateTime, required this.price, required this.title});
}
