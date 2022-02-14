project "ghua"
	kind "SharedLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"src/**.cpp",
		"src/**.h"
	}

	includedirs {
		"src",
		"vendor/glfw/include"
	}

	links {
		"GLFW"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"