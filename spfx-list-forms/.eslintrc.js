require('@rushstack/eslint-config/patch/modern-module-resolution');
module.exports = {
  extends: ['@microsoft/eslint-config-spfx/lib/profiles/react'],
  parserOptions: { tsconfigRootDir: __dirname },
  rules: {
    "@typescript-eslint/no-explicit-any": "off",
    "react/self-closing-comp": "off",
    "react/jsx-no-bind": "off",
    "@microsoft/spfx/no-async-await": "off"
  }
};