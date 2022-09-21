class Customer < ActiveRecord::Base
    has_many :expenses
    has_many :categories, through: :expenses
end