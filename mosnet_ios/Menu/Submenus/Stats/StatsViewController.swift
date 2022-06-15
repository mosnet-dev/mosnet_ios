//
//  StatsViewController.swift
//  mosnet_ios
//
//  Created by max on 30.05.2022.
//

import UIKit

class StatsViewController: UIViewController, UIGestureRecognizerDelegate {
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(StatsTableViewCell.self, forCellReuseIdentifier: StatsTableViewCell.identifier)
        return table
    }()
    
    lazy var subheader: UILabel = {
        let label = UILabel()
        label.text = "40/001"
        label.textColor = .systemGreen
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        configureNavBar()
        
        view.addSubview(subheader)
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        subheader.anchor(top: navigationController?.navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 30, paddingLeft: 20, paddingBottom: 0, paddingRight: 20, width: 0, height: 30)
        tableView.anchor(top: subheader.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: 0, height: 0)
    }
    
    private func configureNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = Constants.arrayOfMenuNames[3]
        let backButton =  UIBarButtonItem(image: UIImage(systemName: "house.fill"), style: .done, target: navigationController, action: #selector(UINavigationController.popToRootViewController(animated:)))
        backButton.tintColor = .systemBlue
        navigationItem.leftBarButtonItem = backButton
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
}


extension StatsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StatsTableViewCell.identifier, for: indexPath) as! StatsTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        180
    }
}
