# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jquery_slider_rails_session',
  :secret      => '3d153252b32b4adf5b72db0af8c09e16298f88b433e22bd9b4dfdbb58de06c56459c9ab92f67661495ecc26a42f0f8fc91890a73582c242b1ca3cf693b619973'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
