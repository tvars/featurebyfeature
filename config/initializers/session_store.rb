# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_webapp-experiement_session',
  :secret      => '4f9d15ba364806cadb0b023ce2f12cdb0558c522e5da6810c1b219fe44571f67390d1063efbe097a43efa9dfc5d7d700d40dcfa5340c670be5ac9e97dce0889e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
