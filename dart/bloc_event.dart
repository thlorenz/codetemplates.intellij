#set( $PackageName = "<your-package-name>" )
#set( $ClassName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $ClassName = "${ClassName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:${PackageName}/core/shared_enums.dart';

enum ${ClassName}Type { todo }

@immutable
class ${ClassName} extends Equatable {
  ${ClassName}(this.type, {this.importance = EventImportance.medium})
      : super(<dynamic>[type]);
      
  final ${ClassName}Type type;
  final EventImportance importance;
}
