# sphinxer - GitHub Action
A GitHub Action to run Sphinx inside a Docker container

## Usage

### Example
Minimal:

```yaml
uses: g5t/sphinxer
with:
  pages_dir: pages
```

A more realistic case, including appropriate checkouts:

```yaml
steps:
- uses: actions/checkout@v2
  with:
    path: thisref

- uses: actions/checkout@v2
  with:
    ref: gh-pages
    path: pages

- uses: g5t/sphinxer
  with:
    source_dir: thisref
    pages_dir: pages
    is_release: ${{ contains(github.event_name, 'release') }}
    create_readme: true
```
