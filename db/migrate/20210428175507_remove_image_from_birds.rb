class RemoveImageFromBirds < ActiveRecord::Migration[6.0]
  def change
    remove_column :birds, :image, :string
  end
end
