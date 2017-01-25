class Zombie < ActiveRecord::Base

  has_one :brain, dependent: :destroy
  has_many :assignments
  has_many :roles, through: :assignments
  has_many :tweets

  validates_presence_of :name

  scope :rotting, -> {where(rotting: true)}

  before_save :make_rotting

  def make_rotting
    if age != nil && age > 20
      self.rotting = true
    end
  end

end
