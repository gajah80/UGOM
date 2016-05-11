class Bangsa < ActiveRecord::Base
    has_many :voters

    validates :name, uniqueness: true
end
