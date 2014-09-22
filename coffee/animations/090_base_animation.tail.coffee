angoolar.BaseAnimation = class BaseAnimation extends angoolar.NamedDependent
	# $_name: "BaseAnimation" # This must be overriden in extending animations, and it will be automatically converted into the form .prefix-base-animation if $_prefix: 'prefix'

	$_makeName: ->
		super
		'.' + angoolar.camelToDashes ( @$_prefix || '' ) + unless @$_prefix?.length then @$_name.slice( 0, 1 ).toLowerCase() + @$_name.slice 1 else @$_name

	$_dependentConstructor: -> new @constructor arguments...

	$_addToAngular: ( module ) ->
		super
		module.animation @$_makeName(), @$_makeConstructorArray()

	# Override any of the following, and enjoy!
	# enter: ( element, done ) =>
	# leave: ( element, done ) =>
	# move : ( element, done ) =>

	# beforeAddClass: ( element, className, done ) =>
	# addClass      : ( element, className, done ) =>

	# beforeRemoveClass: ( element, className, done ) =>
	# removeClass      : ( element, className, done ) =>