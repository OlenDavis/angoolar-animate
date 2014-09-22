angoolar.BaseAnimation = class BaseAnimation extends angoolar.BaseFactory
	# $_name: "BaseAnimation" # This must be overriden in extending animations, and it will be automatically converted into the form .prefix-base-animation if $_prefix: 'prefix'

	$_makeName: ->
		name = super
		'.' + angoolar.camelToDashes name.slice( 0, 1 ).toLowerCase() + name.slice 1

	$_addToAngular: ( module ) ->
		@$_checkName()
		module.animation @$_makeName(), @$_makeConstructorArray()

	# Override any of the following, and enjoy!
	# enter: ( element, done ) =>
	# leave: ( element, done ) =>
	# move : ( element, done ) =>

	# beforeAddClass: ( element, className, done ) =>
	# addClass      : ( element, className, done ) =>

	# beforeRemoveClass: ( element, className, done ) =>
	# removeClass      : ( element, className, done ) =>