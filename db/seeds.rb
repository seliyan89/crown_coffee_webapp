# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Products seed

# House Salads
Product.create(name: "Chicken House Salad", price: 12, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Smoked Salmon House Salad", price: 13, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Vegetarian House Salad", price: 12, description: "", img: "", is_deleted: false, is_available: true)

# Sandwiches w/chips
Product.create(name: "Chicken Sandwich", price: 11, description: "chicken thigh, honey-baked ham, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "", is_deleted: false, is_available: true)
Product.create(name: "Ham & Cheese Sandwich", price: 10, description: "honey-baked ham, cheddar, mozzarella, apple slices, honey mustard, bechamel, brioche", img: "", is_deleted: false, is_available: true)
Product.create(name: "Roasted Beef Sandwich", price: 12, description: "striploin, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "", is_deleted: false, is_available: true)
Product.create(name: "Beef Rendang Sandwich", price: 12, description: "striploin, mozzarella, arugula, rendang paste, ciabatta", img: "", is_deleted: false, is_available: true)
Product.create(name: "Vegetarian Sandwich", price: 11, description: "spiced curry patty, mozzarella, lettuce, tomatoes, arugula, basil & red capsicum pesto, miche", img: "", is_deleted: false, is_available: true)


# Coffee
Product.create(name: "Espresso", price: 3, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Americano", price: 3.5, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Latte", price: 4, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Cappuccino", price: 4, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Flat White", price: 4, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Macchiato", price: 3, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Piccolo Latte", price: 4, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Mocha", price: 5, description: "", img: "", is_deleted: false, is_available: true)

# Non-coffee
Product.create(name: "Hot Milk", price: 2, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Hot Chocolate", price: 4, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Iced Chocolate", price: 5, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Matcha Latte", price: 5, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Perrier Sparkling Water", price: 3.5, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Snapple", price: 3.5, description: "", img: "", is_deleted: false, is_available: true)
Product.create(name: "Gryphon Tea", price: 4, description: "", img: "", is_deleted: false, is_available: true)
