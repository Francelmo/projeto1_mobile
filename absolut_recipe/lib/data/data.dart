import 'package:absolut_recipe/models/receita.dart';
import 'package:absolut_recipe/models/mercado.dart';

const DUMMY_RECIPES = const [
  Receita(
    id: 'r1',
    nome: 'Bolo de chocolate',
    descricao: '',
    ingredientes: [
      '4 ovos',
      '2 Colheres de manteiga',
      '2 Xícaras de açúcar',
      '1 Xícara de leite',
      '4 Colheres de chocolate em pó',
      '3 Xícaras de farinha de trigo',
      '2 Colheres de Fermento'
    ],
    modoPreparo:
      'Em um liquidificador adicione os ovos, o chocolate em pó, a manteiga, a farinha de trigo, o açúcar e o leite, depois bata por 5 minutos. Adicione o fermento e misture com uma espátula delicadamente.\n\nEm uma forma untada, despeje a massa e asse em forno médio (180 ºC) preaquecido por cerca de 40 minutos. Não se esqueça de usar uma forma alta para essa receita: como leva duas colheres de fermento, ela cresce bastante! Outra solução pode ser colocar apenas uma colher de fermento e manter a sua receita em uma forma pequena.',
    imageUrl: 'https://img.freepik.com/fotos-gratis/bolo-de-frutas-de-sobremesa_144627-10487.jpg?w=740',
    isFavorite: false,
  ),
  Receita(
    id: 'r2',
    nome: 'Torta de frango',
    descricao: '',
    ingredientes: [
      '500 g de peito de frango sem pele',
      '4 Colheres de óleo',
      '1 Cebola picada',
      '1 Xícara de ervilha',
      '250 ml de leite',
      '2 Ovos',
      'Sal a gosto',
      'Queijo ralado',
    ],
    modoPreparo:
      'Cozinhe o peito de frango no caldo até ficar macio. Separe 1 xícara (chá) de caldo do cozimento e reserve, depois de aguardar, refogue os demais ingredientes e acrescente as ervilhas por último. Desfie o frango, misture ao caldo e deixe cozinhar até secar.',
    imageUrl: 'https://img.freepik.com/fotos-gratis/delicioso-prato-tradicional-portugues-empadao_23-2149862968.jpg?w=740',
    isFavorite: false,
  ),
  Receita(
    id: 'r3',
    nome: 'Pastel de frango',
    descricao: '',
    ingredientes: [],
    modoPreparo: '',
    imageUrl: 'https://img.freepik.com/fotos-gratis/torta-de-carne-rustica-assada-com-cebola-salgada-gerada-por-ia_188544-9582.jpg?w=826',
    isFavorite: false,
  ),
  Receita(
    id: 'r4',
    nome: 'Coxinha de carne',
    descricao: '',
    ingredientes: [],
    modoPreparo: '',
    imageUrl: 'https://img.freepik.com/fotos-gratis/vista-frontal-deliciosa-composicao-da-comida-brasileira_23-2148739224.jpg?w=740',
    isFavorite: false,
  ),
  Receita(
    id: 'r5',
    nome: 'Vatapá',
    descricao: '',
    ingredientes: [],
    modoPreparo: '',
    imageUrl: 'https://img.freepik.com/fotos-gratis/deliciosa-refeicao-de-camarao-de-angulo-alto_23-2148771278.jpg?w=740',
    isFavorite: false,
  ),
  Receita(
    id: 'r6',
    nome: 'Bolo de Cenoura',
    descricao: '',
    ingredientes: [],
    modoPreparo: '',
    imageUrl: 'https://img.freepik.com/fotos-gratis/vista-do-delicioso-bolo-feito-de-cenoura_23-2150316408.jpg?w=740',
    isFavorite: false,
  ),
  Receita(
    id: 'r7',
    nome: 'Sushi',
    descricao: '',
    ingredientes: [],
    modoPreparo: '',
    imageUrl: 'https://img.freepik.com/fotos-gratis/rolos-de-sushi-servidos-com-molho-e-gergelim_141793-1276.jpg?w=360',
    isFavorite: false,
  ),
  Receita(
    id: 'r8',
    nome: 'Sashimi',
    descricao: '',
    ingredientes: [
      '1kg de Salmão',
      'Shoyu',
      'Gengibre',
      'Wasabi',
      'Nabo',
      '1/2 Cenoura ralada',
      'Cebolinha verde'
    ],
    modoPreparo:
        'O primeiro passo é encontrar um peixe realmente fresco. Compre a parte que está mais próxima à cabeça, se não for fazer inteiro, é o melhor pedaço para este prato. Aproveite a cabeça para o dashi, o caldo do missoshiro.\n\nPeça a seu fornecedor que o prepare para sashimi, ele deverá cortar 2 filés grossos e cada um deles em dois pedaços, no sentido longitudinal, segundo a espessura da carne. Limpe o filé, retirando as partes escuras, use uma faca bem afiada. Depois, apalpe com a ponta dos dedos, em busca de espinhos e retire-os (é só puxar), Corte em fatias não muito finas. Os peixes mais moles, como o salmão, são cortados em fatias mais grossas, somente os peixes brancos são cortados em fatias quase transparentes.\n\nCuidadosamente, arrume as fatias numa travessa ou bandeja, ou em pratinhos individuais, depois decore a seu gosto com o nabo, a cenoura e o que mais sua imaginação desejar. Cada conviva preparará seu próprio molho a gosto, apenas deixe sobre a mesa o shoyu, gengibre e wassabi.',
    imageUrl: 'https://img.freepik.com/fotos-gratis/sashimi-em-salmao-cru_1339-3830.jpg?w=740',
    isFavorite: false,
  ),
];

const DUMMY_MERCADOS = const [
  Mercado(
    id: 'm1',
    nome: 'Carrefuor',
    linkSite: 'https://mercado.carrefour.com.br/?gad_source=1&gclid=Cj0KCQjwq86wBhDiARIsAJhuphlRD3TJ-BIEtrH37pCltYyKIx6pfss65KT834idR0W6LqVPFTjXnsgaAlZzEALw_wcB',
  ),
  Mercado(
    id: 'm2',
    nome: 'Americanas',
    linkSite: 'https://www.americanas.com.br/categoria/mercado',
  ),
  Mercado(
    id: 'm3',
    nome: 'Redemais',
    linkSite: 'https://www.redemaisrn.com.br',
  ),
  Mercado(
    id: 'm4',
    nome: 'Atacadão',
    linkSite: 'https://www.atacadao.com.br/?gad_source=1&gclid=Cj0KCQjwq86wBhDiARIsAJhuphkSHMZJWDGNuTe-FHcxIXeScXsYECrUnBDFRi54BL3Ks685Jv4NqKMaAlkhEALw_wcB',
  ),
];
