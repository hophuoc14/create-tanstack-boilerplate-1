# ⚡ Quick Reference Card

## 🚀 One-Liner Commands

### Test Locally
```bash
cd create-boilerplate && node index.js
```

### Link Globally
```bash
cd create-boilerplate && npm link && create-tanstack-boilerplate
```

### Publish to NPM
```bash
npm login && npm publish
```

### Test Published Package
```bash
npx your-package-name@latest
```

---

## 📁 File Quick Reference

| File | Purpose | When to Read |
|------|---------|--------------|
| **START_HERE.md** | Getting started | First time |
| **README.md** | Main docs | Overview |
| **QUICKSTART.md** | Quick guide | Want to start fast |
| **EXAMPLES.md** | Usage examples | Need examples |
| **CHECKLIST.md** | Pre-publish | Before publishing |
| **PUBLISHING.md** | Publish guide | Publishing to npm |
| **TESTING.md** | Test guide | Testing the CLI |
| **CONTRIBUTING.md** | Contribute | Want to contribute |
| **OVERVIEW_VI.md** | Vietnamese guide | Đọc tiếng Việt |

---

## 🎯 Common Tasks

### Create a Test Project
```bash
node index.js
# Name: test-app
# Manager: pnpm
# Features: (select what you want)
# Languages: en, vi
# Git: yes
```

### Test Generated Project
```bash
cd test-app
pnpm install
pnpm dev
# Open http://localhost:3000
```

### Update Package Version
```bash
npm version patch  # 1.0.0 -> 1.0.1
npm version minor  # 1.0.0 -> 1.1.0
npm version major  # 1.0.0 -> 2.0.0
```

### Publish Update
```bash
npm publish
```

---

## 🎨 Feature Combinations

### Minimal
```
Features: (none)
Use case: Simple SPA, learning
```

### UI-Focused
```
Features: ui, quality
Use case: Landing pages, portfolios
```

### Multi-language
```
Features: i18n, ui, quality
Languages: en, vi, ja
Use case: International websites
```

### Full-Stack
```
Features: all
Use case: Production apps
```

---

## 📦 Package.json Quick Edit

```json
{
  "name": "create-your-unique-name",  // ← Change this
  "version": "1.0.0",
  "author": "Your Name <email>",      // ← Change this
  "repository": {
    "type": "git",
    "url": "https://github.com/you/repo.git"  // ← Change this
  }
}
```

---

## 🧪 Testing Checklist

- [ ] `node index.js` runs without errors
- [ ] All prompts work
- [ ] Project is created
- [ ] `pnpm install` works in generated project
- [ ] `pnpm dev` starts server
- [ ] `pnpm build` completes

---

## 📝 Pre-Publish Checklist

- [ ] Update package.json (name, author, repo)
- [ ] Test CLI thoroughly
- [ ] Update CHANGELOG.md
- [ ] Commit all changes
- [ ] `npm login`
- [ ] `npm publish --dry-run`
- [ ] `npm publish`

---

## 🔧 Troubleshooting

### CLI doesn't run
```bash
# Check Node version
node --version  # Should be >= 18

# Reinstall dependencies
rm -rf node_modules
pnpm install
```

### Generated project errors
```bash
cd generated-project
rm -rf node_modules
pnpm install
pnpm dev
```

### Publish fails
```bash
# Check if logged in
npm whoami

# Check package name availability
npm view your-package-name

# Try different name or scoped package
# @yourusername/create-tanstack-boilerplate
```

---

## 📊 NPM Commands

```bash
# Login
npm login

# Check who you are
npm whoami

# Publish
npm publish

# Publish scoped package
npm publish --access public

# View package info
npm view your-package-name

# Unpublish (within 72h)
npm unpublish your-package-name@1.0.0

# Deprecate version
npm deprecate your-package-name@1.0.0 "Message"
```

---

## 🌐 Useful Links

- **NPM**: https://www.npmjs.com/
- **TanStack Start**: https://tanstack.com/start
- **Inlang**: https://inlang.com
- **Radix UI**: https://radix-ui.com
- **Tailwind**: https://tailwindcss.com
- **Vitest**: https://vitest.dev

---

## 💡 Quick Tips

1. **Test before publish** - Always test thoroughly
2. **Use semantic versioning** - MAJOR.MINOR.PATCH
3. **Update CHANGELOG** - Keep users informed
4. **Respond to issues** - Engage with community
5. **Keep dependencies updated** - Regular maintenance

---

## 🎯 Success Metrics

Track these after publishing:

- NPM downloads: `npm view your-package downloads`
- GitHub stars (if you create repo)
- Issues opened/closed
- Community feedback

---

## 📞 Need Help?

1. Read **START_HERE.md**
2. Check **EXAMPLES.md**
3. Review **TESTING.md**
4. See **CHECKLIST.md**

---

## 🚀 Launch Command

When ready:

```bash
npm publish
```

---

**Keep this card handy! 📌**
