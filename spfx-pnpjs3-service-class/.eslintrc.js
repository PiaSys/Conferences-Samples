require('@rushstack/eslint-config/patch/modern-module-resolution');
module.exports = {
  extends: ['@microsoft/eslint-config-spfx/lib/profiles/react'],
  parserOptions: { tsconfigRootDir: __dirname },
  rules: {
    "@microsoft/spfx/no-async-await": "off",
    "@typescript-eslint/no-explicit-any": "off",
    "@typescript-eslint/typedef": "off",
    "@typescript-eslint/no-unused-vars": "off"
  }
};