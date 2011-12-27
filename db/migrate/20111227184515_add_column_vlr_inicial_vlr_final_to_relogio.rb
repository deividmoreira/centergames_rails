class AddColumnVlrInicialVlrFinalToRelogio < ActiveRecord::Migration
  def change
    add_column :relogios, :vlr_inicial, :decimal
    add_column :relogios, :vlr_final, :decimal
  end
  
  def self.down
    add_column :relogios, :vlr_inicial
    add_column :relogios, :vlr_final
  end
  
end
