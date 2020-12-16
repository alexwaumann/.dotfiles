import dracula.draw

# load existing settings made via :set
#  config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

c.auto_save.session = True

c.downloads.location.directory = "/home/alex/downloads/"
c.downloads.location.prompt = False
c.downloads.remove_finished = 10000

c.url.default_page = "https://www.google.com"
c.url.searchengines = {"DEFAULT": "https://www.google.com/search?q={}"}
c.url.start_pages = "https://www.google.com"

c.colors.webpage.bg = ""
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.prefers_color_scheme_dark = True

