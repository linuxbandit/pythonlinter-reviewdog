# pythonlinter-reviewdog

python linter [NB: not pylint] with [Review Dog](https://github.com/reviewdog/reviewdog) inside. For use with [CI templates](https://github.com/jobtome-labs/ci-templates/).

Based on [`wemake-services/wemake-python-styleguide`](https://github.com/wemake-services/wemake-python-styleguide) image.

### Versions
|||
|-|-|
| wemake-python-styleguide | latest |
| reviewdog | v0.9.17 |

NOTE: there is no fixed tag as of now, only latest

To override these default versions:

`docker build -t linuxbandit/pythonlinter-reviewdog --build-arg LINTER_VERSION=v9000 --build-arg REVIEWDOG_VERSION=v1000 .`
