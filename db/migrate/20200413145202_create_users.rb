class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :google_token
      t.string :google_referesh_token

      t.timestamps
    end
  end
end
