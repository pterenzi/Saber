class Testament < ActiveRecord::Base
  has_many :books
  has_many :passages
  has_many :verses
end
