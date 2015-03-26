Pod::Spec.new do |s|
  s.name             = "DLRFoundation"
  s.version          = "1.1.1"
  s.summary          = "A collection of Foundation categories."
  s.homepage         = "https://github.com/detroit-labs/dlr-foundation-ios"
  s.license          = 'MIT'
  s.author           = { "Nathan Walczak" => "nate.walczak@detroitlabs.com" }
  s.source           = { :git => "https://github.com/detroit-labs/dlr-foundation-ios.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/detroitlabs'

  s.platform     = :ios
  s.requires_arc = true

  s.source_files = 'DLRFoundation/source/**/*'

  s.public_header_files = 'DLRFoundation/source/**/*.h'
end
