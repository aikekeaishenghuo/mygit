import wave
import contextlib
from sys import argv
in1_wav = argv[1]

fname = in1_wav
with contextlib.closing(wave.open(fname,'r')) as f:
    frames = f.getnframes()
    print(frames)
    rate = f.getframerate()
    duration = frames / float(rate)
    print(rate)
    print(fname,duration)
