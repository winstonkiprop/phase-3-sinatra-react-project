class Expense < ActiveRecord::Base
    belongs_to :category
    belongs_to :user
end