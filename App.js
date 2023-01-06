import express from 'express';

import activate_views from './middlewares/view.mdw.js';
import activate_routes from './middlewares/routes.mdw.js';
import activate_session from './middlewares/session.mdw.js';
import activate_resLocals from './middlewares/locals.mdw.js';

// import activate_error_handlers from './middlewares/error.mdw.js';


const app = express();
app.use(express.static('public'));
app.use(express.urlencoded({
    extended: true
}));

activate_session(app);
activate_views(app);
activate_routes(app);
activate_resLocals(app);
// activate_error_handlers(app);




const PORT = 3000;
app.listen(PORT, function() {
    console.log(`E-Commerce App listening at http://localhost:${PORT}`)
});