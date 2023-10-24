void main(){
  // Variable Swap
  String var1='10';
  String var2='5';
  print('$var1, $var2');
  
  var1='5';
  var2='10';
  print('$var1, $var2');

// NON PRIMITIVE DATA TYPES
 List colors=['blue', 'black', 'green', 'yellow'];
  List books=[];
  
//   indexes
  print('${colors[0]}');
//   Adding an element
  colors.add('red');
  print('$colors');
//   add multiple elements
  books.addAll(['Think Big', 'Theory of Hypothesis', 'Comics']);
  books.insert(0, 'primary maths');
  books.remove('primary maths');
  books.removeAt(2);
  print(books);


// MAPS
  Map student={
    'name': 'John Doe',
    'age':25,
    'id': 2662,
    'hostel':{
      'location': 'Madaraka',
      'name': 'Qwetu',
      'number': 243
    } 
  };

  print(student['name']);
  print('My name is ${student['name']} and I stay in ${student['hostel']['location']}');
  

  print(student.keys);
  print(student.values);
  student['education']={
    'first': 'High school',
    'second':'bachelors',
    'third': 'masters',
    'fourth':'PhD'
  };
  // add many => map.addAll({key:value, key:value}) 
student.addAll({'sport':'soccer', 'club':'debate'});
// remove all> map.clear()
  // remove one => map.clear(key)
  print(student);

/*
   * ARTIHTMETIC
   *  -,/,+,%,*
   * */
int x=9;
int y=10;
int num=2;
// subtraction
print(x-y);
// addition
print(x+y);
// division
print(x/y);
// multiplication
print(x*y);

print(x%num); // if even will return zero else returns remainder

List<Map<String, dynamic>> salesData = [
{"product": "A", "price": 10.0, "quantity": 5, "country": "USA"},
  {"product": "B", "price": 8.0, "quantity": 3, "country": "Canada"},
  {"product": "A", "price": 10.0, "quantity": 7, "country": "USA"}, 
];
print('$salesData');

// Lists, Sets, and Maps.
// Iterating through collections using loops.
List fruits=['watermelon', 'passion', 'bananas', 'apples'];
// 1. standard for loop
// for(initializer; condition ; incrementor/ decrementor){}
int start=0;
int stop=fruits.length;
for(start; start<stop; start++){
  print(fruits[start]);
}
//  2. using while loop
// while(condition){...}


}