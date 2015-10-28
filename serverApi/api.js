module.exports = function(pool, tools) {

  var api = {
    getUserById : function(arg, callback) {
      var userId = arg[0];

      pool.getConnection(function(err, connection) {
        if (err) {console.log(err); callback('mysql_pool_error'); return;}

        connection.query('SELECT * FROM `user` WHERE `id` = ' + userId, function(err, row, fields) {
          connection.release();
          if (err) {console.log(err); callback('mysql_query_error'); return;}

          if (row.length == 0) {callback('not_found'); return;}
          var user = row[0];

          //Parse JSON blobs in SQL database
          for (var prop in user) {
            if (user.hasOwnProperty(prop)) {
              if ((prop == 'data' || prop.substr(0, 4) == 'inv_' || prop.substr(0, 4) == 'equ_')) {
                if (tools.jsonValid(String(user[prop]))) {
                  user[prop] = JSON.parse(String(user[prop]));
                }else { user[prop] = {};}
              }
            }
          }

          callback(false, user);
        });
      });
    }
  }

  return api;
  
};