Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, '34d51b630f8f4497995ad847f2de94db', '22f950c07e2a446da3cbb1dcce710d03'
end
