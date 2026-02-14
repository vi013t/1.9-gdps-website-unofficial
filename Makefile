NPM ?= "$(shell command -v bun 2>/dev/null || command -v pnpm 2>/dev/null || command -v npm 2>/dev/null || command -v yarn 2>/dev/null)"

.PHONY: deploy-site

deploy-site:
	@clear
	@mkdir -p cache
	@echo "" > cache/build.log
	@[ -d build ] && rm build/web -rf
	@mkdir -p build
	@echo ""
	@echo -e "\e[1;33m19gdps-unofficial.com\e[0m"
	@echo ""
	@echo -e "\e[1;32mDeploying\e[0m website..."
	@echo -e "    \e[1;32mBuilding\e[0m website..."
	@echo -en "        \e[1;32mCompiling\e[0m Svelte project... "
	@if $(NPM) run build &>cache/build.log ; then echo -e "\e[1;32mDone!\e[0m" ; else echo -e "\e[1;31mError:\e[0m\n\n$$(<cache/build.log)\n\n\e[1;31mError:\e[0m Aborting due to the error above."; exit 1; fi
	@echo -en "        \e[1;32mAdding\e[0m extra necessary files... "
	@touch build/.nojekyll
	@touch build/CNAME
	@echo "19gdps-unofficial.com" >> build/CNAME
	@echo -e "\e[1;32mDone!\e[0m"
	@echo -e "    \e[1;32mDone!\e[0m Website written to \e[1;36m/build\e[0m"
	@echo -en "    \e[1;32mDeploying\e[0m to GitHub..."
	@git add . &>cache/build.log
	@git commit -m '[automatic deploy] new build deployment' &>cache/build.log
	@git push --no-progress &>cache/build.log
	@git push origin `git subtree split --prefix build main`:gh-pages --force --no-progress &>cache/build.log
	@echo -e "\e[1;32mDone!\e[0m"
	@echo -e "\e[1;32mDone!\e[0m Website deployed to GitHub pages."
	@echo ""