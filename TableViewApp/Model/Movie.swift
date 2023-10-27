//
//  Movie.swift
//  TableViewApp
//
//  Created by Артур Олехно on 27/10/2023.
//

import Foundation

struct Movie {
    
    let movieTitles: String
    let imageNames: String
    let movieGenres: String
    let releaseYears: Int
    let descriptions: String
    let movieTrailerUrls: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        let movieTitles = DataManager.shared.movieTitles
        let imageNames = DataManager.shared.imageNames
        let movieGenres = DataManager.shared.movieGenres
        let releaseYears = DataManager.shared.releaseYears
        let descriptions = DataManager.shared.descriptions
        let movieTrailerUrls = DataManager.shared.movieTrailerUrls
        
        for i in 0..<movieTitles.count {
            let movie = Movie(movieTitles: movieTitles[i], imageNames: imageNames[i], movieGenres: movieGenres[i], releaseYears: releaseYears[i], descriptions: descriptions[i], movieTrailerUrls: movieTrailerUrls[i])
            movies.append(movie)
        }
        return movies
    }
    
}
