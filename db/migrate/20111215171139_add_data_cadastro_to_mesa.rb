class AddDataCadastroToMesa < ActiveRecord::Migration
  def change
    add_column :mesas, :dt_cadastro, :datetime
  end
end
