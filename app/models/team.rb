class Team
  include Mongoid::Document
  field :name, :type => String
  field :city, :type => String
  field :location, :type => Array
end
