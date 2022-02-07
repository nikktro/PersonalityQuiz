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
    var answers: [Answer]!
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    // MARK: Private Methods
    private func updateResult() {
        var frequencyOfAnimals: [Animal: Int] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }

        guard let mostFrequentAnimal = frequencyOfAnimals
                .max(by: { $0.value < $1.value })?.key else { return }
        
        UpdateUI(with: mostFrequentAnimal)
    }
    
    private func UpdateUI(with animal: Animal) {
        animalLabel.text = "Вы - \(animal.rawValue)"
        animalDescriptionLabel.text = animal.definition
    }
}
