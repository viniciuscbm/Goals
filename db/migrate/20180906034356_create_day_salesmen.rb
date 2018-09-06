class CreateDaySalesmen < ActiveRecord::Migration[5.2]
  def change
    create_table :day_salesmen do |t|
      t.references :salesman, foreign_key: true, index: true, null: false
      t.references :day, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
