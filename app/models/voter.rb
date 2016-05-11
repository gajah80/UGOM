class Voter < ActiveRecord::Base
    belongs_to :bangsa
    has_many :phones
end
