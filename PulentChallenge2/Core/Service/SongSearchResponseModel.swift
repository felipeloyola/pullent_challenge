//
//  SongSearchResponseModel.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright © 2020 Felipe Loyola. All rights reserved.
//

struct SongSearchResponseModel: Codable {

    let resultCount:Int
    let results: [SongModel]

}
