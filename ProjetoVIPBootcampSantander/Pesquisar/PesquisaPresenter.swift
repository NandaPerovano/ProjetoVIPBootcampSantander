//
//  PesquisaPresenter.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import Foundation

class PesquisaPresenter {

    var interactor = PesquisaInteractor()
    var cell = PesquisaFilmeCollectionViewCell()

    func listaDeFilmes() -> Int {
        interactor.numberMoviesList()
    }
}
