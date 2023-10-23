//
//  PesquisaFimeCollectionViewCellScreen.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit

class PesquisaFimeCollectionViewCellScreen: UIView {

    lazy var movieLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont(name: "Roboto-Regular", size: 16)
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 10
        label.textAlignment = .justified
        return label
    }()
    
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
       self.addSubview(movieLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.movieLabel.topAnchor.constraint(equalTo: self.topAnchor),
            self.movieLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.movieLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.movieLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

}
