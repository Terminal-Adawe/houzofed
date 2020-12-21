<!DOCTYPE html>
<html lang="en">
<head>
<!-- <title>Main Shop Page</title> -->
@yield('title')
<meta name="csrf-token" content="{{csrf_token()}}" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="aStar Fashion Template Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="{{mix('/css/app.css')}}">
<script src="https://unpkg.com/react@16.6.3/umd/react.production.min.js"></script>
<script src="https://unpkg.com/react-dom@16.6.3/umd/react-dom.production.min.js"></script>
<script src="https://unpkg.com/moment@2.22.1/min/moment.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script> -->
<link rel="shortcut icon" href="{{ Storage::url($data['shopdetails']->logo ?? '') }}" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="{{ asset('bootstrap-4.3.1-dist/css/bootstrap.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/deluxe.css?v6') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/splide.min.css') }}">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="{{ asset('js/jquery-3.2.1.min.js') }}"></script>
<script src="https://kit.fontawesome.com/967d61a618.js" crossorigin="anonymous"></script>
<!-- <script async  src="https://cdn.ampproject.org/v0.js"></script>
  <script async custom-element="amp-analytics" src="https://cdn.ampproject.org/v0/amp-analytics-0.1.js"></script>
  <script async custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0/amp-sidebar-0.1.js"></script>
  <script async custom-element="amp-carousel" src="https://cdn.ampproject.org/v0/amp-carousel-0.1.js"></script>
  <script async custom-element="amp-lightbox-gallery" src="https://cdn.ampproject.org/v0/amp-lightbox-gallery-0.1.js"></script> -->
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-V5PWECX4Q2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-V5PWECX4Q2');
</script>
</head>
<body>
	<input type="hidden" name="message-modal" class="message-modal" value="{!! session('status') ? session('status') : 0; !!}">
	@include('nav')