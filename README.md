# Fountain Differ

*Live demo [here](https://kortina.nyc/fountain-differ/?url=https%3A%2F%2Fraw.githubusercontent.com%2Fkortina%2Ffountain-differ%2Fmaster%2Fexamples%2Fexample.diff#L22).*

Share a nicely formatted diff of 2 fountain files.

![image](https://user-images.githubusercontent.com/5924/114415756-d5be8580-9b64-11eb-9513-ccba2de68354.png)

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
git --no-pager diff --no-index "-U$lines" \
older.fountain \
newer.fountain \
| pbcopy
# OR, use `fountain-diff.sh`
```

(2) Paste into a GitHub gist.

(3) Get the `raw` URL for the gist and load it into the form.


#### Development

```sh
./serve_dev.py # python3 script to serve index.html
```
