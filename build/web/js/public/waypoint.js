// simple waypoint implementation for animations and other scroll events;

export const waypoint = (element, callback) => {
    const elementYBottom = element.offsetTop + element.offsetHeight;
    const elementYCenter = elementYBottom - (element.offsetHeight / 2);
    const windowYBottom = window.scrollY + window.innerHeight;

    if(windowYBottom >= elementYCenter && windowYBottom <= elementYBottom) {
        callback();
    }
}