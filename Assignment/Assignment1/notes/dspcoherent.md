# Notes

## Purpose

DSP Algorithms for
- Digital EQ Algorithms
 - Chromatic Dispersion compensation
 - Polarization Recovery
 - Polarization Mode Dispersion Compensation
 - Carrier Frequency Offset Estimation
 - Carrier Phase Recovery

## Why

- Higher Data rates
- Moving phase and polarization tracking to digital domain
 - simplified reception of multi-level multidimensional coded optical systems
 - Enables several impairments to be compensated in digital domain
  - CD, PMD, Optical Filtering Effects

## Alg for typical digital coherent receiver

- Receiver uses
 - two 'fixed' digital equalizers
 - four butterfly-configured adaptive digital equalizers
 - phase recovery units

### Fixed Equalizers

- Digital compensation of large amounts of CD in sys w/o optical dispersion
  compensation
- T/2 spaced time domain fir filter achieves best performance
- 2T/3 reduces receiver complexity
- Time domain, less taps than freq domain, still too complex
- FFT based freq domain EQ has been introd for CD compensation
- FDE comp complexity incr. with symbol rate on log scale

### Adaptive Digital EQ

- Used for polarization recovery, de-multiplexing, plarization-mode-dispersion,
  residual CD compensation.
- Can filter other linear distortions.
- T/2 spaced time domain FIR filters best performance
- 2T/3 can be used for reduced complexity

### Carrier Freq estimation, Phase Recovery

- Viterbi-Veterbi method (Mth poower feed forward)
 - Signal raised to Mth power, removes:
  - Data modulation
  - freq offset between tx signal and LO decided from speed of phase rotation of
    resulting signal
 - After removing freq offset, freq recovered signal raised to Mth power again
   to remove data modulation.
   - laser phase noisechanges more slowlu than other received noise contrib,
     such as amplified spontaneous emission noise
     - Phase noise can be estimateed by avg mult. adjacent symbols.
     - Alternate carrier recovery method uses Maximum Liklihood estimation.

## Distortion Mitigation Alg

- Advantages gained using single-ended photodetection offset by distortion
  caused by modulated signal on original signal
- Traditionally large Lo-to-signal power ratio (LOSPR) used to mitigate distortion
- DSP methods allow lower LOSPR
 - Lower LOSPR relax req. on LO power, easing design of coherent receiver
- Approx AC component of detected signal using assumed (negligible) LO intensity noise
- 8x11Gb/s testing, 25GHz-spaced DWDM tx experiment using return to zero pulse
  shaped PDM-8psk modulation.
 - Images show BER of channel 4 vs various LOSPR val after 640km tx with 3 post
    scenarios:
   1. w/o proposed DSP alg
   2. using proposed alg with 1st order approx
   3. using proposed approx with 2nd order approx
- With LOSPR from 9.5-19.5dB, best BER using trad method = 1.6x10-3 at LOSPR
  19.5dB
- Using 2nd order approx, similar perf with LOSPR of 11.5dB
- LOSPR 19.5dB, alg improves BER from 1.6x10-3 to 9x10-4.
- Over 2nd order approxs give small benefits

## Cascaded multi-modulous eq alg

- As 8/16QAM signal doesn't present constant symbol amp. classic CMA alg no
  longer effective as stand alone EQ alg.
- CMA error signal not approach 0, resulting in noise after EQ
- 2 ref circles with modulus (R1+R2)/2 and (R1-R2)/2 introduced in cascaded way,
  final error signal approaches 0 for ideal 8AM.
 - classic CMA uses one ref circle with constant modulus, therefore, cannot have
   0 error after perf EQ for PDM8/16QAM.
- CMMA experimentally verified in 60Gb/s PDM-8QAM experiment.
- Digital signal processing consisted of 6 steps:
 1. Baud clock extracted using classic "square and filter" method
 2. 50Gsa/a signal downsampled to sample rate of 2x baud using extracted clock.
 3. Distortion from direct square-law detection of signal component due to
    single ended photo-detection mitigated using aforementioned alg
 4. Polarization demultiplexing performed with 13-tap T/2 spaced adaptive FIR
    filters, optimized by CMMA.
 5. Carrier freq/phase recovery performed in subsequent step using feed-forward
    Mth power alg
 6. Differential decofing, Gray-code mapping and BER counting were done.
- For all reported results, BER were over 2.4x10^6 bits

# Conclusions

- Time domain based EQ alg require more computational effort than freq domain.
