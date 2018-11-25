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
    
    tableView.register(UINib(nibName: "MainPhotoTableViewCell", bundle: nil),
                       forCellReuseIdentifier: "MainPhoto")
    
    contents = ["", "", "", ""]
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "MainPhoto", for: indexPath)
      as! MainPhotoTableViewCell
    return cell
  }
}

extension MainViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    print("heightForRowAt")
    return 140.0
    return UITableView.automaticDimension
  }
  
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    print("estimatedHeightForRowAt")
    return 140.0
    return UITableView.automaticDimension
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
