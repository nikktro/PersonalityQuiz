//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Nikolay Trofimov on 05.02.2022.
//

import UIKit

class QuestionsViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet var rangedSlider: UISlider!
    
    // MARK: Private Properties
    private let questions = Question.getQuestions()
    
}
