




{% import_yaml "artifactory.yaml" as art %}
{% for artifact in art['artifactories']  -%}
{{ artifact }}_module_downloaded_jinja:
  artifactory.downloaded:
    - target_file: /opt/tools/my-app.zip
    - artifact:
{%- for keys, values in art['artifactories'][ artifact ].iteritems() %}

{% if keys != "target_file" %}
        {{keys}}: '{{ values |e -}}'
{% endif %}
{% endfor %}
{% endfor -%}
