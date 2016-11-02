class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete, default: false
      t.integer :importance, default: 0

      t.timestamps
    end
  end
end
