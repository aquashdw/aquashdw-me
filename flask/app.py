from flask import Flask, render_template, request, redirect

app = Flask(__name__)


DOMAIN = ""


@app.route('/')
def hello_world():
    return render_template('index.html')


@app.route('/assets/assets/images/<image_name>')
def get_image_assets(image_name):
    return redirect(DOMAIN + '/static/assets/assets/images/' + image_name)


@app.route('/assets/<manifest>')
def get_manifest(manifest):
    return redirect(DOMAIN + '/static/assets/' + manifest)


@app.route('/assets/fonts/<font_file_name>')
def get_fonts(font_file_name):
    return redirect(DOMAIN + '/static/assets/fonts/' + font_file_name)


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8080)
