class Role < ActiveRecord::Base
  has_many :assignments
  has_many :zombies, through: :assignments

  def get_roles(roles)
    roles.each do |r|
      r.title
    end
  end
end
