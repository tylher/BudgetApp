class CreateCategoryDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :category_deals do |t|

      t.timestamps
    end
  end
end
