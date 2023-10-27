//
//  MovieDetailViewController.swift
//  TableViewApp
//
//  Created by Артур Олехно on 27/10/2023.
//

import UIKit
import WebKit

class MovieDetailViewController: UIViewController {
    
    var movie: Movie?

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let mainMovie = movie {
            guard let url = URL(string: mainMovie.movieTrailerUrls) else {
                return
            }
            webView.load(URLRequest(url: url))
            titleLabel.text = mainMovie.movieTitles
            descriptionLabel.text = mainMovie.descriptions
            imageView.image = UIImage(named: mainMovie.imageNames)
        }
        // Do any additional setup after loading the view.
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
