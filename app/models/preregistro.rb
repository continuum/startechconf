class Preregistro < ActiveRecord::Base
  attr_accessible :mail
  validates :mail, presence: true, uniqueness: true
  def to_s; mail; end

end
