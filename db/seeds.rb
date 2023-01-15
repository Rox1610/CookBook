require "open-uri"

puts 'Cleaning database...'
Recipe.destroy_all
Category.destroy_all
User.destroy_all

puts 'Creating users...'
user_1 = User.create(email: "rox@example.com", password: "123456")

puts 'Creating categories...'
category_0 = Category.create(name: "Déjeuner", photo: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/breakfast.jpg")
category_1 = Category.create(name: "Entrée/Soupe", photo: "https://get.pxhere.com/photo/dish-meal-food-produce-vegetable-seafood-fresh-fish-breakfast-gourmet-snack-meat-cuisine-delicious-cheese-cracker-dinner-canape-raw-salmon-starter-smoked-mozzarella-appetizer-canapes-bruschetta-hors-d-oeuvre-smoked-salmon-caprese-salad-pincho-1158999.jpg")
category_2 = Category.create(name: "Lunch", photo: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/lunch.jpg")
category_3 = Category.create(name: "Souper", photo: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/dinner.jpg")
category_4 = Category.create(name: "Dessert", photo: "https://get.pxhere.com/photo/table-view-dish-meal-food-carnival-cooking-breakfast-baking-dessert-cuisine-still-life-treats-exhibition-desserts-patisserie-baked-goods-novosibirsk-pancakes-expocentre-906381.jpg")
category_5 = Category.create(name: "Divers", photo: "https://c.pxhere.com/photos/0e/41/dips_sauces_food_ketchup_mayonnaise_curry_sauce_garlic_sauce_knoblauchdip-1145263.jpg!d")

puts 'Creating recipe'

recipe_0 = Recipe.create(title: "Brookies", ingredients: "- Pour la couche brownies :
  125 g de chocolat noir (culinaire)
  75 g de beurre salé
  2 oeufs
  125 g de sucre
  75 g de farine
  70 g de noix de pécan

  - Pour la couche cookies:
  120 g de beurre salé mou
  135 de sucre roux (de canne)
  1 oeuf
  165 g de farine
  1 càc de baking powder
  100 g de pépites de chocolat noir", description: "Préchauffez le four à 180°C
  Beurrez un moule (environ 24 cm de diamètre)

  Préparation du brownies :
  Dans un grand bol, cassez le chocolat en grand morceaux et ajoutez le beurre. Faites fondre le tout au four à micro-ondes. Mélangez bien le beurre et le chocolat fondu. Ajoutez les deux oeufs et le sucre. Mélangez. Incorporez la farine (tamisée au préalable). Concassez grossièrement les noix de pécan et ajoutez les à la préparation. Versez la préparation dans le moule.

  Préparation du cookies :
  Travaillez à la fourchette le beurre salé mou avec le sucre roux pour bien amalgamer ces deux ingrédients. Ajoutez l'oeuf et mélangez. Incorporez la farine et la levure chimique et terminez par les pépites. Parsemez des petits paquets de pâte à cookies au-dessus de la préparation du brownies.

  Enfournez pour 25 minutes.
  Laissez refroidir le brookies avant de démouler délicatement.", user: user_1, category: category_4)
file_0 = URI.open("https://res.cloudinary.com/ddubtsk96/image/upload/v1673398666/development/0epvpowlgm2ttlnmv91t3v3gxw4q.jpg")
recipe_0.photo.attach(io: file_0, filename: "brookies.jpg", content_type: "image/jpg")
recipe_0.save
