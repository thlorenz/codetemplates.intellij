#set( $PackageName = "<your-package-name>" )
#set( $BlocPackageRoot = "${PackageName}/bloc" )
#set( $ClassName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $ClassName = "${ClassName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

#set( $BlocDirName = $NAME.replace("_bloc", "") )
#set( $StateFileName = $NAME.replace("_bloc", "_state") )
#set( $EventFileName = $NAME.replace("_bloc", "_event") )

#set( $StateName = $ClassName.replace("Bloc", "State") )
#set( $EventName = $ClassName.replace("Bloc", "Event") )

import 'dart:async';

import 'package:meta/meta.dart';
import 'package:${BlocPackageRoot}/${BlocDirName}/${EventFileName}.dart';
import 'package:${BlocPackageRoot}/${BlocDirName}/${StateFileName}.dart';
import 'package:${PackageName}/core/log.dart';
import 'package:${PackageName}/packages/se_bloc/bloc.dart';

export 'package:${PackageName}/bloc/${BlocDirName}/${NAME}.ui.dart';
export 'package:${BlocPackageRoot}/${BlocDirName}/${EventFileName}.dart';
export 'package:${BlocPackageRoot}/${BlocDirName}/${StateFileName}.dart';

final _log = Log<${ClassName}>();

class ${ClassName} extends BlocBase<${StateName}, ${EventName}> {
  ${ClassName}({
    InspectItem<${StateName}> inspectState,
    InspectItem<${EventName}> inspectEvent,
  }) : super(inspectState: inspectState, inspectEvent: inspectEvent) {
    _log.finest(() => 'creating');
  }

  @override
  void dispose() {
    _log.finest(() => 'disposing');
    super.dispose();
  }
}
