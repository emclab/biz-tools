# This migration comes from authentify (originally 20121007213119)
class CreateSysUserGroups < ActiveRecord::Migration
  def change
    create_table :authentify_sys_user_groups do |t|
      t.string :user_group_name
      t.string :short_note

      t.timestamps
    end
  end
end
