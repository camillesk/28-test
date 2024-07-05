class CreateStateExceptions < ActiveRecord::Migration[6.1]
  def change
    create_table :state_exceptions do |t|
      t.belongs_to :product
      t.belongs_to :state

      t.timestamps
    end
  end
end
