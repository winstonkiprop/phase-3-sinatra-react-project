class Category < ActiveRecord::Base
    has_many :items
    has_many :expenses
    has_many :customers, through: :expenses
end