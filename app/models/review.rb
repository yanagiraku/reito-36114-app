class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  with_options presence: true do
    validates :title
    validates :title
    validates :title
    validates :title
    validates :title
    validates :title
  end
end
