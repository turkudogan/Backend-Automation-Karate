function fn(){
var env=karate.env;
karate.log('karate.env.system.properties:',env)
if(env==null){
env='test'
}
var config={
Dev:'https://jsonplaceholder.typicode.com/',
};
//karate.configure('connectTimeout',200000);
//karate.configure('readTimeout',200000);
karate.log('karate.env =',karate.env)
karate.configure('ssl',true);
return config;
}

