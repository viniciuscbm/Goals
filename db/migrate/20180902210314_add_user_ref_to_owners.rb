class AddUserRefToOwners < ActiveRecord::Migration[5.2]
  def change
    add_reference :owners, :user, foreign_key: true
  end
end
