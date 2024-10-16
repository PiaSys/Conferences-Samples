(window["webpackJsonpbe3ab8ee_b970_4209_b8e6_1c9be0cdbe64_0_0_1"] = window["webpackJsonpbe3ab8ee_b970_4209_b8e6_1c9be0cdbe64_0_0_1"] || []).push([["SamplesSearch-property-pane"],{

/***/ "WMuj":
/*!*******************************************************************************!*\
  !*** ./lib/adaptiveCardExtensions/samplesSearch/SamplesSearchPropertyPane.js ***!
  \*******************************************************************************/
/*! exports provided: SamplesSearchPropertyPane */
/*! all exports used */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SamplesSearchPropertyPane", function() { return SamplesSearchPropertyPane; });
/* harmony import */ var _microsoft_sp_property_pane__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @microsoft/sp-property-pane */ "26ea");
/* harmony import */ var _microsoft_sp_property_pane__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_microsoft_sp_property_pane__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! SamplesSearchAdaptiveCardExtensionStrings */ "KxrY");
/* harmony import */ var SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__);


var SamplesSearchPropertyPane = /** @class */ (function () {
    function SamplesSearchPropertyPane() {
    }
    SamplesSearchPropertyPane.prototype.getPropertyPaneConfiguration = function () {
        return {
            pages: [
                {
                    header: { description: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["PropertyPaneDescription"] },
                    groups: [
                        {
                            groupFields: [
                                Object(_microsoft_sp_property_pane__WEBPACK_IMPORTED_MODULE_0__["PropertyPaneTextField"])('searchServiceUri', {
                                    label: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["SearchServiceUriFieldLabel"]
                                })
                            ]
                        }
                    ]
                }
            ]
        };
    };
    return SamplesSearchPropertyPane;
}());



/***/ })

}]);
//# sourceMappingURL=chunk.SamplesSearch-property-pane.js.map