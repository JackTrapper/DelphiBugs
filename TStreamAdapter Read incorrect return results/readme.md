![image](https://user-images.githubusercontent.com/4681474/154814173-baa0873a-ab52-47b9-827e-7242f6f3f620.png)


If we try to read 5 bytes from an **IStream.Read**, but the underlying stream could only return us 4 bytes, the correct HRESULT is `S_FALSE`.

And if there is an exception, then **IStream.Read** should return an **error** code (e.g. `E_FAIL`) and not a **success** code (e.g. `S_FALSE`)
