puts "🌱 Seeding spices..."

# Seed your database here
categories = Category.create([
    {
        category_name: "shopping",
        description: "All household electronic items"
    },
    {
        category_name: "entertainment",
        description: "expenditure for entertainment"
    },
    {
        category_name: "medical",
        description: "expenditure for medication"
    },
    {
        category_name: "food",
        description: "expendituer for food"
    }
])

items = Item.create ([
    {
     item_name: "sony televison",
     price: 10000,
     quantity: 0,
     category_id: 1
 },
 {
     item_name: "fridge",
     price: 40000,
     quantity: 0,
     category_id: 1
 },
 {
     item_name: "microwave",
     price: 25000,
     quantity: 0,
     category_id: 1
 },
    {
        item_name: "Netflix subscription",
        price: 2000,
        quantity: 0,
        category_id:2
    },
    {
        item_name: "dental checkup",
        price: 5000,
        quantity: 0,
        category_id: 3
    },
    {
    item_name: "grocery",
    price: 10000,
    quantity: 1,
    category_id: 4
}
 ])
customers = Customer.create([
    {
        username: "Winstonne"
    },
    {
        username: "Mabel"
    },
    {
        username: "Maryanne"
    }
])

expenses = Expense.create([
    {
        amount: 100
    }
])

puts "✅ Done seeding!"
