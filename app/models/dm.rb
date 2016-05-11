class Dm < ActiveRecord::Base
	belongs_to :dun
    has_many :locs
end
