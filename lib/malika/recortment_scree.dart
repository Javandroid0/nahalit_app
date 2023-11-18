import 'package:flutter/material.dart';
import 'color&font_managment.dart';

class RecruitmentScreen extends StatefulWidget {
  const RecruitmentScreen({super.key});

  @override
  State<RecruitmentScreen> createState() => _RecruitmentScreenState();
}

class _RecruitmentScreenState extends State<RecruitmentScreen> {
  List texts = [
    const Text(
      'اولین سایت فریلنسری به نام نهال آی تی که به صورت پکیجی می باشد و از تمام متخصصان در حوزه آی تی دعوت به عمل می آورد. خواهشمند است از تمام متخصصان در حوزه آی تی اگر نمونه کار در زمینه وب سایت،اپلیکیشن و فتوشاپ،بنر،پوستر و موشن گرافیک… دارند می توانند پروژه های خود را به صورت رایگان در سایت نهال آی تی دمو نمایند.',
    ),
    const Text(
      'به این صورت که شرح پروژه ی خود را به صورت داکیومنت،عکس و فیلم و خروجی کار خود را به صورت فیلم و کامل ارسال نمایند؛ در صورتی که محصول شما قابل اراِئه بود در سایت نهال آی تی بارگذاری می شود و بعد از اولین سفارش محصولتان با شما در تماس خواهیم بود.',
    ),
    const Text(
      'لازم به ذکر است که شما وظیفه دارید در یک سال اول محصول خود را پشتیبانی نمایید و هزینه ی پشتیبانی هم به شما داده خواهد شد؛ همچنین بعد از سفارش محصول شما تمامی سورس کد یا فرمت های استانداردی کار شما در اختیار ما قرار خواهند گرفت.',
    ),
    const Text(
      'همچنین شما می توانید قیمت پیشنهادی محصول خود را و پشتیبانی تخصص خود را بصورت اشتراکی و تعداد بالا اعلام نمایید که بتوانیم با توضیحات و هزینه ی دلخواه شما در سایت نهال آی تی دمو نماییم.',
    ),
    const Text(
      'لازم به ذکر است که ممکن است محصولی که شما دارید را شخص دیگری سایت دمو کرده باشد و قیمت پیشنهادی آن شخص کمتر از شما باشد و ما محصول آن شخص را دمو می نماییم.',
    ),
    const Text(
      'همچنین شما می توانید بصورت (برنامه نویس، فتوشاپ و گرافیک کار یا موشن…) در سایت نهال آی تی ثبت نام نمایید و به شما پروژه می دهیم و به صورت پروژه ای فعالیت نمایید.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('استخدام'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.8,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(58, 177, 58, 0.8),
                    Color.fromRGBO(107, 255, 186, 0.494),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                    ),
                    child: Center(
                      child: Text(
                        'استخدام',
                        style: bodyMedium,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: texts.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                          ),
                          child: Text(
                            texts[index].texts1,
                            style: bodySmall,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
