from pdflatex import PDFLaTeX
import os

def main():
  path = os.environ["INPUT_PATH"]
  pdfl = PDFLaTeX.from_texfile(path)
  pdf, log, completed_process = pdfl.create_pdf(keep_pdf_file=True, keep_log_file=True)

  if __name__ == "__main__":
    main()
