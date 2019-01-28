class AddEventToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotations, :event, foreign_key: true
  end
end
