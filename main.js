var http = require('http');
var fs = require('fs');
var qs = require('querystring');

function renderHtml(path, res) {
  fs.readFile(path, null, function (err, data) {
    if (err) {
      res.writeHead(404);
      res.write('File Not Found');
    } 
    else {
      res.write(data);
    }
    res.end();
  });
}

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
    if (req.url == '/') {
      renderHtml('login.html', res);
    }
    else if (req.url == "/login") {
      switch (req.method) {
        case 'POST':
          var body = '';

          req.on('data', function (data) {
            body += data;
          });

          req.on('end', function () {
            var form = qs.parse(body);
            res.end('Output :<br>Username : '+ form['username']+'<br>Password : '+form['password']);
          });
        break;
        default:
          res.end('Method Unavailable');
      }
    }
    else if (req.url == '/register') {
      switch (req.method) {
        case 'POST':
          var body = '';

          req.on('data', function (data) {
            body += data;
          });

          req.on('end', function () {
            var form = qs.parse(body);
            if (form['password'] === form['confPassword']) {
              res.end('Output :<br>Username : '+ form['username']+'<br>Password : '+form['password']+
                    '<br>First Name : '+ form['fname']+'<br>Last Name : '+form['lname']+'<br>Email : '
                    + form['email']+'<br>Confirm Pass : '+form['confPassword']);  
            }
            else{
              res.end('Password Mismatch');
            }
          });
        break;
        default:
          res.end('Method Unavailable');
      }
    }
    else {
      res.status = 404;
    }
}).listen(3000);
console.log("Server Running @localhost:3000");
  
  // let nem = require('nem-sdk').default;
  // console.log(nem);

  //     let endpoint = nem.model.objects.create('endpoint')(nem.model.nodes.defaultTestnet, nem.model.nodes.defaultPort);

  //     let common = nem.model.objects.create('common')('mtw458yf69','923b6d0f5148c2c9d7c542c156824d77efe00e3f81b87a9ef990e42bf7a3c0ff');
  
  //     let transferTransaction = nem.model.objects.create('transferTransaction')("TAEKNIF3RREE7UKSWOZDOLNWEGTO5GQKY2QH6Y4P", 1, "hi bos, This is TF From JS");

  //     let preparedTransaction = nem.model.transactions.prepare("transferTransaction")(common, transferTransaction, nem.model.network.data.testnet.id);

      // nem.model.transactions.send(common, preparedTransaction, endpoint).then(function(res) {
      //     console.log(res);
      //         },
      // function(err) {
      //     console.log(err);
      // });