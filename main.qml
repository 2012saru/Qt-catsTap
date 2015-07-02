import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtMultimedia 5.0

ApplicationWindow {
    title: qsTr("catsTap")
    id:mainWindow
    width: 540
    height: 960
    visible: true
    color: "black"

    Rectangle {
        id: fish1; width: animation.width; height: animation.height; color: "transparent"
        x:mainWindow.width-animation.width; y:Math.random()*(mainWindow.height-animation.height)
        Behavior on x { SmoothedAnimation { easing.type: Easing.Linear; duration:800 } }
        AnimatedImage { id:animation; width:100; height:100; source: "kanihazeL.gif";}
        MouseArea {
            anchors.fill:parent
            onClicked: { touchSound.play(); fish1.x = -animation.width; }
        }
    }

    Rectangle {
        id: fish2; width: animation.width; height: animation.height; color: "transparent"
        x:mainWindow.width-animation.width; y:Math.random()*(mainWindow.height-animation.height)
        Behavior on x { SmoothedAnimation { easing.type: Easing.Linear; duration:900 } }
        AnimatedImage { width:100; height:100; source: "kanihazeL.gif" }
        MouseArea {
            anchors.fill:parent
            onClicked: { touchSound.play(); fish2.x = -animation.width; }
        }
    }

    Rectangle {
        id: fish3; width: animation.width; height: animation.height; color: "transparent"
        x:mainWindow.width-animation.width; y:Math.random()*(mainWindow.height-animation.height)
        Behavior on x { SmoothedAnimation { easing.type: Easing.Linear; duration:900 } }
        AnimatedImage { width:100; height:100;source: "kanihazeL.gif" }
        MouseArea {
            anchors.fill:parent
            onClicked: { touchSound.play(); fish3.x = -animation.width; }
        }
    }

    Rectangle {
        id: fish4; width: animation.width; height: animation.height; color: "transparent"
        x:mainWindow.width-animation.width; y:Math.random()*(mainWindow.height-animation.height)
        Behavior on x { SmoothedAnimation { easing.type: Easing.Linear; duration:900 } }
        AnimatedImage { width:100; height:100; source: "kanihazeL.gif" }
        MouseArea {
            anchors.fill:parent
            onClicked: { touchSound.play(); fish4.x = -animation.width; }
        }
    }

    Rectangle {
        id: fish5; width: animation.width; height: animation.height; color: "transparent"
        x:mainWindow.width-animation.width; y:Math.random()*(mainWindow.height-animation.height)
        Behavior on x { SmoothedAnimation { easing.type: Easing.Linear; duration:900 } }
        AnimatedImage { width:100; height:100; source: "kanihazeL.gif" }
        MouseArea {
            anchors.fill:parent
            onClicked: { touchSound.play(); fish5.x = -animation.width; }
        }
    }

    Rectangle {
        id: fish6; width: animation.width; height: animation.height; color: "transparent"
        x:mainWindow.width-animation.width; y:Math.random()*(mainWindow.height-animation.height)
        Behavior on x { SmoothedAnimation { easing.type: Easing.Linear; duration:900 } }
        AnimatedImage { width:100; height:100; source: "kanihazeL.gif" }
        MouseArea {
            anchors.fill:parent
            onClicked: { touchSound.play(); fish6.x = -animation.width; }
        }
    }

    Rectangle {
        id: fish7; width: animation.width; height: animation.height; color: "transparent"
        x:mainWindow.width-animation.width; y:Math.random()*(mainWindow.height-animation.height)
        Behavior on x { SmoothedAnimation { easing.type: Easing.Linear; duration:900 } }
        AnimatedImage { width:100; height:100; source: "kanihazeL.gif" }
        MouseArea {
            anchors.fill:parent
            onClicked: { touchSound.play(); fish7.x = -animation.width; }
        }
    }

    SoundEffect {
            id: touchSound
            source: "se_maoudamashii_system46.wav"
    }

    Timer {
            interval: 1000; running: true; repeat: true
            onTriggered: { move() }
    }

    function move(){
        if(fish1.x<0){ fish1.visible=false; fish1.x=mainWindow.width; fish1.y=Math.random()*(mainWindow.height-animation.height) }
        else if(Math.random()>0.5){ fish1.visible=true; fish1.x=fish1.x-Math.random()*100; }

        if(fish2.x<0){ fish2.visible=false; fish2.x=mainWindow.width; fish2.y=Math.random()*(mainWindow.height-animation.height) }
        else if(Math.random()>0.5){ fish2.visible=true; fish2.x=fish2.x-Math.random()*120; }

        if(fish3.x<0){ fish3.visible=false; fish3.x=mainWindow.width; fish3.y=Math.random()*(mainWindow.height-animation.height) }
        else if(Math.random()>0.5){ fish3.visible=true; fish3.x=fish3.x-Math.random()*120; }

        if(fish4.x<0){ fish4.visible=false; fish4.x=mainWindow.width; fish4.y=Math.random()*(mainWindow.height-animation.height) }
        else if(Math.random()>0.5){ fish4.visible=true; fish4.x=fish4.x-Math.random()*120; }

        if(fish5.x<0){ fish5.visible=false; fish5.x=mainWindow.width; fish5.y=Math.random()*(mainWindow.height-animation.height) }
        else if(Math.random()>0.5){ fish5.visible=true; fish5.x=fish5.x-Math.random()*120; }

        if(fish6.x<0){ fish6.visible=false; fish6.x=mainWindow.width; fish6.y=Math.random()*(mainWindow.height-animation.height) }
        else if(Math.random()>0.5){ fish6.visible=true; fish6.x=fish6.x-Math.random()*120; }

        if(fish7.x<0){ fish7.visible=false; fish7.x=mainWindow.width; fish7.y=Math.random()*(mainWindow.height-animation.height) }
        else if(Math.random()>0.5){ fish7.visible=true; fish7.x=fish7.x-Math.random()*120; }
    }
}
