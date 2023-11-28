class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.string :description
      t.string :url
      t.string :urlToImage
      t.string :content
      t.string :source
      t.datetime :publishedAt

      t.timestamps
    end
  end
end
