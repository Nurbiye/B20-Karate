function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	//myVarName: 'someValue'
    b20Slogan2 : 'Nothing is impossible' ,
    b20Slogan3 : 'Let’s do the thing',
    b20Slogan4 : 'before you give up, think why you started at the beginning',
    b20Slogan5 : 'Take it and use it',
    b20Slogan6 : 'zero to hero !!!!',
    b20Slogan7 : 'where is Ayhan’s Cat?',
    b20Slogan8 : 'Be a good manipulator',
    b20Slogan9 : 'zeeeeeeee Documentation (longer)',
    b20Slogan10 : 'Be a good manipulator',
    b20Slogan11 : 'dont worry, you didnt miss anything',
    b20Slogan12 : 'lets get to the meat',
    b20Slogan13 : 'ARE WE THERE YET?',
    b20Slogan14 : 'can you push the code',
    b20Slogan15 : 'Hold Your Horse!!'
  }




  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';

  } else if (env == 'e2e') {
    // customize
  }
  return config;
}