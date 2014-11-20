Rails.application.configure do
  config.assets.version = '1.0'
  config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
end
