class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string     :title,              null:false
      t.date       :created_day,         null:false
      t.integer    :recommend_score_id, null:false
      t.text       :coment,             null:false
      t.references :user_id,            foreign_key: true
      t.references :product_id,         foreign_key: true

      t.timestamps
    end
  end
end
