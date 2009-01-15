Gem::Specification.new do |s|
	s.name = "insults"
	s.version = "0.1"
	s.summary = "Insults will insult you when it feels you deserve it."
	s.description = "Insults will insult you when it feels you deserve it."
	s.author = "Delano Mandelbaum"
	s.email = "delano@solutious.com"
	s.homepage = "http://insults.rubyforge.org/"
	s.rubyforge_project = "insults"
  s.extra_rdoc_files  = ['README.textile']
 
  # = MANIFEST =
  # find {bin,lib,tests,support,vendor} -type f | grep -v git
  s.files = %w(
  README.textile
  LICENSE.txt
  Rakefile
  bin/example
  bin/example.bat
  lib/insults.rb
  lib/try.rb
  )
  
  s.extra_rdoc_files = %w[README.textile LICENSE.txt]
  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Insults", "--main", "README.textile"]
  s.require_paths = %w[lib vendor]
  s.rubyforge_project = 'stella'
  s.rubygems_version = '1.1.1'
  
end