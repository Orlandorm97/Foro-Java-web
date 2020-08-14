import { waypoint } from './waypoint';

(() => {
    const trustedByRow = document.querySelector('.projects-using__row');
    const collectionTitle = document.querySelector('.collection__title');
    const collectionText = document.querySelector('.collection__text');
    const collectionCard = document.querySelector('.collection__card');
    const collection2FA = document.querySelector('.collection__feature_2fa');
    const collectionENS = document.querySelector('.collection__feature_ens');
    const collectionIdentity = document.querySelector('.collection__feature_identity');
    const collectionEO = document.querySelector('.collection__feature_eo');
    const collectionET = document.querySelector('.collection__feature_et');
    const collectionER = document.querySelector('.collection__feature_er');

    window.onscroll = () => {
        waypoint(trustedByRow, () => {
            if(window.innerWidth >= 900) {
                trustedByRow.classList.add('fadeInUpText');
            }
        });

        waypoint(collectionTitle, () => {
            collectionTitle.classList.add('fadeInUpText');
        });

        waypoint(collectionText, () => {
            collectionText.classList.add('fadeInUpText');
        });

        waypoint(collectionCard, () => {
            collection2FA.classList.add('fadeInUpText');
        });
    }
})()

