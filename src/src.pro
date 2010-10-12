include( ../config.pri )

TEMPLATE = app
TARGET   = saladin

CONFIG  += qt
QT      += xml

HEADERS += application.h \
           drivestripmanager.h \
           folderitemdelegate.h \
           folderitemmodel.h \
           folderitemview.h \
           mainwindow.h \
           multirenamewidget.h \
           openftpdialog.h \
           operationdialog.h \
           panewidget.h

SOURCES += application.cpp \
           drivestripmanager.cpp \
           folderitemdelegate.cpp \
           folderitemmodel.cpp \
           folderitemview.cpp \
           main.cpp \
           mainwindow.cpp \
           multirenamewidget.cpp \
           openftpdialog.cpp \
           operationdialog.cpp \
           panewidget.cpp

include( icons/icons.pri )
include( resources/resources.pri )
include( shell/shell.pri )
include( utils/utils.pri )
include( xmlui/xmlui.pri )

INCLUDEPATH += .

PRECOMPILED_HEADER = precompiled.h

RC_FILE = saladin.rc
LIBS += -lshell32 -lshlwapi

win32-msvc* {
    CONFIG -= flat
}

build_pass {
    MOC_DIR = ../tmp
    RCC_DIR = ../tmp
    UI_DIR = ../tmp
    CONFIG( debug, debug|release ) {
        OBJECTS_DIR = ../tmp/debug
        DESTDIR = ../debug
    } else {
        OBJECTS_DIR = ../tmp/release
        DESTDIR = ../release
    }
}

target.path = $${DESTINATION}$$PREFIX/bin
INSTALLS += target