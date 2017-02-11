#!/usr/bin/env python
from gut_app import app
#app.run(debug = True)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug = True)