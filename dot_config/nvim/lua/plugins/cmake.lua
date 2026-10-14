return {
	{
		"Civitasv/cmake-tools.nvim",
		keys = {
			{ "<leader>mg", "<cmd>CMakeGenerate<cr>", desc = "CMake Generate" },
			{ "<leader>mb", "<cmd>CMakeBuild<cr>", desc = "CMake Build" },
			{ "<leader>mr", "<cmd>CMakeRun<cr>", desc = "CMake Run" },
			{ "<leader>md", "<cmd>CMakeDebug<cr>", desc = "CMake Debug" },
			{ "<leader>mt", "<cmd>CMakeTest<cr>", desc = "CMake Test" },
			{ "<leader>mc", "<cmd>CMakeClean<cr>", desc = "CMake Clean" },
			{ "<leader>mx", "<cmd>CMakeStop<cr>", desc = "CMake Stop" },
			{ "<leader>mB", "<cmd>CMakeSelectBuildType<cr>", desc = "CMake Build Type" },
			{ "<leader>mk", "<cmd>CMakeSelectKit<cr>", desc = "CMake Select Kit" },
		},
	},
}
