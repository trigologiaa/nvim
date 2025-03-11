-- Generate TOC in any markdown file from any other markdown file with customisable levels of headings and affordances for emojis and ensuring that it works on GitHub using relative paths

return {
  "ChuufMaster/markdown-toc",
  lazy = false,
  opts = {
    heading_level_to_match = -1,
    ask_for_heading_level = false,
    toc_format = "%s- [%s](<%s#%s>)"
  }
}