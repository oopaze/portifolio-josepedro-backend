from PIL import Image


def make_watermark_transparent():
    watermark = Image.open('media/imagens/Watermark.png')

    rgba = watermark.convert("RGBA")
    colors = rgba.getdata()
    new_colors = []
    for color in colors:
        if color[-1] == 0:
            new_colors.append(color)
        else:
            new_colors.append((color[0], color[1], color[2], 30))

    rgba.putdata(new_colors)
    rgba.save("watermark.png", "PNG")


def put_watermark():
    image = Image.open('media/imagens/contato.jpg')
    watermark = Image.open('watermark.png')

    width, height = image.size

    x = (width - 5000) // 2 if (width - 5000) > 0 else 0
    y = (height - 5000) // 2 if (height - 5000) > 0 else 0

    image.paste(watermark, (x, y), watermark)
    image.save('test.jpg')


if __name__ == '__main__':
    put_watermark()
