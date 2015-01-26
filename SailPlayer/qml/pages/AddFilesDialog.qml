import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.sail.player.FsRecordsListModel 1.0
import harbour.sail.player.SailPlayerSettings 1.0

Dialog
{	
	SailPlayerSettings
	{
		id: settings
	}

	SilicaListView
	{
		id: itemsList

		anchors.fill: parent

		model: FsRecordsListModel
		{
			id: fsRecordsListModel
			directory: settings.lastAddFilesDirectoryPath
		}

		header: DialogHeader
		{
			id: dialogHeader

			title: fsRecordsListModel.directory
			acceptText: qsTr("Add")
		}

		VerticalScrollDecorator { flickable: itemsList }

		delegate: ListItem
		{
			id: listItem

			contentHeight: listItemLabel.height + Theme.paddingMedium

			Image
			{
				id: listItemIcon

				anchors.left: parent.left
				anchors.leftMargin: Theme.paddingLarge

				anchors.verticalCenter: parent.verticalCenter

				source: "../images/icons/small-" + iconName + ".png"
			}

			Label
			{
				id: listItemLabel

				anchors.left: listItemIcon.right
				anchors.right: parent.right

				anchors.leftMargin: Theme.paddingMedium
				anchors.rightMargin: Theme.paddingLarge

				anchors.verticalCenter: parent.verticalCenter

				text: name
			}

			onClicked:
			{
				if(isDirectory)
					fsRecordsListModel.directory = model.filePath
			}
		}
	}

	onAccepted:
	{
		settings.lastAddFilesDirectoryPath = fsRecordsListModel.directory
	}
}
