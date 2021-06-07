// Learn how to concatenate strings.
// Useful links:
//   * https://docs.harelang.org/strings#concat
use fmt;
use strings;

export fn main() void = {
	let mascot = "Harriet";
	let author = "Louis Taylor, aka kragniz";
	let full_msg = strings::concat(mascot, ", the amazing Harelang mascot, was made by ", author, ".");
	defer free(full_msg);

	fmt::println(full_msg)!;
};
