-----------------------
-- [ PROJECT CONFIG] --
-----------------------
project "SimCPU-ISA"
	architecture  "x86_64"
	language      "C++"
	cppdialect    "C++20"
	staticruntime "On"

	targetdir (dir_bin   .. dir_group .. dir_config)
	objdir    (dir_build .. dir_group .. dir_config .. dir_project)

	pchheader "pch.h"
	pchsource "source/pch.cpp"

	-- Libraries
--	VendorCxxopts{}
--	VendorColoredCout{}


	includedirs {
		"source",
	}


	files {
		"**.h",
		"**.c",
		"**.hpp",
		"**.cpp"
	}


	filter "configurations:Debug"

		kind "ConsoleApp"

		defines {
		}


	filter "configurations:Release"

		kind "ConsoleApp"
--		kind "WindowedApp"

		defines {
		}


	filter {}
