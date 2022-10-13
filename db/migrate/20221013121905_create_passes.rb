class CreatePasses < ActiveRecord::Migration[6.1]
  def change
    create_table :passes do |t|
      t.integer :amount
      t.references :user, null: false, foreign_key: true
      t.references :menu_card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
