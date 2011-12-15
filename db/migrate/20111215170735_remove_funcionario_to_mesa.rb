class RemoveFuncionarioToMesa < ActiveRecord::Migration
  def up
    remove_column :mesas, :id_funcionario
  end

  def down
    add_column :mesas, :id_funcionario, :integer
  end
end
