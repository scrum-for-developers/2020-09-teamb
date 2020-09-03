Feature: Adding a new book to the library

  Scenario Outline: Adding a new book and do not allow inconsistencies

    Given an empty library

    When a librarian adds a book with "<title>", "<author>", <edition>, "<year>" and "<isbn>"
    And a librarian adds a book with "<title2>", "<author2>", <edition>, "<year>" and "<isbn>"
    
    Then the booklist contains a book with "<title>", "<author>", "<year>", <edition> and "<isbn>"
    And the library contains <nr> copies of the book with "<isbn>"

    Examples:

      | isbn       | author          | title    | edition | year | author2         | title2   | nr     |
      | 0552131075 | Terry Pratchett | Sourcery | 1       | 1989 |                 |          | 1      |
      | 0552131075 | Terry Pratchett | Sourcery | 1       | 1989 | Terry Pratchett | Sourcery | 2      |
      | 0552131075 | Terry Pratchett | Sourcery | 1       | 1989 | Jerry Pratchett | Sourcery | 1      |
      | 0552131075 | Terry Pratchett | Sourcery | 1       | 1989 | Terry Pratchett | Mastery  | 1      |

  Scenario Outline: Adding a new book with description

    Given an empty library

      When a librarian adds a book with "<title3>", "<author3>", "<description3>" , <edition3>, "<year3>" and "<isbn3>"
      Then the library contains 1 copy of the book with "<isbn>"

    Examples:

      | isbn3       | author3         | title3    | description3 | edition3 | year3 |
      | 0552131075  | Terry Pratchett | Sourcery  | Fancy book   | 1        | 1989  |
    







