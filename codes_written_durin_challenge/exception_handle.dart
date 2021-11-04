class InvalidPhoneNo implements Exception{}
class InvalidPhoneNo2 implements Exception{}

bool? validatePhone(String phone){
  if (phone.length==10){
    return true;
  }else if(phone.length>10){
    throw InvalidPhoneNo();
  }else{
    print('less than 10 digits');
    throw InvalidPhoneNo2();
  }
}

void main(List<String> arguments) {
  try {
    var phoneNUM=validatePhone('987');
  }on InvalidPhoneNo catch(_){
    print('invalidphone no.');
  } 
  catch (e) {
    print(e);
  }
}
