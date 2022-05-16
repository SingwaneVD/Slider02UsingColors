//
//  ViewController.swift
//  Slider02UsingColors
//
//  Created by IACD-024 on 2022/05/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {

    
        let redV = CGFloat(redSlider.value)
        let greenV = CGFloat(greenSlider.value)
        let blueV = CGFloat(blueSlider.value)
        self.view.backgroundColor = UIColor(red: redV, green: greenV, blue: blueV, alpha: 1)
    }
    
    
    @IBAction func changeBackground(_ sender: Any) {

                let picker = UIColorPickerViewController()

                picker.selectedColor = self.view.backgroundColor!

                picker.delegate = self
        
                self.present(picker, animated: true, completion: nil)

            }

        }
        extension ViewController: UIColorPickerViewControllerDelegate {

            //  Called once you have finished picking the color.
            func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {

                self.view.backgroundColor = viewController.selectedColor

            }
            //  Called on every color selection done in the picker.
            func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {

                    self.view.backgroundColor = viewController.selectedColor

            }
    }
    
        
        
    
    
    


