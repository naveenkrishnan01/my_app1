OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'rJLGYnEkF19ACDtTGBvbEpRYb', 'n2r7iy3XUZibXiIVrk4WMZvYGAHVdh2NDaqANNxW5YU94gchy0'
end


