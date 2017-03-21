1. What are some common HTTP status codes?
    - 200 OK: request has succeeded
    - 300 Multiple Choices: requested resource has different choices and cannot be resolved into one
    - 301 Moved Permanently: requested resource has been assigned a new permanent URI
    - 302 Found: requested resource resides temporarily in a different URI
    - 304 Not Modified: client performed a conditional GET request but the document has not been modified
    - 307 Temporary Redirect: requested resource resides temporarily under a diferent URI
    - 400 Bad Request: request could not be understood by the server, usually due to bad syntax
    - 401 Unauthorized: request requires user authentication
    - 403 Forbidden: server understood the request, but is refusing to fill it
    - 404 Not Found: server has not found anything matching the requested URI
    - 410 Gone: requested resource is no longer available at the server and no new location is provided
    - 500 Internal Server Error: server encountered an unexpected error
    - 501 Not Implemented: server does not support the functionality required to fulfill the request
    - 503 Service Unavailable: web server unable to handle the request at this time, usually due to server issues
    - 550 Permission Denied: server rejects current account
    - source: https://www.smartlabsoftware.com/ref/http-status-codes.htm

2. What is the difference between a GET request and a POST request? When might each be used?
    - GET and POST requests are both HTTP methods. The GET method requests data from a specified resource, and is commonly used when trying to view a web page. The POST method, on the other hand, submits data to be processed to a specified resource, such as submitting Facebook comments on a friend's wall.

3. BONUS: What is a cookie? How do they relate to HTTP requests?
    - Cookies are small pieces of data that a server sends to the user's web browser, which may store it and send it back with the next request to the same server. Cookies can be used for 1) session management, such as keeping a user logged in within the same server session; 2) personalization, such as user preferences; and 3) tracking, such as analyzing user behavior.