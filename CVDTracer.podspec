Pod::Spec.new do |s|
  s.name             = 'CVDTracer'
  s.version          = '0.1.0'
  s.summary          = 'CVDTracer library for iOS app'

  s.description      = 'CVDTracer is a library for detecting devices interaction using Core Bluetooth'

  s.homepage         = 'https://github.com/Covitba/CVDTracer-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Covitba'
  s.source           = { :git => 'https://github.com/Covitba/CVDTracer-ios.git', :tag => s.version.to_s }

  s.platform         = :ios, '12.0'
  s.requires_arc     = true
  s.swift_version    = '5.0'

  s.source_files     = 'CVDTracer/Classes/**/*.{h,m,swift,xib}'
  
#  s.resource_bundles = {
#    'CVDTracerResources' => ['CVDTracer/Classes/**/*.{xib}',
#                             'CVDTracer/Classes/Assets/**/*']
#  }

  s.dependency 'AndesUI', '~> 3.8'

end
