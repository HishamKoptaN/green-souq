import os
from PIL import Image

def generate_web_icons():
    source_icon = "assets/logos/launcher_icon.png"
    if not os.path.exists(source_icon):
        print(f"Source icon not found at {source_icon}")
        return

    img = Image.open(source_icon).convert("RGBA")

    # Ensure web/icons directory exists
    os.makedirs("web/icons", exist_ok=True)

    # 1. Favicon
    favicon_path = "web/favicon.png"
    img.resize((64, 64), Image.Resampling.LANCZOS).save(favicon_path, "PNG")
    print(f"Updated {favicon_path}")

    # 2. Web Icons
    icon_sizes = [
        ("web/icons/Icon-192.png", (192, 192)),
        ("web/icons/Icon-512.png", (512, 512)),
        ("web/icons/Icon-maskable-192.png", (192, 192)),
        ("web/icons/Icon-maskable-512.png", (512, 512)),
    ]

    for path, size in icon_sizes:
        # For maskable icons, sometimes padding is added, but standard resize works well or padding can be added if needed.
        # Let's check standard resizing or centered padding for maskable icons if necessary. 
        # Usually, a direct resize or centered padding is used. Let's do direct resize or simple padding.
        resized = img.resize(size, Image.Resampling.LANCZOS)
        resized.save(path, "PNG")
        print(f"Updated {path}")

if __name__ == "__main__":
    generate_web_icons()
