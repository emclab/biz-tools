namespace :db do
  desc "Seed data to run integration of our engines"
  task :integration => :environment do
    require 'factory_girl'
    require File.dirname(__FILE__) + '/../../spec/integrationfactories.rb'
    
    Factory(:sys_user_group1)
    Factory(:sys_user_group2)
    Factory(:sys_user_group3)
    Factory(:sys_user_group4)

    Factory(:user_level1)

    Factory(:sys_user_right1)

    Factory(:sys_module1)
    Factory(:sys_module2)
    Factory(:sys_module3)
    
    Factory(:sys_module_mapping1)
    Factory(:sys_module_mapping2)
    Factory(:sys_module_mapping3)
    Factory(:sys_module_mapping4)
    
    Factory(:sys_action_on_table1)

    Factory(:user1)

    Factory(:business_travel1)
    Factory(:zone)
    Factory(:group_type1)
    

  end
end
