//
//  AlbumPresenter.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright (c) 2020 Felipe Loyola. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class AlbumPresenter {

    // MARK: - Private properties -

    private unowned let view: AlbumViewInterface
    private let interactor: AlbumInteractorInterface
    private let wireframe: AlbumWireframeInterface

    // MARK: - Lifecycle -

    init(view: AlbumViewInterface, interactor: AlbumInteractorInterface, wireframe: AlbumWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension AlbumPresenter: AlbumPresenterInterface {
}
