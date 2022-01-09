class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles, id: false do |t|
      t.bigint :id, unsigned: true, null: false
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
