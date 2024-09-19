(window["webpackJsonpbe3ab8ee_b970_4209_b8e6_1c9be0cdbe64_0_0_1"] = window["webpackJsonpbe3ab8ee_b970_4209_b8e6_1c9be0cdbe64_0_0_1"] || []).push([["SamplesSearch-search-results-qv"],{

/***/ "TvY5":
/*!**************************************************************************************!*\
  !*** ./lib/adaptiveCardExtensions/samplesSearch/quickView/SearchResultsQuickView.js ***!
  \**************************************************************************************/
/*! exports provided: SearchResultsQuickView */
/*! all exports used */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SearchResultsQuickView", function() { return SearchResultsQuickView; });
/* harmony import */ var _microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @microsoft/sp-adaptive-card-extension-base */ "lz/E");
/* harmony import */ var _microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! SamplesSearchAdaptiveCardExtensionStrings */ "KxrY");
/* harmony import */ var SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__);
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


var SearchResultsQuickView = /** @class */ (function (_super) {
    __extends(SearchResultsQuickView, _super);
    function SearchResultsQuickView() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    Object.defineProperty(SearchResultsQuickView.prototype, "data", {
        get: function () {
            var _this = this;
            var isNewSearch = this._lastQueryString !== this.state.queryString;
            // initiate search if the query string has changed
            if (isNewSearch) {
                this.properties.searchSamples().then(function () {
                    _this._lastQueryString = _this.state.queryString;
                    return;
                })
                    .catch(function () { return; });
            }
            return {
                searchActionTitle: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["SearchAction"],
                placeholder: SamplesSearchAdaptiveCardExtensionStrings__WEBPACK_IMPORTED_MODULE_1__["Placeholder"],
                queryString: this.state.queryString || '',
                searchResults: this.state.searchResults,
                isLoading: isNewSearch
            };
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(SearchResultsQuickView.prototype, "template", {
        get: function () {
            return __webpack_require__(/*! ./template/SearchResultsQuickViewTemplate.json */ "jRg3");
        },
        enumerable: false,
        configurable: true
    });
    SearchResultsQuickView.prototype.onAction = function (action) {
        if (action.type !== 'Submit' || !action.data) {
            return;
        }
        var data = action.data;
        if (data.id === 'search') {
            // update query string
            this.setState({
                queryString: data.queryString
            });
        }
    };
    return SearchResultsQuickView;
}(_microsoft_sp_adaptive_card_extension_base__WEBPACK_IMPORTED_MODULE_0__["BaseAdaptiveCardQuickView"]));



/***/ }),

/***/ "jRg3":
/*!*********************************************************************************************************!*\
  !*** ./lib/adaptiveCardExtensions/samplesSearch/quickView/template/SearchResultsQuickViewTemplate.json ***!
  \*********************************************************************************************************/
/*! exports provided: schema, type, version, body, default */
/*! all exports used */
/***/ (function(module) {

module.exports = JSON.parse("{\"schema\":\"http://adaptivecards.io/schemas/adaptive-card.json\",\"type\":\"AdaptiveCard\",\"version\":\"1.5\",\"body\":[{\"type\":\"Input.Text\",\"id\":\"filterByName\",\"inlineAction\":{\"type\":\"Action.Submit\",\"title\":\"${searchActionTitle}\",\"data\":{\"id\":\"search\"}},\"value\":\"${queryString}\",\"placeholder\":\"${placeholder}\"},{\"type\":\"TextBlock\",\"text\":\"Loading...\",\"size\":\"small\",\"separator\":true,\"spacing\":\"extraLarge\",\"$when\":\"${isLoading}\"},{\"type\":\"TextBlock\",\"text\":\"We found ${count(searchResults)} result(s)\",\"size\":\"small\",\"isSubtle\":true,\"separator\":true,\"spacing\":\"extraLarge\",\"$when\":\"${!isLoading}\"},{\"type\":\"Container\",\"$data\":\"${searchResults}\",\"items\":[{\"type\":\"ColumnSet\",\"columns\":[{\"type\":\"Column\",\"items\":[{\"type\":\"Image\",\"style\":\"Person\",\"url\":\"${authors[0].pictureUrl}\",\"size\":\"Small\",\"height\":\"48px\",\"width\":\"48px\"}],\"width\":\"auto\"},{\"type\":\"Column\",\"items\":[{\"type\":\"TextBlock\",\"text\":\"${title}\",\"wrap\":false,\"size\":\"medium\"},{\"type\":\"TextBlock\",\"spacing\":\"None\",\"text\":\"${shortDescription}\",\"isSubtle\":true,\"wrap\":false,\"size\":\"default\"}],\"width\":\"stretch\"}],\"bleed\":true,\"spacing\":\"none\",\"selectAction\":{\"type\":\"Action.OpenUrl\",\"url\":\"${url}\"}}],\"style\":\"default\",\"separator\":true,\"spacing\":\"Medium\"}]}");

/***/ })

}]);
//# sourceMappingURL=chunk.SamplesSearch-search-results-qv.js.map