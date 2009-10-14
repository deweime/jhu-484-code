# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_document_session',
  :secret      => '7964a37a9e6851f47fdfe420aee9fa0b8df326f8bab95c881427d80b1243d2179e7c3598e377676c5a5ed696d4f7d74d8ed4f808b03c07427611e25cbe8216a5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
