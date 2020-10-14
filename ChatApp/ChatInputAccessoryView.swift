//
//  ChatInputAccessaryView.swift
//  ChatApp
//
//  Created by 古田翔太郎 on 2020/10/14.
//  Copyright © 2020 古田翔太郎. All rights reserved.
//

import UIKit

class ChatInputAccessoryView: UIView {

    @IBOutlet weak var chatTextView: UITextView!
    @IBOutlet weak var sendButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        nibInit()
        setupViews()
        autoresizingMask = .flexibleHeight
    }
    
    private func setupViews() {
        chatTextView.layer.cornerRadius = 15
        //境界線を無くしたい．↓
        //chatTextView.layer.borderColor = UIColor.rbg(red: 230, green: 230, blue: 230)
        
        sendButton.layer.cornerRadius = 15
        sendButton.imageView?.contentMode = .scaleAspectFill
        sendButton.contentHorizontalAlignment = .fill
        sendButton.contentVerticalAlignment = .fill
        sendButton.isEnabled = true
        
    }
    
    override var intrinsicContentSize: CGSize {
        return .zero
    }
    
    private func nibInit(){
        let nib = UINib(nibName: "ChatInputAccessoryView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(view)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
