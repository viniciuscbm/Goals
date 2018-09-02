class CreateSalesmen < ActiveRecord::Migration[5.2]
  def change
    create_table :salesmen do |t|
      t.string :name, null: false
      t.references :store, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
