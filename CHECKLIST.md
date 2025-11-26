# ✅ Pre-Publish Checklist

## Before Publishing to NPM

### 📝 Documentation

- [x] README.md is complete and clear
- [x] QUICKSTART.md exists
- [x] EXAMPLES.md has useful examples
- [x] PUBLISHING.md has publishing instructions
- [x] CONTRIBUTING.md has contribution guidelines
- [x] TESTING.md has testing procedures
- [x] CHANGELOG.md is up to date
- [x] LICENSE file exists

### 🔧 Code Quality

- [ ] All code is tested and working
- [ ] No console.log() or debug code
- [ ] No TODO comments
- [ ] Code is well-commented
- [ ] Functions are properly named
- [ ] Error handling is in place

### 📦 Package Configuration

- [ ] package.json has correct name
- [ ] package.json has correct version
- [ ] package.json has description
- [ ] package.json has author info
- [ ] package.json has repository URL
- [ ] package.json has keywords
- [ ] package.json has correct license
- [ ] package.json bin field is correct
- [ ] .npmignore is configured

### 🧪 Testing

- [ ] CLI runs without errors
- [ ] All prompts work correctly
- [ ] All feature combinations tested
- [ ] Generated projects build successfully
- [ ] Generated projects run without errors
- [ ] Tested on Linux
- [ ] Tested on macOS (if possible)
- [ ] Tested on Windows (if possible)
- [ ] Tested with Node 18+
- [ ] Tested with all package managers (pnpm, npm, yarn)

### 🎨 User Experience

- [ ] Terminal colors display correctly
- [ ] Progress messages are clear
- [ ] Error messages are helpful
- [ ] Success message is encouraging
- [ ] Generated README is helpful

### 🔒 Security

- [ ] No sensitive data in code
- [ ] No API keys or secrets
- [ ] Dependencies are up to date
- [ ] No known vulnerabilities

### 📊 Performance

- [ ] CLI runs in < 2 seconds
- [ ] Generated files are minimal
- [ ] No unnecessary dependencies

## Publishing Steps

### 1. Final Review

```bash
# Review all files
ls -la

# Check package.json
cat package.json

# Test one more time
node index.js
```

### 2. Update Version

```bash
# For first publish, keep 1.0.0
# For updates:
npm version patch  # 1.0.0 -> 1.0.1
npm version minor  # 1.0.0 -> 1.1.0
npm version major  # 1.0.0 -> 2.0.0
```

### 3. Update CHANGELOG.md

Add release notes for the new version.

### 4. Commit Changes

```bash
git add .
git commit -m "chore: prepare for v1.0.0 release"
git push
```

### 5. Create Git Tag

```bash
git tag v1.0.0
git push --tags
```

### 6. Login to NPM

```bash
npm login
# Enter credentials
```

### 7. Publish

```bash
# Dry run first (optional)
npm publish --dry-run

# Actual publish
npm publish
```

### 8. Verify

```bash
# Check on npm
npm view create-tanstack-boilerplate

# Test installation
npx create-tanstack-boilerplate@latest
```

## Post-Publish

### 1. Announce

- [ ] Tweet about it
- [ ] Post on Reddit (r/reactjs, r/javascript)
- [ ] Share on LinkedIn
- [ ] Post in Discord/Slack communities
- [ ] Write a blog post

### 2. Monitor

- [ ] Watch for issues on GitHub
- [ ] Monitor npm downloads
- [ ] Respond to feedback

### 3. Update Documentation

- [ ] Add npm badge to README
- [ ] Update links to point to published package
- [ ] Add screenshots/GIFs if possible

## Common Issues & Solutions

### Issue: Package name already taken

**Solution**: Choose a different name or use scoped package
```json
{
  "name": "@yourusername/create-tanstack-boilerplate"
}
```

### Issue: 403 Forbidden

**Solution**: 
- Verify you're logged in: `npm whoami`
- Check package name availability
- For scoped packages, ensure you have access

### Issue: Version already published

**Solution**: Update version number
```bash
npm version patch
npm publish
```

### Issue: Files not included in package

**Solution**: Check .npmignore and package.json files field

## Rollback Plan

If something goes wrong:

```bash
# Unpublish within 72 hours
npm unpublish create-tanstack-boilerplate@1.0.0

# Or deprecate
npm deprecate create-tanstack-boilerplate@1.0.0 "This version has issues"
```

⚠️ **Warning**: Only unpublish if absolutely necessary!

## Success Metrics

Track these after publishing:

- [ ] NPM downloads per week
- [ ] GitHub stars
- [ ] Issues opened/closed
- [ ] Pull requests
- [ ] Community feedback

## Next Steps After Publishing

1. **Monitor for 24 hours** - Watch for any critical issues
2. **Respond to feedback** - Engage with early users
3. **Plan v1.1.0** - Based on feedback
4. **Keep dependencies updated** - Regular maintenance
5. **Add more features** - Based on user requests

---

## Quick Checklist Summary

Before you run `npm publish`:

✅ All tests pass  
✅ Documentation complete  
✅ package.json correct  
✅ Version updated  
✅ CHANGELOG updated  
✅ Git committed and tagged  
✅ Logged into npm  
✅ Ready to publish!  

---

**You got this! 🚀**
