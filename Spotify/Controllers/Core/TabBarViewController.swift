//
//  TabBarViewController.swift
//  Spotify
//
//  Created by Alexandru Meta on 18.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstViewController = HomeViewController()
        let secondViewController = SearchViewController()
        let thirdViewController = LibraryViewController()
        
        firstViewController.title = "Browse"
        secondViewController.title = "Search"
        thirdViewController.title = "Library"
        
        
        firstViewController.navigationItem.largeTitleDisplayMode = .always
        secondViewController.navigationItem.largeTitleDisplayMode = .always
        thirdViewController.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: firstViewController)
        let nav2 = UINavigationController(rootViewController: secondViewController)
        let nav3 = UINavigationController(rootViewController: thirdViewController)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
