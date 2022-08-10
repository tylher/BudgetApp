class CreateCategorydeals < ActiveRecord::Migration[7.0]
  def change
    create_table :categorydeals do |t|

      t.timestamps
    end
  end
end
