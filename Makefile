script ?= commit-msg
prefix ?= $$HOME/.git

.PHONY: install
install: uninstall
	install -d "$(prefix)/hooks"
	install "$(script)" "$(prefix)/hooks"

.PHONY: uninstall
uninstall:
	rm -f "$(prefix)/hooks/$(script)"

.PHONY: test
test:
	@./test
