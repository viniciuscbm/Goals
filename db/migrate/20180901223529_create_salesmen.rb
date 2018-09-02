class CreateSalesmen < ActiveRecord::Migration[5.2]
  def change
    create_table :salesmen do |t|
      t.string :name
      t.references :store, foreign_key: true, index: true

      t.timestamps
    end
  end
end
