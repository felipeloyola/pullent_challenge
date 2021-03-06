//
//  HomeInterfaces.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright (c) 2020 Felipe Loyola. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

protocol HomeWireframeInterface: WireframeInterface {
    func openAlbum(album: AlbumViewModel)
}

protocol HomeViewInterface: ViewInterface {
    func showFoundSongs(songs: [SongViewModel])
    func showErrorOnServer()
    func showNoSongFound()
}

protocol HomePresenterInterface: PresenterInterface {
    func load()
    func requestSearch(text: String)
    func selectSong(song: SongViewModel)
}

protocol HomeInteractorInterface: InteractorInterface {
    func searchSongsBy(term: String)
}

protocol HomeInteractorOutput {
    func presentSearchResults(songs: [SongViewModel])
    func presentErrorOnServer()
}
