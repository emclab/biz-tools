# This migration comes from authentify (originally 20121012204849)
class RemoveSubGroupFromSysUserGroups < ActiveRecord::Migration
  def up
    remove_column :authentify_sys_user_groups, :sub_group
  end

  def down
    add_column :authentify_sys_user_groups, :sub_group, :string
  end
end
