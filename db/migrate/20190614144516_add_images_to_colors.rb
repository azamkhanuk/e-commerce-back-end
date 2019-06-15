class AddImagesToColors < ActiveRecord::Migration[5.2]
  def change
    add_column :colors, :image, :text
  end
end
