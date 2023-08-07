class AddUserIdToTodolists < ActiveRecord::Migration[7.0]
  def change
    add_reference :todolists, :user, null: false, foreign_key: true
  end
end
