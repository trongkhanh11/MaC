import accountRoute from '../routes/account.route.js';

export default function (app) {
  app.get('/', function (req, res) {
    res.render('vwAccount/profile');
  })

  app.use('/account', accountRoute);
}