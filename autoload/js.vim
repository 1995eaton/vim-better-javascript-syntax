" (A more up-to-date) Vim completion script
" Language:  JavaScript
" Maintainer:  Jake Eaton (1995eaton@gmail.com)
" Last Change:  2014 Jun 23
" Original Maintainer: Mikolaj Machowski ( mikmach AT wp DOT pl )

let s:keywords = ['abstract', 'boolean', 'break', 'byte', 'case', 'catch', 'char', 'class', 'continue', 'debugger', 'default', 'delete', 'do', 'double ', 'else', 'enum', 'export', 'extends', 'false', 'final', 'finally', 'float', 'for', 'function', 'goto', 'if', 'implements', 'import', 'in ', 'instanceof', 'int', 'interface', 'long', 'native', 'new', 'null', 'package', 'private', 'protected', 'public', 'return', 'short', 'static', 'super ', 'switch', 'synchronized', 'this', 'throw', 'throws', 'transient', 'true', 'try', 'typeof', 'var', 'void', 'volatile', 'while', 'with', 'console']
let s:winds = ['AnalyserNode(', 'ApplicationCache(', 'ApplicationCacheErrorEvent(', 'Array(', 'ArrayBuffer(', 'Attr(', 'Audio(', 'AudioBuffer(', 'AudioBufferSourceNode(', 'AudioContext(', 'AudioDestinationNode(', 'AudioListener(', 'AudioNode(', 'AudioParam(', 'AudioProcessingEvent(', 'AutocompleteErrorEvent(', 'BarProp(', 'BeforeUnloadEvent(', 'BiquadFilterNode(', 'Blob(', 'Boolean(', 'CDATASection(', 'CSS', 'CSSCharsetRule(', 'CSSFontFaceRule(', 'CSSImportRule(', 'CSSKeyframeRule(', 'CSSKeyframesRule(', 'CSSMediaRule(', 'CSSPageRule(', 'CSSPrimitiveValue(', 'CSSRule(', 'CSSRuleList(', 'CSSStyleDeclaration(', 'CSSStyleRule(', 'CSSStyleSheet(', 'CSSUnknownRule(', 'CSSValue(', 'CSSValueList(', 'CSSViewportRule(', 'CanvasGradient(', 'CanvasPattern(', 'CanvasRenderingContext2D(', 'ChannelMergerNode(', 'ChannelSplitterNode(', 'CharacterData(', 'ClientRect(', 'ClientRectList(', 'CloseEvent(', 'Comment(', 'CompositionEvent(', 'ConvolverNode(', 'Counter(', 'CustomEvent(', 'DOMError(', 'DOMException(', 'DOMImplementation(', 'DOMParser(', 'DOMSettableTokenList(', 'DOMStringList(', 'DOMStringMap(', 'DOMTokenList(', 'DataTransfer(', 'DataTransferItemList(', 'DataView(', 'Date(', 'DelayNode(', 'DeviceMotionEvent(', 'DeviceOrientationEvent(', 'Document(', 'DocumentFragment(', 'DocumentType(', 'DynamicsCompressorNode(', 'Element(', 'Error(', 'ErrorEvent(', 'EvalError(', 'Event(', 'EventSource(', 'EventTarget(', 'File(', 'FileError(', 'FileList(', 'FileReader(', 'Float32Array(', 'Float64Array(', 'FocusEvent(', 'FontFace(', 'FormData(', 'Function(', 'GainNode(', 'Gamepad(', 'GamepadEvent(', 'HTMLAllCollection(', 'HTMLAnchorElement(', 'HTMLAppletElement(', 'HTMLAreaElement(', 'HTMLAudioElement(', 'HTMLBRElement(', 'HTMLBaseElement(', 'HTMLBodyElement(', 'HTMLButtonElement(', 'HTMLCanvasElement(', 'HTMLCollection(', 'HTMLContentElement(', 'HTMLDListElement(', 'HTMLDataListElement(', 'HTMLDialogElement(', 'HTMLDirectoryElement(', 'HTMLDivElement(', 'HTMLDocument(', 'HTMLElement(', 'HTMLEmbedElement(', 'HTMLFieldSetElement(', 'HTMLFontElement(', 'HTMLFormControlsCollection(', 'HTMLFormElement(', 'HTMLFrameElement(', 'HTMLFrameSetElement(', 'HTMLHRElement(', 'HTMLHeadElement(', 'HTMLHeadingElement(', 'HTMLHtmlElement(', 'HTMLIFrameElement(', 'HTMLImageElement(', 'HTMLInputElement(', 'HTMLKeygenElement(', 'HTMLLIElement(', 'HTMLLabelElement(', 'HTMLLegendElement(', 'HTMLLinkElement(', 'HTMLMapElement(', 'HTMLMarqueeElement(', 'HTMLMediaElement(', 'HTMLMenuElement(', 'HTMLMetaElement(', 'HTMLMeterElement(', 'HTMLModElement(', 'HTMLOListElement(', 'HTMLObjectElement(', 'HTMLOptGroupElement(', 'HTMLOptionElement(', 'HTMLOptionsCollection(', 'HTMLOutputElement(', 'HTMLParagraphElement(', 'HTMLParamElement(', 'HTMLPreElement(', 'HTMLProgressElement(', 'HTMLQuoteElement(', 'HTMLScriptElement(', 'HTMLSelectElement(', 'HTMLShadowElement(', 'HTMLSourceElement(', 'HTMLSpanElement(', 'HTMLStyleElement(', 'HTMLTableCaptionElement(', 'HTMLTableCellElement(', 'HTMLTableColElement(', 'HTMLTableElement(', 'HTMLTableRowElement(', 'HTMLTableSectionElement(', 'HTMLTemplateElement(', 'HTMLTextAreaElement(', 'HTMLTitleElement(', 'HTMLTrackElement(', 'HTMLUListElement(', 'HTMLUnknownElement(', 'HTMLVideoElement(', 'HashChangeEvent(', 'History(', 'IDBCursor(', 'IDBCursorWithValue(', 'IDBDatabase(', 'IDBFactory(', 'IDBIndex(', 'IDBKeyRange(', 'IDBObjectStore(', 'IDBOpenDBRequest(', 'IDBRequest(', 'IDBTransaction(', 'IDBVersionChangeEvent(', 'Image(', 'ImageBitmap(', 'ImageData(', 'Infinity', 'InputMethodContext(', 'Int16Array(', 'Int32Array(', 'Int8Array(', 'Intl', 'JSON', 'KeyboardEvent(', 'Location(', 'Map(', 'Math', 'MediaElementAudioSourceNode(', 'MediaError(', 'MediaKeyError(', 'MediaKeyEvent(', 'MediaList(', 'MediaSource(', 'MediaStreamAudioDestinationNode(', 'MediaStreamAudioSourceNode(', 'MediaStreamEvent(', 'MediaStreamTrack(', 'MessageChannel(', 'MessageEvent(', 'MessagePort(', 'MimeType(', 'MimeTypeArray(', 'MouseEvent(', 'MutationEvent(', 'MutationObserver(', 'MutationRecord(', 'NaN', 'NamedNodeMap(', 'Navigator(', 'Node(', 'NodeFilter(', 'NodeIterator(', 'NodeList(', 'Notation(', 'Notification(', 'Number(', 'Object(', 'OfflineAudioCompletionEvent(', 'OfflineAudioContext(', 'Option(', 'OscillatorNode(', 'OverflowEvent(', 'PERSISTENT', 'PageTransitionEvent(', 'Path2D(', 'Performance(', 'PerformanceEntry(', 'PerformanceMark(', 'PerformanceMeasure(', 'PerformanceNavigation(', 'PerformanceResourceTiming(', 'PerformanceTiming(', 'PeriodicWave(', 'Plugin(', 'PluginArray(', 'PopStateEvent(', 'ProcessingInstruction(', 'ProgressEvent(', 'Promise(', 'Proxy', 'RGBColor(', 'RTCIceCandidate(', 'RTCSessionDescription(', 'Range(', 'RangeError(', 'Rect(', 'ReferenceError(', 'RegExp(', 'SVGAElement(', 'SVGAltGlyphDefElement(', 'SVGAltGlyphElement(', 'SVGAltGlyphItemElement(', 'SVGAngle(', 'SVGAnimateElement(', 'SVGAnimateMotionElement(', 'SVGAnimateTransformElement(', 'SVGAnimatedAngle(', 'SVGAnimatedBoolean(', 'SVGAnimatedEnumeration(', 'SVGAnimatedInteger(', 'SVGAnimatedLength(', 'SVGAnimatedLengthList(', 'SVGAnimatedNumber(', 'SVGAnimatedNumberList(', 'SVGAnimatedPreserveAspectRatio(', 'SVGAnimatedRect(', 'SVGAnimatedString(', 'SVGAnimatedTransformList(', 'SVGAnimationElement(', 'SVGCircleElement(', 'SVGClipPathElement(', 'SVGComponentTransferFunctionElement(', 'SVGCursorElement(', 'SVGDefsElement(', 'SVGDescElement(', 'SVGDiscardElement(', 'SVGElement(', 'SVGEllipseElement(', 'SVGFEBlendElement(', 'SVGFEColorMatrixElement(', 'SVGFEComponentTransferElement(', 'SVGFECompositeElement(', 'SVGFEConvolveMatrixElement(', 'SVGFEDiffuseLightingElement(', 'SVGFEDisplacementMapElement(', 'SVGFEDistantLightElement(', 'SVGFEDropShadowElement(', 'SVGFEFloodElement(', 'SVGFEFuncAElement(', 'SVGFEFuncBElement(', 'SVGFEFuncGElement(', 'SVGFEFuncRElement(', 'SVGFEGaussianBlurElement(', 'SVGFEImageElement(', 'SVGFEMergeElement(', 'SVGFEMergeNodeElement(', 'SVGFEMorphologyElement(', 'SVGFEOffsetElement(', 'SVGFEPointLightElement(', 'SVGFESpecularLightingElement(', 'SVGFESpotLightElement(', 'SVGFETileElement(', 'SVGFETurbulenceElement(', 'SVGFilterElement(', 'SVGFontElement(', 'SVGFontFaceElement(', 'SVGFontFaceFormatElement(', 'SVGFontFaceNameElement(', 'SVGFontFaceSrcElement(', 'SVGFontFaceUriElement(', 'SVGForeignObjectElement(', 'SVGGElement(', 'SVGGeometryElement(', 'SVGGlyphElement(', 'SVGGlyphRefElement(', 'SVGGradientElement(', 'SVGGraphicsElement(', 'SVGHKernElement(', 'SVGImageElement(', 'SVGLength(', 'SVGLengthList(', 'SVGLineElement(', 'SVGLinearGradientElement(', 'SVGMPathElement(', 'SVGMarkerElement(', 'SVGMaskElement(', 'SVGMatrix(', 'SVGMetadataElement(', 'SVGMissingGlyphElement(', 'SVGNumber(', 'SVGNumberList(', 'SVGPathElement(', 'SVGPathSeg(', 'SVGPathSegArcAbs(', 'SVGPathSegArcRel(', 'SVGPathSegClosePath(', 'SVGPathSegCurvetoCubicAbs(', 'SVGPathSegCurvetoCubicRel(', 'SVGPathSegCurvetoCubicSmoothAbs(', 'SVGPathSegCurvetoCubicSmoothRel(', 'SVGPathSegCurvetoQuadraticAbs(', 'SVGPathSegCurvetoQuadraticRel(', 'SVGPathSegCurvetoQuadraticSmoothAbs(', 'SVGPathSegCurvetoQuadraticSmoothRel(', 'SVGPathSegLinetoAbs(', 'SVGPathSegLinetoHorizontalAbs(', 'SVGPathSegLinetoHorizontalRel(', 'SVGPathSegLinetoRel(', 'SVGPathSegLinetoVerticalAbs(', 'SVGPathSegLinetoVerticalRel(', 'SVGPathSegList(', 'SVGPathSegMovetoAbs(', 'SVGPathSegMovetoRel(', 'SVGPatternElement(', 'SVGPoint(', 'SVGPointList(', 'SVGPolygonElement(', 'SVGPolylineElement(', 'SVGPreserveAspectRatio(', 'SVGRadialGradientElement(', 'SVGRect(', 'SVGRectElement(', 'SVGRenderingIntent(', 'SVGSVGElement(', 'SVGScriptElement(', 'SVGSetElement(', 'SVGStopElement(', 'SVGStringList(', 'SVGStyleElement(', 'SVGSwitchElement(', 'SVGSymbolElement(', 'SVGTSpanElement(', 'SVGTextContentElement(', 'SVGTextElement(', 'SVGTextPathElement(', 'SVGTextPositioningElement(', 'SVGTitleElement(', 'SVGTransform(', 'SVGTransformList(', 'SVGUnitTypes(', 'SVGUseElement(', 'SVGVKernElement(', 'SVGViewElement(', 'SVGViewSpec(', 'SVGZoomEvent(', 'Screen(', 'ScriptProcessorNode(', 'Selection(', 'Set(', 'ShadowRoot(', 'SharedWorker(', 'SpeechSynthesisEvent(', 'SpeechSynthesisUtterance(', 'Storage(', 'StorageEvent(', 'String(', 'StyleSheet(', 'StyleSheetList(', 'Symbol(', 'SyntaxError(', 'TEMPORARY', 'Text(', 'TextEvent(', 'TextMetrics(', 'TextTrack(', 'TextTrackCue(', 'TextTrackCueList(', 'TextTrackList(', 'TimeRanges(', 'Touch(', 'TouchEvent(', 'TouchList(', 'TrackEvent(', 'TransitionEvent(', 'TreeWalker(', 'TypeError(', 'UIEvent(', 'URIError(', 'URL(', 'Uint16Array(', 'Uint32Array(', 'Uint8Array(', 'Uint8ClampedArray(', 'VTTCue(', 'ValidityState(', 'WaveShaperNode(', 'WeakMap(', 'WeakSet(', 'WebGLActiveInfo(', 'WebGLBuffer(', 'WebGLContextEvent(', 'WebGLFramebuffer(', 'WebGLProgram(', 'WebGLRenderbuffer(', 'WebGLRenderingContext(', 'WebGLShader(', 'WebGLShaderPrecisionFormat(', 'WebGLTexture(', 'WebGLUniformLocation(', 'WebKitAnimationEvent(', 'WebKitCSSFilterRule(', 'WebKitCSSFilterValue(', 'WebKitCSSMatrix(', 'WebKitCSSTransformValue(', 'WebKitGamepad(', 'WebKitMutationObserver(', 'WebKitPoint(', 'WebKitTransitionEvent(', 'WebSocket(', 'WheelEvent(', 'Window(', 'Worker(', 'XMLDocument(', 'XMLHttpRequest(', 'XMLHttpRequestProgressEvent(', 'XMLHttpRequestUpload(', 'XMLSerializer(', 'XPathEvaluator(', 'XPathExpression(', 'XPathResult(', 'XSLTProcessor(', 'addEventListener(', 'alert(', 'applicationCache', 'atob(', 'blur(', 'btoa(', 'cancelAnimationFrame(', 'captureEvents(', 'chrome', 'clearInterval(', 'clearTimeout(', 'clientInformation', 'close(', 'closed', 'confirm(', 'console', 'crypto', 'decodeURI(', 'decodeURIComponent(', 'defaultStatus', 'defaultstatus', 'devicePixelRatio', 'dispatchEvent(', 'document', 'encodeURI(', 'encodeURIComponent(', 'escape(', 'eval(', 'event', 'external', 'find(', 'focus(', 'frameElement', 'frames', 'getComputedStyle(', 'getMatchedCSSRules(', 'getSelection(', 'history', 'indexedDB', 'innerHeight', 'innerWidth', 'isFinite(', 'isNaN(', 'length', 'localStorage', 'location', 'locationbar', 'matchMedia(', 'menubar', 'moveBy(', 'moveTo(', 'name', 'navigator', 'offscreenBuffering', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforeunload', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncuechange', 'ondblclick', 'ondevicemotion', 'ondeviceorientation', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'onhashchange', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onlanguagechange', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmessage', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onoffline', 'ononline', 'onpagehide', 'onpageshow', 'onpause', 'onplay', 'onplaying', 'onpopstate', 'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onshow', 'onstalled', 'onstorage', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'ontransitionend', 'onunload', 'onvolumechange', 'onwaiting', 'onwebkitanimationend', 'onwebkitanimationiteration', 'onwebkitanimationstart', 'onwebkittransitionend', 'onwheel', 'open(', 'openDatabase(', 'opener', 'outerHeight', 'outerWidth', 'pageXOffset', 'pageYOffset', 'parent', 'parseFloat(', 'parseInt(', 'performance', 'personalbar', 'postMessage(', 'print(', 'prompt(', 'releaseEvents(', 'removeEventListener(', 'requestAnimationFrame(', 'resizeBy(', 'resizeTo(', 'screen', 'screenLeft', 'screenTop', 'screenX', 'screenY', 'scroll(', 'scrollBy(', 'scrollTo(', 'scrollX', 'scrollY', 'scrollbars', 'self', 'sessionStorage', 'setInterval(', 'setTimeout(', 'showModalDialog(', 'speechSynthesis', 'status', 'statusbar', 'stop(', 'styleMedia', 'toolbar', 'top', 'undefined', 'unescape(', 'webkitAudioContext(', 'webkitCancelAnimationFrame(', 'webkitCancelRequestAnimationFrame(', 'webkitConvertPointFromNodeToPage(', 'webkitConvertPointFromPageToNode(', 'webkitIDBCursor(', 'webkitIDBDatabase(', 'webkitIDBFactory(', 'webkitIDBIndex(', 'webkitIDBKeyRange(', 'webkitIDBObjectStore(', 'webkitIDBRequest(', 'webkitIDBTransaction(', 'webkitIndexedDB', 'webkitMediaStream(', 'webkitOfflineAudioContext(', 'webkitRTCPeerConnection(', 'webkitRequestAnimationFrame(', 'webkitRequestFileSystem(', 'webkitResolveLocalFileSystemURL(', 'webkitSpeechGrammar(', 'webkitSpeechGrammarList(', 'webkitSpeechRecognition(', 'webkitSpeechRecognitionError(', 'webkitSpeechRecognitionEvent(', 'webkitStorageInfo', 'webkitURL(', 'window']

let s:arrays = ['arguments', 'caller', 'concat(', 'constructor(', 'entries(', 'every(', 'fill(', 'filter(', 'find(', 'findIndex(', 'forEach(', 'indexOf(', 'isArray(', 'join(', 'keys(', 'lastIndexOf(', 'length', 'map(', 'name', 'observe(', 'pop(', 'prototype', 'push(', 'reduce(', 'reduceRight(', 'reverse(', 'shift(', 'slice(', 'some(', 'sort(', 'splice(', 'toLocaleString(', 'toString(', 'unobserve(', 'unshift(', 'values(']

let s:dates = ['UTC(', 'arguments', 'caller', 'constructor(', 'getDate(', 'getDay(', 'getFullYear(', 'getHours(', 'getMilliseconds(', 'getMinutes(', 'getMonth(', 'getSeconds(', 'getTime(', 'getTimezoneOffset(', 'getUTCDate(', 'getUTCDay(', 'getUTCFullYear(', 'getUTCHours(', 'getUTCMilliseconds(', 'getUTCMinutes(', 'getUTCMonth(', 'getUTCSeconds(', 'getYear(', 'length', 'name', 'now(', 'parse(', 'prototype', 'setDate(', 'setFullYear(', 'setHours(', 'setMilliseconds(', 'setMinutes(', 'setMonth(', 'setSeconds(', 'setTime(', 'setUTCDate(', 'setUTCFullYear(', 'setUTCHours(', 'setUTCMilliseconds(', 'setUTCMinutes(', 'setUTCMonth(', 'setUTCSeconds(', 'setYear(', 'toDateString(', 'toGMTString(', 'toISOString(', 'toJSON(', 'toLocaleDateString(', 'toLocaleString(', 'toLocaleTimeString(', 'toString(', 'toTimeString(', 'toUTCString(', 'valueOf(']

let s:funcs = ['apply(', 'arguments', 'bind(', 'call(', 'caller', 'constructor(', 'length', 'name', 'prototype', 'prototype(', 'toString(']

let s:maths = ['E', 'LN10', 'LN2', 'LOG10E', 'LOG2E', 'PI', 'SQRT1_2', 'SQRT2', 'abs(', 'acos(', 'acosh(', 'asin(', 'asinh(', 'atan(', 'atan2(', 'atanh(', 'cbrt(', 'ceil(', 'clz32(', 'cos(', 'cosh(', 'exp(', 'expm1(', 'floor(', 'fround(', 'hypot(', 'imul(', 'log(', 'log10(', 'log1p(', 'log2(', 'max(', 'min(', 'pow(', 'random(', 'round(', 'sign(', 'sin(', 'sinh(', 'sqrt(', 'tan(', 'tanh(', 'trunc(']

let s:numbs = ['EPSILON', 'MAX_SAFE_INTEGER', 'MAX_VALUE', 'MIN_SAFE_INTEGER', 'MIN_VALUE', 'NEGATIVE_INFINITY', 'NaN', 'POSITIVE_INFINITY', 'arguments', 'caller', 'constructor(', 'isFinite(', 'isInteger(', 'isNaN(', 'isSafeInteger(', 'length', 'name', 'parseFloat(', 'parseInt(', 'prototype', 'toExponential(', 'toFixed(', 'toLocaleString(', 'toPrecision(', 'toString(', 'valueOf(']

let s:locas = ['ancestorOrigins', 'assign(', 'hash', 'host', 'hostname', 'href', 'origin', 'pathname', 'port', 'protocol', 'reload(', 'replace(', 'search', 'toString(', 'valueOf(']

let s:objes = ['arguments', 'caller', 'constructor(', 'create(', 'defineProperties(', 'defineProperty(', 'deliverChangeRecords(', 'freeze(', 'getNotifier(', 'getOwnPropertyDescriptor(', 'getOwnPropertyNames(', 'getOwnPropertySymbols(', 'getPrototypeOf(', 'hasOwnProperty(', 'is(', 'isExtensible(', 'isFrozen(', 'isPrototypeOf(', 'isSealed(', 'keys(', 'length', 'name', 'observe(', 'preventExtensions(', 'propertyIsEnumerable(', 'prototype', 'seal(', 'setPrototypeOf(', 'toLocaleString(', 'toString(', 'unobserve(', 'valueOf(']

let s:reges = ['arguments', 'caller', 'compile(', 'constructor(', 'exec(', 'global', 'ignoreCase', 'input', 'lastIndex', 'lastMatch', 'lastParen', 'leftContext', 'length', 'multiline', 'name', 'prototype', 'rightContext', 'source', 'test(', 'toString(']

let s:stris = ['anchor(', 'arguments', 'big(', 'blink(', 'bold(', 'caller', 'charAt(', 'charCodeAt(', 'concat(', 'constructor(', 'contains(', 'endsWith(', 'fixed(', 'fontcolor(', 'fontsize(', 'fromCharCode(', 'indexOf(', 'italics(', 'lastIndexOf(', 'length', 'link(', 'localeCompare(', 'match(', 'name', 'normalize(', 'prototype', 'repeat(', 'replace(', 'search(', 'slice(', 'small(', 'split(', 'startsWith(', 'strike(', 'sub(', 'substr(', 'substring(', 'sup(', 'toLocaleLowerCase(', 'toLocaleUpperCase(', 'toLowerCase(', 'toString(', 'toUpperCase(', 'trim(', 'trimLeft(', 'trimRight(', 'valueOf(']


let s:ctxs = ['arc(', 'arcTo(', 'arguments', 'beginPath(', 'bezierCurveTo(', 'caller', 'canvas', 'clearRect(', 'clearShadow(', 'clip(', 'closePath(', 'constructor(', 'createImageData(', 'createLinearGradient(', 'createPattern(', 'createRadialGradient(', 'drawFocusIfNeeded(', 'drawImage(', 'drawImageFromRect(', 'ellipse(', 'fill(', 'fillRect(', 'fillStyle', 'fillText(', 'font', 'getContextAttributes(', 'getImageData(', 'getLineDash(', 'globalAlpha', 'globalCompositeOperation', 'imageSmoothingEnabled', 'isPointInPath(', 'isPointInStroke(', 'length', 'lineCap', 'lineDashOffset', 'lineJoin', 'lineTo(', 'lineWidth', 'measureText(', 'miterLimit', 'moveTo(', 'name', 'prototype', 'putImageData(', 'quadraticCurveTo(', 'rect(', 'resetTransform(', 'restore(', 'rotate(', 'save(', 'scale(', 'setAlpha(', 'setCompositeOperation(', 'setFillColor(', 'setLineCap(', 'setLineDash(', 'setLineJoin(', 'setLineWidth(', 'setMiterLimit(', 'setShadow(', 'setStrokeColor(', 'setTransform(', 'shadowBlur', 'shadowColor', 'shadowOffsetX', 'shadowOffsetY', 'stroke(', 'strokeRect(', 'strokeStyle', 'strokeText(', 'textAlign', 'textBaseline', 'toString(', 'transform(', 'translate(', 'webkitImageSmoothingEnabled']

let s:storage = ['arguments', 'caller', 'clear(', 'constructor(', 'getItem(', 'key(', 'length', 'name', 'prototype', 'removeItem(', 'setItem(', 'toString(']

let s:bodys = ['ALLOW_KEYBOARD_INPUT', 'ATTRIBUTE_NODE', 'CDATA_SECTION_NODE', 'COMMENT_NODE', 'DOCUMENT_FRAGMENT_NODE', 'DOCUMENT_NODE', 'DOCUMENT_POSITION_CONTAINED_BY', 'DOCUMENT_POSITION_CONTAINS', 'DOCUMENT_POSITION_DISCONNECTED', 'DOCUMENT_POSITION_FOLLOWING', 'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC', 'DOCUMENT_POSITION_PRECEDING', 'DOCUMENT_TYPE_NODE', 'ELEMENT_NODE', 'ENTITY_NODE', 'ENTITY_REFERENCE_NODE', 'NOTATION_NODE', 'PROCESSING_INSTRUCTION_NODE', 'TEXT_NODE', 'aLink', 'accessKey', 'addEventListener(', 'animate(', 'appendChild(', 'attributes', 'background', 'baseURI', 'bgColor', 'blur(', 'childElementCount', 'childNodes', 'children', 'classList', 'className', 'click(', 'clientHeight', 'clientLeft', 'clientTop', 'clientWidth', 'cloneNode(', 'compareDocumentPosition(', 'contains(', 'contentEditable', 'createShadowRoot(', 'dataset', 'dir', 'dispatchEvent(', 'draggable', 'firstChild', 'firstElementChild', 'focus(', 'getAttribute(', 'getAttributeNS(', 'getAttributeNode(', 'getAttributeNodeNS(', 'getBoundingClientRect(', 'getClientRects(', 'getDestinationInsertionPoints(', 'getElementsByClassName(', 'getElementsByTagName(', 'getElementsByTagNameNS(', 'hasAttribute(', 'hasAttributeNS(', 'hasAttributes(', 'hasChildNodes(', 'hidden', 'id', 'innerHTML', 'innerText', 'insertAdjacentElement(', 'insertAdjacentHTML(', 'insertAdjacentText(', 'insertBefore(', 'isContentEditable', 'isDefaultNamespace(', 'isEqualNode(', 'isSameNode(', 'lang', 'lastChild', 'lastElementChild', 'link', 'localName', 'lookupNamespaceURI(', 'lookupPrefix(', 'matches(', 'namespaceURI', 'nextElementSibling', 'nextSibling', 'nodeName', 'nodeType', 'nodeValue', 'normalize(', 'offsetHeight', 'offsetLeft', 'offsetParent', 'offsetTop', 'offsetWidth', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforecopy', 'onbeforecut', 'onbeforepaste', 'onbeforeunload', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncopy', 'oncuechange', 'oncut', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'onhashchange', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onlanguagechange', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmessage', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onoffline', 'ononline', 'onpagehide', 'onpageshow', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onpopstate', 'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onselectstart', 'onshow', 'onstalled', 'onstorage', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onunload', 'onvolumechange', 'onwaiting', 'onwebkitfullscreenchange', 'onwebkitfullscreenerror', 'onwheel', 'outerHTML', 'outerText', 'ownerDocument', 'parentElement', 'parentNode', 'prefix', 'previousElementSibling', 'previousSibling', 'querySelector(', 'querySelectorAll(', 'remove(', 'removeAttribute(', 'removeAttributeNS(', 'removeAttributeNode(', 'removeChild(', 'removeEventListener(', 'replaceChild(', 'requestPointerLock(', 'scrollByLines(', 'scrollByPages(', 'scrollHeight', 'scrollIntoView(', 'scrollIntoViewIfNeeded(', 'scrollLeft', 'scrollTop', 'scrollWidth', 'setAttribute(', 'setAttributeNS(', 'setAttributeNode(', 'setAttributeNodeNS(', 'shadowRoot', 'spellcheck', 'style', 'tabIndex', 'tagName', 'text', 'textContent', 'title', 'translate', 'vLink', 'webkitMatchesSelector(', 'webkitRequestFullScreen(', 'webkitRequestFullscreen(', 'webkitRequestPointerLock(', 'webkitdropzone']

let s:docus = ['ATTRIBUTE_NODE', 'CDATA_SECTION_NODE', 'COMMENT_NODE', 'DOCUMENT_FRAGMENT_NODE', 'DOCUMENT_NODE', 'DOCUMENT_POSITION_CONTAINED_BY', 'DOCUMENT_POSITION_CONTAINS', 'DOCUMENT_POSITION_DISCONNECTED', 'DOCUMENT_POSITION_FOLLOWING', 'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC', 'DOCUMENT_POSITION_PRECEDING', 'DOCUMENT_TYPE_NODE', 'ELEMENT_NODE', 'ENTITY_NODE', 'ENTITY_REFERENCE_NODE', 'NOTATION_NODE', 'PROCESSING_INSTRUCTION_NODE', 'TEXT_NODE', 'URL', 'activeElement', 'addEventListener(', 'adoptNode(', 'alinkColor', 'all', 'anchors', 'appendChild(', 'applets', 'baseURI', 'bgColor', 'body', 'captureEvents(', 'caretRangeFromPoint(', 'characterSet', 'charset', 'childElementCount', 'childNodes', 'children', 'clear(', 'cloneNode(', 'close(', 'compareDocumentPosition(', 'compatMode', 'contains(', 'contentType', 'cookie', 'createAttribute(', 'createAttributeNS(', 'createCDATASection(', 'createComment(', 'createDocumentFragment(', 'createElement(', 'createElementNS(', 'createEvent(', 'createExpression(', 'createNSResolver(', 'createNodeIterator(', 'createProcessingInstruction(', 'createRange(', 'createTextNode(', 'createTreeWalker(', 'currentScript', 'defaultCharset', 'defaultView', 'designMode', 'dir', 'dispatchEvent(', 'doctype', 'documentElement', 'documentURI', 'domain', 'elementFromPoint(', 'embeds', 'evaluate(', 'execCommand(', 'exitPointerLock(', 'fgColor', 'firstChild', 'firstElementChild', 'fonts', 'forms', 'getCSSCanvasContext(', 'getElementById(', 'getElementsByClassName(', 'getElementsByName(', 'getElementsByTagName(', 'getElementsByTagNameNS(', 'getOverrideStyle(', 'getSelection(', 'hasChildNodes(', 'hasFocus(', 'head', 'hidden', 'images', 'implementation', 'importNode(', 'inputEncoding', 'insertBefore(', 'isDefaultNamespace(', 'isEqualNode(', 'isSameNode(', 'lastChild', 'lastElementChild', 'lastModified', 'linkColor', 'links', 'localName', 'location', 'lookupNamespaceURI(', 'lookupPrefix(', 'namespaceURI', 'nextSibling', 'nodeName', 'nodeType', 'nodeValue', 'normalize(', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforecopy', 'onbeforecut', 'onbeforepaste', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncopy', 'oncuechange', 'oncut', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onpointerlockchange', 'onpointerlockerror', 'onprogress', 'onratechange', 'onreadystatechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onselectionchange', 'onselectstart', 'onshow', 'onstalled', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onvolumechange', 'onwaiting', 'onwebkitfullscreenchange', 'onwebkitfullscreenerror', 'onwebkitpointerlockchange', 'onwebkitpointerlockerror', 'onwheel', 'open(', 'ownerDocument', 'parentElement', 'parentNode', 'plugins', 'pointerLockElement', 'preferredStylesheetSet', 'previousSibling', 'queryCommandEnabled(', 'queryCommandIndeterm(', 'queryCommandState(', 'queryCommandSupported(', 'queryCommandValue(', 'querySelector(', 'querySelectorAll(', 'readyState', 'referrer', 'registerElement(', 'releaseEvents(', 'removeChild(', 'removeEventListener(', 'replaceChild(', 'rootElement', 'scripts', 'selectedStylesheetSet', 'styleSheets', 'textContent', 'title', 'visibilityState', 'vlinkColor', 'webkitCancelFullScreen(', 'webkitCurrentFullScreenElement', 'webkitExitFullscreen(', 'webkitExitPointerLock(', 'webkitFullScreenKeyboardInputAllowed', 'webkitFullscreenElement', 'webkitFullscreenEnabled', 'webkitHidden', 'webkitIsFullScreen', 'webkitPointerLockElement', 'webkitVisibilityState', 'write(', 'writeln(', 'xmlEncoding', 'xmlStandalone', 'xmlVersion']

let s:hists = ['arguments', 'back(', 'caller', 'constructor(', 'forward(', 'go(', 'length', 'name', 'prototype', 'pushState(', 'replaceState(', 'toString(']

let s:imags = ['ALLOW_KEYBOARD_INPUT', 'ATTRIBUTE_NODE', 'CDATA_SECTION_NODE', 'COMMENT_NODE', 'DOCUMENT_FRAGMENT_NODE', 'DOCUMENT_NODE', 'DOCUMENT_POSITION_CONTAINED_BY', 'DOCUMENT_POSITION_CONTAINS', 'DOCUMENT_POSITION_DISCONNECTED', 'DOCUMENT_POSITION_FOLLOWING', 'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC', 'DOCUMENT_POSITION_PRECEDING', 'DOCUMENT_TYPE_NODE', 'ELEMENT_NODE', 'ENTITY_NODE', 'ENTITY_REFERENCE_NODE', 'NOTATION_NODE', 'PROCESSING_INSTRUCTION_NODE', 'TEXT_NODE', 'accessKey', 'addEventListener(', 'align', 'alt', 'animate(', 'appendChild(', 'arguments', 'attributes', 'baseURI', 'blur(', 'border', 'caller', 'childElementCount', 'childNodes', 'children', 'classList', 'className', 'click(', 'clientHeight', 'clientLeft', 'clientTop', 'clientWidth', 'cloneNode(', 'compareDocumentPosition(', 'complete', 'constructor(', 'contains(', 'contentEditable', 'createShadowRoot(', 'crossOrigin', 'dataset', 'dir', 'dispatchEvent(', 'draggable', 'firstChild', 'firstElementChild', 'focus(', 'getAttribute(', 'getAttributeNS(', 'getAttributeNode(', 'getAttributeNodeNS(', 'getBoundingClientRect(', 'getClientRects(', 'getDestinationInsertionPoints(', 'getElementsByClassName(', 'getElementsByTagName(', 'getElementsByTagNameNS(', 'hasAttribute(', 'hasAttributeNS(', 'hasAttributes(', 'hasChildNodes(', 'height', 'hidden', 'hspace', 'id', 'innerHTML', 'innerText', 'insertAdjacentElement(', 'insertAdjacentHTML(', 'insertAdjacentText(', 'insertBefore(', 'isContentEditable', 'isDefaultNamespace(', 'isEqualNode(', 'isMap', 'isSameNode(', 'lang', 'lastChild', 'lastElementChild', 'length', 'localName', 'longDesc', 'lookupNamespaceURI(', 'lookupPrefix(', 'lowsrc', 'matches(', 'name', 'namespaceURI', 'naturalHeight', 'naturalWidth', 'nextElementSibling', 'nextSibling', 'nodeName', 'nodeType', 'nodeValue', 'normalize(', 'offsetHeight', 'offsetLeft', 'offsetParent', 'offsetTop', 'offsetWidth', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforecopy', 'onbeforecut', 'onbeforepaste', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncopy', 'oncuechange', 'oncut', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onselectstart', 'onshow', 'onstalled', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onvolumechange', 'onwaiting', 'onwebkitfullscreenchange', 'onwebkitfullscreenerror', 'onwheel', 'outerHTML', 'outerText', 'ownerDocument', 'parentElement', 'parentNode', 'prefix', 'previousElementSibling', 'previousSibling', 'prototype', 'querySelector(', 'querySelectorAll(', 'remove(', 'removeAttribute(', 'removeAttributeNS(', 'removeAttributeNode(', 'removeChild(', 'removeEventListener(', 'replaceChild(', 'requestPointerLock(', 'scrollByLines(', 'scrollByPages(', 'scrollHeight', 'scrollIntoView(', 'scrollIntoViewIfNeeded(', 'scrollLeft', 'scrollTop', 'scrollWidth', 'setAttribute(', 'setAttributeNS(', 'setAttributeNode(', 'setAttributeNodeNS(', 'shadowRoot', 'spellcheck', 'src', 'srcset', 'style', 'tabIndex', 'tagName', 'textContent', 'title', 'translate', 'useMap', 'vspace', 'webkitMatchesSelector(', 'webkitRequestFullScreen(', 'webkitRequestFullscreen(', 'webkitRequestPointerLock(', 'webkitdropzone', 'width', 'x', 'y']

let s:navis = ['appCodeName', 'appName', 'appVersion', 'arguments', 'caller', 'constructor(', 'cookieEnabled', 'doNotTrack', 'geolocation', 'getGamepads(', 'getMediaDevices(', 'getStorageUpdates(', 'hardwareConcurrency', 'javaEnabled(', 'language', 'languages', 'length', 'maxTouchPoints', 'mimeTypes', 'name', 'onLine', 'platform', 'plugins', 'product', 'productSub', 'prototype', 'registerProtocolHandler(', 'toString(', 'userAgent', 'vendor', 'vendorSub', 'vibrate(', 'webkitGetGamepads(', 'webkitGetUserMedia(', 'webkitPersistentStorage', 'webkitTemporaryStorage']

let s:scres = ['arguments', 'availHeight', 'availLeft', 'availTop', 'availWidth', 'caller', 'colorDepth', 'constructor(', 'height', 'length', 'name', 'pixelDepth', 'prototype', 'toString(', 'width']

let s:styls = ['alignContent', 'alignItems', 'alignSelf', 'alignmentBaseline', 'all', 'backfaceVisibility', 'background', 'backgroundAttachment', 'backgroundBlendMode', 'backgroundClip', 'backgroundColor', 'backgroundImage', 'backgroundOrigin', 'backgroundPosition', 'backgroundPositionX', 'backgroundPositionY', 'backgroundRepeat', 'backgroundRepeatX', 'backgroundRepeatY', 'backgroundSize', 'baselineShift', 'border', 'borderBottom', 'borderBottomColor', 'borderBottomLeftRadius', 'borderBottomRightRadius', 'borderBottomStyle', 'borderBottomWidth', 'borderCollapse', 'borderColor', 'borderImage', 'borderImageOutset', 'borderImageRepeat', 'borderImageSlice', 'borderImageSource', 'borderImageWidth', 'borderLeft', 'borderLeftColor', 'borderLeftStyle', 'borderLeftWidth', 'borderRadius', 'borderRight', 'borderRightColor', 'borderRightStyle', 'borderRightWidth', 'borderSpacing', 'borderStyle', 'borderTop', 'borderTopColor', 'borderTopLeftRadius', 'borderTopRightRadius', 'borderTopStyle', 'borderTopWidth', 'borderWidth', 'bottom', 'boxShadow', 'boxSizing', 'bufferedRendering', 'captionSide', 'clear', 'clip', 'clipPath', 'clipRule', 'color', 'colorInterpolation', 'colorInterpolationFilters', 'colorRendering', 'content', 'counterIncrement', 'counterReset', 'cssText', 'cursor', 'direction', 'display', 'dominantBaseline', 'emptyCells', 'enableBackground', 'fill', 'fillOpacity', 'fillRule', 'filter', 'flex', 'flexBasis', 'flexDirection', 'flexFlow', 'flexGrow', 'flexShrink', 'flexWrap', 'float', 'floodColor', 'floodOpacity', 'font', 'fontFamily', 'fontKerning', 'fontSize', 'fontStretch', 'fontStyle', 'fontVariant', 'fontVariantLigatures', 'fontWeight', 'getPropertyCSSValue(', 'getPropertyPriority(', 'getPropertyValue(', 'glyphOrientationHorizontal', 'glyphOrientationVertical', 'height', 'imageRendering', 'item(', 'justifyContent', 'left', 'length', 'letterSpacing', 'lightingColor', 'lineHeight', 'listStyle', 'listStyleImage', 'listStylePosition', 'listStyleType', 'margin', 'marginBottom', 'marginLeft', 'marginRight', 'marginTop', 'marker', 'markerEnd', 'markerMid', 'markerStart', 'mask', 'maskType', 'maxHeight', 'maxWidth', 'maxZoom', 'minHeight', 'minWidth', 'minZoom', 'objectFit', 'objectPosition', 'opacity', 'order', 'orientation', 'orphans', 'outline', 'outlineColor', 'outlineOffset', 'outlineStyle', 'outlineWidth', 'overflow', 'overflowWrap', 'overflowX', 'overflowY', 'padding', 'paddingBottom', 'paddingLeft', 'paddingRight', 'paddingTop', 'page', 'pageBreakAfter', 'pageBreakBefore', 'pageBreakInside', 'paintOrder', 'parentRule', 'perspective', 'perspectiveOrigin', 'pointerEvents', 'position', 'quotes', 'removeProperty(', 'resize', 'right', 'setProperty(', 'shapeImageThreshold', 'shapeMargin', 'shapeOutside', 'shapeRendering', 'size', 'speak', 'src', 'stopColor', 'stopOpacity', 'stroke', 'strokeDasharray', 'strokeDashoffset', 'strokeLinecap', 'strokeLinejoin', 'strokeMiterlimit', 'strokeOpacity', 'strokeWidth', 'tabSize', 'tableLayout', 'textAlign', 'textAnchor', 'textDecoration', 'textIndent', 'textLineThroughColor', 'textLineThroughMode', 'textLineThroughStyle', 'textLineThroughWidth', 'textOverflow', 'textOverlineColor', 'textOverlineMode', 'textOverlineStyle', 'textOverlineWidth', 'textRendering', 'textShadow', 'textTransform', 'textUnderlineColor', 'textUnderlineMode', 'textUnderlineStyle', 'textUnderlineWidth', 'top', 'touchAction', 'transform', 'transformOrigin', 'transformStyle', 'transition', 'transitionDelay', 'transitionDuration', 'transitionProperty', 'transitionTimingFunction', 'unicodeBidi', 'unicodeRange', 'userZoom', 'vectorEffect', 'verticalAlign', 'visibility', 'webkitAnimation', 'webkitAnimationDelay', 'webkitAnimationDirection', 'webkitAnimationDuration', 'webkitAnimationFillMode', 'webkitAnimationIterationCount', 'webkitAnimationName', 'webkitAnimationPlayState', 'webkitAnimationTimingFunction', 'webkitAppRegion', 'webkitAppearance', 'webkitAspectRatio', 'webkitBackfaceVisibility', 'webkitBackgroundClip', 'webkitBackgroundComposite', 'webkitBackgroundOrigin', 'webkitBackgroundSize', 'webkitBorderAfter', 'webkitBorderAfterColor', 'webkitBorderAfterStyle', 'webkitBorderAfterWidth', 'webkitBorderBefore', 'webkitBorderBeforeColor', 'webkitBorderBeforeStyle', 'webkitBorderBeforeWidth', 'webkitBorderEnd', 'webkitBorderEndColor', 'webkitBorderEndStyle', 'webkitBorderEndWidth', 'webkitBorderFit', 'webkitBorderHorizontalSpacing', 'webkitBorderImage', 'webkitBorderRadius', 'webkitBorderStart', 'webkitBorderStartColor', 'webkitBorderStartStyle', 'webkitBorderStartWidth', 'webkitBorderVerticalSpacing', 'webkitBoxAlign', 'webkitBoxDecorationBreak', 'webkitBoxDirection', 'webkitBoxFlex', 'webkitBoxFlexGroup', 'webkitBoxLines', 'webkitBoxOrdinalGroup', 'webkitBoxOrient', 'webkitBoxPack', 'webkitBoxReflect', 'webkitBoxShadow', 'webkitClipPath', 'webkitColumnBreakAfter', 'webkitColumnBreakBefore', 'webkitColumnBreakInside', 'webkitColumnCount', 'webkitColumnGap', 'webkitColumnRule', 'webkitColumnRuleColor', 'webkitColumnRuleStyle', 'webkitColumnRuleWidth', 'webkitColumnSpan', 'webkitColumnWidth', 'webkitColumns', 'webkitFilter', 'webkitFontFeatureSettings', 'webkitFontSizeDelta', 'webkitFontSmoothing', 'webkitHighlight', 'webkitHyphenateCharacter', 'webkitLineBoxContain', 'webkitLineBreak', 'webkitLineClamp', 'webkitLocale', 'webkitLogicalHeight', 'webkitLogicalWidth', 'webkitMarginAfter', 'webkitMarginAfterCollapse', 'webkitMarginBefore', 'webkitMarginBeforeCollapse', 'webkitMarginBottomCollapse', 'webkitMarginCollapse', 'webkitMarginEnd', 'webkitMarginStart', 'webkitMarginTopCollapse', 'webkitMask', 'webkitMaskBoxImage', 'webkitMaskBoxImageOutset', 'webkitMaskBoxImageRepeat', 'webkitMaskBoxImageSlice', 'webkitMaskBoxImageSource', 'webkitMaskBoxImageWidth', 'webkitMaskClip', 'webkitMaskComposite', 'webkitMaskImage', 'webkitMaskOrigin', 'webkitMaskPosition', 'webkitMaskPositionX', 'webkitMaskPositionY', 'webkitMaskRepeat', 'webkitMaskRepeatX', 'webkitMaskRepeatY', 'webkitMaskSize', 'webkitMaxLogicalHeight', 'webkitMaxLogicalWidth', 'webkitMinLogicalHeight', 'webkitMinLogicalWidth', 'webkitPaddingAfter', 'webkitPaddingBefore', 'webkitPaddingEnd', 'webkitPaddingStart', 'webkitPerspective', 'webkitPerspectiveOrigin', 'webkitPerspectiveOriginX', 'webkitPerspectiveOriginY', 'webkitPrintColorAdjust', 'webkitRtlOrdering', 'webkitRubyPosition', 'webkitTapHighlightColor', 'webkitTextCombine', 'webkitTextDecorationsInEffect', 'webkitTextEmphasis', 'webkitTextEmphasisColor', 'webkitTextEmphasisPosition', 'webkitTextEmphasisStyle', 'webkitTextFillColor', 'webkitTextOrientation', 'webkitTextSecurity', 'webkitTextStroke', 'webkitTextStrokeColor', 'webkitTextStrokeWidth', 'webkitTransform', 'webkitTransformOrigin', 'webkitTransformOriginX', 'webkitTransformOriginY', 'webkitTransformOriginZ', 'webkitTransformStyle', 'webkitTransition', 'webkitTransitionDelay', 'webkitTransitionDuration', 'webkitTransitionProperty', 'webkitTransitionTimingFunction', 'webkitUserDrag', 'webkitUserModify', 'webkitUserSelect', 'webkitWritingMode', 'whiteSpace', 'widows', 'width', 'willChange', 'wordBreak', 'wordSpacing', 'wordWrap', 'writingMode', 'zIndex', 'zoom']

let s:niters = ['arguments', 'caller', 'constructor(', 'detach(', 'expandEntityReferences', 'filter', 'length', 'name', 'nextNode(', 'pointerBeforeReferenceNode', 'previousNode(', 'prototype', 'referenceNode', 'root', 'toString(', 'whatToShow']

let s:nfilter = ['FILTER_ACCEPT', 'FILTER_REJECT', 'FILTER_SKIP', 'SHOW_ALL', 'SHOW_ATTRIBUTE', 'SHOW_CDATA_SECTION', 'SHOW_COMMENT', 'SHOW_DOCUMENT', 'SHOW_DOCUMENT_FRAGMENT', 'SHOW_DOCUMENT_TYPE', 'SHOW_ELEMENT', 'SHOW_ENTITY', 'SHOW_ENTITY_REFERENCE', 'SHOW_NOTATION', 'SHOW_PROCESSING_INSTRUCTION', 'SHOW_TEXT', 'acceptNode(', 'arguments', 'caller', 'constructor(', 'length', 'name', 'prototype', 'toString(']

let s:twalkers = ['arguments', 'caller', 'constructor(', 'currentNode', 'expandEntityReferences', 'filter', 'firstChild(', 'lastChild(', 'length', 'name', 'nextNode(', 'nextSibling(', 'parentNode(', 'previousNode(', 'previousSibling(', 'prototype', 'root', 'toString(', 'whatToShow']

let s:console = ['assert(', 'clear(', 'count(', 'debug(', 'dir(', 'dirxml(', 'error(', 'group(', 'groupCollapsed(', 'groupEnd(', 'info(', 'log(', 'markTimeline(', 'memory', 'profile(', 'profileEnd(', 'table(', 'time(', 'timeEnd(', 'timeStamp(', 'timeline(', 'timelineEnd(', 'trace(', 'warn(']

let s:xmlhs = ['DONE', 'HEADERS_RECEIVED', 'LOADING', 'OPENED', 'UNSENT', 'abort(', 'addEventListener(', 'arguments', 'caller', 'constructor(', 'dispatchEvent(', 'getAllResponseHeaders(', 'getResponseHeader(', 'length', 'name', 'onabort', 'onerror', 'onload', 'onloadend', 'onloadstart', 'onprogress', 'onreadystatechange', 'ontimeout', 'open(', 'overrideMimeType(', 'prototype', 'readyState', 'removeEventListener(', 'response', 'responseText', 'responseType', 'responseURL', 'responseXML', 'send(', 'setRequestHeader(', 'status', 'statusText', 'timeout', 'toString(', 'upload', 'withCredentials']

function! js#CompleteJS(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    let curline = line('.')
    let compl_begin = col('.') - 2
    " Bit risky but JS is rather limited language and local chars shouldn't
    " fint way into names
    while start >= 0 && line[start - 1] =~ '\k'
      let start -= 1
    endwhile
    let b:compl_context = getline('.')[0:compl_begin]
    return start
  else
    " Initialize base return lists
    let res = []
    let res2 = []
    " a:base is very short - we need context
    " Shortcontext is context without a:base, useful for checking if we are
    " looking for objects and for what objects we are looking for
    let context = b:compl_context
    let shortcontext = substitute(context, a:base.'$', '', '')
    unlet! b:compl_context

    if exists("b:jsrange")
      let file = getline(b:jsrange[0],b:jsrange[1])
      unlet! b:jsrange

      if len(b:js_extfiles) > 0
        let file = b:js_extfiles + file
      endif

    else
      let file = getline(1, '$')
    endif


    if shortcontext =~ '\.$'

      let user_props1 = filter(copy(file), 'v:val =~ "this\\.\\k"')
      let juser_props1 = join(user_props1, ' ')
      let user_props1 = split(juser_props1, '\zethis\.')
      unlet! juser_props1
      call map(user_props1, 'matchstr(v:val, "this\\.\\zs\\k\\+\\ze")')

      let user_props2 = filter(copy(file), 'v:val =~ "\\.prototype\\.\\k"')
      let juser_props2 = join(user_props2, ' ')
      let user_props2 = split(juser_props2, '\zeprototype\.')
      unlet! juser_props2
      call map(user_props2, 'matchstr(v:val, "prototype\\.\\zs\\k\\+\\ze")')
      let user_props = user_props1 + user_props2

      " Find object type declaration to reduce number of suggestions. {{{
      " 1. Get object name
      " 2. Find object declaration line
      " 3. General declaration follows "= new Type" syntax, additional else
      "    for regexp "= /re/"
      " 4. Make correction for Microsoft.XMLHTTP ActiveXObject
      " 5. Repeat for external files
      let object = matchstr(shortcontext, '\zs\k\+\ze\(\[.\{-}\]\)\?\.$')
      if len(object) > 0
        let decl_line = search(object.'.\{-}=\s*new\s*', 'bn')
        if decl_line > 0
          let object_type = matchstr(getline(decl_line), object.'.\{-}=\s*new\s*\zs\k\+\ze')
          if object_type == 'ActiveXObject' && matchstr(getline(decl_line), object.'.\{-}=\s*new\s*ActiveXObject\s*(.Microsoft\.XMLHTTP.)') != ''
            let object_type = 'XMLHttpRequest'
          endif
        else
          if search(object.'\s*=\s*\/', 'bn') > 0
            let object_type = 'RegExp'
          elseif search(object.'\s*=\s*{', 'bn') > 0
            let object_type = 'Object'
          elseif search(object.'\s*=\s*\(true\|false\|!\)', 'bn') > 0
            let object_type = 'Boolean'
          elseif search(object.'\s*=\s*\[', 'bn') > 0
            let object_type = 'Array'
          elseif search(object.'\s*=\s*\(["'."'".']\|String(\)', 'bn') > 0
            let object_type = 'String'
          elseif search(object.'\s*=\s*document\.createTreeWalker(', 'bn') > 0
            let object_type = 'TreeWalker'
          elseif search(object.'\s*=\s*[a-zA-Z_$]\+\.getContext(', 'bn') > 0
            let object_type = 'CanvasRenderingContext2D'
          elseif search(object.'\s*=\s*document\.createNodeIterator(', 'bn') > 0
            let object_type = 'NodeIterator'
          endif
        endif
        " We didn't find var declaration in current file but we may have
        " something in external files.
        if decl_line == 0 && exists("b:js_extfiles")
          let dext_line = filter(copy(b:js_extfiles), 'v:val =~ "'.object.'.\\{-}=\\s*new\\s*"')
          if len(dext_line) > 0
            let object_type = matchstr(dext_line[-1], object.'.\{-}=\s*new\s*\zs\k\+\ze')
            if object_type == 'ActiveXObject' && matchstr(dext_line[-1], object.'.\{-}=\s*new\s*ActiveXObject\s*(.Microsoft\.XMLHTTP.)') != ''
              let object_type = 'XMLHttpRequest'
            endif
          else
            let dext_line = filter(copy(b:js_extfiles), 'v:val =~ "var\s*'.object.'\\s*=\\s*\\/"')
            if len(dext_line) > 0
              let object_type = 'RegExp'
            endif
          endif
        endif
      endif

      if !exists('object_type')
        let object_type = ''
      endif

      if object_type == 'Date'
        let values = s:dates
      elseif object_type == 'Image'
        let values = s:imags
      elseif object_type == 'Array'
        let values = s:arrays
      elseif object_type == 'Object'
        let values = s:objes
      elseif object_type == 'Boolean'
        let values = ['arguments', 'caller', 'length', 'name', 'prototype', 'constructor', 'toString', 'valueOf']
      elseif object_type == 'XMLHttpRequest'
        let values = s:xmlhs
      elseif object_type == 'String'
        let values = s:stris
      elseif object_type == 'RegExp'
        let values = s:reges
      elseif object_type == 'Math'
        let values = s:maths
      elseif object_type == 'CanvasRenderingContext2D'
        let values = s:ctxs
      elseif object_type == 'NodeIterator'
        let values = s:niters
      elseif object_type == 'TreeWalker'
        let values = s:twalkers
      endif

      if !exists('values')
        if shortcontext =~ 'Math\.$'
          let values = s:maths
        elseif shortcontext =~ 'body\.$'
          let values = s:bodys
        elseif shortcontext =~ 'document\.$'
          let values = s:docus
        elseif shortcontext =~ 'history\.$'
          let values = s:hists
        elseif shortcontext =~ 'JSON\.$'
          let values = ['parse(', 'stringify(']
        elseif shortcontext =~ '\(local\|session\)Storage\.$'
          let values = s:storage
        elseif shortcontext =~ 'NodeFilter\.$'
          let values = s:nfilter
        elseif shortcontext =~ '\/.*\(\\\/\)\@!\/\.$'
          let values = s:reges
        elseif shortcontext =~ 'images\(\[.\{-}\]\)\?\.$'
          let values = s:imags
        elseif shortcontext =~ 'location\.$'
          let values = s:locas
        elseif shortcontext =~ 'navigator\.$'
          let values = s:navis
        elseif shortcontext =~ 'console\.$'
          let values = s:console
        elseif shortcontext =~ '\]\.$'
          let values = s:arrays
        elseif shortcontext =~ '\(}\|object\)\.$'
          let values = s:objes
        elseif shortcontext =~ 'screen\.$'
          let values = s:scres
        elseif shortcontext =~ 'style\.$'
          let values = s:styls
        elseif shortcontext =~ '\(top\|self\|window\)\.$'
          let values = s:winds
        else
          let values = user_props + s:bodys + s:arrays + s:dates +
                \ s:funcs + s:numbs + s:reges + s:stris + s:docus +
                \ s:imags + s:locas + s:navis + s:objes + s:scres + s:winds
        endif
      endif

      let oprops1 = matchstr(shortcontext, '\zs\k\+\ze\(\[.\{-}\]\)\?\.$')
      let oprops = []
      if len(oprops1) > 0
        let oprops = filter(copy(file), 'v:val =~ "'.oprops1.'\\.[a-zA-Z_]\\+\\s*="')
        call map(oprops, 'matchstr(v:val, "\\.\\zs[a-zA-Z_]\\+\\ze")')
        let oprops2 = filter(copy(file), 'v:val =~ "\\w*\\(case\\|default\\)\\@!:"')
        call map(oprops2, 'matchstr(v:val, "\\zs\\w\\+\\ze:")')
        let values = oprops + oprops2 + values
      endif

      for m in values
        if m =~? '^'.a:base
          call add(res, m)
        elseif m =~? a:base
          call add(res2, m)
        endif
      endfor

      unlet! values
      return res + res2

    endif

    let variables = filter(copy(file), 'v:val =~ "var\\s"')
    call map(variables, 'matchstr(v:val, ".\\{-}var\\s\\+\\zs.*\\ze")')
    call map(variables, 'substitute(v:val, ";\\|$", ",", "g")')
    let vars = []
    " This loop (and next one) is necessary to get variable names from
    " constructs like: var var1, var2, var3 = "something";
    for i in range(len(variables))
      let comma_separated = split(variables[i], ',\s*')
      call map(comma_separated, 'matchstr(v:val, "\\k\\+")')
      let vars += comma_separated
    endfor

    let variables = sort(vars)
    unlet! vars

    " Add "no var" variables.
    let undeclared_variables = filter(copy(file), 'v:val =~ "^\\s*\\k\\+\\s*="')
    let u_vars = []
    for i in range(len(undeclared_variables))
      let  split_equal = split(undeclared_variables[i], '\s*=')
      call map(split_equal, 'matchstr(v:val, "\\k\\+$")')
      let u_vars += split_equal
    endfor

    let variables += sort(u_vars)
    unlet! u_vars

    " Get functions
    let functions = filter(copy(file), 'v:val =~ "^\\s*function\\s"')
    let arguments = copy(functions)
    call map(functions, 'matchstr(v:val, "^\\s*function\\s\\+\\zs\\k\\+")')
    call map(functions, 'v:val."("')
    let functions = sort(functions)

    " Create table to keep arguments for additional 'menu' info
    let b:js_menuinfo = {}
    for i in arguments
      let g:ia = i
      let f_elements = matchlist(i, 'function\s\+\(\k\+\)\s*(\(.\{-}\))')
      if len(f_elements) == 3
        let b:js_menuinfo[f_elements[1].'('] = f_elements[2]
      endif
    endfor

    call map(arguments, 'matchstr(v:val, "function.\\{-}(\\zs.\\{-}\\ze)")')
    let jargs = join(arguments, ',')
    let jargs = substitute(jargs, '\s', '', 'g')
    let arguments = split(jargs, ',')
    let arguments = sort(arguments)

    let values = variables + functions + arguments + s:keywords + s:winds

    for m in values
      if m =~? '^'.a:base
        call add(res, m)
      elseif m =~? a:base
        call add(res2, m)
      endif
    endfor

    let menu = res + res2
    let final_menu = []
    for i in range(len(menu))
      let item = menu[i]
      if item =~ '($'
        let kind = '[F]'
        if has_key(b:js_menuinfo, item)
          let m_info = b:js_menuinfo[item]
        else
          let m_info = ''
        endif
      else
        let kind = '[V]'
        let m_info = ''
      endif
      let final_menu += [{'word':item, 'menu':m_info, 'kind':kind}]
    endfor
    let g:fm = final_menu
    return final_menu

endfunction
