class Relogio < ActiveRecord::Base
  belongs_to :mesa
  validates_presence_of :numero
  validates_uniqueness_of :numero
end
