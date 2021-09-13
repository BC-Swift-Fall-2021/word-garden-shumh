//
//  ViewController.swift
//  WordGarden
//
//  Created by Richard Shum on 9/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsInGameLabel: UILabel!
    
    @IBOutlet weak var wordsBeingRevealedLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var gameStatusMessageLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    func updateUIAfterGuess () {
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
        guessLetterButton.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessedLetterField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }


    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterFieldChange(_ sender: UITextField) {
        var text = guessedLetterField.text!
        if let lastChar = text.last {
            text = String(lastChar)
        } else {
            text = ""
        }
        guessedLetterField.text = text
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
}

