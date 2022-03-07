//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Юлия on 07.03.2022.
//

import Foundation
import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var userPhoto: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userBirthday: UILabel!
    
    @IBOutlet weak var userCity: UILabel!
    
    @IBOutlet weak var userText: UITextView!

    let nibName = "ProfileView"
    var contentView: UIView?
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
    }
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}

/*
    override init(frame: CGRect){
        super.init(frame: frame)
        self.setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()
    }
    private func setupView() {
        let view = self.loadViewFromXib()
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
    }
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? UIView else { return UIView() }
        return view
    }
}
*/
