//
//  ViewController.swift
//  UIExample_1
//
//  Created by Alex on 19/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        progressView.progress = sender.value
        if progressView.progress >= 1.0{
            activityIndicator.stopAnimating()
        }else {
            activityIndicator.startAnimating()
        }
    }
      
    @IBAction func didPressButton(_ sender: Any) {
                
        //shere data
        /*
        let activityView =
            UIActivityViewController(activityItems: ["Data From this app"], applicationActivities: nil)
            present(activityView, animated: true, completion: nil)
        */
        //Alert!
        /*let alertController = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            print("All done!")
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)*/
    }
}

