//
//  SerHumanoTableViewCell.swift
//  tableViewAtoresEAtrizes
//
//  Created by Luís Santos on 12/05/22.
//

import UIKit

class SerHumanoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeSerHumanoLabel: UILabel!
    @IBOutlet weak var imagemSerHumano: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func customizarCelula(imagem: UIImage, nome: String) {
        imagemSerHumano.image = imagem
        nomeSerHumanoLabel.text = nome
    }
    
    func customizarCelula(serHumano: Humano) {
        imagemSerHumano.image = serHumano.imagem
        nomeSerHumanoLabel.text = serHumano.nome
    }
}
