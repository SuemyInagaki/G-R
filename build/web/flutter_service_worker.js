'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "148c4f8d71de457d2296695a16277ea8",
"index.html": "acee24a7823bcece715a73a4b2ff25dc",
"/": "acee24a7823bcece715a73a4b2ff25dc",
"main.dart.js": "f2fb8b0822511db11057fecc3aea9c11",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "911b203fb2eeb57da521ef0a35319fab",
".git/config": "8063878c360504c1e892d3bfab30efef",
".git/objects/92/2f29a0b938b02d06b23e5a188a22f264ff7d1a": "43a0bd1312d5fe2c76e934aff10d3c80",
".git/objects/0c/00522058b23d6195257b5f4e87c7fe96f335c8": "a556383fd4d5e19fb431857239ebba94",
".git/objects/50/d3bd6c641a7d194dc2515af15c4b9d65895547": "294434c8a06bbeffba4b510aaad91162",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/32/cce92079c594e4a74a1c7aca788bb9455331d2": "2f224c961f994c360854d17eccc2610a",
".git/objects/69/f3bcc9a7a1633c81e7ee94ad81fe43f78db1ed": "839db1fb8650f0ff54c07d9d48fed4ac",
".git/objects/93/d28889f08f2efb99006b978f49b10e4278b5f9": "5069c9777a45fe7f879d9098c5b15a6e",
".git/objects/bd/8cb119c8193b3ed8a96818fc0fd45b1310cb0f": "2aeee2744fc591342a58d678a4b81fec",
".git/objects/bc/2b27966fba41529b53e4fa60f62b2e145abb45": "eafdb1caa4be33dc336806a934011c48",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e3/4003e0fee6fa7273920a3ef302835c3541ce5a": "72a305a9783de4a2bc87e83e42b39371",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/26/20d41e75d3598bb3efedc5f2b0a8c2b1f8b159": "f37d24767a09eb8511444445fdab89f1",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/6b/fc2598dcb6332cd1beabb1feb6392728a2b836": "08d786ff080f7f4f93da8825dc853e28",
".git/objects/6e/d9df296c35add485ac50814eb33b9abe62e65a": "31ef4be5ab6be68d1e354eba43e4b2c1",
".git/objects/6d/350577915d0cec9b9ce1826ee1b9aa3397ce24": "482aef6e48c351ff3c3a9ac67ae1f965",
".git/objects/06/aff2680111e8375190aa660dba25746d350636": "888b0df4e03e54f1972a98137b71856a",
".git/objects/a7/3ff86b079b8f9b865f74a3560749f373aad458": "b00b002987d13a9af2b6dc251fcbf9ae",
".git/objects/b1/af856500f8ea4fd17cd5145e43be3240aaceb2": "2a0d49282a15ed1239c4dbda6fb1820f",
".git/objects/d2/7e08bd34de352aa9c485c827effde7d930117e": "e0a0ca391eab8f2ddf1859472fe3ed2f",
".git/objects/d2/a4758d109d9ab59972f9f410e2667896444a4e": "681c8d416dc309e4bf83b2b617792042",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/f6/f42cbf03d5d90ba5d7521e9deac3f289e3c357": "a22087ffeb7131a430c1bdc66f55fdb4",
".git/objects/e9/3f910b2f7ff476d4e140960f37660217e8edce": "d09d2d0fb5d368ea20cc58a2525507b5",
".git/objects/f1/f216ca748429f7888a6b2a11389afce28bccce": "3e6643c6e6fe635bf3af25728cc2ffe7",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/2d/aa9e525d8fa285c17cf38e48a1fdda95ca9b78": "3693ba6575b7405b0cc2887693ed6c19",
".git/objects/1d/e2f022af2a9d3b49563aaa7eada6068b36d71d": "c6f8147f11002394e9cbe44b5ded1b44",
".git/objects/71/26ca7535fdd651011c0a1245a684f11210b5d7": "b3077d24f0d8217d48febee279fe3df7",
".git/objects/76/666acbd83aea77def80a9e1f8b8a0ebab6793f": "2f8e3ff8701f718cbfc25e89a5da80af",
".git/objects/49/de1fde66876035b99f83ecc11b1f51b85db028": "931e8a5f7de23865c8a601c91af06673",
".git/objects/40/b19142cf824e7ce671fc07ddc95ba8f1d4a21f": "1a8b5f3389cee2cdb0bf2da195a1ab7e",
".git/objects/25/c9de4ad266519981d71bfd828cd3d788b7c73a": "cea7c9ef3727c27d9892dbe3933889e0",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "3918ced87c47ab9efa4fb6e530eb7c36",
".git/logs/refs/heads/master": "3918ced87c47ab9efa4fb6e530eb7c36",
".git/logs/refs/remotes/origin/master": "87ad6a114453307ee44791f97cd7964b",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/master": "063747e5caac77defc424a584f88a69b",
".git/refs/remotes/origin/master": "063747e5caac77defc424a584f88a69b",
".git/index": "6af29e8d2e478b4cf9a428b07ddc6c39",
".git/COMMIT_EDITMSG": "713d552d7df3fe507fb3668d6dc3cce0",
"assets/images/background.jpeg": "903879872d29053c105d1ba0abe1282a",
"assets/images/splash.png": "45fe628f7be5cd65d4e7e1c2c1a6e6e7",
"assets/images/logo.png": "cce9b8730acbf9f20642468148ad63c1",
"assets/images/img3.png": "683ed60e52b219bd3785372df0a4b061",
"assets/images/img2.png": "5cab1e65d7827ff5144b7099bb52c356",
"assets/images/img1.png": "dc1d72ef529cdbc879485d6c32e9181a",
"assets/images/image7.png": "4adc366710023a32a163d72ae6476336",
"assets/images/woman.png": "1d570b7713cb04bc2a46fca2866faae0",
"assets/images/logo.jpeg": "097f2114162d4718baad4174f203b51e",
"assets/images/image6.png": "239cf9dbd6748786fd4e5ae1623a1def",
"assets/images/image4.png": "c7fb646ad94595febfc99012aa70f415",
"assets/images/image5.png": "4d8ac9587fb275b479230e94d505f444",
"assets/images/image1.png": "6b82b62d6ea5ee74d57957a3f16c5661",
"assets/images/image2.png": "ca99ac7d636bfd208a2a74e71a0617dc",
"assets/images/potato.jpeg": "4e1f71de6ed0f1250815f84c3ddbcf55",
"assets/images/image3.png": "02e4c560fc31eaca6d2d08a87982b15f",
"assets/AssetManifest.json": "489f21e6b5d942896d2a64447586deec",
"assets/NOTICES": "11667e81a98b65239eb634011b012e37",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1"
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
