# sphinxer - GitHub Action
A GitHub Action to run Sphinx inside a Docker container

## Usage

### Example
Minimal:

```yaml
uses: g5t/sphinxer@v1.0.0
with:
  pages_dir: pages
```

A more realistic case, including appropriate checkouts and a more-recent version
of Sphinx than in the [Docker container](https://github.com/g5t/docact)

```yaml
steps:
- uses: actions/checkout@v2
  with:
    path: thisref

- uses: actions/checkout@v2
  with:
    ref: gh-pages
    path: pages

- uses: g5t/sphinxer@v1.1.0
  with:
    source_dir: thisref
    pages_dir: pages
    is_release: ${{ contains(github.event_name, 'release') }}
    create_readme: true
    requirements: 'sphinx==3.1.2 sphinx-argparse==0.2.5 sphinx-autodoc-typehints==1.11.0'
```
