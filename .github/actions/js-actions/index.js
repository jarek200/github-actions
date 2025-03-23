const core = require('@actions/core');

try {
    const name = core.getInput('name');
    console.log('👋 Hello, %s! Greetings from a JavaScript Action.', name);
} catch (error) {
    core.setFailed(error.message);
} 