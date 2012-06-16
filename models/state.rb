class State < ActiveRecord::Base
  attr_accessible :id, :iso, :name, :country_id
end
