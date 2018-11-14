.PHONY: trime trime-reset-wubi86

trime:
	adb push trime.custom.yaml /sdcard/rime/

trime-reset-wubi86:
	adb push wubi86.schema.yaml /sdcard/rime/
