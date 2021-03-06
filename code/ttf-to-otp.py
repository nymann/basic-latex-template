import sys
import fontforge

def convert_to_otf(path: str):
    font = fontforge.open(path)
    new_file_name = path.replace(".ttf", ".otf")
    font.generate(new_file_name)

if __name__ == "__main__":
    for p in sys.argv[1:]:
        convert_to_otf(p)
