import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A339701: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^2.

The programs for A339701, there is no canonical definition to state claims against.
-/

/-! ## A339701.P10424693406077909718

`∑{d}[n+1, A114592(#)*A114592((n+1)/#)]`
-/

namespace A339701.P10424693406077909718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A114592 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P10424693406077909718

/-! ## A339701.P591058212167141747

`∑{d}[n+1, A001055(#)*A339702((n+1)/#)]`
-/

namespace A339701.P591058212167141747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P591058212167141747

/-! ## A339701.P2653921900046264024

`∑{d}[n+1, A301830(#)*A339703((n+1)/#)]`
-/

namespace A339701.P2653921900046264024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P2653921900046264024

/-! ## A339701.P14504124621629038859

`∑{d}[n+1, A339318(#)*A339704((n+1)/#)]`
-/

namespace A339701.P14504124621629038859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P14504124621629038859

/-! ## A339701.P12066458864076476267

`∑{d}[n+1, A339321(#)*A339707((n+1)/#)]`
-/

namespace A339701.P12066458864076476267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339321 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P12066458864076476267

/-! ## A339701.P14271194508843083719

`∑{d}[n+1, A339319(#)*A339705((n+1)/#)]`
-/

namespace A339701.P14271194508843083719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P14271194508843083719

/-! ## A339701.P909186550580259672

`∑{d}[n+1, A339320(#)*A339706((n+1)/#)]`
-/

namespace A339701.P909186550580259672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339320 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P909186550580259672

/-! ## A339701.P6958229308682245353

`∑{d}[n+1, A339322(#)*A339716((n+1)/#)]`
-/

namespace A339701.P6958229308682245353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339322 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339701.P6958229308682245353

/-!
# A339702: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^3.

The programs for A339702, there is no canonical definition to state claims against.
-/

/-! ## A339702.P3436838430825407117

`∑{d}[n+1, A001055(#)*A339703((n+1)/#)]`
-/

namespace A339702.P3436838430825407117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339702.P3436838430825407117

/-! ## A339702.P5000577243506566193

`∑{d}[n+1, A114592(#)*A339701((n+1)/#)]`
-/

namespace A339702.P5000577243506566193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339702.P5000577243506566193

/-! ## A339702.P3479207514012128014

`∑{d}[n+1, A301830(#)*A339704((n+1)/#)]`
-/

namespace A339702.P3479207514012128014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339702.P3479207514012128014

/-! ## A339702.P8128590113589616698

`∑{d}[n+1, A339318(#)*A339705((n+1)/#)]`
-/

namespace A339702.P8128590113589616698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339702.P8128590113589616698

/-! ## A339702.P16173094306677075771

`∑{d}[n+1, A339321(#)*A339716((n+1)/#)]`
-/

namespace A339702.P16173094306677075771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339321 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339702.P16173094306677075771

/-! ## A339702.P12200848120444192864

`∑{d}[n+1, A339319(#)*A339706((n+1)/#)]`
-/

namespace A339702.P12200848120444192864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339702.P12200848120444192864

/-! ## A339702.P3819111117375043766

`∑{d}[n+1, A339320(#)*A339707((n+1)/#)]`
-/

namespace A339702.P3819111117375043766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339320 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339702.P3819111117375043766

/-!
# A339703: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^4.

The programs for A339703, there is no canonical definition to state claims against.
-/

/-! ## A339703.P16699417944152670967

`∑{d}[n+1, A001055(#)*A339704((n+1)/#)]`
-/

namespace A339703.P16699417944152670967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339703.P16699417944152670967

/-! ## A339703.P11229477199610258908

`∑{d}[n+1, A114592(#)*A339702((n+1)/#)]`
-/

namespace A339703.P11229477199610258908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339703.P11229477199610258908

/-! ## A339703.P8226436877422690133

`∑{d}[n+1, A301830(#)*A339705((n+1)/#)]`
-/

namespace A339703.P8226436877422690133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339703.P8226436877422690133

/-! ## A339703.P12061474963646049769

`∑{d}[n+1, A339318(#)*A339706((n+1)/#)]`
-/

namespace A339703.P12061474963646049769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339703.P12061474963646049769

/-! ## A339703.P578703232815561894

`∑{d}[n+1, A339701(#)*A339701((n+1)/#)]`
-/

namespace A339703.P578703232815561894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339701 d * A339701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339703.P578703232815561894

/-! ## A339703.P8263082943164359611

`∑{d}[n+1, A339319(#)*A339707((n+1)/#)]`
-/

namespace A339703.P8263082943164359611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339703.P8263082943164359611

/-! ## A339703.P10089756148982993612

`∑{d}[n+1, A339320(#)*A339716((n+1)/#)]`
-/

namespace A339703.P10089756148982993612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339320 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339703.P10089756148982993612

/-!
# A339704: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^5.

The programs for A339704, there is no canonical definition to state claims against.
-/

/-! ## A339704.P7311028629187715169

`∑{d}[n+1, A001055(#)*A339705((n+1)/#)]`
-/

namespace A339704.P7311028629187715169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339704.P7311028629187715169

/-! ## A339704.P5021082309388545069

`∑{d}[n+1, A114592(#)*A339703((n+1)/#)]`
-/

namespace A339704.P5021082309388545069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339704.P5021082309388545069

/-! ## A339704.P5358098864685732641

`∑{d}[n+1, A301830(#)*A339706((n+1)/#)]`
-/

namespace A339704.P5358098864685732641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339704.P5358098864685732641

/-! ## A339704.P17840170328594418267

`∑{d}[n+1, A339318(#)*A339707((n+1)/#)]`
-/

namespace A339704.P17840170328594418267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339704.P17840170328594418267

/-! ## A339704.P19056199218326720

`∑{d}[n+1, A339701(#)*A339702((n+1)/#)]`
-/

namespace A339704.P19056199218326720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339701 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339704.P19056199218326720

/-! ## A339704.P6975975350980008762

`∑{d}[n+1, A339319(#)*A339716((n+1)/#)]`
-/

namespace A339704.P6975975350980008762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339319 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339704.P6975975350980008762

/-!
# A339705: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^6.

The programs for A339705, there is no canonical definition to state claims against.
-/

/-! ## A339705.P2832944754755203321

`∑{d}[n+1, A001055(#)*A339706((n+1)/#)]`
-/

namespace A339705.P2832944754755203321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339705.P2832944754755203321

/-! ## A339705.P14560596377536289759

`∑{d}[n+1, A114592(#)*A339704((n+1)/#)]`
-/

namespace A339705.P14560596377536289759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339705.P14560596377536289759

/-! ## A339705.P16681426795158005420

`∑{d}[n+1, A301830(#)*A339707((n+1)/#)]`
-/

namespace A339705.P16681426795158005420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339705.P16681426795158005420

/-! ## A339705.P5791403792612424871

`∑{d}[n+1, A339318(#)*A339716((n+1)/#)]`
-/

namespace A339705.P5791403792612424871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339318 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339705.P5791403792612424871

/-! ## A339705.P6249159624871481223

`∑{d}[n+1, A339701(#)*A339703((n+1)/#)]`
-/

namespace A339705.P6249159624871481223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339701 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339705.P6249159624871481223

/-! ## A339705.P16636839154132887754

`∑{d}[n+1, A339702(#)*A339702((n+1)/#)]`
-/

namespace A339705.P16636839154132887754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339702 d * A339702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339705.P16636839154132887754

/-!
# A339706: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^7.

The programs for A339706, there is no canonical definition to state claims against.
-/

/-! ## A339706.P16843812855107066982

`∑{d}[n+1, A001055(#)*A339707((n+1)/#)]`
-/

namespace A339706.P16843812855107066982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339706.P16843812855107066982

/-! ## A339706.P15275178733235167323

`∑{d}[n+1, A114592(#)*A339705((n+1)/#)]`
-/

namespace A339706.P15275178733235167323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339706.P15275178733235167323

/-! ## A339706.P10557455376501082667

`∑{d}[n+1, A301830(#)*A339716((n+1)/#)]`
-/

namespace A339706.P10557455376501082667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301830 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339706.P10557455376501082667

/-! ## A339706.P8664060377270184903

`∑{d}[n+1, A339701(#)*A339704((n+1)/#)]`
-/

namespace A339706.P8664060377270184903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339701 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339706.P8664060377270184903

/-! ## A339706.P12405623089586397493

`∑{d}[n+1, A339702(#)*A339703((n+1)/#)]`
-/

namespace A339706.P12405623089586397493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339702 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339706.P12405623089586397493

/-!
# A339707: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^8.

The programs for A339707, there is no canonical definition to state claims against.
-/

/-! ## A339707.P3720906186571061926

`∑{d}[n+1, A001055(#)*A339716((n+1)/#)]`
-/

namespace A339707.P3720906186571061926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A339716 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339707.P3720906186571061926

/-! ## A339707.P9721430060509829490

`∑{d}[n+1, A114592(#)*A339706((n+1)/#)]`
-/

namespace A339707.P9721430060509829490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339707.P9721430060509829490

/-! ## A339707.P16580001084466522568

`∑{d}[n+1, A339701(#)*A339705((n+1)/#)]`
-/

namespace A339707.P16580001084466522568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339701 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339707.P16580001084466522568

/-! ## A339707.P16056461530579896055

`∑{d}[n+1, A339702(#)*A339704((n+1)/#)]`
-/

namespace A339707.P16056461530579896055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339702 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339707.P16056461530579896055

/-! ## A339707.P4142389033631526628

`∑{d}[n+1, A339703(#)*A339703((n+1)/#)]`
-/

namespace A339707.P4142389033631526628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339703 d * A339703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339707.P4142389033631526628

/-!
# A339708: a(n) is the number of decompositions of 2*n as the sum of an odd prime and a semiprime.

The programs for A339708, there is no canonical definition to state claims against.
-/

/-! ## A339708.P609110875146340894

`A100949(2*(n+1))-char[A000040(n+1)]`
-/

namespace A339708.P609110875146340894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (2 * (n + 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339708.P609110875146340894

/-! ## A339708.P12300537487986582284

`A100949(2*(n+1))-char[A020639(n+2)]`
-/

namespace A339708.P12300537487986582284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (2 * (n + 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A339708.P12300537487986582284

/-!
# A339711: a(n) = A178901(n)/n.

The programs for A339711, there is no canonical definition to state claims against.
-/

/-! ## A339711.P10916455745921624805

`A178901(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339711.P10916455745921624805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178901 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A339711.P10916455745921624805

/-! ## A339711.P17844636270099989606

`floor(a(n-1)/∑[n]*n²)` with `a(0)=2`
-/

namespace A339711.P17844636270099989606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (n ^ 2 : ℚ)⌋

end

end A339711.P17844636270099989606

/-! ## A339711.P10155431396739581582

`floor((2-n/∑[n])*a(n-1))` with `a(0)=2`
-/

namespace A339711.P10155431396739581582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(2 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (a (n - 1) : ℚ)⌋

end

end A339711.P10155431396739581582

/-! ## A339711.P28574010766373518

`floor(2*a(n-1)*n/(n+1))` with `a(0)=2`
-/

namespace A339711.P28574010766373518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(2 * a (n - 1) : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋

end

end A339711.P28574010766373518

/-! ## A339711.P8564380129740409905

`ceil(n*(2*a(n-1)-1)/(n+1))` with `a(0)=2`
-/

namespace A339711.P8564380129740409905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈((n : ℤ) * (2 * a (n - 1) - 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A339711.P8564380129740409905

/-!
# A339712: a(n) = Sum_{d|n} d^(d+n/d-1) * binomial(d+n/d-2, d-1).

The programs for A339712, the canonical program `A339712.P16786963967332811889` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339712 has offset 1).

The definition of A339712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339712.P16786963967332811889

`∑{d}[n+1, #^(#+(n+1)/#-1)*C(#+(n+1)/#-2, #-1)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339712

/-- `∑{d}[n+1, #^(#+(n+1)/#-1)*C(#+(n+1)/#-2, #-1)]` -/
def P16786963967332811889.Spec : Prop :=
  ∀ n, P16786963967332811889.a n = (A339712 (n + 1) : ℝ)

end A339712

/-! ## A339712.P4555368519840516288

`A360712(n+1)+A068323(A360032(n))`
-/

namespace A339712.P4555368519840516288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360712 (n + 1) + A068323 (A360032 n).toNat

end

end A339712.P4555368519840516288

namespace A339712

/-- `A360712(n+1)+A068323(A360032(n))` -/
def P4555368519840516288.Spec : Prop :=
  ∀ n, P4555368519840516288.a n = A339712 (n + 1)

end A339712

/-!
# A339713: a(n) = (a(n-2) concatenate a(n-1)) for n > 2, with a(1)=1, a(2)=10.

The programs for A339713, there is no canonical definition to state claims against.
-/

/-! ## A339713.P17219428092401270143

`A007088(A111061(n+1))`
-/

namespace A339713.P17219428092401270143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A111061 (n + 1)).toNat

end

end A339713.P17219428092401270143

/-!
# A339716: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^9.

The programs for A339716, there is no canonical definition to state claims against.
-/

/-! ## A339716.P17921380945414644443

`∑{d}[n+1, A114592(#)*A339707((n+1)/#)]`
-/

namespace A339716.P17921380945414644443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A339707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339716.P17921380945414644443

/-! ## A339716.P5099448510821774366

`∑{d}[n+1, A339701(#)*A339706((n+1)/#)]`
-/

namespace A339716.P5099448510821774366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339701 d * A339706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339716.P5099448510821774366

/-! ## A339716.P11524037833073995922

`∑{d}[n+1, A339702(#)*A339705((n+1)/#)]`
-/

namespace A339716.P11524037833073995922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339702 d * A339705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339716.P11524037833073995922

/-! ## A339716.P14657313677919210213

`∑{d}[n+1, A339703(#)*A339704((n+1)/#)]`
-/

namespace A339716.P14657313677919210213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339703 d * A339704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339716.P14657313677919210213

/-!
# A339717: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^2.

The programs for A339717, there is no canonical definition to state claims against.
-/

/-! ## A339717.P4074430565959397361

`∑{d}[n+1, A045778(#)*A339718((n+1)/#)]`
-/

namespace A339717.P4074430565959397361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P4074430565959397361

/-! ## A339717.P9361067115428968091

`∑{d}[n+1, A316441(#)*A316441((n+1)/#)]`
-/

namespace A339717.P9361067115428968091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A316441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P9361067115428968091

/-! ## A339717.P17887247530262871655

`∑{d}[n+1, A328706(#)*A339719((n+1)/#)]`
-/

namespace A339717.P17887247530262871655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P17887247530262871655

/-! ## A339717.P3571036920201363250

`∑{d}[n+1, A339335(#)*A339720((n+1)/#)]`
-/

namespace A339717.P3571036920201363250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P3571036920201363250

/-! ## A339717.P9012136407558242385

`∑{d}[n+1, A339336(#)*A339721((n+1)/#)]`
-/

namespace A339717.P9012136407558242385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P9012136407558242385

/-! ## A339717.P17973975264762460637

`∑{d}[n+1, A339337(#)*A339722((n+1)/#)]`
-/

namespace A339717.P17973975264762460637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339337 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P17973975264762460637

/-! ## A339717.P6369512006266347126

`∑{d}[n+1, A339339(#)*A339735((n+1)/#)]`
-/

namespace A339717.P6369512006266347126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339339 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P6369512006266347126

/-! ## A339717.P14887809607486502263

`∑{d}[n+1, A339338(#)*A339734((n+1)/#)]`
-/

namespace A339717.P14887809607486502263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339338 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339717.P14887809607486502263

/-!
# A339718: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^3.

The programs for A339718, there is no canonical definition to state claims against.
-/

/-! ## A339718.P9604349571861246816

`∑{d}[n+1, A339335(#)*A339721((n+1)/#)]`
-/

namespace A339718.P9604349571861246816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339718.P9604349571861246816

/-! ## A339718.P8792958546469833356

`∑{d}[n+1, A339336(#)*A339722((n+1)/#)]`
-/

namespace A339718.P8792958546469833356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339718.P8792958546469833356

/-! ## A339718.P9801073747647427718

`∑{d}[n+1, A339338(#)*A339735((n+1)/#)]`
-/

namespace A339718.P9801073747647427718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339338 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339718.P9801073747647427718

/-! ## A339718.P11297711092366454417

`∑{d}[n+1, A045778(#)*A339719((n+1)/#)]`
-/

namespace A339718.P11297711092366454417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339718.P11297711092366454417

/-! ## A339718.P11087944205962989060

`∑{d}[n+1, A328706(#)*A339720((n+1)/#)]`
-/

namespace A339718.P11087944205962989060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339718.P11087944205962989060

/-! ## A339718.P10168344638092386854

`∑{d}[n+1, A316441(#)*A339717((n+1)/#)]`
-/

namespace A339718.P10168344638092386854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339718.P10168344638092386854

/-! ## A339718.P11229478480873755676

`∑{d}[n+1, A339337(#)*A339734((n+1)/#)]`
-/

namespace A339718.P11229478480873755676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339337 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339718.P11229478480873755676

/-!
# A339719: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^4.

The programs for A339719, there is no canonical definition to state claims against.
-/

/-! ## A339719.P6323945276528115285

`∑{d}[n+1, A316441(#)*A339718((n+1)/#)]`
-/

namespace A339719.P6323945276528115285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339719.P6323945276528115285

/-! ## A339719.P4842963316684843327

`∑{d}[n+1, A328706(#)*A339721((n+1)/#)]`
-/

namespace A339719.P4842963316684843327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339719.P4842963316684843327

/-! ## A339719.P15068052054895246917

`∑{d}[n+1, A339335(#)*A339722((n+1)/#)]`
-/

namespace A339719.P15068052054895246917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339719.P15068052054895246917

/-! ## A339719.P5639225556200555946

`∑{d}[n+1, A339337(#)*A339735((n+1)/#)]`
-/

namespace A339719.P5639225556200555946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339337 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339719.P5639225556200555946

/-! ## A339719.P6646897320985059120

`∑{d}[n+1, A045778(#)*A339720((n+1)/#)]`
-/

namespace A339719.P6646897320985059120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339719.P6646897320985059120

/-! ## A339719.P4135842163200906209

`∑{d}[n+1, A339717(#)*A339717((n+1)/#)]`
-/

namespace A339719.P4135842163200906209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339717 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339719.P4135842163200906209

/-! ## A339719.P6816044361951287714

`∑{d}[n+1, A339336(#)*A339734((n+1)/#)]`
-/

namespace A339719.P6816044361951287714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339719.P6816044361951287714

/-!
# A339720: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^5.

The programs for A339720, there is no canonical definition to state claims against.
-/

/-! ## A339720.P15676181880662424375

`∑{d}[n+1, A045778(#)*A339721((n+1)/#)]`
-/

namespace A339720.P15676181880662424375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339720.P15676181880662424375

/-! ## A339720.P5257715184807020596

`∑{d}[n+1, A316441(#)*A339719((n+1)/#)]`
-/

namespace A339720.P5257715184807020596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339720.P5257715184807020596

/-! ## A339720.P7333293935120172783

`∑{d}[n+1, A328706(#)*A339722((n+1)/#)]`
-/

namespace A339720.P7333293935120172783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339720.P7333293935120172783

/-! ## A339720.P1665640298864033970

`∑{d}[n+1, A339336(#)*A339735((n+1)/#)]`
-/

namespace A339720.P1665640298864033970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339720.P1665640298864033970

/-! ## A339720.P5990205143391385496

`∑{d}[n+1, A339717(#)*A339718((n+1)/#)]`
-/

namespace A339720.P5990205143391385496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339717 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339720.P5990205143391385496

/-! ## A339720.P10944159810189750305

`∑{d}[n+1, A339335(#)*A339734((n+1)/#)]`
-/

namespace A339720.P10944159810189750305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339720.P10944159810189750305

/-!
# A339721: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^6.

The programs for A339721, there is no canonical definition to state claims against.
-/

/-! ## A339721.P16551194382272667150

`∑{d}[n+1, A045778(#)*A339722((n+1)/#)]`
-/

namespace A339721.P16551194382272667150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339721.P16551194382272667150

/-! ## A339721.P17624000333549587840

`∑{d}[n+1, A339718(#)*A339718((n+1)/#)]`
-/

namespace A339721.P17624000333549587840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339718 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339721.P17624000333549587840

/-! ## A339721.P5027098094445151583

`∑{d}[n+1, A339335(#)*A339735((n+1)/#)]`
-/

namespace A339721.P5027098094445151583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339335 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339721.P5027098094445151583

/-! ## A339721.P4978034437689046328

`∑{d}[n+1, A316441(#)*A339720((n+1)/#)]`
-/

namespace A339721.P4978034437689046328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339721.P4978034437689046328

/-! ## A339721.P5917426363111969376

`∑{d}[n+1, A339717(#)*A339719((n+1)/#)]`
-/

namespace A339721.P5917426363111969376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339717 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339721.P5917426363111969376

/-! ## A339721.P2445923923765689967

`∑{d}[n+1, A328706(#)*A339734((n+1)/#)]`
-/

namespace A339721.P2445923923765689967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339721.P2445923923765689967

/-!
# A339722: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^7.

The programs for A339722, there is no canonical definition to state claims against.
-/

/-! ## A339722.P16997734750813511103

`∑{d}[n+1, A316441(#)*A339721((n+1)/#)]`
-/

namespace A339722.P16997734750813511103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339722.P16997734750813511103

/-! ## A339722.P14106288504956474053

`∑{d}[n+1, A328706(#)*A339735((n+1)/#)]`
-/

namespace A339722.P14106288504956474053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339722.P14106288504956474053

/-! ## A339722.P18119005133871260894

`∑{d}[n+1, A339718(#)*A339719((n+1)/#)]`
-/

namespace A339722.P18119005133871260894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339718 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339722.P18119005133871260894

/-! ## A339722.P5494972821773617408

`∑{d}[n+1, A339717(#)*A339720((n+1)/#)]`
-/

namespace A339722.P5494972821773617408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339717 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339722.P5494972821773617408

/-! ## A339722.P6973024693834403569

`∑{d}[n+1, A045778(#)*A339734((n+1)/#)]`
-/

namespace A339722.P6973024693834403569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339722.P6973024693834403569

/-!
# A339724: Odd composite integers m such that A000032(3*m-J(m,5)) == 3*J(m,5) (mod m), where J(m,5) is the Jacobi symbol.

The programs for A339724, there is no canonical definition to state claims against.
-/

/-! ## A339724.P6326372504692187872

`A340235(n+1)-A340221(A000664(n+2))`
-/

namespace A339724.P6326372504692187872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340235 (n + 1) - A340221 (A000664 (n + 2)).toNat

end

end A339724.P6326372504692187872

/-!
# A339728: Odd composite integers m such that A005248(3*m-J(m,5)) == 7 (mod m), where J(m,5) is the Jacobi symbol.

The programs for A339728, there is no canonical definition to state claims against.
-/

/-! ## A339728.P16078575992770619702

`A208135(A208125(n+1)+A014681(n))`
-/

namespace A339728.P16078575992770619702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208135 (A208125 (n + 1) + A014681 n).toNat

end

end A339728.P16078575992770619702

/-!
# A339729: Odd composite integers m such that A003501(3*m-J(m,21)) == 23 (mod m) and gcd(m,21)=1, where J(m,21) is the Jacobi symbol.

The programs for A339729, there is no canonical definition to state claims against.
-/

/-! ## A339729.P9662452306479419253

`A338906(A020658(3*n+5)+A006899(n+1))`
-/

namespace A339729.P9662452306479419253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338906 (A020658 (3 * n + 5) + A006899 (n + 1)).toNat

end

end A339729.P9662452306479419253

/-! ## A339729.P4673280789203456431

`∩[A028879(n+1), A366530(n+1)]`
-/

namespace A339729.P4673280789203456431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339729.P4673280789203456431

/-!
# A339731: Let G be the undirected graph with nodes {g_k, k > 0} such that for any k > 0, g_k is connected to g_{k+1} and g_{A064413(k)} is connected to g_{A064413(k+1)}; a(n) is the distance between g_1 and g_n.

The programs for A339731, there is no canonical definition to state claims against.
-/

/-! ## A339731.P16259740735292774101

`A056239(A350748(n+1))%A349179(n+1)`
-/

namespace A339731.P16259740735292774101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A350748 (n + 1)).toNat) (A349179 (n + 1))

end

end A339731.P16259740735292774101

/-! ## A339731.P16823607472476244111

`A225541(A253566(n+1)*A310439(n))`
-/

namespace A339731.P16823607472476244111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A253566 (n + 1) * A310439 n).toNat

end

end A339731.P16823607472476244111

/-! ## A339731.P3681271823741011696

`A384480(A298015(n)-A234337(n+1))`
-/

namespace A339731.P3681271823741011696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384480 (A298015 n - A234337 (n + 1)).toNat

end

end A339731.P3681271823741011696

/-!
# A339733: Square array T(n, k) read by antidiagonals, n > 0 and k > 0; let G be the undirected graph with nodes {g_k, k > 0} such that for any k > 0, g_k is connected to g_{k+1} and g_{A064413(k)} is connected to g_{A064413(k+1)}; T(n, k) is the distance between g_n and g_k.

The programs for A339733, there is no canonical definition to state claims against.
-/

/-! ## A339733.P7324146409890827557

`A226324(n+1)-A054908(A299905(n))`
-/

namespace A339733.P7324146409890827557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226324 (n + 1) - A054908 (A299905 n).toNat

end

end A339733.P7324146409890827557

/-! ## A339733.P2280928216663502378

`gcd(A054908(A217874(n)), A226324(n+1))`
-/

namespace A339733.P2280928216663502378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054908 (A217874 n).toNat) (A226324 (n + 1))

end

end A339733.P2280928216663502378

/-! ## A339733.P17473953939277264035

`A000720(A204143(n+1)%A167983(n+3))`
-/

namespace A339733.P17473953939277264035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A204143 (n + 1)) (A167983 (n + 3))).toNat

end

end A339733.P17473953939277264035

/-!
# A339734: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^8.

The programs for A339734, there is no canonical definition to state claims against.
-/

/-! ## A339734.P16381355966154892597

`∑{d}[n+1, A045778(#)*A339735((n+1)/#)]`
-/

namespace A339734.P16381355966154892597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A339735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339734.P16381355966154892597

/-! ## A339734.P6487078294711130278

`∑{d}[n+1, A316441(#)*A339722((n+1)/#)]`
-/

namespace A339734.P6487078294711130278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339734.P6487078294711130278

/-! ## A339734.P557547034805331709

`∑{d}[n+1, A339717(#)*A339721((n+1)/#)]`
-/

namespace A339734.P557547034805331709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339717 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339734.P557547034805331709

/-! ## A339734.P9849557413736002109

`∑{d}[n+1, A339718(#)*A339720((n+1)/#)]`
-/

namespace A339734.P9849557413736002109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339718 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339734.P9849557413736002109

/-! ## A339734.P9806373059943439784

`∑{d}[n+1, A339719(#)*A339719((n+1)/#)]`
-/

namespace A339734.P9806373059943439784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339719 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339734.P9806373059943439784

/-!
# A339735: Dirichlet g.f.: Product_{k>=2} 1 / (1 + k^(-s))^9.

The programs for A339735, there is no canonical definition to state claims against.
-/

/-! ## A339735.P12748416526424526299

`∑{d}[n+1, A339718(#)*A339721((n+1)/#)]`
-/

namespace A339735.P12748416526424526299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339718 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339735.P12748416526424526299

/-! ## A339735.P4068640943079095869

`∑{d}[n+1, A339719(#)*A339720((n+1)/#)]`
-/

namespace A339735.P4068640943079095869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339719 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339735.P4068640943079095869

/-! ## A339735.P10758602614251765984

`∑{d}[n+1, A339717(#)*A339722((n+1)/#)]`
-/

namespace A339735.P10758602614251765984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339717 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339735.P10758602614251765984

/-! ## A339735.P13862139770448240863

`∑{d}[n+1, A316441(#)*A339734((n+1)/#)]`
-/

namespace A339735.P13862139770448240863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339734 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339735.P13862139770448240863

/-!
# A339736: Numbers which, in every base B, either have a digit 0, do not have a digit B-1, or only have one digit.

The programs for A339736, there is no canonical definition to state claims against.
-/

/-! ## A339736.P9538879595832275516

`record[A285699(n+1)%A297307(n+5)]`
-/

namespace A339736.P9538879595832275516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285699 (n + 1)) (A297307 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339736.P9538879595832275516

/-! ## A339736.P8059119730128879753

`record[A000010(A109613(n)-A194801(n))]`
-/

namespace A339736.P8059119730128879753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A109613 n - A194801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339736.P8059119730128879753

/-! ## A339736.P18417318905270995143

`eq[A001222(n+1), A224697(A004152(n))]`
-/

namespace A339736.P18417318905270995143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A004152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339736.P18417318905270995143

/-! ## A339736.P15628357247324359590

`eq[A007318(A004152(n)), A244424(n+1)]`
-/

namespace A339736.P15628357247324359590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004152 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339736.P15628357247324359590

/-! ## A339736.P9302963933022553392

`eq[A007318(A004152(n)), A301829(n+1)]`
-/

namespace A339736.P9302963933022553392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004152 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A339736.P9302963933022553392

/-!
# A339737: Triangle read by rows where T(n,k) is the number of integer partitions of n with greatest gap k.

The programs for A339737, there is no canonical definition to state claims against.
-/

/-! ## A339737.P11977711936577875232

`A364916(n)^A331039(A331161(n))`
-/

namespace A339737.P11977711936577875232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364916 n : ℚ) ^ (A331039 (A331161 n).toNat : ℤ)

end

end A339737.P11977711936577875232

/-! ## A339737.P4920664152322604502

`gcd(A033665(A080061(n)), A364916(n))`
-/

namespace A339737.P4920664152322604502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033665 (A080061 n).toNat) (A364916 n)

end

end A339737.P4920664152322604502

/-! ## A339737.P736708299929662929

`A364916(n)^A324564(A008277(n+1))`
-/

namespace A339737.P736708299929662929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364916 n : ℚ) ^ (A324564 (A008277 (n + 1)).toNat : ℤ)

end

end A339737.P736708299929662929

/-! ## A339737.P6634251660142744575

`A349149(A138530(n+1)%A293854(n))`
-/

namespace A339737.P6634251660142744575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349149 (Int.tmod (A138530 (n + 1)) (A293854 n)).toNat

end

end A339737.P6634251660142744575

/-! ## A339737.P3445689652192253379

`A364916(n)^A071858(A007560(n+1))`
-/

namespace A339737.P3445689652192253379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364916 n : ℚ) ^ (A071858 (A007560 (n + 1)).toNat : ℤ)

end

end A339737.P3445689652192253379

/-!
# A339739: a(n) gives the number of squares in the n-th iteration of the Harter-Heighway dragon.

The programs for A339739, there is no canonical definition to state claims against.
-/

/-! ## A339739.P7770843236072245647

`A059995(A106805(n)+A073357(n))`
-/

namespace A339739.P7770843236072245647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A106805 n + A073357 n).toNat

end

end A339739.P7770843236072245647

/-! ## A339739.P14260096366812307918

`A059995(A073357(n)-(1-A106805(n)))`
-/

namespace A339739.P14260096366812307918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A073357 n - (1 - A106805 n)).toNat

end

end A339739.P14260096366812307918

/-! ## A339739.P66317798639614497

`floor(2*A008620(A000045(2*(n+2)))/22)`
-/

namespace A339739.P66317798639614497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A008620 (A000045 (2 * (n + 2))).toNat : ℚ) / 22)⌋

end

end A339739.P66317798639614497

/-! ## A339739.P7980833214328821054

`A054900(A018910(n)*A050762(n+1))`
-/

namespace A339739.P7980833214328821054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A018910 n * A050762 (n + 1)).toNat

end

end A339739.P7980833214328821054

/-!
# A339740: Non-products of distinct primes or squarefree semiprimes.

The programs for A339740, there is no canonical definition to state claims against.
-/

/-! ## A339740.P17083767191120733669

`A212164(n+1)%746`
-/

namespace A339740.P17083767191120733669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212164 (n + 1)) 746

end

end A339740.P17083767191120733669

/-! ## A339740.P6945038085129331975

`A212164(char[(n+10)²]+n+1)`
-/

namespace A339740.P6945038085129331975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 10) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 ((if ∃ j, f1 j = n then 1 else 0) + n + 1)

end

end A339740.P6945038085129331975

/-!
# A339741: Products of distinct primes or squarefree semiprimes.

The programs for A339741, there is no canonical definition to state claims against.
-/

/-! ## A339741.P4501619872813765342

`A212167(n+1)%85`
-/

namespace A339741.P4501619872813765342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212167 (n + 1)) 85

end

end A339741.P4501619872813765342

/-! ## A339741.P7404970818103996131

`lt[0, A053864(n+1)]+1`
-/

namespace A339741.P7404970818103996131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339741.P7404970818103996131

/-! ## A339741.P7313942649883646993

`record[gcd(n+1, A078599(n+1))]`
-/

namespace A339741.P7313942649883646993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A078599 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339741.P7313942649883646993

/-! ## A339741.P475105545926500319

`∪[∑[n+1], A179983(n+1)]`
-/

namespace A339741.P475105545926500319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A339741.P475105545926500319

/-! ## A339741.P6806919212568356111

`∪[∑[n+1], A317090(n+1)]`
-/

namespace A339741.P6806919212568356111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A339741.P6806919212568356111

/-! ## A339741.P115240195865744523

`A007948(A212167(n+1))`
-/

namespace A339741.P115240195865744523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A212167 (n + 1)).toNat

end

end A339741.P115240195865744523

/-! ## A339741.P6749678173332862171

`A212167(A118759(n+1))`
-/

namespace A339741.P6749678173332862171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (A118759 (n + 1)).toNat

end

end A339741.P6749678173332862171

/-! ## A339741.P7300177465433317232

`A212167(A304042(n)+n)`
-/

namespace A339741.P7300177465433317232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (A304042 n + (n : ℤ)).toNat

end

end A339741.P7300177465433317232

/-!
# A339742: Number of factorizations of n into distinct primes or squarefree semiprimes.

The programs for A339742, there is no canonical definition to state claims against.
-/

/-! ## A339742.P4852359826894730571

`∑{d}[n+1, A008966(#)*A339661((n+1)/#)]`
-/

namespace A339742.P4852359826894730571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A339661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339742.P4852359826894730571

/-! ## A339742.P4770027965417172470

`A339839((n+1)²/A007913(n+1))`
-/

namespace A339742.P4770027965417172470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339839 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A339742.P4770027965417172470

/-! ## A339742.P9699452673838180200

`A051162(A050326(n+1)%A046700(n+4))`
-/

namespace A339742.P9699452673838180200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Int.tmod (A050326 (n + 1)) (A046700 (n + 4))).toNat

end

end A339742.P9699452673838180200

/-! ## A339742.P15677811397403543545

`A056792(A050326(n+1))%A025518(n+1)`
-/

namespace A339742.P15677811397403543545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056792 (A050326 (n + 1)).toNat) (A025518 (n + 1))

end

end A339742.P15677811397403543545

/-! ## A339742.P2701584040729886801

`A081608(A050326(n+1))%A252157(3*n+4)`
-/

namespace A339742.P2701584040729886801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081608 (A050326 (n + 1)).toNat) (A252157 (3 * n + 4))

end

end A339742.P2701584040729886801

/-! ## A339742.P11564196115903686805

`A029931(A050326(n+1))%A006827(n+5)`
-/

namespace A339742.P11564196115903686805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029931 (A050326 (n + 1)).toNat) (A006827 (n + 5))

end

end A339742.P11564196115903686805

/-! ## A339742.P17213224564172176436

`A166711(A050326(n+1))%A287251(n+1)`
-/

namespace A339742.P17213224564172176436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166711 (A050326 (n + 1)).toNat) (A287251 (n + 1))

end

end A339742.P17213224564172176436

/-! ## A339742.P11733715782826397049

`A081608(A050326(n+1))%A065192(n+3)`
-/

namespace A339742.P11733715782826397049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081608 (A050326 (n + 1)).toNat) (A065192 (n + 3))

end

end A339742.P11733715782826397049

/-! ## A339742.P9527881614237665241

`A121928(A335452(n+1)+1-A318809(n+1))`
-/

namespace A339742.P9527881614237665241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121928 (A335452 (n + 1) + (1 - A318809 (n + 1))).toNat

end

end A339742.P9527881614237665241

/-! ## A339742.P12255231116594260923

`A003056(2*(A335452(n+1)+1-A318809(n+1)))`
-/

namespace A339742.P12255231116594260923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * (A335452 (n + 1) + (1 - A318809 (n + 1)))).toNat

end

end A339742.P12255231116594260923

/-!
# A339743: a(n) is the least k > 0 such that 1+k, 1+2*k, ..., 1+n*k are pairwise coprime.

The programs for A339743, there is no canonical definition to state claims against.
-/

/-! ## A339743.P14454979301981718737

`A278263(A371708(n+2))`
-/

namespace A339743.P14454979301981718737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (A371708 (n + 2)).toNat

end

end A339743.P14454979301981718737

/-! ## A339743.P2975801738754843744

`A307616(∑[or(1, n+1)])/A307616(n+1)`
-/

namespace A339743.P2975801738754843744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307616 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A307616 (n + 1) : ℚ)

end

end A339743.P2975801738754843744

/-! ## A339743.P5079332975663493936

`A046523(A289501(n)+A133924(n))`
-/

namespace A339743.P5079332975663493936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A289501 n + A133924 n).toNat

end

end A339743.P5079332975663493936

/-! ## A339743.P12335674826643268956

`A286557(A000032(n)*A000073(n))`
-/

namespace A339743.P12335674826643268956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (A000032 n * A000073 n).toNat

end

end A339743.P12335674826643268956

/-! ## A339743.P9006874618156892155

`A336158(A005578(n)*A290235(n))`
-/

namespace A339743.P9006874618156892155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A005578 n * A290235 n).toNat

end

end A339743.P9006874618156892155

/-!
# A339744: Numbers k such that rad(k)^2 < sigma(k), where rad(k) is the squarefree kernel of k (A007947) and sigma(k) is the sum of divisors of k (A000203).

The programs for A339744, the canonical program `A339744.P17340039082296367057` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339744 has offset 1).

The definition of A339744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339744.P17340039082296367057

`lt[A007947(n+1)², A000203(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339744

/-- `lt[A007947(n+1)², A000203(n+1)]+1` -/
def P17340039082296367057.Spec : Prop :=
  ∀ n, (P17340039082296367057.a n : ℤ) = A339744 (n + 1)

theorem P17340039082296367057.correct : P17340039082296367057.Spec := by
  intro n
  simp only [A339744, Nat.add_sub_cancel]

end A339744

/-! ## A339744.P13944016817951280457

`lt[∏{p}[n+1, #²], ∑{d}[n+1, #]]+1`
-/

namespace A339744.P13944016817951280457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A339744.P13944016817951280457

namespace A339744

/-- `lt[∏{p}[n+1, #²], ∑{d}[n+1, #]]+1` -/
def P13944016817951280457.Spec : Prop :=
  ∀ n, (P13944016817951280457.a n : ℤ) = A339744 (n + 1)

end A339744

/-! ## A339744.P2640724858933315791

`A020725(lt[∏{p}[n+1, #²], ∑{d}[n+1, #]])`
-/

namespace A339744.P2640724858933315791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A339744.P2640724858933315791

namespace A339744

/-- `A020725(lt[∏{p}[n+1, #²], ∑{d}[n+1, #]])` -/
def P2640724858933315791.Spec : Prop :=
  ∀ n, P2640724858933315791.a n = A339744 (n + 1)

end A339744

/-! ## A339744.P16564208307739729594

`A065475(lt[∏{p}[n+1, #²], ∑{d}[n+1, #]])`
-/

namespace A339744.P16564208307739729594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A339744.P16564208307739729594

namespace A339744

/-- `A065475(lt[∏{p}[n+1, #²], ∑{d}[n+1, #]])` -/
def P16564208307739729594.Spec : Prop :=
  ∀ n, P16564208307739729594.a n = A339744 (n + 1)

end A339744

/-! ## A339744.P17133013497813788841

`lt[A078615(A028310(n)), A039653(n)]`
-/

namespace A339744.P17133013497813788841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339744.P17133013497813788841

namespace A339744

/-- `lt[A078615(A028310(n)), A039653(n)]` -/
def P17133013497813788841.Spec : Prop :=
  ∀ n, (P17133013497813788841.a n : ℤ) = A339744 (n + 1)

end A339744

/-! ## A339744.P2845154878098863643

`lt[A078615(A233583(n+1)), A039653(n)]`
-/

namespace A339744.P2845154878098863643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A339744.P2845154878098863643

namespace A339744

/-- `lt[A078615(A233583(n+1)), A039653(n)]` -/
def P2845154878098863643.Spec : Prop :=
  ∀ n, (P2845154878098863643.a n : ℤ) = A339744 (n + 1)

end A339744

/-!
# A339746: Positive integers of the form 2^i*3^j*k, gcd(k,6)=1, and i == j (mod 3).

The programs for A339746, the canonical program `A339746.P14149983824418019061` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339746 has offset 1).

The definition of A339746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339746.P14149983824418019061

`eq[1, A372573(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A339746

/-- `eq[1, A372573(n+1)]+1` -/
def P14149983824418019061.Spec : Prop :=
  ∀ n, (P14149983824418019061.a n : ℤ) = A339746 (n + 1)

theorem P14149983824418019061.correct : P14149983824418019061.Spec := by
  intro n
  simp only [A339746, Nat.add_sub_cancel]

end A339746

/-! ## A339746.P8653364282570147297

`eq[1, A373153(2*(n+1))]+1`
-/

namespace A339746.P8653364282570147297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373153 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339746.P8653364282570147297

namespace A339746

/-- `eq[1, A373153(2*(n+1))]+1` -/
def P8653364282570147297.Spec : Prop :=
  ∀ n, (P8653364282570147297.a n : ℤ) = A339746 (n + 1)

end A339746

/-! ## A339746.P16066415061737878434

`record[A000027(n+1)*A372573(n+1)]`
-/

namespace A339746.P16066415061737878434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A372573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339746.P16066415061737878434

namespace A339746

/-- `record[A000027(n+1)*A372573(n+1)]` -/
def P16066415061737878434.Spec : Prop :=
  ∀ n, P16066415061737878434.a n = A339746 (n + 1)

end A339746

/-! ## A339746.P9752534575630741368

`eq[A373260(n+1), A373263(n+1)]+1`
-/

namespace A339746.P9752534575630741368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339746.P9752534575630741368

namespace A339746

/-- `eq[A373260(n+1), A373263(n+1)]+1` -/
def P9752534575630741368.Spec : Prop :=
  ∀ n, (P9752534575630741368.a n : ℤ) = A339746 (n + 1)

end A339746

/-! ## A339746.P15758203630284623672

`lt[A372576(n+1)%3, 1]+1`
-/

namespace A339746.P15758203630284623672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372576 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A339746.P15758203630284623672

namespace A339746

/-- `lt[A372576(n+1)%3, 1]+1` -/
def P15758203630284623672.Spec : Prop :=
  ∀ n, (P15758203630284623672.a n : ℤ) = A339746 (n + 1)

end A339746

/-! ## A339746.P5602431097567473083

`filter[n+1, A372573(#)]`
-/

namespace A339746.P5602431097567473083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j) = 1) n)

end

end A339746.P5602431097567473083

namespace A339746

/-- `filter[n+1, A372573(#)]` -/
def P5602431097567473083.Spec : Prop :=
  ∀ n, (P5602431097567473083.a n : ℤ) = A339746 (n + 1)

end A339746

/-! ## A339746.P7842955277313733049

`eq[0, A332813(A065331(n+1))]+1`
-/

namespace A339746.P7842955277313733049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A065331 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339746.P7842955277313733049

namespace A339746

/-- `eq[0, A332813(A065331(n+1))]+1` -/
def P7842955277313733049.Spec : Prop :=
  ∀ n, (P7842955277313733049.a n : ℤ) = A339746 (n + 1)

end A339746

/-! ## A339746.P7563123645757795074

`eq[A048798(n+1), A048798(A064614(n+1))]+1`
-/

namespace A339746.P7563123645757795074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A064614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339746.P7563123645757795074

namespace A339746

/-- `eq[A048798(n+1), A048798(A064614(n+1))]+1` -/
def P7563123645757795074.Spec : Prop :=
  ∀ n, (P7563123645757795074.a n : ℤ) = A339746 (n + 1)

end A339746

/-! ## A339746.P5739129164857470535

`lt[1, gcd(9, A276085(n+1))]+1`
-/

namespace A339746.P5739129164857470535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A276085 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339746.P5739129164857470535

namespace A339746

/-- `lt[1, gcd(9, A276085(n+1))]+1` -/
def P5739129164857470535.Spec : Prop :=
  ∀ n, (P5739129164857470535.a n : ℤ) = A339746 (n + 1)

end A339746

/-!
# A339747: a(n) = (5^(valuation(n, 5) + 1) - 1) / 4.

The programs for A339747, the canonical program `A339747.P1072634497242774213` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339747 has offset 1).

The definition of A339747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339747.P1072634497242774213

`(5^(val(n+1, 5)+1)-1)/4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339747

/-- `(5^(val(n+1, 5)+1)-1)/4` -/
def P1072634497242774213.Spec : Prop :=
  ∀ n, P1072634497242774213.a n = (A339747 (n + 1) : ℚ)

end A339747

/-! ## A339747.P3153647485329180199

`∑{d}[5^val(n+1, 5), #]`
-/

namespace A339747.P3153647485329180199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A339747.P3153647485329180199

namespace A339747

/-- `∑{d}[5^val(n+1, 5), #]` -/
def P3153647485329180199.Spec : Prop :=
  ∀ n, (P3153647485329180199.a n : ℤ) = A339747 (n + 1)

end A339747

/-! ## A339747.P6231094323281065904

`A000593(A132741(n+1))`
-/

namespace A339747.P6231094323281065904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A132741 (n + 1)).toNat

end

end A339747.P6231094323281065904

namespace A339747

/-- `A000593(A132741(n+1))` -/
def P6231094323281065904.Spec : Prop :=
  ∀ n, P6231094323281065904.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P996753983919428826

`A000593(A370181(n+1))`
-/

namespace A339747.P996753983919428826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A370181 (n + 1)).toNat

end

end A339747.P996753983919428826

namespace A339747

/-- `A000593(A370181(n+1))` -/
def P996753983919428826.Spec : Prop :=
  ∀ n, P996753983919428826.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P3644994927662084694

`A355584(A065330(n+1))`
-/

namespace A339747.P3644994927662084694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (A065330 (n + 1)).toNat

end

end A339747.P3644994927662084694

namespace A339747

/-- `A355584(A065330(n+1))` -/
def P3644994927662084694.Spec : Prop :=
  ∀ n, P3644994927662084694.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P8164167635451499752

`A355584(A170818(n+1))`
-/

namespace A339747.P8164167635451499752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (A170818 (n + 1)).toNat

end

end A339747.P8164167635451499752

namespace A339747

/-- `A355584(A170818(n+1))` -/
def P8164167635451499752.Spec : Prop :=
  ∀ n, P8164167635451499752.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P17538201648281558512

`A186099(A355582(n+1))`
-/

namespace A339747.P17538201648281558512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186099 (A355582 (n + 1)).toNat

end

end A339747.P17538201648281558512

namespace A339747

/-- `A186099(A355582(n+1))` -/
def P17538201648281558512.Spec : Prop :=
  ∀ n, P17538201648281558512.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P12889797401036359882

`A355584(A343431(n+1))`
-/

namespace A339747.P12889797401036359882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (A343431 (n + 1)).toNat

end

end A339747.P12889797401036359882

namespace A339747

/-- `A355584(A343431(n+1))` -/
def P12889797401036359882.Spec : Prop :=
  ∀ n, P12889797401036359882.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P16414718890536182810

`A324891(A392597(n+1))`
-/

namespace A339747.P16414718890536182810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324891 (A392597 (n + 1)).toNat

end

end A339747.P16414718890536182810

namespace A339747

/-- `A324891(A392597(n+1))` -/
def P16414718890536182810.Spec : Prop :=
  ∀ n, P16414718890536182810.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P9596402447566021187

`A324891(A392598(n+1))`
-/

namespace A339747.P9596402447566021187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324891 (A392598 (n + 1)).toNat

end

end A339747.P9596402447566021187

namespace A339747

/-- `A324891(A392598(n+1))` -/
def P9596402447566021187.Spec : Prop :=
  ∀ n, P9596402447566021187.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P11126854922994274869

`A000203(n+1)/A116073(n+1)`
-/

namespace A339747.P11126854922994274869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A116073 (n + 1) : ℚ)

end

end A339747.P11126854922994274869

namespace A339747

/-- `A000203(n+1)/A116073(n+1)` -/
def P11126854922994274869.Spec : Prop :=
  ∀ n, P11126854922994274869.a n = (A339747 (n + 1) : ℚ)

end A339747

/-! ## A339747.P2953779879325571470

`A000203((n+1)/A132739(n+1))`
-/

namespace A339747.P2953779879325571470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A132739 (n + 1) : ℚ))).toNat

end

end A339747.P2953779879325571470

namespace A339747

/-- `A000203((n+1)/A132739(n+1))` -/
def P2953779879325571470.Spec : Prop :=
  ∀ n, P2953779879325571470.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P11367281048599084183

`A355584((n+1)/A065331(n+1))`
-/

namespace A339747.P11367281048599084183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A339747.P11367281048599084183

namespace A339747

/-- `A355584((n+1)/A065331(n+1))` -/
def P11367281048599084183.Spec : Prop :=
  ∀ n, P11367281048599084183.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P15901500547119347093

`A355584(n+1)/A072079(n+1)`
-/

namespace A339747.P15901500547119347093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355584 (n + 1) : ℚ) / (A072079 (n + 1) : ℚ)

end

end A339747.P15901500547119347093

namespace A339747

/-- `A355584(n+1)/A072079(n+1)` -/
def P15901500547119347093.Spec : Prop :=
  ∀ n, P15901500547119347093.a n = (A339747 (n + 1) : ℚ)

end A339747

/-! ## A339747.P441286712559019087

`A359100(n+1)/A132739(n+1)`
-/

namespace A339747.P441286712559019087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359100 (n + 1) : ℚ) / (A132739 (n + 1) : ℚ)

end

end A339747.P441286712559019087

namespace A339747

/-- `A359100(n+1)/A132739(n+1)` -/
def P441286712559019087.Spec : Prop :=
  ∀ n, P441286712559019087.a n = (A339747 (n + 1) : ℚ)

end A339747

/-! ## A339747.P667262124936510401

`∑{d}[A053723(n)/A109091(n+1), #]`
-/

namespace A339747.P667262124936510401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053723 n : ℚ) / (A109091 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A339747.P667262124936510401

namespace A339747

/-- `∑{d}[A053723(n)/A109091(n+1), #]` -/
def P667262124936510401.Spec : Prop :=
  ∀ n, (P667262124936510401.a n : ℤ) = A339747 (n + 1)

end A339747

/-! ## A339747.P1397622454340162589

`∑{d}[n+1, A023900(#)*A364223((n+1)/#)]`
-/

namespace A339747.P1397622454340162589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A339747.P1397622454340162589

namespace A339747

/-- `∑{d}[n+1, A023900(#)*A364223((n+1)/#)]` -/
def P1397622454340162589.Spec : Prop :=
  ∀ n, P1397622454340162589.a n = A339747 (n + 1)

end A339747

/-! ## A339747.P1869376445124441691

`A000593(n+1)/A000593(A132739(n+1))`
-/

namespace A339747.P1869376445124441691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) / (A000593 (A132739 (n + 1)).toNat : ℚ)

end

end A339747.P1869376445124441691

namespace A339747

/-- `A000593(n+1)/A000593(A132739(n+1))` -/
def P1869376445124441691.Spec : Prop :=
  ∀ n, P1869376445124441691.a n = (A339747 (n + 1) : ℚ)

end A339747

/-! ## A339747.P2687189383555827674

`A046897(n+1)/A116073(A259445(n+1))`
-/

namespace A339747.P2687189383555827674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046897 (n + 1) : ℚ) / (A116073 (A259445 (n + 1)).toNat : ℚ)

end

end A339747.P2687189383555827674

namespace A339747

/-- `A046897(n+1)/A116073(A259445(n+1))` -/
def P2687189383555827674.Spec : Prop :=
  ∀ n, P2687189383555827674.a n = (A339747 (n + 1) : ℚ)

end A339747

/-! ## A339747.P9639269008849639292

`A355584(n+1)/A355584(A072438(n+1))`
-/

namespace A339747.P9639269008849639292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355584 (n + 1) : ℚ) / (A355584 (A072438 (n + 1)).toNat : ℚ)

end

end A339747.P9639269008849639292

namespace A339747

/-- `A355584(n+1)/A355584(A072438(n+1))` -/
def P9639269008849639292.Spec : Prop :=
  ∀ n, P9639269008849639292.a n = (A339747 (n + 1) : ℚ)

end A339747

/-!
# A339748: a(n) = (6^(valuation(n, 6) + 1) - 1) / 5.

The programs for A339748, the canonical program `A339748.P7452929929826280564` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339748 has offset 1).

The definition of A339748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339748.P7452929929826280564

`(6^(val(n+1, 6)+1)-1)/5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339748

/-- `(6^(val(n+1, 6)+1)-1)/5` -/
def P7452929929826280564.Spec : Prop :=
  ∀ n, P7452929929826280564.a n = (A339748 (n + 1) : ℚ)

end A339748

/-! ## A339748.P161496379504938423

`A047253(6^val(n+1, 6))`
-/

namespace A339748.P161496379504938423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (6 ^ SequenceMachineLib.valuation (n + 1) 6)

end

end A339748.P161496379504938423

namespace A339748

/-- `A047253(6^val(n+1, 6))` -/
def P161496379504938423.Spec : Prop :=
  ∀ n, P161496379504938423.a n = A339748 (n + 1)

end A339748

/-! ## A339748.P9478516817090495030

`A047253((n+1)/A244414(n+1))`
-/

namespace A339748.P9478516817090495030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A244414 (n + 1) : ℚ))).toNat

end

end A339748.P9478516817090495030

namespace A339748

/-- `A047253((n+1)/A244414(n+1))` -/
def P9478516817090495030.Spec : Prop :=
  ∀ n, P9478516817090495030.a n = A339748 (n + 1)

end A339748

/-! ## A339748.P1330337942178111318

`A373397(n+1)/A244414(n+1)`
-/

namespace A339748.P1330337942178111318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373397 (n + 1) : ℚ) / (A244414 (n + 1) : ℚ)

end

end A339748.P1330337942178111318

namespace A339748

/-- `A373397(n+1)/A244414(n+1)` -/
def P1330337942178111318.Spec : Prop :=
  ∀ n, P1330337942178111318.a n = (A339748 (n + 1) : ℚ)

end A339748

/-! ## A339748.P7979296839224307889

`A234959(n+1)+A054895(A234959(n+1))`
-/

namespace A339748.P7979296839224307889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (n + 1) + A054895 (A234959 (n + 1)).toNat

end

end A339748.P7979296839224307889

namespace A339748

/-- `A234959(n+1)+A054895(A234959(n+1))` -/
def P7979296839224307889.Spec : Prop :=
  ∀ n, P7979296839224307889.a n = A339748 (n + 1)

end A339748

/-! ## A339748.P6326963880144090601

`A054895(6*6^val(n+1, 6))`
-/

namespace A339748.P6326963880144090601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (6 * 6 ^ SequenceMachineLib.valuation (n + 1) 6)

end

end A339748.P6326963880144090601

namespace A339748

/-- `A054895(6*6^val(n+1, 6))` -/
def P6326963880144090601.Spec : Prop :=
  ∀ n, P6326963880144090601.a n = A339748 (n + 1)

end A339748

/-! ## A339748.P4757558618031521786

`A054895(6*A234959(n+1))`
-/

namespace A339748.P4757558618031521786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (6 * A234959 (n + 1)).toNat

end

end A339748.P4757558618031521786

namespace A339748

/-- `A054895(6*A234959(n+1))` -/
def P4757558618031521786.Spec : Prop :=
  ∀ n, P4757558618031521786.a n = A339748 (n + 1)

end A339748

/-! ## A339748.P190194784416802906

`A047253(Δ[A261831(2*(n+1))]^A122841(n+1))`
-/

namespace A339748.P190194784416802906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261831 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) ^ (A122841 (n + 1) : ℤ))).toNat

end

end A339748.P190194784416802906

namespace A339748

/-- `A047253(Δ[A261831(2*(n+1))]^A122841(n+1))` -/
def P190194784416802906.Spec : Prop :=
  ∀ n, P190194784416802906.a n = A339748 (n + 1)

end A339748

/-! ## A339748.P14115130119070560381

`A054895(A234959(A008588(n+1)))`
-/

namespace A339748.P14115130119070560381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (A234959 (A008588 (n + 1)).toNat).toNat

end

end A339748.P14115130119070560381

namespace A339748

/-- `A054895(A234959(A008588(n+1)))` -/
def P14115130119070560381.Spec : Prop :=
  ∀ n, P14115130119070560381.a n = A339748 (n + 1)

end A339748

/-!
# A339749: a(n) is the greatest k > 0 such that 1+n, 1+2*n, ..., 1+n*k are pairwise coprime.

The programs for A339749, there is no canonical definition to state claims against.
-/

/-! ## A339749.P16600873608889344550

`A135523(∑[A139608(A141325(n))])`
-/

namespace A339749.P16600873608889344550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 (A141325 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339749.P16600873608889344550

/-! ## A339749.P8158945983244597983

`A001511(A002998(2*n)+2)`
-/

namespace A339749.P8158945983244597983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002998 (2 * n) + 2).toNat

end

end A339749.P8158945983244597983

/-! ## A339749.P10405913261062948956

`A085058(A002998(2*n)/2)`
-/

namespace A339749.P10405913261062948956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (SequenceMachineLib.roundAway ((A002998 (2 * n) : ℚ) / 2)).toNat

end

end A339749.P10405913261062948956

/-! ## A339749.P4121421780270010850

`A014499(A049479(n+2)-A309873(n+1))`
-/

namespace A339749.P4121421780270010850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A049479 (n + 2) - A309873 (n + 1)).toNat

end

end A339749.P4121421780270010850

/-! ## A339749.P12733049431101983345

`A339013(A024450(n+1)+A003215(n))`
-/

namespace A339749.P12733049431101983345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339013 (A024450 (n + 1) + A003215 n).toNat

end

end A339749.P12733049431101983345

/-!
# A339750: Number of (undirected) paths in the 2 X n king graph.

The programs for A339750, there is no canonical definition to state claims against.
-/

/-! ## A339750.P17776098915144623400

`A307026(∑[n]+2)`
-/

namespace A339750.P17776098915144623400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307026 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339750.P17776098915144623400

/-! ## A339750.P9077187287994159463

`record[A010054(n)*A307026(n+2)]`
-/

namespace A339750.P9077187287994159463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A307026 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339750.P9077187287994159463

/-! ## A339750.P16588270918579560848

`record[root(A307026(n+2), A157181(n))]`
-/

namespace A339750.P16588270918579560848
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A307026 (n + 2) : ℝ) ^ (1 / (A157181 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339750.P16588270918579560848

/-!
# A339751: Number of (undirected) paths in the 3 X n king graph.

The programs for A339751, there is no canonical definition to state claims against.
-/

/-! ## A339751.P16328970015584298216

`A307026(A048093(n+1)+4)`
-/

namespace A339751.P16328970015584298216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307026 (A048093 (n + 1) + 4).toNat

end

end A339751.P16328970015584298216

/-! ## A339751.P10049264327635928229

`record[gcd(A307025(n+2), A307026(n+4))]`
-/

namespace A339751.P10049264327635928229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307025 (n + 2)) (A307026 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339751.P10049264327635928229

/-!
# A339754: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k symmetric vertices (n >= 1, 1 <= k <= n).

The programs for A339754, there is no canonical definition to state claims against.
-/

/-! ## A339754.P11029264482166402368

`A007828(A137339(n+1)+1)`
-/

namespace A339754.P11029264482166402368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (A137339 (n + 1) + 1).toNat

end

end A339754.P11029264482166402368

/-! ## A339754.P16834341769392630877

`A257564(A099884(n)*A257563(n))`
-/

namespace A339754.P16834341769392630877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A099884 n * A257563 n).toNat

end

end A339754.P16834341769392630877

/-! ## A339754.P2372290387688612647

`A329362(A174664(n)*A255982(n))`
-/

namespace A339754.P2372290387688612647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A174664 n * A255982 n).toNat

end

end A339754.P2372290387688612647

/-! ## A339754.P10025098771050047060

`A234022(A002513(n+1)*A245111(n))`
-/

namespace A339754.P10025098771050047060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (A002513 (n + 1) * A245111 n).toNat

end

end A339754.P10025098771050047060

/-! ## A339754.P13018403097774971671

`A000120(A268335(n+1)*A291451(n))`
-/

namespace A339754.P13018403097774971671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A268335 (n + 1) * A291451 n).toNat

end

end A339754.P13018403097774971671

/-!
# A339755: a(1) = 1; a(n+1) = 1 + Sum_{d|n} a(n/d) * a(d).

The programs for A339755, there is no canonical definition to state claims against.
-/

/-! ## A339755.P5014579825840626373

`A172481(n)+A103328(A000332(n))`
-/

namespace A339755.P5014579825840626373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n + A103328 (A000332 n).toNat

end

end A339755.P5014579825840626373

/-! ## A339755.P17632189089281140199

`A001462(A182522(n)*A297618(n+1))`
-/

namespace A339755.P17632189089281140199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A182522 n * A297618 (n + 1)).toNat

end

end A339755.P17632189089281140199

/-! ## A339755.P1500227874156674469

`∑[A238369(A026709(n))]`
-/

namespace A339755.P1500227874156674469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238369 (A026709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339755.P1500227874156674469

/-!
# A339758: a(n) is the least prime p such that p^(2*n+1) == 2*n+1 (mod 2^(2*n+1)).

The programs for A339758, there is no canonical definition to state claims against.
-/

/-! ## A339758.P15762052216267228903

`A172508(xor(A002828(n), A276429(2*(n+1))))`
-/

namespace A339758.P15762052216267228903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172508 (Int.xor (A002828 n) (A276429 (2 * (n + 1)))).toNat

end

end A339758.P15762052216267228903

/-!
# A339759: Distinct values in A339743, in order of appearance.

The programs for A339759, there is no canonical definition to state claims against.
-/

/-! ## A339759.P12476304442829523351

`record[A339743(A133310(n))]`
-/

namespace A339759.P12476304442829523351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339759.P12476304442829523351

/-! ## A339759.P5505163150765882012

`record[A339743(A008611(n)+1)]`
-/

namespace A339759.P5505163150765882012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (A008611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339759.P5505163150765882012

/-! ## A339759.P12428404336147148915

`record[A339743(A027750(n+1))]`
-/

namespace A339759.P12428404336147148915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339759.P12428404336147148915

/-! ## A339759.P8048398715730000280

`record[A339743(A032742(n+1))]`
-/

namespace A339759.P8048398715730000280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339759.P8048398715730000280

/-! ## A339759.P15906671360330048287

`record[A339743(A064839(n+1))]`
-/

namespace A339759.P15906671360330048287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (A064839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339759.P15906671360330048287

/-! ## A339759.P7328952539871878986

`record[A339743(A165906(n+1))]`
-/

namespace A339759.P7328952539871878986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (A165906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339759.P7328952539871878986

/-! ## A339759.P9526342440621483833

`record[A339743((n+1)/A020639(n+1))]`
-/

namespace A339759.P9526342440621483833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339759.P9526342440621483833

/-!
# A339760: Number of (undirected) Hamiltonian paths in the 2 X n king graph.

The programs for A339760, the canonical program `A339760.P4038209715128270755` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339760 has offset 1).

The definition of A339760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339760.P4038209715128270755

`2^n*A177282(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339760

/-- `2^n*A177282(n+1)` -/
def P4038209715128270755.Spec : Prop :=
  ∀ n, P4038209715128270755.a n = A339760 (n + 1)

theorem P4038209715128270755.correct : P4038209715128270755.Spec := by
  intro n
  simp only [A339760, Nat.add_sub_cancel]

end A339760

/-! ## A339760.P17490357239695821872

`A177282(n+1)*A000079(n)`
-/

namespace A339760.P17490357239695821872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177282 (n + 1) * A000079 n

end

end A339760.P17490357239695821872

namespace A339760

/-- `A177282(n+1)*A000079(n)` -/
def P17490357239695821872.Spec : Prop :=
  ∀ n, P17490357239695821872.a n = A339760 (n + 1)

end A339760

/-! ## A339760.P3351778730758197065

`record[A177282(A078898(n))]*A000079(n)`
-/

namespace A339760.P3351778730758197065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177282 (A078898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A339760.P3351778730758197065

namespace A339760

/-- `record[A177282(A078898(n))]*A000079(n)` -/
def P3351778730758197065.Spec : Prop :=
  ∀ n, P3351778730758197065.a n = A339760 (n + 1)

end A339760

/-! ## A339760.P14513139834044400304

`record[A177282(A002262(n))]*A000079(n)`
-/

namespace A339760.P14513139834044400304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177282 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A339760.P14513139834044400304

namespace A339760

/-- `record[A177282(A002262(n))]*A000079(n)` -/
def P14513139834044400304.Spec : Prop :=
  ∀ n, P14513139834044400304.a n = A339760 (n + 1)

end A339760

/-! ## A339760.P9988055323404202667

`A350729(∑[n+2])`
-/

namespace A339760.P9988055323404202667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339760.P9988055323404202667

namespace A339760

/-- `A350729(∑[n+2])` -/
def P9988055323404202667.Spec : Prop :=
  ∀ n, P9988055323404202667.a n = A339760 (n + 1)

end A339760

/-!
# A339761: Number of (undirected) Hamiltonian paths in the 3 X n king graph.

The programs for A339761, there is no canonical definition to state claims against.
-/

/-! ## A339761.P2039987952325834499

`A350729(∑[n+3]+1)`
-/

namespace A339761.P2039987952325834499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339761.P2039987952325834499

/-! ## A339761.P16103843146145343605

`A350729(A167614(n+1))+A011741(n)`
-/

namespace A339761.P16103843146145343605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A167614 (n + 1)).toNat + A011741 n

end

end A339761.P16103843146145343605

/-! ## A339761.P8639556889655873693

`A350729(A167614(n+1))+A191928(n)`
-/

namespace A339761.P8639556889655873693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A167614 (n + 1)).toNat + A191928 n

end

end A339761.P8639556889655873693

/-! ## A339761.P12896396321306728992

`gcd(A000038(n), A350729(A167614(n+1)))`
-/

namespace A339761.P12896396321306728992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A350729 (A167614 (n + 1)).toNat)

end

end A339761.P12896396321306728992

/-! ## A339761.P16751383928752482343

`lcm(A079882(n), A350729(A167614(n+1)))`
-/

namespace A339761.P16751383928752482343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079882 n) (A350729 (A167614 (n + 1)).toNat)

end

end A339761.P16751383928752482343

/-!
# A339762: Number of (undirected) Hamiltonian paths in the 4 X n king graph.

The programs for A339762, there is no canonical definition to state claims against.
-/

/-! ## A339762.P11889379327857768733

`A350729(A141214(n+1))`
-/

namespace A339762.P11889379327857768733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A141214 (n + 1)).toNat

end

end A339762.P11889379327857768733

/-! ## A339762.P4722025054832542671

`A350729(A374004(n+1))`
-/

namespace A339762.P4722025054832542671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A374004 (n + 1)).toNat

end

end A339762.P4722025054832542671

/-! ## A339762.P9118131107652352525

`A350729(A052905(n)+9)`
-/

namespace A339762.P9118131107652352525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A052905 n + 9).toNat

end

end A339762.P9118131107652352525

/-! ## A339762.P15913470641741089809

`A350729(A055999(n)+10)`
-/

namespace A339762.P15913470641741089809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A055999 n + 10).toNat

end

end A339762.P15913470641741089809

/-! ## A339762.P15044352240367744236

`A350729(eq[2, A054123(n)])`
-/

namespace A339762.P15044352240367744236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339762.P15044352240367744236

/-!
# A339763: Number of (undirected) Hamiltonian paths in the 5 X n king graph.

The programs for A339763, there is no canonical definition to state claims against.
-/

/-! ## A339763.P10009100227812530887

`A350729(A374005(n+1))`
-/

namespace A339763.P10009100227812530887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A374005 (n + 1)).toNat

end

end A339763.P10009100227812530887

/-! ## A339763.P4658147168573775737

`A350729(A056000(n)+15)`
-/

namespace A339763.P4658147168573775737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (A056000 n + 15).toNat

end

end A339763.P4658147168573775737

/-! ## A339763.P1769143870311705594

`A350729(eq[2, A092921(n)])`
-/

namespace A339763.P1769143870311705594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339763.P1769143870311705594

/-! ## A339763.P13237085213237263173

`A350729(eq[4, A054123(n)])`
-/

namespace A339763.P13237085213237263173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339763.P13237085213237263173

/-! ## A339763.P12751413151649288799

`A350729(eq[4, A193592(n)])`
-/

namespace A339763.P12751413151649288799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339763.P12751413151649288799

/-!
# A339765: a(n) = 2*floor(n*phi) - 3*n, where phi = (1+sqrt(5))/2.

The programs for A339765, the canonical program `A339765.P11067566933259912398` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339765 has offset 1).

The definition of A339765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*floor((n+1)*ϕ)-3*(n+1)` (program `A339765.P11067566933259912398`, by `A339765.P11067566933259912398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A339765.P11067566933259912398

`2*floor((n+1)*ϕ)-3*(n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339765

/-- `2*floor((n+1)*ϕ)-3*(n+1)` -/
def P11067566933259912398.Spec : Prop :=
  ∀ n, P11067566933259912398.a n = A339765 (n + 1)

theorem P11067566933259912398.correct : P11067566933259912398.Spec := by
  intro n
  simp only [A339765, Nat.add_sub_cancel]

end A339765

/-! ## A339765.P5290629010975870315

`-∑[A008275(Δ[floor(ϕ*n)])]`
-/

namespace A339765.P5290629010975870315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339765.P5290629010975870315

namespace A339765

/-- `-∑[A008275(Δ[floor(ϕ*n)])]` -/
def P5290629010975870315.Spec : Prop :=
  ∀ n, P5290629010975870315.a n = A339765 (n + 1)

end A339765

/-! ## A339765.P13335558600518064110

`-∑[A008683(Δ[floor(ϕ*n)])]`
-/

namespace A339765.P13335558600518064110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339765.P13335558600518064110

namespace A339765

/-- `-∑[A008683(Δ[floor(ϕ*n)])]` -/
def P13335558600518064110.Spec : Prop :=
  ∀ n, P13335558600518064110.a n = A339765 (n + 1)

end A339765

/-! ## A339765.P1063180797632377295

`-∑[A121373(Δ[floor(ϕ*n)])]`
-/

namespace A339765.P1063180797632377295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339765.P1063180797632377295

namespace A339765

/-- `-∑[A121373(Δ[floor(ϕ*n)])]` -/
def P1063180797632377295.Spec : Prop :=
  ∀ n, P1063180797632377295.a n = A339765 (n + 1)

end A339765

/-! ## A339765.P8122360205783734494

`-∑[A143765(Δ[floor(ϕ*n)])]`
-/

namespace A339765.P8122360205783734494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143765 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339765.P8122360205783734494

namespace A339765

/-- `-∑[A143765(Δ[floor(ϕ*n)])]` -/
def P8122360205783734494.Spec : Prop :=
  ∀ n, P8122360205783734494.a n = A339765 (n + 1)

end A339765

/-! ## A339765.P1877901597017507626

`-∑[A049347(Δ[floor(n/ϕ)])]`
-/

namespace A339765.P1877901597017507626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339765.P1877901597017507626

namespace A339765

/-- `-∑[A049347(Δ[floor(n/ϕ)])]` -/
def P1877901597017507626.Spec : Prop :=
  ∀ n, P1877901597017507626.a n = A339765 (n + 1)

end A339765

/-! ## A339765.P8582190597445967495

`-∑[A293072(Δ[floor(n/ϕ)])]`
-/

namespace A339765.P8582190597445967495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293072 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339765.P8582190597445967495

namespace A339765

/-- `-∑[A293072(Δ[floor(n/ϕ)])]` -/
def P8582190597445967495.Spec : Prop :=
  ∀ n, P8582190597445967495.a n = A339765 (n + 1)

end A339765

/-!
# A339767: a(n) = 2*gpf(n) - Sum_{p | n, p prime} p*m(p), where gpf(n) = A006530(n) is the greatest prime factor of n and m(p) is the multiplicity of p in the prime factorization of n.

The programs for A339767, there is no canonical definition to state claims against.
-/

/-! ## A339767.P4991308985382875497

`2*A006530(n+2)-A001414(n+2)`
-/

namespace A339767.P4991308985382875497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2) - A001414 (n + 2)

end

end A339767.P4991308985382875497

/-! ## A339767.P227289059331194052

`A066048(2*(n+2))-sqrt(A074373(n+2))`
-/

namespace A339767.P227289059331194052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066048 (2 * (n + 2)) : ℝ) - Real.sqrt (A074373 (n + 2) : ℝ)

end

end A339767.P227289059331194052

/-! ## A339767.P17245903563543860438

`2*A006530(n+2)+1-A036288(n+2)`
-/

namespace A339767.P17245903563543860438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2) + 1 - A036288 (n + 2)

end

end A339767.P17245903563543860438

/-! ## A339767.P15217770927220714449

`A005843(A006530(n+2))-A001414(n+2)`
-/

namespace A339767.P15217770927220714449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A006530 (n + 2)).toNat - A001414 (n + 2)

end

end A339767.P15217770927220714449

/-! ## A339767.P1756790162216035276

`A001414(A006530(n+2)²)-A001414(n+2)`
-/

namespace A339767.P1756790162216035276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006530 (n + 2) ^ 2).toNat - A001414 (n + 2)

end

end A339767.P1756790162216035276

/-! ## A339767.P9373521439752594751

`A036288(A006530(n+2)²)-A036288(n+2)`
-/

namespace A339767.P9373521439752594751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A006530 (n + 2) ^ 2).toNat - A036288 (n + 2)

end

end A339767.P9373521439752594751

/-!
# A339771: a(n) = Sum_{i=0..n} Sum_{j=0..n} 2^max(i,j).

The programs for A339771, the canonical program `A339771.P5084121294361121818` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339771 has offset 0).

The definition of A339771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339771.P5084121294361121818

`(2*n-1)*2^(n+1)+3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339771

/-- `(2*n-1)*2^(n+1)+3` -/
def P5084121294361121818.Spec : Prop :=
  ∀ n, P5084121294361121818.a n = A339771 n

theorem P5084121294361121818.correct : P5084121294361121818.Spec := by
  intro n
  simp only [A339771]

end A339771

/-! ## A339771.P8681263158090443425

`(2*A027981(n)+1)/3`
-/

namespace A339771.P8681263158090443425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A027981 n + 1 : ℚ) / 3

end

end A339771.P8681263158090443425

namespace A339771

/-- `(2*A027981(n)+1)/3` -/
def P8681263158090443425.Spec : Prop :=
  ∀ n, P8681263158090443425.a n = (A339771 n : ℚ)

end A339771

/-! ## A339771.P13198681941028511319

`∑[ogf((1+2x)/(1-4x+4x^2))]`
-/

namespace A339771.P13198681941028511319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P13198681941028511319

namespace A339771

/-- `∑[ogf((1+2x)/(1-4x+4x^2))]` -/
def P13198681941028511319.Spec : Prop :=
  ∀ n, P13198681941028511319.a n = A339771 n

end A339771

/-! ## A339771.P8685863060524607388

`ogf((1+2x)/(1-5x+8x^2-4x^3))`
-/

namespace A339771.P8685863060524607388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, 8, -4] n

end

end A339771.P8685863060524607388

namespace A339771

/-- `ogf((1+2x)/(1-5x+8x^2-4x^3))` -/
def P8685863060524607388.Spec : Prop :=
  ∀ n, P8685863060524607388.a n = A339771 n

end A339771

/-! ## A339771.P12195626993097005250

`or(1, ∑[(2*n+1)*2^n])`
-/

namespace A339771.P12195626993097005250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339771.P12195626993097005250

namespace A339771

/-- `or(1, ∑[(2*n+1)*2^n])` -/
def P12195626993097005250.Spec : Prop :=
  ∀ n, (P12195626993097005250.a n : ℤ) = A339771 n

end A339771

/-! ## A339771.P3628867827216071110

`∑[a(n-1)+a(n-1)+2^(n+1)]` with `a(0)=1`
-/

namespace A339771.P3628867827216071110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2 ^ (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P3628867827216071110

namespace A339771

/-- `∑[a(n-1)+a(n-1)+2^(n+1)]` -/
def P3628867827216071110.Spec : Prop :=
  ∀ n, (P3628867827216071110.a n : ℤ) = A339771 n

end A339771

/-! ## A339771.P7105851796977420543

`∑[A014480(n)]`
-/

namespace A339771.P7105851796977420543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P7105851796977420543

namespace A339771

/-- `∑[A014480(n)]` -/
def P7105851796977420543.Spec : Prop :=
  ∀ n, P7105851796977420543.a n = A339771 n

end A339771

/-! ## A339771.P13235018410630555262

`∑[∑[A052951(n)]]`
-/

namespace A339771.P13235018410630555262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P13235018410630555262

namespace A339771

/-- `∑[∑[A052951(n)]]` -/
def P13235018410630555262.Spec : Prop :=
  ∀ n, P13235018410630555262.a n = A339771 n

end A339771

/-! ## A339771.P16986436650301961674

`∑[A118417(n)/2]`
-/

namespace A339771.P16986436650301961674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118417 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P16986436650301961674

namespace A339771

/-- `∑[A118417(n)/2]` -/
def P16986436650301961674.Spec : Prop :=
  ∀ n, P16986436650301961674.a n = (A339771 n : ℚ)

end A339771

/-! ## A339771.P11876519899935978223

`∑[A093968(2*n+1)]`
-/

namespace A339771.P11876519899935978223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P11876519899935978223

namespace A339771

/-- `∑[A093968(2*n+1)]` -/
def P11876519899935978223.Spec : Prop :=
  ∀ n, P11876519899935978223.a n = A339771 n

end A339771

/-! ## A339771.P18387437502836081657

`∑[A132344(2*n+1)]`
-/

namespace A339771.P18387437502836081657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132344 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P18387437502836081657

namespace A339771

/-- `∑[A132344(2*n+1)]` -/
def P18387437502836081657.Spec : Prop :=
  ∀ n, P18387437502836081657.a n = A339771 n

end A339771

/-! ## A339771.P11033447518264376944

`∑[A271771(n+1)+n]`
-/

namespace A339771.P11033447518264376944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271771 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P11033447518264376944

namespace A339771

/-- `∑[A271771(n+1)+n]` -/
def P11033447518264376944.Spec : Prop :=
  ∀ n, P11033447518264376944.a n = A339771 n

end A339771

/-! ## A339771.P4734081194013084819

`∑[Δ[n²]*A000079(n)]`
-/

namespace A339771.P4734081194013084819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P4734081194013084819

namespace A339771

/-- `∑[Δ[n²]*A000079(n)]` -/
def P4734081194013084819.Spec : Prop :=
  ∀ n, P4734081194013084819.a n = A339771 n

end A339771

/-! ## A339771.P12741360908940937626

`∑[abs(A316386(2*n+1))]`
-/

namespace A339771.P12741360908940937626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316386 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P12741360908940937626

namespace A339771

/-- `∑[abs(A316386(2*n+1))]` -/
def P12741360908940937626.Spec : Prop :=
  ∀ n, P12741360908940937626.a n = A339771 n

end A339771

/-! ## A339771.P8857761981584750789

`∑[A208658(n+1)+n+1]`
-/

namespace A339771.P8857761981584750789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208658 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P8857761981584750789

namespace A339771

/-- `∑[A208658(n+1)+n+1]` -/
def P8857761981584750789.Spec : Prop :=
  ∀ n, P8857761981584750789.a n = A339771 n

end A339771

/-! ## A339771.P13759702768214944645

`∑[A086950(n+1)/(n+1)]`
-/

namespace A339771.P13759702768214944645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086950 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P13759702768214944645

namespace A339771

/-- `∑[A086950(n+1)/(n+1)]` -/
def P13759702768214944645.Spec : Prop :=
  ∀ n, P13759702768214944645.a n = (A339771 n : ℚ)

end A339771

/-! ## A339771.P447290700555446217

`∑[A382500(2*n+1)]`
-/

namespace A339771.P447290700555446217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382500 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P447290700555446217

namespace A339771

/-- `∑[A382500(2*n+1)]` -/
def P447290700555446217.Spec : Prop :=
  ∀ n, P447290700555446217.a n = A339771 n

end A339771

/-! ## A339771.P11927589918935538010

`∑[sqrt(A164583(n))]`
-/

namespace A339771.P11927589918935538010
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A164583 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P11927589918935538010

namespace A339771

/-- `∑[sqrt(A164583(n))]` -/
def P11927589918935538010.Spec : Prop :=
  ∀ n, P11927589918935538010.a n = (A339771 n : ℝ)

end A339771

/-! ## A339771.P14987971771808585886

`∑[sqrt(A014477(2*n))]`
-/

namespace A339771.P14987971771808585886
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014477 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P14987971771808585886

namespace A339771

/-- `∑[sqrt(A014477(2*n))]` -/
def P14987971771808585886.Spec : Prop :=
  ∀ n, P14987971771808585886.a n = (A339771 n : ℝ)

end A339771

/-! ## A339771.P8816338748021026190

`∑[A118413(∑[n+1])]`
-/

namespace A339771.P8816338748021026190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118413 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339771.P8816338748021026190

namespace A339771

/-- `∑[A118413(∑[n+1])]` -/
def P8816338748021026190.Spec : Prop :=
  ∀ n, P8816338748021026190.a n = A339771 n

end A339771

/-!
# A339772: Number of Goldbach partitions of 2n whose parts have the same number of decimal digits.

The programs for A339772, there is no canonical definition to state claims against.
-/

/-! ## A339772.P15270719838728925059

`A339632(n+1)-char[4]`
-/

namespace A339772.P15270719838728925059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339632 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A339772.P15270719838728925059

/-! ## A339772.P429582341433160604

`xor(A185014(n), A339632(n+1))`
-/

namespace A339772.P429582341433160604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185014 n) (A339632 (n + 1))

end

end A339772.P429582341433160604

/-! ## A339772.P10899113776730959266

`xor(char[A017186(n)], A339632(n+1))`
-/

namespace A339772.P10899113776730959266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A339632 (n + 1))

end

end A339772.P10899113776730959266

/-! ## A339772.P1822253054703540864

`and(A339632(n+1), A359748(n+1))`
-/

namespace A339772.P1822253054703540864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339632 (n + 1)) (A359748 (n + 1))

end

end A339772.P1822253054703540864

/-! ## A339772.P4003537113819555981

`and(A157672(n+2), A339632(n+1))`
-/

namespace A339772.P4003537113819555981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157672 (n + 2)) (A339632 (n + 1))

end

end A339772.P4003537113819555981

/-! ## A339772.P8816686123698666604

`ceil(sqrt(A339632(n+1)^A055642(n)))`
-/

namespace A339772.P8816686123698666604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A339632 (n + 1) : ℚ) ^ (A055642 n : ℤ) : ℝ)⌉

end

end A339772.P8816686123698666604

/-! ## A339772.P11035801623816978011

`xor(A000007((4-n)²), A339632(n+1))`
-/

namespace A339772.P11035801623816978011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 ((4 - (n : ℤ)) ^ 2).toNat) (A339632 (n + 1))

end

end A339772.P11035801623816978011

/-! ## A339772.P13163854999425082848

`xor(A010051(A189889(n+1)), A339632(n+1))`
-/

namespace A339772.P13163854999425082848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A189889 (n + 1)).toNat) (A339632 (n + 1))

end

end A339772.P13163854999425082848

/-! ## A339772.P3949088073765397227

`ceil(A339632(n+1)/A014963(A339630(n)))`
-/

namespace A339772.P3949088073765397227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339632 (n + 1) : ℚ) / (A014963 (A339630 n).toNat : ℚ)⌉

end

end A339772.P3949088073765397227

/-!
# A339774: a(n) is the least k such that 3^k == A047471(n) (mod 2^A047471(n)).

The programs for A339774, there is no canonical definition to state claims against.
-/

/-! ## A339774.P10149185401317631481

`n*A298494(A317631(n))`
-/

namespace A339774.P10149185401317631481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A298494 (A317631 n).toNat

end

end A339774.P10149185401317631481

/-!
# A339775: Primes p such that (p+nextprime(p))/6 is prime and 6*p is the sum of two consecutive primes.

The programs for A339775, there is no canonical definition to state claims against.
-/

/-! ## A339775.P5896475946012578019

`∩[A163487(n+1), A288632(n+1)]`
-/

namespace A339775.P5896475946012578019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339775.P5896475946012578019

/-! ## A339775.P13557976827416937343

`∩[A288632(n+1), A391352(n+1)]`
-/

namespace A339775.P13557976827416937343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339775.P13557976827416937343

/-! ## A339775.P5154657194051647012

`∩[A078587(3*A163487(n+1)), A163487(n+1)]`
-/

namespace A339775.P5154657194051647012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (3 * A163487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339775.P5154657194051647012

/-!
# A339779: Array read by antidiagonals: T(n,k) is the number of homeomorphically irreducible leaf colored trees with n leaves of k colors.

The programs for A339779, there is no canonical definition to state claims against.
-/

/-! ## A339779.P13581096887393666184

`A089311(A094544(n))+A071919(n)`
-/

namespace A339779.P13581096887393666184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A094544 n).toNat + A071919 n

end

end A339779.P13581096887393666184

/-! ## A339779.P9897817626863139886

`A071919(n)+A025469(A163661(n))`
-/

namespace A339779.P9897817626863139886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A025469 (A163661 n).toNat

end

end A339779.P9897817626863139886

/-! ## A339779.P6460914065165426392

`A088918(A102363(n))+A071919(n)`
-/

namespace A339779.P6460914065165426392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088918 (A102363 n).toNat + A071919 n

end

end A339779.P6460914065165426392

/-! ## A339779.P14174533447734114298

`A071919(n)+A025469(A256116(n))`
-/

namespace A339779.P14174533447734114298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A025469 (A256116 n).toNat

end

end A339779.P14174533447734114298

/-! ## A339779.P16879257161088676092

`A071919(n)+A016396(A294582(n))`
-/

namespace A339779.P16879257161088676092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A016396 (A294582 n).toNat

end

end A339779.P16879257161088676092

/-!
# A339780: Triangle read by rows: T(n,k) is the number of homeomorphically irreducible leaf colored trees with n leaves using exactly k colors.

The programs for A339780, there is no canonical definition to state claims against.
-/

/-! ## A339780.P8681452979275210933

`A266878(A077168(n)+1)`
-/

namespace A339780.P8681452979275210933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A077168 n + 1).toNat

end

end A339780.P8681452979275210933

/-! ## A339780.P2590665459878138913

`A266878(A043320(n+2))`
-/

namespace A339780.P2590665459878138913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A043320 (n + 2)).toNat

end

end A339780.P2590665459878138913

/-! ## A339780.P9411349889970754381

`A266878(A044917(n+2))`
-/

namespace A339780.P9411349889970754381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A044917 (n + 2)).toNat

end

end A339780.P9411349889970754381

/-! ## A339780.P320611471607701512

`A266878(A055645(n+2))`
-/

namespace A339780.P320611471607701512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A055645 (n + 2)).toNat

end

end A339780.P320611471607701512

/-! ## A339780.P5394574573645386403

`A266878(A055647(n)+2)`
-/

namespace A339780.P5394574573645386403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266878 (A055647 n + 2).toNat

end

end A339780.P5394574573645386403

/-!
# A339781: Number of homeomorphically irreducible trees with n integer labeled leaves covering an initial interval of positive integers.

The programs for A339781, there is no canonical definition to state claims against.
-/

/-! ## A339781.P2379721462669843722

`A008619(A129137(n+1)+A119307(n))`
-/

namespace A339781.P2379721462669843722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A129137 (n + 1) + A119307 n).toNat

end

end A339781.P2379721462669843722

/-! ## A339781.P13568725570866426616

`A008619(A131061(n)+A129137(n+1))`
-/

namespace A339781.P13568725570866426616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A131061 n + A129137 (n + 1)).toNat

end

end A339781.P13568725570866426616

/-! ## A339781.P7805541763619297196

`A008619(A157212(n)+A129137(n+1))`
-/

namespace A339781.P7805541763619297196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A157212 n + A129137 (n + 1)).toNat

end

end A339781.P7805541763619297196

/-!
# A339782: Number of homeomorphically irreducible leaf colored trees with n leaves of 2 colors.

The programs for A339782, there is no canonical definition to state claims against.
-/

/-! ## A339782.P17235047679322623341

`A339779(∑[n+3])`
-/

namespace A339782.P17235047679322623341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339782.P17235047679322623341

/-! ## A339782.P6990185773932108568

`record[A339779(A027379(A008611(n)))]`
-/

namespace A339782.P6990185773932108568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339782.P6990185773932108568

/-! ## A339782.P3671684362142891237

`record[A339779(A027379(A025581(n)))]`
-/

namespace A339782.P3671684362142891237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A027379 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339782.P3671684362142891237

/-! ## A339782.P8911187078596876057

`record[A339779(A027379(A328399(n)))]`
-/

namespace A339782.P8911187078596876057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A027379 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339782.P8911187078596876057

/-! ## A339782.P11106921132507250540

`record[A339779(A027379(A023121(n+1)))]`
-/

namespace A339782.P11106921132507250540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A027379 (A023121 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339782.P11106921132507250540

/-!
# A339783: Number of homeomorphically irreducible leaf colored trees with n leaves of 3 colors.

The programs for A339783, there is no canonical definition to state claims against.
-/

/-! ## A339783.P8537081335270895391

`A339779(∑[n+3]+n+3)`
-/

namespace A339783.P8537081335270895391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A339783.P8537081335270895391

/-! ## A339783.P4131332289547676591

`record[A339779(abs(A046691(n)))]`
-/

namespace A339783.P4131332289547676591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339783.P4131332289547676591

/-! ## A339783.P15296893632087980914

`record[A339779(A027379(n)-1)]`
-/

namespace A339783.P15296893632087980914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339783.P15296893632087980914

/-! ## A339783.P4312728821325891386

`record[A339779(A046691(n)%A027379(n))]`
-/

namespace A339783.P4312728821325891386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (Int.tmod (A046691 n) (A027379 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339783.P4312728821325891386

/-! ## A339783.P8834484298664224247

`or(A000007(n), A339779(A046691(n+2)))`
-/

namespace A339783.P8834484298664224247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A339779 (A046691 (n + 2)).toNat)

end

end A339783.P8834484298664224247

/-!
# A339784: Number of homeomorphically irreducible leaf colored trees with n leaves of 4 colors.

The programs for A339784, there is no canonical definition to state claims against.
-/

/-! ## A339784.P10313729308360634990

`A339779(∑[n+5]+5)`
-/

namespace A339784.P10313729308360634990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A339784.P10313729308360634990

/-! ## A339784.P17792061979304729262

`record[A339779(A052905(n))]`
-/

namespace A339784.P17792061979304729262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339784.P17792061979304729262

/-! ## A339784.P2439104881728117217

`record[A339779(A055999(n)+1)]`
-/

namespace A339784.P2439104881728117217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339784.P2439104881728117217

/-! ## A339784.P543184725857148802

`record[A339779(abs(A046691(n))-1)]`
-/

namespace A339784.P543184725857148802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339784.P543184725857148802

/-! ## A339784.P2374846157589523341

`record[A339779(A046691(n+1)-1)]`
-/

namespace A339784.P2374846157589523341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339779 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339784.P2374846157589523341

/-!
# A339785: Number of homeomorphically irreducible leaf colored trees with n leaves using exactly 2 colors.

The programs for A339785, there is no canonical definition to state claims against.
-/

/-! ## A339785.P14768842846650792333

`A339782(n+1)-2*A007827(n+1)`
-/

namespace A339785.P14768842846650792333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339782 (n + 1) - 2 * A007827 (n + 1)

end

end A339785.P14768842846650792333

/-! ## A339785.P3631159261744616686

`A339780(∑[n+1]+2)`
-/

namespace A339785.P3631159261744616686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339785.P3631159261744616686

/-! ## A339785.P12976124025992291837

`record[A339780(A130270(n+1)+2)]`
-/

namespace A339785.P12976124025992291837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339785.P12976124025992291837

/-! ## A339785.P8578814174102070712

`record[A339780(A238531(A002262(n)))]`
-/

namespace A339785.P8578814174102070712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A238531 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339785.P8578814174102070712

/-! ## A339785.P16599189052936605388

`record[A339780(A238531(A008616(n)))]`
-/

namespace A339785.P16599189052936605388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A238531 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339785.P16599189052936605388

/-!
# A339786: Number of homeomorphically irreducible leaf colored trees with n leaves using exactly 3 colors.

The programs for A339786, there is no canonical definition to state claims against.
-/

/-! ## A339786.P3096334736001600612

`A339783(n+1)-3*A339782(n+1)+3*A007827(n+1)`
-/

namespace A339786.P3096334736001600612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339783 (n + 1) - 3 * A339782 (n + 1) + 3 * A007827 (n + 1)

end

end A339786.P3096334736001600612

/-! ## A339786.P15181615786171285875

`A339780(A253145(n)+3)`
-/

namespace A339786.P15181615786171285875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A253145 n + 3).toNat

end

end A339786.P15181615786171285875

/-! ## A339786.P4553787976004911438

`A339780(A134869(n+1)+2)`
-/

namespace A339786.P4553787976004911438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A134869 (n + 1) + 2).toNat

end

end A339786.P4553787976004911438

/-! ## A339786.P5367597546810201165

`A339780(A133263(n)+2+n)`
-/

namespace A339786.P5367597546810201165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A133263 n + 2 + (n : ℤ)).toNat

end

end A339786.P5367597546810201165

/-! ## A339786.P3135577489927530632

`A339780(A038722(A034856(n+1)))`
-/

namespace A339786.P3135577489927530632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A038722 (A034856 (n + 1)).toNat).toNat

end

end A339786.P3135577489927530632

/-! ## A339786.P15012965256466905944

`A339780(A123932(n)+A000096(n))`
-/

namespace A339786.P15012965256466905944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A123932 n + A000096 n).toNat

end

end A339786.P15012965256466905944

/-! ## A339786.P15365033474980920232

`A339780(A103517(n)+A161680(n)+2)`
-/

namespace A339786.P15365033474980920232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A103517 n + (A161680 n + 2)).toNat

end

end A339786.P15365033474980920232

/-! ## A339786.P15677500566910371279

`A339780(A034856(n+2)-A004277(n))`
-/

namespace A339786.P15677500566910371279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A034856 (n + 2) - A004277 n).toNat

end

end A339786.P15677500566910371279

/-!
# A339787: Number of homeomorphically irreducible leaf colored trees with n leaves using exactly 4 colors.

The programs for A339787, there is no canonical definition to state claims against.
-/

/-! ## A339787.P1769665260781376790

`and(-2, A339780(A145018(n+2)))`
-/

namespace A339787.P1769665260781376790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A339780 (A145018 (n + 2)).toNat)

end

end A339787.P1769665260781376790

/-! ## A339787.P13946924587160709610

`A339780(A238531(n)+A062545(n))`
-/

namespace A339787.P13946924587160709610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A238531 n + A062545 n).toNat

end

end A339787.P13946924587160709610

/-! ## A339787.P10707755091503201595

`A339780(A145018(n+2))%A045628(2*n)`
-/

namespace A339787.P10707755091503201595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339780 (A145018 (n + 2)).toNat) (A045628 (2 * n))

end

end A339787.P10707755091503201595

/-! ## A339787.P3391303831970611982

`A339780(A145018(n+2))-C(2, A082454(n))`
-/

namespace A339787.P3391303831970611982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A145018 (n + 2)).toNat - (Nat.choose 2 (A082454 n).toNat : ℤ)

end

end A339787.P3391303831970611982

/-! ## A339787.P14376533632382178892

`A339780(A145018(n+2))-(A002322(n+1)%2)^n`
-/

namespace A339787.P14376533632382178892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A145018 (n + 2)).toNat - Int.tmod (A002322 (n + 1)) 2 ^ n

end

end A339787.P14376533632382178892

/-!
# A339788: Triangle read by rows: T(n,k) is the number of forests with n unlabeled vertices and maximum vertex degree k, (0 <= k < n).

The programs for A339788, there is no canonical definition to state claims against.
-/

/-! ## A339788.P5066118801208164441

`xor(A034851(n), A347245(A285061(n)))`
-/

namespace A339788.P5066118801208164441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034851 n) (A347245 (A285061 n).toNat)

end

end A339788.P5066118801208164441

/-! ## A339788.P1509040076192858620

`A143824(ceil(A257618(n)/A363740(2*n+5)))`
-/

namespace A339788.P1509040076192858620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 ⌈(A257618 n : ℚ) / (A363740 (2 * n + 5) : ℚ)⌉.toNat

end

end A339788.P1509040076192858620

/-! ## A339788.P18321286032415337926

`A144200(A007754(n))+A034851(n)`
-/

namespace A339788.P18321286032415337926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (A007754 n).toNat + A034851 n

end

end A339788.P18321286032415337926

/-! ## A339788.P2444593511597889065

`A304571(A000016(n))+A034851(n)`
-/

namespace A339788.P2444593511597889065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (A000016 n).toNat + A034851 n

end

end A339788.P2444593511597889065

/-! ## A339788.P17658861411362979411

`A098108(A070217(n+1))+A034851(n)`
-/

namespace A339788.P17658861411362979411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A070217 (n + 1)).toNat + A034851 n

end

end A339788.P17658861411362979411

/-!
# A339789: Odd primes p such that h(p) sets a record for closeness to the nearest integer, where h(p) is the altitude of a triangle with base p and other two sides the next two primes after p.

The programs for A339789, there is no canonical definition to state claims against.
-/

/-! ## A339789.P4050891228236428383

`p?[or(A052319(n+1), A169867(n+1))]`
-/

namespace A339789.P4050891228236428383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052319 (n + 1)) (A169867 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339789.P4050891228236428383

/-!
# A339790: First coefficient of the lindep transform of sigma(n).

The programs for A339790, there is no canonical definition to state claims against.
-/

/-! ## A339790.P2540035701115737187

`A290105(A210601(n+4)*A323014(2*n+5))`
-/

namespace A339790.P2540035701115737187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A210601 (n + 4) * A323014 (2 * n + 5)).toNat

end

end A339790.P2540035701115737187

/-! ## A339790.P3797483336536567093

`A188169(A338885(n+2)+A222690(n+4))`
-/

namespace A339790.P3797483336536567093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (A338885 (n + 2) + A222690 (n + 4)).toNat

end

end A339790.P3797483336536567093

/-! ## A339790.P6691342678158971548

`A115574(A109395(n+1)*A115574(3*n+4))`
-/

namespace A339790.P6691342678158971548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (A109395 (n + 1) * A115574 (3 * n + 4)).toNat

end

end A339790.P6691342678158971548

/-! ## A339790.P16375848680453192520

`A290105(A210601(n+4)*A331188(n+1))`
-/

namespace A339790.P16375848680453192520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (A210601 (n + 4) * A331188 (n + 1)).toNat

end

end A339790.P16375848680453192520

/-!
# A339791: Second coefficient of the lindep transform of sigma(n).

The programs for A339791, there is no canonical definition to state claims against.
-/

/-! ## A339791.P2856247219873480420

`-gcd(∏{p}[n+1, #], ∑{e}[2*round(2^n/3), #])`
-/

namespace A339791.P2856247219873480420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.gcd (∏ p ∈ Nat.primeFactors (f1 n), p) (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) : ℤ)

end

end A339791.P2856247219873480420

/-! ## A339791.P10395706968268726299

`-A161904(A132106(n)+2)`
-/

namespace A339791.P10395706968268726299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A161904 (A132106 n + 2).toNat

end

end A339791.P10395706968268726299

/-! ## A339791.P337538810769605417

`-gcd(A107286(n+1), A174356(n))`
-/

namespace A339791.P337538810769605417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.gcd (A107286 (n + 1)) (A174356 n) : ℤ)

end

end A339791.P337538810769605417

/-! ## A339791.P10531456644269550469

`-A020639(A074324(1-∑{p}[n+1, C(#, n)]+n))`
-/

namespace A339791.P10531456644269550469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A020639 (A074324 (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)).toNat).toNat

end

end A339791.P10531456644269550469

/-! ## A339791.P1497652316071643924

`-A020639(A182522(n*∏{p}[n+1, C(#%n, #)]+1))`
-/

namespace A339791.P1497652316071643924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A020639 (A182522 (n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1)).toNat

end

end A339791.P1497652316071643924

