---
sidebar_position: 11
---

# 更新日志

## v0.2.0

- [x] **Object-oriented programming:** Singleton `s`, binding methods `utils.methods(s)` and `(self: obj, ..) => {..}` methods.
- [x] **Page arguments management:** Instead of using `#set page(..)`, you should use `self.page-args` to retrieve or set page parameters, thereby avoiding unnecessary creation of new pages.
- [x] **`#pause` for sequence content:** You can use #pause at the outermost level of a slide, including inline and list.
- [x] **`#pause` for layout functions:** You can use the `composer` parameter to add yourself layout function like `utils.side-by-side`, and simply use multiple pos parameters like `#slide[..][..]`.
- [x] **`#meanwhile` for synchronous display:** Provide a `#meanwhile` for resetting subslides counter.
- [x] **`#pause` and `#meanwhile` for math equation:** Provide a `#touying-equation("x + y pause + z")` for math equation animations.
- [x] **Slides:** Create simple slides using standard headings.
- [x] **Callback-style `uncover`, `only` and `alternatives`:** Based on the concise syntax provided by Polylux, allow precise control of the timing for displaying content.
  - You should manually control the number of subslides using the `repeat` parameter.
- [x] **Transparent cover:** Enable transparent cover using oop syntax like `#let s = (s.methods.enable-transparent-cover)(self: s)`.
- [x] **Handout mode:** enable handout mode by `#let s = (s.methods.enable-handout-mode)(self: s)`.
- [x] **Fit-to-width and fit-to-height:** Fit-to-width for title in header and fit-to-height for image.
  - `utils.fit-to-width(grow: true, shrink: true, width, body)`
  - `utils.fit-to-height(width: none, prescale-width: none, grow: true, shrink: true, height, body)`
- [x] **Slides counter:** `states.slide-counter.display() + " / " + states.last-slide-number` and `states.touying-progress(ratio => ..)`.
- [x] **Appendix:** Freeze the `last-slide-number` to prevent the slide number from increasing further.
- [x] **Sections:** Touying's built-in section support can be used to display the current section title and show progress.
  - [x] `section` and `subsection` parameter in `#slide` to register a new section or subsection.
  - [x] `states.current-section-title` to get the current section.
  - [x] `states.touying-outline` or `s.methods.touying-outline` to display a outline of sections.
  - [x] `states.touying-final-sections(sections => ..)` for custom outline display.
  - [x] `states.touying-progress-with-sections((current-sections: .., final-sections: .., current-slide-number: .., last-slide-number: ..) => ..)` for powerful progress display.
- [x] **Navigation bar**: Navigation bar like [here](https://github.com/zbowang/BeamerTheme) by `states.touying-progress-with-sections(..)`, in `dewdrop` theme.
- [x] **Pdfpc:** pdfpc support and export `.pdfpc` file without external tool by `typst query` command simply.
