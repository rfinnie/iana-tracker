# IANA Assignment Documents

The [IANA](http://www.iana.org/) provides an exhaustive list of assignment documents in machine-readable format, but unfortunately does not track revision history of these documents, beyond the occasional "Last Updated" date.
This repository seeks to track changes to these documents and keep them in a revision control system.

## Methodology

Once per week, the repository at [rsync://rsync.iana.org/assignments](rsync://rsync.iana.org/assignments) is synced and committed.
Note that this rsync module contains original .xml and .txt files, but not .csv files as found on the web site.
(According to an IANA representative, the .csv files on the web site are generated later in their process.)

Prior to 2024-02-14, the data was collected by scraping www.iana.org directly.
A collector script was run every 5 minutes which tried a random sampling of the document database.
The sampling was chosen so that each file should have been checked weekly on average.
Recently modified documents received higher priority, and similar documents were checked when an update was detected (for example, if a .txt update was detected, its corresponding .csv and .xml versions were fetched).
The crawl script only checked known existing files, and full re-crawls were done every few years.

## History

- The first full crawl was performed on 2016-01-01.
- Subsequent full crawls have been performed on 2016-05-22, 2017-06-18 and 2020-12-29.
- There was a period between 2020-04 and 2020-12 when the scan script was not working correctly and document updates were not tracked.
- On 2020-12-29, the repository was rebased to remove recorded transient fetch errors, and to squash commits down to weekly.
- On 2024-02-14, the repository was changed to sync directly from the IANA's recently new (as of 2021) rsync module. This involved removing .csv files and pulling in new files since the last full re-crawl in 2020.

## License

[According to the IANA](https://www.iana.org/help/licensing-terms), documents contained herein are public domain, or available under a [Creative Commons CC0 1.0 Legal Code](https://creativecommons.org/publicdomain/zero/1.0/legalcode) license where an explicit license declaration is required.
