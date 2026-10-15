# This is a function description in Roxygen style:

#' @title Answers the question
#'
#' @description This gives the answer to a question./=
#' 
#' @param question you're very important question.
#'
#' @return numeric, the answer
#'
#' @example
#' ## A good question:
#' get.answer("what question?")

# But it can also just be:

## This function gets the answer
#INPUT question, your question
#OUTPUT numeric, the answer
# example:
# get.answer("Do I want to know?")

get.answer <- function(question) {
    return(42)
}

## Testing
# This should be TRUE
if(!get.answer("a question") == 42) {
    stop("Something went wrong")
}

## But see also in tests/testthat for a formalised implementation with the testthat package