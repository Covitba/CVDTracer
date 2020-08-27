workspace 'CVDTracer'
project 'Example/CVDTracer.xcodeproj'

platform :ios, '12.0'
use_frameworks!

target 'CVDTracer_Example' do
  pod 'CVDTracer', :path => './'
  pod 'AndesUI', '~> 3.8'

  target 'CVDTracer_Tests' do
    inherit! :search_paths

    pod 'Quick', '~> 1.2.0'
    pod 'Nimble', '~> 7.0'
  end
end
