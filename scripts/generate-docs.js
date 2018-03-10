const {promisify} = require('util');
const path = require('path');
const glob = promisify(require('glob'));
const readFile = promisify(require('fs').readFile);
const writeFile = promisify(require('fs').writeFile);
const version = require('../package.json').version;

const header = `# gdash - GML Utility Library

Version ${version}

## Introduction

gdash is a functional utility library for GML, inspired by [lodash](https://lodash.com/). It aims to add useful, broad-purposed functions to help aid in game development. If you are doing any kind of data manipulation in your game, gdash can help out.

## Table of Contents

<!-- toc -->

<!-- tocstop -->

## Install

Download [the latest release](https://github.com/gm-core/gdash/releases) and import the gml files into your project's scripts. For GameMaker: Studio 2, you can just drag and drop the files into the editor.

## API

`

const sourceDir = path.join(__dirname, '../src/scripts');
const scriptGlob = path.join(sourceDir, '**/_*.gml');

function getTitle(script) {
  return script.match(/@func (.*)$/m)[1];
}

function getDesc(script) {
  return script.match(/@desc (.*)$/m)[1];
}

function getParams(script) {
  return script.match(/@param (.*)$/gm);
}

function getNotes(script) {
  const res = script.match(/@note (.*)$/m);
  return res ? `> ${res[1]}\n\n` : '';
}

function getReturn(script) {
  const res = script.match(/@returns? .*$/m);
  return res ? res[0] + '\n\n' : '';
}

function getExamples(script) {
  const res = script.match(/(@example[\s\S]*)\*\//m);
  return res ? res[1] : '';
}

function removeCarriageReturns(content) {
  return content.replace(/\r/g, '');
}

async function main() {
  const scriptFiles = await glob(scriptGlob);
  const docs = scriptFiles.map(async file => {
    const content = await readFile(file, 'utf8');
    const title = getTitle(content);
    const description = getDesc(content);
    const params = getParams(content);
    const notes = getNotes(content);
    const ret = getReturn(content);
    const examples = getExamples(content);

    let str = `### \`${title}\`\n\n`;
    str += `${description}\n\n`;
    str += notes;
    str += '```gml\n'
    str += params.join('\n') + '\n\n';
    str += ret;
    str += examples
    str += '```\n';
    return removeCarriageReturns(str);
  });

  const results = (await Promise.all(docs)).join('\n');
  const readme = `${header}\n${results}`;
  await writeFile('README.md', readme, 'utf8');
}

main();
