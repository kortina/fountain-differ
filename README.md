# Fountain Differ

*Live demo [here](https://kortina.nyc/fountain-differ/).*

Share a nicely formatted diff of 2 fountain files.

## Why?

Some apps (like Highland 2) will allow you to track changes and compare differences between versions, but I wanted a way to generate a diff that I could send to any reader and allow them to view with just a web browser.

I considered just using GitHub gists, but they don't wrap and indent text of fountain files in a very readable way.

I also added a few bells and whistles like printing line numbers (so reviewers could comment to the effect of *"(123) this line is awkward"*) and linking to line numbers with `#anchors`.

##### TODO

- [ ] handle boneyard and bracket comments
- [ ] sample lef.fountain and right.fountain
- [ ] package the diff script, dynamically compute `$lines`
- [ ] upload and generate URL with diff script
- [ ] add scene numbers
- [ ] goto next / prev change shortcuts

## Usage

(1) Generate the diff:

```sh
lines=50000
git diff "-U$lines" \
tech-support-DRAFT-RAW-2021-04-06.fountain \
tech-support-DRAFT-RAW-2021-04-08.fountain \
| pbcopy
```

(2) Paste into a GitHub gist.

(3) Get the `raw` URL for the gist and load it into the form.


#### Development

```sh
./serve_dev.py # python3 script to serve index.html
```
