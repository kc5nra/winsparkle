project(expat)

add_definitions(-DCOMPILED_FROM_DSP)

set(expat_HEADERS
	expat/lib/ascii.h
	expat/lib/asciitab.h
	expat/lib/expat.h
	expat/lib/expat_external.h
	expat/lib/iasciitab.h
	expat/lib/internal.h
	expat/lib/latin1tab.h
	expat/lib/nametab.h
	expat/lib/utf8tab.h
	expat/lib/winconfig.h
	expat/lib/xmlrole.h
	expat/lib/xmltok.h
	expat/lib/xmltok_impl.h)

set(expat_SOURCES
	expat/lib/xmlparse.c
    expat/lib/xmlrole.c
    expat/lib/xmltok.c
    expat/lib/xmltok_impl.c
    expat/lib/xmltok_ns.c)

add_library(expat
	${expat_SOURCES})

