//
//  FilmeCollectionViewCell.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit

class FilmeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var movieName: UILabel!
    
    static let identifier: String = "FilmeCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func customCell(nome: String) {
        movieName.text = nome
    }
}
