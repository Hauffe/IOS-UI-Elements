//
//  ViewController.swift
//  UIExample_1
//
//  Created by Alex on 19/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let button = UIButton(type: .system)
//        button.frame = CGRect(x: 10, y: 100, width: 100, height: 100)
//        button.setTitle("My Button", for: .normal)
//        view.addSubview(button)
//
//        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    @IBAction func valueChange(_ sender: UISwitch) {
        label.text = sender.isOn ? "On" : "Off"
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        progressView.progress = sender.value
        if progressView.progress >= 1.0{
            activityIndicator.stopAnimating()
        }else {
            activityIndicator.startAnimating()
        }
    }
    
    @objc func buttonPressed(){
        print("button was pressed")
    }
      
    @IBAction func didPressButton(_ sender: Any) {
        //shere data
        
        let activityView =
            UIActivityViewController(activityItems: ["Data From this app"], applicationActivities: nil)
            present(activityView, animated: true, completion: nil)
        
        //Alert!
        let alertController = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            print("All done!")
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
}

