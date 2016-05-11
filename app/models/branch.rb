class Branch < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    has_many :admins
end
