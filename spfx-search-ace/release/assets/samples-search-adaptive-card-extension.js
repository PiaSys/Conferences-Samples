define("be3ab8ee-b970-4209-b8e6-1c9be0cdbe64_0.0.1", ["@microsoft/sp-loader","SamplesSearchAdaptiveCardExtensionStrings","@microsoft/sp-core-library","@microsoft/sp-adaptive-card-extension-base","@microsoft/sp-http"], function(__WEBPACK_EXTERNAL_MODULE_I6O9__, __WEBPACK_EXTERNAL_MODULE_KxrY__, __WEBPACK_EXTERNAL_MODULE_UWqr__, __WEBPACK_EXTERNAL_MODULE_lz_E__, __WEBPACK_EXTERNAL_MODULE_vlQI__) { return /******/ (function(modules) { // webpackBootstrap
/******/ 	// install a JSONP callback for chunk loading
/******/ 	function webpackJsonpCallback(data) {
/******/ 		var chunkIds = data[0];
/******/ 		var moreModules = data[1];
/******/
/******/
/******/ 		// add "moreModules" to the modules object,
/******/ 		// then flag all "chunkIds" as loaded and fire callback
/******/ 		var moduleId, chunkId, i = 0, resolves = [];
/******/ 		for(;i < chunkIds.length; i++) {
/******/ 			chunkId = chunkIds[i];
/******/ 			if(Object.prototype.hasOwnProperty.call(installedChunks, chunkId) && installedChunks[chunkId]) {
/******/ 				resolves.push(installedChunks[chunkId][0]);
/******/ 			}
/******/ 			installedChunks[chunkId] = 0;
/******/ 		}
/******/ 		for(moduleId in moreModules) {
/******/ 			if(Object.prototype.hasOwnProperty.call(moreModules, moduleId)) {
/******/ 				modules[moduleId] = moreModules[moduleId];
/******/ 			}
/******/ 		}
/******/ 		if(parentJsonpFunction) parentJsonpFunction(data);
/******/
/******/ 		while(resolves.length) {
/******/ 			resolves.shift()();
/******/ 		}
/******/
/******/ 	};
/******/
/******/
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// Returns a list of SPFx components used in a given chunk but not used in the runtime chunk
/******/ 	function getAsyncSpfxComponents(chunkId) {
/******/ 		var component_0 = { // @microsoft/sp-property-pane
/******/ 			i: "f9e737b7-f0df-4597-ba8c-3060f82380db",
/******/ 			v: "1.18.0",
/******/ 			m: "26ea"
/******/ 		};
/******/
/******/ 		return {"SamplesSearch-property-pane": [component_0]}[chunkId] || [];
/******/ 	}
/******/
/******/ 	// object to store loaded and loading chunks
/******/ 	// undefined = chunk not loaded, null = chunk preloaded/prefetched
/******/ 	// Promise = chunk loading, 0 = chunk loaded
/******/ 	var installedChunks = {
/******/ 		"samples-search-adaptive-card-extension": 0
/******/ 	};
/******/
/******/
/******/
/******/ 	// script path function
/******/ 	function jsonpScriptSrc(chunkId) {
/******/ 		return __webpack_require__.p + "chunk." + ({"SamplesSearch-property-pane":"SamplesSearch-property-pane","SamplesSearch-search-results-qv":"SamplesSearch-search-results-qv"}[chunkId]||chunkId) + ".js"
/******/ 	}
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/ 	// This file contains only the entry chunk.
/******/ 	// The chunk loading function for additional chunks
/******/ 	__webpack_require__.e = function requireEnsure(chunkId) {
/******/ 		var promises = [];
/******/
/******/ 		// SPFx Component async loading
/******/
/******/ 		var chunkAsyncComponents = getAsyncSpfxComponents(chunkId);
/******/ 		for (var i = 0; i < chunkAsyncComponents.length; i++) {
/******/ 			// Has the component already been loaded into the modules object?
/******/ 			if (!modules[chunkAsyncComponents[i].m]) {
/******/ 				(function (chunkComponent){
/******/ 					promises.push(spfxLoader.SPComponentLoader.loadComponentById(
/******/ 						chunkComponent.i,
/******/ 						chunkComponent.v
/******/ 					).then(function (component) {
/******/ 						modules[chunkComponent.m] = function(module) {
/******/ 							module.exports = component;
/******/ 						};
/******/ 					}));
/******/ 				})(chunkAsyncComponents[i]);
/******/ 			}
/******/ 		}
/******/
/******/ 		// JSONP chunk loading for javascript
/******/
/******/ 		var installedChunkData = installedChunks[chunkId];
/******/ 		if(installedChunkData !== 0) { // 0 means "already installed".
/******/
/******/ 			// a Promise means "currently loading".
/******/ 			if(installedChunkData) {
/******/ 				promises.push(installedChunkData[2]);
/******/ 			} else {
/******/ 				// setup Promise in chunk cache
/******/ 				var promise = new Promise(function(resolve, reject) {
/******/ 					installedChunkData = installedChunks[chunkId] = [resolve, reject];
/******/ 				});
/******/ 				promises.push(installedChunkData[2] = promise);
/******/
/******/ 				// start chunk loading
/******/ 				var script = document.createElement('script');
/******/ 				var onScriptComplete;
/******/
/******/ 				script.charset = 'utf-8';
/******/ 				script.timeout = 120;
/******/ 				if (__webpack_require__.nc) {
/******/ 					script.setAttribute("nonce", __webpack_require__.nc);
/******/ 				}
/******/ 				script.src = jsonpScriptSrc(chunkId);
/******/ 				if (script.src.indexOf(window.location.origin + '/') !== 0) {
/******/ 					script.crossOrigin = "anonymous";
/******/ 				}
/******/ 				// create error before stack unwound to get useful stacktrace later
/******/ 				var error = new Error();
/******/ 				onScriptComplete = function (event) {
/******/ 					// avoid mem leaks in IE.
/******/ 					script.onerror = script.onload = null;
/******/ 					clearTimeout(timeout);
/******/ 					var chunk = installedChunks[chunkId];
/******/ 					if(chunk !== 0) {
/******/ 						if(chunk) {
/******/ 							var errorType = event && (event.type === 'load' ? 'missing' : event.type);
/******/ 							var realSrc = event && event.target && event.target.src;
/******/ 							error.message = 'Loading chunk ' + chunkId + ' failed.\n(' + errorType + ': ' + realSrc + ')';
/******/ 							error.name = 'ChunkLoadError';
/******/ 							error.type = errorType;
/******/ 							error.request = realSrc;
/******/ 							chunk[1](error);
/******/ 						}
/******/ 						installedChunks[chunkId] = undefined;
/******/ 					}
/******/ 				};
/******/ 				var timeout = setTimeout(function(){
/******/ 					onScriptComplete({ type: 'timeout', target: script });
/******/ 				}, 120000);
/******/ 				script.onerror = script.onload = onScriptComplete;
/******/ 				document.head.appendChild(script);
/******/ 			}
/******/ 		}
/******/ 		return Promise.all(promises);
/******/ 	};
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	var spfxLoader = __webpack_require__("I6O9");
/******/
/******/ 	// on error function for async loading
/******/ 	__webpack_require__.oe = function(err) { console.error(err); throw err; };
/******/
/******/ 	var jsonpArray = window["webpackJsonpbe3ab8ee_b970_4209_b8e6_1c9be0cdbe64_0_0_1"] = window["webpackJsonpbe3ab8ee_b970_4209_b8e6_1c9be0cdbe64_0_0_1"] || [];
/******/ 	var oldJsonpFunction = jsonpArray.push.bind(jsonpArray);
/******/ 	jsonpArray.push = webpackJsonpCallback;
/******/ 	jsonpArray = jsonpArray.slice();
/******/ 	for(var i = 0; i < jsonpArray.length; i++) webpackJsonpCallback(jsonpArray[i]);
/******/ 	var parentJsonpFunction = oldJsonpFunction;
/******/
/******/
/******/ 	// Set the webpack public path
/******/ 	(function () {
/******/ 	  var scripts = document.getElementsByTagName('script');
/******/ 	  var regex = /samples\-search\-adaptive\-card\-extension\.js/i;
/******/ 	  var publicPath;
/******/
/******/ 	  if (scripts && scripts.length) {
/******/ 	    for (var i = 0; i < scripts.length; i++) {
/******/ 	      if (!scripts[i]) continue;
/******/ 	      var path = scripts[i].getAttribute('src');
/******/ 	      if (path && path.match(regex)) {
/******/ 	        publicPath = path.substring(0, path.lastIndexOf('/') + 1);
/******/ 	        break;
/******/ 	      }
/******/ 	    }
/******/ 	  }
/******/
/******/ 	  if (!publicPath) {
/******/ 	    for (var global in window.__setWebpackPublicPathLoaderSrcRegistry__) {
/******/ 	      if (global && global.match(regex)) {
/******/ 	        publicPath = global.substring(0, global.lastIndexOf('/') + 1);
/******/ 	        break;
/******/ 	      }
/******/ 	    }
/******/ 	  }
/******/ 	  __webpack_require__.p = publicPath;
/******/ 	})();
/******/ 	
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "WB+X");
/******/ })
/************************************************************************/
/******/ ({

/***/ "EQ1b":
/*!***********************************************************************!*\
  !*** ./lib/adaptiveCardExtensions/samplesSearch/cardView/CardView.js ***!
  \***********************************************************************/
/*! exports provided: CardView */
/*! exports used: CardView */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "e", function() { return CardView; });
/* harmony import */ var _microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @microsoft/sp-adaptive-card-extension-base */ "lz/E");
/* harmony import */ var _microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! SamplesSearchAdaptiveCardExtensionStrings */ "KxrY");
/* harmony import */ var SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _SamplesSearchAdaptiveCardExtension__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../SamplesSearchAdaptiveCardExtension */ "WB+X");
var __extends = (undefined && undefined.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __awaiter = (undefined && undefined.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (undefined && undefined.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};



var CardView = /** @class */ (function (_super) {
    __extends(CardView, _super);
    function CardView() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    Object.defineProperty(CardView.prototype, "cardViewParameters", {
        get: function () {
            var _this = this;
            // Default value for the footer
            var footer = {
                componentName: 'searchFooter',
                title: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["Suggested"],
                text: 'No suggestions found',
                imageInitials: 'NA'
            };
            // if there is a suggested person, update the footer
            var suggestedSample = this.state.suggestedSample;
            if (suggestedSample) {
                footer.text = suggestedSample.title;
                footer.imageUrl = suggestedSample.authors.length > 0 ? suggestedSample.authors[0].pictureUrl : undefined;
                footer.onSelection = {
                    type: 'ExternalLink',
                    parameters: {
                        target: suggestedSample.url,
                        isTeamsDeepLink: false
                    }
                };
            }
            return Object(_microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__["SearchCardView"])({
                cardBar: {
                    componentName: 'cardBar',
                    title: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["Title"]
                },
                header: {
                    componentName: 'text',
                    text: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["PrimaryText"]
                },
                body: {
                    componentName: 'searchBox',
                    placeholder: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["Placeholder"],
                    id: _SamplesSearchAdaptiveCardExtension__WEBPACK_IMPORTED_MODULE_2__["SEARCH_BOX_ID"],
                    button: {
                        action: {
                            type: 'QuickView',
                            parameters: {
                                view: _SamplesSearchAdaptiveCardExtension__WEBPACK_IMPORTED_MODULE_2__["SEARCH_RESULTS_QUICK_VIEW_REGISTRY_ID"]
                            }
                        }
                    },
                    onChange: function (value) { return __awaiter(_this, void 0, void 0, function () {
                        return __generator(this, function (_a) {
                            switch (_a.label) {
                                case 0:
                                    this.setState({ queryString: value });
                                    return [4 /*yield*/, this.properties.getSuggestedSample()];
                                case 1:
                                    _a.sent();
                                    return [2 /*return*/];
                            }
                        });
                    }); }
                },
                footer: footer
            });
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(CardView.prototype, "onCardSelection", {
        get: function () {
            return undefined;
        },
        enumerable: false,
        configurable: true
    });
    return CardView;
}(_microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__["BaseComponentsCardView"]));



/***/ }),

/***/ "I6O9":
/*!***************************************!*\
  !*** external "@microsoft/sp-loader" ***!
  \***************************************/
/***/ (function(module, exports) {

module.exports = __WEBPACK_EXTERNAL_MODULE_I6O9__;

/***/ }),

/***/ "KxrY":
/*!************************************************************!*\
  !*** external "SamplesSearchAdaptiveCardExtensionStrings" ***!
  \************************************************************/
/*! no static exports found */
/*! exports used: Placeholder, PrimaryText, PropertyPaneDescription, SearchAction, SearchServiceUriFieldLabel, Suggested, Title */
/***/ (function(module, exports) {

module.exports = __WEBPACK_EXTERNAL_MODULE_KxrY__;

/***/ }),

/***/ "Oj0T":
/*!***********************************************************************************************!*\
  !*** ./lib/adaptiveCardExtensions/samplesSearch/samplesSearchService/SamplesSearchService.js ***!
  \***********************************************************************************************/
/*! exports provided: SamplesSearchService */
/*! exports used: SamplesSearchService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "e", function() { return SamplesSearchService; });
/* harmony import */ var _microsoft_sp_core_library__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @microsoft/sp-core-library */ "UWqr");
/* harmony import */ var _microsoft_sp_core_library__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_microsoft_sp_core_library__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _microsoft_sp_http__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @microsoft/sp-http */ "vlQI");
/* harmony import */ var _microsoft_sp_http__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_microsoft_sp_http__WEBPACK_IMPORTED_MODULE_1__);
var __awaiter = (undefined && undefined.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (undefined && undefined.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};


var SamplesSearchService = /** @class */ (function () {
    function SamplesSearchService(serviceScope) {
        var _this = this;
        serviceScope.whenFinished(function () {
            // Get the MSGraphClientFactory service instance from the service scope
            _this._httpClient = serviceScope.consume(_microsoft_sp_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"].serviceKey);
        });
    }
    SamplesSearchService.prototype.init = function (searchServiceUri) {
        this._searchServiceUri = "".concat(searchServiceUri).concat(searchServiceUri.charAt(searchServiceUri.length - 1) === '/' ? '' : '/', "Samples/searchSamples");
        console.log(this._searchServiceUri);
    };
    SamplesSearchService.prototype.search = function (queryString) {
        return __awaiter(this, void 0, void 0, function () {
            var searchResults;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.invokeSearch(queryString, 20)];
                    case 1:
                        searchResults = _a.sent();
                        return [2 /*return*/, searchResults.items];
                }
            });
        });
    };
    SamplesSearchService.prototype.getSuggested = function (queryString) {
        return __awaiter(this, void 0, void 0, function () {
            var searchResults;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.invokeSearch(queryString, 1)];
                    case 1:
                        searchResults = _a.sent();
                        return [2 /*return*/, searchResults.items.length > 0 ? searchResults.items[0] : undefined];
                }
            });
        });
    };
    SamplesSearchService.prototype.invokeSearch = function (queryString, size) {
        return __awaiter(this, void 0, void 0, function () {
            var requestOptions, response, searchResults;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        requestOptions = {
                            body: JSON.stringify({
                                sort: {
                                    field: 'Title',
                                    descending: true
                                },
                                filter: {
                                    search: queryString
                                },
                                pagination: {
                                    size: size,
                                    index: 1
                                }
                            }),
                            headers: {
                                'Content-Type': 'application/json'
                            },
                            method: 'POST'
                        };
                        return [4 /*yield*/, this._httpClient.post(this._searchServiceUri, _microsoft_sp_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"].configurations.v1, requestOptions)];
                    case 1:
                        response = _a.sent();
                        return [4 /*yield*/, response.json()];
                    case 2:
                        searchResults = _a.sent();
                        // Return the search results
                        return [2 /*return*/, searchResults];
                }
            });
        });
    };
    // Create a ServiceKey to register in the Service Scope
    SamplesSearchService.serviceKey = _microsoft_sp_core_library__WEBPACK_IMPORTED_MODULE_0__["ServiceKey"].create('PiaSys:SamplesSearchService', SamplesSearchService);
    return SamplesSearchService;
}());



/***/ }),

/***/ "UWqr":
/*!*********************************************!*\
  !*** external "@microsoft/sp-core-library" ***!
  \*********************************************/
/*! no static exports found */
/*! exports used: ServiceKey */
/***/ (function(module, exports) {

module.exports = __WEBPACK_EXTERNAL_MODULE_UWqr__;

/***/ }),

/***/ "WB+X":
/*!****************************************************************************************!*\
  !*** ./lib/adaptiveCardExtensions/samplesSearch/SamplesSearchAdaptiveCardExtension.js ***!
  \****************************************************************************************/
/*! exports provided: SEARCH_RESULTS_QUICK_VIEW_REGISTRY_ID, SEARCH_BOX_ID, default */
/*! all exports used */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SEARCH_RESULTS_QUICK_VIEW_REGISTRY_ID", function() { return SEARCH_RESULTS_QUICK_VIEW_REGISTRY_ID; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SEARCH_BOX_ID", function() { return SEARCH_BOX_ID; });
/* harmony import */ var _microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @microsoft/sp-adaptive-card-extension-base */ "lz/E");
/* harmony import */ var _microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _cardView_CardView__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./cardView/CardView */ "EQ1b");
/* harmony import */ var _samplesSearchService_SamplesSearchService__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./samplesSearchService/SamplesSearchService */ "Oj0T");
var __extends = (undefined && undefined.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __awaiter = (undefined && undefined.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (undefined && undefined.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};



var CARD_VIEW_REGISTRY_ID = 'SamplesSearch_CARD_VIEW';
var SEARCH_RESULTS_QUICK_VIEW_REGISTRY_ID = 'SamplesSearch_SEARCH_RESULTS_QUICK_VIEW';
var SEARCH_BOX_ID = 'searchBox';
var SamplesSearchAdaptiveCardExtension = /** @class */ (function (_super) {
    __extends(SamplesSearchAdaptiveCardExtension, _super);
    function SamplesSearchAdaptiveCardExtension() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.getSuggestedSample = function () { return __awaiter(_this, void 0, void 0, function () {
            var suggested;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this._samplesSearchService.getSuggested(this.state.queryString || '')];
                    case 1:
                        suggested = _a.sent();
                        this.setState({
                            suggestedSample: suggested
                        });
                        return [2 /*return*/];
                }
            });
        }); };
        _this.searchSamples = function () { return __awaiter(_this, void 0, void 0, function () {
            var searchResults;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this._samplesSearchService.search(this.state.queryString || '')];
                    case 1:
                        searchResults = _a.sent();
                        this.setState({
                            searchResults: searchResults
                        });
                        return [2 /*return*/];
                }
            });
        }); };
        return _this;
    }
    SamplesSearchAdaptiveCardExtension.prototype.onInit = function () {
        var _this = this;
        this.state = {};
        this.context.serviceScope.whenFinished(function () {
            // Get the samples search service instance
            _this._samplesSearchService = _this.context.serviceScope.consume(_samplesSearchService_SamplesSearchService__WEBPACK_IMPORTED_MODULE_2__[/* SamplesSearchService */ "e"].serviceKey);
            // Init the samples search service instance
            if (_this.properties.searchServiceUri) {
                _this._samplesSearchService.init(_this.properties.searchServiceUri);
            }
        });
        // Configure the properties for providing search capabilities
        this.properties.searchSamples = this.searchSamples;
        this.properties.getSuggestedSample = this.getSuggestedSample;
        // registers the card view to be shown in a dashboard
        this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, function () { return new _cardView_CardView__WEBPACK_IMPORTED_MODULE_1__[/* CardView */ "e"](); });
        // registers the defer-loaded quick view to show search results
        this.quickViewNavigator.register(SEARCH_RESULTS_QUICK_VIEW_REGISTRY_ID, function () {
            return __webpack_require__.e(/*! import() | SamplesSearch-search-results-qv */ "SamplesSearch-search-results-qv").then(__webpack_require__.bind(null, /*! ./quickView/SearchResultsQuickView */ "TvY5"))
                .then(function (module) { return new module.SearchResultsQuickView(); });
        });
        return Promise.resolve();
    };
    SamplesSearchAdaptiveCardExtension.prototype.onBeforeAction = function (action) {
        if (action.type === 'QuickView') {
            //
            // for the QuickView action we can get search query from the data property.
            // it allows to display the same query string in the quick view's text input.
            //
            var quickViewActionArguments = action;
            if (quickViewActionArguments.viewId === SEARCH_RESULTS_QUICK_VIEW_REGISTRY_ID) {
                this.setState({
                    queryString: quickViewActionArguments.data && quickViewActionArguments.data[SEARCH_BOX_ID]
                });
            }
        }
    };
    SamplesSearchAdaptiveCardExtension.prototype.loadPropertyPaneResources = function () {
        var _this = this;
        return __webpack_require__.e(/*! import() | SamplesSearch-property-pane */ "SamplesSearch-property-pane").then(__webpack_require__.bind(null, /*! ./SamplesSearchPropertyPane */ "WMuj"))
            .then(function (component) {
            _this._deferredPropertyPane = new component.SamplesSearchPropertyPane();
        });
    };
    SamplesSearchAdaptiveCardExtension.prototype.renderCard = function () {
        return CARD_VIEW_REGISTRY_ID;
    };
    SamplesSearchAdaptiveCardExtension.prototype.getPropertyPaneConfiguration = function () {
        var _a;
        return (_a = this._deferredPropertyPane) === null || _a === void 0 ? void 0 : _a.getPropertyPaneConfiguration();
    };
    return SamplesSearchAdaptiveCardExtension;
}(_microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__["BaseAdaptiveCardExtension"]));
/* harmony default export */ __webpack_exports__["default"] = (SamplesSearchAdaptiveCardExtension);


/***/ }),

/***/ "lz/E":
/*!*************************************************************!*\
  !*** external "@microsoft/sp-adaptive-card-extension-base" ***!
  \*************************************************************/
/*! no static exports found */
/*! exports used: BaseAdaptiveCardExtension, BaseAdaptiveCardQuickView, BaseComponentsCardView, SearchCardView */
/***/ (function(module, exports) {

module.exports = __WEBPACK_EXTERNAL_MODULE_lz_E__;

/***/ }),

/***/ "vlQI":
/*!*************************************!*\
  !*** external "@microsoft/sp-http" ***!
  \*************************************/
/*! no static exports found */
/*! exports used: HttpClient */
/***/ (function(module, exports) {

module.exports = __WEBPACK_EXTERNAL_MODULE_vlQI__;

/***/ })

/******/ })});;
//# sourceMappingURL=samples-search-adaptive-card-extension.js.map