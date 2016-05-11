class CreateDms < ActiveRecord::Migration
  def change
    create_table :dms do |t|
    	t.integer	:kod_dm
    	t.string	:nama_dm
    	t.integer	:dun_id
      t.timestamps null: false
    end
  end
end
