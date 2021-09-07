if Rails.env == 'production'
Rails.application.config.session_store :cookie_store, key: '_rails_api', domain: 'slm-final-capstone.herokuapp.com'
else 
 Rails.application.config.session_store :cookie_store, key: '_rails_api'
end