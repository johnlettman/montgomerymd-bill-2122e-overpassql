<div align="center">
  <a href="https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_QL">
    <img height="100" vspace="" hspace="25"
      src="https://raw.githubusercontent.com/johnlettman/overpassql-loader/main/.github/assets/overpass-icon.svg">
  </a>
  <h1>
    Montgomery County, MD, USA<br>
    <sub><sup>
      Bill 21-22E "Firearms - Weapons"<br>
      GIS analysis OverpassQL queries
    </sup></sub>
  </h1>
</div>

This repository contains a collection of [OverpassQL][url-overpassql] queries
to acquire the locations excluded as _"place of public assembly"_ under
[Montgomery County, MD Bill 21-22E "Firearms - Weapons"][url-2122e-signed].

## Contributing
### General advice
The following procedure for contributing changes is recommended:
- Branch to `fix/[issue or description]`, `feature/[issue or description]`, ...
- Implement your changes and commit
- Open a [pull request][url-pr]

Of course, you're welcome to use any reasonable workflow that best suits your
style. After all, I committed to unprotected main throughout this project.

Please add any of the following strings to your commit message if the commit
does not modify any code (e.g., documentation work):

`[skip ci]`, `[ci skip]`, `[no ci]`, `[skip actions]`, `[actions skip]`

See: [GitHub documentation, "skipping workflow runs"][ghdocs-skip-actions]

### Versioning
To bump versions:
```bash
yarn version --patch
yarn version --minor
yarn version --major
```

### Licensing
Given this project is licensed under the MIT License, please be mindful that
your contributions will fall under the same licensing scheme.

## License
This project is licensed under the MIT License.
See `LICENSE` for more information.


[url-overpassql]: https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_QL
[url-2122e-signed]: https://apps.montgomerycountymd.gov/ccllims/DownloadFilePage?FileName=2761_1_22629_Bill_21-22E_Signed_20221128.pdf

[ghdocs-skip-actions]: https://docs.github.com/en/actions/managing-workflow-runs/skipping-workflow-runs

[url-repo]: https://github.com/johnlettman/montgomerymd-bill-2122e-overpassql
[url-pr]: https://github.com/johnlettman/montgomerymd-bill-2122e-overpassql/pulls
