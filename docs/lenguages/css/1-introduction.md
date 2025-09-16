# 1. Introduction to CSS

## What is CSS?

**CSS** (Cascading Style Sheets) is a stylesheet language used to describe the presentation (look and formatting) of a document written in HTML or XML. CSS controls the colors, fonts, spacing, layout, and overall visual appearance of web pages.

---

## Brief History

- **1996:** CSS was first proposed by Håkon Wium Lie and became a W3C recommendation.
- **CSS1:** Introduced basic styling (fonts, colors, spacing).
- **CSS2 (1998):** Added positioning, media types, and more selectors.
- **CSS3 (2001+):** Modularized, added animations, transitions, flexbox, grid, and more.
- **Modern CSS:** Continues to evolve with new features and browser support.

---

## Why Use CSS? (Advantages)

- **Separation of content and presentation:** HTML handles structure, CSS handles style.
- **Reusability:** One CSS file can style multiple pages.
- **Maintainability:** Update styles in one place for the whole site.
- **Accessibility:** Easier to create responsive and accessible designs.
- **Performance:** Reduces code duplication and page size.

---

## How CSS Works

1. **HTML provides the structure:**
   ```html
   <h1>Hello, world!</h1>
   <p>This is a paragraph.</p>
   ```
2. **CSS provides the style:**
   ```css
   h1 {
     color: #3498db;
     font-size: 2.5em;
   }
   p {
     color: #333;
     line-height: 1.6;
   }
   ```
3. **Result:** The browser combines both to display a styled web page.

---

## Relationship with HTML

- **HTML** is for content and structure (headings, paragraphs, links, etc.).
- **CSS** is for presentation (colors, layout, fonts, spacing, etc.).

**Example:**

```html
<!-- HTML -->
<button class="primary-btn">Click me</button>
```

```css
/* CSS */
.primary-btn {
  background: #4caf50;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
}
```

---

## How to Add CSS to HTML

1. **Inline:**
   ```html
   <p style="color: red;">Red text</p>
   ```
2. **Internal (in the <head>):**
   ```html
   <style>
     p {
       color: blue;
     }
   </style>
   ```
3. **External (recommended):**
   ```html
   <link rel="stylesheet" href="styles.css" />
   ```

---

## Real-World Use Cases

- Creating visually appealing websites and web apps
- Making responsive layouts for mobile and desktop
- Animating elements for interactivity
- Theming and branding

---

## Summary Table

| Concept        | HTML Example            | CSS Example                      |
| -------------- | ----------------------- | -------------------------------- |
| Heading        | <h1>Title</h1>          | h1 { color: #222; }              |
| Paragraph      | <p>Text</p>             | p { font-size: 1.2em; }          |
| Button         | <button>OK</button>     | button { background: #008cba; }  |
| Class selector | <div class="box"></div> | .box { border: 1px solid #ccc; } |
| ID selector    | <div id="main"></div>   | #main { padding: 20px; }         |

---

## Further Reading

- [MDN Web Docs: CSS](https://developer.mozilla.org/en-US/docs/Web/CSS)
- [W3C CSS Specifications](https://www.w3.org/Style/CSS/)
- [CSS Tricks](https://css-tricks.com/)
