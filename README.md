# OAuth2 API Guard Sample

This Rails app demos how to build an OAuth 2 Authorization Server and Resource Server (API), and guard it with OAuth 2 Bearer Token.

Most components are built with existing solutions:

* Resource Owner (User) & its Authentication: [Devise](https://github.com/plataformatec/devise)
* Authorization Server: [Doorkeeper](https://github.com/applicake/doorkeeper)
* Resource Server (API): [Grape](https://github.com/intridea/grape)
* Resource Server Guard: [Rack::OAuth2](https://github.com/nov/rack-oauth2) (built from scratch, not using `doorkeeper_for` which is Rails-only)

## Tutorial

I've written a tutorial for this sample on my blog:

* Chinese: [OAuth 2.0 Tutorial: Grape API 整合 Doorkeeper](http://blog.yorkxin.org/posts/2013/10/10/oauth2-tutorial-grape-api-doorkeeper)
* English: [OAuth 2.0 Tutorial: Protect Grape API with Doorkeeper](http://blog.yorkxin.org/posts/2013/11/05/oauth2-tutorial-grape-api-doorkeeper-en)

## How to Run this App

### Ruby version

* 2.0.0 (Only tested with this version)

### System dependencies

* SQLite 3

### Configuration

Copy `config/application.yml.example` to `config/application.yml`, and fill in the values in that file.

For secret tokens, you can generate them with `rake secret`.

### Database initialization

Run:

    $ rake db:migrate

## License

The MIT License (MIT)

Copyright (c) 2013 Yu-Cheng Chuang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

