class Dun < ActiveRecord::Base
	belongs_to :par
    has_many :dms
end
