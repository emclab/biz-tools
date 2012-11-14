# This migration comes from authentify (originally 20121103200652)
class RemoveAccessableColumnNameFromSysUserRights < ActiveRecord::Migration
  def up
    remove_column :authentify_sys_user_rights, :accessable_column_name
  end

  def down
    add_column :authentify_sys_user_rights, :accessable_column_name, :string
  end
end
