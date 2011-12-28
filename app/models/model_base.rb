class ModelBase < ActiveRecord::Base
  self.abstract_class = true
  
  def uppercase_fields
    attributes.each_value do |value| 
      if (value != nil && 
                value.class == 'String') 
        value.upcase!
      end
    end
  end
end