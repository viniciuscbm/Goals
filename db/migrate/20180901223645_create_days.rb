class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :date, unique: true
      t.float :value
      t.references :goal, foreign_key: true, index: true

      t.timestamps
    end
  end
end
