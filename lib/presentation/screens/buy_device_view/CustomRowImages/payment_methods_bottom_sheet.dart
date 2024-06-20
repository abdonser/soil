import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import 'package:soil/app/custom_payment_button.dart';
import 'package:soil/utils/api_keys.dart';
import '../Thank_you_view/thank_you_view.dart';
import '../models/amount_model/amount_model.dart';
import '../models/amount_model/details.dart';
import '../models/item_list_model/item.dart';
import '../models/item_list_model/item_list_model.dart';
import '../payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),

          // TODO
          CustomPaymentButton(
            title: "CheckOut",
            onTap: () {
              var transactionsData = getTransctionsData();
              exceutePaypalPayment(context, transactionsData);
            },
          ),
        ],
      ),
    );
  }
}

void exceutePaypalPayment(BuildContext context,
    ({AmountModel amount, ItemListModel itemList}) transctionsData) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: ApiKeys.clientId,
      secretKey: ApiKeys.secretPaypal,
      transactions: [
        {
          "amount": transctionsData.amount.toJson(),
          "description": "The payment transaction description.",
          "item_list": transctionsData.itemList.toJson(),
        }
      ],
      note: "Contact us for any questions on your order.",
      onSuccess: (Map params) async {
        log("onSuccess: $params");
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ThankYouView(),),);
      },
      onError: (error) {
        log("onError: $error");
        Navigator.pop(context);
      },
      onCancel: () {
        print('cancelled:');
        Navigator.pop(context);
      },
    ),
  ));
}

({AmountModel amount, ItemListModel itemList}) getTransctionsData() {
  var amount = AmountModel(
      total: "100",
      currency: 'USD',
      details: Details(shipping: "0", shippingDiscount: 0, subtotal: '100'));

  List<OrderItemModel> orders = [
    OrderItemModel(
      currency: 'USD',
      name: 'Apple',
      price: "4",
      quantity: 10,
    ),
    OrderItemModel(
      currency: 'USD',
      name: 'Apple',
      price: "5",
      quantity: 12,
    ),
  ];

  var itemList = ItemListModel(orders: orders);

  return (amount: amount, itemList: itemList);
}
