class Cliente < ActiveRecord::Base
  
  has_one :locacao
  
end
