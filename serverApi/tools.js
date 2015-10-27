module.exports = function() {

  var tools = {
    jsonValid: function(str) {
      try {
          JSON.parse(str);
      } catch (e) {
          return false;
      }
      return true;
    }
  }
  
  return tools;

}