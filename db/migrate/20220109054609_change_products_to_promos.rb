class ChangeProductsToPromos < ActiveRecord::Migration[6.1]
  def change
    rename_table :products, :promos
  end
end
