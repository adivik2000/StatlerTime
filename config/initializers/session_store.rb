# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_statler_time_session',
  :secret      => '85862df1ec9ce98514d0074317dd87318feeb8724703f92c0837bf3ab4437a65bc2e1580255210dbb794616ac62adc4cbc76323656fa92f00e057d36c98c3aec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
