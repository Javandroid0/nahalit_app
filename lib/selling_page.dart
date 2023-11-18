import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class SellingPage extends StatelessWidget {
  const SellingPage({super.key});

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
        child: Column(children: [
          Container(
            height: size.height / 3.0,
            width: size.width / 1.3,
            color: Colors.blue,
          ),
          const SizedBox(height: 20),
          const Text("توضیحات"),
          SizedBox(
            height: size.height / 2.0,
            width: size.width / 1.0,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: ReadMoreText(
                '''قالب html صفحه ابروان ، برای صفحاتی که هنوز محتوایی در آنها ایجاد نشده بسیار مناسب اند. چرا که ظاهری زیبا و شکیل به این صفحه میدهند. از طرف دیگر، در صورتی که دارای جذابیت کافی باشد، مخاطب را به سایت شما بر میگرداند. شاید بتوان این مساله را مهمترین مزیت این نوع پوسته ها دانست. برخی از این قالب ها، قالب روزشمار هستند. در این مورد پایبندی شما به تاریخ اعلام شده بسیار مهم است چرا که امکان بازگشت مشتری به سایت شما بسیار محتمل است این قالب دارای تایمر معکوس انتقال به صفحه مورد نظر شما در زمان در در ساخت بودن سایت را داراست که در بین قالب های مرتبط اینگونه مشاهده نشده و ایده نو و جدیدی می باشد.
                  قالب HTML ابروان نام یکی از پوسته های HTML ارائه شده در ژاکت میباشد که برای صفحات در دست ساخت یا سایت هایی با مضمون ” بزودی برمیگردیم ” تهیه و تدارک دیده شده است. قالب صفحه در دست ساخت HTML Soon از طراحی خلاقانه و جالبی بهره میبرد که در ادامه شما را با ویژگی های بیشتری از این محصول آشنا میسازیم. همچنین از ویژگی های این قالب یک تایمر جهت ریدایرکت به صفحه دلخواه دارد.''',
                textDirection: TextDirection.rtl,
                trimLines: 4,
                trimMode: TrimMode.Line,
                colorClickableText: Colors.red,
                trimCollapsedText: "بیشتر",
                trimExpandedText: "بستن",
                moreStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: size.height / 3.5,
                  width: size.width / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  )),
              Container(
                  height: size.height / 3.5,
                  width: size.width / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height / 9.5,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                color: Colors.green[500],
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
