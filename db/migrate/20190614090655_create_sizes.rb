class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.integer :item_id
      t.integer :size

      t.timestamps
    end
  end
end
