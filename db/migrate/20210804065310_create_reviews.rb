class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string     :title,              null:false
      t.date       :created_on,         null:false
      t.integer    :recommend_score_id, null:false
      t.text       :comment,            null:false
      t.references :user,               foreign_key: true
      t.references :product,            foreign_key: true
      t.integer    :category_id,        null:false

      t.timestamps
    end
  end
end
