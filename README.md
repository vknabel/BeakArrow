# 🏹 Beak Arrow


Run functions inside Swift files.
For more information about Archery itself head to [vknabel/Archery](https://github.com/vknabel/Archery).


```json
name: SupercoolProject
version: 1.0.0
scripts:
  release:
    arrow: "vknabel/BeakArrow"
    path: Scripts/beak.swift
    function: release

```

All parameters will be passed to your script.
```bash
$ archery release
# Will execute the release function within Scripts/beak.swift
```


## Available Options

| Name | Type | Default |
|------|------|---------|
| mode | `String?` | `run` if not part of arguments |
| path | `String?` | `beak.swift` |
| function | `String?` | None. Will print available functions. |
| cachePath | `String?` | `.archery/beak` |

## Contributors
* Valentin Knabel, [@vknabel](https://github.com/vknabel), dev@vknabel.com, [@vknabel](https://twitter.com/vknabel) on Twitter


## License
Archery is available under the [](https://github.com/vknabel/archery/master/LICENSE) license.
