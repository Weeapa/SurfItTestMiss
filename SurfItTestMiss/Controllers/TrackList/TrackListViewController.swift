//
//  TrackListViewController.swift
//  SurfItTestMiss
//
//  Created by Калякин Дима  on 06.09.2023.
//

import Foundation
import UIKit

final class TrackListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    var tracks: [Track] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let track1 = Track(title: "IceBaby", artist: "Guf", durations: 180.0, metadata: nil)
        let track2 = Track(title: "Original Ba", artist: "Guf", durations: 190.0, metadata: nil)
        tracks = [track1,track2]
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath)
        
        let track = tracks[indexPath.row]
        
        cell.textLabel?.text = track.title
        cell.detailTextLabel?.text = track.artist
        
        return cell
    }
    
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let selectedTrack = tracks[indexPath.row]
    }
    
}
