import re

KRATOR_REGEX = re.compile(r"^Krator$")

def is_exact_krator(text: str) -> bool:
    """Return True if the given text exactly matches 'Krator'."""
    return bool(KRATOR_REGEX.match(text))

if __name__ == "__main__":
    sample = "Krator"
    print(f"{sample!r} matches: {is_exact_krator(sample)}")
