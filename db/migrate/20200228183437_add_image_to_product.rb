class AddImageToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :img_url, :string
  end
end
