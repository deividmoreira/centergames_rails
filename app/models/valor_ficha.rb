class ValorFicha < ActiveRecord::Base
  validates_presence_of :descricao
  validates_presence_of :preco
end
