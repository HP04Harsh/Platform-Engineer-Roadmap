import os
from PyPDF2 import PdfMerger

folder_path = input("Enter folder path containing PDFs: ")
merger = PdfMerger()

for file in os.listdir(folder_path):
    if file.endswith(".pdf"):
        merger.append(os.path.join(folder_path, file))

merger.write("merged_output.pdf")
merger.close()

print("PDFs merged successfully!")