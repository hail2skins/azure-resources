class AddResourceGroupNameToComputers < ActiveRecord::Migration[5.0]
  def change
    add_column :computers, :resourcegroupname, :string
    add_index :computers, :resourcegroupname
  end
end
