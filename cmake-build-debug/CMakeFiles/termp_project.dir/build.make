# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\YUSUF ATALAY\CLionProjects\termp_project"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\YUSUF ATALAY\CLionProjects\termp_project\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/termp_project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/termp_project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/termp_project.dir/flags.make

CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.obj: CMakeFiles/termp_project.dir/flags.make
CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.obj: ../Yusuf_Taha_ATALAY.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\YUSUF ATALAY\CLionProjects\termp_project\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.obj"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\termp_project.dir\Yusuf_Taha_ATALAY.c.obj   -c "C:\Users\YUSUF ATALAY\CLionProjects\termp_project\Yusuf_Taha_ATALAY.c"

CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.i"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\YUSUF ATALAY\CLionProjects\termp_project\Yusuf_Taha_ATALAY.c" > CMakeFiles\termp_project.dir\Yusuf_Taha_ATALAY.c.i

CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.s"
	C:\PROGRA~2\Dev-Cpp\MinGW64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\YUSUF ATALAY\CLionProjects\termp_project\Yusuf_Taha_ATALAY.c" -o CMakeFiles\termp_project.dir\Yusuf_Taha_ATALAY.c.s

# Object files for target termp_project
termp_project_OBJECTS = \
"CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.obj"

# External object files for target termp_project
termp_project_EXTERNAL_OBJECTS =

termp_project.exe: CMakeFiles/termp_project.dir/Yusuf_Taha_ATALAY.c.obj
termp_project.exe: CMakeFiles/termp_project.dir/build.make
termp_project.exe: CMakeFiles/termp_project.dir/linklibs.rsp
termp_project.exe: CMakeFiles/termp_project.dir/objects1.rsp
termp_project.exe: CMakeFiles/termp_project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\YUSUF ATALAY\CLionProjects\termp_project\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable termp_project.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\termp_project.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/termp_project.dir/build: termp_project.exe

.PHONY : CMakeFiles/termp_project.dir/build

CMakeFiles/termp_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\termp_project.dir\cmake_clean.cmake
.PHONY : CMakeFiles/termp_project.dir/clean

CMakeFiles/termp_project.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\YUSUF ATALAY\CLionProjects\termp_project" "C:\Users\YUSUF ATALAY\CLionProjects\termp_project" "C:\Users\YUSUF ATALAY\CLionProjects\termp_project\cmake-build-debug" "C:\Users\YUSUF ATALAY\CLionProjects\termp_project\cmake-build-debug" "C:\Users\YUSUF ATALAY\CLionProjects\termp_project\cmake-build-debug\CMakeFiles\termp_project.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/termp_project.dir/depend

