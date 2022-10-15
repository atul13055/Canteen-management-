class AddFieldToPass < ActiveRecord::Migration[6.1]
  def change
    add_column :passes, :check, :boolen
  end
end
