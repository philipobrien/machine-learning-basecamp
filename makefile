COM_COLOR   = \033[0;34m
NO_COLOR    = \033[m

basecamp: build
notebook: notebook

build:
	@printf "\n$(COM_COLOR)Building Python Environment$(NO_COLOR)\n"
	@conda env create --quiet --force --file environment.yml
	@cd /home/vagrant/iTorch && luarocks make	
	@mkdir ~/.jupyter
	@cp /vagrant/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
