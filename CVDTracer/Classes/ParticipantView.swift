//
//  ParticipantView.swift
//  CVDTracer
//
//  Created by Segundo Fariña on 29/08/2020.
//

import Foundation
import UIKit

class ParticipantView: UICollectionViewCell {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var avatarView: UIView!
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var initialsView: UILabel!
    
    private var firstName: String = ""
    private var lastName: String = ""
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    
    private func setUp() {
        loadNib()
        self.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.containerView.topAnchor.constraint(equalTo: self.topAnchor),
            self.containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        setUpAvatar()
        
    }
    
    private func loadNib() {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("ParticipantView", owner: self, options: nil)
    }
    
    private func setUpAvatar() {
        avatarView.layer.cornerRadius = 35
    }
    
    public func setName(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        nameView.text = firstName
        initialsView.text = "SF"
    }
    
}
