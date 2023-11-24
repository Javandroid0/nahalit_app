import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../malika/color&font_managment.dart';

class SellingPage extends StatelessWidget {
  SellingPage({super.key});
  final List<String> rolls = [
    '''قالب راست چین شده با فونت خوانا واکنشگرا''',
    "مناسب برای تمامی سایت ها",
    "پکیج ۳تایی فرم لاگین",
  ];
  final List<String> info = [
    "بسته نصبی + راهنمای نصب فارسی",
    "درگاه های پرداخت واسط و مستقیم",
    "پشتیبانی 24 ساعته محصولات",
    "محصول اورجینال با آپدیت رایگان",
    "بازگشت وجه بدون قید وشرط",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                label: Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
        ),
        leadingWidth: size.width / 5,
        leading: Row(
          children: [
            const SizedBox(width: 5),
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)),
            const Icon(Icons.shopping_cart_rounded),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
              height: size.height / 3.0,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(8)),
            ),
            const SizedBox(height: 20),
            const Text(
              "توضیحات",
              style: bodySmall,
              textDirection: TextDirection.rtl,
            ),
            SizedBox(
              //  height: size.height / 2.0,
              width: size.width / 1.2,
              child: const ReadMoreText(
                '''قالب html صفحه ابروان ، برای صفحاتی که هنوز محتوایی در آنها ایجاد نشده بسیار مناسب اند. چرا که ظاهری زیبا و شکیل به این صفحه میدهند. از طرف دیگر، در صورتی که دارای جذابیت کافی باشد، مخاطب را به سایت شما بر میگرداند. شاید بتوان این مساله را مهمترین مزیت این نوع پوسته ها دانست. برخی از این قالب ها، قالب روزشمار هستند. در این مورد پایبندی شما به تاریخ اعلام شده بسیار مهم است چرا که امکان بازگشت مشتری به سایت شما بسیار محتمل است این قالب دارای تایمر معکوس انتقال به صفحه مورد نظر شما در زمان در در ساخت بودن سایت را داراست که در بین قالب های مرتبط اینگونه مشاهده نشده و ایده نو و جدیدی می باشد.
                    قالب HTML ابروان نام یکی از پوسته های HTML ارائه شده در ژاکت میباشد که برای صفحات در دست ساخت یا سایت هایی با مضمون ” بزودی برمیگردیم ” تهیه و تدارک دیده شده است. قالب صفحه در دست ساخت HTML Soon از طراحی خلاقانه و جالبی بهره میبرد که در ادامه شما را با ویژگی های بیشتری از این محصول آشنا میسازیم. همچنین از ویژگی های این قالب یک تایمر جهت ریدایرکت به صفحه دلخواه دارد.''',
                textDirection: TextDirection.rtl,
                trimLines: 4,
                trimMode: TrimMode.Line,
                colorClickableText: Colors.blue,
                trimCollapsedText: "بیشتر",
                trimExpandedText: "   بستن",
                moreStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(height: 20),
            InfoSetCont(size: size, list: rolls, image: "images/set.png"),
            const SizedBox(height: 20),
            InfoSetCont(size: size, list: info, image: "images/que.png"),
            const SizedBox(height: 20),
            SizedBox(
              height: size.width / 4.0,
              width: size.width / 1.2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //  maximumSize: Size(size.width / 1.2, size.width / 4.0),
                  //  minimumSize: Size(size.width / 1.2, size.width / 4.0),,
                  backgroundColor: Colors.orangeAccent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'خرید محصول',
                  style: elevButtonText,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}

class InfoSetCont extends StatelessWidget {
  const InfoSetCont({
    super.key,
    required this.size,
    required this.list,
    required this.image,
  });

  final Size size;
  final List list;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width / 1.0,
      width: size.width / 1.2,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        /*  boxShadow: [
            BoxShadow(
                color: Colors.grey[500]!, offset: Offset(2, 2), blurRadius: 5)
          ]*/
      ),
      child: Column(children: [
        const SizedBox(height: 10),
        Image.asset(
          image,
          scale: 10,
        ),
        const SizedBox(height: 5),
        Expanded(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    const Spacer(),
                    Text(
                      "${list[index]}",
                      overflow: TextOverflow.visible,
                      //  textDirection: TextDirection.rtl,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.brightness_1,
                        size: 9,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        //  const Spacer(),
      ]),
    );
  }
}
