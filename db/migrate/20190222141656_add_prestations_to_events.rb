class AddPrestationsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :prestations, :text
  end
end
