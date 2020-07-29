//
//  SongService.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright © 2020 Felipe Loyola. All rights reserved.
//

import Alamofire
import UIKit

protocol ISongService {
    func searchSongsBy(term: String, success: @escaping ([SongModel]) -> Void, error: @escaping () -> Void)
    func getAlbumSongs(albumId: Int, success: @escaping ([SongModel]) -> Void, error: @escaping () -> Void)
}

class SongService: NSObject, ISongService {
    func searchSongsBy(term: String, success: @escaping ([SongModel]) -> Void, error: @escaping () -> Void) {
        let escapedTerm: String = term.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""

        let url: String = "https://itunes.apple.com/search?term=" +
            escapedTerm + "&mediaType=music&limit=20"
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let response = try JSONDecoder().decode(SongSearchResponseModel.self, from: data)
                    success(response.results)} catch {
                    //error()
                }

            case .failure(let error):
                print(error)
                //error( )
            }
        }
    }

    func getAlbumSongs(albumId: Int, success: @escaping ([SongModel]) -> Void, error: @escaping () -> Void) {
        let url: String = "https://itunes.apple.com/search?id="+String(albumId)+"&entity=song&media=music"
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let response = try JSONDecoder().decode(SongSearchResponseModel.self, from: data)
                    success(response.results)} catch {
                }

            case .failure(let error):
                print(error)
            }
        }
    }
}
