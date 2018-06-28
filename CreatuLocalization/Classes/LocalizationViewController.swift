//
//  MirroringViewController.swift
//  Creatu

//  Created by Mohan on 6/27/18.
//  Copyright © 2018 Mohan. All rights reserved.
//

import UIKit

extension UIViewController {
    func loopThroughSubViewAndFlipTheImageIfItsAUIImageView(subviews: [UIView]) {
        if subviews.count > 0 {
            for subView in subviews {
                if (subView is UIImageView) && subView.tag < 0 {
                    let toRightArrow = subView as! UIImageView
                    if let _img = toRightArrow.image {
                        toRightArrow.image = UIImage(cgImage: _img.cgImage!, scale:_img.scale , orientation: UIImageOrientation.upMirrored)
                    }
                }
                loopThroughSubViewAndFlipTheImageIfItsAUIImageView(subviews: subView.subviews)
            }
        }
    }
}

open class LocalizationViewController: UIViewController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        Localization.startLocalization()
        if CreatuLanguage.isRTLLanguage {
            loopThroughSubViewAndFlipTheImageIfItsAUIImageView(subviews: self.view.subviews)
        }
    }

    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

}
