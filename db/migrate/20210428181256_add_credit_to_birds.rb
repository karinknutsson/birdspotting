class AddCreditToBirds < ActiveRecord::Migration[6.0]
  def change
    add_column :birds, :credit, :string
  end
end
