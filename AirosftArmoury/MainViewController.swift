//
//  MainViewController.swift
//  AirosftArmoury
//

import UIKit

class MainViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  
  var contents: [String] = [];
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
    
    tableView.register(UINib(nibName: "MainPhotoTabelViewCell", bundle: nil),
                       forCellReuseIdentifier: "MainPhoto")
  }
}

extension MainViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return contents.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MainPhotoTabelViewCell", for: indexPath)
    return cell
  }
}

extension MainViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
