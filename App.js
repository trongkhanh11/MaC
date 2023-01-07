import express from 'express';

import activate_session from './middlewares/session.mdw.js';
import activate_views from './middlewares/view.mdw.js';
import activate_locals from './middlewares/locals.mdw.js';
import activate_routes from './middlewares/routes.mdw.js';  

const app = express();
const PORT = 3000;

app.use(express.static('public'));
app.use(express.urlencoded({
    extended: true
}));

activate_session(app);
activate_views(app);
activate_locals(app);
activate_routes(app);

app.listen(PORT, function() {
    console.log(`E-Commerce App listening at http://localhost:${PORT}`)
});