class Preregistro < ActiveRecord::Base
  attr_accessible :mail
  validates :mail, presence: true, uniqueness: true
end
