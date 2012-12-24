# encoding: utf-8

FactoryGirl.define do

  factory :sys_user_group1, class: 'Authentify::SysUserGroup'  do
    id                1
    user_group_name   "admin"
    short_note        "admin"
    user_type_code    1
    user_type_desp    'employee'
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_user_group2, class: 'Authentify::SysUserGroup'  do
    id                2
    user_group_name   "salesManager"
    short_note        "salesManager"
    user_type_code    1
    user_type_desp    'employee'
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_user_group3, class: 'Authentify::SysUserGroup'  do
    id                3
    user_group_name   "ceo"
    short_note        "ceo"
    user_type_code    1
    user_type_desp    'employee'
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_user_group4, class: 'Authentify::SysUserGroup'  do
    id                4
    user_group_name   "sales"
    short_note        "sales"
    user_type_code    1
    user_type_desp    'employee'
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :user_level1, class: 'Authentify::UserLevel'  do 
    id                    1
    user_id               1
    sys_user_group_id     1
    manager_id            3
    created_at              "2012-06-11 00:44:24.050395"
    updated_at              "2012-12-19 23:49:44.024224"
  end

  factory :sys_user_right1, class: 'Authentify::SysUserRight'  do
    id                      1
    sys_action_on_table_id  1
    sys_user_group_id       1
    matching_column_name    nil
    accessible_col          nil
    created_at              "2012-06-11 00:44:24.050395"
    updated_at              "2012-12-19 23:49:44.024224"
  end


  factory :sys_module1, class: 'Authentify::SysModule'  do
    id                1
    module_name       "business_travels"
    module_group_name "approver"
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_module2, class: 'Authentify::SysModule'  do
    id                2
    module_name       "business_travels"
    module_group_name "ceo"
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_module3, class: 'Authentify::SysModule'  do
    id                3
    module_name       "business_travels"
    module_group_name "reviewer"
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_module_mapping1, class: 'Authentify::SysModuleMapping'  do
    id                1
    sys_module_id     1
    sys_user_group_id 1
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_module_mapping2, class: 'Authentify::SysModuleMapping'  do
    id                2
    sys_module_id     2
    sys_user_group_id 3
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_module_mapping3, class: 'Authentify::SysModuleMapping'  do
    id                3
    sys_module_id     3
    sys_user_group_id 2
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :sys_module_mapping4, class: 'Authentify::SysModuleMapping'  do
    id                4
    sys_module_id     1
    sys_user_group_id 2
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end
  
  factory :sys_action_on_table1, class: 'Authentify::SysActionOnTable' do
    id          1
    action      "index"
    table_name  "users"
    created_at        "2012-06-11 00:44:24.050395"
    updated_at        "2012-12-19 23:49:44.024224"
  end

  factory :user1, class: 'Authentify::User'  do
    id                      1
    name                    "amine"
    login                   "amine1"
    email                   "machouicha@yahoo.com"
    password                "password"
    password_confirmation   "password"
    status                "active"
    last_updated_by_id      1
    customer_id             nil
    created_at              "2012-06-11 00:44:24.050395"
    updated_at              "2012-12-19 23:49:44.024224"
    auth_token              nil
    password_reset_token    nil
    password_reset_sent_at     nil
  end

  factory :userX, class: 'Authentify::User'  do
    id                      1
    name                    "amine"
    login                   "amine1"
    email                   "machouicha@yahoo.com"
    encrypted_password      "0d76c877eece3a97a8fff08b49f0afa4ae0ac4c798ffaea61d3740fb3cef5794"
    salt                    "e1ce64a68f0306eb04a70e8e5872122c210e2699ea2a2259cce0e96d0798f937"
    status                  "active"
    last_updated_by_id      1
    customer_id             nil
    created_at              "2012-06-11 00:44:24.050395"
    updated_at              "2012-12-19 23:49:44.024224"
    auth_token              nil
    password_reset_token    nil
    password_reset_sent_at     nil
  end
  
  factory :business_travel1, class: 'BizTravels::BusinessTravel' do
    id                      1 
    user_id                 1
    state                   "report_submitted"
    from_date               "07/01/2012"
    to_date                 "07/10/2012"
    purpose                 "purpose1"
    estimated_cost          500.50
    actual_cost             nil
    type_of_transportation  "Train"
    customers_to_visit      "Joe, Jane" 
    note                    "Visit clients"
    decision                nil
    review_date             nil
    travel_summary          nil
    last_updated_by_id      1
    wfid                    'qwdfgjtyjFSDRR1245364'
    created_at              "07/01/2012"
    updated_at              "07/01/2012"  
  end  
  
end

