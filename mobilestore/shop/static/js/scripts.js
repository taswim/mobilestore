var user = '{{request.user}}'

        function getToken(name) {
            var cookieValue = null;
            if (document.cookie && document.cookie !== '') {
                var cookies = document.cookie.split(';');
                for (var i = 0; i < cookies.length; i++) {
                    var cookie = cookies[i].trim();
                    // Does this cookie string begin with the name we want?
                    if (cookie.substring(0, name.length + 1) === (name + '=')) {
                        cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                        break;
                    }
                }
            }
            return cookieValue;
        }
        var csrftoken = getToken('csrftoken');

        function getCookie(name) {
            // Split cookie string and get all individual name=value pairs in an array
            var cookieArr = document.cookie.split(";");

            // Loop through the array elements
            for (var i = 0; i < cookieArr.length; i++) {
                var cookiePair = cookieArr[i].split("=");

                /* Removing whitespace at the beginning of the cookie name
                and compare it with the given string */
                if (name == cookiePair[0].trim()) {
                    // Decode the cookie value and return
                    return decodeURIComponent(cookiePair[1]);
                }
            }

            // Return null if not found
            return null;
        }
        var cart = JSON.parse(getCookie('cart'))

        if (cart == undefined) {
            cart = {}
            console.log('Cart Created!', cart)
            document.cookie = 'cart=' + JSON.stringify(cart) + ";domain=;path=/"
        }
        console.log('Cart:', cart)

        var updateBtns = document.getElementsByClassName('update-cart')

        for (var i = 0; i < updateBtns.length; i++) {
            updateBtns[i].addEventListener('click', function () {
                var productID = this.dataset.product
                var action = this.dataset.action
                console.log('productId:', productID, 'action:', action)
                console.log('USER:', user)
                if (user == 'AnonymousUser') {
                    addCookieItem(productID, action)
                } else {
                    updateUserOrder(productID, action)
                }
            })
        }

        function addCookieItem(productID, action) {
            console.log('Not logged in')
            if (action == 'add') {
                if (cart[productID] == undefined) {
                    cart[productID] = { 'quantity': 1 }

                } else {
                    cart[productID]['quantity'] += 1
                }
            }

            if (action == 'remove') {
                cart[productID]['quantity'] -= 1

                if (cart[productID]['quantity'] <= 0) {
                    console.log('Item should be deleted')
                    delete cart[productID];
                }
            }
            console.log('Cart:', cart)
            document.cookie ='cart=' + JSON.stringify(cart) + ";domain=;path=/"
            location.reload()
        }

        function updateUserOrder(productID, action) {
            console.log('User is logged in, sending data...')
            var url = '/update_item/'
            fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRFToken': csrftoken,
                },
                body: JSON.stringify({ 'productID': productID, 'action': action })
            })
                .then((response) => {
                    return response.json()
                })

                .then((data) => {
                    console.log('data:', data)
                    location.reload()
                })
        }