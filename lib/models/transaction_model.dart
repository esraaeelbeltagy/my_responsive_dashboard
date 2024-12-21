class TransactionModel {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithdrawal,
  });
}

List<TransactionModel> transactions = [
  const TransactionModel(
    title: "Cash Withdrawal",
    date: "13 Apr, 2022",
    amount: "\$20,129",
    isWithdrawal: true,
  ),
  const TransactionModel(
    title: "Landing Page project",
    date: "13 Apr, 2022 at 3:30 PM",
    amount: "\$2,000",
    isWithdrawal: false,
  ),
  const TransactionModel(
    title: "Juni Mobile App project",
    date: "13 Apr, 2022 at 3:30 PM",
    amount: "\$20,129",
    isWithdrawal: false,
  ),
];
