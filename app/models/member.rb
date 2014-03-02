class Member < ActiveRecord::Base
  belongs_to :registration

  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
end
