import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import '/widgets/number_input_dialog.dart';
import '/widgets/amount_card.dart';
import 'networth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var assetAmount = 0;
  var liabilitiesAmount = 0;

  void setAssetAmount(int asset) {
    setState(() {
      assetAmount = asset;
    });
  }

  void setLiabilitiesAmount(int liabilities) {
    setState(() {
      liabilitiesAmount = liabilities;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 48),
                Text(
                  'Add your assets and liabilities',
                  style: theme.textTheme.headline5,
                ),
                SizedBox(height: 102),
                AmountCard(
                  title: 'Assets',
                  amount: assetAmount,
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) {
                      return NumberInputDialog(
                        onTap: setAssetAmount,
                        title: 'Assets',
                        amount: assetAmount,
                      );
                    },
                  ),
                ),
                SizedBox(height: 16),
                AmountCard(
                  title: 'Liabilities',
                  amount: liabilitiesAmount,
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) {
                      return NumberInputDialog(
                        onTap: setLiabilitiesAmount,
                        title: 'Liabilities',
                        amount: liabilitiesAmount,
                      );
                    },
                  ),
                ),
                SizedBox(height: 102),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          NetworthPage(amount: assetAmount - liabilitiesAmount),
                      fullscreenDialog: true,
                    ),
                  ),
                  child: Text(
                    'Calculate',
                    style: theme.textTheme.button!.copyWith(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
