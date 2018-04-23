# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Products seed

# House Salads
Product.create(name: "Chicken House Salad", price: 12, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Salads", sku: "SAL1000")
Product.create(name: "Smoked Salmon House Salad", price: 13, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Salads", sku: "SAL1010")
Product.create(name: "Vegetarian House Salad", price: 12, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Salads", sku: "SAL1020")

# Sandwiches w/chips
Product.create(name: "Chicken Sandwich", price: 11, description: "chicken thigh, honey-baked ham, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1000")
Product.create(name: "Ham & Cheese Sandwich", price: 10, description: "honey-baked ham, cheddar, mozzarella, apple slices, honey mustard, bechamel, brioche", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1010")
Product.create(name: "Roasted Beef Sandwich", price: 12, description: "striploin, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1020")
Product.create(name: "Beef Rendang Sandwich", price: 12, description: "striploin, mozzarella, arugula, rendang paste, ciabatta", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1030")
Product.create(name: "Vegetarian Sandwich", price: 11, description: "spiced curry patty, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1040")


# Coffee
Product.create(name: "Espresso", price: 3, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1000")
Product.create(name: "Americano", price: 3.5, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1010")
Product.create(name: "Latte", price: 4, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1020")
Product.create(name: "Cappuccino", price: 4, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1030")
Product.create(name: "Flat White", price: 4, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1040")
Product.create(name: "Macchiato", price: 3, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1050")
Product.create(name: "Piccolo Latte", price: 4, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1060")
Product.create(name: "Mocha", price: 5, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1070")

# Non-coffee
Product.create(name: "Hot Milk", price: 2, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1010")
Product.create(name: "Hot Chocolate", price: 4, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1020")
Product.create(name: "Iced Chocolate", price: 5, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1030")
Product.create(name: "Matcha Latte", price: 5, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1040")
Product.create(name: "Perrier Sparkling Water", price: 3.5, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1050")
Product.create(name: "Snapple", price: 3.5, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1060")
Product.create(name: "Gryphon Tea", price: 4, description: "", img: "", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1070")

Product.create(name: "Add Ice", description: "Add ice to drink", price: 1, img: "", is_deleted: false, is_available: true, category: "Addons", sku: "ADD1000")
Product.create(name: "Add Shot", description: "Add a shot of coffee to drink", price: 1, img: "", is_deleted: false, is_available: true, category: "Addons", sku: "ADD1010")
Product.create(name: "Add Vanilla Syrup", description: "Add vanilla syrup to drink", price: 1, img: "", is_deleted: false, is_available: true, category: "Addons", sku: "ADD1020")
Product.create(name: "Add Hazelnut", description: "Add hazelnut syrup to drink", price: 1, img: "", is_deleted: false, is_available: true, category: "Addons", sku: "ADD1030")
Product.create(name: "Add Caramel", description: "Add caramel syrup to drink", price: 1, img: "", is_deleted: false, is_available: true, category: "Addons", sku: "ADD1040")