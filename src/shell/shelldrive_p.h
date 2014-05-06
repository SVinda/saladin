/**************************************************************************
* This file is part of the Saladin program
* Copyright (C) 2011-2014 Michał Męciński
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
**************************************************************************/

#ifndef SHELLDRIVE_P_H
#define SHELLDRIVE_P_H

#include "shelldrive.h"

#include <shlobj.h>

class ShellDrivePrivate : public QSharedData
{
public:
    ShellDrivePrivate();
    ShellDrivePrivate( const ShellDrivePrivate& other );
    ~ShellDrivePrivate();

public:
    LPITEMIDLIST m_pidl;

    char m_letter;
    QString m_name;
    QPixmap m_icon;
};

#endif
