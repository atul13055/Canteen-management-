class CreateMenuCards < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_cards do |t|
      t.string :name
      t.string :desc
      t.integer :price

      t.timestamps
    end
  end
end
