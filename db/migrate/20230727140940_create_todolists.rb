class CreateTodolists < ActiveRecord::Migration[7.0]
  def change
    create_table :todolists do |t|
      t.text :task

      t.timestamps
    end
  end
end