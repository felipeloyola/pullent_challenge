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

    func configure(song: SongViewModel) {
        self.songLabel.text = song.songName
    }
}
