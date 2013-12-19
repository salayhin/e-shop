class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :meta_tag_description
      t.string :meta_tag_keywords
      t.string :description

      t.timestamps
    end
  end
end
