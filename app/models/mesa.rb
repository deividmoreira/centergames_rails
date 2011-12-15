class Mesa < ActiveRecord::Base
  has_one :relogio
  validates_presence_of :id_tipomesa
  validates_presence_of :id_relogio
end
