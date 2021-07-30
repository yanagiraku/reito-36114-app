class Product < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :product_name
    validates :product_num,           format: {:with /\A[0-9]+\z/ }
    validates :product_description
  end

  with_options numericality: { other_than: 1 } do
    validates :product_class_id
    validates :product_category_id
    validates :product_cooking_method_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :class
  balongs_to_active_hash :category
  balongs_to_active_hash :cooking_method
end
