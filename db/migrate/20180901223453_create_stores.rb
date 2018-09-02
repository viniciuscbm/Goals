class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.references :owner, foreign_key: true, index: true

      t.timestamps
    end
  end
end
