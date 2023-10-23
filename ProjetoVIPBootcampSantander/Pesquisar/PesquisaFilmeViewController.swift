//
//  PesquisaFilmeViewController.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit

class PesquisaFilmeViewController: UIViewController {
    
    var pesquisaFilmeScreen: PesquisaFilmeScreen?
    var presenter = PesquisaPresenter()
    var movies = MovieService()
    var filtraFilme: [Movies] = []
    
    override func loadView() {
        pesquisaFilmeScreen = PesquisaFilmeScreen()
        view = pesquisaFilmeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        pesquisaFilmeScreen?.configProtocolsCollectionViewESearchBar(delegate: self, dataSource: self, delegateSearchBar: self)
        filtraFilme = movies.movieList
    }
}

extension PesquisaFilmeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.listaDeFilmes()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PesquisaFilmeCollectionViewCell.identifier, for: indexPath) as? PesquisaFilmeCollectionViewCell
        let filme = presenter.interactor.getCellViewModelList(posicao: indexPath.row)
        cell?.customCell(nome: filme.name)
        return cell ?? UICollectionViewCell()
    }
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = DetalhesFilmeViewController()
        present(vc, animated: true, completion: nil)
        let selectedMovie = movies.movieList[indexPath.row]
        vc.movieCustomCell(imagem: selectedMovie.photo, resumo: selectedMovie.sumary)
    }
}

extension PesquisaFilmeViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtraFilme = []
        
        if searchText == "" {
            filtraFilme = movies.movieList
        } else {
            for filme in movies.movieList {
                if filme.name.contains(searchText) {
                    filtraFilme.append(filme)
                }
            }
        }
        self.pesquisaFilmeScreen?.collectionView.reloadData()
    }
}





