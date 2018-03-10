const {promisify} = require('util');
const path = require('path');
const copyFile = promisify(require('fs').copyFile);
const glob = promisify(require('glob'));
const mkdirp = promisify(require('mkdirp'));

const sourceDir = path.join(__dirname, '../src/scripts');
const scriptGlob = path.join(sourceDir, '**/_*.gml');
const targetDir = path.join(__dirname, '../build');

async function main() {
  await mkdirp(targetDir);
  const scriptFiles = await glob(scriptGlob);
  const copyAll = scriptFiles.map(file => {
    const outFile = path.join(targetDir, path.basename(file));
    return copyFile(file, outFile);
  });

  await Promise.all(copyAll);
}

main();
