class Location < ActiveRecord::Base
  belongs_to :organization
  belongs_to :program
end
