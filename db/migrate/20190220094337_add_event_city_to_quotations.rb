class AddEventCityToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :event_city, :string
  end
end
