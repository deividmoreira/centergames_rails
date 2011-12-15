class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.integer :id_relogio
      t.integer :id_tipomesa
      t.integer :id_funcionario
      t.boolean :mesa_inativa
      t.text :motivo_inatividade
      t.text :obs

      t.timestamps
    end
  end
end
