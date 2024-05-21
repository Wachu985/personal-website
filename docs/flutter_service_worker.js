'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"flutter_bootstrap.js": "4485c560cd65ab20a79303555ff2de5d",
"main.dart.js": "ba023fd6c9d5ff509458c0af5ee947ae",
"favicon.ico": "3192934744238f8fdbcce0c20594aa3f",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/kroppa.gif": "c3c6d402ab6e93cac43e9d6c17576835",
"assets/AssetManifest.json": "4e57e8e8a056c9510732ee6bce719df8",
"assets/cv.pdf": "93c28fd32a739eba3146b29d823d0366",
"assets/assets/perfil.jpg": "2e83d356aa48ec9a612c306cf778483d",
"assets/assets/hi.gif": "26df447c41afd7bcffcf4c677e4bf56f",
"assets/assets/kroppa.gif": "c3c6d402ab6e93cac43e9d6c17576835",
"assets/assets/scala-original.svg": "0fdeb739eef430c1dcc22aacf0c6dd58",
"assets/assets/pngwing.com.png": "68e602464dd016c008519d10fa4b2bb9",
"assets/assets/mongodb-original.svg": "8aad4da2ed641d2378923f85fe35189d",
"assets/assets/forzar4g.png": "5a3c26a57c6bb20d1342c9d88e2e893c",
"assets/assets/html5-original.svg": "16d07e8682a531f3bc1e9fb01bd59740",
"assets/assets/android-original-wordmark.svg": "48e2e4723af94a3c82b2341ea76fcf38",
"assets/assets/java-original.svg": "459bbae2e96a2410c5b429eb941a4c11",
"assets/assets/flutter_04.png": "664474d88381a894896da7d8851c6984",
"assets/assets/supabase-original.svg": "1b788bc25dfa434e2682d910fa2dd20d",
"assets/assets/javascript-original.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/dartlang-icon.svg": "384ad99903293e87f01f49214db88050",
"assets/assets/firebase-icon.svg": "10b0719343408095f5a9b369e0787115",
"assets/assets/cv.pdf": "93c28fd32a739eba3146b29d823d0366",
"assets/assets/qwik-original.svg": "02a9c5ba14dc4f14ed548bcba4fb197f",
"assets/assets/bubbles2.svg": "1e8e741aa20e08725c950702e8734aed",
"assets/assets/cap.png": "012ecf2bdac24dbbeba0340482e4e32a",
"assets/assets/nestjs-original.svg": "106507637484395e90c88a9144d93e61",
"assets/assets/python-original.svg": "71374043d9b3d9ea7fa09976a747d475",
"assets/assets/38404a9f-b4f3-4dbd-b569-ccab896b9d1d.jpg": "0a34a8be257ed02c6bba4bba12765de0",
"assets/assets/universo.png": "49cb160c702537f4e6738e48f92bd246",
"assets/assets/git-scm-icon.svg": "adcab6a564a11096dc35f681cfb02ce6",
"assets/assets/css3-original.svg": "a55118403c13e2719d453b74dffa80f8",
"assets/assets/django.svg": "bcf22073c9f13bab1761b90bce9fec55",
"assets/assets/bubbles.svg": "53f4cef5df3af2682f3dbf97e6ed30f7",
"assets/assets/akka-original.svg": "f9ccf151de8e73f0960d6b6f3f13d1d0",
"assets/assets/developerImage.svg": "004f7a7ba9559f1406b61c4a40910c21",
"assets/assets/flutterio-icon.svg": "59a662c262bb9fae1751abe4d13abb84",
"assets/assets/L1R1tvI9svkIWwpVYr.gif": "ea6e6eb2c279688b3b0fb316a5492563",
"assets/assets/develop-web.gif": "57354775d63ae1a9df779083cad26205",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/fonts/MaterialIcons-Regular.otf": "b8ab7f9756e06c07a0b4e6a7ab83b5de",
"assets/FontManifest.json": "710ec6b69a5bea47856900084d3c9536",
"assets/NOTICES": "dd0a483559d11c4fd065fe4c65c9c0a0",
"assets/AssetManifest.bin.json": "c260d484c7c0c78619d61af062de9b52",
"assets/packages/awesome_icons/fonts/Free-Regular-400.otf": "57ee9fd792b814626c2331619b1feabd",
"assets/packages/awesome_icons/fonts/Brands-Regular-400.otf": "db3d580df1a0e4b58fb0f82036c32e57",
"assets/packages/awesome_icons/fonts/Free-Solid-900.otf": "51671249768d3db22a8f9bea6a85b6a0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.bin": "9fad42a5a73674a65e1fa9091c9b12d9",
"icons/Icon-maskable-512.png": "736ac684e86d6619d78f443c2e896262",
"icons/Icon-maskable-192.png": "0e62b6a34cc9d478f5f9b046f81dbe60",
"icons/favicon.ico": "3192934744238f8fdbcce0c20594aa3f",
"icons/README.txt": "d3df3991a31f034bfa98afdfa3c622e1",
"icons/Icon-192.png": "0832f3314d17bfd38b8c479292e10f90",
"icons/Icon-512.png": "c92602abeb198171a09115cd8f5451dd",
"icons/apple-touch-icon.png": "875d2e266ee88afea6e8ffec274d3ef8",
"index.html": "d411585b1115b034907509970ff439eb",
"/": "d411585b1115b034907509970ff439eb",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
  for (var resourceKey of Object.keys(RESOURCES)) {
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
