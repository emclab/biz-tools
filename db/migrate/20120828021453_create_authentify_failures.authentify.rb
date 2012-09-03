# This migration comes from authentify (originally 20120816005137)
class CreateAuthentifyFailures < ActiveRecord::Migration
  def change
    create_table :authentify_failures do |t|
      t.text :message

      t.timestamps
    end
  end
end
