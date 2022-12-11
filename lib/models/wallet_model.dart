class WalletModel {
  String name;
  String wallet;
  String walletLogo;
  String walletNumber;

  WalletModel(this.name, this.wallet, this.walletLogo, this.walletNumber);
}

List<WalletModel> wallets = walletData
    .map((item) => WalletModel(item['name']!, item['wallet']!,
        item['walletLogo']!, item['walletNumber']!))
    .toList();

var walletData = [
  {
    "name": "Mukul Yadav",
    "wallet": "Gpay",
    "walletLogo": 'assets/images/gopay_logo.png',
    "walletNumber": '+62** *** 1932'
  },
  {
    "name": "Aditya",
    "wallet": "PayTm",
    "walletLogo": 'assets/images/ovo_logo.png',
    "walletNumber": '+62** *** 2245'
  },
  {
    "name": "Harsha",
    "wallet": "Gpay",
    "walletLogo": 'assets/images/gopay_logo.png',
    "walletNumber": '+62** *** 2245'
  },
  {
    "name": "Mandal",
    "wallet": "Mobiwik",
    "walletLogo": 'assets/images/dana_logo.png',
    "walletNumber": '+62** *** 1932'
  }
];
