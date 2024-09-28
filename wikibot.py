import click
from mylib.bot import scrape


@click.command()
@click.option("--name", help="Web page we want to scrape")
@click.option("--length", help="Length of the text to scrape", default=1)
def cli(name, length):
    result = scrape(name, length)
    click.echo(click.style(f"{result}:", fg="blue", bg="red"))


if __name__ == "__main__":
    cli()
