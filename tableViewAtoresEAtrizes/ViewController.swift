//
//  ViewController.swift
//  tableViewAtoresEAtrizes
//
//  Created by Luís Santos on 11/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewSerHumano: UITableView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let atrizes: [Humano] = [
        Humano(imagem: UIImage(named: "fernandaMontenegroImagem"), nome: "Fernanda Montenegro"),
        Humano(imagem: UIImage(named: "ellenPompeoImagem"), nome: "Ellen Pompeo"),
        Humano(imagem: UIImage(named: "cassiaKiss"), nome: "Cassia Kiss")
    ]
    
    let atores: [Humano] = [
        Humano(imagem: UIImage(named: "bradPittImagem"), nome: "Brad Pitt"),
        Humano(imagem: UIImage(named: "toniRamosImagem"), nome: "Toni Ramos"),
        
    
    ]
    
    var listaDePessoas: [Humano] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listaDePessoas = atrizes
        tableViewSerHumano.dataSource = self
    }
        
      
    @IBAction func mudouOSegmentedControl(_ sender: Any) {
   
        let index = segmentedControl.selectedSegmentIndex
        
        switch index {
        case 0 :
            listaDePessoas = atrizes
            tableViewSerHumano.reloadData()
        case 1:
            listaDePessoas = atores
            tableViewSerHumano.reloadData()
        default:
            break
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDePessoas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellHumano") as? SerHumanoTableViewCell {
            cell.customizarCelula(serHumano: listaDePessoas[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    
}
