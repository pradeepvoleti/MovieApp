//
//  HomeViewController.swift
//  MovieApp
//
//  Created by Pradeep Voleti on 11/01/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//UIColor(red: 0.078, green: 0.11, blue: 0.145, alpha: 0.1).cgColor
        

        configureView()
        tableView.register(UINib(nibName: String(describing: StaffPickCell.self), bundle: nil), forCellReuseIdentifier: Constants.CellId.staffPickCell.rawValue)
        tableView.rowHeight = 100//UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
    }
    
    @IBAction func searchTapped() {
        performSegue(withIdentifier: Constants.Segue.searchSegue.rawValue, sender: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

private extension HomeViewController {
    func configureView() {
        searchButton.backgroundColor = .white
        searchButton.tintColor = UIColor.black.withAlphaComponent(0.6)
        searchButton.layer.cornerRadius = 12
        searchButton.layer.masksToBounds = false
        searchButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        searchButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        searchButton.layer.shadowOpacity = 0.5
        searchButton.layer.shadowRadius = 30
        
        let shadowSize : CGFloat = 2.0
        let rect = CGRect(x: -shadowSize / 2, y: -shadowSize / 2, width: searchButton.frame.size.width + shadowSize * 3, height: searchButton.frame.size.height + shadowSize * 3)
        let shadowPath = UIBezierPath(rect: rect)
        searchButton.layer.shadowPath = shadowPath.cgPath
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellId.staffPickCell.rawValue, for: indexPath) as? StaffPickCell else {
            return UITableViewCell()
        }
        return cell
    }
    
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
}
