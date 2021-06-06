// Learn how to build a dynamic string.
// Useful links:
//   * https://docs.harelang.org/strio#appendrune
//   * https://docs.harelang.org/strio#dynamic
//   * https://docs.harelang.org/strio#string
use fmt;
use io;
use strio;

export fn main() void = {
	let dyn_str = strio::dynamic();
	defer strio::finish(dyn_str);

	let rune_arr = ['H', 'e', 'l', 'l', 'o', ',', ' ', 'W', 'o', 'r', 'l', 'd', '!'];

	for (let i = 0z; i < len(rune_arr); i += 1) {
		match (strio::appendrune(dyn_str, rune_arr[i])) {
			size => void,
			io::error => fmt::fatal("Could not append rune `{}' to dynamic string", rune_arr[i]),
		};
	};

	fmt::println(strio::string(dyn_str))!;
};
