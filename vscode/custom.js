let isCmdClick = false;

window.addEventListener('keydown', (e) => {
  if (e.key === 'Meta' || e.key === 'Control') isCmdClick = true;
  if (e.key === 'p' && isCmdClick) {
    let timer;
    setTimeout(() => {
      const quickInputWidget = document.querySelector('.quick-input-widget');
      if (quickInputWidget.style.display !== 'none') {
        document.querySelector('.monaco-workbench').append(overlay());
      }
      timer = setInterval(() => {
        if (quickInputWidget.style.display === 'none') {
          document.querySelector('#window-overlay').remove();
          clearInterval(timer);
          console.log('Cleared overlay timer:', timer);
        }
      }, 100);
    }, 50);
  }
});

window.addEventListener('keyup', (e) => {
  if (e.key === 'Meta' || e.key === 'Control') isCmdClick = false;
});

function overlay() {
  const overlayEl = document.createElement('div');
  overlayEl.id = 'window-overlay';

  return overlayEl;
}