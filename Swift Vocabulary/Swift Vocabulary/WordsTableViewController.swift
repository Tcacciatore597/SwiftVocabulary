//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Thomas Cacciatore on 12/9/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
                                        VocabularyWord(word: "Variable", definition: "a value that can change, depending on conditions or on information passed to the program"),
                                        VocabularyWord(word: "Constant", definition: "a value that cannot be altered by the program during normal execution"),
                                        VocabularyWord(word: "Function", definition: "a block of organized, reusable code that is used to perform a single, related action")
                                        ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController,
                let path = tableView.indexPathForSelectedRow {
                let vocabWord = vocabWords[path.row]
                definitionVC.vocabWord = vocabWord
            }
        }
    }

}
