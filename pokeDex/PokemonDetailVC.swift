//
//  PokemonDetailVC.swift
//  pokeDex
//
//  Created by Gary Stoll on 1/18/16.
//  Copyright © 2016 StollenSoft. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
    }



}
