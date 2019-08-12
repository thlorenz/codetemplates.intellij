#set( $ClassName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $ClassName = "${ClassName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

#set( $StageName = $ClassName.replace("State", "Stage") )

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

enum ${StageName} {
  uninitialized,
}

@immutable
class ${ClassName} extends Equatable {
  ${ClassName}({
    @required this.stage,
  }) : super(<dynamic>[stage]);
  
  ${ClassName} copyWith({${StageName} stage}) {
    return ${ClassName}(stage: stage ?? this.stage);
  }
  
  final ${StageName} stage;
}
