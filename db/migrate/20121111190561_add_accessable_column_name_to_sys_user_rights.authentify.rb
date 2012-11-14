# This migration comes from authentify (originally 20121030152714)
class AddAccessableColumnNameToSysUserRights < ActiveRecord::Migration
  def change
    add_column :authentify_sys_user_rights, :accessable_column_name, :string
  end
end
