class Expense < ActiveRecord::Base
    belongs_to :Budget
end