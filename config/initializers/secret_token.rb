# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
EMS::Application.config.secret_key_base = 'b16c9473aafc281c2b95a68181d2a58f9874a46c131c018681eae1482e2e3d90dd706a2fd617999834e68261ab4b96e258e4f48acec9ee1e007b31a7e5d72821'
