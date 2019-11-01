class AddColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :image, :text
    add_column :posts, :body_long, :text
  end
end
