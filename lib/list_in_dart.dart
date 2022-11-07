void main(){
  // var list = [10,20,30,40,50];
  // print(list);

  // list in dart
  var listNames = [10,20,30,50];
  listNames.add(504);
  print("$listNames");

  var names = [];
  names.addAll(listNames);
  print("$names");
  // add in list
  names.add("karan");
  names.add("shishupal");
  names.add(123);
  names.add(234.2);
  print("$names");
  // insert at particular position and element should be shift
  names.insert(2, "puran");
  names.insertAll(1,listNames);
  // for update
  names[3]="kalu";

  // replace the element of list
  names.replaceRange(0, 4, [1,2,3,4]);
  print(names);
  // remove the element
  names.remove(50);
  print(names);
  // remove at
  names.removeAt(4);
  print(names);
  names.removeRange(0, 4);
  print(names);
  print("length: ${names.length}");
  print("reverse: ${names.reversed}");
  print("reverse: ${names.first}");
  print("reverse: ${names.last}");
  // print("reverse: ${names}");



}
