# This migration comes from authentify (originally 20121103200832)
class AddAccessibleColumnNameToSysUserRights < ActiveRecord::Migration
  def change
    add_column :authentify_sys_user_rights, :accessible_column_name, :string
  end
end
