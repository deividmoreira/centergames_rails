class CreateValorFichas < ActiveRecord::Migration
  def change
    create_table :valor_fichas do |t|
      t.string :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
