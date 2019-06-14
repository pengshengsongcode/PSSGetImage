#
# Be sure to run `pod lib lint PSSGetImage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PSSGetImage'
  s.version          = '0.1.0'
  s.summary          = '以供私有库、公有库获取图片'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 以供私有库、公有库获取图片.
                       DESC

  s.homepage         = 'https://github.com/pengshengsongcode/PSSGetImage.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '彭盛凇' => 'shengsongpeng@huangbaoche.com' }
  s.source           = { :git => 'https://github.com/pengshengsongcode/PSSGetImage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'PSSGetImage/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PSSGetImage' => ['PSSGetImage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
