# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import deepsea with context %}

include:
  - {{ '.source' if deepsea.pkg.use_upstream_source else '.package' }}
  - .config
  - .service
