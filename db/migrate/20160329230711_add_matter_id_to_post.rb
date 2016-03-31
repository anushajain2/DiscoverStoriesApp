class AddMatterIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :matter_id, :integer
    add_index :posts, :matter_id
  end
end
