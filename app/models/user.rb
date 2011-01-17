class User < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  
  has_many :time_off_requests
end
