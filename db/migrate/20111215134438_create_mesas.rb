class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.integer :relogio_id
      t.integer :tipomesa_id
      t.boolean :mesa_inativa
      t.text :motivo_inatividade
      t.text :obs

      t.timestamps
    end
  end
  
  def self.down
    drop_table :mesas
  end
end
