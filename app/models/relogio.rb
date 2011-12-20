class Relogio < ActiveRecord::Base
  
  validates_presence_of :numero
  validates_uniqueness_of :numero
end
