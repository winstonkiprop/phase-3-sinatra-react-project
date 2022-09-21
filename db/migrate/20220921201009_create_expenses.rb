class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
    t.float :amount
    t.integer :customer_id
    t.integer :category_id
    t.timestamps
  end
  end
end
