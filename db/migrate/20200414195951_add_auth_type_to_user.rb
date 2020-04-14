class AddAuthTypeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :authtype, :string
  end
end
