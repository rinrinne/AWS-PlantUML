ifeq (,$(ICON_ROOT))
$(error ICON_ROOT is empty)
endif

all:
	rm -fr dist/Light && mkdir -p dist/Light
	rm -fr dist/Dark  && mkdir -p dist/Dark
	./puml.py -o dist/Light $(ICON_ROOT)/PNG\ Light
	./puml.py -o dist/Dark $(ICON_ROOT)/PNG\ Dark
