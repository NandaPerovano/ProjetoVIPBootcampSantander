//
//  PesquisaFilmeCollectionViewCell.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit

class PesquisaFilmeCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "PesquisaFilmeCollectionViewCell"
    
    private var screen: PesquisaFimeCollectionViewCellScreen = PesquisaFimeCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
        
        //screen.pin(to: contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func customCell(nome: String) {
        screen.movieLabel.text = nome
    }
    
}
