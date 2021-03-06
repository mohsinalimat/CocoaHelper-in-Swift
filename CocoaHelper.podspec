#
# Be sure to run `pod lib lint BMPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CocoaHelper"
  s.version          = "1.1.3"
  s.summary          = "A bundle Swift categories for Cocoa/Cocoa Touch."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        CocoaHelper is a bundle Swift categories for Cocoa/Cocoa Touch.
                        DESC

  s.homepage         = "https://github.com/Meniny/CocoaHelper-in-Swift"
  s.license          = 'MIT'
  s.author           = { "Meniny" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/CocoaHelper-in-Swift.git", :tag => s.version.to_s }
  s.social_media_url = 'http://meniny.cn/'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  # s.tvos.deployment_target = '9.0'
  # s.watchos.deployment_target = '2.0'

  s.source_files = 'CocoaHelper/**/*'
  # s.public_header_files = 'Fire/*.h'
  s.osx.frameworks = 'Cocoa'
  s.ios.frameworks = 'Foundation', 'UIKit', 'ImageIO'
end
