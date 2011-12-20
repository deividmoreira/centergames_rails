class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :nome

      t.timestamps
    end
  end
  
  def self.down
    drop_table :cargos
  end
end
