Welcome to treehouses
=====================

[![Website treehouses.io](https://img.shields.io/website?url=https%3A%2F%2Ftreehouses.io)](https://treehouses.io)
[![Gitter chatroom](https://img.shields.io/gitter/room/treehouses/Lobby)](https://gitter.im/treehouses/Lobby)

What is treehouses?
-------------------

treehouses is the name of our system allowing us to share our different learning platforms via the Raspberry Pi series of single-board computer devices.

Currently the Raspberry Pi models supported are: the zero W, the Pi 3, the Pi 3B+ and the Pi 4


Main system branches
--------------------

treehouses consists of several parts:

### cli

We have created our suite of commands to be used in the Raspberry Pi terminal, which can be found in [treehouses/cli](https://www.npmjs.com/package/@treehouses/cli)

```
npm i @treehouses/cli
```

### builder

This is where our [modified Raspberry Pi images](https://download.treehouses.io) are created: [treehouses/builder](https://github.com/treehouses/builder).

### remote

Currently in remote, we are developing an [Android app](https://play.google.com/store/apps/details?id=io.treehouses.remote) which allows Android phones and tablets interact with the terminal of the Raspberry Pi over Bluetooth: [treehouses/remote](https://github.com/treehouses/remote).
