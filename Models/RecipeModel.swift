//
//  RecipeModel.swift
//  EOY App
//
//  Created by Varner, Sydney on 5/9/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case snack = "Snack"
    case main = "Main"
    case dessert = "Dessert"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
        name: "Chocolate Chip Cookies",
        image: "https://sallysbakingaddiction.com/wp-content/uploads/2013/05/chewy-chocolate-chip-cookies-2.jpg",
        description: "yum!",
        ingredients: """
        2 and 1/4 cups all-purpose flour (spooned & leveled)
        1 teaspoon baking soda
        1/2 teaspoon salt
        3/4 cup unsalted butter, melted & cooled 5 minutes
        3/4 cup packed light or dark brown sugar
        1/2 cup granulated sugar
        1 large egg + 1 egg yolk, at room temperature
        2 teaspoons pure vanilla extract
        1 and 1/4 cups semi-sweet chocolate chips or chocolate chunks
        """,
        directions: """
        1. Whisk the flour, baking soda, cornstarch, and salt together in a large bowl. Set aside.
        2. In a medium bowl, whisk the melted butter, brown sugar, and granulated sugar together until no brown sugar lumps remain. Whisk in the egg and egg yolk. Finally, whisk in the vanilla extract. The mixture will be thin. Pour into dry ingredients and mix together with a large spoon or rubber spatula. The dough will be very soft, thick, and appear greasy. Fold in the chocolate chips. The chocolate chips may not stick to the dough because of the melted butter, but do your best to combine them.
        3. Cover the dough tightly and chill in the refrigerator for at least 2–3 hours or up to 3 days. I highly recommend chilling the cookie dough overnight for less spreading.
        4. Take the dough out of the refrigerator and allow it to slightly soften at room temperature for 10 minutes.
        5. Preheat oven to 325°F (163°C). Line large baking sheets with parchment paper or silicone baking mats. Set aside.
        6. Using a cookie scoop or Tablespoon measuring spoon, measure 3 scant Tablespoons (about 2 ounces, or 60g) of dough for XL cookies or 2 heaping Tablespoons (about 1.75 ounces, or 50g) of dough for medium/large cookies. Roll into a ball, making sure the shape is taller rather than wide—almost like a cylinder. This helps the cookies bake up thicker. Repeat with remaining dough. Place 8–9 balls of dough onto each cookie sheet.
        7. Bake the cookies for 12–13 minutes or until the edges are very lightly browned. (XL cookies can take closer to 14 minutes.) The centers will look very soft, but the cookies will continue to set as they cool. Cool on the baking sheet for 10 minutes. Meanwhile, press a few extra chocolate chips into the tops of the warm cookies. This is optional and only for looks. After 10 minutes of cooling on the baking sheets, transfer cookies to a wire rack to cool completely.
        """,
        category: "Dessert",
        datePublished: "",
        url: "https://sallysbakingaddiction.com/chewy-chocolate-chip-cookies/"
        )
        
        ]
}
