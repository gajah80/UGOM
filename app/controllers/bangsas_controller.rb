class BangsasController < ApplicationController

  def create
    @bangsa = Bangsa.new(bangsa_params)
    if @bangsa.save
        redirect_to :back
    else
        redirect_to new_voters_path
    end
  end

  private

    def bangsa_params
        params.require(:bangsa).permit(:name)
    end
end
