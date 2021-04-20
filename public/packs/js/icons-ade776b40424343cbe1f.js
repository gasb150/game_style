/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
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
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/icons.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/icons.js":
/*!***************************************!*\
  !*** ./app/javascript/packs/icons.js ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /home/tavo/Microverse/Capstone/Rails/game_style/app/javascript/packs/icons.js: Support for the experimental syntax 'jsx' isn't currently enabled (5:10):\n\n  3 |   let url = '';\n  4 |   if (status <= 232) {\n> 5 |    url = <span class=\"iconify\" data-icon=\"carbon:thunderstorm-strong\" data-inline=\"false\"></span>;\n    |          ^\n  6 |   } else if (status <= 321) {\n  7 |     url = <span class=\"iconify\" data-icon=\"bi-cloud-drizzle\" data-inline=\"false\"></span>;\n  8 |   } else if (status <= 531) {\n\nAdd @babel/preset-react (https://git.io/JfeDR) to the 'presets' section of your Babel config to enable transformation.\nIf you want to leave it as-is, add @babel/plugin-syntax-jsx (https://git.io/vb4yA) to the 'plugins' section to enable parsing.\n    at Parser._raise (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:776:17)\n    at Parser.raiseWithData (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:769:17)\n    at Parser.expectOnePlugin (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:9683:18)\n    at Parser.parseExprAtom (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:11054:22)\n    at Parser.parseExprSubscripts (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10637:23)\n    at Parser.parseUpdate (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10617:21)\n    at Parser.parseMaybeUnary (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10595:23)\n    at Parser.parseExprOps (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10456:23)\n    at Parser.parseMaybeConditional (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10430:23)\n    at Parser.parseMaybeAssign (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10393:21)\n    at Parser.parseMaybeAssign (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10417:25)\n    at Parser.parseExpressionBase (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10338:23)\n    at allowInAnd (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10332:39)\n    at Parser.allowInAnd (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12027:16)\n    at Parser.parseExpression (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:10332:17)\n    at Parser.parseStatementContent (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12315:23)\n    at Parser.parseStatement (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12184:17)\n    at Parser.parseBlockOrModuleBlockBody (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12764:25)\n    at Parser.parseBlockBody (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12755:10)\n    at Parser.parseBlock (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12739:10)\n    at Parser.parseStatementContent (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12260:21)\n    at Parser.parseStatement (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12184:17)\n    at Parser.parseIfStatement (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12538:28)\n    at Parser.parseStatementContent (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12229:21)\n    at Parser.parseStatement (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12184:17)\n    at Parser.parseBlockOrModuleBlockBody (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12764:25)\n    at Parser.parseBlockBody (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12755:10)\n    at Parser.parseBlock (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:12739:10)\n    at Parser.parseFunctionBody (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:11706:24)\n    at Parser.parseFunctionBodyAndFinish (/home/tavo/Microverse/Capstone/Rails/game_style/node_modules/@babel/parser/lib/index.js:11690:10)");

/***/ })

/******/ });
//# sourceMappingURL=icons-ade776b40424343cbe1f.js.map