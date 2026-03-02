Pod::Spec.new do |s|
  s.name             = 'iOSPhotoEditor'
  s.version          = '1.0.0'
  s.summary          = 'Native iOS photo editing library — crop, draw, text, stickers, emoji overlays with gesture support.'

  s.description      = <<-DESC
  iOSPhotoEditor is a native iOS photo editing library that supports freehand drawing,
  text overlays with custom fonts and colors, sticker/emoji placement, cropping, and
  gesture-based scale/rotate. Maintained as the core native iOS dependency for
  @phucprime/react-native-image-editor.
                       DESC

  s.homepage         = 'https://github.com/phucprime/photo-editor'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'phucprime' => 'https://github.com/phucprime' }
  s.source           = { :git => 'https://github.com/phucprime/photo-editor.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'

  s.ios.deployment_target = '9.0'
  s.source_files = "iOSPhotoEditor/**/*.{swift}"
  s.exclude_files = ""
  s.resources = "iOSPhotoEditor/**/*.{png,jpeg,jpg,storyboard,xib,ttf}"

end
