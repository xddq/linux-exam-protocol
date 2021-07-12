#!/bin/bash
#
# Author: Pierre Dahmani
# Created: 12.07.2021
#
# Description: compiles given .ms file to pdf.
#


# target/goal rule
all: linux-exam-protocol.pdf

# compiles every groff document to pdf
linux-exam-protocol.pdf: linux-exam.ms
	groff -ms $< -Tpdf > $@

# declare phony target to specify it as a name instead of a file.
# removes all compiled files
.PHONY: clean
clean:
	rm -f *.pdf
