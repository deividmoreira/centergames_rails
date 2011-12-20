class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.references :rota, :cargo
      t.string :endereco
      t.string :nome
      t.string :rg
      t.string :orgao_expedidor
      t.string :cpf
      t.decimal :percentual_gratificacao
      t.boolean :inativo
      t.text :motivo_inatividade
      t.text :obs

      t.timestamps
    end
  end
  
  def self.down
    drop_table :funcionarios
  end
  
end
