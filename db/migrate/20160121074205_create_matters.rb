class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
