class AddColumnToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :price, :text
    add_column :cars, :key_features, :text
  end
end
