Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, "bac7a823979b4dddb95cd3cb265ab135", "84ada8354c1043e9b68d3200047b611c"
end
