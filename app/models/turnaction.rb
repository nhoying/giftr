class Turnaction < ApplicationRecord
    has_one :player
    has_one :turn_action_type
    has_one :gift
end
