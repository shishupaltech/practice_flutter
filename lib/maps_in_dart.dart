import 'dart:collection';

void main()
{
  // var map_name= {1:"value"};
  // print(map_name);
  // var mapName = {
  //   'Key1':'value1',
  //   'key2':2,
  //   'key3':4.5
  // };
  // mapName['Key1'] = 'Raman';
  // print(mapName);
  // // fetch the value
  // print(mapName['key2']);

  var mapName = Map();
  mapName['1']=1;
  mapName['2']=1;
  mapName['3']=1;
  mapName['4']=1;
  mapName['5']=1;


  print(mapName.isEmpty);
  print(mapName.isNotEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('4'));
  print(mapName.containsValue(false));
  print(mapName.remove(2));
  print(mapName);




}