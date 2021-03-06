//
//  HomePresenter.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright (c) 2020 Felipe Loyola. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class HomePresenter {
    // MARK: - Private properties -

    private unowned let view: HomeViewInterface
    private let interactor: HomeInteractorInterface
    private let wireframe: HomeWireframeInterface

    // MARK: - Lifecycle -

    init(view: HomeViewInterface, interactor: HomeInteractorInterface, wireframe: HomeWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension HomePresenter: HomePresenterInterface, HomeInteractorOutput {
    func presentErrorOnServer() {
        self.view.showErrorOnServer()
    }

    func load() {
    }

    func requestSearch(text: String) {
        self.interactor.searchSongsBy(term: text)
    }

    func selectSong(song: SongViewModel) {
        self.wireframe.openAlbum(album: song.album)
    }

    func presentSearchResults(songs: [SongViewModel]) {
        self.view.showFoundSongs(songs: songs)
        if songs.isEmpty {
            self.view.showNoSongFound()
        }
    }
}
