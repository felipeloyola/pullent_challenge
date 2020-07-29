//
//  HomeInteractor.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright (c) 2020 Felipe Loyola. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class HomeInteractor {
    var output: HomeInteractorOutput!
    var songService: ISongService!
}

// MARK: - Extensions -

extension HomeInteractor: HomeInteractorInterface {
    func searchSongsBy(term: String) {
         self.songService.searchSongsBy(
            term: term,
            success: { songs in
                self.output.presentSearchResults(songs: songs.map(self.parseToViewModel))
            },
            error: {
                self.output.presentErrorOnServer()
            })
    }

    private func parseToViewModel(song: SongModel) -> SongViewModel {
        .init(songName: song.trackName)
    }
}
