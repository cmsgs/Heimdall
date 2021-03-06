# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = app
TARGET = heimdall-frontend

macx {
	DESTDIR = ../OSX
} else win32 {	# It's recommended that Windows users compile via VS2010, but just in case...
	DESTDIR = ../Win32
} else {
	DESTDIR = ../Linux
}

macx {
	PROPOSEDINSTALLDIR = /Applications
} else {
	PROPOSEDINSTALLDIR = /usr/local/bin
}

message("Install location:" $$PROPOSEDINSTALLDIR)
DESIREDINSTALLDIR = $$prompt("Press ENTER to use the default location or type an alternative")

equals(DESIREDINSTALLDIR, "") {
	target.path = $$PROPOSEDINSTALLDIR
} else {
	target.path = $$DESIREDINSTALLDIR
}


INSTALLS += target

QT += core gui
CONFIG += release
DEFINES += QT_LARGEFILE_SUPPORT
INCLUDEPATH += ./GeneratedFiles \
    ./GeneratedFiles/Release \
    .
DEPENDPATH += .
MOC_DIR += ./GeneratedFiles/release
OBJECTS_DIR += release
UI_DIR += ./GeneratedFiles
RCC_DIR += ./GeneratedFiles
include(heimdall-frontend.pri)
