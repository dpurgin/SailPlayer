import QtQuick 2.0
import Sailfish.Silica 1.0

Page
{
    id: page

    SilicaFlickable
	{
        anchors.fill: parent

        PullDownMenu
		{
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
		Column
		{
            id: column

            width: page.width
        }
    }
}
