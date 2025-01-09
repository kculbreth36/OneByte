// Run ready function once DOM is fully loaded
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', ready);
} else {
    ready();
}

function ready() {
    loadCartFromStorage(); // Load the cart from localStorage when the page is ready

    var removeCartItemButtons = document.getElementsByClassName('btn-danger');
    for (var i = 0; i < removeCartItemButtons.length; i++) {
        var button = removeCartItemButtons[i];
        button.addEventListener('click', removeCartItem);
    }

    var quantityInputs = document.getElementsByClassName('cart-quantity-input');
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i];
        input.addEventListener('change', quantityChanged);
    }

    var addToCartButtons = document.getElementsByClassName('shop-item-button');
    for (var i = 0; i < addToCartButtons.length; i++) {
        var button = addToCartButtons[i];
        button.addEventListener('click', addToCartClicked);
    }

    document.getElementsByClassName('btn-purchase')[0].addEventListener('click', purchaseClicked);
}


// Function to load the cart from localStorage
// Function to load the cart from localStorage
function loadCartFromStorage() {
    var cartData = JSON.parse(localStorage.getItem('cart'));
    if (cartData) {
        var cartItems = document.getElementsByClassName('cart-items')[0];
        cartItems.innerHTML = ''; // Clear the cart to prevent duplicates
        for (var i = 0; i < cartData.length; i++) {
            var item = cartData[i];
            addItemToCart(item.title, item.price, item.imageSrc, item.quantity, false); // Load without duplicate check
        }
    }
}

var total1;
var total2;

// Add item to the cart
function addItemToCart(title, price, imageSrc, quantity, checkDuplicate = true) {
    var cartRow = document.createElement('div');
    cartRow.classList.add('cart-row');
    var cartItems = document.getElementsByClassName('cart-items')[0];
    var cartItemNames = cartItems.getElementsByClassName('cart-item-title');
    
    // Check for duplicate items in the cart if necessary
    if (checkDuplicate) {
        for (var i = 0; i < cartItemNames.length; i++) {
            if (cartItemNames[i].innerText === title) {
                alert('This item is already in the cart');
                return;
            }
        }
    }

    var cartRowContents = `
        <div class="cart-item cart-column">
            <img class="cart-item-image" src="${imageSrc}" width="100" height="100">
            <span class="cart-item-title">${title}</span>
        </div>
        <span class="cart-price cart-column">${price}</span>
        <div class="cart-quantity cart-column">
            <input class="cart-quantity-input" type="number" value="${quantity}">
            <button class="btn btn-danger" type="button">REMOVE</button>
        </div>`;
    cartRow.innerHTML = cartRowContents;
    cartItems.append(cartRow);

    // Add event listeners to newly added elements
    cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', removeCartItem);
    cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged);

    // Log the entire cart row to ensure the text is set correctly
    console.log('Cart Row after addition:', cartRow);
    console.log('Cart Row Title:', title);
    console.log('Cart Row Price:', price);

    // Ensure DOM is updated before calculating total
    requestAnimationFrame(() => {
        updateCartTotal();
        saveCartToStorage();
    });
}




// Remove item from cart
function removeCartItem(event) {
    var buttonClicked = event.target;
    buttonClicked.parentElement.parentElement.remove();
    updateCartTotal();
    saveCartToStorage();
}

// Update quantity of items in cart
function quantityChanged(event) {
    var input = event.target;
    if (isNaN(input.value) || input.value <= 0) {
        input.value = 1;
    }
    updateCartTotal();
    saveCartToStorage();
}

// Handle purchase button click
function purchaseClicked() {
    alert('Thank you! Now being redirected');
    var cartItems = document.getElementsByClassName('cart-items')[0];
    // Clear the cart after purchase
    // while (cartItems.hasChildNodes()) {
    //     cartItems.removeChild(cartItems.firstChild);
    // }
    updateCartTotal();
    saveCartToStorage();
}

// Handle add to cart button click
function addToCartClicked(event) {
    var button = event.target;
    var shopItem = button.parentElement.parentElement;
    var title = shopItem.getElementsByClassName('shop-item-title')[0].innerText;
    var price = shopItem.getElementsByClassName('shop-item-price')[0].innerText;
    var imageSrc = shopItem.getElementsByClassName('shop-item-image')[0].src;
    addItemToCart(title, price, imageSrc, 1, true); // Check for duplicates before adding
    updateCartTotal();
    saveCartToStorage();
}

// Update the total price of the cart
function updateCartTotal() {
    var cartItemContainer = document.getElementsByClassName('cart-items')[0];
    var cartRows = cartItemContainer.getElementsByClassName('cart-row');
    var total = 0;

    // Loop through each cart row
    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i];
        var priceElement = cartRow.getElementsByClassName('cart-price')[0];
        var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0];

        if (priceElement && quantityElement) {
            var priceText = priceElement.textContent.trim().replace('$', '');
            var price = parseFloat(priceText);
            var quantity = parseInt(quantityElement.value);

            // Ensure valid numbers are used
            if (!isNaN(price) && !isNaN(quantity)) {
                total += (price * quantity);
            } else {
                console.log('Parsing error: Price or quantity is NaN');
            }
        } else {
            console.log('Error: Price or quantity element not found.');
        }
    }

    // Round the total to two decimal places
    total = Math.round(total * 100) / 100;

    // Update total in the DOM
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total;
    
    // Set total value in hidden input and localStorage
    document.getElementById("hiddenId").value = total;
    localStorage.setItem('hiddenId', total);

    console.log('Updated total:', total);
}






// Save cart data to localStorage
function saveCartToStorage() {
    var cartItems = document.getElementsByClassName('cart-items')[0];
    var cartRows = cartItems.getElementsByClassName('cart-row');
    var cartData = [];

    for (var i = 0; i < cartRows.length; i++) {
        var cartRow = cartRows[i];
        var titleElement = cartRow.getElementsByClassName('cart-item-title')[0];
        var priceElement = cartRow.getElementsByClassName('cart-price')[0];
        var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0];
        var imageElement = cartRow.getElementsByClassName('cart-item-image')[0];

        // Log elements to ensure they are accessible and not empty
        console.log('Title Element TextContent:', titleElement ? titleElement.textContent : 'N/A');
        console.log('Price Element TextContent:', priceElement ? priceElement.textContent : 'N/A');
        console.log('Quantity Element Value:', quantityElement ? quantityElement.value : 'N/A');
        console.log('Image Element Src:', imageElement ? imageElement.src : 'N/A');

        var title = titleElement ? titleElement.textContent : '';
        var price = priceElement ? priceElement.textContent : '';
        var quantity = quantityElement ? quantityElement.value : 0;
        var imageSrc = imageElement ? imageElement.src : '';

        // Log each item being added to the cart data
        console.log('Cart Data Item:', { title, price, quantity, imageSrc });

        cartData.push({ title, price, quantity, imageSrc });
    }
    
    console.log('Saving cart data to localStorage:', cartData); 
    localStorage.setItem('cart', JSON.stringify(cartData));
}



requestAnimationFrame(() => {
    setTimeout(() => {
        updateCartTotal();
        saveCartToStorage();
    }, 0);
});

var storedTotal = localStorage.getItem('cartTotal');
console.log('Stored Total Price: $' + storedTotal);