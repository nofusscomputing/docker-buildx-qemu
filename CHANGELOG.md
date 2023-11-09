## 0.3.0 (2023-11-09)

### Features

- **qemu-user-static**: [a068446e](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/a068446e26b9a936e0e26f3095db119cf177f5a1) - updated to ver 1:7.2+dfsg-7+deb12u2~bpo11+1 [ [!28](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/28) ]
- **build**: [1a4ef6f8](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/1a4ef6f888d16ab2eb62e4c39c6c0125658da004) - update base image to debian:11.8-slim [ [!28](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/28) ]

## 0.3.0rc0 (2023-09-02)

### Features

- **ci**: [21952f4c](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/21952f4cf0d08d877ce4bd443024a2de6c0ceb77) - use project gitlab-ci automagic template [ [!6](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/6) [#1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/issues/1) ]

## 0.2.0 (2023-05-21)

### Bug Fixes

- **qemu**: [698002d9](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/698002d9f48f7ca1f033aeec2fc848646f177e6d) - segfault on arm no longer occurs [ [!4](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/4) ]
- **docker**: [8ddf6194](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/8ddf6194c41a0f0991d7a66b9730f77c64c99c68) - removed spt for armv7 and i386 [ [!4](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/4) ]

### Continious Integration

- **gitlab-ci**: [692457da](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/692457da01e5efa149ddbe16a3415880e3b60beb) - update to current HEAD [ [!4](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/4) ]
- [a00cfd60](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/a00cfd60b887a0354638c97608b513f4cdafacd7) - remove qemu from image [ [!4](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/4) ]
- [06b65d99](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/06b65d9919a6f0007cc347a75de6ab805635a4a9) - update to current gitlab-ci project dev head [ [!17](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/17) [!4](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/4) ]

### Documentaton / Guides

- **readme**: [e49f78f7](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/e49f78f712ea84f7d411e8916b1a7f8b87b26e22) - added usage within gitlab-ci [ [!4](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/4) ]

### Features

- **build**: [d352f0e8](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/d352f0e899d5da43a23ebe25167718f947149cf4) - use debian slim [ [!4](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/4) ]

## 0.1.0 (2023-05-15)

### Bug Fixes

- [80a440f8](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/80a440f855757c3d3e2b058fbd39fe2fc4484fb3) - libc issues workaround added [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- [b2429116](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/b24291165772b415800a68dd40e048ce666af0be) - set apt to be noninteractive [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]

### Continious Integration

- [45747fe6](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/45747fe6e0d54c3168cf90764952b756b21edf65) - update to current gitlab-ci project dev head [ [!17](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/17) [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) [!17](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/17) ]
- [b229fd8e](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/b229fd8eb9a06d7a09e6538777b7e27938ff2ac6) - enable jobs validation and git mirror and release [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- [be82a6cc](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/be82a6cc90508ff628768657024c53cac9745bb4) - add sync to github [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- [76b3b6d6](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/76b3b6d6c11672b579106e5911fa67b8fcdb3a7e) - completely use gitlab-ci project for pipeline [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- **build**: [ef1c9501](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/ef1c9501f51c9e4d969e66e9d488181dcc36c76b) - don't retry build [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]

### Documentaton / Guides

- [72a0c3f9](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/72a0c3f9d7f0cbdb4da49437242eba7d0d3e339f) - clean readme [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]

### Features

- **software**: [8af1cee9](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/8af1cee94657544b07f14103b257e04b57f0b781) - install git [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- **software**: [069a4780](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/069a47808a44b0cd1b23e2b526e28aca688406b0) - install buildx plugin from docker repo [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- **image**: [92c1cefb](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/92c1cefb9550ec526d3149edb33d43e25dcdfd75) - add python3 and pip [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- **ci**: [03c98a8c](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/03c98a8c814e0b26fb67949b96374fc6a35944a9) - use nfc gitlab-ci project [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
- **build**: [d86b5b35](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/d86b5b35df494dfbc332b41035d2acf40d6fe1b4) - add commitizen for versioning [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]

## 0.0.1 (2023-05-12)

### Documentaton / Guides

- **readme**: [2b65dcbd](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/commit/2b65dcbdeda1b29517735a3d87fcd2ba1014acaa) - updated to current format [ [!1](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests/1) ]
