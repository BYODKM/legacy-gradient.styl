# [legacy-gradient.styl](legacy-gradient.styl)

> Webkit legacy gradient mixin for [Stylus](http://learnboost.github.io/stylus/).

## Usage

test.styl:

```
@import "nib" // or "kouto-swiss"
@import "legacy-gradient.styl"

.box
  background-image legacy-gradient(top left, red 0%, blue 100%)
  background-image linear-gradient(135deg, red, blue)
```

test.css:

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

## Known Issues

- Because of imported nib library, actual output is a little bit different from above. But roughly speaking, browsers get same.

- With [kouto-swiss](http://kouto-swiss.io), legacy-gradient mixin needs color-stops percentages.

## Install

```
$ bower install --save legacy-gradient.styl
```

## License

MIT
