'use strict';

const build = require('@microsoft/sp-build-web');
const path = require("path");

build.addSuppression(`Warning - [sass] The local CSS class 'ms-Grid' is not camelCase and will not be type-safe.`);

var getTasks = build.rig.getTasks;
build.rig.getTasks = function () {
  var result = getTasks.call(build.rig);

  result.set('serve', result.get('serve-deprecated'));

  return result;
};

const litFolders = [
  `node_modules${path.sep}lit${path.sep}`,
  `node_modules${path.sep}@lit${path.sep}`,
  `node_modules${path.sep}lit-html${path.sep}`,
  `node_modules${path.sep}lit-element${path.sep}`
];
build.configureWebpack.mergeConfig({
  additionalConfiguration: generatedConfiguration => {
    generatedConfiguration.module.rules.push({
      test: /\.js$/,
      // only run on lit packages
      include: resourcePath => 
        litFolders.some(litFolder => resourcePath.includes(litFolder)),
      use: {
        loader: 'babel-loader',
        options: {
          plugins: [
            '@babel/plugin-transform-optional-chaining',
            '@babel/plugin-transform-nullish-coalescing-operator',
            '@babel/plugin-transform-logical-assignment-operators'
          ]
        }
      }
    });
    return generatedConfiguration;
  }
});

build.initialize(require('gulp'));
