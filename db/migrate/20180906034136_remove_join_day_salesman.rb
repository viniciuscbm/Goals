class RemoveJoinDaySalesman < ActiveRecord::Migration[5.2]
  def change
    drop_join_table  :days, :salesmen do |t|
      t.index [:day_id, :salesman_id]
      t.index [:salesman_id, :day_id]
    end
  end
end
