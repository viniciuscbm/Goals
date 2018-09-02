class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.date :month_reference
      t.float :value
      t.references :store, foreign_key: true, index: true

      t.timestamps
    end
  end
end
