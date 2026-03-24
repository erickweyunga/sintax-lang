; Functions
(function_definition
  body: (_) @function.inside) @function.around

; Comments
(comment)+ @comment.around
(block_comment) @comment.around
