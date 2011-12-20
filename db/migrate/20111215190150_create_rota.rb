class CreateRota < ActiveRecord::Migration
  def change
    create_table :rota do |t|
      t.string :rota
      t.boolean :ativo

      t.timestamps
    end
  end
  
  def self.down
    drop_table :rota
  end
end
