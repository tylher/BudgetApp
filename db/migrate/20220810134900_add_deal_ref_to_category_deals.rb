class AddDealRefToCategoryDeals < ActiveRecord::Migration[7.0]
  def change
    add_reference :category_deals, :deal, null: false, foreign_key: true
  end
end
