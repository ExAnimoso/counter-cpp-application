TARGET = counter-cpp-application

CONFIG += sailfishapp \
          sailfishapp_i18n \
          c++11

SOURCES += src/counter-cpp-application.cpp

OTHER_FILES += qml/counter-cpp-application.qml \
    qml/cover/CoverPage.qml \
    translations/*.ts \
    counter-cpp-application.desktop


# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/counter-cpp-application-de.ts

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

DISTFILES += \
    tests/tst_counter.qml \
    tests/SailfishTestCase.qml \
    qml/CounterCppApplication.qml \
    qml/pages/CounterPage.qml

tests.files = tests/*
tests.path = /usr/share/counter-cpp-application/tests
INSTALLS += tests
