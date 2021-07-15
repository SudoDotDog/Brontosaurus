(() => {
    const highlightBlocks = document.querySelectorAll('code[data-lang]');
    const highlightCodeButtons = document.querySelectorAll('.copyable-code-button');

    highlightCodeButtons.forEach((copyCodeButton, index) => {

        const code = highlightBlocks[index].innerText;
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