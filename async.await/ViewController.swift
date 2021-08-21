//
//  ViewController.swift
//  async.await
//
//  Created by 김승진 on 2021/08/22.
//

import UIKit

class CustomImageView: UIImageView {
    override var image: UIImage? {
        didSet {
            
        }
    }
}

class ViewController: UIViewController {
    private let a = ""
    @IBOutlet weak var imageView: CustomImageView!
    let viewModel = ImageViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            do {
                let image = try await viewModel.fetchImage(with: "https://images.unsplash.com/photo-1629491011862-af5720ac882a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")

                imageView.image = image
            } catch {

            }
        }
    }
}


