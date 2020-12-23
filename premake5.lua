project "glfw"
	kind "StaticLib"
	language "C"

	targetdir ("%{wks.location}/bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. OutputDir .. "/%{prj.name}")

	files {
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/glfw_config.h",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/window.c",
	}

	filter "system:windows"
		defines {"_GLFW_WIN32"}
		
		files {
			"src/win32_window.c",
			"src/win32_thread.c",
			"src/win32_time.c",
			"src/win32_monitor.c",
			"src/win32_joystick.c",
			"src/win32_init.c",
		}