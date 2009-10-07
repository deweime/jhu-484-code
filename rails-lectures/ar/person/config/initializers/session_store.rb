# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_person_session',
  :secret      => 'b9f38e217b961fc85ac38ad882e7410e244e3f29f7d1f840f9344d8de92eeed2bc897f0217922750471912c870be317fdca97e24d58a74693a1559c3565e0593'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
