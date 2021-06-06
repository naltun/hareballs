// Learn how to create a temporary directory, and how to remove a directory.
// Useful links:
//   * https://docs.harelang.org/temp#dir
//   * https://docs.harelang.org/os#rmdir
use fmt;
use fs;
use os;
use temp;

export fn main() void = {
	for (let i = 0; i < 1000; i += 1) {
		let idx = i + 1;
		fmt::printfln("Creating {}...", idx)!;
		
		let tmp = temp::dir();
		defer free(tmp);
		
		// fn rmdir(str) (void | fs::error);
		match (os::rmdir(tmp)) {
			void => fmt::printfln("Removed {}...", idx)!,
			fs::error => fmt::printfln("Could not remove {}", idx)!,
		};
	};
};
