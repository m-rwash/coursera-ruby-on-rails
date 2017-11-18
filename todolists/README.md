## Assignment for Module #2 and Module 4
#### Active Record Relationships, Nested Resources, Security, and Pagination
The overall goal of these assignments is to assess your ability to implement and use Active Record model relationships as well nested resources, authentication, authorization and pagination.

This includes:

  * Creating Active Record models and relationships between the models.
   * 
        |------| 1      1 |----------|
        | User |----------| Profile  |
        |------|          |----------|
            \
             \
              \ 1   * |----------| 1      * |----------|
               \------| TodoList |----------| TodoItem | 
                      |----------|          |----------|
  * Providing validations for models (using built-in Active Record validations as well as custom validations).
  * Implementing a grandparent relationship.
  * Providing bootstrap data using a `seeds.rb` file.
  * Implementing `default_scope` queries.
  * Implementing aggregation queries.
  * Implementing advanced queries (e.g., SQL snippets).
  * Implementing model/database (DB) cascades.
  * Lock down the application to only authenticated users.
  * Limit access to resources associated with the logged in user.
  * Access unbounded collections of resources using pagination.