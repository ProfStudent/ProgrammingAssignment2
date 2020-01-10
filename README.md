---
output:
  pdf_document: default
  html_document: default
---
## Introduction

I'm glad to introduce my code for the Second Programming Assignment

## Description of the code

### The makeCacheMatrix() function creates a special "matrix" object that can cache its inverse.
**det()** function tests **X**. If **X** is a non-invertible matrix, **det()** returns an error.
**Other functions** are almost similar to **makeVector()** function in the example for this Assignment.
*The difference is that we search an inverted matrix instead of mean of a vector*

### **cacheSolve** function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
If the inverse has already been calculated (and the matrix has not changed, 
then the cacheSolve should retrieve the inverse from the cache.