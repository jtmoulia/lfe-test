# lfe-test

A rebar3 plugin for ltest.

Attempts to provide `lfetool tests ...`. Let's see how it goes.

## Examples

`examples/ex_proj` is an example of a project using lfe-test. The lfe-test
plugin dependency is specified in the projects `rebar.config` plugins section:

```erlang
{plugins, [
  {'lfe-test', {git, "git@github.com:jtmoulia/lfe-test.git", {branch, "master"}}}
]}.
```
