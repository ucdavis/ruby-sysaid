Gem::Specification.new do |s|
  s.name        = 'sysaid'
  s.version     = '0.2.2'
  s.date        = '2013-12-03'
  s.summary     = "ruby-sysaid"
  s.description = "Wrapper for the SysAid SOAP API"
  s.authors     = ["Christopher Thielen"]
  s.email       = 'cmthielen@ucdavis.edu'
  s.license     = 'MIT'
  s.files       = Dir["lib/sysaid.rb"] + Dir["lib/sysaid/*.rb"]
  s.homepage    =
    'https://github.com/cthielen/ruby-sysaid'
  s.add_dependency('savon', '>= 2.3.0')
end
