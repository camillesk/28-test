class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :ndc
      t.integer :qty
      t.integer :price
      t.string :instructions

      t.belongs_to :category, foreign_key: true
      
      t.timestamps
    end
  end
end
