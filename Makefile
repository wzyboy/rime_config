.PHONY: trime trime-reset

trime: trime-reset
	adb push trime.custom.yaml /sdcard/rime/
	adb push wubi86.custom.yaml /sdcard/rime/

trime-reset:
	adb push trime.orig.yaml /sdcard/rime/trime.yaml
	adb push wubi86.schema.yaml /sdcard/rime/
