import Prism from './prism';
import { ts_ethers_metamask_unilogin, ts_web3_metamask_unilogin, ts_ethers_unilogin, ts_web3_unilogin, ts_web3_dep_metamask_unilogin, ts_web3_dep_unilogin } from "./configurationData";
import { js_ethers_metamask_unilogin, js_web3_metamask_unilogin, js_ethers_unilogin, js_web3_unilogin, js_web3_dep_metamask_unilogin, js_web3_dep_unilogin } from "./configurationData";

export const optionHandler = (options, callback) => {
    let selectedValue = "";
    for (const option of options) {
        option.addEventListener('click', () => {
            removeSelection(options);
            option.classList.add('active');
            selectedValue = option.getAttribute('data-value');
        });
    };
} 

export const removeSelection = (options) => {
    for (const option of options) {
        option.classList.remove('active');
    }
}

export const getConfiguration = (optionValues) => {
    switch (optionValues.join(',')) {
        case 'TypeScript,Ethers.js,Metamask/UniLogin': return {data: ts_ethers_metamask_unilogin, language: 'typescript'};
        case 'TypeScript,web3.js,Metamask/UniLogin': return {data: ts_web3_metamask_unilogin, language: 'typescript'};
        case 'TypeScript,web3.deprecated.js,Metamask/UniLogin': return {data: ts_web3_dep_metamask_unilogin, language: 'typescript'};
        case 'TypeScript,Ethers.js,UniLogin': return {data: ts_ethers_unilogin, language: 'typescript'};
        case 'TypeScript,web3.js,UniLogin': return {data: ts_web3_unilogin, language: 'typescript'};
        case 'TypeScript,web3.deprecated.js,UniLogin': return {data: ts_web3_dep_unilogin, language: 'typescript'};
        case 'JavaScript,Ethers.js,Metamask/UniLogin': return {data: js_ethers_metamask_unilogin, language: 'javascript'};
        case 'JavaScript,web3.js,Metamask/UniLogin': return {data: js_web3_metamask_unilogin, language: 'javascript'};
        case 'JavaScript,web3.deprecated.js,Metamask/UniLogin': return {data: js_web3_dep_metamask_unilogin, language: 'javascript'};
        case 'JavaScript,Ethers.js,UniLogin': return {data: js_ethers_unilogin, language: 'javascript'};
        case 'JavaScript,web3.js,UniLogin': return {data: js_web3_unilogin, language: 'javascript'};
        case 'JavaScript,web3.deprecated.js,UniLogin': return {data: js_web3_dep_unilogin, language: 'javascript'};
        default: console.log('none');
    }
}

const getInitialValues = (wrapper) => {
    return wrapper.querySelector('.active').getAttribute('data-value');
}

export const configurationPicker = (languageOptions, libraryOptions, providerOptions, output) => {
    let language = getInitialValues(languageOptions[0].parentElement);
    let library = getInitialValues(libraryOptions[0].parentElement);
    let provider = getInitialValues(providerOptions[0].parentElement); 
    output.innerHTML = Prism.highlight(getConfiguration([language, library, provider]).data, Prism.languages.typescript, 'typescript');

    for (const item of languageOptions) {
        item.addEventListener('click', () => {
            removeSelection(languageOptions);
            item.classList.add('active');
            language = item.getAttribute('data-value');
            let configuration = getConfiguration([language, library, provider]);
            if(configurationPicker.language === "javascript") {
               output.innerHTML = Prism.highlight(configuration.data, Prism.languages.javascript, 'javascript'); 
            } else {
               output.innerHTML = Prism.highlight(configuration.data, Prism.languages.typescript, 'typescript'); 
            }
        });
    };

    for (const item of libraryOptions) {
        item.addEventListener('click', () => {
            removeSelection(libraryOptions);
            item.classList.add('active');
            library = item.getAttribute('data-value');
            let configuration = getConfiguration([language, library, provider]);
            if(configurationPicker.language === "javascript") {
               output.innerHTML = Prism.highlight(configuration.data, Prism.languages.javascript, 'javascript'); 
            } else {
               output.innerHTML = Prism.highlight(configuration.data, Prism.languages.typescript, 'typescript'); 
            }
        });
    };

    for (const item of providerOptions) {
        item.addEventListener('click', () => {
            removeSelection(providerOptions);
            item.classList.add('active');
            provider = item.getAttribute('data-value');
            let configuration = getConfiguration([language, library, provider]);
            if(configurationPicker.language === "javascript") {
               output.innerHTML = Prism.highlight(configuration.data, Prism.languages.javascript, 'javascript'); 
            } else {
               output.innerHTML = Prism.highlight(configuration.data, Prism.languages.typescript, 'typescript'); 
            }
        });
    };
}

export const managerHandler = (options, output) => {
    for (const option of options) {
        option.addEventListener('click', () => {
            removeSelection(options);
            option.classList.add('active');
            let attrValue = option.getAttribute('data-value');
            if (attrValue === 'CDN') {
                output.innerText = '<script src=”https://unpkg.com/@unilogin/provider”></script>';
            } else {
                output.innerHTML = attrValue;
            }
        });
    };
};
