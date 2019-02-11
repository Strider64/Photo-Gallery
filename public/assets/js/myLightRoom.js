var button1 = document.getElementById('exit-frame'); // Body HTML tag ID:
/*
 * Shade and Picture Box are set
 */
var shade = document.getElementById('shadeELE');
var picture = document.getElementById('pictureELE');
var count = 0;
var image = null;

var total = document.getElementById("gallery").childElementCount;
function exitPicture() {
    shade.style.display = "none";
    picture.style.display = "none";
}

function displayPicture(image) {
    shade.style.display = "block";
    picture.setAttribute('src', image);
    picture.style.display = "block";
}

document.addEventListener("click", function (e) {

    /* Exit Slide Show */
    if (e.target.getAttribute('id') === "shadeELE" || e.target.getAttribute('id') === "pictureELE") {
        exitPicture();
    }
    
    //console.log(e.target.getAttribute('id'));

    /*
     *  If the event target class doesn't match bail function
     */
    if (!e.target.classList.contains('box'))
        return;
    e.preventDefault();
    //console.log(e.target.parentNode);

    /*
     * Grab the large picture link from the href 
     */
    var image = e.target.parentNode.getAttribute("href");
    count = e.target.parentNode.getAttribute('data-picture');
    //console.log('total', total, 'data-picture', count);

    displayPicture(image);
    /* 
     * Display shade, set picture in src attribute and display picture picture
     */

    //console.log('shadeBox', shadeBox);
});

var previous = document.getElementById('preSlide');

previous.addEventListener('click', function (e) {

    e.preventDefault();

    if (parseInt(count) > 0) {
        count = parseInt(count) - 1;
        var newImage = document.querySelector('[data-picture="' + count + '"]');
        image = newImage.getAttribute("href");
    } else {
        count = total - 1;
        var newImage = document.querySelector('[data-picture="' + count + '"]');
        image = newImage.getAttribute("href");
    }
    displayPicture(image);

});

var nextSlide = document.getElementById('nextSlide');

nextSlide.addEventListener('click', function (e) {

    e.preventDefault();
    if (count < total - 1) {
        count = parseInt(count) + 1;
        var newImage = document.querySelector('[data-picture="' + count + '"]');
        image = newImage.getAttribute("href");
    } else {
        count = 0;
        var newImage = document.querySelector('[data-picture="' + count + '"]');
        image = newImage.getAttribute("href");
    }
    displayPicture(image);

});
