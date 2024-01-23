build: FORCE
	rm -fr logs # Old version log files
	mkdir -p build
	rm -fr build/*
	
	# cmake -DCMAKE_BUILD_TYPE=Debug -G "CodeBlocks - Unix Makefiles" . -B cmake-build-debug
	cmake -DCMAKE_BUILD_TYPE=Release -G "CodeBlocks - Unix Makefiles" . -B cmake-build-release
	# cmake --build cmake-build-debug --target all
	cmake --build cmake-build-release --target all
	
	cp cmake-build-release/nr-gnb build/
	cp cmake-build-release/nr-ue build/
	cp cmake-build-release/nr-cli build/
	cp cmake-build-release/libdevbnd.so build/
	cp tools/nr-binder build/

	@printf "UERANSIM successfully built.\n"

FORCE:
