class CreateLocacoes < ActiveRecord::Migration
  def change
    create_table :locacoes do |t|
      t.references :cliente, :funcionario, :mesa, :valor_ficha
      t.date :data_locacao
      t.decimal :lucro
      t.boolean :encerrada
      t.text :obs

      t.timestamps
    end
  end
  
  def self.down
    drop_table :locacoes
  end
  
end
