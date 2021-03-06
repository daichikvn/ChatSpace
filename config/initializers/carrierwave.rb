require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  # config.fog_credentials = {
  #   provider: 'AWS',
  #   : Rails.applicataws_access_key_idion.secrets.aws_access_key_id,
  #   aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
  #   region: 'ap-northeast-1'
  # }

  config.fog_directory  = 'techex.chat-space-img'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/techex.chat-space-img'
end