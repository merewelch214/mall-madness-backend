class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.belongs_to :user
      t.string :name 
      t.string :category
      t.timestamps
    end
  end
end
