/****************************************************************************
 *   Copyright (C) 2011  Instituto Nokia de Tecnologia (INdT)               *
 *                                                                          *
 *   This file may be used under the terms of the GNU Lesser                *
 *   General Public License version 2.1 as published by the Free Software   *
 *   Foundation and appearing in the file LICENSE.LGPL included in the      *
 *   packaging of this file.  Please review the following information to    *
 *   ensure the GNU Lesser General Public License version 2.1 requirements  *
 *   will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.   *
 *                                                                          *
 *   This program is distributed in the hope that it will be useful,        *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of         *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          *
 *   GNU Lesser General Public License for more details.                    *
 ****************************************************************************/

import QtQuick 2.0
import QtWebKit.experimental 5.0

Item {
    id: root

    property alias text: urlEdit.text
    property alias textInput: urlEdit.textInput
    property alias bookmarkButton: urlEdit.bookmarkButton

    signal urlEntered(string url)

    width: parent.width
    height: background.height

    Image {
        id: background
        width: parent.width
        fillMode: Image.TileHorizontally
        source: "qrc:///urlbar/url_bg_base_fill"
    }

    Row {
        id: buttons
        width: childrenRect.width
        height: childrenRect.height
        anchors.verticalCenter: parent.verticalCenter

        Image {
            source: "qrc:///urlbar/button_nav_back"
            MouseArea {
                anchors.fill: parent
                onClicked: webView.navigation.back()
            }
        }

        Image {
            source: "qrc:///urlbar/component_divisor"
        }

        Image {
            source: "qrc:///urlbar/button_nav_next"
            MouseArea {
                anchors.fill: parent
                onClicked: webView.navigation.forward()
            }
        }

        Image {
            source: "qrc:///urlbar/component_divisor"
        }

        Image {
            source: "qrc:///urlbar/button_nav_refresh"
            MouseArea {
                anchors.fill: parent
                onClicked: webView.navigation.reload()
            }
        }
    }

    UrlEdit {
        id: urlEdit
        anchors {
            left: buttons.right
            right: parent.right
            rightMargin: 4
            verticalCenter: buttons.verticalCenter
        }
        onUrlEntered: root.urlEntered(url)
    }
}
