class RemoveDtCadastroToMesa < ActiveRecord::Migration
  def up
    remove_column :mesas, :dt_cadastro
  end

  def down
    add_column :mesas, :dt_cadastro, :datetime
  end
end
