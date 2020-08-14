(() => {
    const browser1 = document.querySelector('.browser_1');
    const browser2 = document.querySelector('.browser_2');
    const video1 = document.getElementById('video_1');
    const video2 = document.getElementById('video_2');
    const video1Btn = document.querySelector('.browser_1 .video__play-btn');
    const video2Btn = document.querySelector('.browser_2 .video__play-btn');
    let video1isPlayed = false;
    let video2isPlayed = false;

    const onScroll = () => {
        const browser1YBottom = browser1.offsetTop + browser1.offsetHeight;
        const browser1YCenter = browser1YBottom - (browser1.offsetHeight / 2);
        const browser2YBottom = browser2.offsetTop + browser2.offsetHeight;
        const browser2YCenter = browser2YBottom - (browser2.offsetHeight / 2);
        const windowBottomY = window.scrollY + window.innerHeight;
        if(windowBottomY >= browser1YCenter && windowBottomY <= browser1YBottom && !video1isPlayed) {
            video1.play();
            video1isPlayed = true;
        }        
    
        if(windowBottomY >= browser2YCenter && windowBottomY <= browser2YBottom && !video2isPlayed) {
            video2.play();
            video2isPlayed = true;
        }
    }

    video1.onplay = () => {
        video1Btn.classList.add('fadeOut');
    }

    video1.onended = () => {
        setTimeout(() => {
            video1Btn.classList.remove('fadeOut');
        }, 3000);
    }

    video2.onplay = () => {
        video2Btn.classList.add('fadeOut');
    }

    video2.onended = () => {
        setTimeout(() => {
            video2Btn.classList.remove('fadeOut');
        }, 3000);
    }

    video1.onclick = () => {
        video1.play();
        video1Btn.classList.add('fadeOut');
    }

    video1Btn.onclick = () => {
        video1.play();
        video1Btn.classList.add('fadeOut');
    }

    video2.onclick = () => {
        video2.play();
        video1Btn.classList.add('fadeOut');
    }

    video2Btn.onclick = () => {
        video2.play();
        video2Btn.classList.add('fadeOut');
    }

    window.addEventListener('scroll', onScroll);
})()