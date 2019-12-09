//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Thomas Cacciatore on 12/9/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

    }
    
    func updateViews() {
        if let word = vocabWord {
            wordLabel.text = word.word
            definitionTextView.text = word.definition
        }
    }
}
