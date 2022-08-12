# frozen_string_literal: true

class AddCategoryRefToCategoryDeals < ActiveRecord::Migration[7.0]
  def change
    add_reference :category_deals, :category, null: false, foreign_key: true
  end
end
