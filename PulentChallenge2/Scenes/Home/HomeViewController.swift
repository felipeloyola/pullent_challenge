//
//  HomeViewController.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright (c) 2020 Felipe Loyola. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    // MARK: - Public properties -

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var searchBar: UISearchBar!
    var songs: [SongViewModel] = []
    var presenter: HomePresenterInterface!

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.load()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        let nib = UINib(nibName: "\(SongCell.self)", bundle: Bundle.main)
        self.tableView.register(nib, forCellReuseIdentifier: "\(SongCell.self)")
        self.searchBar.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.songs.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let song = self.songs[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "\(SongCell.self)") as? SongCell {
            cell.configure(song: song)
            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.presenter.selectSong(song: self.songs[indexPath.row])
    }

    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        self.presenter.requestSearch(text: searchBar.text ?? "")
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.count > 3 {
            self.presenter.requestSearch(text: searchText)
        }
    }
}

// MARK: - Extensions -

extension HomeViewController: HomeViewInterface {
    func showNoSongFound() {
        let alert = self.createAlert(with: "Alerta", message: "No se encontraron canciones")
        navigationController?.present(alert, animated: true, completion: nil)
    }

    func showErrorOnServer() {
        let alert = self.createAlert(with: "Alerta", message: "Hubo un problema en el servidor")
        navigationController?.present(alert, animated: true, completion: nil)
    }

    func showFoundSongs(songs: [SongViewModel]) {
        self.songs = songs
        self.tableView.reloadData()
    }
}
