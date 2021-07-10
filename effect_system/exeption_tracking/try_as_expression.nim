from strutils import parseInt
let x = try: parseInt("133a")
        except: -1
        finally: echo "hi"

echo x