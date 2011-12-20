class CreateRelogios < ActiveRecord::Migration
  def change
    create_table :relogios do |t|
      t.string :numero

      t.timestamps
    end
  end
  
  def self.down
    drop_table :relogios
  end
end
