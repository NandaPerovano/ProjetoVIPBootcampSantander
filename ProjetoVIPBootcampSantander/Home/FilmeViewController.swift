//
//  ViewController.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit


class FilmeViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!

    var presenter = FilmePresenter()
    private var movies = MovieService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        //collectionView.register(FilmeCollectionViewCell.nib(), forCellWithReuseIdentifier: FilmeCollectionViewCell.identifier)
        collectionView.register(FilmeCollectionViewCell.nib(), forCellWithReuseIdentifier: FilmeCollectionViewCell.identifier)
    }
}


extension FilmeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.listaDeFilmes()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FilmeCollectionViewCell.identifier, for: indexPath) as? FilmeCollectionViewCell
        let filme = presenter.interactor.getCellViewModelList(posicao: indexPath.row)
        cell?.customCell(nome: filme.name)
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = DetalhesFilmeViewController()
        present(vc, animated: true, completion: nil)
        let selectedMovie = movies.movieList[indexPath.row]
        vc.movieCustomCell(imagem: selectedMovie.photo, resumo: selectedMovie.sumary)
    }
}

