module.exports = {
  env: {
    browser: true,
    es6: true
  },
  extends: ["plugin:vue/recommended", 'plugin:prettier/recommended', 'prettier' ],
  rules: {
    'max-len': [2, {"code": 120}],
    'no-console': 'warn',
    'no-return-await': 'warn',
    'no-throw-literal': 'warn',
    'vue/require-default-prop': 'off',
    'vue/prop-name-casing': 'off',
    'object-curly-spacing': 'off',
    'lines-between-class-members': [
      'warn',
      'always',
      {exceptAfterSingleLine: true}
    ],
    'padding-line-between-statements': [
      'warn',
      {blankLine: 'always', prev: 'function', next: '*'},
      {blankLine: 'always', prev: 'import', next: ['class', 'function']}
    ],
    'vue/html-self-closing': [
      'warn',
      {
        html: {
          void: 'always'
        }
      }
    ]
  }
};