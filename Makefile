.PHONY: trime trime-reset

CONFDIR ?= /sdcard/rime/

trime: trime-reset
	adb push trime.custom.yaml $(CONFDIR)
	adb push wubi86.custom.yaml $(CONFDIR)

trime-reset:
	adb push trime.yaml $(CONFDIR)
	adb push wubi86.schema.yaml $(CONFDIR)
