
SASS = sass

default: css

CSS_IN = scss/kaagazz.scss
CSS_OUT = css/default.css

css: ${CSS_OUT}

${CSS_OUT}: ${CSS_IN}
	${SASS} ${CSS_IN}:${CSS_OUT}

watch:
	${SASS} --watch ${CSS_IN}:${CSS_OUT}

clean:
	@rm ${CSS_OUT}
	@rm ${CSS_OUT}.map


