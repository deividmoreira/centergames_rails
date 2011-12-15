class CreateTipoMesas < ActiveRecord::Migration
  def change
    create_table :tipo_mesas do |t|
      t.string :tipo
      t.text :obs

      t.timestamps
    end
  end
end
