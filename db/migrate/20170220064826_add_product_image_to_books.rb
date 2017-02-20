class AddProductImageToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :product_image, :string
  end
end
