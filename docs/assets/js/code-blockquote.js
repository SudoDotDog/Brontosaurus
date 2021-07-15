(() => {
    const codeBlocks = document.querySelectorAll('.copyable-block-container');
    const copyCodeButtons = document.querySelectorAll('.copyable-block-button');

    copyCodeButtons.forEach((copyCodeButton, index) => {

        const code = codeBlocks[index].innerText;
        let timer;

        copyCodeButton.addEventListener('click', () => {

            clearTimeout(timer);

            window.navigator.clipboard.writeText(code);
            copyCodeButton.classList.add('copied');

            timer = setTimeout(() => {
                copyCodeButton.classList.remove('copied');
            }, 2000);
        });
    });
})();