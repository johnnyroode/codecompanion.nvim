local adapter_utils = require("codecompanion.utils.adapters")
local log = require("codecompanion.utils.log")
local openai = require("codecompanion.adapters.http.openai")


            models[model.id] = {
              billing = billing,
              description = description,
              endpoint = internal_endpoint,
              formatted_name = model.name,
              limits = limits,
              meta = limits.context_window and { context_window = limits.context_window } or nil,
              opts = choice_opts,
              vendor = model.vendor,
            }
 

local _models = {

} 

Alibaba Models:


local one_min_ai_models = {

    qwen3-vl-plus = {
        description = "Qwen3 VL Plus - Alibaba Cloud",
        formatted_name = "Qwen3 VL Plus",
        vendor = "Alibaba"
      },
    
    qwen3-vl-flash        - Qwen3 VL Flash - Alibaba Cloud
    qwen3-vl-8b-thinking  - Qwen3 VL 8B Thinking
    qwen3-max - Qwen3 Max - Alibaba Cloud
    qwen3-8b - Qwen3 8B
    qwen-vl-plus - Qwen VL Plus - Alibaba Cloud
    qwen-vl-max - Qwen VL Max - Alibaba Cloud
    qwen-plus - Qwen Plus - Alibaba Cloud
    qwen-max - Qwen Max - Alibaba Cloud
    qwen-flash - Qwen Flash - Alibaba Cloud

Anthropic Models:

    claude-sonnet-4-6 - Claude 4.6 Sonnet - Anthropic
    claude-sonnet-4-5-20250929 - Claude 4.5 Sonnet - Anthropic
    claude-opus-4-7 - Claude 4.7 Opus - Anthropic
    claude-opus-4-6 - Claude 4.6 Opus - Anthropic
    claude-opus-4-5-20251101 - Claude 4.5 Opus - Anthropic
    claude-opus-4-1-20250805 - Claude 4.1 Opus - Anthropic
    claude-haiku-4-5-20251001 - Claude 4.5 Haiku - Anthropic

Cohere Models:

    command-r-08-2024 - Command R - Cohere

DeepSeek Models:

    deepseek-reasoner - DeepSeek V3.2 Reasoner
    deepseek-chat - DeepSeek V3.2 Chat

GoogleAI Models:

    gemini-3.1-pro-preview - Gemini 3.1 Pro - GoogleAI
    gemini-3.1-flash-lite-preview - Gemini 3.1 Flash Lite - GoogleAI
    gemini-3-flash-preview - Gemini 3 Flash - GoogleAI
    gemini-2.5-pro - Gemini 2.5 Pro - GoogleAI
    gemini-2.5-flash - Gemini 2.5 Flash - GoogleAI

Mistral Models:

    magistral-small-latest - Magistral Small 1.2 - MistralAI
    magistral-medium-latest - Magistral Medium 1.2 - MistralAI
    ministral-14b-latest - Ministral 14B Latest - MistralAI
    open-mistral-nemo - Mistral Open Nemo - MistralAI
    mistral-small-latest - Mistral Small - MistralAI
    mistral-medium-latest - Mistral Medium 3.1 - MistralAI
    mistral-large-latest - Mistral Large 2 - MistralAI

OpenAI Models:

    gpt-5.1-codex-mini - GPT-5.1 Codex Mini - OpenAI
    gpt-5.1-codex - GPT-5.1 Codex - OpenAI
    o4-mini - GPT-o4 Mini - OpenAI
    o3-mini - GPT-o3 Mini - OpenAI
    gpt-5.4-pro - GPT-5.4 Pro - OpenAI
    gpt-5.4-nano - GPT-5.4 Nano - OpenAI
    gpt-5.4-mini - GPT-5.4 Mini - OpenAI
    gpt-5.4 - GPT-5.4 - OpenAI
    gpt-5.2-pro - GPT-5.2 Pro - OpenAI
    gpt-5.2 - GPT-5.2 - OpenAI
    gpt-5.1 - GPT-5.1 - OpenAI
    gpt-5-nano - GPT-5 Nano - OpenAI
    gpt-5-mini - GPT-5 Mini - OpenAI
    gpt-5-chat-latest - GPT-5 Chat Latest - OpenAI
    gpt-5 - GPT-5 - OpenAI
    gpt-4o-mini - GPT-4o Mini - OpenAI
    gpt-4o - GPT-4o - OpenAI
    gpt-4.1-nano - GPT-4.1 nano - OpenAI
    gpt-4.1-mini - GPT-4.1 mini - OpenAI
    gpt-4.1 - GPT-4.1 - OpenAI
    gpt-4-turbo - GPT-4 Turbo - OpenAI
    gpt-3.5-turbo - GPT-3.5 - OpenAI
    o4-mini-deep-research - o4 Mini Deep Research - OpenAI
    o3-pro - o3 Pro - OpenAI
    o3-deep-research - o3 Deep Research - OpenAI
    o3 - o3 - OpenAI

Perplexity Models:

    sonar-reasoning-pro - Perplexity [reasoning pro]
    sonar-pro - Perplexity [pro]
    sonar-deep-research - Perplexity [deep research]
    sonar - Perplexity

xAI Models:

    grok-4-fast-reasoning - xAI - Grok 4 Fast Reasoning
    grok-4-fast-non-reasoning - xAI - Grok 4 Fast Non-Reasoning
    grok-4-0709 - xAI - Grok 4
    grok-3-mini - xAI - Grok 3 Mini
    grok-3 - xAI - Grok 3

Extra Models:

    meta/meta-llama-3-70b-instruct - LLaMA 3 70b - MetaAI
    meta/llama-4-scout-instruct - LLaMA 4 Scout Instruct - MetaAI
    meta/llama-4-maverick-instruct - LLaMA 4 Maverick Instruct - MetaAI
    meta/llama-2-70b-chat - LLaMA 2 70b - MetaAI
    openai/gpt-oss-20b - GPT OSS 20b - OpenAI
    openai/gpt-oss-120b - GPT OSS 120b - OpenAI

---@class CodeCompanion.HTTPAdapter.Mistral: CodeCompanion.HTTPAdapter
return {
  name = "1minai",
  formatted_name = "iMinAi",
  roles = {
    llm = "assistant",
    user = "user",
    tool = "tool",
  },
  opts = {
    stream = true,
    vision = true,
    tools = true,
  },
  features = {
    text = true,
    tokens = false,
  },
  url = "${url}/v1/chat/completions",
  env = {
    url = "https://api.mistral.ai",
    api_key = "MISTRAL_API_KEY",
  },
  headers = {
    Authorization = "Bearer ${api_key}",
    ["Content-Type"] = "application/json",
  },
  handlers = {
    setup = function(self)
      if self.opts and self.opts.stream then
        self.parameters.stream = true
      end

      local model = self.schema.model.default
      local model_opts = self.schema.model.choices[model]
      if model_opts and model_opts.opts then
        self.opts = vim.tbl_deep_extend("force", self.opts, model_opts.opts)
        if not model_opts.opts.has_vision then
          self.opts.vision = false
        end
        if model_opts.opts.has_function_calling ~= nil and not model_opts.opts.has_function_calling then
          self.opts.tools = false
        end
      end

      return true
    end,

    --- Use the OpenAI adapter for the bulk of the work
    tokens = function(self, data)
      return openai.handlers.tokens(self, data)
    end,
    form_tools = function(self, params)
      return openai.handlers.form_tools(self, params)
    end,
    form_parameters = function(self, params, messages)
      return openai.handlers.form_parameters(self, params, messages)
    end,
    form_messages = function(self, messages)
      return openai.handlers.form_messages(self, messages)
    end,
    chat_output = function(self, data, tools)
      if not data or data == "" then
        return nil
      end

      -- Handle both streamed data and structured response
      local data_mod = type(data) == "table" and data.body or adapter_utils.clean_streamed_data(data)
      local ok, json = pcall(vim.json.decode, data_mod, { luanil = { object = true } })

      if not ok or not json.choices or #json.choices == 0 then
        return nil
      end

      -- Process tool calls from all choices
      if self.opts.tools and tools then
        for _, choice in ipairs(json.choices) do
          local delta = self.opts.stream and choice.delta or choice.message

          if delta and delta.tool_calls and #delta.tool_calls > 0 then
            for i, tool in ipairs(delta.tool_calls) do
              local id = tool.id
              if not id or id == "" then
                id = string.format("call_%s_%s", json.created, i)
              end

              if self.opts.stream then
                local found = false
                for _, existing_tool in ipairs(tools) do
                  if existing_tool.id == id then
                    -- Append to arguments if this is a continuation of a stream
                    if tool["function"] and tool["function"]["arguments"] then
                      existing_tool["function"]["arguments"] = (existing_tool["function"]["arguments"] or "")
                        .. tool["function"]["arguments"]
                    end
                    found = true
                    break
                  end
                end

                if not found then
                  table.insert(tools, {
                    id = id,
                    type = tool.type,
                    ["function"] = {
                      name = tool["function"]["name"],
                      arguments = tool["function"]["arguments"] or "",
                    },
                  })
                end
              else
                table.insert(tools, {
                  id = id,
                  type = tool.type,
                  ["function"] = {
                    name = tool["function"]["name"],
                    arguments = tool["function"]["arguments"],
                  },
                })
              end
            end
          end
        end
      end

      -- Process message content from the first choice
      local choice = json.choices[1]
      local delta = self.opts.stream and choice.delta or choice.message

      if not delta then
        return nil
      end

      local output = {
        role = delta.role,
      }

      if delta.content then
        local content = delta.content
        if type(content) == "string" then
          output.content = content
        else
          output.reasoning = output.reasoning or {}
          output.reasoning.content = ""
          for _, c in ipairs(content) do
            if c.type == "thinking" then
              for _, thinking in ipairs(c.thinking) do
                output.reasoning.content = output.reasoning.content .. thinking.text
              end
            end
          end
        end
      else
        output.content = ""
      end

      return {
        status = "success",
        output = output,
      }
    end,
    tools = {
      format_tool_calls = function(self, tools)
        return openai.handlers.tools.format_tool_calls(self, tools)
      end,
      output_response = function(self, tool_call, output)
        return openai.handlers.tools.output_response(self, tool_call, output)
      end,
    },
    inline_output = function(self, data, context)
      return openai.handlers.inline_output(self, data, context)
    end,
    on_exit = function(self, data)
      return openai.handlers.on_exit(self, data)
    end,
  },
  schema = {
    ---@type CodeCompanion.Schema
    model = {
      order = 1,
      mapping = "parameters",
      type = "enum",
      desc = "ID of the model to use. See the model endpoint compatibility table for details on which models work with the Chat API.",
      default = "mistral-small-latest",
      choices = {
        -- Premier models
        "mistral-large-latest",
        ["pixtral-large-latest"] = { opts = { has_vision = true } },
        ["magistral-medium-latest"] = { opts = { can_reason = true } },
        ["magistral-small-latest"] = { opts = { can_reason = true } },
        ["mistral-medium-latest"] = { opts = { has_vision = true } },
        ["mistral-saba-latest"] = { opts = { has_function_calling = false } },
        "codestral-latest",
        "ministral-8b-latest",
        "ministral-3b-latest",
        -- Free models, latest
        ["mistral-small-latest"] = { opts = { has_vision = true } },
        ["pixtral-12b-2409"] = { opts = { has_vision = true } },
        -- Free models, research
        "open-mistral-nemo",
        "open-codestral-mamba",
      },
    },
    temperature = {
      order = 2,
      mapping = "parameters",
      type = "number",
      optional = true,
      default = 0,
      desc = "What sampling temperature to use, we recommend between 0.0 and 0.7. Higher values like 0.7 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or top_p but not both.",
      validate = function(n)
        return n >= 0 and n <= 1.5, "Must be between 0 and 1.5"
      end,
    },
    top_p = {
      order = 3,
      mapping = "parameters",
      type = "number",
      optional = true,
      default = 1,
      desc = "Nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or temperature but not both.",
      validate = function(n)
        return n >= 0 and n <= 1, "Must be between 0 and 1"
      end,
    },
    max_tokens = {
      order = 4,
      mapping = "parameters",
      type = "integer",
      optional = true,
      default = nil,
      desc = "The maximum number of tokens to generate in the completion. The token count of your prompt plus max_tokens cannot exceed the model's context length.",
      validate = function(n)
        return n > 0, "Must be greater than 0"
      end,
    },
    stop = {
      order = 5,
      mapping = "parameters",
      type = "list",
      optional = true,
      default = nil,
      subtype = {
        type = "string",
      },
      desc = "Stop generation if this token is detected. Or if one of these tokens is detected when providing an array.",
      validate = function(l)
        return #l >= 1, "Must have more than 1 element"
      end,
    },
    random_seed = {
      order = 6,
      mapping = "parameters",
      type = "number",
      optional = true,
      default = 0,
      desc = "The seed to use for random sampling. If set, different calls will generate deterministic results.",
      validate = function(n)
        return n >= 0, "Must be a non-negative number"
      end,
    },
    presence_penalty = {
      order = 7,
      mapping = "parameters",
      type = "number",
      optional = true,
      default = 0,
      desc = "Determines how much the model penalizes the repetition of words or phrases. A higher presence penalty encourages the model to use a wider variety of words and phrases, making the output more diverse and creative.",
      validate = function(n)
        return n >= -2 and n <= 2, "Must be between -2 and 2"
      end,
    },
    frequency_penalty = {
      order = 8,
      mapping = "parameters",
      type = "number",
      optional = true,
      default = 0,
      desc = "Penalizes the repetition of words based on their frequency in the generated text. A higher frequency penalty discourages the model from repeating words that have already appeared frequently in the output, promoting diversity and reducing repetition.",
      validate = function(n)
        return n >= -2 and n <= 2, "Must be between -2 and 2"
      end,
    },
    n = {
      order = 9,
      mapping = "parameters",
      type = "number",
      default = 1,
      desc = "Number of completions to return for each request, input tokens are only billed once.",
    },
    safe_prompt = {
      order = 10,
      mapping = "parameters",
      type = "boolean",
      optional = true,
      default = false,
      desc = "Whether to inject a safety prompt before all conversations.",
    },
  },
}
