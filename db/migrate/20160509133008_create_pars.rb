class CreatePars < ActiveRecord::Migration
  def change
    create_table :pars do |t|
    	t.integer	:kod_par
    	t.string	:nama_par
      t.timestamps null: false
    end
  end
end
