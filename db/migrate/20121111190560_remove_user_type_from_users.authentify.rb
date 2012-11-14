# This migration comes from authentify (originally 20121014003224)
class RemoveUserTypeFromUsers < ActiveRecord::Migration
  def up
    remove_column :authentify_users, :user_type
  end

  def down
    add_column :authentify_users, :user_type, :string
  end
end
