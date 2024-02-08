(async () => {
const { v5: uuidv5 } = await import("dicomedit-uuid");
const { default: bigInt } = await import("big-integer");

const UUID_ROOT = '2.25';

if (process.argv.length!=3) {
	console.error('Usage: node getHashUID.js uid_to_hash');
	process.exit(1);
}

value = process.argv[2];
namespace = undefined;
const guid = uuidv5(value, !namespace ? '' : namespace);
const guidBytes = `0${guid.replace(/-/g, '')}`;
const bigInteger = bigInt(guidBytes, 16);
console.log(`${UUID_ROOT}.${bigInteger.toString()}`);


})();
