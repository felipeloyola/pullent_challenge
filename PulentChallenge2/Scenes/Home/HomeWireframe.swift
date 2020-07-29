//
//  HomeWireframe.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright (c) 2020 Felipe Loyola. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class HomeWireframe: BaseWireframe {
    // MARK: - Module setup -

    init() {
        let moduleViewController = HomeViewController()
        super.init(viewController: moduleViewController)

        let interactor = HomeInteractor()
        interactor.songService = SongService()
        let presenter = HomePresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        interactor.output = presenter
        moduleViewController.presenter = presenter
    }
}

// MARK: - Extensions -

extension HomeWireframe: HomeWireframeInterface {
    func openAlbum(album: AlbumViewModel) {
        navigationController?.pushWireframe(AlbumWireframe(album: album))
    }
}
