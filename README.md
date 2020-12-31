# IANA Assignment Documents

The [IANA](http://www.iana.org/) provides an exhaustive list of assignment documents in machine-readable format, but unfortunately does not track revision history of these documents, beyond the occasional "Last Updated" date.
This repository seeks to track changes to these documents and keep them in a revision control system.

## Methodology

To avoid overloading www.iana.org with crawls (and, incidentally, annoying the IANA), a collector script is run every 5 minutes which tries a random sampling of the document database.
The sampling is chosen so that each file should be checked weekly on average.
Recently modified documents receive higher priority, and similar documents are checked when an update is detected (for example, if a .txt update is detected, its corresponding .csv and .xml versions are fetched).

The crawl script only checks known existing files.
In the future, full crawls may be scheduled every few months to look for new documents.

## History

- The first full crawl was performed on 2016-01-01.
- Subsequent full crawls have been performed on 2016-05-22, 2017-06-18 and 2020-12-29.
- There was a period between 2020-04 and 2020-12 when the scan script was not working correctly and document updates were not tracked.
- On 2020-12-29, the repository was rebased to remove recorded transient fetch errors, and to squash commits down to weekly.

## License

The IANA was originally created as a United States Department of Defense organization, which would have placed produced works under the public domain.
However, the IANA was transferred to ICANN in 2000, and since 2009, ICANN is a California non-profit company.

So short of an explicit declaration of license (which I have not been able to find), copyright status for IANA-produced works is unclear.
