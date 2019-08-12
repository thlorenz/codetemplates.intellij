#set( $PackageName = "<your-package-name>" )
#set( $BlocPackageRoot = "${PackageName}/bloc" )
#set( $BlocName = "" )
#set( $part = "" )
#foreach($part in $NAME.replace(".ui", "").split("_"))
  #set( $BlocName = "${BlocName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

#set( $BlocDirName = $NAME.replace("_bloc.ui", "") )
#set( $BuilderName = $NAME.substring(0,1) + $BlocName.substring(1) + "Builder" )

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:${BlocPackageRoot}/${BlocDirName}/${BlocDirName}_bloc.dart';

ValueBuilder<${BlocName}> $BuilderName(
  BuildContext context,
) {
  return (ctx) => ${BlocName}();
}
