**Assumptions**

Based on the instructions given, I've made the following assumptions:

The backend should include a method that measures the distance between two given strings, identified in my algorithm as (s) and (t). At the point of authentication, the data passed from my frontend should receive the two arguments, and complete the calculation. Once the calculation is complete, the computed output should be returned to the user in some form on the frontend.


**API Endpoint Testing**

The testing for my API endpoints is done with Rspec and located in app > spec > requests > status_spec
I completed testing for my get and post in the main endpoint with the expectation of a 200 return.


**Functional Testing**

The functional testing was done with Rspec as well, and located in app > spec > methods_spec

**Demo**

![Levenshtein](
https://github.com/ShawnCodes/jubilant_pancake_backend/blob/master/public/levenshtein_demo.gif?raw=true
)


**Installation**

Run: rails db:create && rails db:migrate


rails s -p 3001
