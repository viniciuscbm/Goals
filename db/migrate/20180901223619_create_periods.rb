class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.references :salesman, foreign_key: true, index: true, null: false
      t.references :goal, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
