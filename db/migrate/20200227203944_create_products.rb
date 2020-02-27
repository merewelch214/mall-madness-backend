class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.belongs_to :store
      t.belongs_to :cart
      t.float :price      
      t.timestamps
    end
  end
end
