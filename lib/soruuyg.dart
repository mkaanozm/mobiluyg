
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TestYapisi BenimTestim = new TestYapisi();

//yapiyi
class TestYapisi{
  //nitelikler özellikler
 int aktif_sorum=0;
 List<Icon> d_y_bilgisi =[];
  List<Soru> Sorular=[
    //Kadın hakları
    Soru(soru_metni: "Kadınlara seçme ve seçilme hakkı Türkiye’de hangi yıl verilmiştir?",a: "1919",b: "1923",c: "1930",d: "1934",cevap: "D"),
    Soru(soru_metni: "Kadın hakları kavramı neyi ifade eder?",a:"Kadınların yalnızca aile içinde sahip olduğu hakları",b:"Kadınların erkeklerle eşit haklara sahip olmasını",c: "Sadece çalışma hayatında kadınların sahip olduğu hakları",d: "Kadınların hukuki haklarıyla sınırlı bir kavramı",cevap: "B"),
    Soru(soru_metni: "Kadınların iş hayatında karşılaştığı en büyük sorunlardan biri nedir?",a: "Erkeklerden daha fazla maaş almak",b: "Cam tavan etkisi (terfi engelleri)",c: "İşsizlik oranının erkeklerden düşük olması",d: "Çalışma saatlerinin daha kısa olması",cevap: "B"),
    Soru(soru_metni: "Aşağıdakilerden hangisi kadın haklarını savunan uluslararası bir sözleşmedir?",a: "CEDAW",b: "Lozan Antlaşması",c:"NATO Sözleşmesi",d: "Kyoto Protokolü",cevap: "D" ),
    Soru(soru_metni: "Kadın haklarını korumak için bireyler ne yapabilir?",a: "Kadınların eğitime erişimini desteklemek",b: "Kadınlara yönelik şiddete sessiz kalmak",c: "Sadece devletin alacağı önlemleri beklemek",d: "Kadınların çalışmasını engellemek",cevap: "A"),
    //Çocuk hakları
    Soru(soru_metni:"Çocuk hakları hangi uluslararası belge ile güvence altına alınmıştır?" ,a:"Lozan Antlaşması" ,b:"Birleşmiş Milletler Çocuk Hakları Sözleşmesi" ,c:"Paris Antlaşması" ,d:"NATO Sözleşmesi" ,cevap: "B"),
    Soru(soru_metni:"Aşağıdakilerden hangisi çocuk hakları arasında yer almaz?" ,a:"Eğitim hakkı" ,b:"Sağlık hakkı" ,c:"Zorla çalıştırılma hakkı" ,d:"Barınma hakkı" ,cevap: "C"),
    Soru(soru_metni:"Bir çocuk kaç yaşına kadar çocuk haklarından yararlanır?" ,a:"12" ,b:"80" ,c:"18" ,d:"22" ,cevap: "C"),
    Soru(soru_metni:"Çocukların eğitim alma hakkı hangi temel insan hakkı grubuna girer?" ,a:"Sosyal ve ekonomik haklar" ,b:"Siyasi haklar" ,c:"Sadece kültürel haklar" ,d:"Askeri haklar" ,cevap: "A"),
    Soru(soru_metni:"Aşağıdakilerden hangisi çocuk işçiliğini önlemek için yapılması gerekenlerden biridir?" ,a:"ocukların erken yaşta çalışmaya teşvik edilmesi" ,b:"Çocukların eğitime erişiminin artırılması" ,c:"Çocuk işçiliğini yasallaştırmak" ,d:"Çocukların uzun saatler boyunca çalıştırılması" ,cevap: "B"),
    //Engelli Hakları
    Soru(soru_metni:"Engelli bireylerin haklarını koruma altına alan en önemli uluslararası sözleşme hangisidir?" ,a:"Birleşmiş Milletler Engelli Hakları Sözleşmesi" ,b:"Lozan Antlaşması" ,c:"Paris İklim Anlaşması" ,d:"NATO Sözleşmesi" ,cevap: "A"),
    Soru(soru_metni:"Engelli bireyler için aşağıdakilerden hangisi bir hak değildir?" ,a:"Eğitim hakkı" ,b:"Sağlık hakkı" ,c:"Kamu hizmetlerinden eşit yararlanma hakkı" ,d:"Ayrımcılığa uğrama hakkı" ,cevap: "D"),
    Soru(soru_metni:"Engelli bireylerin topluma tam ve eşit katılımını sağlamak için en önemli adımlardan biri nedir?" ,a:"Kamusal alanların ve ulaşımın erişilebilir hale getirilmesi" ,b:"Engelli bireylerin evde kalmaya teşvik edilmesi" ,c:"Engelli bireylerin çalışma hayatına katılımının yasaklanması" ,d:"Eğitimden mahrum bırakılmaları" ,cevap: "A"),
    Soru(soru_metni:"Türkiye’de engelli bireylerin haklarını koruyan başlıca yasa hangisidir?" ,a:"İş Kanunu" ,b:"Engelliler Hakları Kanunu" ,c:"Türk Medeni Kanunu" ,d:"Basın Kanunu" ,cevap: "B"),
    Soru(soru_metni:"Engelli bireylerin çalışma hayatında daha fazla yer almasını sağlamak için işverenler ne yapmalıdır?" ,a:"Engelli bireylere uygun iş ortamları sağlamak" ,b:"Engelli bireyleri işe almaktan kaçınmak" ,c:"Engelli çalışanlara düşük maaş vermek" ,d:"Engelli bireyleri sadece belirli mesleklerle sınırlandırmak" ,cevap: "A"),
    //Eğitim ve Sağlık Hakları
    Soru(soru_metni:"Eğitim hakkı hangi temel insan hakkı grubuna girer?" ,a:"Siyasi haklar" ,b:"Sosyal ve ekonomik haklar" ,c:"Askeri haklar" ,d:"Özel haklar" ,cevap: "B"),
    Soru(soru_metni:"Birleşmiş Milletler’e göre herkesin eğitim hakkına sahip olması için en önemli kriter nedir?" ,a:"Eğitimin sadece belirli gruplara sunulması" ,b:"Sadece özel okulların olması" ,c:"Eğitimin ücretsiz ve erişilebilir olması" ,d:"Eğitimin yalnızca belirli yaş grubuna verilmesi" ,cevap: "C"),
    Soru(soru_metni:"Aşağıdakilerden hangisi eğitim hakkının ihlali sayılır?" ,a:"Kız ve erkek çocukların eşit eğitim alması" ,b:"Engelli bireyler için erişilebilir okullar yapılması" ,c:"Çocukların eğitime erişiminin engellenmesi" ,d:"Öğrencilere burs imkanları sunulması" ,cevap: "C"),
    Soru(soru_metni:"Sağlık hizmetlerine erişim hakkı hangi temel insan hakkı kapsamında değerlendirilir?" ,a:"Ekonomik ve sosyal haklar" ,b:"Sadece özel haklar" ,c:"Askeri haklar" ,d:"Siyasi haklar" ,cevap: "A"),
    Soru(soru_metni:"Aşağıdakilerden hangisi sağlığa erişimi artırmak için alınması gereken önlemlerden biridir?" ,a:"Sağlık hizmetlerinin sadece yüksek gelirli kişilere sunulması" ,b:"Sağlık kuruluşlarının herkes için erişilebilir hale getirilmesi" ,c:"Sadece büyük şehirlerde hastane açılması" ,d:"Sağlık hizmetlerinin ücretli hale getirilmesi" ,cevap: "B"),

  ];
  //metod.
// sonraki soruya geç
void sonraki_soruya_gec(){
  if (Sorular.length-1> aktif_sorum)
 {aktif_sorum++;}
  else{aktif_sorum=0;

  }

}
// soru metnini yaz
String soru_metnini_yaz(){
  return Sorular[aktif_sorum].Soru_metni;
}

String a_sikki_yaz(){
  return Sorular[aktif_sorum].A_sikki;
}
  String b_sikki_yaz(){
    return Sorular[aktif_sorum].B_sikki;
  }
  String c_sikki_yaz(){
    return Sorular[aktif_sorum].C_sikki;
  }
  String d_sikki_yaz(){
    return Sorular[aktif_sorum].D_sikki;
  }

  void cevabi_kontrol_et(String k_cevabi){
   if (Sorular[aktif_sorum].Cevap == k_cevabi){
     d_y_bilgisi.add(Icon(Icons.check),);
   }
   else {
     d_y_bilgisi.add(Icon(Icons.close),);
   }
   sonraki_soruya_gec();

}




}






// YAPi
class Soru{
  //nitelikler ve özellikler
 String Soru_metni="";
 String A_sikki="";
 String B_sikki="";
 String C_sikki="";
 String D_sikki="";
 String Cevap="";
//yapici metod
Soru({required String soru_metni,required String a,required String b,required String c,required String d,required String cevap}){
   Soru_metni= soru_metni;
   A_sikki=a;
   B_sikki=b;
   C_sikki=c;
   D_sikki=d;
   Cevap=cevap;
 }

}
