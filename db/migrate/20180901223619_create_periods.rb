class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.references :salesman, foreign_key: true, index: true
      t.references :goals, foreign_key: true, index: true

      t.timestamps
    end
  end
end
