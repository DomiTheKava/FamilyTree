//
//  ViewController.swift
//  FamilyTree
//
//  Created by Dominik Penkava on 10/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    var passName: String?
    var passDesc: String?
    var passImg: String?
    var passUrl: String?
    
    class ImageTapGestureRecognizer: UITapGestureRecognizer {
        var breed: String?
        var imageURL: String?
        var imageDescription: String?
        var imgString: String?
    }
    
    var string: String = "Test passed string"
    
    var screen_width: CGFloat?
    var screen_height: CGFloat?
    var screen_center: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize
        screen_width = view.frame.width
        screen_height = view.frame.height
        screen_center = (screen_width ?? 0) / 2

        // call functions
        drawView()

    }
    
    @IBAction func btn1(_ sender: Any) {
        performSegue(withIdentifier: "info", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as?  SecondVC {
            
            // send data to view
            destination.passedDesc = passDesc
            destination.passedName = passName
            destination.passedUrl = passUrl
            destination.passedImg = passImg
            
        }

    }
    
    // MARK: Data and displaying
    func drawView() {
        let capuchin = ImageDataHolder(image: addImg(imgName: "capuchin", location: CGPoint(x: screen_center! - 50, y: (screen_height! * 0.75)), name: "Capuchin Monkey", description: "Capuchin monkey, (genus Cebus), common Central and South American primate found in tropical forests from Nicaragua to Paraguay. Capuchins, considered among the most intelligent of the New World monkeys, are named for their “caps” of hair, which resemble the cowls of Capuchin monks. These monkeys are round-headed and stockily built, with fully haired prehensile tails and opposable thumbs. The body is 30–55 cm (12–22 inches) long, with a tail of about the same length. Coloration ranges from pale to dark brown or black, with white facial markings in some of the four species.", url: "https://www.britannica.com/animal/capuchin-monkey"))
        
        let howler = ImageDataHolder(image: addImg(imgName: "howler", location: CGPoint(x: screen_center! - 120, y: (screen_height! * 0.60)), name: "Howler Monkey", description: "Howler monkey, (genus Alouatta), any of several tropical American monkeys noted for their roaring cries. Several species of howlers are widely distributed through Central and South America. These are the largest New World monkeys and generally attain lengths of about 40–70 cm (16–28 inches), excluding the 50–75-cm (20–30-inch) tail. Howlers are stoutly built bearded monkeys with a hunched appearance and thickly furred prehensile tails that are naked on the underside of the tip to afford a better grip. The hair is long and thick and, depending on species, is typically black, brown, or red. Howlers are characterized by expansion of the hyoid bone into a large shell-like organ in the throat that gives resonance to the voice. In connection with the enlarged hyoid, howlers have a large throat, protruding jaws, and high sloping faces.", url: "https://www.britannica.com/animal/howler-monkey"))
        
        drawLine(from: capuchin.image.center, to: howler.image.center)
        
        let spider = ImageDataHolder(image: addImg(imgName: "spider", location: CGPoint(x: screen_center! + 20, y: (screen_height! * 0.60)), name: "Spider Monkey", description: "Spider monkey, (genus Ateles), large, extremely agile monkey that lives in forests from southern Mexico through Central and South America to Brazil. In spite of its thumbless hands, this lanky potbellied primate can move swiftly through the trees, using its long tail as a fifth limb. The seven species of true spider monkeys are classified in the genus Ateles. The woolly spider monkey, or muriqui, which is a close relative but not a true spider monkey, is placed in the genus Brachyteles. Spider monkeys weigh about 6 kg (13.2 pounds) and are 35–66 cm (14–26 inches) long.", url: "https://www.britannica.com/animal/spider-monkey"))
        
        drawLine(from: capuchin.image.center, to: spider.image.center)
        
        let baboon = ImageDataHolder(image: addImg(imgName: "baboon", location: CGPoint(x: screen_center! - 120, y: (screen_height! * 0.45)), name: "Baboon", description: "Baboon, (genus Papio), any of five species of large, robust, and primarily terrrestrial monkeys found in dry regions of Africa and Arabia. Males of the largest species, the chacma baboon (Papio ursinus), average 30 kg (66 pounds) or so, but females are only half this size. The smallest is the hamadryas, or sacred baboon (P. hamadryas), with males weighing about 17 kg and females only 10, but this still places them among the largest monkeys. Baboons range from 50 to 115 cm (20–45 inches) long, not including the 45–70-cm tail, which is carried in a characteristic arch. All species have long snouts with the nostrils located at the end; male baboons have long daggerlike canine teeth.", url: "https://www.britannica.com/animal/baboon"))
        
        drawLine(from: howler.image.center, to: baboon.image.center)
        
        let chimp = ImageDataHolder(image: addImg(imgName: "chimp", location: CGPoint(x: screen_center! + 20, y: (screen_height! * 0.45)), name: "Chimp", description: "Chimpanzee, (Pan troglodytes), species of ape that, along with the bonobo, is most closely related to humans. Chimpanzees inhabit tropical forests and savannas of equatorial Africa from Senegal in the west to Lake Albert and northwestern Tanzania in the east. Individuals vary considerably in size and appearance, but chimpanzees stand approximately 1–1.7 metres (3–5.5 feet) tall when erect and weigh about 32–60 kg (70–130 pounds). Males tend to be larger and more robust than females. Chimpanzees are covered by a coat of brown or black hair, but their faces are bare except for a short white beard. Skin colour is ...(100 of 1744 words)", url: "https://www.britannica.com/animal/chimpanzee"))
        
        drawLine(from: spider.image.center, to: chimp.image.center)

        let gorilla = ImageDataHolder(image: addImg(imgName: "gorilla", location: CGPoint(x: screen_center! - 170, y: (screen_height! * 0.30)), name: "Gorilla", description: "Gorilla, (genus Gorilla), genus of primates containing the largest of the apes. The gorilla is one of the closest living relatives to humans; both groups last shared a common ancestor about 10 million years ago. Only the chimpanzee and the bonobo are closer. Gorillas live only in tropical forests of equatorial Africa. Most authorities recognize two species and four subspecies. The western gorilla (Gorilla gorilla) is made up of two subspecies: the western lowland gorilla (G. gorilla gorilla), which inhabits the lowland rainforests from Cameroon to the Congo River, and the Cross River gorilla (G. gorilla diehli), which inhabits a ...(100 of 1427 words)", url: "https://www.britannica.com/animal/gorilla"))
        
        let orangutan = ImageDataHolder(image: addImg(imgName: "orange", location: CGPoint(x: screen_center! - 50, y: (screen_height! * 0.30)), name: "Orangutan", description: "Orangutan, (genus Pongo), any of three species of Asian great apes found in rainforests on the Southeast Asian islands of Sumatra and Borneo. The Bornean orangutan (Pongo pygmaeus) inhabits large portions of Borneo, whereas the Sumatran orangutan (P. abelii) and the Tapanuli orangutan (P. tapanuliensis) are limited to northern Sumatra. Orangutans possess cognitive abilities comparable to those of the gorilla and the chimpanzee, which are the only primates more closely related to humans.", url: "https://www.britannica.com/animal/orangutan"))
        
        let gibbon = ImageDataHolder(image: addImg(imgName: "gibbon", location: CGPoint(x: screen_center! + 70, y: (screen_height! * 0.30)), name: "Siamang", description: "Siamang, (Symphalangus syndactylus), arboreal ape of the gibbon family (Hylobatidae), found in the forests of Sumatra and Malaya. The siamang resembles other gibbons but is more robust. The siamang is also distinguished by the webbing between its second and third toes and by a dilatable hairless air sac in its throat. The air sac is used in producing a resonant, booming call. The siamang is about 50–55 centimetres in head and body length. Its shaggy fur is completely black. Like the gibbon, the siamang is diurnal and arboreal and moves by brachiation, progressing from one point to another by swinging ...(100 of 156 words)", url: "https://www.britannica.com/animal/gibbon"))
        
        drawLine(from: chimp.image.center, to: gorilla.image.center)
        drawLine(from: chimp.image.center, to: orangutan.image.center)
        drawLine(from: chimp.image.center, to: gibbon.image.center)
        
        view.addSubview(capuchin.image)
        view.addSubview(howler.image)
        view.addSubview(spider.image)
        view.addSubview(baboon.image)
        view.addSubview(chimp.image)
        view.addSubview(gorilla.image)
        view.addSubview(orangutan.image)
        view.addSubview(gibbon.image)
    }
    

    
    @objc func imageTapped(_ sender: ImageTapGestureRecognizer) {
        
        if let name = sender.breed, let desc = sender.imageDescription, let url = sender.imageURL, let img = sender.imgString {
            // set data to send
            passUrl = url
            passDesc = desc
            passName = name
            passImg = img
            
        }
        
        performSegue(withIdentifier: "info", sender: self)
    }

    
    
    func addImg(imgName: String, location: CGPoint, name: String, description: String, url: String) -> UIImageView {
        // init
        let imgV = UIImageView(image: UIImage(named: imgName))
        imgV.frame = CGRect(x: location.x, y: location.y, width: 100, height: 100)
        imgV.contentMode = .scaleAspectFit
        
        // touch detection
        imgV.isUserInteractionEnabled = true
        let tapGesture = ImageTapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
        
        // data storage
        tapGesture.imageDescription = description
        tapGesture.imageURL = url
        tapGesture.breed = name
        tapGesture.imgString = imgName
        
        imgV.addGestureRecognizer(tapGesture)
        
        return imgV
    }
    
    
    
    func drawLine(from startPoint: CGPoint, to endPoint: CGPoint) {
        let path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: endPoint)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 5.0
        
        view.layer.addSublayer(shapeLayer)
        
    }

}

