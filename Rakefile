#!/usr/bin/ruby

require 'rake'

vim_bundles = [
	['https://github.com/chase/vim-ansible-yaml', 'vim-ansible-yaml'],
	['https://github.com/tpope/vim-markdown','vim-markdown'],
	['https://github.com/rizzatti/dash.vim.git','vim-dash']
]

task :default => ['create_symlinks', 'install_pathogen_vim', 'install_liquid_prompt']

def create_directory (dir)
	dir_to_create=File.join(Dir.home, dir)
	Dir.mkdir(dir_to_create,0700) unless File.exist?(dir_to_create)
end

task :create_symlinks do
	symlinks = Dir.glob("#{Dir.pwd}/*.symlink")
	symlinks.each do |symlink|
		FileUtils.ln_sf(symlink, "#{Dir.home}/.#{File.basename(symlink).sub('.symlink', '')}" )
	end
end

task :install_pathogen_vim do
	sh "mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
	vim_bundles.each do |bundle|
		if !File.exist?("#{Dir.home}/.vim/bundle/#{bundle[1]}")
			puts "Installing #{bundle[1]}"
			sh "git clone #{bundle[0]} #{Dir.home}/.vim/bundle/#{bundle[1]}"
		else
			puts "Updating #{bundle[1]}"
			cwd = Dir.pwd
			sh "cd #{Dir.home}/.vim/bundle/#{bundle[1]}; git pull; cd #{cwd}"
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

