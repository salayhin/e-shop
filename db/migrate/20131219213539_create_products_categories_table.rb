class CreateProductsCategoriesTable < ActiveRecord::Migration
  def self.up
    create_table :products_categories, :id => false do |t|
      t.references :product
      t.references :category
    end
    add_index :products_categories, [:product_id, :category_id]
    add_index :products_categories, :product_id
  end

  def self.down
    drop_table :products_categories
  end
end
