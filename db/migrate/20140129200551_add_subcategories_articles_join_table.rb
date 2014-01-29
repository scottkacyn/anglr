class AddSubcategoriesArticlesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :subcategories_articles, :id => false do |t|
      t.integer :subcategory_id
      t.integer :article_id
    end
  end

  def self.down
    drop_table :subcategories_articles
  end
end
