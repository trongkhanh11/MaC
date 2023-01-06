import db from '../utils/db.js';

export default {
  async findById(id) {
    const list = await db('users').where('id', id);
    if (list.length === 0) {
      return null;
    }

    return list[0];
  },

  async findByUsername(username) {
    const list = await db('users').where('username', username);
    if (list.length === 0) {
      return null;
    }

    return list[0];
  },

  async findByEmail(_email) {
    const list = await db('users').where('email', _email);
    if (list.length === 0) {
      return null;
    }

    return list[0];
  },

  async findByName(name) {
    const list = await db('users').where('hoten', name);
    if (list.length === 0) {
      return null;
    }

    return list[0];
  },

  add(entity) {
    return db('USERS').insert(entity);
  },

  del(id) {
    return db('users').where('id', id).del();
  },

  patch(_id, _name, _email) {
    return db('users').where({id: _id}).update({ 
      hoten: _name,
      email: _email
    }, ['id', 'hoten', 'email'])
  }
}