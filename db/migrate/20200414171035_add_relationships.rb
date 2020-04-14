class AddRelationships < ActiveRecord::Migration[6.0]
  def change
    add_reference :turns, :exchanges, index: true
    add_reference :players, :exchanges, index: true
    add_reference :turnactions, :turns, index: true
    add_reference :turnactions, :players, index: true
    add_reference :turnactions, :turn_action_types, index: true
    add_reference :turnactions, :gifts, index: true
  end
end
