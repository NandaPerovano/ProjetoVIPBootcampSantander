//
//  DetalhesFilmeScreen.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit
import SnapKit

class DetalhesFilmeScreen: UIView {
    
    lazy var movieImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        return image
    }()
    
    lazy var sumaryLabel: UILabel = {
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
        configMovieImageViewConstraints()
        configSumaryLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: SETUP UI CONSTRAINTS
    private func addElements() {
        self.addSubview(movieImageView)
        self.addSubview(sumaryLabel)
    }
    
    
    func configMovieImageViewConstraints() {
        self.movieImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(60)
            make.leading.equalToSuperview().offset(100)
            make.trailing.equalToSuperview().inset(100)
            make.height.equalTo(300)
        }
    }
    
    func configSumaryLabelConstraints() {
        self.sumaryLabel.snp.makeConstraints { make in
            make.top.equalTo(self.movieImageView.snp.top).offset(40)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview()
        }
        
    }
    
    
    
    
    
    
    
    
}
