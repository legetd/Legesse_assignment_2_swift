import UIKit

var greeting = "Hello, playground"
// Location struct
struct Location {
    let x: Double
    let y: Double
}

// Customer struct
struct Customer {
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}

// Store locations
let store1 = Location(x: 0, y: 0)
let store2 = Location(x: 15, y: 15)

// The store range
let storeRange = 2.5

// Create an array of customers
let customers = [
        Customer(name: "Lg Td", email: "lgt@example.com", phoneNumber: "1234567890", acceptedNewsletter: true, location: Location(x: 1, y: 1)),
        Customer(name: "Dani Maffine", email: "dani@example.com", phoneNumber: "2345678901", acceptedNewsletter: true, location: Location(x: 2, y: 2)),
        Customer(name: "Lee Snow", email: "lee@example.com", phoneNumber: "3456789012", acceptedNewsletter: true, location: Location(x: 3, y: 3)),
        Customer(name: "Danny Tara", email: "danny@example.com", phoneNumber: "4567890123", acceptedNewsletter: true, location: Location(x: 4, y: 4)),
        Customer(name: "Tyrion Aster", email: "tyrion@example.com", phoneNumber: "5678901234", acceptedNewsletter: true, location: Location(x: 5, y: 5)),
        Customer(name: "Arya Stark", email: "arya@example.com", phoneNumber: "6789012345", acceptedNewsletter: true, location: Location(x: 6, y: 6)),
        Customer(name: "Cat Luke", email: "cat@example.com", phoneNumber: "7890123456", acceptedNewsletter: true, location: Location(x: 7, y: 7)),
        Customer(name: "Sansa St", email: "sansa@example.com", phoneNumber: "8901234567", acceptedNewsletter: true, location: Location(x: 8, y: 8)),
        Customer(name: "Jami Lan", email: "jami@example.com", phoneNumber: "9012345678", acceptedNewsletter: true, location: Location(x: 9, y: 9)),
        Customer(name: "Brian Marry", email: "brian@example.com", phoneNumber: "0123456789", acceptedNewsletter: true, location: Location(x: 10, y: 10))
    ]

// The distance between two location
func distance(location1: Location, location2: Location) -> Double {
    return sqrt(pow((location1.x - location2.x), 2) + pow((location1.y - location2.y), 2))
}

//print email address of in range of two store
func printCustomersWithinRange(storeLocation: Location, customers: [Customer]) {
    print("Customers within range of Store (\(storeLocation.x),\(storeLocation.y)):")
    for customer in customers {
        if distance(location1: storeLocation, location2: customer.location) <= storeRange {
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}

//print email address of customer store1
printCustomersWithinRange(storeLocation: store1, customers: customers)
//print email address of customr strore2
printCustomersWithinRange(storeLocation: store2, customers: customers)
