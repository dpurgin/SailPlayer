#include "Track.h"

namespace Playlist
{
	Track::Track(QString artisName, QString albumName, int albumYear, int number, QString name, int duration, QString sourceFileName)
		: _artistName(artisName), _albumName(albumName), _albumYear(albumYear), _number(number), _name(name), _duration(duration), _sourceFileName(sourceFileName)
	{
	}
}