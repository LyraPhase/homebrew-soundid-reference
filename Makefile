GITHUB_USER := lyraphase
REPO_NAME := homebrew-soundid-reference
REPO := $(GITHUB_USER)/$(REPO_NAME)
CASK_NAME := soundid-reference
PKG_ID := com.sonarworks.Reference4Mac
HOMEBREW_LIBRARY_TAPS := $(shell brew --repo)/Library/Taps
TAP_DIR := $(HOMEBREW_LIBRARY_TAPS)/$(GITHUB_USER)

DEFAULT_GOAL: help ## no-help

.PHONY: help install test

help: ## Shows this generated help info for Makefile targets
	@grep -E '^[a-zA-Z_-]+:' $(MAKEFILE_LIST) | awk '{ c=split($$0,resultArr,/:+/) ; if ( !(resultArr[c-1] in targets) ) { if ( /:.*##/ ) { if ( ! /no-help/ ) { sub(/^.*## ?/," ",resultArr[c]); targets[resultArr[c-1]] = resultArr[c]; } } else { targets[resultArr[c-1]] = "" } } } END { for (target in targets) { printf "\033[36m%-30s\033[0m %s\n", target, targets[target] } }' | sort

$(TAP_DIR): ## no-help
	mkdir -p $(TAP_DIR)

$(TAP_DIR)/$(REPO_NAME):
	ln -s $(PWD) $(TAP_DIR)/$(REPO_NAME)

install: $(TAP_DIR) $(TAP_DIR)/$(REPO_NAME) ## Install Tap via git checkout symlink (development mode)
	brew tap --repair
	brew tap

test: install ## Run tests
	brew audit --cask $(CASK_NAME)
	brew install --cask --verbose $(CASK_NAME)
	ls -lR "$$(brew --caskroom)/soundid-reference/"
	test -e "$$(brew --caskroom)/soundid-reference/latest/SoundID Reference.app"
#	pkgutil --pkgs=$(PKG_ID)

clean:: ## Remove temporary/build files.
	rm -rf $(TAP_DIR)/$(REPO_NAME)
