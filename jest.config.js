module.exports = {
  testEnvironment: 'jsdom',
  transform: {
    '^.+\\.(js|jsx)$': 'babel-jest',
  },
  transformIgnorePatterns: [
    '/node_modules/(?!(@testing-library/dom)/)',
  ],
  setupFilesAfterEnv: ['<rootDir>/src/setupTests.js'],
}; 