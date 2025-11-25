+++
title = "Tech News"
template = "section.html"
+++

{{ resize_image(path="/tech_news_logo.png") }}

The following news items are from the [NoVaLUG Tech News](https://akk.novalug.org/tech-news) feed.

<div id="content"></div>

<script type="text/javascript">
    var content = document.getElementById('content');

    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function(){
        if (xhr.readyState==4 && xhr.status==200)
        {
            var data = JSON.parse(xhr.responseText);
            var itemsContainer = document.createElement('DIV');

            if(data.status == 'ok'){


                for( var i=0,t = data.items.length ; i < t ; ++i ){
                    var item = data.items[i];
                    var itemContainer = document.createElement('DIV');

                    var itemTitleElement = document.createElement('H1');
                    var itemLinkElement = document.createElement('A');
                    var itemDescriptionElement = document.createElement('P');


                    itemLinkElement.setAttribute('href' , item.link);
                    itemLinkElement.innerText = item.pubDate;
                    itemTitleElement.classList.add("post-title");
                    itemTitleElement.appendChild(itemLinkElement);

                    // note : make sure the content is XSS safe before using innerHTML
                    itemDescriptionElement.innerHTML = item.description;

                    itemContainer.appendChild(itemTitleElement);

                    var imageSrc = item["enclosure"]["link"];
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
        }
    };
    xhr.open(
        'GET',
        'https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fakk.novalug.org%2Fusers%2Ftech-news%2Ffeed.atom',
        true
    );
    xhr.send();

</script>
