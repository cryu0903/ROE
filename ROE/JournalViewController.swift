//
//  JournalViewController.swift
//  ROE
//
//  Created by Ana Huesa on 6/15/22.
//

import UIKit

class JournalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    @IBOutlet var label : UILabel!
    
    var models: [(title: String, note: String )] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self

        title = "Health Journal"

       
    }
    @IBAction func didTapNewNote(){
        
    }

    //Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        //show note controller
        
        guard let vc = storyboard?.instantiateViewController(identifier: "note")as? NoteViewController else{
            return
        }
        vc.title = "Note"
        navigationController?.pushViewController(vc, animated:true )
        }
    }

