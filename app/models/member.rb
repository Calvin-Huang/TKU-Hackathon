class Member < ActiveRecord::Base
  belongs_to :registration

  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :identity, presence: true, format: { with: /[A-Za-z][1-2]\d{8}/, on: :create }
  validates :birthday, presence: true
end
