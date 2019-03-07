# DistsysTest

## 1 GenServer to 1 GenServer

![img_0447](https://user-images.githubusercontent.com/1679292/53984911-52f6b100-40e8-11e9-8bf7-afe80d74a1d8.JPG)

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
- [x] 1 GenServer to 1 GenServer in one Node
- [ ] Printers with Poolboy(local) in single server
- [ ] Printers with Poolboy(global) in cluster
- [ ] Use Phoenix Presence to share?
- [ ] Add one DB
- [ ] Add MultiMaster DB for each Node. Mnesia?
