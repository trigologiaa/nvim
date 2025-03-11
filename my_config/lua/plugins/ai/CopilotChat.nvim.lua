-- A chat interface for GitHub Copilot that allows you to directly ask and receive answers to coding-related questions

local prompts = {
  Explain = "Please explain how the following code works.",
  Review = "Please review the following code and provide suggestions for improvement.",
  Tests = "Please explain how the selected code works, then generate unit tests for it.",
  Refactor = "Please refactor the following code to improve its clarity and readability.",
  FixCode = "Please fix the following code to make it work as intended.",
  FixError = "Please explain the error in the following text and provide a solution.",
  BetterNamings = "Please provide better names for the following variables and functions.",
  Documentation = "Please provide documentation for the following code.",
  JsDocs = "Please provide JsDocs for the following code.",
  DocumentationForGithub = "Please provide documentation for the following code ready for GitHub using markdown.",
  CreateAPost = "Please provide documentation for the following code to post it in social media, like Linkedin, it has be deep, well explained and easy to understand. Also do it in a fun and engaging way.",
  SwaggerApiDocs = "Please provide documentation for the following API using Swagger.",
  SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.",
  Summarize = "Please summarize the following text.",
  Spelling = "Please correct any grammar and spelling errors in the following text.",
  Wording = "Please improve the grammar and wording of the following text.",
  Concise = "Please rewrite the following text to make it more concise."
}

return {
  "CopilotC-Nvim/CopilotChat.nvim",
  enabled = false,
  opts = {
    prompts = prompts,
    system_prompt = "I am NAIVIM (Neo Artificial Intelligence Vim), Hi :)",
    model = "gpt-4o",
    answer_header = "  NAIVIM  ",
    window = {
      layout = "float"
    }
  }
}
