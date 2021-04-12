# Fountain Differ

*Live demo [here](https://kortina.nyc/fountain-differ/).*

Share a nicely formatted diff of 2 fountain files.

##### TODO

- [ ] handle boneyard and bracket comments

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