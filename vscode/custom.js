let isCmdClick = false;

window.addEventListener('keydown', (e) => {
  if (e.key === 'Meta') isCmdClick = true;
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
    }, 100);
  }
});

window.addEventListener('keyup', (e) => {
  if (e.key === 'Meta') isCmdClick = false;
});

function overlay() {
  const overlayEl = document.createElement('div');
  overlayEl.id = 'window-overlay';
  overlayEl.style.backgroundColor = 'rgba(0, 0, 0, 0.2)';
  overlayEl.style.position = 'absolute';
  overlayEl.style.top = '0';
  overlayEl.style.left = '0';
  overlayEl.style.width = '100%';
  overlayEl.style.height = '100%';
  overlayEl.style.backdropFilter = 'blur(5px)';

  return overlayEl;
}