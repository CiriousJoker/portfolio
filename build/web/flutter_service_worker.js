'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "d7a12af99b6d061b75d07669e5796ff4",
"index.html": "7d7d016836eedcb6dc1f82a937eb63e7",
"/": "7d7d016836eedcb6dc1f82a937eb63e7",
"main.dart.js": "676c0e3a0832c7235d35e83297f0512e",
"favicon.png": "bb0107d24d6e2d23499705b538213c7d",
"icons/favicon-16x16.png": "e7d46605326e2b8be4b7a5ac289ae221",
"icons/safari-pinned-tab.svg": "2e8325a91d5aef2cad49e9e2d223b260",
"icons/favicon.ico": "5f80233cc2f34779c32c78e0ee7222c2",
"icons/android-chrome-192x192.png": "eb9a9a4be0f2e387faae2a88b859f6d0",
"icons/apple-touch-icon.png": "bca472bd5403b28b9fd5fb6adac3e4b0",
"icons/android-chrome-512x512.png": "cabc182cb81b3d4e35c02896c08daa38",
"icons/site.webmanifest": "080aa3516f407942a7ccb30388de8226",
"icons/mstile-150x150.png": "cada11d0673f2305eb5ed5e98b292a0d",
"icons/browserconfig.xml": "6ec9b8795226e72d4b6315221b2fedbd",
"icons/favicon-32x32.png": "bb0107d24d6e2d23499705b538213c7d",
"assets/AssetManifest.json": "ced1ca04f46c420bad29e1cf45d91204",
"assets/NOTICES": "1b2f585acbb1fc2d601ea5c99fe3b032",
"assets/FontManifest.json": "92213c3c1148a368eaa8c9930f77e433",
"assets/packages/flutter_markdown/assets/logo.png": "67642a0b80f3d50277c44cde8f450e50",
"assets/packages/slimy_card/assets/flare/topSlime.flr": "65ff491b065af4abfb7379c91edad2f7",
"assets/packages/slimy_card/assets/flare/bottomSlime.flr": "ca03aa3f1540b6ddc0711f153f02ae8b",
"assets/fonts/BrandIconsMinified.ttf": "5fc7dac2553dac3604a149603558c174",
"assets/fonts/Exo2-Regular.ttf": "b5f984d1c21970b20048461157228e26",
"assets/fonts/Catamaran/static/Catamaran-Medium.ttf": "b3bb54272b79aefcf2b07d5139ebec0b",
"assets/fonts/Catamaran/static/Catamaran-Light.ttf": "7af00944494a4d42781ae7207466e9ab",
"assets/fonts/Catamaran/static/Catamaran-Regular.ttf": "6d96a0d79326c05382895c87346c92ca",
"assets/fonts/MaterialIconsMinified.ttf": "b775b1128306d1c47ee230e218dd0a2e",
"assets/assets/images/avatar.webp": "796ec281b58bc5722e6b7a552bc7a54b",
"assets/assets/images/favicon_src.png": "ac33c76699cce52c0b2817a4023e4f14",
"assets/assets/icons/fridaynightsurvival.png": "f294f3c03fee4e9b20b64662c8ef1fce",
"assets/assets/icons/amidoneyet.png": "5654a39c1d41e4846921f27cc9f0126e",
"assets/assets/icons/legacyxp.png": "1fcdbe8992123eaaff22cfa522ffff96",
"assets/assets/icons/shufflepaper.png": "e1c8ae789603815f8b421fbbab9d9a3d",
"assets/assets/icons/pokeroute.svg": "5ac24ad3646510a231acd41054db6ed7",
"assets/assets/icons/shadyvault.png": "1995a9d186c5e3858598766201d306ea",
"assets/assets/icons/pokeroute.png": "0cbf7cf98f4516271e247c9973d41784",
"assets/assets/icons/ntradeadvanced.png": "d023790cb7a4b0f378d7553308b944c4",
"assets/assets/icons/sidenote.png": "3ea604cd2c84dfb0e556be7c770ee4c0",
"assets/assets/icons/didactduell.png": "9c810910e37dfe421d9b04477a295c5b",
"assets/assets/icons/nxtburner.png": "de57a1315fbc18b800c9cf16a4a2e7d2",
"assets/assets/icons/tagmyknowledge.png": "031f4cde4239ec68725c4886a8fa786d",
"assets/assets/icons/algodat_gui.png": "0ca583201157596b812928ecfcba0754",
"assets/assets/icons/switchboard.png": "0f35e31734f37ec9cecd57b57644478f",
"assets/assets/icons/homingcompass.png": "d16d856f9f34f58186e86886a6a732b6",
"assets/assets/icons/starclock.png": "ca3d275fbe61f67388704d39d75c83a7",
"assets/assets/icons/perfectdecisionfinder.png": "83c429ba0424f2e6f8b761473dab17ce"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
