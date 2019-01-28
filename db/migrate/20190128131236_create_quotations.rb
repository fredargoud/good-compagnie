class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :address
      t.string :e_mail
      t.string :phone_number

      t.timestamps
    end
  end
end
