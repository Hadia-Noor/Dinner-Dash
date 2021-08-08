# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

A1 = User.create(first_name: "Hadia",
  last_name: "Noor",
  email: "hadianoor@gmail.com",
  password: "password",
  password_confirmation: "password",
  admin: true)

appitizer = Category.create(title: 'Appitizer', description: 'appitizer', display:true )
desserts = Category.create(title: 'Desserts', description: 'desserts', display:true )
desi = Category.create(title: 'Desi', description: 'Desi', display:true )
pizza = Category.create(title: 'Pizza', description: 'pizza', display:true )
pasta = Category.create(title: 'Pasta', description: 'pasta', display:true )
ice_cream = Category.create(title: 'Ice Cream', description: 'ice cream', display:true )
coffee = Category.create(title: 'Coffee', description: 'coffee', display:true )


F1 = FoodItem.create(title: "Fajita Pizza", description: "pizza", price: 500, category: Category.find(4))
F2 = FoodItem.create(title: "Lasagna", description: "lasagna", price: 1000, category: Category.find(5))
F3 = FoodItem.create(title: "Apple Pudding", description: "pudding", price: 1000, category: Category.find(2))
F4 = FoodItem.create(title: "Pudding", description: "pudding", price: 1000, category: Category.find(2))
F5 = FoodItem.create(title: "Chicken Tikka Pizza", description: "pizza", price: 500, category: Category.find(4))
F6 = FoodItem.create(title: "BBQ Pizza", description: "pizza", price: 500, category: Category.find(4))
F7 = FoodItem.create(title: "Biryani", description: "biryani", price: 300, category: Category.find(3))
F8 = FoodItem.create(title: "Beef Pulao", description: "pulao", price: 400, category: Category.find(3))
F9 = FoodItem.create(title: "Ice cream Mango", description: "ice cream", price: 250, category: Category.find(6))
F10 = FoodItem.create(title: "Ice cream Vanilla", description: "ice cream", price: 250, category: Category.find(6))
F11 = FoodItem.create(title: "Ice cream Strawberry", description: "ice cream", price: 250, category: Category.find(6))
F12 = FoodItem.create(title: "Cold Coffee", description: "cold coffee", price: 450, category:Category.find(7))
F13 = FoodItem.create(title: "Coffee", description: "cappuccino", price: 550, category: Category.find(7))
F14 = FoodItem.create(title: "Vegetable Rice", description: "rice", price: 350, category: Category.find(3))
F15 = FoodItem.create(title: "Plain Rice", description: "rice", price: 350, category: Category.find(3))
F16 = FoodItem.create(title: "Fried Egg", description: "egg", price: 150, category: Category.find(1))
F17 = FoodItem.create(title: "Omelette", description: "egg", price: 150, category: Category.find(1))
F18 = FoodItem.create(title: "Chicken Sandwich", description: "sandwich", price: 200, category: Category.find(1))
F19 = FoodItem.create(title: "Club Sandwich", description: "sandwich", price: 200, category: Category.find(1))
F20 = FoodItem.create(title: "Kabab", description: "kabab", price: 400, category: Category.find(3))


C1 = Comment.create(Name: "Hadia", body: "Delicious", food_item: FoodItem.find(4))
C2 = Comment.create(Name: "Noor", body: "Tasty",  food_item: FoodItem.find(5))
C3 = Comment.create(Name: "Ali", body: "Great",  food_item: FoodItem.find(2))
