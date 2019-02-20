class AddScheduleToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :schedule, :string
  end
end
