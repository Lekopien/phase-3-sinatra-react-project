puts "🌱 Seeding spices..."

5.times do
    Budget.create(
       amount: Faker::Number.decimal(l_digits: 5, r_digits: 2)
    )
  end

# 10.times do
#     Expense.create(
#         name_of_expense: Faker::Commerce.product_name,
#         amount: Faker::Number.decimal(l_digits: 3, r_digits: 2)
#     )
# end
puts "✅ Done seeding!"
