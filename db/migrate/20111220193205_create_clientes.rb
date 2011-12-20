class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :rg
      t.string :orgao_expedidor
      t.string :cpf
      t.string :cgc
      t.boolean :irregular
      t.text :motivo_irregularidade
      t.text :obs

      t.timestamps
    end
  end
end
