//
//  SongModel.swift
//  PulentChallenge2
//
//  Created by Felipe Loyola on 28-07-20.
//  Copyright © 2020 Felipe Loyola. All rights reserved.
//

struct SongModel: Codable {
    let collectionId:Int;
    let collectionName:String
    let trackId:Int
    let artistName:String
    let trackName:String
    let trackViewUrl:String
    let artworkUrl100:String
    let previewUrl:String
    let collectionPrice:Double
    let trackPrice:Double
    let releaseDate:String
    let collectionExplicitness:String
    let trackExplicitness:String
    let discCount:Int
    let discNumber:Int
    let trackCount:Int
    let trackNumber:Int
    let trackTimeMillis:Int
    let country:String
    let currency:String
    let primaryGenreName:String
    let isStreamable:Bool
}
