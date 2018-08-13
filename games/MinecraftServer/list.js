// https://mcversions.net/

Array.from(document.querySelectorAll("#content > .container > .row > :first-child > ul > li")).map(e => e.querySelectorAll("a.server")).filter(e => e.length).map(e => e[0].download.replace(/minecraft_server-(.*).jar/, "$1") + " " + e[0].href).join("\n")
