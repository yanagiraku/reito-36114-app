class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name,              null:false
      t.string :product_num,               null:false
      t.text :product_description,         null:false
      t.integer :product_class_id,         null:false
      t.integer :product_category_id,      null:false
      t.string :product_cooking_method_id, null:false

      t.timestamps
    end
  end
end
