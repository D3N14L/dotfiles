#!/usr/bin/ruby

require 'rake'

additional_vim_plugins = {
  "ansible-vim" => "https://github.com/pearofducks/ansible-vim",
  "AutoClose" => "https://github.com/vim-scripts/AutoClose"
}

task :default => ['create_symlinks', 'install_janus_vim', 'install_liquid_prompt']

def create_directory (dir)
	dir_to_create=File.join(Dir.home, dir)
	Dir.mkdir(dir_to_create,0700) unless File.exist?(dir_to_create)
end

task :create_symlinks do
	symlinks = Dir.glob("#{Dir.pwd}/*.symlink")
	symlinks.each do |symlink|
    dest_filename = "#{Dir.home}/.#{File.basename(symlink).sub('.symlink', '')}"
    if File.exist?(dest_filename) and !File.symlink?(dest_filename) then
      FileUtils.mv(dest_filename, "#{dest_filename}.old")
    end
		FileUtils.ln_sf(symlink, "#{Dir.home}/.#{File.basename(symlink).sub('.symlink', '')}" )
	end
end

task :install_janus_vim do
  if File.exists?("#{Dir.home}/.vim") then
    sh "cd #{Dir.home}/.vim/; rake update"
  else
    sh "rm -rf ~/.vim.old"
    sh "cd ~; curl -L https://bit.ly/janus-bootstrap | bash"
  end

  # addional vim plugins via janus
  sh "mkdir #{Dir.home}/janus" if not File.exist?("#{Dir.home}/.janus")
  additional_vim_plugins.each do |name,url|
    if not File.exist?("#{Dir.home}/.janus/#{name}")
      sh "cd #{Dir.home}/.janus/; git clone #{url}"
    else
      sh "cd #{Dir.home}/.janus/#{name}; git pull"
    end
  end
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

