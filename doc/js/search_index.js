var search_data = {"index":{"searchIndex":["getweatherreport","object","parseaddressforzipcode","nozipfounderror","weatherapp","application","weatherreportgenerator","weatherreportpresenter","weatherreportscontroller","activate_bundler()","activation_error_handling()","bundler_requirement()","bundler_requirement_for()","cached?()","cli_arg_version()","create()","env_var_version()","gemfile()","generate()","generate()","geocode!()","index()","invoked_as_script?()","load_bundler!()","lockfile()","lockfile_version()","new()","new()","new()","new()","open_meteo_url()","process()","process()","process()","process()","show()","system!()","zipcodestack_url()","dockerfile","gemfile","gemfile.lock","readme","rakefile","manifest.js","application.css","application.js","application.js","hello_controller.js","index.js","service-worker.js","docker-entrypoint","config.ru","credentials.yml.enc","master.key","development.log","test.log","404.html","406-unsupported-browser.html","422.html","500.html","robots","caching-dev","local_secret","restart"],"longSearchIndex":["getweatherreport","object","parseaddressforzipcode","parseaddressforzipcode::nozipfounderror","weatherapp","weatherapp::application","weatherreportgenerator","weatherreportpresenter","weatherreportscontroller","object#activate_bundler()","object#activation_error_handling()","object#bundler_requirement()","object#bundler_requirement_for()","weatherreportpresenter#cached?()","object#cli_arg_version()","weatherreportscontroller#create()","object#env_var_version()","object#gemfile()","weatherreportgenerator::generate()","weatherreportgenerator#generate()","weatherreportgenerator#geocode!()","weatherreportscontroller#index()","object#invoked_as_script?()","object#load_bundler!()","object#lockfile()","object#lockfile_version()","getweatherreport::new()","parseaddressforzipcode::new()","weatherreportgenerator::new()","weatherreportpresenter::new()","weatherreportgenerator#open_meteo_url()","getweatherreport::process()","getweatherreport#process()","parseaddressforzipcode::process()","parseaddressforzipcode#process()","weatherreportscontroller#show()","object#system!()","weatherreportgenerator#zipcodestack_url()","","","","","","","","","","","","","","","","","","","","","","","","","",""],"info":[["GetWeatherReport","","GetWeatherReport.html","","<p>handles getting the weather report for a given zip code either from the API or from cache\n"],["Object","","Object.html","",""],["ParseAddressForZipCode","","ParseAddressForZipCode.html","","<p>Parses given addesses for zip codes\n"],["ParseAddressForZipCode::NoZipFoundError","","ParseAddressForZipCode/NoZipFoundError.html","",""],["WeatherApp","","WeatherApp.html","",""],["WeatherApp::Application","","WeatherApp/Application.html","",""],["WeatherReportGenerator","","WeatherReportGenerator.html","","<p>pulls weather report from external API\n"],["WeatherReportPresenter","","WeatherReportPresenter.html","","<p>presentation layer for weather reports\n"],["WeatherReportsController","","WeatherReportsController.html","",""],["activate_bundler","Object","Object.html#method-i-activate_bundler","()",""],["activation_error_handling","Object","Object.html#method-i-activation_error_handling","()",""],["bundler_requirement","Object","Object.html#method-i-bundler_requirement","()",""],["bundler_requirement_for","Object","Object.html#method-i-bundler_requirement_for","(version)",""],["cached?","WeatherReportPresenter","WeatherReportPresenter.html#method-i-cached-3F","()","<p>returns whether the report is from cache\n"],["cli_arg_version","Object","Object.html#method-i-cli_arg_version","()",""],["create","WeatherReportsController","WeatherReportsController.html#method-i-create","()","<p>parses zip from address and sends to weather report\n"],["env_var_version","Object","Object.html#method-i-env_var_version","()",""],["gemfile","Object","Object.html#method-i-gemfile","()",""],["generate","WeatherReportGenerator","WeatherReportGenerator.html#method-c-generate","(zip_code)",""],["generate","WeatherReportGenerator","WeatherReportGenerator.html#method-i-generate","()","<p>pulls weather data for a zip code\n"],["geocode!","WeatherReportGenerator","WeatherReportGenerator.html#method-i-geocode-21","()","<p>geocodes the zip code to get lat/long for use with the weather API\n"],["index","WeatherReportsController","WeatherReportsController.html#method-i-index","()","<p>displays weather report address form\n"],["invoked_as_script?","Object","Object.html#method-i-invoked_as_script-3F","()",""],["load_bundler!","Object","Object.html#method-i-load_bundler-21","()",""],["lockfile","Object","Object.html#method-i-lockfile","()",""],["lockfile_version","Object","Object.html#method-i-lockfile_version","()",""],["new","GetWeatherReport","GetWeatherReport.html#method-c-new","(zip_code)",""],["new","ParseAddressForZipCode","ParseAddressForZipCode.html#method-c-new","(address)",""],["new","WeatherReportGenerator","WeatherReportGenerator.html#method-c-new","(zip_code)",""],["new","WeatherReportPresenter","WeatherReportPresenter.html#method-c-new","(weather_report)",""],["open_meteo_url","WeatherReportGenerator","WeatherReportGenerator.html#method-i-open_meteo_url","()","<p>returns url of weather API\n"],["process","GetWeatherReport","GetWeatherReport.html#method-c-process","(zip_code)",""],["process","GetWeatherReport","GetWeatherReport.html#method-i-process","()","<p>handles caching of weather responses\n"],["process","ParseAddressForZipCode","ParseAddressForZipCode.html#method-c-process","(address)",""],["process","ParseAddressForZipCode","ParseAddressForZipCode.html#method-i-process","()","<p>finds a zip code in any address string (may only work for US and Canadian zip codes)\n"],["show","WeatherReportsController","WeatherReportsController.html#method-i-show","()","<p>shows weather report for zip\n"],["system!","Object","Object.html#method-i-system-21","(*args)",""],["zipcodestack_url","WeatherReportGenerator","WeatherReportGenerator.html#method-i-zipcodestack_url","()","<p>returns url of zip code reverse geocode API\n"],["Dockerfile","","Dockerfile.html","","<p># syntax = docker/dockerfile:1\n<p># This Dockerfile is designed for production, not development. Use with …\n"],["Gemfile","","Gemfile.html","","<p>source “rubygems.org”\n<p># Bundle edge Rails instead: gem “rails”, github: “rails/rails”, …\n"],["Gemfile.lock","","Gemfile_lock.html","","<p>GEM\n\n<pre>remote: https://rubygems.org/\nspecs:\n  actioncable (7.2.0)\n    actionpack (= 7.2.0)\n    activesupport ...</pre>\n"],["README","","README_md.html","","<p>README\n<p>Forward\n<p>Hi ya’ll! I’ve been working in a highly customized Rails 5 environment for some …\n"],["Rakefile","","Rakefile.html","","<p># Add your own tasks in files placed in lib/tasks ending in .rake, # for example lib/tasks/capistrano.rake …\n"],["manifest.js","","app/assets/config/manifest_js.html","","<p>//= link_tree ../images //= link_directory ../stylesheets .css //= link_tree ../../javascript .js //= …\n"],["application.css","","app/assets/stylesheets/application_css.html","","<p>/*\n\n<pre>* This is a manifest file that&#39;ll be compiled into application.css, which will include all the files ...</pre>\n"],["application.js","","app/javascript/application_js.html","","<p>// Configure your import map in config/importmap.rb. Read more: github.com/rails/importmap-rails import …\n"],["application.js","","app/javascript/controllers/application_js.html","","<p>import { Application } from “@hotwired/stimulus”\n<p>const application = Application.start()\n<p>//  …\n"],["hello_controller.js","","app/javascript/controllers/hello_controller_js.html","","<p>import { Controller } from “@hotwired/stimulus”\n<p>export default class extends Controller {\n\n<pre class=\"ruby\"><span class=\"ruby-identifier\">connect</span>() <span class=\"ruby-operator\">...</span>\n</pre>\n"],["index.js","","app/javascript/controllers/index_js.html","","<p>// Import and register all your controllers from the importmap under controllers/*\n<p>import { application …\n"],["service-worker.js","","app/views/pwa/service-worker_js.html","","<p>// Add a service worker for processing Web Push notifications: // // self.addEventListener(“push”, …\n"],["docker-entrypoint","","bin/docker-entrypoint.html","","<p>#!/bin/bash -e\n<p># Enable jemalloc for reduced memory usage and latency. if [ -z “${LD_PRELOAD+x}” …\n"],["config.ru","","config_ru.html","","<p># This file is used by Rack-based servers to start the application.\n<p>require_relative “config/environment” …\n"],["credentials.yml.enc","","config/credentials_yml_enc.html","","<p>pHcr3aICuvypssOJtDridfU75MFlmVnXNUIH86j/8KqLSarpU4RHh4SsanztF+OfY5TFe5wGxE0XCw9TPRYso+Q3GBvq1vfGGS6NGBSGlESLdEuOfaFTq/yfsc0Uw1bj6XrfYJz8zLM5YYv9Mrj6/z5YByJiTpMdBFDYODO/jlIW50SYwXnCobYWFdMu1dndfIVGC3j77wW1bZSfCtf3/JwjxwKDPw7cw3a0hNE3pfWF/wFOqav3Iq4LYO50DqFBX1haqMFIFPKoUvm64Pyh9rGxi3tehrN1/t+hVldTIpIEdlQw5YD2A+SOu9uwnL+bReuv6jOxv/ot+A0cacQy6Ks+SKCxCNUc9Fnhvi8OD3a8qjHqhk2qDtMJsZ0rmpVxYxCtEj38f99MNAYaNOeHVcm322mUA2LJD+VKMNvYdX5fD2SOLASbONGKkhDNzam9EyYjRNLofGZ/W8lKPpc1WjA/–5g7+j5IH+bNoLWMo–f1JpXhCMizB0Pm0dQ2NbjA== …\n"],["master.key","","config/master_key.html","","<p>c22848b143e70b2f108a3526078f67d5\n"],["development.log","","log/development_log.html","","<p>Started GET “/” for ::1 at 2024-08-15 11:57:26 -0500\n\n<pre>\u001b[1m\u001b[35m (1.0ms)\u001b[0m  \u001b[1m\u001b[35mCREATE ...</pre>\n"],["test.log","","log/test_log.html","","\n<pre>\u001b[1m\u001b[35m (1.0ms)\u001b[0m  \u001b[1m\u001b[35mCREATE TABLE &quot;schema_migrations&quot; (&quot;version&quot; varchar NOT NULL PRIMARY ...</pre>\n"],["404.html","","public/404_html.html","","<p>&lt;!DOCTYPE html&gt; &lt;html&gt; &lt;head&gt;\n\n<pre>&lt;title&gt;The page you were looking for doesn&#39;t exist (404)&lt;/title&gt; ...</pre>\n"],["406-unsupported-browser.html","","public/406-unsupported-browser_html.html","","<p>&lt;!DOCTYPE html&gt; &lt;html&gt; &lt;head&gt;\n\n<pre>&lt;title&gt;Your browser is not supported (406)&lt;/title&gt;\n&lt;meta ...</pre>\n"],["422.html","","public/422_html.html","","<p>&lt;!DOCTYPE html&gt; &lt;html&gt; &lt;head&gt;\n\n<pre>&lt;title&gt;The change you wanted was rejected (422)&lt;/title&gt; ...</pre>\n"],["500.html","","public/500_html.html","","<p>&lt;!DOCTYPE html&gt; &lt;html&gt; &lt;head&gt;\n\n<pre>&lt;title&gt;We&#39;re sorry, but something went wrong (500)&lt;/title&gt; ...</pre>\n"],["robots","","public/robots_txt.html","","<p># See www.robotstxt.org/robotstxt.html for documentation on how to use the robots.txt file\n"],["caching-dev","","tmp/caching-dev_txt.html","",""],["local_secret","","tmp/local_secret_txt.html","","<p>00692cbe7d929461919bb901deb96e3328136f2ed811d1868e124ddd92d3c27d28db84571fcf069d5d9466943d96dce42aa8002da697756fe0f1e27260a77ffd …\n"],["restart","","tmp/restart_txt.html","",""]]}}