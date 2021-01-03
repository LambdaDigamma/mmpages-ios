//
//  PageViewController.swift
//  
//
//  Created by Lennart Fischer on 02.01.21.
//

#if canImport(UIKit)

import UIKit
import MMCommon

public class PageViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupBarButtonItems()
        self.setupUI()
        
    }
    
    private func setupUI() {
        
        self.addSubSwiftUIView(PageView(), to: view)
        
    }
    
    private func setupBarButtonItems() {
        
        let shareButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "square.and.arrow.up"),
            style: .plain,
            target: self,
            action: #selector(showSharesheet)
        )
        
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.rightBarButtonItems = [
            shareButtonItem
        ]
        
    }
    
    @objc private func showSharesheet() {
        
        // TODO: Change URL here
        
        let items = [URL(string: "https://www.apple.com")!]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
        
    }
    
}

#endif
