import 'package:flutter/material.dart';
import 'package:soil/app/custom_app_bar.dart';
import 'package:soil/presentation/screens/payment_view/CustomRowImages/imagesName.dart';
import 'package:soil/presentation/screens/payment_view/custom_images_row.dart';

import '../../../app/custom_text_field.dart';
import '../my_profile_view/help_view/custom_button.dart';
import 'checkbox.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 70,
            child: CustomAppBar(
              text: "Payment Method",
              backArrow: Icons.arrow_back_ios,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Scaffold(
                body: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomPaymentImage(
                          image: PaymentImages.image1,
                        ),
                        CustomPaymentImage(
                          image: PaymentImages.image2,
                        ),
                        CustomPaymentImage(
                          image: PaymentImages.image3,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                     CustomTextField(
                      hintText: " Card number",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                     CustomTextField(
                      hintText: " Cardholder’s name",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child:  CustomTextField(
                            hintText: "Expiry date",
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .4,
                          child:  CustomTextField(
                            hintText: "CVV",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const GetCheckValue(),
                    //Row
                     CustomButton(
                      text: 'Pay now', onTap: () {  },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
