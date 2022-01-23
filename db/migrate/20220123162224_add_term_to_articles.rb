class AddTermToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :term, :boolean
  end
end
