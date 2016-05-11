class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.string  :new_ic
      t.string  :old_ic
      t.integer :no_siri
      t.string  :jantina
      t.integer :bangsa_id
      t.date    :dob
      t.string  :saluran
      t.string  :tempat_mengundi
      t.boolean :status_baru
      
      t.string  :pru13_negeri
      t.integer :pru13_kod_parlimen
      t.string  :pru13_parlimen
      t.integer :pru13_kod_lokaliti
      
      t.string  :umno_alamat1
      t.string  :umno_alamat2
      t.string  :umno_alamat3
      t.integer :umno_poskod
      t.string  :umno_daerah
      t.string  :umno_negeri

      t.string  :jpn_alamat1
      t.string  :jpn_alamat2
      t.string  :jpn_alamat3
      t.integer :jpn_poskod
      t.string  :jpn_daerah
      t.string  :jpn_negeri

      t.boolean :umno_status
      t.integer :umno_kod_negeri
      t.integer :umno_kod_bahagian
      t.integer :umno_kod_cawangan
      t.string  :umno_nama_cawangan

      t.timestamps null: false
    end
  end
end
