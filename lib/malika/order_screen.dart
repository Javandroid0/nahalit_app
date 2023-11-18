import 'dart:ui';
import 'package:flutter/material.dart';
import 'color&font_managment.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List texts = [
    const Text(
      'شما در ابتدا برای ثبت سفارش خود باید با مراجعه به بخش پشتیبانی یک تیکت با موضوع سفارش طراحی بدهید .',
    ),
    const Text(
      'در بخش پشتیبانی با انتخاب دپارتمان ارتباط با نهال آی تی و انتخاب نوع تیکت قیمت سفارش طراحی سفارش خود را مطرح نمایید .',
    ),
    const Text(
      'بعد با شرح کامل سفارش طراحی برایمان به طورکامل توضیح دهید .',
    ),
    const Text(
      'حتی میتوانید با امکان ویس دادن در بخش پشتیبانی ، توضیحات خود را با ویس ارائه دهید .',
    ),
    const Text(
      'بعد از تیکت ، همکاران ما در بخش پشتیبانی بهای انجام پروژه را برای شما اعلام خواهند کرد .',
    ),
    const Text(
      'سپس در صورت نداشتن مشکلی اعلام کنید که پروژه اغاز شود .',
    ),
    const Text(
      'سپس با مراجعه به این صفحه ثبت سفارش را به صورت رسمی انجام دهید .',
    ),
    const Text(
      'لازم به ذکر است شما می توانید پرداخت بهای انجام پروژه را به صورت قسطی نیز پرداخت نمایید.',
    ),
  ];

  bool showInfoWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ثبت سفارش'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Image(
                        image: AssetImage('images/nahal.png'),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      // تنظیم اندازه طول TextField
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Column(
                          children: [
                            // صدا زدن ویجت _buildTextField برای ساخت TextField
                            _buildTextField(
                              keyboardType: TextInputType.name,
                              labelText: 'نام',
                              hintText: 'نام',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            _buildTextField(
                              keyboardType: TextInputType.number,
                              labelText: 'شماره',
                              hintText: 'شماره',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            _buildTextField(
                              keyboardType: TextInputType.emailAddress,
                              labelText: 'ایمیل',
                              hintText: 'ایمیل',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            _buildTextField(
                              keyboardType: TextInputType.text,
                              labelText: 'سفارش پروژه',
                              hintText: 'سفارش پروژه',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 50,
                                ),
                                labelText: 'توضیحات سفارش',
                                labelStyle: labelStyle,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: lightGreenColor,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: greenColor,
                                  ),
                                ),
                                hintText: 'توضیحات سفارش',
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 50,
                                  vertical: 10,
                                ),
                                backgroundColor: lightGreenColor,
                                elevation: 10,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'ثبت سفارش',
                                style: elevatedButtonText1,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                if (showInfoWidget)
                  Center(
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 8,
                          sigmaY: 8,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 1.6,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(58, 177, 58, 0.8),
                                  Color.fromRGBO(208, 255, 233, 0.5),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Center(
                                        child: Text(
                                          'سفارش طراحی',
                                          style: bodyLarge,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 15,
                                      ),
                                      child: Text(
                                        'راهنمای سفارش : ',
                                        style: bodyMedium,
                                      ),
                                    ),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: texts.length,
                                      itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.only(
                                          top: 5,
                                        ),
                                        child: Text(
                                          texts[index].texts,
                                          style: bodySmall,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 50,
                                      ),
                                      child: Center(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 20,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 60,
                                              vertical: 10,
                                            ),
                                            backgroundColor: lightGreenColor,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(30),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              showInfoWidget = !showInfoWidget;
                                            });
                                          },
                                          child: const Text(
                                            'پذیرش و ادامه',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField({
  required String labelText,
  required String hintText,
  required TextInputType keyboardType,
}) {
  return TextField(
    keyboardType: keyboardType,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      labelText: labelText,
      labelStyle: labelStyle,
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        borderSide: BorderSide(
          width: 3,
          color: lightGreenColor,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        borderSide: BorderSide(
          width: 3,
          color: greenColor,
        ),
      ),
      hintText: hintText,
    ),
  );
}
