class CategoryDeal < ApplicationRecord
    belongs_to :deal, class_name: "Deal", foreign_key: "deal_id"
    belongs_to :category, class_name: "Category", foreign_key: "category_id"
end
