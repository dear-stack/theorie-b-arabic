# بناء تطبيق Theorie B عربي – Nederlands من هاتف Android

## بناء APK مجانًا عبر GitHub Actions

1. نزّل ZIP وافتحه في تطبيق الملفات على هاتفك.
2. ارفع **محتويات** مجلد `theorie_b_android` إلى جذر مستودع GitHub، مع الحفاظ على بنية المجلدات، خصوصًا `.github/workflows` و`gradle/wrapper`.
3. افتح المستودع ثم تبويب **Actions**.
4. اختر **Build Android APK** واضغط **Run workflow**. يمكن أن يبدأ البناء تلقائيًا بعد رفع الملفات إلى `main` أو `master`.
5. بعد نجاح التشغيل، افتح تفاصيل التشغيل ونزّل artifact باسم `theorie-b-arabic-debug-apk`.
6. فك ضغط الـ artifact وافتح `app-debug.apk` لتثبيته. قد يطلب Android السماح بالتثبيت من Chrome أو تطبيق الملفات.

## ملفات Gradle Wrapper

يتضمن المشروع `gradlew` و`gradlew.bat` و`gradle/wrapper/gradle-wrapper.properties`. لتفادي الاعتماد على ملف JAR ثنائي لا يمكن تنزيله من بيئة إعداد هذه الحزمة، يولّد سير GitHub Actions الـ Gradle Wrapper الرسمي بواسطة Gradle 8.7 قبل البناء، ثم يبني التطبيق باستخدام `./gradlew`.

## محتوى التطبيق وحدوده

التطبيق يستخدم WebView محليًا ويحمّل واجهته من `app/src/main/assets/index.html`، لذا تعمل الواجهة دون اتصال بعد التثبيت. هذه نسخة تدريبية أولية وليست تطبيق CBR رسميًا. بنك الأسئلة يتضمن تنويعات على الأسئلة ولا يعني أن كل صيغة تمثل قاعدة مستقلة. لم يُبنَ APK أو يُختبر على جهاز فعلي في بيئة الإعداد هذه؛ تأكد من نجاح GitHub Actions قبل التثبيت.
