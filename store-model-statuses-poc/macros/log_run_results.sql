{% macro log_results(results) %}
    {% if execute %}

    create table if not exists run_model_status (
        run_at timestamp,
        model_name varchar,
        resource_type varchar,
        status varchar,
        execution_time double
    );

    {% for r in results %}
        insert into run_model_status values (
            current_timestamp,
            '{{ r.node.name }}',
            '{{ r.node.resource_type }}',
            '{{ r.status }}',
            {{ r.execution_time }}
        );
    {% endfor %}

    {% endif %}
{% endmacro %}
