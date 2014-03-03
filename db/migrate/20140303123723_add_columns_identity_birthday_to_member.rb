class AddColumnsIdentityBirthdayToMember < ActiveRecord::Migration
  def change
    add_column :members, :birthday, :date
    add_column :members, :identity, :string
  end
end
