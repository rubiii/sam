Sammy.RenderContext.prototype.render = (function(original) {
  return function(location, data, callback) {
    if (JST[location] !== undefined) {
      location = { nodeType: "jst", innerHTML: JST[location] }
    }
    return original.call(this, location, data, callback);
  };
}(Sammy.RenderContext.prototype.render));
