Pod::Spec.new do |s|
  s.name                      = "MUCore"
  s.version                   = "1.0.0"
  s.summary                   = "MUCore"
  s.homepage                  = "https://github.com/MoveUpwards/MUCore"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Move Upwards" => "contact@moveupwards.dev" }
  s.source                    = { :git => "https://github.com/MoveUpwards/MUCore.git", :tag => s.version.to_s }
  s.swift_version             = "5.0"
  s.ios.deployment_target     = "9.0"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end
