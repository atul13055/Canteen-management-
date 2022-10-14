class CreatePasses < ActiveRecord::Migration[6.1]
  def change
    create_table :passes do |t|
      t.integer :blance
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
