# http://www.sqlite.org/download.html

SQLITE_VERSION  ?= 3310100
SQLITE_YEAR     ?= 2020

SQLITE_BASENAME := sqlite-amalgamation-$(SQLITE_VERSION)
# Complete URL sample: http://www.sqlite.org/2017/sqlite-amalgamation-3160100.zip
SQLITE_URL      := http://www.sqlite.org/$(SQLITE_YEAR)/$(SQLITE_BASENAME).zip

# Build/Compile
libs/armeabi-v7a/sqlite3-static: build/sqlite3.c
libs/arm64-v8a/sqlite3-static: build/sqlite3.c

# Unpack
build/sqlite3.c: $(SQLITE_BASENAME).zip
	unzip -oq "$<"
	rm -rf build
	mv "$(SQLITE_BASENAME)" build
	touch "$@"

# Download
$(SQLITE_BASENAME).zip:
	wget -N -c "$(SQLITE_URL)"

clean:
	rm -f "$(SQLITE_BASENAME).zip"
	rm -rf "$(SQLITE_BASENAME)"
	rm -rf build
	rm -rf obj
	rm -rf libs
