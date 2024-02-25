import 'package:flutter/material.dart';

class Series {
  final String name;
  final String description;
  final String imagePath;
  final int stars;
  final Color backgroundColor;

  const Series({
    required this.imagePath,
    required this.name,
    required this.stars,
    required this.description,
    required this.backgroundColor,
  });
}

List<Series> series = [
  const Series(
      name: "سراج",
      description:
          "مسلسل سراج هو مسلسل تعليمي للأطفال من انتاج عربي ، يقدم الحروف الأبجدية للأطفال في صورة حلقات متتابعة ، في كل حلقه حرف يتم تناوله باستفاضة.",
      imagePath: "assets/a.jpeg",
      stars: 4,
      backgroundColor: Color.fromRGBO(218, 80, 61, 1)),
  const Series(
      name: "نور وبوابة التاريخ ",
      description:
          "تدور أحداث مسلسل نور وبوابة التاريخ حول الطفل (نور) الذي يرسله والده لقضاء إجازة الصيف عند عمه العالم في بيته المنعزل في إحدى المناطق النائية من واحات مصر. وهناك يتعرف على اختراعاته المبهرة  ",
      imagePath: "assets/b.jpeg",
      stars: 5,
      backgroundColor: Color.fromRGBO(149, 113, 62, 1)),
  const Series(
      name: "علماء المسلمين",
      description:
          "يسلط مسلسل علماء المسلمين الضوء على سيرة رجال وعلماء أجلاّء أناروا تاريخ الأمة الإسلامية بمؤلفاتهم وإنجازاتهم في مجالات متعددة مثل الفلك والعلوم والهندسة والطب، ",
      imagePath: "assets/c.jpeg",
      stars: 2,
      backgroundColor: Color.fromRGBO(142, 38, 13, 1)),
  const Series(
      name: "زينة ونحول",
      description:
          "مغامرات زينة ونحول هو مسلسل رسوم متحركة أقتبس عن سلسلة كتاب هزلي تحت عنوان مغامرات النحلة مايا. تدور القصص حول نحلة تدعى زينة تبحث عن أمها بمساعدة أصدقائها نحول وفرفور والسيدة سلمى المعلمة وثمة العديد من الحشرات والمخلوقات الأخرى",
      imagePath: "assets/d.jpeg",
      stars: 2,
      backgroundColor: Color.fromRGBO(40, 31, 91, 1)),
  const Series(
      name: "لولوة أميرة الصحراء",
      description:
          "لولوة هو مسلسل كرتون عربي يروي مغامرات لولوة أميرة الصحراء. تخوض لولوة مغامرات متعددة في شبه الجزيرة العربية بصحبة مجموعة من الحيوانات الصحراوية، يكتشفون خلالها جمال التراث والثقافة العربية. ",
      imagePath: "assets/f.jpeg",
      stars: 5,
      backgroundColor: Color.fromRGBO(239, 174, 20, 1)),
];
