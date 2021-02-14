var num = 0;
var hiddenPlayer = $('#hidden-player');
var player = $('#player');
var title = $('.title');
var artist = $('.artist');
var cover = $('.coverr');

function secondsTimeSpanToHMS(s) {
    var h = Math.floor(s / 3600); //Get whole hours
    s -= h * 3600;
    var m = Math.floor(s / 60); //Get remaining minutes
    s -= m * 60;
    return h + ":" + (m < 10 ? '0' + m : m) + ":" + (s < 10 ? '0' + s : s); //zero padding on minutes and seconds
}

var initSongSrc = songs[0].src;
var initSongTitle = songs[0].title;
var initSongArtist = songs[0].artist;
var initSongCover = songs[0].coverart;


hiddenPlayer.attr("src", initSongSrc);
title.html(initSongTitle);
artist.html(initSongArtist);
cover.attr('src', initSongCover);
hiddenPlayer.attr('order', '0');
hiddenPlayer[0].onloadedmetadata = function() {
    var dur = hiddenPlayer[0].duration;
    var songLength = secondsTimeSpanToHMS(dur)
    var songLengthParse = songLength.split(".")[0];
    $('.time-finish').html(songLengthParse);
};


hiddenPlayer[0].play();
var items = songs.length - 1;

$('.next').on('click', function() {
    var songOrder = hiddenPlayer.attr('order');

    if (items == songOrder) {
        num = 0;
        var songSrc = songs[0].src;
        var songTitle = songs[0].title;
        var songArtist = songs[0].artist;
        var songCover = songs[0].coverart;
        hiddenPlayer.attr('order', '0');
        hiddenPlayer.attr('src', songSrc).trigger('play');
        title.html(songTitle);
        artist.html(songArtist);
        cover.attr('src', songCover);

    } else {
        console.log(songOrder);
        num += 1;
        var songSrc = songs[num].src;
        var songTitle = songs[num].title;
        var songArtist = songs[num].artist;
        var songCover = songs[num].coverart;
        hiddenPlayer.attr('src', songSrc).trigger('play');
        title.html(songTitle);
        artist.html(songArtist);
        cover.attr('src', songCover);
        hiddenPlayer.attr('order', num);
    }
})

$('.prev').on('click', function() {
    var songOrder = hiddenPlayer.attr('order');

    if (songOrder == 0) {
        num = items;
        var songSrc = songs[items].src;
        var songTitle = songs[items].title;
        var songArtist = songs[items].artist;
        hiddenPlayer.attr('order', items);
        hiddenPlayer.attr('src', songSrc).trigger('play');
        title.html(songTitle);
        artist.html(songArtist);
    } else {
        num -= 1;
        var songSrc = songs[num].src;
        var songTitle = songs[num].title;
        var songArtist = songs[num].artist;
        hiddenPlayer.attr('src', songSrc).trigger('play');
        title.html(songTitle);
        artist.html(songArtist);
        hiddenPlayer.attr('order', num);
    }
})

$(".play-button").click(function() {
    $(this).toggleClass("paused");

    if ($(this).hasClass("paused")) {
        hiddenPlayer[0].pause();
    } else {
        hiddenPlayer[0].play();
    }
});


hiddenPlayer.on('timeupdate', function() {
    var songLength = secondsTimeSpanToHMS(this.duration)
    var songLengthParse = songLength.split(".")[0];
    $('.time-finish').html(songLengthParse);

    var songCurrent = secondsTimeSpanToHMS(this.currentTime)
    var songCurrentParse = songCurrent.split(".")[0];
    $('.time-now').html(songCurrentParse);
    $('progress').attr("value", this.currentTime / this.duration);

    if (!hiddenPlayer[0].paused) {
        $(".play-button").removeClass('paused');
        $('progress').css('cursor', 'pointer');


        $('progress').on('click', function(e) {
            var parentOffset = $(this).parent().offset();
            var relX = e.pageX - parentOffset.left;
            var percPos = relX * 100 / 597;
            var second = hiddenPlayer[0].duration * parseInt(percPos) / 100;
            console.log(second);
            hiddenPlayer[0].currentTime = second;
        })
    }

    if (this.currentTime == this.duration) {
        $('.next').trigger('click');
    }
})

function SetVolume(val) {
    var player = document.getElementById('hidden-player');
    console.log('Before: ' + player.volume);
    player.volume = val / 100;
    console.log('After: ' + player.volume);
}


function read() {

    if (document.getElementById("dots").style.display === "none") {
        document.getElementById("dots").style.display = "inline";
        document.getElementById("read").innerHTML = "See more";
        document.getElementById("more").style.display = "none";
    } else {
        document.getElementById("dots").style.display = "none";
        document.getElementById("read").innerHTML = "See less";
        document.getElementById("more").style.display = "inline";
    }
}
