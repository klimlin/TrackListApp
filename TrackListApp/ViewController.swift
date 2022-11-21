//
//  ViewController.swift
//  TrackListApp
//
//  Created by MAcbook on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // ячейки будут прогружаться постепенно, при скроллинге, то есть все не хранятся, а потом просто переиспользуются
        cell.textLabel?.text = "Cell index: \(indexPath.row)"
        return cell
    }
    
    
}

