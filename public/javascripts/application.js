(function($) {
  var app = $.sammy("#app", function() {
    this.template_engine = Mustache.to_html;

    this.get("#/vouchers", function(context) {
      this.load("vouchers.json")
        .then(function(vouchers) {
          $.each(vouchers, function(i, voucher) {
            context.render("index", voucher).appendTo(context.$element());
          });
        });
    });
  });

  $(function() {
    app.run("#/vouchers");
  });
})(jQuery);
