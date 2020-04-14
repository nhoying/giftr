class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.string :name
      t.string :uid
      t.string :description
      t.string :imageurl

      t.timestamps
    end
  end
end
