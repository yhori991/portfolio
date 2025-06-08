default:
    just --list
preview:
    pixi run quarto preview docs --host 0.0.0.0 --port 5000
render:
    pixi run quarto render docs
publish:
    pixi run quarto publish gh-pages --no-prompt --no-browser --no-render docs
clean:
    git clean -fdx # remove untraced files
