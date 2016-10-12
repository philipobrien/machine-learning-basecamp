COM_COLOR   = \033[0;34m
NO_COLOR    = \033[m

basecamp: build clone
	
build:
	@printf "\n$(COM_COLOR)Building Python Environment$(NO_COLOR)\n"
	@conda env create --quiet --force --file environment.yml
	
