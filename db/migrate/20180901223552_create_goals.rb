class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.date :month_reference, null: false
      t.float :value, null: false
      t.references :store, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
