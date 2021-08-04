class Product < ApplicationRecord
  has_one_attached :image
  has_many :reviews
  
  with_options presence: true do
    validates :product_name
    validates :product_num,           format: { with: /\A[0-9]+\z/ }
    validates :description
  end

  with_options numericality: { other_than: 1 } do
    validates :ganre_id
    validates :category_id
    validates :cooking_method_id
    validates :company_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ganre
  belongs_to_active_hash :category
  belongs_to_active_hash :cooking_method
  belongs_to_active_hash :cooking_method2
  belongs_to_active_hash :company
end
