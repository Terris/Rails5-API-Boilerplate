class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :order
      t.text :description

      t.timestamps
    end
  end
end