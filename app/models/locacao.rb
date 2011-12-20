class Locacao < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :funcionario
  belongs_to :mesa
  belongs_to :valor_ficha
  
end
