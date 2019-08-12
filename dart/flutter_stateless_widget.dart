#set( $ClassName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $ClassName = "${ClassName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

import 'package:flutter/material.dart';

class $ClassName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
