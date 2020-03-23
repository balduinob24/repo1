import 'dart:async';
import 'dart:convert';

class NewsApi{
  var JSON;



  Future <List> loadNews() async{

    String json = "[  \n" +
        "   {  \n" +
        "      \"id\":\"23658\",\n" +
        "      \"_nome\":\"BONÉ BEISEBOL \",\n" +
        "      \"_observacao\":\"Com uma pala pré-curvada na perfeição, este boné de beisebol está pronto a usar. É feito em algodão confortável, com um grande trevo bordado na frente. A correia posterior ajustável permite-te personalizar o ajuste.\",\n" +
        "      \"url_img\":\"https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/d6632dbf81ea4daeb5b1aa8700b20f48_9366/Bone_Beisebol_Trefoil_Rosa_FM1325_01_standard.jpg\",\n" +
        "      \"_preco\":\"34€\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23670\",\n" +
        "       \"_nome\":\"CALÇAS PASTEL\",\n" +
        "      \"_observacao\":\"Os tons pastel cruzam-se com as riscas angulares nestas calças da adidas. Mostra a tua atitude com um grafismo que envolve uma das pernas. \",\n" +
        "      \"url_img\":\"https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/b6ed2f861f81433585f9ab7500e47e8f_9366/Calcas_Pastel_Roxo_GL6151_01_laydown.jpg\",\n" +
        "      \"_preco\":\"74€\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23671\",\n" +
        "      \"_nome\":\"BONÉ BEISEBOL \",\n" +
        "      \"_observacao\":\"Com uma pala pré-curvada na perfeição, este boné de beisebol está pronto a usar. É feito em algodão confortável, com um grande trevo bordado na frente. A correia posterior ajustável permite-te personalizar o ajuste.\",\n" +
        "      \"url_img\":\"https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/d6632dbf81ea4daeb5b1aa8700b20f48_9366/Bone_Beisebol_Trefoil_Rosa_FM1325_01_standard.jpg\",\n" +
        "      \"_preco\":\"34€\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23673\",\n" +
        "      \"_nome\":\"MOCHILA CLÁSSICA \",\n" +
        "      \"_observacao\":\"Confere uma vibe retro ao teu dia a dia. Esta mochila adidas foi aos arquivos recuperar um look clássico das universidades dos EUA.\",\n" +
        "      \"url_img\":\"https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/1517d7303db9419d935faa8700acd14d_9366/Mochila_Classica_Preto_FM0724_01_standard.jpg\",\n" +
        "      \"_preco\":\"34€\"\n" +
        "   },\n" +
        "]";

    return JSON.decode(json);


  }

}
