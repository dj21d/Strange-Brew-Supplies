# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.delete_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Province.delete_all
Province.create! name: "Alberta", tax_rate: 0.05
Province.create! name: "British Columbia", tax_rate: 0.12
Province.create! name: "Manitoba", tax_rate: 0.13
Province.create! name: "New-Brunswick", tax_rate: 0.15
Province.create! name: "Newfoundland and Labrador", tax_rate: 0.15
Province.create! name: "Northwest Territories", tax_rate: 0.05
Province.create! name: "Nova Scotia", tax_rate: 0.15
Province.create! name: "Nunavut", tax_rate: 0.05
Province.create! name: "Ontario", tax_rate: 0.13
Province.create! name: "Prince Edward Island", tax_rate: 0.15
Province.create! name: "Québec", tax_rate: 0.14975
Province.create! name: "Saskatchewan", tax_rate: 0.10
Province.create! name: "Yukon", tax_rate: 0.05

IngredientType.delete_all
IngredientType.create! name: "Yeast"
IngredientType.create! name: "Hops"
IngredientType.create! name: "Grain"
IngredientType.create! name: "Extract"
IngredientType.create! name: "Flavouring"
IngredientType.create! name: "Sugars"