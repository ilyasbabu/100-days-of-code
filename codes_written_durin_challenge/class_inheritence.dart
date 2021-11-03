abstract class Animal{                  //abstract means thay we cannot create an object for this class, but this class can be extended(inherited)

  void sayhello(){
   // print('animal say helllo');
  }
}

class Human extends Animal{

  void sayname(){
    print('say name');
  }
  @override
  void sayhello() {
    print('human hello');
    super.sayhello();
  }
}



class Aliens implements Animal{        //here the parent class animal is only used for declaration, its function is describes here  (interface) 
  @override
  void sayhello() {
    print('alien hello');
  }
}

//multiple ingeritence is made possible here by use of 'mixin' and 'with' keywords

mixin Animal1{
  int age=1;

  void sayName(){
    print('name1');
  }
}

mixin Animal2{
  int age=2;

  void sayName(){
    print('name2');
  }
}

class Plant with Animal1,Animal2{
  
}

void main(List<String> arguments) {
  print('Hello world!');

 // var animala=Animal();       //cannot create an instsance(object) for abstract class
  var human=Human();
  human.sayhello();
  human.sayname();
  var ali=Aliens();
  ali.sayhello();
}
