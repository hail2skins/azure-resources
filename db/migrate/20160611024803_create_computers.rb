class CreateComputers < ActiveRecord::Migration[5.0]
  def change
    create_table :computers do |t|
      t.string :name

      t.timestamps
    end
    add_index :computers, :name
  end
end
