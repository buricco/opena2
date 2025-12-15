# Copyright 1976-2025 Microsoft Corp.
# Copyright 2012-2025 S. V. Nickolas.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the Software), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT,TORT OR OTHERWISE, ARISING FROM
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

opena2.bin:	fpbasic.bin monitor.bin
	cat fpbasic.bin monitor.bin > opena2.bin

fpbasic.bin:	fpbasic.obj
	ld65 -D__STACKSTART__=65535 -D__STACKSIZE__=0 -t none -o fpbasic.bin fpbasic.obj

monitor.bin:	monitor.obj
	ld65 -D__STACKSTART__=65535 -D__STACKSIZE__=0 -t none -o monitor.bin monitor.obj

fpbasic.obj:	fpbasic.a65
	ca65 -o fpbasic.obj fpbasic.a65

monitor.obj:	monitor.a65
	ca65 -o monitor.obj monitor.a65

clean:
	rm -f opena2.bin fpbasic.bin monitor.bin fpbasic.obj monitor.obj
