CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJS5XXUH5MV7ZM5ZA',
    :aws_secret_access_key  => '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',
  }
  config.fog_directory  = 'medicapp-assets'
end