Rails.application.config.session_store :cookie_store, 
    key: "_it_assets_session_#{Rails.env}", 
    domain: :all, 
    tld_length: 2