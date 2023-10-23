//
//  PesquisaFilmeScreen.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit

class PesquisaFilmeScreen: UIView {

    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.placeholder = "Pesquisar"
        return searchBar
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        cv.register(PesquisaFilmeCollectionViewCell.self, forCellWithReuseIdentifier: PesquisaFilmeCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
    }()
    
    public func configProtocolsCollectionViewESearchBar(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource, delegateSearchBar: UISearchBarDelegate) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
        searchBar.delegate = delegateSearchBar
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: SETUP UI CONSTRAINTS
    private func addElements() {
        self.addSubview(searchBar)
        self.addSubview(collectionView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            searchBar.heightAnchor.constraint(equalToConstant: 44),
            
            collectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

}
