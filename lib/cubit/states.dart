abstract class NewsState{}

class NewsInitialState extends NewsState{}

class NewsBottomNaVState extends NewsState{}
//bussiness states
class NewsGetBusinessLoadingState extends NewsState{}

class NewsGetBusinessSuccessState extends NewsState{}

class NewsGetBusinessErrorState extends NewsState{}
//spoerts states
class NewsGetSportsLoadingState extends NewsState{}

class NewsGetSportsSuccessState extends NewsState{}

class NewsGetSportsErrorState extends NewsState{}
//science states
class NewsGetScienceLoadingState extends NewsState{}

class NewsGetScienceSuccessState extends NewsState{}

class NewsGetScienceErrorState extends NewsState{}

class NewsChangeAppModeState extends NewsState{}

class InitialDarkModeState extends NewsState{}

class NewsGetSearchLoadingState extends NewsState{}

class NewsGetSearchSuccessState extends NewsState{}

class NewsGetSearchErrorState extends NewsState{}