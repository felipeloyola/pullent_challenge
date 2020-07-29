//
//  SongInAlbumCell.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright © 2020 Felipe Loyola. All rights reserved.
//

import UIKit

class SongInAlbumCell: UITableViewCell {
    @IBOutlet weak var trackNumber: UILabel!
    @IBOutlet weak var songName: UILabel!

    func configure(song: AlbumSongViewModel) {
        self.trackNumber.text = String(song.position)
        self.songName.text = song.name
    }
}
