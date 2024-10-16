//
//  ViewController.swift
//  FamilyTree
//
//  Created by Dominik Penkava on 10/15/24.
//

import UIKit

class SecondVC: UIViewController {
    
    var imgString: String?
    
    var passedName: String?
    var passedDesc: String?
    var passedImg: String?
    var passedUrl: String?
    
    var screen_width: CGFloat?
    var screen_height: CGFloat?
    var screen_center: CGFloat?

    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var imageHolder: UIImageView!
    @IBOutlet weak var pageDesc: UITextView!
    @IBOutlet weak var imgUrl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize
        screen_width = view.frame.width
        screen_height = view.frame.height
        screen_center = (screen_width ?? 0) / 2
        
        addViews()
    }
    
 
    
    func addViews() {
        
        imageHolder.image = UIImage(named: passedImg ?? "nil")
        pageTitle.text = passedName
        imgUrl.text = passedUrl
        pageDesc.text = passedDesc
        
        
        // before i realised theres a easier way \/
        
//        let img: UIImageView = {
//            let img = UIImageView(image: UIImage(named: passedImg ?? "nil"))
//            
//            img.frame = CGRect(x: screen_center! - 200, y:  screen_height! * 0.5 - 200, width: 400, height: 400)
//            img.contentMode = .scaleAspectFit
//            return img
//        }()
        
//        let title: UILabel = {
//            let txt = UILabel()
//            txt.text = passedName
//            txt.textColor = .black
//            txt.frame = CGRect(x: screen_center! - 50, y: screen_height! * 0.1 - 10, width: 100, height: 20)
//            txt.textAlignment = .center
//            return txt
//        }()
        
//        view.addSubview(title)
//        view.addSubview(img)
    }

}

