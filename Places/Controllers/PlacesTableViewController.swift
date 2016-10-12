//
//  PlacesTableViewController.swift
//  Places
//
//  Created by Ludovic Ollagnier on 12/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let notCenter = NotificationCenter.default

        notCenter.addObserver(forName: Notification.Name("modelUpdated"), object: nil, queue: OperationQueue.main) { (notif) in
            self.tableView.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Directory.instance.allPlaces.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)
        // let cell2 = tableView.dequeueReusableCell(withIdentifier: "placeCell") Vieille façon, ne plus utiliser !!!!

        let place = Directory.instance.allPlaces[indexPath.row]

        cell.textLabel?.text = place.name
        cell.detailTextLabel?.text = "Note : \(place.note), basé sur \(place.numberOfReviews) reviews"

        //Attention aux problèmes de recyclage de cell !!
        /* if place.source == .internet {
            cell.backgroundColor = UIColor.green
        }*/
        
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination
        // Pass the selected object to the new view controller.
        if segue.identifier == "showDetails" {

            guard let cell = sender as? UITableViewCell else { return }
            guard let indexPath = tableView.indexPath(for: cell) else { return }
            guard let destination = segue.destination as? DetailViewController else { return }

            let selectedPlace = Directory.instance.allPlaces[indexPath.row]
            destination.currentPlace = selectedPlace
        }
    }
}
