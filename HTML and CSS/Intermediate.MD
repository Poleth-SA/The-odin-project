# Cheatsheets:
- [Emmets](https://docs.emmet.io/cheat-sheet/)
- [CSS](https://htmlcheatsheet.com/css/)
- [HTML](https://htmlcheatsheet.com/)

# Emmets:
- Emmets are built inot VS code to help write code in HTML and CSS faster.
- writting '!' will give you the basic HTML structure.
- The basic HTML structure consist of 
    '<!DOCTYPE html>'
    '<html lang="en">'
    '<head>'
        '<meta charset="UTF-8">'
        '<meta name="viewport" content="width=device-width,' 'initial-scale=1.0">'
        '<title>Document</title>'
    '</head>'
    '<body>'

    '</body>'
    '</html>'

# SVG:
- SVG stands for Scalable Vector Graphics.
- SVG are common image format used in web development.
- They are often used for Icons, Graphs/Charts, Large simple images, Patterned backgrounds, and applying effect to other elements.
- They are written in XML format
- can be put directly on above the HTML code.
- SVG can be created in Adobe Illustrator, Inkscape, or directly in code. (its better to download the files into the code)
- xmlns is the XML namespace attribute.
- viewBox is the coordinate system of the SVG.
- class, id allows you to style the SVG with CSS.
- elements such as <circle>, <rect>, <path>, <text>, <polygon>, <path> and <text> can be used to create shapes and text.
- attributes such as fill, stroke, stroke-width, and d are used to style the shapes.

# Tables:
- HTML tables are used to display data in a two-dimensional format, consisting of rows and columns.
- They are created using <table></table> tags, with elements for rows, columns, headers, etc., placed inside.
- HTML tables might not be as commonly used as other elements like buttons or lists, but they are ideal for specific data presentation needs.
- Advanced table features can be tricky to set up, but creating basic tables is straightforward.

# Default Style:
- Browsers automatically add basic styles to every webpage, like making <h1> headings bigger and <a> links blue and underlined.
- These default styles can be different depending on the browser.
- You can write your own CSS to change or remove these default styles.
- Some developers use "CSS resets" to clear out the browser's default styles, making it easier to apply their own styles consistently across all browsers.
- Using a CSS reset is optional; you can use a prebuilt one, make your own, or skip it altogether. It’s up to you.

# CSS Units:
- Used to set sizes in CSS, divided into absolute and relative types.

# absolute units:
- Stay the same size no matter where they are used.
- px (pixels) is the main one you should use for web design.
- Other units like inches (in) and centimeters (cm) are mostly for print.

# relative units:
- Change size depending on where they are used.
- em: Based on the font size of the element (or its parent). Example: If the font size is 16px, 4em would be 64px.
- rem: Based on the root element's font size. It’s easier to use than em because it doesn’t depend on the parent’s font size.

# Use rem:
- Best for setting font sizes on a website.
- Respects user preferences for font size, making text easier to read.

# Viewport Units:
- 'vh': 1% of the screen height.
- 'vw': 1% of the screen width.
- Good for making things fit the screen size, like full-screen sections.

# More Text Syles:
- Fonts: Learn how to use and customize fonts in CSS.
- System Font Stack:
    - If a font isn't available, a fallback font will be used.
    - Example: font-family: system-ui, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
- web fonts:
    -Import fonts from online sources like Google Fonts.
    - Example: `<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">`
    - Make sure to include a fallback font.
- self-hosted fonts:
    - Download and use fonts yourself with @font-face.
    - Example: '@font-face
                    { font-family: my-cool-font; 
                    src: url(../fonts/the-font-file.woff);
                    } 
                    h1 { 
                        font-family: my-cool-font, sans-serif;
                    }'
- Text Styles:
    - font-style: Use for italic text.
        - Example: font-style: italic;
    - letter-spacing: Adjust space between letters.
    - line-height: Adjust space between lines of text.
    - text-transform: Change text case (uppercase, lowercase, etc.).
    - text-shadow: Add shadow to text.
- Ellipsis:
    -Use text-overflow: ellipsis; to truncate overflowing text with “...”:
    - Example: '.overflowing {
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                }'

# More CSS Properties:
- background:
    - background is a shorthand for several properties like color, image, position, size, and repeat.
    - You can also use these properties individually for clarity.
- border:
    - border is a shorthand for border-width, border-style, and border-color.
    - border-radius creates rounded corners.
    - Example: border: 2px solid black;
- box-shadow:
    - Adds a shadow around an element to create depth and separation.
    - Use subtle shadows for best results.
- overflow: 
    - Controls what happens when content is too big to fit.
    - Commonly used to add scrollbars to elements.
- Opacity:
    - Adjusts the transparency of an element.
    - Useful for creating effects and layering.

# Advancec Selectors:
