deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'firefly-rk3328-cc'
	aliases: [ 'firefly-rk3328-cc' ]
	name: 'FireFly rk3328-cc'
	arch: 'armv7hf'
	state: 'discontinued'

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://www.balena.io/'
		osx: 'https://www.balena.io/'
		linux: 'https://www.balena.io/'

	supportsBlink: true

	yocto:
		machine: 'firefly-rk3328-cc'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-sumo'
		deployArtifact: 'balena-image-firefly-rk3328-cc.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
