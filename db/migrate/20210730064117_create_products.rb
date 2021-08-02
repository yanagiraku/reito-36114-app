class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name,               null:false
      t.string :product_num,                null:false
      t.text :description,                  null:false
      t.integer :ganre_id,                  null:false
      t.integer :category_id,               null:false
      t.integer :company_id,                null:false
      t.integer :cooking_method_id,         null:false
      t.integer :cooking_method2_id,        null:false

      t.timestamps
    end
  end
end
