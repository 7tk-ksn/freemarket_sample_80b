class CreateItemCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :item_categories do |t|
      t.references :item, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false
      t.timestamps
    end
  end
end
