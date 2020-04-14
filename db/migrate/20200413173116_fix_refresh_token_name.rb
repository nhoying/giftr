class FixRefreshTokenName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :google_referesh_token, :google_refresh_token
  end
end
