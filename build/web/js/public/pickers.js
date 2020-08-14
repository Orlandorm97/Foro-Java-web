import {getConfiguration, managerHandler, configurationPicker} from './pickerHandler';
import ClipboardJS from 'clipboard';

(() => {
    let managerOptions = document.querySelectorAll(".start__option.manager");
    let managerOutput = document.getElementById('start__code_manager');
    let languageOptions = document.querySelectorAll('.start__option.language');
    let libraryOptions = document.querySelectorAll('.start__option.library');
    let providerOptions = document.querySelectorAll('.start__option.provider');
    let configurationOutput = document.getElementById('start__code_configuration');
    let copyConfiguration = new ClipboardJS('#copy-configuration');
    let copyManager = new ClipboardJS('#copy-manager');
    managerHandler(managerOptions, managerOutput);
    configurationPicker(languageOptions, libraryOptions, providerOptions, configurationOutput);
})();
