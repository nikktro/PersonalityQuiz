//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Nikolay Trofimov on 05.02.2022.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var animalLabel: UILabel!
    @IBOutlet var animalDescriptionLabel: UILabel!
    
    // MARK: Properties
    var chosenAnswers: [Answer]!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        

    }
    
    // MARK: Private Methods
    private func findMostFrequentAnimal() -> Animal? {
        
        // TODO: add logic
        var results: [Animal: Int] = [:]
        for answer in chosenAnswers {
            
        }
        

        return results.max(by: { $0.value < $1.value })?.key
    }
    
    private func UpdateUI() {
        if let resultAnimal = findMostFrequentAnimal() {
            animalLabel.text = "Вы - \(resultAnimal.rawValue)"
            animalDescriptionLabel.text = resultAnimal.definition
        }
    }
}
