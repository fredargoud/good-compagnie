class AddCommentToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :comment, :text
  end
end
