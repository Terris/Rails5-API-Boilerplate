class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :description
      t.string :type
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
