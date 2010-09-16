# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_saber_session',
  :secret      => '07f0f8c297000df3c5690749b55a07af2b6aa232551c7b024a71bfa6f9dc5af5d10ed46b9f142571087cfcf94bf27f1cd4c53d46e358f07f78953a35474f1080'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
