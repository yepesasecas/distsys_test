# DistsysTest

## Step 1: 1 GenServer to 1 GenServer

Run node A
```
$ iex --sname A -S mix run
iex> DistsysTest.start()
```

Run node B
```
$ iex --sname B -S mix run
iex> DistsysTest.start()
```

## TODO
[x] 1 GenServer to 1 GenServer in one Node
[] Printers with Poolboy(local) in single server
[] Printers with Poolboy(global) in cluster
[] Use Phoenix Presence to share?
[] Add one DB
[] Add MultiMaster DB for each Node. Mnesia?
