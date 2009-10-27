# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_skillmanager_session',
  :secret      => '6d1ff3ab0053c5ba2064cbb42515cb2f4ac4ff14fac1028567fa3b2b6189cf809a4fcf2dbe3aa2efd40a6c8139ce14e9a527af6b8efcf9abdb1c833569922398'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
