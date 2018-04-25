# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Products seed

# Variations
var1 = Variation.create(name: "Add Ice", description: "Add ice to drink", price: 1, is_deleted: false, is_available: true, category: "Coffee", sku: "ADD1000")
var2 = Variation.create(name: "Add Shot", description: "Add a shot of coffee to drink", price: 1, is_deleted: false, is_available: true, category: "Coffee", sku: "ADD1010")
var3 = Variation.create(name: "Add Vanilla Syrup", description: "Add vanilla syrup to drink", price: 1, is_deleted: false, is_available: true, category: "Coffee", sku: "ADD1020")
var4 = Variation.create(name: "Add Hazelnut", description: "Add hazelnut syrup to drink", price: 1, is_deleted: false, is_available: true, category: "Coffee", sku: "ADD1030")
var5 = Variation.create(name: "Add Caramel", description: "Add caramel syrup to drink", price: 1, is_deleted: false, is_available: true, category: "Coffee", sku: "ADD1040")



# House Salads
Product.create(name: "Chicken House Salad", price: 12, description: "", img: "https://i.imgur.com/jpQOo3u.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Salads", sku: "SAL1000")
Product.create(name: "Smoked Salmon House Salad", price: 13, description: "", img: "https://i.imgur.com/3EOhV8b.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Salads", sku: "SAL1010")
Product.create(name: "Vegetarian House Salad", price: 12, description: "", img: "https://i.imgur.com/3EOhV8b.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Salads", sku: "SAL1020")

# Sandwiches w/chips
Product.create(name: "Chicken Sandwich", price: 11, description: "chicken thigh, honey-baked ham, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "https://i.imgur.com/n1zKuIi.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1000")
Product.create(name: "Ham & Cheese Sandwich", price: 10, description: "honey-baked ham, cheddar, mozzarella, apple slices, honey mustard, bechamel, brioche", img: "https://i.imgur.com/leU9fQP.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1010")
Product.create(name: "Roasted Beef Sandwich", price: 12, description: "striploin, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "https://i.imgur.com/fswgTGD.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1020")
Product.create(name: "Beef Rendang Sandwich", price: 12, description: "striploin, mozzarella, arugula, rendang paste, ciabatta", img: "https://i.imgur.com/T1mUSNI.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1030")
Product.create(name: "Vegetarian Sandwich", price: 11, description: "spiced curry patty, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "https://i.imgur.com/jtVrZjD.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Sandwiches", sku: "SAN1040")


# Coffee
prod1 = Product.create(name: "Espresso", price: 3, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1000")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5
prod1 = Product.create(name: "Americano", price: 3.5, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1010")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5
prod1 = Product.create(name: "Latte", price: 4, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1020")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5
prod1 = Product.create(name: "Cappuccino", price: 4, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1030")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5
prod1 = Product.create(name: "Flat White", price: 4, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1040")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5
prod1 = Product.create(name: "Macchiato", price: 3, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1050")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5
prod1 = Product.create(name: "Piccolo Latte", price: 4, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1060")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5
prod1 = Product.create(name: "Mocha", price: 5, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Coffee", sku: "COF1070")
prod1.variations << var1
prod1.variations << var2
prod1.variations << var3
prod1.variations << var4
prod1.variations << var5

# Non-coffee
Product.create(name: "Hot Milk", price: 2, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1010")
Product.create(name: "Hot Chocolate", price: 4, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1020")
Product.create(name: "Iced Chocolate", price: 5, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1030")
Product.create(name: "Matcha Latte", price: 5, description: "", img: "https://i.imgur.com/8u568I3.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1040")
Product.create(name: "Perrier Sparkling Water", price: 3.5, description: "", img: "https://i.imgur.com/nvMnEcN.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1050")
Product.create(name: "Snapple", price: 3.5, description: "", img: "https://i.imgur.com/5n8Hzcj.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1060")
Product.create(name: "Gryphon Tea", price: 4, description: "", img: "https://i.imgur.com/ekdnuCM.jpg", is_deleted: false, is_available: true, parent: "parent", category: "Other Drinks", sku: "DRK1070")

# User Seed

User.create(email: "admin@email.com", current_sign_in_at: "2018-04-24 07:22:05", last_sign_in_at: "2018-04-24 07:22:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", created_at: "2018-04-24 07:22:05", updated_at: "2018-04-24 07:22:05", encrypted_password: "$2a$11$NomolLqDIwGTpJ2T410M3OgW14j1u24TgnCOGsMn8ryjZGL318EXO", is_admin: true)