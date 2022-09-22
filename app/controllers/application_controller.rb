class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
get "/categories" do
  categories = Category.all
  categories.to_json
end

get "/customers" do
  customers = Customer.all
  customers.to_json
end
get "/categories/:category_name" do
  category = Category.find_by(params[:name])
  category.to_json
end

post "/expenses" do
  expense = Expense.create(
    amount: params[:amount],
    customer_id: params[:customer_id],
    category_id: params[:category_id]
  )
  expense.to_json
end

get "/expenses" do
  expenses = Expense.all
  expenses.to_json
end

get "/items" do
  items = Item.all
  items.to_json
end

patch '/items/:id' do
  item = Item.find(params[:id])
  item = item.update(
    price: params[:price]
  )
  item.to_json
end

delete "/expenses/:id" do
  expense = Expense.find(params[:id])
  expense.destroy
  expense.to_json
end
end
