class AddCityToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :city, :string
  end
end
