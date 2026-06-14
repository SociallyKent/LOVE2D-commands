|'bit' (bit32)
 ---Shift X bitwise right by Y
--[[numeric, numeric]]
bit.arshift(X, Y)
 ---get bitwise and
bit.band(...)
 ---get bitwise not
--[[numeric]]
bit.bnot(X)
 ---get bitwise or
bit.bor(...)
 --get bitwise xor
bit.bxor
 ---bit shift X shifted left by Y
--[[numeric, numeric]]
bit.lshift(X, Y)
 ---bit shift X shifted right by Y
--[[numeric, numeric]]
bit.rshift(X, Y)

bit.bswap
bit.rol
bit.ror
bit.tobit
bit.tohex

|'coroutine'
coroutine.create
coroutine.isyieldable
coroutine.resume
coroutine.running
coroutine.status
coroutine.wrap
coroutine.yield

|'debug'
debug.debug
debug.getfenv
debug.gethook
debug.getinfo
debug.getlocal
debug.getmetatable
debug.getregistry
debug.getupvalue
debug.setfenv
debug.sethook
debug.setlocal
debug.setmetatable
debug.setupvalue
debug.traceback
debug.upvalueid
debug.upvaluejoin

|'io' 
 filemode
	"n": [[placeholder]] reads a numeral and returns it as a float or an integer, following the lexical conventions of Lua. (The numeral may have leading whitespaces and a sign.) This format always reads the longest input sequence that is a valid prefix for a numeral; if that prefix does not form a valid numeral (e.g., an empty string, "0x", or "3.4e-") or it is too long (more than 200 characters), it is discarded and the format returns fail.
	"a": [[placeholder]] reads the whole file, starting at the current position. On end of file, it returns the empty string; this format never fails.
	"L": [[placeholder]] reads the next line keeping the end-of-line character (if present), returning fail on end of file.
	"l": [[placeholder]] reads the next line skipping the end of line, returning fail on end of file. This is the default format.
	[numeric]: [[placeholder]] reads a string with up to this number of bytes, returning fail on end of file. If number is zero, it reads nothing and returns an empty string, or fail on end of file.
--[[file]]
io.close(¿file)
io.flush()
--[[file]]
io.input(¿file)
 ---will close file once reached end/error
--[[string, filemode]]
io.lines(¿filename, ¿mode)
--[[string, string]]
io.open(filename, ¿format)
	{formats
	"r": read (the default)
	"w": write
	"a": append
	"r+": update (preserve previous data)
	"w+": update (erase previous data)
	"a+": append update (preserve previous data)(only: end of file writing)
	"b": binary  (opens in binary mode)(needed for some systems)
	}
--[[file]]
io.output(¿file)
--[[file?, filemode]]
io.popen(prog, ¿mode)
--[[filemode]]
io.read(mode)
io.stderr = userdata
io.stdin = userdata
io.stdout = userdata
io.tmpfile() -- temperary file
--[[string?]]
io.type(obj)
--[[string...|numeric...]]
io.write(...)
[
(file):__gc()
(file):__tostring()
(file):close()
(file):flush()
--[[filemode]]
(file):lines(mode)
--[[filemode]]
(file):read(mode)
(file):seek()
	{formats
	"set": base = start
	"cur": base = current
	"end": base = end
	}
--[[string, numeric?]]
(file):setvbuf(format, ¿size)
	{formats
	"no":
	"full":
	"line":
	}
--[[string...|numeric...]]
(file):write(...)
]

|'math'
+ --- Addition
- --- Subtraction/Subtract
/ --- Division/Dividing
* --- Multiply/Timesing
^ --- Exponentiation/Power
^0.5 --- Square Root
% --- wrapper
math.abs(x) -- absolute
math.acos(x) -- arc cosine
math.cos(x) -- cosine
math.cosh(x) -- hyperbolic cosine
math.asin(x) -- arc sine
math.sin(x) -- sine
math.sinh(x) -- hyperbolic sine
math.atan(x) -- arc tangent
math.atan2(y, x) ---
math.tan(x) -- tangent
math.tanh(x) -- hyperbolic tangent
math.ceil(x) -- rounds up to the neariest integer
math.floor(x) -- rounds down to the neariest integer
math.max(x)--(x, ...)-- returns the highest value
math.min(x)--(x, ...)-- returns the lowest value
math.exp(x) -- exponential
math.pow(x, y) -- exponentiation/power
math.deg(x) -- return angle of value in degrees; output is in radians
math.rad(x) -- return angle of value in radians; output is in degrees
math.huge -- represents a higher or equal number, no matter what it is
math.pi -- represents π
math.modf(x) -- returns whole value aswell as the fractional value
  --example: if x = 2.56, it returns 2 and 0.56. if x = 7, it returns 7 and 0, because 7 has no number in a decimal point.
math.fmod(x, y) -- x = dividend, y = divisor/modulus 
  --example: if x = 499, y = 360, it returns 139 because 499 cannot fit into 360 so it wrapped it around until it could. (does not return amount of wraps needed)
math.frexp(x)
math.ldexp(m, e) -- returns m2^e
math.log(x, base) -- logarithm -- if no base is given; defaults to e
math.random(x, y) -- returns a random number between x and y. -- if no value is given; defaults to (0, 1)
math.randomseed(x)
math.sqrt(x) -- square root

math.log10
math.mod

|'os'
os.clock()
--returns CPU time(seconds),
os.date
 ---seconds
--[[numeric, numeric]]
os.difftime(Time2, Time1)
--[[string]]
os.execute(¿command)
os.exit
os.getenv
--[[string]]
os.remove(filename)
--[[string, string]]
os.rename(old, new)
os.setlocale
os.time
os.tmpname() -- temperary name
--returns filename

|'package'

|'string'
"" '' [[]]
.. --- Concate
	"string".."string" = "stringstring"
# --- Length
	#"string" = 6
string.byte
string.char
string.dump
string.find
string.format
string.gmatch
string.gsub
string.len
string.lower
string.match
string.rep
string.reverse
string.sub
string.upper

string.gfind

|'table'
table.concat
table.insert
table.maxn
table.move
table.remove
table.sort
pack
unpack

--[[table, function]]
table.foreach(table, function)
--[[table, function]]
table.foreachi(table, function)
 ---get lengh of table
--[[table]]
table.getn(table)


|'arg'

|'ffi'
ffi.abi
ffi.alignof
ffi.arch = x64
ffi.C = userdata
ffi.cast
ffi.cdef
ffi.copy
ffi.errno
ffi.fill
ffi.gc
ffi.istype
ffi.load
ffi.metatype
ffi.new
ffi.offsetof
ffi.os
--returns operationing system(string)
ffi.sizeof
ffi.string
ffi.typeinfo
ffi.typeof

|'jit'
jit.arch = x64
jit.attach
jit.flush
jit.off
jit.on
jit.opt = [start]
jit.os
--returns operationing system(string)
jit.security
jit.status
jit.version
--returns version(LuaJIT)
jit.version_num = 20199

|'utf8'
utf8.char
utf8.charpattern = [%z-┬-⌠][Ç-┐]*
utf8.codepoint
utf8.codes
utf8.len
utf8.offset

|"love._modules"
love._modules.audio
love._modules.data
love._modules.event
love._modules.filesystem
love._modules.font
love._modules.graphics
love._modules.image
love._modules.joystick
love._modules.keyboard
love._modules.math
love._modules.mouse
love._modules.physics
love._modules.sound
love._modules.system
love._modules.thread
love._modules.timer
love._modules.touch
love._modules.video
love._modules.window
|"love._version_compat"
love._version_compat.1
love._version_compat.2
love._version_compat.3
love._version_compat.4
love._version_compat.5
love._version_compat.6
|"love.arg"
love.arg.getLow
love.arg.parseGameArguments
love.arg.parseOption
love.arg.parseOptions
|"love.arg"
love.arg.getLow
love.arg.parseGameArguments
love.arg.parseOption
love.arg.parseOptions
|"love.audio"
|enums
	"DistanceModel"
		--[[The different distance models]]
	"EffectType"
		--[[Different types of audio effects]]
	"EffectWaveform"
		--[[Types of waveforms for ringmodulator effect]]
	"SourceType"
		--[[Types of audio sources.]]
	"TimeUnit"
		--[[Units that represent time]]

love.audio.getActiveEffects
love.audio.getActiveSourceCount
love.audio.getDistanceModel
love.audio.getDopplerScale
love.audio.getEffect
love.audio.getMaxSceneEffects
love.audio.getMaxSourceEffects
love.audio.getOrientation
love.audio.getPosition
love.audio.getRecordingDevices
love.audio.getSourceCount
love.audio.getVelocity
love.audio.getVolume
love.audio.isEffectsSupported
love.audio.newQueueableSource
love.audio.newSource
love.audio.pause
love.audio.play
love.audio.setDistanceModel
love.audio.setDopplerScale
love.audio.setEffect
love.audio.setMixWithSystem
love.audio.setOrientation
love.audio.setPosition
love.audio.setVelocity
love.audio.setVolume
love.audio.stop
|"love.data"
love.data.compress
love.data.decode
love.data.decompress
love.data.encode
love.data.getPackedSize
love.data.hash
love.data.newByteData
love.data.newDataView
love.data.pack
love.data.unpack
|"love.event"
love.event.clear
love.event.poll
love.event.poll_i
love.event.pump
love.event.push
love.event.quit
love.event.wait
|"love.filesystem"
buffermode
	"none": [[The result of write and append operations appears immediately.]]
	"line": [[Write and append operations are buffered until a newline is output or the buffer size limit is reached.]]
	"full": [[Write and append operations are always buffered until the buffer size limit is reached.]]
filemode
	"r": read
	"w": write
	"a": append
	"c": closed

love.filesystem._setAndroidSaveExternal
love.filesystem.append
love.filesystem.areSymlinksEnabled
love.filesystem.createDirectory
love.filesystem.exists
love.filesystem.getAppdataDirectory
love.filesystem.getCRequirePath
love.filesystem.getDirectoryItems
love.filesystem.getExecutablePath
love.filesystem.getIdentity
love.filesystem.getInfo
love.filesystem.getLastModified
love.filesystem.getRealDirectory
love.filesystem.getRequirePath
love.filesystem.getSaveDirectory
love.filesystem.getSize
love.filesystem.getSource
love.filesystem.getSourceBaseDirectory
love.filesystem.getUserDirectory
love.filesystem.getWorkingDirectory
love.filesystem.init
love.filesystem.isDirectory
love.filesystem.isFile
love.filesystem.isFused
love.filesystem.isSymlink
love.filesystem.lines
love.filesystem.load
love.filesystem.mount
--[[]]
love.filesystem.newFile(name, ¿type)
--[[string, filemode]]
love.filesystem.newFile(name, mode)
	--(file, error)
love.filesystem.newFileData
love.filesystem.read
love.filesystem.remove
love.filesystem.setCRequirePath
love.filesystem.setFused
love.filesystem.setIdentity
love.filesystem.setRequirePath
love.filesystem.setSource
love.filesystem.setSymlinksEnabled
love.filesystem.unmount
love.filesystem.write
--closes File.
(File):close()
	--(success)
--Flushes any buffered written data in the file to disk
(File):flush()
	--(success, error)
--Gets the buffer mode of a file.
(File):getBuffer()
	--(mode-buffer, size)
--Gets the filename that the File object was created with.
(File):getFilename()
	--(name)
--Gets the FileMode the file has been opened with.
(File):getMode()
	--(mode-file)
--returns File's size.
(File):getSize()
	--(size)
--returns whether end-of-file has been reached.
(File):isEOF
--is File open.
(File):isOpen
--iterate all of lines.
(File):lines
--open for write, read, or append.
(File):open
--read a number of bytes
(File):read
--seek to position
--[[numeric]]
(File):seek(pos)
	--[[boolean]]
--Sets the buffer mode for a file opened for writing or appending.
(File):setBuffer
--returns position in File
(File):tell
--write data to File
(File):write
[dropped file
(file):__eq
(file):__gc
(file):__tostring
(file):close
(file):flush
(file):getBuffer
(file):getExtension
(file):getFilename
(file):getMode
(file):getSize
(file):isEOF
(file):isOpen
(file):lines
(file):open
(file):read
(file):release
(file):seek
(file):setBuffer
(file):tell
(file):type
(file):typeOf
(file):write
]
|"love.font"
love.font.newBMFontRasterizer
love.font.newGlyphData
love.font.newImageRasterizer
love.font.newRasterizer
love.font.newTrueTypeRasterizer
|"love.graphics"
love.graphics._newVideo
love.graphics._setDefaultShaderCode
love.graphics._shaderCodeToGLSL
love.graphics._transformGLSLErrorMessages
love.graphics.applyTransform
love.graphics.arc
love.graphics.captureScreenshot
love.graphics.circle
love.graphics.clear
love.graphics.discard
love.graphics.draw
love.graphics.drawInstanced
love.graphics.drawLayer
love.graphics.ellipse
love.graphics.flushBatch
love.graphics.getBackgroundColor
love.graphics.getBlendMode
love.graphics.getCanvas
love.graphics.getCanvasFormats
love.graphics.getColor
love.graphics.getColorMask
love.graphics.getDPIScale
love.graphics.getDefaultFilter
love.graphics.getDefaultMipmapFilter
love.graphics.getDepthMode
love.graphics.getDimensions
love.graphics.getFont
love.graphics.getFrontFaceWinding
love.graphics.getHeight
love.graphics.getImageFormats
love.graphics.getLineJoin
love.graphics.getLineStyle
love.graphics.getLineWidth
love.graphics.getMeshCullMode
love.graphics.getPixelDimensions
love.graphics.getPixelHeight
love.graphics.getPixelWidth
love.graphics.getPointSize
love.graphics.getRendererInfo
love.graphics.getScissor
love.graphics.getShader
love.graphics.getStackDepth
love.graphics.getStats
love.graphics.getStencilTest
love.graphics.getSupported
love.graphics.getSystemLimits
love.graphics.getTextureTypes
love.graphics.getWidth
love.graphics.intersectScissor
love.graphics.inverseTransformPoint
love.graphics.isActive
love.graphics.isCreated
love.graphics.isGammaCorrect
love.graphics.isWireframe
love.graphics.line
love.graphics.newArrayImage
love.graphics.newCanvas
love.graphics.newCubeImage
love.graphics.newFont
love.graphics.newImage
love.graphics.newImageFont
love.graphics.newMesh
love.graphics.newParticleSystem
love.graphics.newQuad
love.graphics.newShader
love.graphics.newSpriteBatch
love.graphics.newText
love.graphics.newVideo
love.graphics.newVolumeImage
love.graphics.origin
love.graphics.points
love.graphics.polygon
love.graphics.pop
love.graphics.present
love.graphics.print
love.graphics.printf
love.graphics.push
love.graphics.rectangle
love.graphics.replaceTransform
love.graphics.reset
love.graphics.rotate
love.graphics.scale
love.graphics.setBackgroundColor
love.graphics.setBlendMode
love.graphics.setCanvas
love.graphics.setColor
love.graphics.setColorMask
love.graphics.setDefaultFilter
love.graphics.setDefaultMipmapFilter
love.graphics.setDepthMode
love.graphics.setFont
love.graphics.setFrontFaceWinding
love.graphics.setLineJoin
love.graphics.setLineStyle
love.graphics.setLineWidth
love.graphics.setMeshCullMode
love.graphics.setNewFont
love.graphics.setPointSize
love.graphics.setScissor
love.graphics.setShader
love.graphics.setStencilTest
love.graphics.setWireframe
love.graphics.shear
love.graphics.stencil
love.graphics.transformPoint
love.graphics.translate
love.graphics.validateShader
|"love.handlers"
love.handlers.directorydropped
love.handlers.displayrotated
love.handlers.filedropped
love.handlers.focus
love.handlers.gamepadaxis
love.handlers.gamepadpressed
love.handlers.gamepadreleased
love.handlers.joystickadded
love.handlers.joystickaxis
love.handlers.joystickhat
love.handlers.joystickpressed
love.handlers.joystickreleased
love.handlers.joystickremoved
love.handlers.keypressed
love.handlers.keyreleased
love.handlers.lowmemory
love.handlers.mousefocus
love.handlers.mousemoved
love.handlers.mousepressed
love.handlers.mousereleased
love.handlers.quit
love.handlers.resize
love.handlers.textedited
love.handlers.textinput
love.handlers.threaderror
love.handlers.touchmoved
love.handlers.touchpressed
love.handlers.touchreleased
love.handlers.visible
love.handlers.wheelmoved
|"love.image"
love.image.isCompressed
love.image.newCompressedData
love.image.newCubeFaces
love.image.newImageData
|"love.joystick"
love.joystick.getGamepadMappingString
love.joystick.getJoystickCount
love.joystick.getJoysticks
love.joystick.loadGamepadMappings
love.joystick.saveGamepadMappings
love.joystick.setGamepadMapping
|"love.keyboard"
love.keyboard.getKeyFromScancode
love.keyboard.getScancodeFromKey
love.keyboard.hasKeyRepeat
love.keyboard.hasScreenKeyboard
love.keyboard.hasTextInput
love.keyboard.isDown
love.keyboard.isScancodeDown
love.keyboard.setKeyRepeat
love.keyboard.setTextInput
|"love.math"
love.math._getRandomGenerator
love.math.colorFromBytes
love.math.colorToBytes
love.math.compress
love.math.decompress
love.math.gammaToLinear
love.math.getRandomSeed
love.math.getRandomState
love.math.isConvex
love.math.linearToGamma
love.math.newBezierCurve
love.math.newRandomGenerator
love.math.newTransform
love.math.noise
love.math.random
love.math.randomNormal
love.math.setRandomSeed
love.math.setRandomState
love.math.triangulate
|"love.mouse"
love.mouse.getCursor
love.mouse.getPosition
love.mouse.getRelativeMode
love.mouse.getSystemCursor
love.mouse.getX
love.mouse.getY
love.mouse.isCursorSupported
love.mouse.isDown
love.mouse.isGrabbed
love.mouse.isVisible
love.mouse.newCursor
love.mouse.setCursor
love.mouse.setGrabbed
love.mouse.setPosition
love.mouse.setRelativeMode
love.mouse.setVisible
love.mouse.setX
love.mouse.setY
|"love.path"
love.path.abs
love.path.endslash
love.path.getFull
love.path.leaf
love.path.normalslashes
|"love.physics"
love.physics.getDistance
love.physics.getMeter
love.physics.newBody
love.physics.newChainShape
love.physics.newCircleShape
love.physics.newDistanceJoint
love.physics.newEdgeShape
love.physics.newFixture
love.physics.newFrictionJoint
love.physics.newGearJoint
love.physics.newMotorJoint
love.physics.newMouseJoint
love.physics.newPolygonShape
love.physics.newPrismaticJoint
love.physics.newPulleyJoint
love.physics.newRectangleShape
love.physics.newRevoluteJoint
love.physics.newRopeJoint
love.physics.newWeldJoint
love.physics.newWheelJoint
love.physics.newWorld
love.physics.setMeter
|"love.sound"
love.sound.newDecoder
love.sound.newSoundData
|"love.system"
love.system.getClipboardText
love.system.getOS
love.system.getPowerInfo
love.system.getProcessorCount
love.system.hasBackgroundMusic
love.system.openURL
love.system.setClipboardText
love.system.vibrate
|"love.thread"
love.thread.getChannel
love.thread.newChannel
love.thread.newThread
|"love.timer"
love.timer.getAverageDelta
love.timer.getDelta
love.timer.getFPS
love.timer.getTime
love.timer.sleep
love.timer.step
|"love.touch"
love.touch.getPosition
love.touch.getPressure
love.touch.getTouches
|"love.video"
love.video.newVideoStream
|"love.window"
love.window.close
love.window.fromPixels
love.window.getDPIScale
love.window.getDesktopDimensions
love.window.getDisplayCount
love.window.getDisplayName
love.window.getDisplayOrientation
love.window.getFullscreen
love.window.getFullscreenModes
love.window.getIcon
love.window.getMode
love.window.getNativeDPIScale
love.window.getPosition
love.window.getSafeArea
love.window.getTitle
love.window.getVSync
love.window.hasFocus
love.window.hasMouseFocus
love.window.isDisplaySleepEnabled
love.window.isMaximized
love.window.isMinimized
love.window.isOpen
love.window.isVisible
love.window.maximize
love.window.minimize
love.window.requestAttention
love.window.restore
love.window.setDisplaySleepEnabled
love.window.setFullscreen
love.window.setIcon
love.window.setMode
love.window.setPosition
love.window.setTitle
love.window.setVSync
love.window.showMessageBox
love.window.toPixels
love.window.updateMode