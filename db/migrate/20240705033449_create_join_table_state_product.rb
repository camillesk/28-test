class CreateJoinTableStateProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :state_products do |t|
      t.integer :minimum_age
      t.references :state
      t.references :product
    end
  end
end
