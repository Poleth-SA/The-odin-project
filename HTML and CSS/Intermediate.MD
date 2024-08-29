# Cheatsheets:
- [Emmets](https://docs.emmet.io/cheat-sheet/)
- [CSS](https://htmlcheatsheet.com/css/)
- [HTML](https://htmlcheatsheet.com/)

# Emmets:
- Emmets are built into VS code to help write code in HTML and CSS faster.
- Writing '!' will give you the basic HTML structure.
- The basic HTML structure consists of:
    ```html
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>

    </body>
    </html>
    ```

# SVG:
- SVG stands for Scalable Vector Graphics.
- SVG is a common image format used in web development.
- They are often used for icons, graphs/charts, large simple images, patterned backgrounds, and applying effects to other elements.
- They are written in XML format and can be put directly above the HTML code.
- SVG can be created in Adobe Illustrator, Inkscape, or directly in code (it's better to download the files into the code).
- `xmlns` is the XML namespace attribute.
- `viewBox` is the coordinate system of the SVG.
- `class` and `id` allow you to style the SVG with CSS.
- Elements such as `<circle>`, `<rect>`, `<path>`, `<text>`, `<polygon>`, and `<path>` can be used to create shapes and text.
- Attributes such as `fill`, `stroke`, `stroke-width`, and `d` are used to style the shapes.

# Tables:
- HTML tables are used to display data in a two-dimensional format, consisting of rows and columns.
- They are created using `<table></table>` tags, with elements for rows, columns, headers, etc., placed inside.
- HTML tables might not be as commonly used as other elements like buttons or lists, but they are ideal for specific data presentation needs.
- Advanced table features can be tricky to set up, but creating basic tables is straightforward.

# Default Style:
- Browsers automatically add basic styles to every webpage, like making `<h1>` headings bigger and `<a>` links blue and underlined.
- These default styles can be different depending on the browser.
- You can write your own CSS to change or remove these default styles.
- Some developers use "CSS resets" to clear out the browser's default styles, making it easier to apply their own styles consistently across all browsers.
- Using a CSS reset is optional; you can use a prebuilt one, make your own, or skip it altogether. It's up to you.

# CSS Units:
- CSS units are used to set sizes in CSS and are divided into absolute and relative types.

## Absolute units:
- Absolute units stay the same size no matter where they are used.
- `px` (pixels) is the main one you should use for web design.
- Other units like inches (`in`) and centimeters (`cm`) are mostly for print.

## Relative units:
- Relative units change size depending on where they are used.
- `em`: Based on the font size of the element (or its parent). Example: If the font size is 16px, 4em would be 64px.
- `rem`: Based on the root element's font size. It's easier to use than `em` because it doesn't depend on the parent's font size.

# Use rem:
- `rem` is best for setting font sizes on a website.
- It respects user preferences for font size, making text easier to read.

# Viewport Units:
- `vh`: 1% of the screen height.
- `vw`: 1% of the screen width.
- Viewport units are good for making things fit the screen size, like full-screen sections.

# More Text Styles:
- Fonts: Learn how to use and customize fonts in CSS.
- System Font Stack:
    - If a font isn't available, a fallback font will be used.
    - Example: `font-family: system-ui, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;`
- Web Fonts:
    - Import fonts from online sources like Google Fonts.
    - Example: `<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">`
    - Make sure to include a fallback font.
- Self-hosted Fonts:
    - Download and use fonts yourself with `@font-face`.
    - Example: 
    ```css
    @font-face {
        font-family: my-cool-font;
        src: url(../fonts/the-font-file.woff);
    }
    h1 {
        font-family: my-cool-font, sans-serif;
    }
    ```
- Text Styles:
    - `font-style`: Use for italic text.
        - Example: `font-style: italic;`
    - `letter-spacing`: Adjust space between letters.
    - `line-height`: Adjust space between lines of text.
    - `text-transform`: Change text case (uppercase, lowercase, etc.).
    - `text-shadow`: Add shadow to text.
- Ellipsis:
    - Use `text-overflow: ellipsis;` to truncate overflowing text with "...".
    - Example: 
    ```css
    .overflowing {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    ```

# More CSS Properties:
- `background`:
    - `background` is a shorthand for several properties like color, image, position, size, and repeat.
    - You can also use these properties individually for clarity.
- `border`:
    - `border` is a shorthand for `border-width`, `border-style`, and `border-color`.
    - `border-radius` creates rounded corners.
    - Example: `border: 2px solid black;`
- `box-shadow`:
    - Adds a shadow around an element to create depth and separation.
    - Use subtle shadows for best results.
- `overflow`:
    - Controls what happens when content is too big to fit.
    - Commonly used to add scrollbars to elements.
- `opacity`:
    - Adjusts the transparency of an element.
    - Useful for creating effects and layering.

# Advanced Selectors:
- Child and sibling combintors
    - `>` (child combinator)
        - selects direct children
        - Examples: `main > div` selects only direct child `div`s of `main`
    - `+` (adjncet Sibling combinator)
        - selects the next sibling immidiately after
        - Examples: `.group1 + div` selects the `div` right after `.group1`.
    - `~` (General Sibling Combinator)
        - Selects all siblings after the specified element.
        - Example: .group1 ~ div selects all .group1 siblings after it.
- Pseudo-Classes
    -`:focus`: Applies to elements currently selected by the user.
    - `:hover`: Applies to elements under the user's mouse pointer.
    - `:active`: Applies to elements being clicked.
    - `:link`: Styles unvisited links.
    - `:visited`: Styles visited links.
    - `:first-child`: Selects the first child of a parent.
    - `:last-child`: Selects the last child of a parent.
    - `:nth-child(n)`: Selects the nth child. Use 3n for every 3rd child, 3n+3 for every 3rd starting from the 3rd.
- Pseudo-Elements
    - `::marker`: Styles list item markers (bullets/numbers).
    - `::first-letter`: Styles the first letter of a block of text.
    - `::first-line`: Styles the first line of a block of text.
    - `::selection`: Styles the text selected by the user.
    - `::before`: Inserts content before an element's content.
    - `::after`: Inserts content after an element's content.
- Attribute Selectors
    - `[attribute]`: Selects elements with the specified attribute.
    - `[attribute="value"]`: Selects elements where the attribute equals the value.
    - `[attribute^="value"]`: Selects elements where the attribute value starts with "value".
    - `[attribute$="value"]`: Selects elements where the attribute value ends with "value".
    - `[attribute*="value"]`: Selects elements where the attribute value contains "value".

# Positioning
- Static Positioning
    - Default position for elements.
    - `top`, `right`, `bottom`, `left` do not affect position.
- Relative Positioning
    - Similar to static, but `top`, `right`, `bottom`, `left` adjust position relative to its normal place.
- Absolute Positioning
    - `position: absolute`: 
        - Positions element at a specific point on the screen.
        - Removed from the normal document flow.
        - Positioned relative to the nearest positioned ancestor (not static).
        - Use Cases: Modals, Image captions and Icons on top of other elements
    - **Important Note:**
        - Use for specific cases. Prefer flexbox or grid for layout.
        - Example:
            ```css
            .card-container {
                position: relative;
                width: 100%;
            }
                .card-image {
                position: absolute;
                width: 100%;
                z-index: -1;
            }
            .card-body {
                position: absolute;
                width: 100%;
                background: black;
                opacity: 0.6;
                color: white;
                top: 8rem;
                text-align: center;
                font-size: 1.2em;
                font-family: roboto;
            }
            ```
- Fixed Positioning
    - `position: fixed`:
        - Element fixed relative to the viewport (browser window).
        - Stays in place while scrolling.
        - Use Cases: Navigation bars and Floating chat buttons
- Sticky Positioning
    - `position: sticky`:
        - Behaves like normal until scrolling past a threshold, then acts like `fixed`.
        - Remains in the document flow.
        - Use Cases: Section headings and Elements that should stick in view while scrolling

# CSS Fuctions
- CSS functions have a syntax like `function(arg1, arg2, ...)`.
- Functions perform specific tasks and use arguments inside parentheses.

- What is a CSS Function?
    - Functions:
        - Reusable pieces of code.
        - Accept arguments in parentheses.
        - Examples: `rgb()`, `linear-gradient()`
    - No Custom Functions:
        - CSS only uses built-in functions.
    - common fuctions:
        - `calc()`:
            - Purpose: Perform calculations.
            - Usage: Mix units (e.g., `rem`, `px`, `vh`).
            - Example:
            ```:root {
                    --header: 3rem;
                    --footer: 40px;
                    --main: calc(100vh - calc(var(--header) + var(--footer)));
                }
            ```
        - `min()`:
            - Purpose: Set a value to the smallest one given.
            - Usage: Make elements responsive.
            - Example:
            ```#iconHolder {
                    width: min(150px, 100%);
                    height: min(150px, 100%);
                }
            ```
        - `max()`:
            - Purpose: Set a value to the largest one given.
            - Usage: Ensure a minimum value.
            - Example: 
            ```width: max(100px, 4em, 50%);```
        - `clamp()`:
            - Purpose: Create fluid and responsive values.
            - Usage: Set a value with a minimum, ideal, and maximum.
            - Example:
            ```h1 {
                    font-size: clamp(320px, 80vw, 60rem);
                }
            ```
            - Values:
                - Smallest value: `320px`
                - Ideal value: `80vw`
                - Largest value: `60rem`
# Custom Properties
- Custom Properties (CSS Variables):
    - Allow referencing a value multiple times.
    - Update one value to change it everywhere it's used.
    - Useful for consistent styling and theming.
    - Keeps your colors, fonts, etc., consistent.
    - Makes it easy to switch between themes, like dark and light mode.
- Using Custom Properties:
    - Declaring a custom property: `--property-name: value;`
    - Accessing it with `var(--property-name)` in CSS
- Fallback Values:
    - `var()` function accepts a fallback value if the custom property is invalid or undeclared.
    - Example: `color: var(--undeclared-property, fallback-value);.`
- Scope of Custom Properties:
    - Scope is determined by the selector where the property is declared.
    - Properties apply to the selector and its descendants.
- The :root Selector:
    - Declaring custom properties on `:root` makes them accessible globally in the CSS file.
    - `:root` is like the `html` selector but with higher specificity.
- Creating Themes with Custom Properties:
    - Custom properties can be redefined in different contexts (e.g., `dark` and `light` themes).
    - Useful for global styling and theme switching.
- Using Media Queries:
    - `prefers-color-scheme` media query adapts themes based on user’s OS/browser settings.
    - Supports `dark` and `light` values for automatic theme adjustments.
    - Important for respecting user preferences while allowing manual theme changes.

# Form Basics
- **Forms in HTML**: Forms are critical as they collect user data for backend processing.
- Form Structure:
    - `<form>` element acts as a container for inputs.
    - Two essential attributes:
        - `action`: Specifies where the form data should be sent.
        - `method`: Specifies the HTTP request method (GET or POST).
- Form Controls:
    - Elements users interact with, like text boxes, dropdowns, checkboxes, and buttons.
- Input Element:
    - Most versatile form control.
    - Different types include `text`, `email`, `password`, `number`, and `date`.
    - `label` tags help users understand what data to enter.
    - `placeholder` attribute provides example input text.
    - `name` attribute identifies input data in form submissions.
- Textarea: Used for multi-line text input. It can be resized and has customizable rows and cols.
- Selection Elements:
    - `<select>` for dropdowns.
    - `<option>` for dropdown items.
    - `<optgroup>` for grouping options.
- Radio Buttons:
    - Allow selection of one option among several.
    - Grouped by the same `name` attribute.
- Checkboxes:
    - Allow multiple selections.
    - Can be used for individual choices or toggles.
- Buttons:
    - Submit button (`type="submit"`): Submits form data.
    - Reset button (`type="reset"`): Clears form data.
    - Generic button (`type="button"`): Used for custom actions with JavaScript.
- Organizing Forms:
    - `<fieldset>`: Groups related form controls.
    - `<legend>`: Provides a caption for a fieldset.
- Styling Forms:
    - Default browser styles may differ.
                    --footer: 40px;    - Custom styling may be tricky for some form controls like radio buttons and checkboxes.
                    --main: calc(100vh - calc(var(--header) + var(--footer)));    - Some elements like date pickers are difficult to style and may require JavaScript solutions.
- **Examples of Code Snippets:**
    - Basic Form Structure:
    ```html
    <form action="example.com/path" method="post">
        <label for="first_name">First Name:</label>
        <input type="text" id="first_name" name="first_name" placeholder="John">
    </form>
    ```
    - Textarea:
    ```html
    <textarea rows="20" cols="60">Some initial content</textarea>
    ```
    - Select Dropdown:
    ```html
    <select name="Car">
        <option value="mercedes">Mercedes</option>
        <option value="volvo" selected>Volvo</option>
    </select>
    ```
    - Radio Buttons:
    ```html
    <h1>Ticket Type</h1>
    <div>
        <input type="radio" id="child" name="ticket_type" value="child">
        <label for="child">Child</label>
    </div>
                - Ideal value: `80vw`    <div>
        <input type="radio" id="adult" name="ticket_type" value="adult" checked>
        <label for="adult">Adult</label>
    </div>
    ```
    - Checkbox:
    ```html
    <h1>Pizza Toppings</h1>
    <div>
        <input type="checkbox" id="sausage" name="topping" value="sausage">
        <label for="sausage">Sausage</label>
    </div>
    <div>
        <input type="checkbox" id="pepperoni" name="topping" value="pepperoni">
        <label for="pepperoni">Pepperoni</label>
    </div>
    ```
    - Fieldset and Legend:
    ```html
    <fieldset>
        <legend>Contact Details</legend>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email">
    </fieldset>
    ```
