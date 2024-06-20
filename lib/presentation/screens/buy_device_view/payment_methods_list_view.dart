import 'package:flutter/material.dart';
import 'package:soil/presentation/screens/buy_device_view/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentImagesItem = const [
    "assets/images/card.svg",
    "assets/images/paypal.svg"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                image: paymentImagesItem[index],
                isActive: selectedIndex == index,
              ),
            ),
          );
        },
        itemCount: paymentImagesItem.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
