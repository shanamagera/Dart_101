// import this library to allow us to carry out INPUT/OUTOUT functions on the console
import 'dart:io';

void main() {
  //creating a list of the type book to store all the books
  List<book> books = [];
  // initializing the list with some books
  book book1 = book('Harry Potter', 'J.K ROWLING', 1518.1, 20);
  book book2 = book('Dairy of a wimpy kid', 'Jeff Kinney', 1328.1, 12);
  book book3 = book('The Venice Conspiracy', 'Jon Trace', 1150, 19);
  book book4 = book('The famous five', 'Guid Blyton', 1328.1, 23);
  // using the built in addAll function to add all the instances of book created to the list books
  books.addAll([book1, book2, book3, book4]);
  addBook(books);
}


// creating our book class
class book {
  // declaring our class properties
  // The question mark on the string ensures null safety
  String? title;     
  String? author;
  double price = 0;
  int quantity = 0;
  // creating our default constructor
  book(this.title, this.author, this.price, this.quantity);
  // creating the method to display information about books
  void displayinfo() {
    print('Title: $title');
    print('Author: $author');
    print('Price: $price');
    print('Quantity: $quantity');
  }
}

// implenting a remove function to remove a book by title
remove(String remove, List list) {
  // looping through the books list
  for (int i = 0; i < list.length; i++) {
    // searching for book to be removed
    if (list[i].title == remove) {
      // using the removeAt function to remove the book at the specified index from the search we did with the if statement.
      list.removeAt(i);
      // calling return so that print is not executed as the book has been found and removed from inventory.
      return;
    }
  }
  print('this book does not exist in inventory');
}

// implenting the display function
display(List) {
  //this is the header
  print('Inventory management');
  // looping through the list and calling the display method to output the contents of each book
  for (int x = 0; x < List.length; x++) {
    List[x].displayinfo();
  }
}

addBook(List list) {
  // prompting the user to enter attributes about the book the wish to add to inventory
  print('What is the name of the book you wish to add to inventory? ');
  String? book_name = stdin.readLineSync();
  print('Who is the author of this book? ');
  String? book_author = stdin.readLineSync();
  print('what is the price of the book ?');
  double book_price = double.parse(stdin.readLineSync()!);
  print('How much of this book is going to be availbale in inventory');
  int book_quantity = int.parse(stdin.readLineSync()!);
  // creating an instance of the book class from the value's enteres by the user's
  book book_add = book(book_name, book_author, book_price, book_quantity);
  // using the built in add function to add the book to the list.
  list.add(book_add);
}
// implementing the sell quantity function
sellQuantity(String book_title, int book_quantity, List list) {
  //looping to check that the book exist's
  for (int z = 0; z < list.length; z++) {
    //checking if the book exist's
    if (list[z].title == book_title) {
      //checking if their is any stock remaining
      if (list[z].quantity == 0) {
        print('Sorry this book is out of stock');
        // checking if the current stock is enough to satisfy the customer's wants
      } else if (list[z].quantity < book_quantity) {
        int current_quantity = list[z].quantity;
        print('we only have $current_quantity in stock at the moment');
      } else {
        // calculating the price of the books to be purchased
        double total = list[z].price * book_quantity;
        // displaying the price of the quantity
        print(
            'The total for $book_quantity pieces of $book_title is $total ksh');
        // updating the current qauntity after the selling
        list[z].quantity = list[z].quantity - book_quantity;
      }
      // exit the function once the book has been found
      return;
    }
  }
  print('sorry the book is not availble in the current inventory');
}

// implementing the restocking function
restocking(String title, restock_quantity, List list) {
  for (int f = 0; f < list.length; f++) {
    // checking for the index of the title so we can update the quantity
    if (list[f].title == title) {
      // updating the quantitiy
      list[f].quantity = list[f].quantity + restock_quantity;
      // using return to terminate the function so we don't execute the print function
      return;
    }
  }
  print('the books does not exist in inventory');
}