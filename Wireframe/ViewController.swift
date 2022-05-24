//
//  ViewController.swift
//  Wireframe
//
//  Created by Joy Marie on 5/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    var isPlaying: Bool = true {
        didSet {
            playPauseButton.isSelected = isPlaying
        }
    }

    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var reverseBackground: UIView!
    @IBOutlet var playPauseBackground: UIView!
    @IBOutlet var forwardBackground: UIView!
    @IBOutlet var reverseButton: UIButton!
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var forwardButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [reverseBackground, playPauseBackground, forwardBackground].forEach {
            view in
            view?.layer.cornerRadius = view!.frame.height / 2
            view?.clipsToBounds = true
            view?.alpha = 0.0
        }
       
        reverseBackground.layer.cornerRadius = reverseBackground.frame.height / 2
        reverseBackground.clipsToBounds = true
        playPauseBackground.layer.cornerRadius = playPauseBackground.frame.height / 2
        playPauseBackground.clipsToBounds = true
        forwardBackground.layer.cornerRadius = forwardBackground.frame.height / 2
        forwardBackground.clipsToBounds = true
    }
}

