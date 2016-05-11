# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Branch.create([{name: "Batu Caves"}, {name: "Gombak Setia"}, {name: "Ulu Klang"}])
Role.create([{name: "Admin"}, {name: "War Room"}])
Bangsa.create([
{name: "ARAB"},  
{name: "BAJAU"},
{name: "BANGLADESHI"},
{name: "BANJAR"},
{name: "BIDAYUH ATAU LAND DAYAK"},
{name: "BISAYA SABAH"},
{name: "BOYAN"},
{name: "BRITISH"},  
{name: "BRUNEI"},
{name: "BUGIS"},
{name: "BUMIPUTRA SABAH"},
{name: "BUMIPUTRA SARAWAK"},
{name: "BURMESE"},        
{name: "CANTONESE"},      
{name: "CAUCASIAN"},
{name: "CINA"},
{name: "DUSUN SABAH"},
{name: "EURASIAN"},       
{name: "EUROPEAN"}, 
{name: "FILIPINOS"},       
{name: "FOOCHOW"},        
{name: "GURKHA"}, 
{name: "HAINANESE"},      
{name: "HENGHUA"},        
{name: "HOKCHIU"}, 
{name: "HOKKIEN"},
{name: "IBAN ATAU SEA DAYAK"},
{name: "INDIA"},
{name: "INDIA MUSLIM"},        
{name: "INDONESIAN"}, 
{name: "IRANIAN"},
{name: "IRELAND"},        
{name: "IRRANUN"},       
{name: "JAPANESE"},        
{name: "JAWA"},
{name: "KADAZAN"},
{name: "KAYAN"},   
{name: "KEDAYAN SABAH"},
{name: "KENYAH"},
{name: "KHEK (HAKKA)"},    
{name: "KHMER"},  
{name: "KWONGSAI"},        
{name: "LAIN-LAIN"},
{name: "LAIN-LAIN ASIA"}, 
{name: "MALABARI"},   
{name: "MALAYALI"},        
{name: "MELANAU SABAH"},
{name: "MELANAU SARAWAK"},
{name: "MELAYU"},
{name: "MELAYU SABAH"},      
{name: "MELAYU SARAWAK"},   
{name: "MELAYU SRI LANGKA"},   
{name: "MINANGKABAU"},    
{name: "MURUT"},      
{name: "ORANG ASLI (SEMENANJUNG)"},
{name: "PAKISTANI"},
{name: "PORTUGESE"},       
{name: "PUNJABI"},
{name: "RUNGUS"},       
{name: "SEMAI"},
{name: "SEMALAI"},        
{name: "SIAMESE"},
{name: "SIKH"},
{name: "SINHALESE"},  
{name: "SINO-NATIVE"},
{name: "SRI LANKA"},
{name: "SULUK"},
{name: "SUNGAI"},       
{name: "TAMIL"},
{name: "TAMIL SRI LANGKA"},    
{name: "TELEGU"},
{name: "TEMIAR"},
{name: "TEOCHEW"},
{name: "TIADA MAKLUMAT"},
{name: "TIDUNG"},
{name: "VIETNAMESE"}
])




require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'data.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Overall.new
     	t.kod_par 				= row['kod_par']
    	t.nama_par				= row['nama_par']
    	t.kod_dun				= row['kod_dun']
    	t.nama_dun				= row['nama_dun']
    	t.kod_dm				= row['kod_dm']
    	t.nama_dm				= row['nama_dm']
    	t.kod_lokaliti 			= row['kod_lokaliti']
    	t.nama_lokaliti  		= row['nama_lokaliti']
    	t.no_siri				= row['no_siri']
    	t.ic_baru				= row['ic_baru']
    	t.ic_lama				= row['ic_lama']
    	t.nama 					= row['nama']
    	t.jantina  				= row['jantina']
    	t.bangsa 				= row['bangsa_id']
    	t.saluran 				= row['saluran']
    	t.tempat_mengundi 		= row['tempat_mengundi']
    	t.status_baru 			= row['status_baru']
    	t.pru13_negeri 			= row['pru13_negeri']
    	t.pru13_kod_parlimen 	= row['pru13_kod_parlimen']
    	t.pru13_kod_lokaliti 	= row['pru13_kod_lokaliti']
    	t.dob 					= row['dob']
    	t.umno_alamat1 			= row['umno_alamat1']
    	t.umno_alamat2 			= row['umno_alamat2']
    	t.umno_alamat3 			= row['umno_alamat3']
    	t.umno_poskod 			= row['umno_poskod']
    	t.umno_daerah 			= row['umno_daerah']
    	t.umno_negeri 			= row['umno_negeri']
    	t.jpn_alamat1 			= row['jpn_alamat1']
    	t.jpn_alamat2 			= row['jpn_alamat2']
    	t.jpn_alamat3 			= row['jpn_alamat3']
    	t.jpn_poskod 			= row['jpn_poskod']
    	t.jpn_daerah 			= row['jpn_daerah']
    	t.jpn_negeri 			= row['jpn_negeri']
    	t.phone1 				= row['phone1']
    	t.phone2 				= row['phone2']
    	t.umno_status 			= row['umno_status']
    	t.umno_kod_negeri 		= row['umno_kod_negeri']
    	t.umno_kod_bahagian 	= row['umno_kod_bahagian']
    	t.umno_kod_cawangan 	= row['umno_kod_cawangan']
    	t.umno_nama_cawangan	= row['umno_nama_cawangan']

    	t.save
  		puts "#{t.id}  #{t.nama} saved"
end

puts "There are now #{Overall.count} rows in the transactions table"


#PAR
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'par.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Par.new
      t.kod_par         = row['kod_par']
      t.nama_par        = row['nama_par']

      t.save
      puts "#{t.id}  #{t.nama_par} saved"
end

puts "There are now #{Par.count} rows in the transactions table"


#DUN
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'dun.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Dun.new
      t.kod_dun         = row['kod_dun']
      t.nama_dun        = row['nama_dun']
      t.par_id        = row['par_id']

      t.save
      puts "#{t.id}  #{t.nama_dun} saved"
end

puts "There are now #{Dun.count} rows in the transactions table"


#DM
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'dm.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Dm.new
      t.kod_dm         = row['kod_dm']
      t.nama_dm        = row['nama_dm']
      t.dun_id        = row['dun_id']

      t.save
      puts "#{t.id}  #{t.nama_dm} saved"
end

puts "There are now #{Dm.count} rows in the transactions table"


#LOC
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'loc.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Loc.new
      t.kod_loc         = row['kod_loc']
      t.nama_loc        = row['nama_loc']
      t.dm_id        = row['dm_id']

      t.save
      puts "#{t.id}  #{t.nama_loc} saved"
end

puts "There are now #{Loc.count} rows in the transactions table"