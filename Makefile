.PHONY: trime trime-reset

CONFDIR ?= /sdcard/rime/

trime: trime-reset
	adb push trime.custom.yaml $(CONFDIR)
	adb push flypy.trime.custom.yaml $(CONFDIR)
	adb push wubi86.custom.yaml $(CONFDIR)

trime-reset:
	adb shell rm -rf /sdcard/rime/build
	adb push trime.yaml $(CONFDIR)
	adb push flypy.trime.yaml $(CONFDIR)
	adb push wubi86.schema.yaml $(CONFDIR)
