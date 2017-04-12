# Validations

1. As a user, I want to see a detail view of one particular course...
+  Does the schema need to change? --> No
+  What URL takes the user there?
  - GET '/courses/:id', this should go to the 'show' action


2. As a user, I want to be able to add a student to a course  
  + I should be able to create a new student with a first name, last name, email address, and specify what their course is
    - On the course detail page, I should be able to see all of the names of all of the students who are taking that course
