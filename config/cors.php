<?php

return [
  'paths' => ['api/*','sanctum/csrf-cookie','health'],
  'allowed_methods' => ['*'],
  'allowed_origins' => array_filter(array_map('trim', explode(',', env('CORS_ALLOWED_ORIGINS', '')))),
  'allowed_origins_patterns' => ['#^https?://.*\.vercel\.app$#'],
  'allowed_headers' => ['*'],
  'exposed_headers' => [],
  'max_age' => 0,
  'supports_credentials' => false,
];
