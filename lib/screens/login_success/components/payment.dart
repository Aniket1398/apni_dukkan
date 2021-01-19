import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/cart/components/checkOut_card.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
//rzp_test_GulLBXecktmeyY

class Payment extends StatefulWidget {
  @override
_PaymentState createState()=> _PaymentState();
}

  @override
  class _PaymentState extends State<Payment> {
    final razorpay = Razorpay();
    TextEditingController controller = TextEditingController();

    void initState() {
      razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWallet);
      razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paySuccess);
      razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, payError);
      super.initState();
    }

    void paySuccess(PaymentSuccessResponse response) {
      print(response.paymentId.toString());
    }

    void payError(PaymentFailureResponse response) {
      print(response.message + response.code.toString());
    }

    void externalWallet(ExternalWalletResponse response) {
      print(response.walletName);
    }

    getPayment() {
      var option = {
        'key': 'rzp_test_GulLBXecktmeyY',
        'amount': '337',
        'name': 'Aniket',
        'prefill': {'contact': '123456789', 'email': 'aniket13kumar@gmail.com'}
      };
      try {
        razorpay.open(option);
      }
      catch (e) {
        print('erroris $e');
      }
    }

    @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextField(
                controller: controller,
                keyboardType: TextInputType.number,
              ),
              RaisedButton(
                child: Text('pay'),
                onPressed: () async => getPayment(),
              )
            ],
          ),
        );

    }
  }

