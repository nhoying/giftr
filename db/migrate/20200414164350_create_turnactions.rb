class CreateTurnactions < ActiveRecord::Migration[6.0]
  def change
    create_table :turnactions do |t|

      t.timestamps
    end
  end
end
