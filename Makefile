ifndef (VERBOSE)
  Q:=@
else
  Q:=
endif

PATH := :/opt/local/bin:/opt/local/sbin:/usr/local/bin:$(PATH)
MAKE_DIR := $(shell pwd)
SOURCE_DIR := $(MAKE_DIR)/source
BUILD_DIR := $(MAKE_DIR)/build
BUILD_DIR_DEBUG := $(BUILD_DIR)/DEBUG
BUILD_DIR_RELEASE := $(BUILD_DIR)/RELEASE
	
all: symbols debug release

debug:
	$(Q)mkdir -p $(BUILD_DIR_DEBUG)
	cmake -E chdir "$(BUILD_DIR_DEBUG)" cmake -G "Unix Makefiles"  -D CMAKE_BUILD_TYPE=DEBUG "$(SOURCE_DIR)"
	make -C $(BUILD_DIR_DEBUG) all
	
release:
	mkdir -p $(BUILD_DIR_RELEASE)
	cmake  -E chdir $(BUILD_DIR_RELEASE) cmake -G "Unix Makefiles" $(SOURCE_DIR)
	make -C $(BUILD_DIR_RELEASE)
	
clean:
	rm -r -f $(BUILD_DIR_DEBUG)
	rm -r -f $(BUILD_DIR_RELEASE)
	
symbols:
	$(Q)echo "$(PATH)"
	$(Q)echo "$(SOURCE_DIR)"
	$(Q)echo "$(BUILD_DIR)"
	$(Q)echo "$(BUILD_DIR_DEBUG)"
	$(Q)echo "$(BUILD_DIR_RELEASE)"
	
.PHONY: symbols