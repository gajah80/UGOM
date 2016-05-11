class SetupController < ApplicationController

def dun
	@overall= Overall.all
	@dun =Dun.all
	@overall.each do |o|{
	  @dun.each do |dun|{
	  	if o.nama_dun => dun.nama_dun
	  		o.dun_id = dun.dun_id
	  	end
	  }
	}

	redirect_to "root_path"
end
