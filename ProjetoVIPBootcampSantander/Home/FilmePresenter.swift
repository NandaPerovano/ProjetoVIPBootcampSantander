//
//  FilmePresenter.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit

class FilmePresenter {

    var interactor = FilmeInteractor()
    var cell = FilmeCollectionViewCell()
    
    func listaDeFilmes() -> Int {
        interactor.numberMovies()
    }
    

}
