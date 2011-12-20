class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.references :relogio, :tipo_mesa
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
