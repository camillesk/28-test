class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :acronym
      t.boolean :services
      t.integer :minimum_age

      t.timestamps
    end
  end
end
