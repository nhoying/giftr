class Exchange < ApplicationRecord
    has_many :turns
    has_many :players
end
