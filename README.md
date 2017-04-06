# Identicon

### Content

* [Description](#description)

* [Installation](#installation)

* [Requirements](#requirements)

* [Run project](#run-project)

* [Contribute](#contribute)

* [Author](#author)

* [License](#license)

* [Documentation](#documentation)

<a name="description"/>

### Description

This project is used to transform a string into an image (identicon) which is just a mirrored image with one color filled squares in a grid:

![identicon](https://github.com/yovasx2/identicon/blob/master/example.png)

<a name="installation">

### Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `identicon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:identicon, "~> 0.1.0"}]
end
```

Otherwise it has to be installed manually

<a name="requirements"/>

### Requirements

In order to execute this project you need to install:

* [Elixir 1.4.2](http://elixir-lang.org/)

  You can check this with `elixir -v`

<a name="run-project"/>

### Run project

1. Clone the repo

       $ git clone https://github.com/yovasx2/identicon

2. Move into it and install dependencies

       $ cd identicon

3. Execute

       $ mix run -e "Identicon.generate(<string>)"

<a name="documentation"/>

### Documentation
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/identicon](https://hexdocs.pm/identicon).


<a name="contribute"/>

### Contribute

You can contribute to this project in many forms:

* [Reporting bugs](https://github.com/yovasx2/identicon/issues)

* [Writing issues](https://github.com/yovasx2/identicon/issues)

* Adding [features](https://github.com/yovasx2/identicon/pulls) (examples)

<a name="author"/>

### Author

1. Giovanni Alberto García

    * <a href="mailto:delirable@gmail.com">delirable@gmail.com</a>

    * [github.com/yovasx2](http://github.com/yovasx2)

<a name="license"/>

### License

[MIT License](http://choosealicense.com/licenses/mit/)
