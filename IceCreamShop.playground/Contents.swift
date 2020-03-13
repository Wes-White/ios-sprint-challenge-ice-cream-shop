import UIKit
/*
 struc Flavor - name and rating
 struct Cone - flavor and toppings
 class IceCreamShop - holds flavors, sizes and toppings
 func to list flavors - recommend 4 rating
 func orderCone
 */

enum Size: Double {
    case small = 3.99
    case medium = 4.20
    case large = 4.99
}

enum Topping: String {
    case nuts
    case chocolate
    case carmel
    case sprinkels
}


struct Flavor {
    var name: String
    var rating: Double
}



struct Cone {
    let flavor: Flavor
    let toppings: Topping
    let size: Size
    
    func eat(){
        print("Mmm! I love \(flavor)!!")
    }
}


class IceCreamShop {
    let flavors: [Flavor]
    let sizes: [Size]
    let toppings: [Topping]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Topping], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
    func listTopFlavors() {
        for flavor in flavors {
            if flavor.rating >= 4.0 {
                print(flavor)
            }
        }
    }
}

/// FLAVORS
let chocolate = Flavor(name: "Chocolate", rating: 4.0)
let vanilla = Flavor(name: "Vanilla", rating: 3.0)
let strawberry = Flavor(name: "Strawberry", rating: 4.0)
let rockyRoad = Flavor(name: "Rocky Road", rating: 3.5)
let cookieDough = Flavor(name: "Cookie Dough", rating: 3.0)
let broccoli = Flavor(name: "Broccoli", rating: 2.0)



let shop = IceCreamShop(flavors: [chocolate, vanilla, strawberry, rockyRoad, cookieDough, broccoli], sizes: [.small, .medium, .large], toppings: [
    .carmel, .chocolate, .nuts, .sprinkels]
    , totalSales: 0.00)

print(shop.toppings)
