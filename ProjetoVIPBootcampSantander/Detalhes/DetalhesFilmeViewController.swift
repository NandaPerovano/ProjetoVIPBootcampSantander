//
//  DetalhesFilmeViewController.swift
//  ProjetoVIPBootcampSantander
//
//  Created by Fernanda Perovano on 22/10/23.
//

import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    var detalhesFilmeScreen: DetalhesFilmeScreen?
    
    override func loadView() {
        detalhesFilmeScreen = DetalhesFilmeScreen()
        view = detalhesFilmeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
    
    // MARK: METHODS
    func movieCustomCell(imagem: UIImage?, resumo: String) {
        detalhesFilmeScreen?.movieImageView.image = imagem
        detalhesFilmeScreen?.sumaryLabel.text = resumo
    }
}
