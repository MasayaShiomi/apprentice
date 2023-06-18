class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :slug
      t.string :title
      t.text :description
      t.text :body

      t.timestamps
    end

    add_index :articles, :slug
  end
end
