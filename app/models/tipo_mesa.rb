class TipoMesa < ActiveRecord::Base
  has_one :mesa
  
  validates_associated :mesa
  
  validates_presence_of :tipo
  validates_uniqueness_of :tipo
end
