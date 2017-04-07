TEMPLATE = lib

TARGET = core

CONFIG += qt plugin c++11

QT += qml\
    quick\

HEADERS += \
    counter.h \
    core-plugin.h

SOURCES += \
    counter.cpp \
    core-plugin.cpp

DISTFILES += qmldir

uri = counter.cpp.application.Core

qmldir.files = qmldir qml/CustomButton.qml
installPath = /usr/lib/counter-cpp-application/$$replace(uri, \\., /)
qmldir.path = $$installPath
target.path = $$installPath
INSTALLS += target qmldir
