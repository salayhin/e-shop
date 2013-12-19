class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_code
      t.string :meta_tag_description
      t.string :meta_tag_keywords
      t.string :description
      t.string :product_tags
      t.string :sku
      t.string :upc
      t.string :ean
      t.string :jan
      t.string :isbn
      t.string :mpn
      t.float :price

      t.timestamps
    end
  end
end
