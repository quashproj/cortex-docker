# Cortext image 

Build a cortext image with all the neurons (analyzers/responders)

You can add your own neurons.

## Cortext Analyzers/Responders

The image will be created with all your neuros.  If your neurons require specific libraries. use a `requirements.txt` and the build process will use pip3 to install them.

### Analyzers

Create a folder for your analyzer in the `analyzers` folder.


```
analyzers
├── Abuse_Finder
│  ├── Abuse_Finder.json
│  ├── abusefinder.py
│  ├── assets
│  │  └── abuse_finder_longreport.png
│  ├── Dockerfile
│  ├── README.md
│  └── requirements.txt
.
.
.
└── Zscaler
   ├── assets
   │  ├── zscaler_logo.png
   │  ├── zscaler_url_lookup_long.png
   │  └── zscaler_url_lookup_short.png
   ├── README.md
   ├── requirements.txt
   ├── Zscaler.json
   └── zscaler.py
```

## Responders

Create a folder for your responder in the `responders` folder.

```
responders
├── AMPforEndpoints
│  ├── AMPforEndpoints.py
│  ├── AMPforEndpoints_IsolationStart.json
│  ├── AMPforEndpoints_IsolationStop.json
│  ├── AMPforEndpoints_MoveGUID.json
│  ├── AMPforEndpoints_SCDAdd.json
│  ├── AMPforEndpoints_SCDRemove.json
│  └── requirements.txt
.
.
.
└── ZEROFOX_Takedown_request
   ├── requirements.txt
   ├── ZEROFOX_Takedown_request.json
   └── ZEROFOX_Takedown_request.py
```

# Build

Build your docker image

```bash
docker build -t ghcr.io/quashproj/cortex-with-neurons:3.1.8 .
```
