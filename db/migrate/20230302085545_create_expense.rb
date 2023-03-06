class CreateExpense < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :name_of_expense
      t.float :amount
      t.integer :budget_id

      t.timestamps
    end
  end
end
