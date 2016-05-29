//
//  PostCell.swift
//  devapp-showcase
//
//  Created by Bartosz Odrzywołek on 29/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var showcaseImg: UIImageView!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var likesLbl: UILabel!
    
    var post: Post!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImg.layer.cornerRadius = profileImg.frame.size.width / 2
        profileImg.clipsToBounds = true
        showcaseImg.clipsToBounds = true
        
    }

    override func drawRect(rect: CGRect) {
        
        

    }
    
    func configureCell(post: Post) {
        self.post = post
        self.descriptionText.text = post.postDescription
        self.likesLbl.text = "\(post.likes) likes"
        
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
