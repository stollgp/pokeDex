//
//  PokemonDetailVC.swift
//  pokeDex
//
//  Created by Gary Stoll on 1/18/16.
//  Copyright © 2016 StollenSoft. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexIDLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var baseAttackLabel: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLabel: UILabel!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
        
        let img = UIImage(named: "\(pokemon.pokeDexId)")
        
        mainImg.image = img
        currentEvoImg.image = img
        
        
        
        pokemon.downloadPokemonDetails { () -> () in
            //this will be called after download is done, so update everything that needs to be downloaded here
            self.updateUI()
        }
    }
    
    func updateUI() {
        descriptionLabel.text = pokemon.description
        typeLabel.text = pokemon.type
        defenseLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        pokedexIDLabel.text = "\(pokemon.pokeDexId)"
        weightLabel.text = pokemon.weight
        baseAttackLabel.text = pokemon.attack
        
        if pokemon.nextEvolutionId == "" {
            evoLabel.text = "No evolutions"
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            var str = "Next Evolution: \(pokemon.nextEvolutionText)"
            
            if pokemon.nextEvolutionLevel != "" {
                str += " - LVL \(pokemon.nextEvolutionLevel)"
            }
        }
        
        
    }

    @IBAction func backButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
