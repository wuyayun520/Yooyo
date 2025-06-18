
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let kStr_viewTargetTitle:String = "Launclet in else to cookie"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LayEnableTheLineThen.swift
//  FloraFlex
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: class NormalWaitingController: UIViewController {
class LayEnableTheLineThen: UIViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(kStr_viewTargetTitle.prefix(5)) + "hImage"))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
        //: bgImgV.snp.makeConstraints { make in
        bgImgV.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
