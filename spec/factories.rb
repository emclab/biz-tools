# encoding: utf-8

FactoryGirl.define do
  
  factory :business_travel, class: 'BusinessTravel' do 
    user_id                 1
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
  
  
  factory :user do 
 
    name                  "Test User"
    login                 'testuser'
    email                 "test@test.com"
    password              "password1"
    password_confirmation "password1"
    status                "active"
    user_type             "employee"
    last_updated_by_id    1

  end

  factory :user_level do 
    position             "admin"
    user_id              1
    #user
  end

  factory :session do
    session_id             'afdbdd11'
    data                   'blablabla'    
  end
 
  factory :sys_log do    
    log_date                '2012-2-2'
    user_name               'blabla'
    user_id                 1
    user_ip                 '1.2.3.4'
    action_logged           'create a new user in FactoryGirl'
  end
  
end



