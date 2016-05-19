class CreateDaveStuffs < ActiveRecord::Migration[5.0]
  def change
    create_table :dave_stuffs do |t|
      t.string :saying

      t.timestamps
    end
    add_index :dave_stuffs, :saying
  end
end
