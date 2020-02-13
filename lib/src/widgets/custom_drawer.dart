
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {

    Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
          color: Colors.grey,
      ),
    );

    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image(
                    image: ExactAssetImage('assets/back.png'),
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 70 ,0, 0),
                    child: Text('Sistema de coletas de dados',
                    style:TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                ],

              // Padding(
              //   padding: const EdgeInsets.only(),
              //   child: Divider(
              //     color: Colors.white,
              //   ),
              // ),
              // DrawerTile(Icons.home, "Início", pageController, 0,),
              // DrawerTile(Icons.list, "Produtos", pageController, 1),
              // DrawerTile(Icons.playlist_add_check, "Meus Pedidos", pageController, 3),
              // DrawerTile(Icons.business, "Sobre nós", pageController, 2),
              ),
            ],
          ),
          ListView(
            padding: EdgeInsets.only(top: 190),
            children: <Widget>[
              Divider(
                color: Colors.white,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left : 20.0, top: 8),
                    child:GestureDetector(
                       child: Container(
                         width: 100,
                        child: Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.home, size: 25, color: Colors.white),
                            SizedBox(
                              width: 15,
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top :7.0),
                              child: Text('Home', style: TextStyle(color : Colors.white, fontSize: 20),),
                            )
                          ],
                        ),
                        
                      ),
                      onTap: (){
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
                Container(
                  child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left : 20.0, top: 8),
                      child:GestureDetector(
                         child: Container(
                           width: 250,
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.newspaper, size: 25, color: Colors.white),
                              SizedBox(
                                width: 15,
                                ),
                              Padding(
                                padding: const EdgeInsets.only(top :7.0),
                                child: Text('Ordens de Serviço', style: TextStyle(color : Colors.white, fontSize: 20),),
                              )
                            ],
                          ),
                          
                        ),
                        onTap: (){
                        },
                      ),
                    ),
                  ],
                ),
              ),         
            ],
          ),
          ListView(
            padding: EdgeInsets.only(top: 320),
            children: <Widget>[
              Divider(
                color: Colors.white,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left : 20.0, top: 8),
                    child:GestureDetector(
                       child: Container(
                         width: 200,
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.globeAmericas, size: 25, color: Colors.white),
                              SizedBox(
                                width: 15
                                ),
                              Padding(
                                padding: const EdgeInsets.only(top :5.0),
                                child: Text('Coordenadas', style: TextStyle(color : Colors.white, fontSize: 20),),
                              )
                            ],
                          ),
                        ),
                        
                      ),
                      onTap: (){
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
                Container(
                  child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left : 20.0, top: 8),
                      child:GestureDetector(
                         child: Container(
                           width: 250,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.trending_down, size: 25, color: Colors.white),
                              SizedBox(
                                width: 15,
                                ),
                              Padding(
                                padding: const EdgeInsets.only(top :7.0),
                                child: Text('Profundidades', style: TextStyle(color : Colors.white, fontSize: 20),),
                              )
                            ],
                          ),
                          
                        ),
                        onTap: (){
                        },
                      ),
                    ),
                  ],
                ),
              ),  
              SizedBox(
                height: 15,
              ),
                Container(
                  child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left : 20.0, top: 8),
                      child:GestureDetector(
                         child: Container(
                           width: 250,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.settings, size: 25, color: Colors.white),
                              SizedBox(
                                width: 15,
                                ),
                              Padding(
                                padding: const EdgeInsets.only(top :7.0),
                                child: Text('Temperatura', style: TextStyle(color : Colors.white, fontSize: 20),),
                              )
                            ],
                          ),
                          
                        ),
                        onTap: (){
                        },
                      ),
                    ),
                  ],
                ),
              ),         
            ],
          ),
          
          ListView(
            padding: EdgeInsets.only(top: 500),
            children: 
            <Widget>[
              Divider(
                color: Colors.white,
              ),
              Row(
                children: <Widget>[
                 
                Container(
                  child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left : 20.0, top: 8),
                      child:GestureDetector(
                         child: Container(
                           width: 250,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.settings, size: 25, color: Colors.white),
                              SizedBox(
                                width: 15,
                                ),
                              Padding(
                                padding: const EdgeInsets.only(top :7.0),
                                child: Text('Configurações', style: TextStyle(color : Colors.white, fontSize: 20),),
                              )
                            ],
                          ),
                         ),
                        onTap: (){
                        },
                      ),
                    ),
                  ],
                ),
              ),    
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
