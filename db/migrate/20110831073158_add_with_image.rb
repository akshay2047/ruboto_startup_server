class AddWithImage < ActiveRecord::Migration
  def self.up
    add_column :startups, :with_image, :boolean
    execute 'UPDATE startups SET with_image = 1'
    change_column :startups, :with_image, :boolean, :null => false
  end

  def self.down
    remove_column :startups, :with_image
  end
end
