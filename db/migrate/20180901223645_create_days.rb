class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.date :date, null: false
      t.float :value
      t.references :goal, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
