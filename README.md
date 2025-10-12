# Quarto + GitHub Pages Starter

Replace `YOUR_USERNAME` and `YOUR_NAME` in `_quarto.yml`, then:

```bash
# preview locally (after installing Quarto)
quarto preview

# render
quarto render
```

Push to `main`; the GitHub Action will build and publish to the `gh-pages` branch.
In **Settings → Pages**, select:
- **Build and deployment**: **Deploy from a branch**
- **Branch**: `gh-pages` / `(root)`

The action writes `.nojekyll` and respects your `site-url` for canonical URLs.
