const double vatRate = 0.07;

void calcTotal(int price ,int qty,double discount){
   (price * qty - discount) * (1 + vatRate);
}
void main(){
  String shopName = 'Dart Cafe';
  print('ร้าน: $shopName');
  print('อัตราภาษี (vatRate): $vatRate');
  print('---');

  List<String> categories = ['เครื่องดื่ม','ของคาว','ของหวาน'];
  Map<String , int> menu = {
    'ชาไทย' : 45,
    'ข้าวผัด' : 60,
    'ลาเต้' : 55,
    'บัวลอยไข่หวาน' : 35
  };
  print('หมวดหมู่: $categories');
  print('จำนวนเมนูทั้งหมด : ${menu.length}');
  print('ราคาลาเต้: ${menu['ลาเต้']} บาท ');
  print('---');

  print('เมนูตั้งแต่ราคา 50 บาทขึ้นไป');
  for (var menus in menu.values){
    if ( menus >= 50){
      print('${menu[menus]} : ${menus} บาท' );
    }
  }
  print('---');

  print('ยอดสุทธิ (ไม่มีส่วนลด): $calcTotal(55,2,0.0)');
  print('ยอดสุทธิ (มีส่วนลด) : $calcTotal(55,2,10.0)');
  print('---');

  String? coupon;
  coupon ?? 0;
  coupon ??= 'NO-COUPON';

  print('ความคูปอง : $coupon');
  print('คูปองหลังกำหนดค่า : $coupon');



  
  

}