# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_web-scrappy_session',
  :secret => 'c9d690bde15690e18fe15bbefb085dbb35b3a9e23450860d24204d0dab8b9c0bba4eea5a9737b6a9c69482c8b29c487dd7a4ded411d49cb6e292b72ad8e1de70'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
