import Foundation

/*:
 ### Overview:
 In this assignment, you will be exploring higher-order functions in Swift, which are functions that take other functions as arguments or return functions as output. You will implement several common higher-order functions and use them to solve practical problems.

 ### Requirements:

 Implement the following higher-order functions in Swift:
 - Map
 - Filter
 - Reduce
 
 In this assignment, you will use the Book struct provided below to practice using higher-order functions in Swift.
 */
struct Book {
    var title: String
    var author: String
    var price: Double
    var nPage: Int
    var readingAge: Int
}
/*:
 You will be working with an array of Book instances:
 */
let book1 = Book(title: "Learn Swift", author: "Ahmad", price: 200, nPage: 111, readingAge: 12)
let book2 = Book(title: " SwiftUi for Developer", author: "Slamn", price: 566, nPage: 150, readingAge: 7)
let book3 = Book(title: "Learn Design", author: "Shaima", price: 50, nPage: 99, readingAge: 10)
let book4 = Book(title: "Tiny Happits", author: "khalid", price: 877, nPage: 11, readingAge: 20)
let AllBook = [book1, book2 ,book3 ,book4]
    

AllBook.map{ $0.title + " by " + $0.author }
AllBook.filter { $0.readingAge >= 16 }
AllBook.reduce(0) { $0 + $1.price }
AllBook.contains(where: { $0.title == "Learn Design" })
 
/*:
 - map(): Use the map() function to create a new array of book titles with author.
 - filter(): Use the filter() function to create a new array of books with reading age of 16 or higher.
 - reduce(): Use the reduce() function to find the total cost of all books in the array.
 - contains(): Use the contains() function to check if the array of books contains a specific book.
 */
