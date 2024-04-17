import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let firstBreakfastFood = Food(name: "Eggs", description: "Omlette or Boilled as per your Preference")
        let secondBreakfastFood = Food(name: "Fruits", description: "Wash and Cut the fruits by dicing them")
        let thirdBreakfastFood = Food(name: "Momos", description: "Boil the momos and eat them with chutney")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
        
        let firstLunchFood = Food(name: "Pulses", description: "Cook them")
        let secondLunchFood = Food(name: "Cheese", description: "If you wanna consume Chilly cheese , Go ahead !")
        let thirdLunchFood = Food(name: "Apple", description: "An apple a day keeps the doctor away.")
        let lunch = Meal(name: "Lunch", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
        
        let firstDinnerFood = Food(name: "Salad", description: "Good nutrients intake")
        let secondDinnerFood = Food(name: "Potatoes", description: "Great addition to go along with carbohydrates.")
        let thirdDinnerFood = Food(name: "Rajma", description: "Good source of Protein")
        let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
        
        return [breakfast, lunch, dinner]
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        let food = meal.food
        
        return food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        

        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        
        return meal.name
    }
    
}
