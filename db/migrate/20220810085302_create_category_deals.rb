# frozen_string_literal: true

class CreateCategoryDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :category_deals, &:timestamps
  end
end
