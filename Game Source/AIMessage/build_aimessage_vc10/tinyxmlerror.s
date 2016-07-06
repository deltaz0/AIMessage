	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 2
	.file	"tinyxmlerror.cpp"
	.hidden	_ZN9TiXmlBase11errorStringE
	.global	_ZN9TiXmlBase11errorStringE
	.data
	.align	2
	.type	_ZN9TiXmlBase11errorStringE, %object
	.size	_ZN9TiXmlBase11errorStringE, 68
_ZN9TiXmlBase11errorStringE:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"No error\000"
	.space	3
.LC1:
	.ascii	"Error\000"
	.space	2
.LC2:
	.ascii	"Failed to open file\000"
.LC3:
	.ascii	"Memory allocation failed.\000"
	.space	2
.LC4:
	.ascii	"Error parsing Element.\000"
	.space	1
.LC5:
	.ascii	"Failed to read Element name\000"
.LC6:
	.ascii	"Error reading Element value.\000"
	.space	3
.LC7:
	.ascii	"Error reading Attributes.\000"
	.space	2
.LC8:
	.ascii	"Error: empty tag.\000"
	.space	2
.LC9:
	.ascii	"Error reading end tag.\000"
	.space	1
.LC10:
	.ascii	"Error parsing Unknown.\000"
	.space	1
.LC11:
	.ascii	"Error parsing Comment.\000"
	.space	1
.LC12:
	.ascii	"Error parsing Declaration.\000"
	.space	1
.LC13:
	.ascii	"Error document empty.\000"
	.space	2
.LC14:
	.ascii	"Error null (0) or unexpected EOF found in input str"
	.ascii	"eam.\000"
.LC15:
	.ascii	"Error parsing CDATA.\000"
	.space	3
.LC16:
	.ascii	"Error when TiXmlDocument added to document, because"
	.ascii	" TiXmlDocument can only be at the root.\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
