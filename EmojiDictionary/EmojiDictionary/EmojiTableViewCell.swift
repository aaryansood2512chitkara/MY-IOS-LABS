//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Student on 05/04/24.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        
        @IBOutlet weak var emojiDescription: UILabel!
        @IBOutlet weak var emojiName: UILabel!
        @IBOutlet weak var emojiSymbol: UILabel!
        
        super.awakeFromNib()

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        func update(emoji: EMOJI)
    }

}
