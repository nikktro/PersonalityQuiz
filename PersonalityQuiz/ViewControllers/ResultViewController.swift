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
        
        navigationItem.setHidesBackButton(true, animated: false)
        
        if let resultAnimal = findResultAnimal(for: chosenAnswers) {
            animalLabel.text = "Вы - \(resultAnimal.rawValue)"
            animalDescriptionLabel.text = resultAnimal.definition
        }
    }
    
    // MARK: Private Methods
    private func findResultAnimal(for: [Answer]) -> Animal? {
        var results: [Animal: Int] = [.dog: 0, .cat: 0, .rabbit: 0, .turtle: 0]
        
        for answer in chosenAnswers {
            switch answer.animal {
            case .dog:
                results[.dog]! += 1
            case .cat:
                results[.cat]! += 1
            case .rabbit:
                results[.rabbit]! += 1
            case .turtle:
                results[.turtle]! += 1
            }
        }
        return results.max(by: { $0.value < $1.value })?.key
    }
}
