; extends
((field
  name: (identifier) @odp.function_assignment
  value: (function_definition)
) (#set! "priority" 126))

(function_declaration
  name: (method_index_expression
    table: (identifier) @odp.class)
)
(function_declaration
  name: (dot_index_expression
    table: (identifier) @odp.class)
)
