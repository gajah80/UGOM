class VotersController < ApplicationController
    def index
        @voters = Overall.where(["nama LIKE ?", "%#{params[:search]}%"])

        if @voters.blank?
            @flash = "Tiada Rekod"
        end
    end

    def new
        @voter = Voter.new
    end

    def create
        @voter = Voter.new(voter_params)
        if @voter.save
            redirect_to root_path
        else
            flash[:danger] = "Data yang dimasukkan tidak dapat disimpan. Sila cuba sekali lagi"
            render "new"
        end
    end

    private

        def voter_params
            params.require(:voter).permit(:name, :new_ic, :old_ic, :no_siri, :jantina, 
            	:bangsa_id, :dob, :saluran, :tempat_mengundi, :status_baru, :pru13_negeri, 
            	:pru13_kod_parlimen, :pru13_parlimen, :pru13_kod_lokaliti, :umno_alamat1, 
            	:umno_alamat2, :umno_alamat3, :umno_poskod, :umno_daerah, :umno_negeri, 
            	:jpn_alamat1, :jpn_alamat2, :jpn_alamat3, :jpn_poskod, :jpn_daerah, :jpn_negeri, 
            	:umno_status, :umno_kod_negeri, :umno_kod_bahagian, :umno_kod_cawangan, 
            	:umno_nama_cawangan)     
        end
end
