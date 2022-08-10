/// Used to test tree-sitter syntax highlighting and theming
import "abc"

const btn = document.getElementById('btn');


let count = 0;

const a = "#FFFFFF";

console.log(a);

console.log('string argument');

const STUFF = {
	field_a: 123,
	field_b: "1234",
	field_c: true,
	field_d: (1, 2)
}

console.log(STUFF)

function render() {
	btn.innerText = `Count: ${count}`;
}

btn.addEventListener('click', () => {
	// Count from 1 to 10
	if (count < 10) {
		count += 1;
		render();
	}
})
