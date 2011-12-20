class ValorFicha < ActiveRecord::Base
  
  has_one :locacao
  
  validates_presence_of :descricao
  validates_presence_of :preco
end
