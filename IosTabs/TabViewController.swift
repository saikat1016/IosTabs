//
//  TabViewController.swift
//  IosTabs
//
//  Created by Flora PC on 22/7/19.
//  Copyright © 2019 Green Appers. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TabViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        loadDesign()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewController1")
        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewController2")
        let child_3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewController3")
        return [child_1, child_2, child_3]
    }
    
    func loadDesign() {
        self.settings.style.selectedBarHeight = 1
        self.settings.style.selectedBarBackgroundColor = UIColor.black
        self.settings.style.buttonBarBackgroundColor = .black
        self.settings.style.buttonBarItemBackgroundColor = .black
        self.settings.style.selectedBarBackgroundColor = . white
        self.settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 13)
        self.settings.style.selectedBarHeight = 4.0
        self.settings.style.buttonBarMinimumLineSpacing = 0
        self.settings.style.buttonBarItemTitleColor = .white
        self.settings.style.buttonBarItemsShouldFillAvailableWidth = true
        self.settings.style.buttonBarLeftContentInset = 0
        self.settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else {return}
            oldCell?.label.textColor = UIColor.white
            newCell?.label.textColor = UIColor.white
            
        }
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
