const linkDropDown = document.querySelector('.linkDropDown');
const dropedLinks = document.querySelector('.dropedLinks');
const contents = document.querySelector('.contents');
const asideBar = document.querySelector('.asideBar');
const topHeaderContents = document.querySelector('.top-header-contents');
const toggleAsidebar = document.querySelector('.toggleAsidebar');
const asideBarBacDrop = document.querySelector('.asideBarBacDrop');
const closeAsidebarBtn = document.querySelector('.closeAsidebarBtn');
const closeAside = document.querySelector('.closeAside');

closeAside.addEventListener('click', () => {
    contents.classList.toggle('active');
    asideBar.classList.toggle('active');
    topHeaderContents.classList.toggle('active');
});

linkDropDown.addEventListener('click', () => {
    dropedLinks.classList.toggle('showDropedLinks');
    linkDropDown.classList.toggle('rotateIcon');
    linkDropDown.classList.toggle('active');
});

toggleAsidebar.addEventListener('click', () => {
    asideBar.classList.add('showAsidebar');
    contents.classList.remove('active');
    asideBar.classList.remove('active');
    topHeaderContents.classList.remove('active');
    asideBarBacDrop.classList.add('active');
});

closeAsidebarBtn.addEventListener('click', () => {
    asideBar.classList.remove('showAsidebar');
    asideBarBacDrop.classList.remove('active');
});

asideBarBacDrop.onclick = () => {
    asideBar.classList.remove('showAsidebar');
    asideBarBacDrop.classList.remove('active');
};

if (linkDropDown.classList.contains('active')) {
    dropedLinks.classList.add('showDropedLinks');
} else {
    dropedLinks.classList.remove('showDropedLinks');
}
