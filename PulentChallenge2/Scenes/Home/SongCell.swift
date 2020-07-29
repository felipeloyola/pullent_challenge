//
//  SongCell.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright © 2020 Felipe Loyola. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
    @IBOutlet private weak var songLabel: UILabel!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var artistName: UILabel!

    func configure(song: SongViewModel) {
        self.songLabel.text = song.songName
        self.artistName.text = song.album.artist
        if let theURL = URL(string: song.album.imageURL){
            self.albumImage.af.setImage(withURL: theURL)
        }
    }
}
