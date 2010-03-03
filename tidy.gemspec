require 'rubygems'

version = File.read('VERSION').strip
raise "no version" if version.empty?

spec = Gem::Specification.new do |s|
  s.name = 'tidy'
  s.version = version 
  s.author = 'Kevin Howe'
  s.email = 'kh@newclear.ca'
  s.homepage = 'http://tidy.rubyforge.org/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Ruby interface to HTML Tidy Library Project'
  s.description = s.summary + ', updated to avoid to avoid seg faults (see http://rubyforge.org/tracker/index.php?func=detail&aid=10007&group_id=435&atid=1744)'
  s.files = Dir['**/*'].delete_if { |f| f =~ /(cvs|gem|svn)$/i }
  s.require_path = 'lib'
  s.rdoc_options << '--all' << '--inline-source' << '--main' << 'lib/tidy.rb'
  s.has_rdoc = true
  s.rubyforge_project = 'tidy'
end
