Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '5.12.0'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/braze-inc/braze-swift-sdk-xcode-14-3-preview/releases/download/5.12.0/BrazePushStory.zip',
    :sha256 => '48a0b26ba39ae14164d7a4f6c150bcc2ca6d9841c6b561095bc0200afac92779'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '13.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
