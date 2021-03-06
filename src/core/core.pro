TEMPLATE = lib
CONFIG = staticlib qt
TARGET= snowshoe

QT += sql widgets quick

QMAKE_CFLAGS += -fPIC
QMAKE_CXXFLAGS += -fPIC

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0

SOURCES += \
    ApplicationStateTracker.cpp \
    RowsRangeFilter.cpp \
    BookmarkModel.cpp \
    HistoryModel.cpp \
    TabsModel.cpp \
    DatabaseManager.cpp \
    PopupWindow.cpp

HEADERS += \
    ApplicationStateTracker.h \
    RowsRangeFilter.h \
    BookmarkModel.h \
    HistoryModel.h \
    TabsModel.h \
    DatabaseManager.h \
    PopupWindow.h \
    UrlTools.h 
