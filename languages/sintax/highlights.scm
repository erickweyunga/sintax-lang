; Keywords
[
  "pub"
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
  "catch"
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
  "void"
  "fn"
] @type.builtin

; Union type pipe
(return_type "|" @operator)

; Boolean literals
(true) @boolean
(false) @boolean

; Null
(null) @constant.builtin

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

; Return type
(return_type
  (type) @type.builtin)

; Variables
(assignment
  name: (identifier) @variable)

(typed_assignment
  type: (type) @type.builtin
  name: (identifier) @variable)

(catch_statement
  name: (identifier) @variable)

; String literals
(string) @string
(single_string) @string

; String escape sequences
(escape_sequence) @string.escape

; String interpolation
(interpolation
  "{" @punctuation.special
  (identifier) @variable
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

; Use statement
(use_statement
  path: (string) @string)

; Match default
"_" @keyword
