project "ImGuizmo"
	kind "StaticLib"
	language "C++"

	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Build/" .. outputdir .. "/%{prj.name}")

	files
	{
    "ImGuizmo.h",
    "ImGuizmo.cpp"
  }

  includedirs
  {
    "../imgui/"
  }
  
  defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"