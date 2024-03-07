local cwd = vim.fn.getcwd()

describe("traces", function()
  local assert_eq = assert.is_equal
  local assert_true = assert.is_true
  local assert_false = assert.is_false

  before_each(function()
    vim.api.nvim_command("cd " .. cwd)
  end)

  local GITHUB_ACTIONS = os.getenv("GITHUB_ACTIONS") == "true"

  local traces = require("traces")
  describe("[setup]", function()
    it("test", function()
      traces.setup()
    end)
  end)
end)
