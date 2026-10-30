# Semih Cayci - Academic homepage

An al-folio website prepared for **https://semihcayci.github.io**.

## Pages

About, Research, Publications, Teaching, Group, and CV. White background, dark text, a blue accent, and a responsive layout.

## Publishing

1. Create the public repository `semihcayci/semihcayci.github.io` on GitHub. If it already exists, inspect it before uploading; do not overwrite an existing website.
2. Upload this folder's contents to the repository's `main` branch, including `.github/workflows/deploy.yml` and the other dotfiles. Do not upload `_site`, `node_modules`, or build caches.
3. Open **Settings → Pages → Build and deployment** and select **GitHub Actions** as the source.
4. Open **Actions → Build and deploy website → Run workflow** if the initial upload ran before Pages was enabled.
5. Wait for the build and deployment jobs to succeed, then open `https://semihcayci.github.io`.

This customized workflow uses GitHub's Pages artifact deployment. Do not follow the generic al-folio instructions to select a `gh-pages` branch. No personal access token is needed by the deployment workflow.

## Updating content

| Content                                    | File                                  |
| ------------------------------------------ | ------------------------------------- |
| Name, metadata, site address               | `_config.yml`                         |
| Biography and homepage                     | `_pages/about.md`                     |
| Research                                   | `_pages/research.md`                  |
| Publications                               | `_bibliography/papers.bib`            |
| Downloadable original bibliography         | `assets/bibliography/semih-cayci.bib` |
| Teaching                                   | `_pages/teaching.md`                  |
| Group and supervision                      | `_pages/group.md`                     |
| Online CV                                  | `_data/cv.yml`                        |
| Downloadable selected CV                   | `assets/pdf/semih-cayci-cv.pdf`       |
| Portrait                                   | `assets/img/semih-cayci.jpg`          |
| Colors, typography, responsive refinements | `_sass/_personal.scss`                |

Add `bibtex_show = {true}` to display a paper's citation, and `selected = {true}` to feature it on the homepage. Use `category = {publication}` for published records and `category = {preprint}` with `@misc` for preprints. Add `html`, `pdf`, and `code` fields for available links. Update the downloadable bibliography alongside the display bibliography.

The PDF is a two-page selected public CV adapted from the supplied LaTeX source; it is separate from the online CV data. Replace it when updating the CV.

## Preview locally

With Ruby 4.0 and Node.js installed:

```sh
bundle install
bundle exec jekyll serve --host 127.0.0.1
```

Visit `http://127.0.0.1:4000`. Node is used by al-folio's JavaScript minifier; no frontend build is needed.

## Theme maintenance

Based on al-folio starter commit `929fbf71c5a45b13e9b5a20dfa425ce9e9de7935` and `al_folio_core` 1.0.15. Dependencies are pinned in `Gemfile` and `Gemfile.lock`.

The only shadowed theme file is `assets/css/main.scss`, which imports `_sass/_personal.scss` after the theme styles. It is tracked in `.al-folio-overrides.yml`. When updating dependencies, run:

```sh
bundle exec al-folio upgrade audit --no-fail
bundle exec al-folio upgrade overrides audit
bundle exec jekyll build
```

The local plugin `_plugins/style_cache.rb` includes the site's Sass files in the stylesheet version. This ensures returning visitors receive updated styling; al-folio 1.0.15 otherwise hashes only its bundled theme styles.

See the [al-folio documentation](https://github.com/alshedivat/al-folio/tree/main/docs).

## Content sources

Professional content and all 31 bibliography records come from the CV and BibTeX supplied by Semih Cayci on 30 October 2026. Commented-out LaTeX material was not used. The selected CV focuses on appointments, education, teaching, supervision, service, awarded grants, and awards. The photograph is from the [RWTH EDDy profile](https://www.eddy.rwth-aachen.de/people/cayci/).

The al-folio theme is distributed under the MIT license; see `LICENSE`.
