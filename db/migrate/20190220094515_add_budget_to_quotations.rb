class AddBudgetToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :budget, :string
  end
end
