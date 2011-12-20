class Relogio < ActiveRecord::Base
  has_one :mesa
  
  validates_presence_of :numero
  validates_uniqueness_of :numero
end
