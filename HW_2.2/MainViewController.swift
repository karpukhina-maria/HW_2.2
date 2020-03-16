
import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! SetupViewController
        settingsVC.delegate = self
        settingsVC.redColorValue = Float(rgba.red)
        settingsVC.greenColorValue = Float(rgba.green)
        settingsVC.blueColorValue = Float(rgba.blue)
    }
    
 
}

extension MainViewController: SetupViewControllerDelegate {
    
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        view.backgroundColor?.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return (red, green, blue, alpha)
    }
    

    func updateBGcolor(redColor2 valueRed: Float,
                       greenColor2 valueGreen: Float,
                       blueColor2 valueBlue: Float) {

        view.backgroundColor = UIColor.init(red: CGFloat(valueRed),
                                               green: CGFloat(valueGreen),
                                               blue: CGFloat(valueBlue),
                                               alpha: CGFloat(1.0))

    }
    
    
    
}
