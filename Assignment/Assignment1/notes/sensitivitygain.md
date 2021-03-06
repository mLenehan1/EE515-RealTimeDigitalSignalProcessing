# Notes

## Purpose

- Shaping of 16/64QAM for sensitivity gains of .43-.8dB
- Proven robustness of shaping to mismatch in constellation and SNR of channel
- With .1-dB SNR penalty, four shaping distrib req. for 64QAM

## Intro

- Square Quadrature Amplitude Modulation (QAM) formats preferred due to
  simplicity in generation and detection as each constellation point located on
  regular square grid.
- Geometric shaping:
 - Const. points nonuniformly arranged in complex plane
- Probabilistic shaping:
 - Symbols transmit using nonuniform probabilities
- Additive White Gaussian Noise (AWGN) channel with avg power constraint
 - Both technques sensitivity gain = 1.53dB.
- Better SNR allows > Achievable Information Rate (AIR) for SNR-limited digital
  coherent transceivers
  - Contellation shaping promising to improve spectral efficiencies.
- Geometric poses stronger req. on effective number of bits ENOB of DAC due to
  unequallt spaced constellation points.
- Probabilistic known to give larger gains than geometric for shaping square
  QAM.
 - Increases TX perf. for fiber TX in presence of nonlinearities.
- Significant gain in SNR demonstrated for state of the art digital coherent
  transceiver.
- Investigates effect of mismatched probabilistic shaping on shaping gains
 - Mismatch between channel SNR and SNR for whichi input distrib optimized
- Four input distribs sufficient to obtain large shaping gains for 64QAM over
  wide SNR range.

## Probabilistic Shaping Method



## Experiment Setup



## Results



## Conclusions

- Sensitivity gains up to .8dB over uniform input distrib measured experimetally
 - Showed excellent match with AWGN simulations, effectively closing gap to cap
- Showed numerically that shaping gain is robust to mismatch between channel SNR
  and SNR assumerd at RX
 - Variation of channel SNR up to 11dB is low and medium SNR range distrib do
   not require adjustment of input distrib, provided reduced shaping gain is
   acceptable
- This makes prob shaping highly suitable for practical app in optical comms sys
  as it offers tolerance to SNR degradation occurring in the lide cycle of an
  optical comms sys.
