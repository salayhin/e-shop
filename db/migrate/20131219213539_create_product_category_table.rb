class CreateProductCategoryTable < ActiveRecord::Migration
  def self.up
    create_table :product_category, :id => false do |t|
      t.references :product
      t.references :category
    end
    add_index :product_category, [:product_id, :category_id]
    add_index :product_category, :product_id
  end

  def self.down
    drop_table :product_category
  end
end
