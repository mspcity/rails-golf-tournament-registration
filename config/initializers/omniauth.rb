Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_CLIENT2'], ENV['GITHUB_SECRET2']
end