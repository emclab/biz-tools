# This migration comes from authentify (originally 20121010155731)
class AddManagerToUserLevels < ActiveRecord::Migration
  def change
    add_column :authentify_user_levels, :manager, :string
  end
end
