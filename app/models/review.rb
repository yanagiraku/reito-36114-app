class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :recommend_score_id, numericality: { other_than: 1 }
  
  with_options presence: true do
    validates :title
    validates :created_day
    validates :comment
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :recommend_score
end
