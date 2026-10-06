# Oxocarbon for aider

Themes for the [aider](https://aider.chat) CLI.

## Usage

Copy the contents of `oxocarbon_dark.yml` or `oxocarbon_light.yml` into your
`.aider.conf.yml`. aider reads that file from your home directory, the root of your
git repository, or the current directory; the
[aider docs](https://aider.chat/docs/config/aider_conf.html#yaml-config-file) have
the details.

The theme file ends with a commented-out `code-theme` line. That setting picks a
[Pygments](https://pygments.org) style for code blocks in aider's replies. This
repository doesn't ship a Pygments style, so leave the line commented out.
