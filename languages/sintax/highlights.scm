; Keywords
[
  "fn"
  "return"
  "if"
  "else"
  "while"
  "for"
  "in"
  "match"
  "case"
  "use"
  "and"
  "or"
  "not"
] @keyword

; Types
[
  "num"
  "str"
  "bool"
  "list"
  "dict"
] @type.builtin

; Boolean literals
[
  "true"
  "false"
] @boolean

; Null
"null" @constant.builtin

; Function definition
(function_definition
  name: (identifier) @function)

; Function call
(call_expression
  function: (identifier) @function)

; Method call
(method_call
  method: (identifier) @function)

; Lambda
(lambda
  "->" @operator)

; Parameters
(parameter
  name: (identifier) @variable.parameter)

(typed_parameter
  type: (type) @type.builtin
  name: (identifier) @variable.parameter)

; Variables
(assignment
  name: (identifier) @variable)

(typed_assignment
  type: (type) @type.builtin
  name: (identifier) @variable)

; String literals
(string) @string
(single_string) @string

; String interpolation
(interpolation
  "{" @punctuation.special
  "}" @punctuation.special)

; Number literals
(number) @number

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "%"
  "**"
  "=="
  "!="
  ">"
  "<"
  ">="
  "<="
  "+="
  "-="
  "*="
  "/="
  "="
  "->"
] @operator

; Print operator
">>" @keyword

; Punctuation
["(" ")" "[" "]" "{" "}"] @punctuation.bracket
["," "." ":"] @punctuation.delimiter

; Comments
(comment) @comment
(block_comment) @comment

; Module paths
(module_path
  module: (identifier) @namespace
  "/" @punctuation.delimiter)

; Use statement
(use_statement
  path: (string) @string)

; Match default
"_" @keyword
