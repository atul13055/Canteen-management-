class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :finalamount
      t.references :user, null: false, foreign_key: true
      t.references :menu_card, null: false, foreign_key: true
      t.references :pass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
