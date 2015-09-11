#!/usr/bin/ruby

require 'rake'

task :default => ['create_symlinks', 'install_janus_vim', 'install_liquid_prompt']

def create_directory (dir)
	dir_to_create=File.join(Dir.home, dir)
	Dir.mkdir(dir_to_create,0700) unless File.exist?(dir_to_create)
end

task :create_symlinks do
	symlinks = Dir.glob("#{Dir.pwd}/*.symlink")
	symlinks.each do |symlink|
		FileUtils.ln_sf(symlink, "#{Dir.home}/.#{File.basename(symlink).sub('.symlink', '')}" ) unless File.exist?("#{Dir.home}/.#{File.basename(symlink).sub('.symlink', '')}")
	end
end

task :install_janus_vim do
  sh "rm -rf ~/.vim.old"
	sh "cd ~; curl -Lo- https://raw.github.com/carlhuda/janus/master/bootstrap.sh | bash"
end

task :install_liquid_prompt do
	if !File.exist?("#{Dir.home}/.liquidprompt")
		puts "Installing liquidprompt"
		sh "git clone https://github.com/nojhan/liquidprompt #{Dir.home}/.liquidprompt"
	else
		puts "Updating #{Dir.home}/.liquidprompt"
		cwd = Dir.pwd
		sh "cd #{Dir.home}/.liquidprompt; git pull; cd #{cwd}"
	end
end

