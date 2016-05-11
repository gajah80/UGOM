class CreateDuns < ActiveRecord::Migration
  def change
    create_table :duns do |t|
    	t.integer	:kod_dun
    	t.string	:nama_dun
    	t.integer	:par_id
      t.timestamps null: false
    end
  end
end
