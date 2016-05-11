class CreateLocs < ActiveRecord::Migration
  def change
    create_table :locs do |t|
    	t.integer	:kod_loc
    	t.string	:nama_loc
    	t.integer	:dm_id
      t.timestamps null: false
    end
  end
end
