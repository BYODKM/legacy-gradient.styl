# [legacy-gradient.styl](legacy-gradient.styl)

Legacy webkit gradient syntax sugar.

## Usage

### From Stylus

```
@import "nib"
@import "legacy-gradient.styl"

.box
  background-image legacy-gradient(top left, red, blue)
  background-image linear-gradient(135deg, red, blue)
```

### To CSS

```
.box {
  background-image: -webkit-gradient(linear, left top, right bottom, color-stop(0, #f00), color-stop(1, #00f));
  background-image: -webkit-linear-gradient(315deg, #f00, #00f);
  background-image: -moz-linear-gradient(315deg, #f00, #00f);
  background-image: -o-linear-gradient(315deg, #f00, #00f);
  background-image: -ms-linear-gradient(315deg, #f00, #00f);
  background-image: linear-gradient(135deg, #f00, #00f);
}
```

## Known Issue

Because of imported nib library, actual output is a little bit different from above. But roughly speaking, browsers get same.

## License

MIT
