class AddNumberOfGuestsToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :number_of_guests, :string
  end
end
