class CreateOveralls < ActiveRecord::Migration
  def change
    create_table :overalls do |t|
    
    	t.integer 	:kod_par
    	t.string	:nama_par
    	t.integer	:kod_dun
    	t.string	:nama_dun
    	t.integer	:kod_dm
    	t.string	:nama_dm
    	t.string	:kod_lokaliti
    	t.string	:nama_lokaliti
    	t.integer	:no_siri
    	t.string	:ic_baru
    	t.string	:ic_lama
    	t.string	:nama
    	t.string	:jantina
    	t.string	:bangsa
    	t.integer	:saluran
    	t.string	:tempat_mengundi
    	t.boolean	:status_baru
    	t.string	:pru13_negeri
    	t.integer	:pru13_kod_parlimen
    	t.integer	:pru13_kod_lokaliti
    	t.date		:dob
    	t.string	:umno_alamat1
    	t.string	:umno_alamat2
    	t.string	:umno_alamat3
    	t.integer	:umno_poskod
    	t.string	:umno_daerah
    	t.string	:umno_negeri
    	t.string	:jpn_alamat1
    	t.string	:jpn_alamat2
    	t.string	:jpn_alamat3
    	t.integer	:jpn_poskod
    	t.string	:jpn_daerah
    	t.string	:jpn_negeri
    	t.integer	:phone1
    	t.integer	:phone2
    	t.boolean	:umno_status
    	t.integer	:umno_kod_negeri
    	t.integer	:umno_kod_bahagian
    	t.integer	:umno_kod_cawangan
    	t.string	:umno_nama_cawangan
    	t.timestamps null: false
    
    end
  end
end
