class Registration < ActiveRecord::Base
  has_many :members
  accepts_nested_attributes_for :members, allow_destroy: true

  validates :team_name, presence: true
  validates_associated :members
end
