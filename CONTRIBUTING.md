# Contributing to Create TanStack Boilerplate

First off, thank you for considering contributing! 🎉

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce**
- **Expected vs actual behavior**
- **Environment details** (OS, Node version, package manager)
- **Screenshots** if applicable

### Suggesting Features

Feature suggestions are welcome! Please:

- **Check existing feature requests** first
- **Provide clear use case** and benefits
- **Explain why** this would be useful
- **Consider implementation** complexity

### Pull Requests

1. **Fork the repo** and create your branch from `main`
2. **Make your changes** with clear, descriptive commits
3. **Test thoroughly** - ensure CLI works as expected
4. **Update documentation** if needed
5. **Submit PR** with clear description

## Development Setup

```bash
# Clone your fork
git clone https://github.com/yourusername/create-tanstack-boilerplate.git
cd create-tanstack-boilerplate

# Install dependencies
pnpm install

# Test locally
node index.js

# Or link globally
npm link
create-tanstack-boilerplate
```

## Project Structure

```
create-tanstack-boilerplate/
├── index.js           # Main CLI script
├── package.json       # Package configuration
├── README.md          # User documentation
├── PUBLISHING.md      # Publishing guide
├── CHANGELOG.md       # Version history
└── LICENSE            # MIT license
```

## Code Style

- Use **ES modules** (import/export)
- Follow **existing code style**
- Add **comments** for complex logic
- Keep functions **small and focused**
- Use **descriptive variable names**

## Adding New Features

### Adding a New Feature Option

1. **Add to FEATURES object** in `index.js`:

```javascript
const FEATURES = {
  // ... existing features
  yourFeature: {
    name: 'Your Feature Name',
    description: 'Brief description',
    packages: ['package-name'],
    devPackages: ['dev-package-name']
  }
}
```

2. **Create setup function**:

```javascript
function createYourFeatureSetup(root) {
  // Create necessary files and directories
  fs.writeFileSync(
    path.join(root, 'your-file.ts'),
    'your content'
  )
}
```

3. **Add to init() flow**:

```javascript
if (features.includes('yourFeature')) {
  createYourFeatureSetup(root)
}
```

4. **Update documentation** in README.md

### Adding Template Files

Create generator functions that return template code:

```javascript
function getYourTemplate() {
  return `// Your template code here
export default function YourComponent() {
  return <div>Hello</div>
}
`
}
```

## Testing

Before submitting:

1. **Test CLI interactively**:
```bash
node index.js
```

2. **Test all feature combinations**:
   - With i18n
   - Without i18n
   - Different package managers
   - Different language selections

3. **Verify generated project**:
```bash
cd generated-project
pnpm install
pnpm dev
```

4. **Check for errors**:
   - No TypeScript errors
   - No build errors
   - Dev server starts correctly

## Commit Messages

Use clear, descriptive commit messages:

```
feat: add database integration option
fix: correct tailwind config generation
docs: update README with new examples
refactor: simplify i18n setup logic
test: add validation for project names
```

Prefixes:
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `refactor:` - Code refactoring
- `test:` - Testing
- `chore:` - Maintenance

## Release Process

1. Update version in `package.json`
2. Update `CHANGELOG.md`
3. Commit changes
4. Create git tag: `git tag v1.x.x`
5. Push: `git push --tags`
6. Publish: `npm publish`

## Questions?

Feel free to:
- Open an issue for discussion
- Ask in pull request comments
- Reach out to maintainers

## Code of Conduct

- Be respectful and inclusive
- Welcome newcomers
- Focus on constructive feedback
- Help others learn

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

**Thank you for contributing! 🚀**
