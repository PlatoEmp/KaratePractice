function fn()
{
var env = karate.env;
if (!env) {
env = 'dev';
}
var config = {
env: env,
myVarName: 'hello karate',
baseUrl: 'https://gorest.co.in',
tokenID: '73ca030aac9f54c822428c5a83e1133755401720c023c3b982a62b896a1345a3'
}
if (env == 'dev') {
//customize 
// e.g. config.foo = 'bar'
} else if (env == 'e2e') {
//customize
}
return config;
}
