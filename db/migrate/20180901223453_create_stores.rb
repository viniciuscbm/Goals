class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.references :owner, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
