import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let buttonTitle = sender.currentTitle
        playSound(buttonTitle)
        
    }
    
    func playSound(_ string: String?) {
        guard let title = string else {
                    print("Button title is nill")
                    return
                }
        
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
