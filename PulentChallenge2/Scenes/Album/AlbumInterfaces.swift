//
//  AlbumInterfaces.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright (c) 2020 Felipe Loyola. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

protocol AlbumWireframeInterface: WireframeInterface {
}

protocol AlbumViewInterface: ViewInterface {
    func showSongs(songs: [AlbumSongViewModel])
    func showAlbum(album: AlbumViewModel)
    func showNoSongFoundAlert()
    func showErrorOnServerAlert()
}

protocol AlbumPresenterInterface: PresenterInterface {
    func presentSongs(songs: [AlbumSongViewModel])
    func load()
}

protocol AlbumInteractorInterface: InteractorInterface {
    func getSongs(albumId: Int)
}

protocol AlbumInteractorOutput {
    func presentSongs(songs: [AlbumSongViewModel])
    func presentErrorOnServer()
}
