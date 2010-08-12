# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_milehighmeet_session',
  :secret      => 'cb575f711b036f035c9d66b52d42e933f82b7a6e41f35ff3ed44d7a111b287e62dd910e1b5cd5cce3810a456eca5ac0e82c62b30840e9ec892ce9cc4407e5a21'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
