import UIKit

protocol SetupViewControllerDelegate {
    func updateBGcolor(redColor2 valueRed: Float,
                       greenColor2 valueGreen: Float,
                       blueColor2 valueBlue: Float)
}

class SetupViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var rgbView: UIView!
    
    var redColorValue: Float = 0.0
    var greenColorValue: Float = 0.0
    var blueColorValue: Float = 0.0
    
    var delegate: SetupViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      Sliders
        redSlider.value = redColorValue
        redSlider.minimumTrackTintColor = .red
        
        blueSlider.value = blueColorValue
        blueSlider.minimumTrackTintColor = .blue
        
        greenSlider.value = greenColorValue
        greenSlider.minimumTrackTintColor = .green

//      View
        rgbView.layer.cornerRadius = 10
        rgbView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: CGFloat(1.0))
        
        
        
    }
    
    @IBAction func DoneButtonPresed() {
        delegate.updateBGcolor(redColor2: redColorValue,
                               greenColor2: greenColorValue,
                               blueColor2: blueColorValue)
        dismiss(animated: true)
//        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func redSliderAction() {
        redColorValue = redSlider.value
        redValue.text = String(format:"%.2f", redSlider.value)
        changeViewBackground()
    }
    
    @IBAction func greenSliderAction() {
        greenColorValue = greenSlider.value
        greenValue.text = String(format:"%.2f", greenSlider.value)
        changeViewBackground()
    }
    
    @IBAction func blueSliderAction() {
        blueColorValue = blueSlider.value
        blueValue.text = String(format:"%.2f", blueSlider.value)
        changeViewBackground()
    }
        
    func changeViewBackground() {
        rgbView.backgroundColor = UIColor.init(red: CGFloat(redColorValue),
                                               green: CGFloat(greenColorValue),
                                               blue: CGFloat(blueColorValue),
                                               alpha: CGFloat(1.0))

    }
}

