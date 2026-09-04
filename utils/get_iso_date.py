#!/usr/bin/env python3

import os
cmd = "clear"
os.system(cmd)

from datetime import date
today = date.today().isoformat()
print(f"Today's Date is {today}\n")

Exit = input ('Press Enter To Continue...')
print("Closing Session. Exiting...\n")

