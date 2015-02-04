
import QtQuick 2.1
import QtQuick.Window 2.1
import Deepin.Locale 1.0
import Deepin.Widgets 1.0
import DBus.Com.Deepin.Daemon.Search 1.0

QtObject {
    id: root

    property color textActivedColor: dconstants.hoverColor
    property color textNormalColor: "#333333"
    property color bgActivedColor: "#5498ec"
    property color bgNormalColor: dconstants.hoverColor
    property color buttonBorderColor: dconstants.fgColor

    property int mainItemWidth: 416
    property int maxAdjunctCount: 6

    property var supportAppList:[
        qsTr("deepin-movie"),
        qsTr("deepin-music-player"),
        qsTr("deepin-screenshot"),
        qsTr("deepin-boot-maker"),
        qsTr("deepin-bug-reporter"),
        qsTr("deepin-software-center"),
        qsTr("deepin-terminal"),
        qsTr("deepin-translator"),
        qsTr("other")
    ]

    function setReportContent(value){
        mainWindow.updateReportContentText(value)
    }

    function setAdjunctsPathList(list){
        mainWindow.updateAdjunctsPathList(list)
    }

    function setSimpleEntries(_feedbackType,_reportTitle,_email,_helpDeepin){
        mainWindow.updateSimpleEntries(_feedbackType,_reportTitle,_email,_helpDeepin)
    }

    function showMainWindow(){
        mainWindow.show()
    }

    function hideMainWindow(){
        mainWindow.hide()
    }

    property var dconstants: DConstants{}

    property var mainWindow: MainWindow {}

    property var dbusSearch: Search {}
}
