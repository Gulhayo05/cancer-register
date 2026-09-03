//These codesystem will be removed after all medical forms codes are collected and added to IG
CodeSystem: FormObservationCS
Id: form-observation-cs
Title: "Form Observation Codes"
Description: "Local observation concepts required by Form 096 when no exact LOINC or SNOMED CT concept is available or when the source field lacks the detail required to select a standard code safely."
* insert OriginalCodeSystemDraft(form-observation-cs)

* #ob-0096-0001 "Antitelolar miqdori"
  * ^designation[0].language = #en
  * ^designation[=].value = "Antibody level"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Уровень антител"

* #ob-0096-0002 "Homiladorlik vaqtida shifokor yoki doya nazoratida bo'lgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Prenatal supervision received"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Наблюдение врачом или акушеркой во время беременности"

* #ob-0096-0003 "Akusher-ginekolog ko‘riklari soni"
  * ^designation[0].language = #en
  * ^designation[=].value = "Number of obstetrician-gynecologist examinations"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Количество осмотров акушером-гинекологом"

* #ob-0096-0004 "Onaning o‘lim vaqtining homiladorlik va tug‘ruqqa nisbati"
  * ^designation[0].language = #en
  * ^designation[=].value = "Timing of maternal death relative to pregnancy and childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Время смерти матери относительно беременности и родов"

* #ob-0096-0005 "Jinsiy hayot boshlangan yosh"
  * ^designation[0].language = #en
  * ^designation[=].value = "Age at sexual debut"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Возраст начала половой жизни"

* #ob-0096-0006 "Avvalgi abortlar soni"
  * ^designation[0].language = #en
  * ^designation[=].value = "Number of previous abortions"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Количество предыдущих абортов"

* #ob-0096-0007 "Avvalgi chaqaloqlarning vazni"
  * ^designation[0].language = #en
  * ^designation[=].value = "Weights of previous newborns"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Масса предыдущих новорожденных"

* #ob-0096-0008 "096-shakl ona anamnezi va akusherlik anamnezi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Form 096 maternal medical and obstetric history"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинский и акушерский анамнез матери формы 096"

* #ob-0096-0009 "Nafas olish tizimi tekshiruvi natijalari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Respiratory system examination findings"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Результаты обследования дыхательной системы"

* #ob-0096-0010 "Ovqat hazm qilish tizimi tekshiruvi natijalari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Digestive system examination findings"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Результаты обследования пищеварительной системы"

* #ob-0096-0011 "Siydik-tanosil tizimi tekshiruvi natijalari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Urogenital system examination findings"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Результаты обследования мочеполовой системы"

* #ob-0096-0012 "Siydik sentrifugati tekshiruvi natijalari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Urine centrifugate findings"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Результаты исследования центрифугата мочи"

* #ob-0096-0013 "Distantia spinarum"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia spinarum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia spinarum"

* #ob-0096-0014 "Distantia cristarum"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia cristarum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia cristarum"

* #ob-0096-0015 "Distantia trochanterica"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia trochanterica"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia trochanterica"

* #ob-0096-0016 "Conjugata externa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata externa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata externa"

* #ob-0096-0017 "Conjugata diagonalis"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata diagonalis"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata diagonalis"

* #ob-0096-0018 "Conjugata vera"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata vera"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata vera"

* #ob-0096-0019 "Homilaning joylashuvi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Fetal lie"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Положение плода"

* #ob-0096-0020 "Homilaning turi yoki pozitsiyasi varianti"
  * ^designation[0].language = #en
  * ^designation[=].value = "Fetal attitude or variety"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вид или разновидность позиции плода"

* #ob-0096-0021 "Homila yurak urishi eshitiladigan joy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Location where fetal heart sounds are heard"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Место выслушивания сердцебиения плода"

* #ob-0096-0022 "Homilaning keluvchi qismining turish darajasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Station of the fetal presenting part"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Уровень стояния предлежащей части плода"

* #ob-0096-0023 "Tug‘ruq faoliyati"
  * ^designation[0].language = #en
  * ^designation[=].value = "Labor activity"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Родовая деятельность"

* #ob-0096-0024 "Apgar shkalasi bo‘yicha klinik holat"
  * ^designation[0].language = #en
  * ^designation[=].value = "Clinical condition assessed by the Apgar scale"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Клиническое состояние по шкале Апгар"

* #ob-0096-0025 "Tug‘ilishdan yo‘ldosh ajralishigacha bo‘lgan vaqt"
  * ^designation[0].language = #en
  * ^designation[=].value = "Interval from birth to placental delivery"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Интервал от рождения до выделения плаценты"

* #ob-0096-0026 "Yo‘ldoshning butunligi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Placental completeness"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целостность плаценты"

* #ob-0096-0027 "Homila pardalarining butunligi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Fetal membranes completeness"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целостность плодных оболочек"

* #ob-0096-0028 "Kindik uzunligi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Umbilical cord length"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Длина пуповины"

* #ob-0096-0029 "Kindik o‘ralishi mavjudligi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Umbilical cord entanglement present"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Наличие обвития пуповины"

* #ob-0096-0030 "Kindik xususiyatlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Umbilical cord characteristics"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Характеристика пуповины"

* #ob-0096-0031 "Homila pardalari yorilgan sana va vaqt"
  * ^designation[0].language = #en
  * ^designation[=].value = "Date and time of rupture of membranes"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата и время разрыва плодных оболочек"

* #ob-0096-0032 "Homila suvi ketgandagi hajmi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Amniotic fluid volume at rupture"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Объем околоплодных вод при их излитии"

* #ob-0096-0033 "Bachadon bo‘yni to‘liq ochilgan sana va vaqt"
  * ^designation[0].language = #en
  * ^designation[=].value = "Date and time of full cervical dilation"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата и время полного раскрытия шейки матки"

* #ob-0096-0034 "Kuchanish boshlangan sana va vaqt"
  * ^designation[0].language = #en
  * ^designation[=].value = "Date and time pushing began"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата и время начала потуг"

* #ob-0096-0035 "Tug‘ruqdan keyingi davrdagi umumiy holat"
  * ^designation[0].language = #en
  * ^designation[=].value = "General condition during the postpartum period"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Общее состояние в послеродовом периоде"

* #ob-0096-0036 "Tug‘ruqdan keyingi davrda davolash bo‘yicha tavsiyalar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Treatment recommendations during the postpartum period"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рекомендации по лечению в послеродовом периоде"

* #ob-0096-0037 "Parhez stoli raqami"
  * ^designation[0].language = #en
  * ^designation[=].value = "Diet table number"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Номер диетического стола"

* #ob-0096-0038 "096-shakl qabul paytidagi laborator va skrining kuzatuvlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Form 096 admission laboratory and screening observations"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лабораторные и скрининговые наблюдения при поступлении формы 096"

* #ob-0096-0039 "Tirik bolalar soni"
  * ^designation[0].language = #en
  * ^designation[=].value = "Number of living children"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Количество живых детей"

* #ob-0096-0040 "Kasbi va lavozimi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Occupation and position"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Профессия и должность"

* #ob-0096-0041 "Tug‘ruqxonaga qabul qilingandagi umumiy tekshiruv"
  * ^designation[0].language = #en
  * ^designation[=].value = "General examination on maternity admission"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Общий осмотр при поступлении в родильный дом"

* #ob-0096-0042 "Umumiy ko‘rik natijalari"
  * ^designation[0].language = #en
  * ^designation[=].value = "General inspection findings"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Результаты общего осмотра"

* #ob-0096-0043 "Onaning pelvimetriyasi va qorin o‘lchovlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Maternal pelvimetry and abdominal measurements"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пельвиметрия матери и измерения живота"

* #ob-0096-0044 "Homila holatini baholash"
  * ^designation[0].language = #en
  * ^designation[=].value = "Fetal assessment"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Оценка состояния плода"

* #ob-0096-0045 "Yangi tug‘ilgan chaqaloqda gonokokkli oftalmiya profilaktikasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Neonatal gonococcal ophthalmia prophylaxis"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Профилактика гонококковой офтальмии новорожденного"

* #ob-0096-0046 "Birinchi chaqaloq tug‘ilishi qaydi"
  * ^designation[0].language = #en
  * ^designation[=].value = "First newborn birth record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запись о рождении первого новорожденного"

* #ob-0096-0047 "Ikkinchi chaqaloq tug‘ilishi qaydi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Second newborn birth record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запись о рождении второго новорожденного"

* #ob-0096-0048 "Apgar, yo‘ldosh, pardalar, kindik va qon yo‘qotish qaydi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Apgar, placenta, membranes, cord and blood-loss record"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запись об Апгар, плаценте, оболочках, пуповине и кровопотере"

* #ob-0096-0049 "Tug‘ruq paytidagi qon yo‘qotish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Blood loss during labor"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Кровопотеря во время родов"

* #ob-0096-0050 "Tug‘ruqdan keyingi kuzatuv qatori"
  * ^designation[0].language = #en
  * ^designation[=].value = "Postpartum observation row"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Строка наблюдения в послеродовом периоде"

* #ob-0096-0051 "Oraliq yarasini parvarishlash"
  * ^designation[0].language = #en
  * ^designation[=].value = "Perineal wound care"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Уход за раной промежности"