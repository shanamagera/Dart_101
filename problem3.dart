void main() {
  List<Map<String, dynamic>> salesData = [
    {"product": "A", "price": 10.0, "quantity": 5, "country": "USA"},
    {"product": "B", "price": 8.0, "quantity": 3, "country": "Canada"},
    {"product": "A", "price": 10.0, "quantity": 7, "country": "USA"},
  ];
  double sum_1 = ((salesData[0]['price']) * (salesData[0]['quantity']));
  double sum_2 = ((salesData[1]['price']) * (salesData[1]['quantity']));
  double sum_3 = ((salesData[2]['price']) * (salesData[2]['quantity']));

  var averageusasales = (sum_1 + sum_3) / 2;

  var totalusasales = sum_1 + sum_3;

  print(" The average for the usa sale is: $averageusasales");
  print(" The average for the Canada sale is: $sum_2");
  print(" The total sale is for usa is $totalusasales");

 double totalIncome=0;
  
  int start=0;
  int stop=salesData.length;
  for(start; start<stop; start++){
    print(salesData[start]['product']);
    print(salesData[start]['country']);
    print(salesData[start]['price']);
    
    double income=(salesData[start]['price']) * (salesData[start]['quantity']);
    totalIncome= income+totalIncome;
    
  }
  
  print('Total income: $totalIncome');


}