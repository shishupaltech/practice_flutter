void main(){
  // to increase the reausebility
  var myc = myClass();
  myc.myFunc("shishupal singh");


  //
  //

  myc.myFunc("karan chaurasiya");


  //
  //
  //
  //
  myc.myFunc("Himanshu Singh");

// addition of two number
myc.addFunc(34, 23);


}

// declaration of the function

class myClass {

  myClass()
  {// default constructor
    print("class object is created");
  }
  void myFunc(String name) {// declaration
    print(name);// defination
  }

  void addFunc(int a, int b)
  {
    int c = a+b;
    print(c);
  }
}
