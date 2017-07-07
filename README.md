# Kontena & Loggly
Example usage of kontena's logging to fluent to loggly

## Setup
* Update `fluent.conf`
  * Replace Loggly Token
* Build Container
  * docker build -t logs/fluent .
* Deploy Stack/Container

## Usage
```
STACK='logs'
DOCKER_IMAGE='dologthingy:latest'
docker build -t logs/fluent .
docker run logs/fluent
# Install or Upgrade
kontena stack show $STACK_NAME > /dev/null && kontena stack upgrade $STACK_NAME || kontena stack install --name $STACK_NAME
```

## Enable
```
kontena grid update --log-forwarder fluentd --log-opt fluentd-address=fluentd.logs.my-grid.kontena.local:24224 my-grid
```

## Disable
```
kontena grid update --log-forwarder none my-grid
```

# Notes / Additional Reading
* [Kontena Logs](https://www.kontena.io/docs/using-kontena/logs.html)
* [Loggly Fluent](https://www.loggly.com/docs/fluentd-logs/)
