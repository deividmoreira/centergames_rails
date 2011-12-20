class Rota < ActiveRecord::Base
  has_one :funcionario
  
  validates_presence_of :nome
end
