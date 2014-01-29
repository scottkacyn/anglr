class DropSubcategories < ActiveRecord::Migration
  def self.up
    drop_table :subcategories
  end

  def self.down
    create_table :subcategories do |t|
      t.references :category
      t.string :name
    end
  end
end
