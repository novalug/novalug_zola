+++
title = "Meetings"
template = "section.html"
+++
{{ resize_image(path="/meetings_logo.png") }}

NoVaLUG holds monthly, in-person meetings with or without a keynote presentation.
Meetings are normally held the third Saturday of the month from 10am to Noon.
Please check our
[Signal](https://signal.group/#CjQKIGYAYkoVLdiHZjUhpfxZBa5s-XIZ8AyrMWo-GQh9lVcJEhBXh7NEH3GOHPYNd2Xhmq8H),
or  [Fediverse](https://akk.novalug.org/@novalug) in case of unexpected schedule changes.

We calendar our events on Mobilizon:
* [novalug@Mobilizon.us](https://mobilizon.us/@novalug)
* Subscribe to the calendar feed: [webcal](webcal://mobilizon.us/@novalug/feed/ics)

Meetings:
=========

The following events are from the [NoVaLUG Mobilizon RSS feed](https://mobilizon.us/@novalug/feed/atom).

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
                itemLinkElement.innerText = item.title;
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
        'https://akk.novalug.org/static/novalug-meeting-feed.json',
        true
    );
    xhr.send();

</script>
