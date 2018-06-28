#
# Be sure to run `pod lib lint CreatuLocalization.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CreatuLocalization'
  s.version          = '0.1.1'
  s.summary          = 'this is simple ios localization'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'The iOS devices including iPhone and iPad are available globally. Obviously, iOS users are from different countries and speak different languages. To deliver a great user experience, you may want to make your app available in multiple languages. The process of adapting an app to support a particular language is usually known as localization.'

  s.homepage         = 'https://github.com/mohansinghthagunna/CreatuLocalization'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mohansinghthagunna' => 'mohansingh_thagunna@outlook.com' }
  s.source           = { :git => 'https://github.com/mohansinghthagunna/CreatuLocalization.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CreatuLocalization/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CreatuLocalization' => ['CreatuLocalization/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
