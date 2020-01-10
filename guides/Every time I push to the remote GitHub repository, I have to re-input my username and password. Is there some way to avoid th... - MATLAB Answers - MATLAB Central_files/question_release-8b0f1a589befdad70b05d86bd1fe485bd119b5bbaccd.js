var get_release_list = function(products_list) {
  $.ajax({
    url: $('#question_release_path').val(),
    method: 'GET',
    dataType: 'script',
    data: {
      items: products_list
    },
    error: function(XMLHttpRequest, errorTextStatus, error) {
      alert("Failed to submit : " + errorTextStatus + " ;" + error);
      console.log(XMLHttpRequest);
    },
    success: function(data, textStatus, jqXHR) {
      eval(data);
    }
  });
} //AJAX call for fetching releases for products selected

//Function to check if selected product is valid
var check_valid_product = function(self, event) {
  Products = [];

  var input = self;
  var wrapper = input.closest('.multicomplete-wrapper');
  var product = event.term;

  if (Products.length === 0) {
    Products = $.map(input.autocomplete('option', 'source'), function(item) {
      return item.value.toLowerCase();
    });
  }

  if ($.inArray(product.toLowerCase(), Products) === -1) {
    event.preventDefault();

    var errorDiv = wrapper.siblings('.multicomplete-error')
    errorDiv.removeClass('hidden');
    $('span:first', errorDiv).text(product);
  }
  else {
    wrapper.siblings('.multicomplete-error').addClass('hidden');
  }
}

var get_autocomplete_values = function(){
  var question_product_associations = "question[product_associations]"
  var autocomplete_values = $('input[name="' + question_product_associations + '"]');
  return autocomplete_values;
}

$(document).on('ready', function() {
  var autocomplete_values = get_autocomplete_values();
  //If hidden field has values, then on page load, we want to enable the release dropdown
  if (autocomplete_values.val() ) {
    $('#product_releases').prop('disabled', false);
  }
  //If the dropdown is empty besides the prompt, we can assume that products selected have no common release and disable the dropdown
    var release_prompt = $('#release_prompt').data('release-prompt');
    if($('#product_releases option').length == 1) {
      var option_val = $('#product_releases').find('option:eq(0)').text();
      if (option_val === release_prompt) {
        $('#product_releases').prop('disabled', true);
      }
    }

    //If the errors div is present, then prepend 'Select Release' to the drop-down
    var selected = $('#product_releases').val();
    if(selected !== "") {
    if ( $('#errors_question').length !== 0 ) {
        $('#product_releases').prepend($('<option/>', {
          value: "",
          text: release_prompt
        }));
    }
  }

});

//Function for removing products
var existing_spans = [];
$(document).on('click.multicomplete', '.multicomplete-remove-token', function(event, obj) {
  if($('.products_block, #products_block').find($(this)).length > 0) {
  existing_spans.length = 0;
  var div_wrapper = $(this).closest(".multicomplete-wrapper");
  var current_span = $(this).closest(".multicomplete-token");
  var removed_element = current_span.attr('data-term');

  var autocomplete_values = get_autocomplete_values();
  //Remove logic for 'Ask a question' page
  if(autocomplete_values.length != 0) {
    if (autocomplete_values.val().replace(/、/g, ",").split(",").length != 0  ) {
    if ($.inArray(removed_element, items) >= 0) {
      var index = items.indexOf(removed_element);
      items.splice(index, 1);
      }
    }
  }
  //Remove logic for leaf page
  var children = div_wrapper.children('.multicomplete-token');
  if (children.length <= 1) {
    $('#product_releases, #edit_product_releases').prop('disabled', true);
  }
  children.each(function(idx, element) {
    if ($(element).attr('data-term') !== removed_element) {
      existing_spans.push($(element).attr('data-term'));
    }
  });
  get_release_list(existing_spans);
  }
});

var autocomplete_id;

var products = [];

function edit_product_release(self, event) {
  event.stopImmediatePropagation();
  var toggle_selector = self.attr('data-toggle');
  var toggle_prefix = "#form_edit_products_question_";
  var question_id = toggle_selector.substring(toggle_prefix.length, toggle_selector.indexOf(','));
  autocomplete_id = "#question_" + question_id + "_products";
  var form = toggle_prefix + question_id;

  //call to check if product is valid
  $(autocomplete_id).on('multicomplete:add', function(event, obj) {
    check_valid_product($(this), event);
  });


//Autocomplete select on leaf page
$(document).on('autocompleteselect', autocomplete_id, function(event, obj){
    $(form).find('#edit_product_releases').prop('disabled', false);
    products = [];
    var div = $(this).closest(".multicomplete-wrapper");
    var span_children = div.children(".multicomplete-token");
    span_children.each(function(idx, element) {
      products.push($(element).attr('data-term'));
    });
    get_release_list(products);
  });

}




$(document).on('click', '#product_list_toggle', function(event, obj) {
  edit_product_release($(this), event);
});


$(document).on('click', '#product_list_toggle_m', function(event, obj) {
  edit_product_release($(this), event);
});

var items;
$(document).on('autocompleteselect', '#product_autocomplete', function(event, obj) {
  var autocomplete_values = get_autocomplete_values();
  items = autocomplete_values.val().replace(/、/g, ",").split(",");
  get_release_list(items);
});


$(".hint").on('mouseenter mouseleave', function() {
  $(this).find('div').toggleClass('visually-hidden');
});

$(document).ready(function() {
  $('[data-toggle="tooltip"]').tooltip();
});
