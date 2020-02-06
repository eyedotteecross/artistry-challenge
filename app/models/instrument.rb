class Instrument < ApplicationRecord
    has_many :plays
    has_many :artists, through: :instruments
end
