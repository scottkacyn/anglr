class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :body
      t.string :title
      t.string :source_url
      t.string :slug
      t.references :author, index: true

      t.timestamps
    end
  end
end
