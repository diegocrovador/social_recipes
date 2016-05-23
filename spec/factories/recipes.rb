FactoryGirl.define do
  factory :recipe do
    name 'Lasanha'
    culinary 'Italiana'
    food_type 'Massa'
    food_preference 'Lorem ipsum'
    ingredients '•	1 kg de peito de frango
                 •	1 pacote de macarrão para lasanha
                 •	3 gemas
                 •	300 g de presunto fatiado
                 •	300 g de mussarela fatiada
                 •	2 xícaras de chá de leite
                 •	1 caixinha de creme de leite
                 •	4 colheres de sopa de farinha de trigo
                 •	Queijo ralado (opcional)'
    description '- Cozinhe o peito de frango com os temperos de costume
                 (cheiro verde, alho, cebola, extrato de tomate);
                 - Coloque bastante água pra que fique muito caldo;
                 - Quando o frango estiver cozido, retire-o da panela;
                 - Pegue o caldo que ficou do frango.'
  end
end
