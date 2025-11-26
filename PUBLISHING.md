# 📦 Publishing Guide

## Prerequisites

1. **NPM Account**: Create an account at [npmjs.com](https://www.npmjs.com/)
2. **Package Name**: Choose a unique name (check availability on npm)

## Steps to Publish

### 1. Update Package Information

Edit `package.json`:

```json
{
  "name": "create-your-boilerplate-name",  // Change this to your unique name
  "version": "1.0.0",
  "description": "Your description here",
  "author": "Your Name <your.email@example.com>",
  "repository": {
    "type": "git",
    "url": "https://github.com/yourusername/your-repo.git"
  },
  "keywords": [
    "tanstack",
    "react",
    "boilerplate",
    "cli",
    "starter"
  ]
}
```

### 2. Test Locally

```bash
# Test the CLI
node index.js

# Or link globally and test
npm link
create-your-boilerplate-name
```

### 3. Login to NPM

```bash
npm login
```

Enter your:
- Username
- Password
- Email
- 2FA code (if enabled)

### 4. Publish

```bash
# First time publish
npm publish

# If you get a 403 error (name taken), change the package name in package.json
```

### 5. Verify

```bash
# Check if published
npm view create-your-boilerplate-name

# Test installation
npx create-your-boilerplate-name
```

## Updating the Package

### 1. Make Changes

Edit your code as needed.

### 2. Update Version

```bash
# Patch version (1.0.0 -> 1.0.1)
npm version patch

# Minor version (1.0.0 -> 1.1.0)
npm version minor

# Major version (1.0.0 -> 2.0.0)
npm version major
```

### 3. Publish Update

```bash
npm publish
```

## Package Naming Conventions

### Option 1: Scoped Package (Recommended)
```json
{
  "name": "@yourusername/create-tanstack-boilerplate"
}
```

Usage:
```bash
npm create @yourusername/tanstack-boilerplate
```

### Option 2: Unscoped Package
```json
{
  "name": "create-tanstack-boilerplate"
}
```

Usage:
```bash
npm create tanstack-boilerplate
```

## Best Practices

1. **Semantic Versioning**: Follow [semver](https://semver.org/)
   - MAJOR: Breaking changes
   - MINOR: New features (backward compatible)
   - PATCH: Bug fixes

2. **Changelog**: Keep a CHANGELOG.md

3. **Testing**: Test thoroughly before publishing

4. **Documentation**: Keep README up to date

5. **License**: Include a LICENSE file (MIT recommended)

## Common Issues

### Package Name Already Taken

Change the name in `package.json` or use a scoped package:
```json
{
  "name": "@yourusername/create-tanstack-boilerplate"
}
```

### 403 Forbidden

- Check if name is available
- Verify you're logged in: `npm whoami`
- For scoped packages, ensure you have access

### Version Already Published

Update version number:
```bash
npm version patch
npm publish
```

## Unpublishing (Use with Caution)

```bash
# Unpublish specific version
npm unpublish create-your-package@1.0.0

# Unpublish entire package (only within 72 hours)
npm unpublish create-your-package --force
```

⚠️ **Warning**: Unpublishing is permanent and can break projects depending on your package!

## Maintenance

### Deprecate a Version

```bash
npm deprecate create-your-package@1.0.0 "This version has a critical bug"
```

### Transfer Ownership

```bash
npm owner add <username> create-your-package
npm owner rm <username> create-your-package
```

## Resources

- [NPM Publishing Guide](https://docs.npmjs.com/packages-and-modules/contributing-packages-to-the-registry)
- [Semantic Versioning](https://semver.org/)
- [NPM CLI Documentation](https://docs.npmjs.com/cli/)

---

**Good luck with your package! 🚀**
