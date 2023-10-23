//
//  PesquisaInteractor.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import Foundation

class PesquisaInteractor {
    
    private var movies = MovieService()
    
    func numberMoviesList() -> Int {
        movies.movieList.count
    }
    
    func getCellViewModelList(posicao: Int) -> Movies {
        let filme = movies.movieList[posicao]
        return filme
    }
}
