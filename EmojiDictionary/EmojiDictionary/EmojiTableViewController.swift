import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis: [Emoji] = [
        Emoji(symbol: "😀", name: "Teeth", description: "Happy", usage: "happiness"),
        Emoji(symbol: "😕", name: "Confused Face", description: "Confused", usage: "unsure what to think; displeasure"),
        Emoji(symbol: "😍", name: "Heart Eyes", description: "Feeling loved", usage: "love of something; attractive"),
        Emoji(symbol: "🧑‍💻", name: "Person", description: "Using PC", usage: "apps, software, programming"),
        Emoji(symbol: "🐢", name: "Turtle", description: "Turtle", usage: "something slow"),
        Emoji(symbol: "🐘", name: "Elephant", description: "Elephant ", usage: "good memory"),
        Emoji(symbol: "🍝", name: "Spaghetti", description: "1 Plate.", usage: "spaghetti"),
        Emoji(symbol: "🎲", name: "Die", description: "Dice", usage: "taking a risk, chance; game"),
        Emoji(symbol: "⛺️", name: "Tent", description: "Tent", usage: "camping"),
        Emoji(symbol: "📚", name: "Three Books", description: "Books in a stack", usage: "homework, studying"),
        Emoji(symbol: "💔", name: "Broken Heart", description: "Broken Heart", usage: "extreme sadness"),
        Emoji(symbol: "💤", name: "ZZZ", description: "Good Night", usage: "tired, sleepiness"),
        Emoji(symbol: "🏁", name: "Flag", description: "Race Flag", usage: "completion")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
        
        tableView.cellLayoutMarginsFollowReadableWidth = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return emojis.count
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)


        let emoji = emojis[indexPath.row]

        
        var content = cell.defaultContentConfiguration()
        content.text = "\(emoji.symbol) - \(emoji.name)"
        content.secondaryText = emoji.description
        cell.contentConfiguration = content
        
        cell.showsReorderControl = true

        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        print("\(emoji.symbol) \(indexPath)")
    }

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }

    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedEmoji = emojis.remove(at: fromIndexPath.row)
        emojis.insert(movedEmoji, at: to.row)
    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
}
