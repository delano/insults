require 'rubygems'
require 'rake/clean'
require 'rake/gempackagetask'
require 'hanna/rdoctask'
require 'fileutils'
include FileUtils
 
task :default => [ :rdoc, :package ]

# PACKAGE =============================================================

spec = Gem::Specification.new do |s|
	s.name = "insults"
	s.version = "0.2"
	s.summary = "Insults will insult you when it feels you deserve it."
	s.description = "Insults will insult you when it feels you deserve it."
	s.author = "Delano Mandelbaum"
	s.email = "delano@solutious.com"
	s.homepage = "http://insults.rubyforge.org/"
	s.rubyforge_project = "insults"
  s.extra_rdoc_files  = ['README.rdoc']

	s.platform = Gem::Platform::RUBY
	s.has_rdoc = true
	
	s.files = %w(Rakefile) + Dir.glob("{bin,doc,lib}/**/**/*")
end

Rake::GemPackageTask.new(spec) do |p|
	p.need_tar = true if RUBY_PLATFORM !~ /mswin/
end

task :install => [ :rdoc, :package ] do
	sh %{sudo gem install pkg/#{name}-#{version}.gem}
end

task :uninstall => [ :clean ] do
	sh %{sudo gem uninstall #{name}}
end

Rake::RDocTask.new do |t|
t.rdoc_dir = 'doc'
	t.title    = "Insults will insult you when it feels you deserve it."
	t.options << '--line-numbers' << '--inline-source' << '-A cattr_accessor=object' 
	t.options << '--charset' << 'utf-8' 
	t.rdoc_files.include('LICENSE.txt')
	t.rdoc_files.include('README.rdoc')
	t.rdoc_files.include('lib/*.rb')
end

CLEAN.include [ 'pkg', '*.gem', 'doc' ]



