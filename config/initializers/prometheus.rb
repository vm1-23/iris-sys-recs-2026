require 'prometheus/middleware/collector'
require 'prometheus/middleware/exporter'

Rails.application.config.middleware.unshift Prometheus::Middleware::Collector
Rails.application.config.middleware.unshift Prometheus::Middleware::Exporter
