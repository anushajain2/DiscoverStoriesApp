class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.belongs_to :post, index: true
      t.belongs_to :matter, index: true
    end
  end
end
