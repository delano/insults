@spec = Gem::Specification.new do |s|
	s.name = "insults"
	s.version = "0.3"
	s.summary = "Insults will insult you when it feels you deserve it."
	s.description = "Insults will insult you when it feels you deserve it."
	s.author = "Delano Mandelbaum"
	s.email = "delano@solutious.com"
	s.homepage = "http://github.com/delano/insults"
  s.extra_rdoc_files  = ['README.rdoc']
 
  # = MANIFEST =
  # find {bin,lib,tests,support,vendor} -type f | grep -v git
  s.files = %w(
  README.rdoc
  LICENSE.txt
  Rakefile
  bin/example
  bin/example.bat
  lib/insults.rb
  lib/try.rb
  )
  
  s.extra_rdoc_files = %w[README.rdoc LICENSE.txt]
  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Insults: How rude!", "--main", "README.rdoc"]
  s.require_paths = %w[lib]
  s.rubygems_version = '1.1.1'
  
  s.rubyforge_project = 'insults'
end