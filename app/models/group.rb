class Group < ActiveRecord::Base
  extend Slugifiable::ClassMethod
  include Slugifiable::InstanceMethod
  
  has_many :contributions_groups 
  has_many :contributions, through: :contributions_groups
  has_many :users, through: :contributions
end