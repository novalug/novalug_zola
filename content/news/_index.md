+++
title = "Tech News"
template = "section.html"
+++

{{ resize_image(path="/tech_news_logo.png") }}

The following news items are from the [NoVaLUG Tech News](https://akk.novalug.org/tech-news) feed.

<div id="feed"></div>

<script type="text/javascript">
    var content = document.getElementById('feed');

    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function(){
        if (xhr.readyState==4 && xhr.status==200)
        {
            var data = JSON.parse(xhr.responseText);
            var itemsContainer = document.createElement('DIV');

            for( var i=0,t = data.items.length ; i < t ; ++i ){
                var item = data.items[i];
                var itemContainer = document.createElement('DIV');

                var itemTitleElement = document.createElement('H1');
                var itemLinkElement = document.createElement('A');
                var itemDescriptionElement = document.createElement('P');


                itemLinkElement.setAttribute('href' , item.id);
                itemLinkElement.innerText = convertIsoToFriendly(item.date_published);
                itemTitleElement.classList.add("post-title");
                itemTitleElement.appendChild(itemLinkElement);

                itemDescriptionElement.innerHTML = item.content_html;

                itemContainer.appendChild(itemTitleElement);

                var imageSrc = item["image"];
                if (imageSrc != null ) {
                    var image = document.createElement("IMG");
                    image.src = imageSrc;
                    image.width = 400;
                    var imageContainer = document.createElement("CENTER");
                    imageContainer.appendChild(image);
                    itemContainer.appendChild(imageContainer);
                }

                itemContainer.appendChild(itemDescriptionElement);

                itemsContainer.appendChild(itemContainer);

            }

            content.appendChild(itemsContainer);

        }
    };
    xhr.open(
        'GET',
        'https://akk.novalug.org/static/tech-news-feed.json',
        true
    );
    xhr.send();

    function convertIsoToFriendly(isoString, locale = 'en-US') {
      const dateObj = new Date(isoString);
  
      // Define options for a common friendly format: "Month Day, Year, Time"
      const options = {
        year: 'numeric', 
        month: 'long', 
        day: 'numeric', 
        hour: '2-digit', 
        minute: '2-digit',
        hour12: true // Use AM/PM
      };

      return dateObj.toLocaleString(locale, options);
    }
</script>
