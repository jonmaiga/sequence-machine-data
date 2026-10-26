import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A025000: a(1) = 3; a(n+1) = a(n)-th nonprime, where nonprimes begin at 0.

The programs for A025000, there is no canonical definition to state claims against.
-/

/-! ## A025000.P6868996881344639786

`A141468(a(n-1))` with `a(0)=3`
-/

namespace A025000.P6868996881344639786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A141468 (a (n - 1)).toNat

end

end A025000.P6868996881344639786

/-! ## A025000.P14735460804632889561

`A018252(a(n-1)-1)` with `a(0)=3`
-/

namespace A025000.P14735460804632889561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A018252 (a (n - 1) - 1).toNat

end

end A025000.P14735460804632889561

/-! ## A025000.P14966022443136286055

`A002808(a(n-1)-2)` with `a(0)=3`
-/

namespace A025000.P14966022443136286055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002808 (a (n - 1) - 2).toNat

end

end A025000.P14966022443136286055

/-! ## A025000.P11854549239454692019

`A141468(abs(a(A023443(n))))` with `a(0)=3`
-/

namespace A025000.P11854549239454692019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A141468 |a (A023443 n).toNat|.toNat

end

end A025000.P11854549239454692019

/-! ## A025000.P15251172677315079838

`A141468(floor(a(A023443(n))))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A025000.P15251172677315079838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A141468 (a (A023443 n).toNat).toNat

end

end A025000.P15251172677315079838

/-!
# A025001: a(1) = 5; a(n+1) = a(n)-th nonprime, where nonprimes begin at 0.

The programs for A025001, there is no canonical definition to state claims against.
-/

/-! ## A025001.P8502640559602947080

`A141468(a(n-1))` with `a(0)=5`
-/

namespace A025001.P8502640559602947080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A141468 (a (n - 1)).toNat

end

end A025001.P8502640559602947080

/-! ## A025001.P16009682638500610194

`A018252(a(n-1)-1)` with `a(0)=5`
-/

namespace A025001.P16009682638500610194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A018252 (a (n - 1) - 1).toNat

end

end A025001.P16009682638500610194

/-! ## A025001.P8921859069196973220

`A002808(a(n-1)-2)` with `a(0)=5`
-/

namespace A025001.P8921859069196973220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A002808 (a (n - 1) - 2).toNat

end

end A025001.P8921859069196973220

/-! ## A025001.P4477602013100826513

`A141468(abs(a(A023443(n))))` with `a(0)=5`
-/

namespace A025001.P4477602013100826513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A141468 |a (A023443 n).toNat|.toNat

end

end A025001.P4477602013100826513

/-! ## A025001.P15581473641073540973

`A141468(ceil(a(A023443(n))))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A025001.P15581473641073540973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A141468 (a (A023443 n).toNat).toNat

end

end A025001.P15581473641073540973

/-!
# A025002: a(1) = 7; a(n+1) = a(n)-th nonprime, where nonprimes begin at 0.

The programs for A025002, there is no canonical definition to state claims against.
-/

/-! ## A025002.P10901803175161022297

`A141468(a(n-1))` with `a(0)=7`
-/

namespace A025002.P10901803175161022297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A141468 (a (n - 1)).toNat

end

end A025002.P10901803175161022297

/-! ## A025002.P2954788408425863999

`A018252(a(n-1)-1)` with `a(0)=7`
-/

namespace A025002.P2954788408425863999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A018252 (a (n - 1) - 1).toNat

end

end A025002.P2954788408425863999

/-! ## A025002.P8913384487121620419

`A002808(a(n-1)-2)` with `a(0)=7`
-/

namespace A025002.P8913384487121620419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A002808 (a (n - 1) - 2).toNat

end

end A025002.P8913384487121620419

/-! ## A025002.P14511205179875076782

`A141468(abs(a(A023443(n))))` with `a(0)=7`
-/

namespace A025002.P14511205179875076782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A141468 |a (A023443 n).toNat|.toNat

end

end A025002.P14511205179875076782

/-! ## A025002.P18432278490648127394

`A141468(floor(a(A023443(n))))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A025002.P18432278490648127394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A141468 (a (A023443 n).toNat).toNat

end

end A025002.P18432278490648127394

/-!
# A025003: a(1) = 2; a(n+1) = a(n)-th nonprime, where nonprimes begin at 1.

The programs for A025003, there is no canonical definition to state claims against.
-/

/-! ## A025003.P12504968606363239832

`∑[A338237(n)]+1`
-/

namespace A025003.P12504968606363239832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025003.P12504968606363239832

/-! ## A025003.P13000119603318375870

`∑[A338237(n^floor(atan(n)))]`
-/

namespace A025003.P13000119603318375870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338237 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025003.P13000119603318375870

/-! ## A025003.P2737205804842914923

`∑[A338237(A028310(n))]`
-/

namespace A025003.P2737205804842914923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338237 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025003.P2737205804842914923

/-! ## A025003.P4946684303434965547

`∑[A338237(sqrt(A253909(n)))]`
-/

namespace A025003.P4946684303434965547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338237 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025003.P4946684303434965547

/-! ## A025003.P15774040079243521627

`∑[A338237(A065033(2*n))]`
-/

namespace A025003.P15774040079243521627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338237 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025003.P15774040079243521627

/-! ## A025003.P15154756191168165174

`∑[A338237(A123108(2*n))]`
-/

namespace A025003.P15154756191168165174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338237 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025003.P15154756191168165174

/-! ## A025003.P5790337800930509722

`∑[A054977(n)*A338237(n)]`
-/

namespace A025003.P5790337800930509722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A338237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025003.P5790337800930509722

/-!
# A025004: a(1) = 3; a(n+1) = a(n)-th nonprime, where nonprimes begin at 1.

The programs for A025004, there is no canonical definition to state claims against.
-/

/-! ## A025004.P14459427431184373146

`A018252(a(n-1))` with `a(0)=3`
-/

namespace A025004.P14459427431184373146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A018252 (a (n - 1)).toNat

end

end A025004.P14459427431184373146

/-! ## A025004.P2128573879337207762

`A141468(a(n-1)+1)` with `a(0)=3`
-/

namespace A025004.P2128573879337207762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A141468 (a (n - 1) + 1).toNat

end

end A025004.P2128573879337207762

/-! ## A025004.P6326901867371392754

`A002808(a(n-1)-1)` with `a(0)=3`
-/

namespace A025004.P6326901867371392754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A002808 (a (n - 1) - 1).toNat

end

end A025004.P6326901867371392754

/-! ## A025004.P7153142160940259732

`A018252(abs(a((2*n)%(n+1))))` with `a(0)=3`
-/

namespace A025004.P7153142160940259732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A018252 |a (2 * n % (n + 1))|.toNat

end

end A025004.P7153142160940259732

/-! ## A025004.P8011913872401272478

`A018252(floor(n*a(floor(n²/(n+1))))/n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A025004.P8011913872401272478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A018252 (SequenceMachineLib.roundAway (((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat : ℚ) / (n : ℚ))).toNat

end

end A025004.P8011913872401272478

/-!
# A025005: a(1) = 5; a(n+1) = a(n)-th nonprime, where nonprimes begin at 1.

The programs for A025005, there is no canonical definition to state claims against.
-/

/-! ## A025005.P17040115393923362144

`A018252(a(n-1))` with `a(0)=5`
-/

namespace A025005.P17040115393923362144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A018252 (a (n - 1)).toNat

end

end A025005.P17040115393923362144

/-! ## A025005.P11556792730050681771

`A141468(a(n-1)+1)` with `a(0)=5`
-/

namespace A025005.P11556792730050681771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A141468 (a (n - 1) + 1).toNat

end

end A025005.P11556792730050681771

/-! ## A025005.P918031499625285661

`A002808(a(n-1)-1)` with `a(0)=5`
-/

namespace A025005.P918031499625285661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A002808 (a (n - 1) - 1).toNat

end

end A025005.P918031499625285661

/-! ## A025005.P3632200838164562957

`A018252(abs(a((2*n)%(n+1))))` with `a(0)=5`
-/

namespace A025005.P3632200838164562957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A018252 |a (2 * n % (n + 1))|.toNat

end

end A025005.P3632200838164562957

/-! ## A025005.P4311157840425446061

`A018252(floor(n*a(floor(n²/(n+1))))/n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A025005.P4311157840425446061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A018252 (SequenceMachineLib.roundAway (((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat : ℚ) / (n : ℚ))).toNat

end

end A025005.P4311157840425446061

/-!
# A025006: a(1) = 7; a(n+1) = a(n)-th nonprime, where nonprimes begin at 1.

The programs for A025006, there is no canonical definition to state claims against.
-/

/-! ## A025006.P4761084863689898482

`A018252(a(n-1))` with `a(0)=7`
-/

namespace A025006.P4761084863689898482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A018252 (a (n - 1)).toNat

end

end A025006.P4761084863689898482

/-! ## A025006.P955568191955624980

`A141468(a(n-1)+1)` with `a(0)=7`
-/

namespace A025006.P955568191955624980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A141468 (a (n - 1) + 1).toNat

end

end A025006.P955568191955624980

/-! ## A025006.P4561754762349096967

`A002808(a(n-1)-1)` with `a(0)=7`
-/

namespace A025006.P4561754762349096967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A002808 (a (n - 1) - 1).toNat

end

end A025006.P4561754762349096967

/-! ## A025006.P13008363441499228512

`A018252(abs(a((2*n)%(n+1))))` with `a(0)=7`
-/

namespace A025006.P13008363441499228512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A018252 |a (2 * n % (n + 1))|.toNat

end

end A025006.P13008363441499228512

/-! ## A025006.P3023733978799966193

`A018252(abs(a(A023443(n))))` with `a(0)=7`
-/

namespace A025006.P3023733978799966193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A018252 |a (A023443 n).toNat|.toNat

end

end A025006.P3023733978799966193

/-!
# A025007: Expansion of 1/((1-x)(1-8x)(1-10x)(1-12x)).

The programs for A025007, there is no canonical definition to state claims against.
-/

/-! ## A025007.P15923938251074724475

`∑[A020980(n)]`
-/

namespace A025007.P15923938251074724475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025007.P15923938251074724475

/-! ## A025007.P1160501495758670751

`∑[2^n*A016103(n)]`
-/

namespace A025007.P1160501495758670751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025007.P1160501495758670751

/-! ## A025007.P5316036073647418598

`2*A021994(n)-A021914(n)`
-/

namespace A025007.P5316036073647418598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021994 n - A021914 n

end

end A025007.P5316036073647418598

/-! ## A025007.P14287938897673096245

`(A024778(n)+∑[A020983(n)])/2`
-/

namespace A025007.P14287938897673096245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020983 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A024778 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A025007.P14287938897673096245

/-! ## A025007.P1848225847915481693

`A020980(n)+a(A004277(n)-(n+1))` with `a(0)=1`
-/

namespace A025007.P1848225847915481693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020980 n + a (A004277 n - (n + 1 : ℤ)).toNat

end

end A025007.P1848225847915481693

/-! ## A025007.P17465109600544567112

`A021984(n)+A022000(n)-A021914(n)`
-/

namespace A025007.P17465109600544567112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021984 n + (A022000 n - A021914 n)

end

end A025007.P17465109600544567112

/-!
# A025008: Expansion of 1/((1-x)(1-8x)(1-11x)(1-12x)).

The programs for A025008, there is no canonical definition to state claims against.
-/

/-! ## A025008.P12832930153700182094

`∑[A020981(n)]`
-/

namespace A025008.P12832930153700182094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025008.P12832930153700182094

/-! ## A025008.P5862685508539750131

`A016268(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A025008.P5862685508539750131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016268 n + 8 * a (n - 1)

end

end A025008.P5862685508539750131

/-! ## A025008.P7781877782435617861

`∑[A016187(n)+12*a(n-1)]` with `a(0)=1`
-/

namespace A025008.P7781877782435617861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016187 n + 12 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025008.P7781877782435617861

/-! ## A025008.P1540307476061083071

`A020981(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A025008.P1540307476061083071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020981 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A025008.P1540307476061083071

/-! ## A025008.P11747854714974131016

`2*A022000(n)-A021924(n)`
-/

namespace A025008.P11747854714974131016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022000 n - A021924 n

end

end A025008.P11747854714974131016

/-! ## A025008.P14159178409981836029

`A016260(n+1)-A016259(n+1)`
-/

namespace A025008.P14159178409981836029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016260 (n + 1) - A016259 (n + 1)

end

end A025008.P14159178409981836029

/-! ## A025008.P9631047611816722739

`a(n-1)+A020981(n)+A001222(gcd(n, n+1))` with `a(0)=1`
-/

namespace A025008.P9631047611816722739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020981 n + A001222 (Nat.gcd n (n + 1)))

end

end A025008.P9631047611816722739

/-! ## A025008.P15514782729094457042

`A016260(n)+A020981(n)-A016259(n)`
-/

namespace A025008.P15514782729094457042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016260 n + (A020981 n - A016259 n)

end

end A025008.P15514782729094457042

/-! ## A025008.P775655675285920463

`A024440(n)+A024446(n)-A024439(n)`
-/

namespace A025008.P775655675285920463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024440 n + (A024446 n - A024439 n)

end

end A025008.P775655675285920463

/-!
# A025009: Expansion of 1/((1-x)(1-9x)(1-10x)(1-11x)).

The programs for A025009, the canonical program `A025009.P17912761409874267176` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025009 has offset 0).

The definition of A025009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025009.P17912761409874267176

`(36*11^(n+3)-80*10^(n+3)+45*9^(n+3)-1)/720`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025009

/-- `(36*11^(n+3)-80*10^(n+3)+45*9^(n+3)-1)/720` -/
def P17912761409874267176.Spec : Prop :=
  ∀ n, P17912761409874267176.a n = (A025009 n : ℚ)

end A025009

/-! ## A025009.P12734742941306305801

`∑[A020982(n)]`
-/

namespace A025009.P12734742941306305801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025009.P12734742941306305801

namespace A025009

/-- `∑[A020982(n)]` -/
def P12734742941306305801.Spec : Prop :=
  ∀ n, P12734742941306305801.a n = A025009 n

end A025009

/-! ## A025009.P13514935143129531506

`2*A024444(n)-A024441(n)`
-/

namespace A025009.P13514935143129531506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024444 n - A024441 n

end

end A025009.P13514935143129531506

namespace A025009

/-- `2*A024444(n)-A024441(n)` -/
def P13514935143129531506.Spec : Prop :=
  ∀ n, P13514935143129531506.a n = A025009 n

end A025009

/-! ## A025009.P7469519507354667218

`∑[2*A020979(n)-A020977(n)]`
-/

namespace A025009.P7469519507354667218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020979 n - A020977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025009.P7469519507354667218

namespace A025009

/-- `∑[2*A020979(n)-A020977(n)]` -/
def P7469519507354667218.Spec : Prop :=
  ∀ n, P7469519507354667218.a n = A025009 n

end A025009

/-! ## A025009.P18271158896333941483

`A016262(n+1)-A016261(n+1)`
-/

namespace A025009.P18271158896333941483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016262 (n + 1) - A016261 (n + 1)

end

end A025009.P18271158896333941483

namespace A025009

/-- `A016262(n+1)-A016261(n+1)` -/
def P18271158896333941483.Spec : Prop :=
  ∀ n, P18271158896333941483.a n = A025009 n

end A025009

/-! ## A025009.P9342830116348863892

`A016262(n)+A020982(n)-A016261(n)`
-/

namespace A025009.P9342830116348863892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016262 n + (A020982 n - A016261 n)

end

end A025009.P9342830116348863892

namespace A025009

/-- `A016262(n)+A020982(n)-A016261(n)` -/
def P9342830116348863892.Spec : Prop :=
  ∀ n, P9342830116348863892.a n = A025009 n

end A025009

/-! ## A025009.P6785061149633338657

`A016265(n)+A020982(n)-A016262(n)`
-/

namespace A025009.P6785061149633338657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016265 n + (A020982 n - A016262 n)

end

end A025009.P6785061149633338657

namespace A025009

/-- `A016265(n)+A020982(n)-A016262(n)` -/
def P6785061149633338657.Spec : Prop :=
  ∀ n, P6785061149633338657.a n = A025009 n

end A025009

/-! ## A025009.P8920263278221235544

`A016265(n+1)-A016262(n+1)`
-/

namespace A025009.P8920263278221235544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016265 (n + 1) - A016262 (n + 1)

end

end A025009.P8920263278221235544

namespace A025009

/-- `A016265(n+1)-A016262(n+1)` -/
def P8920263278221235544.Spec : Prop :=
  ∀ n, P8920263278221235544.a n = A025009 n

end A025009

/-! ## A025009.P15700766892977610553

`∑[2*A020983(n)-A020984(n)]`
-/

namespace A025009.P15700766892977610553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020983 n - A020984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025009.P15700766892977610553

namespace A025009

/-- `∑[2*A020983(n)-A020984(n)]` -/
def P15700766892977610553.Spec : Prop :=
  ∀ n, P15700766892977610553.a n = A025009 n

end A025009

/-!
# A025010: a(1) = 5; a(n+1) = a(n)-th nonprime, where nonprimes begin at 4.

The programs for A025010, there is no canonical definition to state claims against.
-/

/-! ## A025010.P5278661503052422746

`A114577(∑[n+3]+7)`
-/

namespace A025010.P5278661503052422746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A025010.P5278661503052422746

/-! ## A025010.P15242104821959396085

`or(char[7], A114577(A167614(n+2)+1))`
-/

namespace A025010.P15242104821959396085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114577 (A167614 (n + 2) + 1).toNat)

end

end A025010.P15242104821959396085

/-! ## A025010.P10461379488167198531

`or(char[7], A114577(A000217(n+3)+4))`
-/

namespace A025010.P10461379488167198531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114577 (A000217 (n + 3) + 4).toNat)

end

end A025010.P10461379488167198531

/-! ## A025010.P16836686047734906858

`record[A114577(A000217(C(3, n+1)+n)+4)]`
-/

namespace A025010.P16836686047734906858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000217 (Nat.choose 3 (n + 1) + n) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025010.P16836686047734906858

/-! ## A025010.P3919566217193144499

`A114577(Δ[A008778(n)]+6)%A017488(n)`
-/

namespace A025010.P3919566217193144499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114577 (f1 (n + 1) - f1 n + 6).toNat) (A017488 n)

end

end A025010.P3919566217193144499

/-! ## A025010.P16528406366256857217

`A114577(A000217(n+3)+4)+A000007(n+1)`
-/

namespace A025010.P16528406366256857217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000217 (n + 3) + 4).toNat + A000007 (n + 1)

end

end A025010.P16528406366256857217

/-! ## A025010.P10353093804561325342

`A000034(2*n)*A114577(A000217(n+3)+4)`
-/

namespace A025010.P10353093804561325342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A114577 (A000217 (n + 3) + 4).toNat

end

end A025010.P10353093804561325342

/-! ## A025010.P3991170620733327437

`A114577(A000217(n+3)+4)%A000041(n+9)`
-/

namespace A025010.P3991170620733327437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114577 (A000217 (n + 3) + 4).toNat) (A000041 (n + 9))

end

end A025010.P3991170620733327437

/-! ## A025010.P12514081783850354836

`A007318(C(2, n))*A114577(A000217(n+3)+4)`
-/

namespace A025010.P12514081783850354836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A114577 (A000217 (n + 3) + 4).toNat

end

end A025010.P12514081783850354836

/-! ## A025010.P18417764982123452626

`A014963(6*(n+1))*A114577(A000217(n+3)+4)`
-/

namespace A025010.P18417764982123452626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A114577 (A000217 (n + 3) + 4).toNat

end

end A025010.P18417764982123452626

/-! ## A025010.P2149389859007338212

`A114577(A000217(n+3)+4)+A008683(lcm(4, n+2))`
-/

namespace A025010.P2149389859007338212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000217 (n + 3) + 4).toNat + A008683 (Nat.lcm 4 (n + 2))

end

end A025010.P2149389859007338212

/-!
# A025011: a(1) = 7; a(n+1) = a(n)-th composite.

The programs for A025011, there is no canonical definition to state claims against.
-/

/-! ## A025011.P2911486209855196121

`A114577(∑[n+4]+11)`
-/

namespace A025011.P2911486209855196121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A025011.P2911486209855196121

/-! ## A025011.P10741451293372316904

`A002808(a(n-1))` with `a(0)=7`
-/

namespace A025011.P10741451293372316904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A002808 (a (n - 1)).toNat

end

end A025011.P10741451293372316904

/-! ## A025011.P16105247120598482702

`A018252(a(n-1)+1)` with `a(0)=7`
-/

namespace A025011.P16105247120598482702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A018252 (a (n - 1) + 1).toNat

end

end A025011.P16105247120598482702

/-! ## A025011.P10669280623980697294

`A056653(a(n-1))` with `a(0)=7`
-/

namespace A025011.P10669280623980697294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A056653 (a (n - 1)).toNat

end

end A025011.P10669280623980697294

/-! ## A025011.P8684903682533520322

`A072668(a(n-1))+1` with `a(0)=7`
-/

namespace A025011.P8684903682533520322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A072668 (a (n - 1)).toNat + 1

end

end A025011.P8684903682533520322

/-!
# A025012: Central heptanomial coefficients: largest coefficient of (1+x+...+x^6)^n.

The programs for A025012, there is no canonical definition to state claims against.
-/

/-! ## A025012.P17211192524434813207

`A201552(∑[n+2]-1)`
-/

namespace A025012.P17211192524434813207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A025012.P17211192524434813207

/-! ## A025012.P1286871705361816137

`or(1, A201552(A034856(n+1)))`
-/

namespace A025012.P1286871705361816137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A201552 (A034856 (n + 1)).toNat)

end

end A025012.P1286871705361816137

/-! ## A025012.P6631621373472354886

`A201552(A034856(n+1))^A000038(n)!`
-/

namespace A025012.P6631621373472354886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A034856 (n + 1)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A025012.P6631621373472354886

/-! ## A025012.P11780367781952607049

`A201552(A034856(n+1))%A185514(n+1)`
-/

namespace A025012.P11780367781952607049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201552 (A034856 (n + 1)).toNat) (A185514 (n + 1))

end

end A025012.P11780367781952607049

/-! ## A025012.P2062720577036642027

`A201552(A034856(n+1))^(A267596(n)%2)`
-/

namespace A025012.P2062720577036642027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201552 (A034856 (n + 1)).toNat : ℚ) ^ (Int.tmod (A267596 n) 2 : ℤ)

end

end A025012.P2062720577036642027

/-! ## A025012.P1155619055371974943

`A014963(4*n+10)*A201552(A034856(n+1))`
-/

namespace A025012.P1155619055371974943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A201552 (A034856 (n + 1)).toNat

end

end A025012.P1155619055371974943

/-! ## A025012.P14652478170005993670

`Δ[A000720(n+1)]!*A201552(A034856(n+1))`
-/

namespace A025012.P14652478170005993670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) * A201552 (A034856 (n + 1)).toNat

end

end A025012.P14652478170005993670

/-! ## A025012.P1220823090214245435

`A063265(A049451(n))`
-/

namespace A025012.P1220823090214245435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063265 (A049451 n).toNat

end

end A025012.P1220823090214245435

/-!
# A025013: Central octonomial coefficients: largest coefficient of (1+x+...+x^7)^n.

The programs for A025013, there is no canonical definition to state claims against.
-/

/-! ## A025013.P4142812904258579060

`A077042(A167487(n+7)+1)`
-/

namespace A025013.P4142812904258579060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A167487 (n + 7) + 1).toNat

end

end A025013.P4142812904258579060

/-! ## A025013.P12024079753541369492

`A077042(A167499(n+7)+3)`
-/

namespace A025013.P12024079753541369492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A167499 (n + 7) + 3).toNat

end

end A025013.P12024079753541369492

/-! ## A025013.P10673963932695710817

`A077042(eq[9, A002260(n+1)])`
-/

namespace A025013.P10673963932695710817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025013.P10673963932695710817

/-! ## A025013.P3417479762916424462

`A077042(A055999(n+8)-A016777(n+5))`
-/

namespace A025013.P3417479762916424462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A055999 (n + 8) - A016777 (n + 5)).toNat

end

end A025013.P3417479762916424462

/-! ## A025013.P16521874661736071727

`A077042(A000217(n+10)-10-A005408(n))`
-/

namespace A025013.P16521874661736071727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000217 (n + 10) - 10 - A005408 n).toNat

end

end A025013.P16521874661736071727

/-!
# A025014: Central "nonomial" coefficient: largest coefficient of (1+x+...+x^8)^n.

The programs for A025014, there is no canonical definition to state claims against.
-/

/-! ## A025014.P11837972583984885615

`A201552(eq[2, A008284(n+1)])`
-/

namespace A025014.P11837972583984885615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025014.P11837972583984885615

/-! ## A025014.P15652227899043033903

`A201552(A027379(n)+3+n)`
-/

namespace A025014.P15652227899043033903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A027379 n + 3 + (n : ℤ)).toNat

end

end A025014.P15652227899043033903

/-! ## A025014.P2394143212322416966

`A201552(A000007(n)+∑[n+3])`
-/

namespace A025014.P2394143212322416966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A025014.P2394143212322416966

/-! ## A025014.P16707903749111570616

`A201552(∑[n+3]^A178334(n))`
-/

namespace A025014.P16707903749111570616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A025014.P16707903749111570616

/-! ## A025014.P12041745522822834548

`A201552(∑[n+3]%A223145(n+1))`
-/

namespace A025014.P12041745522822834548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A223145 (n + 1))).toNat

end

end A025014.P12041745522822834548

/-! ## A025014.P15219963244392813323

`A201552(A046691(n+1)-A057428(n))`
-/

namespace A025014.P15219963244392813323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A046691 (n + 1) - A057428 n).toNat

end

end A025014.P15219963244392813323

/-! ## A025014.P3677895404087386802

`A201552(A052905(n)+1-A057428(n))`
-/

namespace A025014.P3677895404087386802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A052905 n + (1 - A057428 n)).toNat

end

end A025014.P3677895404087386802

/-! ## A025014.P8644052746266505171

`A201552(A055999(n)+A178334(n)+2)`
-/

namespace A025014.P8644052746266505171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A055999 n + (A178334 n + 2)).toNat

end

end A025014.P8644052746266505171

/-! ## A025014.P2214918323478184340

`A201552(1-(A057428(n)-A052905(n)))`
-/

namespace A025014.P2214918323478184340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (1 - (A057428 n - A052905 n)).toNat

end

end A025014.P2214918323478184340

/-! ## A025014.P3244149031953192705

`A201552(A055999(n)+2-A057428(n))`
-/

namespace A025014.P3244149031953192705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A055999 n + (2 - A057428 n)).toNat

end

end A025014.P3244149031953192705

/-!
# A025015: Central decanomial coefficients: largest coefficient of (1 + x + ... + x^9)^n.

The programs for A025015, there is no canonical definition to state claims against.
-/

/-! ## A025015.P5082717591941296645

`A077042(A000124(n+11)-(n+2))`
-/

namespace A025015.P5082717591941296645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A025015.P5082717591941296645

/-! ## A025015.P8256347519815203394

`A213651(A022267(n)+A004525(n))`
-/

namespace A025015.P8256347519815203394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 (A022267 n + A004525 n).toNat

end

end A025015.P8256347519815203394

/-! ## A025015.P1190525743586482868

`A213651(A123108(n)+A022267(n))`
-/

namespace A025015.P1190525743586482868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 (A123108 n + A022267 n).toNat

end

end A025015.P1190525743586482868

/-! ## A025015.P9588835783239337672

`A213651(A038764(n)-A008619(n))`
-/

namespace A025015.P9588835783239337672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 (A038764 n - A008619 n).toNat

end

end A025015.P9588835783239337672

/-! ## A025015.P15700303839874726545

`A213651(n-(A004525(n)-A022267(n)))`
-/

namespace A025015.P15700303839874726545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 ((n : ℤ) - (A004525 n - A022267 n)).toNat

end

end A025015.P15700303839874726545

/-!
# A025016: Final digits of !n = Sum_{i=0..n} i! (A003422) for very large n, read from right.

The programs for A025016, there is no canonical definition to state claims against.
-/

/-! ## A025016.P4832988671473131191

`A000007(n)+9-A065356(n)`
-/

namespace A025016.P4832988671473131191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A065356 n)

end

end A025016.P4832988671473131191

/-! ## A025016.P7426324853176090127

`char[A016855(n)]+9-A065356(n)`
-/

namespace A025016.P7426324853176090127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016855 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (9 - A065356 n)

end

end A025016.P7426324853176090127

/-! ## A025016.P14954244456505496607

`A010051(2*(n+1))+9-A065356(n)`
-/

namespace A025016.P14954244456505496607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (9 - A065356 n)

end

end A025016.P14954244456505496607

/-! ## A025016.P13567609203023610987

`A008864(n+1)%2+9-A065356(n)`
-/

namespace A025016.P13567609203023610987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1)) 2 + (9 - A065356 n)

end

end A025016.P13567609203023610987

/-! ## A025016.P14139964401042505165

`A008683(A008574(n))+9-A065356(n)`
-/

namespace A025016.P14139964401042505165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (9 - A065356 n)

end

end A025016.P14139964401042505165

/-! ## A025016.P12488088414760054285

`A008683(A022144(n))+9-A065356(n)`
-/

namespace A025016.P12488088414760054285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A022144 n).toNat + (9 - A065356 n)

end

end A025016.P12488088414760054285

/-! ## A025016.P6108130655881840782

`A133943(A001316(n))+9-A065356(n)`
-/

namespace A025016.P6108130655881840782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133943 (A001316 n).toNat + (9 - A065356 n)

end

end A025016.P6108130655881840782

/-! ## A025016.P7658755348032094232

`A082648(n+1)+A000007(n)`
-/

namespace A025016.P7658755348032094232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082648 (n + 1) + A000007 n

end

end A025016.P7658755348032094232

/-! ## A025016.P18075288345415164296

`A064733(n)+A064734(n)-A065356(n)`
-/

namespace A025016.P18075288345415164296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064733 n + (A064734 n - A065356 n)

end

end A025016.P18075288345415164296

/-! ## A025016.P15368276184481824219

`A008683((n+1)²)+9-A065356(n)`
-/

namespace A025016.P15368276184481824219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (9 - A065356 n)

end

end A025016.P15368276184481824219

/-!
# A025017: a(n) = least 2k such that p is the least prime in a Goldbach partition of 2k, where p = prime(n).

The programs for A025017, there is no canonical definition to state claims against.
-/

/-! ## A025017.P4306541007651607774

`A133427(n+1)%A290016(A163876(n))`
-/

namespace A025017.P4306541007651607774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133427 (n + 1)) (A290016 (A163876 n).toNat)

end

end A025017.P4306541007651607774

/-!
# A025018: Numbers k such that least prime in the Goldbach partition of k increases.

The programs for A025018, there is no canonical definition to state claims against.
-/

/-! ## A025018.P11791322635536790458

`A025017(∏{p}[A025019(n+1), A000720(#)])`
-/

namespace A025018.P11791322635536790458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A025018.P11791322635536790458

/-! ## A025018.P12623935854647839762

`A025017(∏{p}[A025019(n+1), A003963(#)])`
-/

namespace A025018.P12623935854647839762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003963 p).toNat

end

end A025018.P12623935854647839762

/-! ## A025018.P17322573562376869522

`A025017(∏{p}[A025019(n+1), A049084(#)])`
-/

namespace A025018.P17322573562376869522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A049084 p).toNat

end

end A025018.P17322573562376869522

/-! ## A025018.P12590593514424708325

`A025017(A116111(n+1))`
-/

namespace A025018.P12590593514424708325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (A116111 (n + 1)).toNat

end

end A025018.P12590593514424708325

/-!
# A025019: Smallest prime in Goldbach partition of A025018(n).

The programs for A025019, there is no canonical definition to state claims against.
-/

/-! ## A025019.P4124343407634347897

`A000040(A116111(n+1))`
-/

namespace A025019.P4124343407634347897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A116111 (n + 1)).toNat

end

end A025019.P4124343407634347897

/-! ## A025019.P6128365954980009564

`A008578(A116111(n+1)+1)`
-/

namespace A025019.P6128365954980009564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A116111 (n + 1) + 1).toNat

end

end A025019.P6128365954980009564

/-! ## A025019.P4835205440652774599

`A073846(2*A116111(n+1))`
-/

namespace A025019.P4835205440652774599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A116111 (n + 1)).toNat

end

end A025019.P4835205440652774599

/-! ## A025019.P12921257796092476865

`A082500(2*A116111(n+1))`
-/

namespace A025019.P12921257796092476865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A116111 (n + 1)).toNat

end

end A025019.P12921257796092476865

/-! ## A025019.P1604201023865820507

`A207790(2*A116111(n+1))`
-/

namespace A025019.P1604201023865820507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A116111 (n + 1)).toNat

end

end A025019.P1604201023865820507

/-!
# A025020: Numbers whose least quadratic nonresidue (A020649) is 2.

The programs for A025020, the canonical program `A025020.P18212951843414993576` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025020 has offset 1).

The definition of A025020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025020.P3064477318419441004

`comp[A057126(n+1)-1]+1`
-/

namespace A025020.P3064477318419441004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A025020.P3064477318419441004

namespace A025020

/-- `comp[A057126(n+1)-1]+1` -/
def P3064477318419441004.Spec : Prop :=
  ∀ n, (P3064477318419441004.a n : ℤ) = A025020 (n + 1)

end A025020

/-! ## A025020.P10482698897923417417

`eq[2, A020649(n+3)]+3`
-/

namespace A025020.P10482698897923417417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A025020.P10482698897923417417

namespace A025020

/-- `eq[2, A020649(n+3)]+3` -/
def P10482698897923417417.Spec : Prop :=
  ∀ n, (P10482698897923417417.a n : ℤ) = A025020 (n + 1)

end A025020

/-! ## A025020.P18212951843414993576

`eq[0, A087780(n+2)]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A025020

/-- `eq[0, A087780(n+2)]+2` -/
def P18212951843414993576.Spec : Prop :=
  ∀ n, (P18212951843414993576.a n : ℤ) = A025020 (n + 1)

theorem P18212951843414993576.correct : P18212951843414993576.Spec := by
  intro n
  simp only [A025020, Nat.add_sub_cancel]

end A025020

/-! ## A025020.P8678488620250968540

`lt[A087780(n+1), 1]+1`
-/

namespace A025020.P8678488620250968540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025020.P8678488620250968540

namespace A025020

/-- `lt[A087780(n+1), 1]+1` -/
def P8678488620250968540.Spec : Prop :=
  ∀ n, (P8678488620250968540.a n : ℤ) = A025020 (n + 1)

end A025020

/-! ## A025020.P1133901958393072803

`eq[1, A087780(A028310(n))+1]`
-/

namespace A025020.P1133901958393072803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025020.P1133901958393072803

namespace A025020

/-- `eq[1, A087780(A028310(n))+1]` -/
def P1133901958393072803.Spec : Prop :=
  ∀ n, (P1133901958393072803.a n : ℤ) = A025020 (n + 1)

end A025020

/-! ## A025020.P4788452493818124484

`eq[0, A087780(A257174(n))]`
-/

namespace A025020.P4788452493818124484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A257174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025020.P4788452493818124484

namespace A025020

/-- `eq[0, A087780(A257174(n))]` -/
def P4788452493818124484.Spec : Prop :=
  ∀ n, (P4788452493818124484.a n : ℤ) = A025020 (n + 1)

end A025020

/-! ## A025020.P12428083916347863619

`comp[A184221(n+1)]`
-/

namespace A025020.P12428083916347863619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A025020.P12428083916347863619

namespace A025020

/-- `comp[A184221(n+1)]` -/
def P12428083916347863619.Spec : Prop :=
  ∀ n, (P12428083916347863619.a n : ℤ) = A025020 (n + 1)

end A025020

/-! ## A025020.P11193212954053020315

`eq[0, A087780(A233583(n+1))]`
-/

namespace A025020.P11193212954053020315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025020.P11193212954053020315

namespace A025020

/-- `eq[0, A087780(A233583(n+1))]` -/
def P11193212954053020315.Spec : Prop :=
  ∀ n, (P11193212954053020315.a n : ℤ) = A025020 (n + 1)

end A025020

/-!
# A025021: Numbers whose least quadratic nonresidue (A020649) is 3.

The programs for A025021, there is no canonical definition to state claims against.
-/

/-! ## A025021.P17460244580901287378

`eq[3, A020649(n+3)]+3`
-/

namespace A025021.P17460244580901287378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A025021.P17460244580901287378

/-! ## A025021.P10213813885113299244

`eq[2, 2*a(A020649(n)-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A025021.P10213813885113299244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  2 * f2 (A020649 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025021.P10213813885113299244

/-! ## A025021.P16322625337266540993

`A009005(eq[3, A020649(n+3)])`
-/

namespace A025021.P16322625337266540993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025021.P16322625337266540993

/-!
# A025022: Numbers whose least quadratic nonresidue (A020649) is 5.

The programs for A025022, there is no canonical definition to state claims against.
-/

/-! ## A025022.P7884681315776429401

`eq[5, A020649(n+3)]+3`
-/

namespace A025022.P7884681315776429401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A025022.P7884681315776429401

/-! ## A025022.P13298309925460352247

`eq[2, 2*a(A020649(n)-1)]` with `a(0)=1, a(1)=5, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A025022.P13298309925460352247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 0, 0, 1] fun n f2 =>
  2 * f2 (A020649 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025022.P13298309925460352247

/-! ## A025022.P11336990019279652015

`A009005(eq[5, A020649(n+3)])`
-/

namespace A025022.P11336990019279652015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025022.P11336990019279652015

/-! ## A025022.P1649786107930718454

`eq[5, A020649(n*A095112(a(n-1)))]` with `a(0)=3, a(1)=4`
-/

namespace A025022.P1649786107930718454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  A020649 ((n : ℤ) * A095112 (f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025022.P1649786107930718454

/-!
# A025023: Numbers whose least quadratic nonresidue (A020649) is 7.

The programs for A025023, there is no canonical definition to state claims against.
-/

/-! ## A025023.P11891177491213400610

`eq[7, A020649(n+3)]+3`
-/

namespace A025023.P11891177491213400610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A025023.P11891177491213400610

/-! ## A025023.P3619596819476860798

`A009005(eq[7, A020649(n+3)])`
-/

namespace A025023.P3619596819476860798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025023.P3619596819476860798

/-!
# A025025: Numbers whose least quadratic nonresidue (A020649) is 13.

The programs for A025025, there is no canonical definition to state claims against.
-/

/-! ## A025025.P10696113314678501310

`A323051(A033076(n+1)^∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A025025.P10696113314678501310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323051 (SequenceMachineLib.roundAway ((A033076 (n + 1) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ)) : ℤ))).toNat

end

end A025025.P10696113314678501310

/-!
# A025030: Number of antichains in the product of a fence poset with n elements and a chain with 6 elements; also number of paths with n turns when light is reflected from 7 glass plates.

The programs for A025030, there is no canonical definition to state claims against.
-/

/-! ## A025030.P8934948546302735246

`A050447(A052905(n+4)-2)`
-/

namespace A025030.P8934948546302735246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A052905 (n + 4) - 2).toNat

end

end A025030.P8934948546302735246

/-! ## A025030.P4851985370854354486

`A050447(A000217(n+7)-7)`
-/

namespace A025030.P4851985370854354486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 7) - 7).toNat

end

end A025030.P4851985370854354486

/-! ## A025030.P813568749272989774

`A050447(Δ[A023551(n+2)]-1)`
-/

namespace A025030.P813568749272989774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (f1 (n + 1) - f1 n - 1).toNat

end

end A025030.P813568749272989774

/-! ## A025030.P1706958024060318684

`A050447(A167499(n+2)+4*n+10)`
-/

namespace A025030.P1706958024060318684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167499 (n + 2) + (4 * n + 10 : ℤ)).toNat

end

end A025030.P1706958024060318684

/-! ## A025030.P5327040102341517921

`A050447(A002061(n+5)-A000096(n))`
-/

namespace A025030.P5327040102341517921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A002061 (n + 5) - A000096 n).toNat

end

end A025030.P5327040102341517921

/-! ## A025030.P18236684623676953765

`A050447(A167614(n+4)+A005408(n+1))`
-/

namespace A025030.P18236684623676953765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167614 (n + 4) + A005408 (n + 1)).toNat

end

end A025030.P18236684623676953765

/-! ## A025030.P6085954367417070471

`A050447(A004273(n+4)+A000096(n+4))`
-/

namespace A025030.P6085954367417070471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A004273 (n + 4) + A000096 (n + 4)).toNat

end

end A025030.P6085954367417070471

/-!
# A025031: Expansion of 1/((1-x)*(1-9*x)*(1-10*x)*(1-12*x)).

The programs for A025031, the canonical program `A025031.P17676341836520948138` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025031 has offset 0).

The definition of A025031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025031.P17676341836520948138

`(12^(n+4)-44*10^(n+3)+33*9^(n+3)-1)/792`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025031

/-- `(12^(n+4)-44*10^(n+3)+33*9^(n+3)-1)/792` -/
def P17676341836520948138.Spec : Prop :=
  ∀ n, P17676341836520948138.a n = (A025031 n : ℚ)

end A025031

/-! ## A025031.P6607968201544405199

`∑[A020983(n)]`
-/

namespace A025031.P6607968201544405199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025031.P6607968201544405199

namespace A025031

/-- `∑[A020983(n)]` -/
def P6607968201544405199.Spec : Prop :=
  ∀ n, P6607968201544405199.a n = A025031 n

end A025031

/-! ## A025031.P6300144614068062351

`A016263(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A025031.P6300144614068062351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016263 n + 10 * a (n - 1)

end

end A025031.P6300144614068062351

namespace A025031

/-- `A016263(n)+10*a(n-1)` -/
def P6300144614068062351.Spec : Prop :=
  ∀ n, P6300144614068062351.a n = A025031 n

end A025031

/-! ## A025031.P10120018229886956382

`2*A024778(n)-A024771(n)`
-/

namespace A025031.P10120018229886956382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024778 n - A024771 n

end

end A025031.P10120018229886956382

namespace A025031

/-- `2*A024778(n)-A024771(n)` -/
def P10120018229886956382.Spec : Prop :=
  ∀ n, P10120018229886956382.a n = A025031 n

end A025031

/-! ## A025031.P7237843034279097111

`∑[(A020984(n)+A020982(n))/2]`
-/

namespace A025031.P7237843034279097111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020984 n + A020982 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025031.P7237843034279097111

namespace A025031

/-- `∑[(A020984(n)+A020982(n))/2]` -/
def P7237843034279097111.Spec : Prop :=
  ∀ n, P7237843034279097111.a n = (A025031 n : ℚ)

end A025031

/-! ## A025031.P16928583451232597227

`A024443(n)+A024445(n)-A024441(n)`
-/

namespace A025031.P16928583451232597227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024443 n + (A024445 n - A024441 n)

end

end A025031.P16928583451232597227

namespace A025031

/-- `A024443(n)+A024445(n)-A024441(n)` -/
def P16928583451232597227.Spec : Prop :=
  ∀ n, P16928583451232597227.a n = A025031 n

end A025031

/-! ## A025031.P8318538726448986530

`A016267(n+1)-A016263(n+1)`
-/

namespace A025031.P8318538726448986530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016267 (n + 1) - A016263 (n + 1)

end

end A025031.P8318538726448986530

namespace A025031

/-- `A016267(n+1)-A016263(n+1)` -/
def P8318538726448986530.Spec : Prop :=
  ∀ n, P8318538726448986530.a n = A025031 n

end A025031

/-!
# A025032: Numbers with an increasing number of non-residues (moduli).

The programs for A025032, there is no canonical definition to state claims against.
-/

/-! ## A025032.P2209326448794348001

`ceil(eq[A168181(n), A331984(n)]/2)`
-/

namespace A025032.P2209326448794348001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2⌉

end

end A025032.P2209326448794348001

/-! ## A025032.P8721488027091742898

`lt[A213166(n^(n%2)), Δ[A278219(n)]]`
-/

namespace A025032.P8721488027091742898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213166 (n ^ (n % 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025032.P8721488027091742898

/-! ## A025032.P4892576344324976759

`eq[A029362(n), A048766(A341495(n))]`
-/

namespace A025032.P4892576344324976759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A341495 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025032.P4892576344324976759

/-! ## A025032.P2679357992463252027

`A065033(eq[A168181(n), A331984(n)])`
-/

namespace A025032.P2679357992463252027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A025032.P2679357992463252027

/-!
# A025033: Increasing number of non-residues (number of non-residues).

The programs for A025033, there is no canonical definition to state claims against.
-/

/-! ## A025033.P10844158106788001191

`record[A095972(n+1)]`
-/

namespace A025033.P10844158106788001191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025033.P10844158106788001191

/-! ## A025033.P8264431605605752683

`record[n-A105612(n+1)]`
-/

namespace A025033.P8264431605605752683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025033.P8264431605605752683

/-! ## A025033.P17329238333283825742

`record[1-A000224(n+1)+n]`
-/

namespace A025033.P17329238333283825742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000224 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025033.P17329238333283825742

/-! ## A025033.P15893617756141180572

`A095972(A025032(n+1))`
-/

namespace A025033.P15893617756141180572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (A025032 (n + 1)).toNat

end

end A025033.P15893617756141180572

/-! ## A025033.P9664032065150944042

`record[A005408(n)%(A000224(n+1)+n)]`
-/

namespace A025033.P9664032065150944042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A000224 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025033.P9664032065150944042

/-! ## A025033.P9859951071462989355

`record[-A000224(n+1)%A246449(n+1)+n+1]`
-/

namespace A025033.P9859951071462989355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A000224 (n + 1)) (A246449 (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025033.P9859951071462989355

/-!
# A025035: Number of partitions of { 1, 2, ..., 3n } into sets of size 3.

The programs for A025035, the canonical program `A025035.P2213842418962910782` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025035 has offset 0).

The definition of A025035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025035.P2213842418962910782

`(3*n)!/(n!*6^n)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025035

/-- `(3*n)!/(n!*6^n)` -/
def P2213842418962910782.Spec : Prop :=
  ∀ n, P2213842418962910782.a n = (A025035 n : ℚ)

end A025035

/-! ## A025035.P4624923633653043933

`∏[∑[a(n-1)+9]]` with `a(0)=1, a(1)=0`
-/

namespace A025035.P4624923633653043933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025035.P4624923633653043933

namespace A025035

/-- `∏[∑[a(n-1)+9]]` -/
def P4624923633653043933.Spec : Prop :=
  ∀ n, (P4624923633653043933.a n : ℤ) = A025035 n

end A025035

/-! ## A025035.P10298315119105469771

`∏[∑[9*n-8]+9-n]`
-/

namespace A025035.P10298315119105469771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025035.P10298315119105469771

namespace A025035

/-- `∏[∑[9*n-8]+9-n]` -/
def P10298315119105469771.Spec : Prop :=
  ∀ n, P10298315119105469771.a n = A025035 n

end A025035

/-! ## A025035.P997512393492873164

`C(3*n-1, 2)*a(n-1)` with `a(0)=1`
-/

namespace A025035.P997512393492873164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((3 * n : ℤ) - 1).toNat 2 * a (n - 1)

end

end A025035.P997512393492873164

namespace A025035

/-- `C(3*n-1, 2)*a(n-1)` -/
def P997512393492873164.Spec : Prop :=
  ∀ n, (P997512393492873164.a n : ℤ) = A025035 n

end A025035

/-! ## A025035.P11631680598042827825

`((n-1)*9*n+2)*a(n-1)/2` with `a(0)=1`
-/

namespace A025035.P11631680598042827825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n : ℤ) - 1) * (9 * n : ℤ) + 2 : ℚ) * a (n - 1) / 2

end

end A025035.P11631680598042827825

namespace A025035

/-- `((n-1)*9*n+2)*a(n-1)/2` -/
def P11631680598042827825.Spec : Prop :=
  ∀ n, P11631680598042827825.a n = (A025035 n : ℚ)

end A025035

/-!
# A025036: Number of partitions of { 1, 2, ..., 4n } into sets of size 4.

The programs for A025036, there is no canonical definition to state claims against.
-/

/-! ## A025036.P15741815616477335219

`a(n-1)*C(4*n-1, 3)` with `a(0)=1`
-/

namespace A025036.P15741815616477335219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * Nat.choose ((4 * n : ℤ) - 1).toNat 3

end

end A025036.P15741815616477335219

/-! ## A025036.P10023041080757019996

`A144643(n*(2*n+3))`
-/

namespace A025036.P10023041080757019996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144643 (n * (2 * n + 3))

end

end A025036.P10023041080757019996

/-! ## A025036.P15186303243897918983

`a(n-1)*A015219(n-1)` with `a(0)=1`
-/

namespace A025036.P15186303243897918983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A015219 (n - 1)

end

end A025036.P15186303243897918983

/-! ## A025036.P18343643914522757255

`∏[A000447(abs(A060747(n)))]`
-/

namespace A025036.P18343643914522757255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 |A060747 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025036.P18343643914522757255

/-! ## A025036.P4669097354661526982

`∏[A000447(abs(A165747(n)))]`
-/

namespace A025036.P4669097354661526982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 |A165747 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025036.P4669097354661526982

/-!
# A025037: Number of partitions of { 1, 2, ..., 5n } into sets of size 5.

The programs for A025037, there is no canonical definition to state claims against.
-/

/-! ## A025037.P4511432459228323051

`a(n-1)*C(5*n-1, 4)` with `a(0)=1`
-/

namespace A025037.P4511432459228323051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * Nat.choose ((5 * n : ℤ) - 1).toNat 4

end

end A025037.P4511432459228323051

/-! ## A025037.P7968752287801178655

`A014609(n)/A000142(n)`
-/

namespace A025037.P7968752287801178655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014609 n : ℚ) / (A000142 n : ℚ)

end

end A025037.P7968752287801178655

/-! ## A025037.P183417256063764521

`A060540(A052905(n+1)+1)`
-/

namespace A025037.P183417256063764521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (A052905 (n + 1) + 1).toNat

end

end A025037.P183417256063764521

/-!
# A025038: Number of partitions of { 1, 2, ..., 6n } into sets of size 6.

The programs for A025038, there is no canonical definition to state claims against.
-/

/-! ## A025038.P1851606781715314224

`A060540(A052905(n+2))`
-/

namespace A025038.P1851606781715314224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (A052905 (n + 2)).toNat

end

end A025038.P1851606781715314224

/-! ## A025038.P880964796944206644

`A060540(eq[4, A193592(n+1)])`
-/

namespace A025038.P880964796944206644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025038.P880964796944206644

/-!
# A025039: 

The programs for A025039, there is no canonical definition to state claims against.
-/

/-! ## A025039.P2167225583828872462

`∏[C(A017053(n), 6)]`
-/

namespace A025039.P2167225583828872462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A017053 n).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025039.P2167225583828872462

/-! ## A025039.P8148422282957611402

`A060540(eq[4, A219347(n)])`
-/

namespace A025039.P8148422282957611402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025039.P8148422282957611402

/-! ## A025039.P17751808055512708149

`A060540(eq[6, A193592(n)])`
-/

namespace A025039.P17751808055512708149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025039.P17751808055512708149

/-! ## A025039.P4806393456291422678

`A060540(eq[7, A200370(n+1)])`
-/

namespace A025039.P4806393456291422678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025039.P4806393456291422678

/-! ## A025039.P12867449591027047250

`A060540(eq[10, A185782(n+1)])`
-/

namespace A025039.P12867449591027047250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025039.P12867449591027047250

/-!
# A025040: Number of partitions of { 1, 2, ..., 8n } into sets of size 8.

The programs for A025040, there is no canonical definition to state claims against.
-/

/-! ## A025040.P8022140074866532372

`A060540(eq[6, A193592(n+1)])`
-/

namespace A025040.P8022140074866532372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025040.P8022140074866532372

/-! ## A025040.P13591567564934498989

`A060540(A000124(n+6)+n-1)`
-/

namespace A025040.P13591567564934498989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A025040.P13591567564934498989

/-!
# A025041: 

The programs for A025041, there is no canonical definition to state claims against.
-/

/-! ## A025041.P9555580442915532737

`A060540(eq[7, A193592(n+1)])`
-/

namespace A025041.P9555580442915532737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025041.P9555580442915532737

/-! ## A025041.P3584031839439078113

`A089759(eq[9, A002262(n)])/n!`
-/

namespace A025041.P3584031839439078113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (Nat.factorial n : ℚ)

end

end A025041.P3584031839439078113

/-!
# A025042: 

The programs for A025042, there is no canonical definition to state claims against.
-/

/-! ## A025042.P1199354366869187085

`A060540(eq[8, A193592(n+1)])`
-/

namespace A025042.P1199354366869187085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025042.P1199354366869187085

/-!
# A025043: a(n) is not of the form prime + a(k), k < n.

The programs for A025043, there is no canonical definition to state claims against.
-/

/-! ## A025043.P9079765150262870163

`A072545(n)-1`
-/

namespace A025043.P9079765150262870163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 n - 1

end

end A025043.P9079765150262870163

/-! ## A025043.P7632329833880009639

`∑[A332941(n+1)]-A332941(n+1)`
-/

namespace A025043.P7632329833880009639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332941 (n + 1)

end

end A025043.P7632329833880009639

/-! ## A025043.P12471035695015945885

`floor(A072545(n)/root(2, A072545(n+1)))`
-/

namespace A025043.P12471035695015945885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072545 n : ℝ) / (2 : ℝ) ^ (1 / (A072545 (n + 1) : ℝ))⌋

end

end A025043.P12471035695015945885

/-! ## A025043.P14738242466620624148

`A081729(A004771(n))+A072545(n)`
-/

namespace A025043.P14738242466620624148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A004771 n).toNat + A072545 n

end

end A025043.P14738242466620624148

/-! ## A025043.P10619266592579857973

`comp[A227691(n+1)]`
-/

namespace A025043.P10619266592579857973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A025043.P10619266592579857973

/-! ## A025043.P16133567957863993142

`eq[0, A014589(n)]`
-/

namespace A025043.P16133567957863993142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025043.P16133567957863993142

/-! ## A025043.P11962513891724463049

`A023443(A072545(n))`
-/

namespace A025043.P11962513891724463049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072545 n).toNat

end

end A025043.P11962513891724463049

/-! ## A025043.P8074701482223400396

`record[n-A254337(5*A014589(n))]`
-/

namespace A025043.P8074701482223400396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A254337 (5 * A014589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025043.P8074701482223400396

/-! ## A025043.P11021738405204496088

`record[gcd(A000027(n+1), A014589(n))-1]`
-/

namespace A025043.P11021738405204496088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000027 (n + 1)) (A014589 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025043.P11021738405204496088

/-! ## A025043.P16492765915280793215

`record[n-A014589(n)*A025044(n+1)]`
-/

namespace A025043.P16492765915280793215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014589 n * A025044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025043.P16492765915280793215

/-! ## A025043.P8411400602201115573

`lt[A014589(n), A014560(A014589(n+4))]`
-/

namespace A025043.P8411400602201115573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A014589 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025043.P8411400602201115573

/-! ## A025043.P4242884734254291093

`record[n-A014589(n)*A327042(n)]`
-/

namespace A025043.P4242884734254291093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014589 n * A327042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025043.P4242884734254291093

/-!
# A025044: a(n) not of form prime - a(k), k < n.

The programs for A025044, there is no canonical definition to state claims against.
-/

/-! ## A025044.P5927613099226565932

`∪[A068638(n+1), A007589(n)]`
-/

namespace A025044.P5927613099226565932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025044.P5927613099226565932

/-! ## A025044.P535150921475109228

`∪[A068638(n+1), A016913(n)]`
-/

namespace A025044.P535150921475109228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025044.P535150921475109228

/-! ## A025044.P17829371801708758217

`∪[A057666(n), A068638(n+1)]`
-/

namespace A025044.P17829371801708758217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057666 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025044.P17829371801708758217

/-! ## A025044.P11439654814190966095

`∪[A068638(n+1), A115828(n)]`
-/

namespace A025044.P11439654814190966095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025044.P11439654814190966095

/-! ## A025044.P13896500043187320238

`A068638(A028310(n))-A000007(n)`
-/

namespace A025044.P13896500043187320238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068638 (A028310 n).toNat - A000007 n

end

end A025044.P13896500043187320238

/-! ## A025044.P3666129962057826835

`A057427(n)*A068638(A028310(n))`
-/

namespace A025044.P3666129962057826835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A068638 (A028310 n).toNat

end

end A025044.P3666129962057826835

/-! ## A025044.P6886213961362972392

`A068638(A028310(n))%A001752(n)`
-/

namespace A025044.P6886213961362972392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068638 (A028310 n).toNat) (A001752 n)

end

end A025044.P6886213961362972392

/-! ## A025044.P15217182870552675600

`A068638(A000007(n)+n)-A000007(n)`
-/

namespace A025044.P15217182870552675600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068638 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A025044.P15217182870552675600

/-! ## A025044.P16338656990674746999

`record[A068638(A344180(n))%A001752(n)]`
-/

namespace A025044.P16338656990674746999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068638 (A344180 n).toNat) (A001752 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025044.P16338656990674746999

/-! ## A025044.P4318698013512234014

`record[A068638(A344180(n))-A000007(n)]`
-/

namespace A025044.P4318698013512234014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068638 (A344180 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025044.P4318698013512234014

/-! ## A025044.P5788681525477077070

`record[A057427(n)*A068638(A344180(n))]`
-/

namespace A025044.P5788681525477077070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A068638 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025044.P5788681525477077070

/-! ## A025044.P6946673079089374708

`record[A000035(n)*A068638(A008619(n))]`
-/

namespace A025044.P6946673079089374708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A068638 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025044.P6946673079089374708

/-! ## A025044.P17298190302528202725

`record[A000035(n)*A068638(A008620(n))]`
-/

namespace A025044.P17298190302528202725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A068638 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025044.P17298190302528202725

/-! ## A025044.P7739993546082874355

`A068638(A233583(n+1))%A022113(n)`
-/

namespace A025044.P7739993546082874355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068638 (A233583 (n + 1)).toNat) (A022113 n)

end

end A025044.P7739993546082874355

/-! ## A025044.P1613250615983047968

`A068638(A169803(A000124(n)))%A097136(n)`
-/

namespace A025044.P1613250615983047968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068638 (A169803 (A000124 n).toNat).toNat) (A097136 n)

end

end A025044.P1613250615983047968

/-!
# A025045: a(n) not of form prime +- a(k), k < n.

The programs for A025045, the canonical program `A025045.P4345398874468105076` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025045 has offset 1).

The definition of A025045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025045.P4345398874468105076

`eq[and(2, A175851(n+1)), A237420(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025045

/-- `eq[and(2, A175851(n+1)), A237420(n)]` -/
def P4345398874468105076.Spec : Prop :=
  ∀ n, (P4345398874468105076.a n : ℤ) = A025045 (n + 1)

theorem P4345398874468105076.correct : P4345398874468105076.Spec := by
  intro n
  simp only [A025045, Nat.add_sub_cancel]

end A025045

/-! ## A025045.P17463340809236089264

`eq[A021913(A175851(n+1)), A142150(n)]`
-/

namespace A025045.P17463340809236089264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A175851 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025045.P17463340809236089264

namespace A025045

/-- `eq[A021913(A175851(n+1)), A142150(n)]` -/
def P17463340809236089264.Spec : Prop :=
  ∀ n, (P17463340809236089264.a n : ℤ) = A025045 (n + 1)

end A025045

/-! ## A025045.P12463249415096528390

`eq[A021913(A175851(n+1)), A237420(n)]`
-/

namespace A025045.P12463249415096528390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A175851 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025045.P12463249415096528390

namespace A025045

/-- `eq[A021913(A175851(n+1)), A237420(n)]` -/
def P12463249415096528390.Spec : Prop :=
  ∀ n, (P12463249415096528390.a n : ℤ) = A025045 (n + 1)

end A025045

/-! ## A025045.P7776974271448156148

`eq[A165560(A175851(n+1))+n, A093048(n)]`
-/

namespace A025045.P7776974271448156148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A175851 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025045.P7776974271448156148

namespace A025045

/-- `eq[A165560(A175851(n+1))+n, A093048(n)]` -/
def P7776974271448156148.Spec : Prop :=
  ∀ n, (P7776974271448156148.a n : ℤ) = A025045 (n + 1)

end A025045

/-! ## A025045.P3925604766528263457

`lt[A322015(A175851(n+1))+1, A319981(n+4)]`
-/

namespace A025045.P3925604766528263457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (A175851 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319981 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025045.P3925604766528263457

namespace A025045

/-- `lt[A322015(A175851(n+1))+1, A319981(n+4)]` -/
def P3925604766528263457.Spec : Prop :=
  ∀ n, (P3925604766528263457.a n : ℤ) = A025045 (n + 1)

end A025045

/-! ## A025045.P10906393411014271097

`eq[4, A107279(n+1)+A040081(a(n-1)+1)]` with `a(0)=4`
-/

namespace A025045.P10906393411014271097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A107279 (n + 1) + A040081 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025045.P10906393411014271097

namespace A025045

/-- `eq[4, A107279(n+1)+A040081(a(n-1)+1)]` -/
def P10906393411014271097.Spec : Prop :=
  ∀ n, (P10906393411014271097.a n : ℤ) = A025045 (n + 1)

end A025045

/-! ## A025045.P10462652389890451555

`eq[1, A113050(n+1)%4]`
-/

namespace A025045.P10462652389890451555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113050 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025045.P10462652389890451555

namespace A025045

/-- `eq[1, A113050(n+1)%4]` -/
def P10462652389890451555.Spec : Prop :=
  ∀ n, (P10462652389890451555.a n : ℤ) = A025045 (n + 1)

end A025045

/-!
# A025046: a(n) is the least odd prime p such that the maximum run length of consecutive quadratic residues modulo p is n.

The programs for A025046, there is no canonical definition to state claims against.
-/

/-! ## A025046.P14414203753625398609

`A092950(A364543(n+2))`
-/

namespace A025046.P14414203753625398609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092950 (A364543 (n + 2)).toNat

end

end A025046.P14414203753625398609

/-!
# A025047: Number of alternating compositions, i.e., compositions with alternating increases and decreases, starting with either an increase or a decrease.

The programs for A025047, there is no canonical definition to state claims against.
-/

/-! ## A025047.P13335835533752911408

`A025048(n)+A025049(n)-1`
-/

namespace A025047.P13335835533752911408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025048 n + A025049 n - 1

end

end A025047.P13335835533752911408

/-! ## A025047.P16261126297689178857

`A349052(n)-A349800(n)`
-/

namespace A025047.P16261126297689178857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349052 n - A349800 n

end

end A025047.P16261126297689178857

/-! ## A025047.P6076926385046338910

`A003242(n)-A345195(n)`
-/

namespace A025047.P6076926385046338910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A345195 n

end

end A025047.P6076926385046338910

/-! ## A025047.P8292767641606687280

`A011782(n)-A345192(n)`
-/

namespace A025047.P8292767641606687280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A345192 n

end

end A025047.P8292767641606687280

/-! ## A025047.P4934462445735881635

`A011782(n)-(A345195(n)+A261983(n))`
-/

namespace A025047.P4934462445735881635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A345195 n + A261983 n)

end

end A025047.P4934462445735881635

/-! ## A025047.P2610977613409553519

`Δ[A056469(n)]-A345192(n)`
-/

namespace A025047.P2610977613409553519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A345192 n

end

end A025047.P2610977613409553519

/-! ## A025047.P6382310441874235446

`A131577(n+1)-(A345192(n)+A131577(n))`
-/

namespace A025047.P6382310441874235446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - (A345192 n + A131577 n)

end

end A025047.P6382310441874235446

/-! ## A025047.P7356170784838237669

`A091613(A152947(n+1))-A345195(n)`
-/

namespace A025047.P7356170784838237669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A152947 (n + 1)).toNat - A345195 n

end

end A025047.P7356170784838237669

/-!
# A025048: Number of up/down (initially ascending) compositions of n.

The programs for A025048, there is no canonical definition to state claims against.
-/

/-! ## A025048.P7738042707715056915

`1+A025047(n)-A025049(n)`
-/

namespace A025048.P7738042707715056915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A025047 n - A025049 n

end

end A025048.P7738042707715056915

/-! ## A025048.P15483031765065521837

`A059883((n+1)²+n²)`
-/

namespace A025048.P15483031765065521837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059883 ((n + 1) ^ 2 + n ^ 2)

end

end A025048.P15483031765065521837

/-! ## A025048.P6434118905699485268

`A264668(n)+A059883(A001844(n))`
-/

namespace A025048.P6434118905699485268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A059883 (A001844 n).toNat

end

end A025048.P6434118905699485268

/-! ## A025048.P17905467375360937750

`A059883(A001844(n))%A222855(n+1)`
-/

namespace A025048.P17905467375360937750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059883 (A001844 n).toNat) (A222855 (n + 1))

end

end A025048.P17905467375360937750

/-! ## A025048.P5576263040568174540

`A001221(A000430(n+1))*A059883(A001844(n))`
-/

namespace A025048.P5576263040568174540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000430 (n + 1)).toNat * A059883 (A001844 n).toNat

end

end A025048.P5576263040568174540

/-! ## A025048.P9367551367373622490

`A059881((n+1)²+n²)`
-/

namespace A025048.P9367551367373622490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059881 ((n + 1) ^ 2 + n ^ 2)

end

end A025048.P9367551367373622490

/-! ## A025048.P14164585652068078201

`gcd(A000038(n), A059883(A064226(n)))`
-/

namespace A025048.P14164585652068078201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A059883 (A064226 n).toNat)

end

end A025048.P14164585652068078201

/-!
# A025049: Number of down/up (initially descending) compositions of n.

The programs for A025049, there is no canonical definition to state claims against.
-/

/-! ## A025049.P14489987148374109268

`1+A025047(n)-A025048(n)`
-/

namespace A025049.P14489987148374109268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A025047 n - A025048 n

end

end A025049.P14489987148374109268

/-! ## A025049.P899908381446532415

`A059881(or(A000124(n), A036987(n)))`
-/

namespace A025049.P899908381446532415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059881 (Int.lor (A000124 n) (A036987 n)).toNat

end

end A025049.P899908381446532415

/-! ## A025049.P5696297940067615502

`A059882(or(A000124(n), A036987(n)))`
-/

namespace A025049.P5696297940067615502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059882 (Int.lor (A000124 n) (A036987 n)).toNat

end

end A025049.P5696297940067615502

/-! ## A025049.P5640937356170112661

`A059881(A233583(n+1)+A152947(n+1))`
-/

namespace A025049.P5640937356170112661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059881 (A233583 (n + 1) + A152947 (n + 1)).toNat

end

end A025049.P5640937356170112661

/-! ## A025049.P8526515573909921892

`A059882(A233583(n+1)+A152947(n+1))`
-/

namespace A025049.P8526515573909921892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059882 (A233583 (n + 1) + A152947 (n + 1)).toNat

end

end A025049.P8526515573909921892

/-!
# A025050: Numbers of form j*k + k*i + i*j, where 1 <=i <= j <= k, including repetitions.

The programs for A025050, there is no canonical definition to state claims against.
-/

/-! ## A025050.P6368676986515197659

`A200737(∑[∑[∑[n]]+1])`
-/

namespace A025050.P6368676986515197659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025050.P6368676986515197659

/-! ## A025050.P5608945121258117618

`A003313(∑[A327295(n+1)+1])`
-/

namespace A025050.P5608945121258117618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327295 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025050.P5608945121258117618

/-! ## A025050.P16403950642212386182

`A184427(A184427(5*n+2))-A184518(4*n+1)`
-/

namespace A025050.P16403950642212386182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184427 (A184427 (5 * n + 2)).toNat - A184518 (4 * n + 1)

end

end A025050.P16403950642212386182

/-! ## A025050.P11774344199854902931

`A181838(A028246(n+1))+A135737(3*n+2)`
-/

namespace A025050.P11774344199854902931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181838 (A028246 (n + 1)).toNat + A135737 (3 * n + 2)

end

end A025050.P11774344199854902931

/-! ## A025050.P10970033899548418795

`A004396(lt[A347945(2*(n+2)), A316209(n+1)])`
-/

namespace A025050.P10970033899548418795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347945 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025050.P10970033899548418795

/-!
# A025051: Numbers of the form j*k + k*i + i*j, where i,j,k >= 1.

The programs for A025051, there is no canonical definition to state claims against.
-/

/-! ## A025051.P2374166505648196548

`record[A025050(n+1)%A025050(n+4)]`
-/

namespace A025051.P2374166505648196548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025050 (n + 1)) (A025050 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025051.P2374166505648196548

/-!
# A025052: Numbers not of form a*b + b*c + c*a for 1<=a<=b<=c (probably the list is complete).

The programs for A025052, there is no canonical definition to state claims against.
-/

/-! ## A025052.P1072402926511875042

`A228062(n+2)-1`
-/

namespace A025052.P1072402926511875042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228062 (n + 2) - 1

end

end A025052.P1072402926511875042

/-! ## A025052.P13493673103545172048

`A246850(n+1)/2`
-/

namespace A025052.P13493673103545172048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246850 (n + 1) : ℚ) / 2

end

end A025052.P13493673103545172048

/-! ## A025052.P15915958786012077218

`lt[A066851(n+1), 1]+1`
-/

namespace A025052.P15915958786012077218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066851 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025052.P15915958786012077218

/-! ## A025052.P8047681638396030285

`record[gcd(n+1, A066955(n+1))]`
-/

namespace A025052.P8047681638396030285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066955 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025052.P8047681638396030285

/-! ## A025052.P5930494331592634111

`A004526(A246850(n+1))`
-/

namespace A025052.P5930494331592634111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A246850 (n + 1)).toNat

end

end A025052.P5930494331592634111

/-!
# A025053: Positions of primes in sequence A025051 (numbers of form j*k + k*i + i*j, without repetitions, where 1 <=i <= j <= k).

The programs for A025053, there is no canonical definition to state claims against.
-/

/-! ## A025053.P17323372300983958540

`A025055(A005097(n+1))`
-/

namespace A025053.P17323372300983958540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025055 (A005097 (n + 1)).toNat

end

end A025053.P17323372300983958540

/-! ## A025053.P7421693235162535067

`A025055(A102781(n+2))`
-/

namespace A025053.P7421693235162535067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025055 (A102781 (n + 2)).toNat

end

end A025053.P7421693235162535067

/-! ## A025053.P10485800323107565039

`A025055(A130290(n+2))`
-/

namespace A025053.P10485800323107565039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025055 (A130290 (n + 2)).toNat

end

end A025053.P10485800323107565039

/-! ## A025053.P2058931063154560632

`A025055(eq[1, A101264(n)])`
-/

namespace A025053.P2058931063154560632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025053.P2058931063154560632

/-! ## A025053.P12477261875586977648

`A025055(A006093(n+2)/2)`
-/

namespace A025053.P12477261875586977648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025055 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A025053.P12477261875586977648

/-! ## A025053.P14779492357061800196

`A025055(record[sqrt(A067721(n))])`
-/

namespace A025053.P14779492357061800196
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067721 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025055 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A025053.P14779492357061800196

/-! ## A025053.P2146898555235572539

`A025055(A028242(p?[2*n+1]))`
-/

namespace A025053.P2146898555235572539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025055 (A028242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A025053.P2146898555235572539

/-!
# A025054: Positions of even numbers in sequence A025051 (numbers of form j*k + k*i + i*j, without repetitions, where 1 <= i <= j <= k).

The programs for A025054, there is no canonical definition to state claims against.
-/

/-! ## A025054.P10984570355725054895

`record[Δ[A002620(A025055(n+3))]]`
-/

namespace A025054.P10984570355725054895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A025055 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025054.P10984570355725054895

/-!
# A025055: Positions of odd numbers in sequence A025051 (numbers of form j*k + k*i + i*j, without repetitions, where 1 <= i <= j <= k).

The programs for A025055, there is no canonical definition to state claims against.
-/

/-! ## A025055.P14306152044878448079

`lt[A141056(A025051(n+1)), 3]+1`
-/

namespace A025055.P14306152044878448079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A025051 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025055.P14306152044878448079

/-!
# A025056: a(n) = position of 3*n^2 in sequence A025051 (numbers of form j*k + k*i + i*j, without repetitions, where 1 <= i <= j <= k).

The programs for A025056, there is no canonical definition to state claims against.
-/

/-! ## A025056.P7720169731591967587

`A025057((n+1)²)-ceil(atan(n+1))`
-/

namespace A025056.P7720169731591967587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) - ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A025056.P7720169731591967587

/-! ## A025056.P5731600113484898011

`A025057((n+1)²)-A036453(n+1)`
-/

namespace A025056.P5731600113484898011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) - A036453 (n + 1)

end

end A025056.P5731600113484898011

/-! ## A025056.P17559815285622581111

`A025057((n+1)²)+A045663(n)%2-2`
-/

namespace A025056.P17559815285622581111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) + (Int.tmod (A045663 n) 2 - 2)

end

end A025056.P17559815285622581111

/-! ## A025056.P1164624439875695232

`A025057((n+1)²)-A000032(C(2, n+2))`
-/

namespace A025056.P1164624439875695232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) - A000032 (Nat.choose 2 (n + 2))

end

end A025056.P1164624439875695232

/-! ## A025056.P12127752493672281321

`A025057((n+1)²)-A020639(A005897(n))`
-/

namespace A025056.P12127752493672281321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) - A020639 (A005897 n).toNat

end

end A025056.P12127752493672281321

/-! ## A025056.P10289310166832969862

`A025057((n+1)²)-A020639(A008574(n))`
-/

namespace A025056.P10289310166832969862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) - A020639 (A008574 n).toNat

end

end A025056.P10289310166832969862

/-! ## A025056.P6518209627256056514

`A025057((n+1)²)-A020639(A037225(n))`
-/

namespace A025056.P6518209627256056514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) - A020639 (A037225 n).toNat

end

end A025056.P6518209627256056514

/-! ## A025056.P17188064231342164665

`A025057((n+1)²)-A020639(A000010(n+2))`
-/

namespace A025056.P17188064231342164665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025057 ((n + 1) ^ 2) - A020639 (A000010 (n + 2)).toNat

end

end A025056.P17188064231342164665

/-!
# A025057: Position of 3n+2 in A025051 (numbers of form j*k + k*i + i*j, without repetitions, where 1 <= i <= j <= k).

The programs for A025057, there is no canonical definition to state claims against.
-/

/-! ## A025057.P1943721044476442515

`∑[A010693(∑[A057568(2*(n+2))])]`
-/

namespace A025057.P1943721044476442515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025057.P1943721044476442515

/-!
# A025059: Numbers expressible in more than one way as j*k + k*i + i*j, where 1 <=i < j < k.

The programs for A025059, there is no canonical definition to state claims against.
-/

/-! ## A025059.P12212626376696803105

`record[gcd(A025058(n+6), A025058(n+7))]`
-/

namespace A025059.P12212626376696803105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025058 (n + 6)) (A025058 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025059.P12212626376696803105

/-!
# A025060: Numbers of the form i*j + j*k + k*i, where 1 <= i < j < k.

The programs for A025060, there is no canonical definition to state claims against.
-/

/-! ## A025060.P11810398776641730280

`comp[A000926(n+1)-1]+1`
-/

namespace A025060.P11810398776641730280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A025060.P11810398776641730280

/-!
# A025061: Positions of primes in A025060 (numbers of form j*k + k*i + i*j, where 1 <=i < j < k).

The programs for A025061, there is no canonical definition to state claims against.
-/

/-! ## A025061.P1405491402043416373

`eq[1, A001222(A025060(n+1))]+1`
-/

namespace A025061.P1405491402043416373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025060 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025061.P1405491402043416373

/-! ## A025061.P1305281736356016966

`record[A000027(n+1)/A001222(A025060(n+1))]`
-/

namespace A025061.P1305281736356016966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A001222 (A025060 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025061.P1305281736356016966

/-! ## A025061.P12710903257136246565

`record[(1-A001489(n))/A001222(A025060(n+1))]`
-/

namespace A025061.P12710903257136246565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n : ℚ) / (A001222 (A025060 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025061.P12710903257136246565

/-! ## A025061.P5700361848306510689

`record[A008619(2*n)/A001222(A025060(n+1))]`
-/

namespace A025061.P5700361848306510689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A001222 (A025060 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025061.P5700361848306510689

/-! ## A025061.P9758020295119694153

`record[A028242(2*n)/A001222(A025060(n+1))]`
-/

namespace A025061.P9758020295119694153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A001222 (A025060 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025061.P9758020295119694153

/-! ## A025061.P5190227866559914660

`record[A266285(2*n)/A001222(A025060(n+1))]`
-/

namespace A025061.P5190227866559914660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266285 (2 * n) : ℚ) / (A001222 (A025060 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025061.P5190227866559914660

/-!
# A025062: Positions of even numbers in A025060 (numbers of form j*k + k*i + i*j, where 1 <= i < j < k).

The programs for A025062, there is no canonical definition to state claims against.
-/

/-! ## A025062.P7064600546140394598

`eq[2, A020639(A025060(n+1))]+1`
-/

namespace A025062.P7064600546140394598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025060 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025062.P7064600546140394598

/-!
# A025063: Positions of odd numbers in A025060 (numbers of form j*k + k*i + i*j, where 1 <= i < j < k).

The programs for A025063, there is no canonical definition to state claims against.
-/

/-! ## A025063.P17776955705886603658

`record[(n+1)*A000035(A025060(n+1))]`
-/

namespace A025063.P17776955705886603658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A025060 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025063.P17776955705886603658

/-!
# A025065: Number of palindromic partitions of n.

The programs for A025065, there is no canonical definition to state claims against.
-/

/-! ## A025065.P14315015981656224391

`A000070(A004526(n))`
-/

namespace A025065.P14315015981656224391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A004526 n).toNat

end

end A025065.P14315015981656224391

/-! ## A025065.P2757583254801008017

`∑[A035363(n)]`
-/

namespace A025065.P2757583254801008017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025065.P2757583254801008017

/-! ## A025065.P6009662240983353060

`A000070(floor(n/2))`
-/

namespace A025065.P6009662240983353060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 ⌊(n : ℚ) / 2⌋.toNat

end

end A025065.P6009662240983353060

/-! ## A025065.P9114330387415979096

`A119620(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A025065.P9114330387415979096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A119620 n + a (n - 2)

end

end A025065.P9114330387415979096

/-! ## A025065.P4786318793537900292

`a(n-2)+A000041(floor(n/2))` with `a(0)=1, a(1)=1`
-/

namespace A025065.P4786318793537900292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A000041 ⌊(n : ℚ) / 2⌋.toNat

end

end A025065.P4786318793537900292

/-! ## A025065.P10015603557501495988

`A058682(A004526(n))+A008619(n)`
-/

namespace A025065.P10015603557501495988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (A004526 n).toNat + A008619 n

end

end A025065.P10015603557501495988

/-! ## A025065.P14254264093243411091

`A058682(A008619(n)-1)+A008619(n)`
-/

namespace A025065.P14254264093243411091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (A008619 n - 1).toNat + A008619 n

end

end A025065.P14254264093243411091

/-! ## A025065.P479576353548776243

`A086543(n+1)-A210249(n+1)`
-/

namespace A025065.P479576353548776243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (n + 1) - A210249 (n + 1)

end

end A025065.P479576353548776243

/-! ## A025065.P889356778323881117

`A000041(n+1)-(A210249(n+1)+A035363(n+1))`
-/

namespace A025065.P889356778323881117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A210249 (n + 1) + A035363 (n + 1))

end

end A025065.P889356778323881117

/-! ## A025065.P8744807362062625536

`A000070(n+1)-A225751(n+1)`
-/

namespace A025065.P8744807362062625536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - A225751 (n + 1)

end

end A025065.P8744807362062625536

/-! ## A025065.P16509536135127149825

`∑[A035444(A022998(n))]`
-/

namespace A025065.P16509536135127149825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025065.P16509536135127149825

/-! ## A025065.P12800268355425668003

`∑[A035444(A265723(n))]`
-/

namespace A025065.P12800268355425668003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A265723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025065.P12800268355425668003

/-! ## A025065.P16368198828787471468

`∑[A035444(A266073(n))]`
-/

namespace A025065.P16368198828787471468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A266073 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025065.P16368198828787471468

/-! ## A025065.P2882918828210130229

`∑[A035444(2*n)]`
-/

namespace A025065.P2882918828210130229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025065.P2882918828210130229

/-! ## A025065.P13625733347704379377

`A035444(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A025065.P13625733347704379377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035444 (n + n) + a (n - 1)

end

end A025065.P13625733347704379377

/-! ## A025065.P522843241691004374

`A086543(n+1)-A233771(n+1)`
-/

namespace A025065.P522843241691004374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (n + 1) - A233771 (n + 1)

end

end A025065.P522843241691004374

/-! ## A025065.P4174050773591414008

`A000041(n+1)-(A233771(n+1)+A035363(n+1))`
-/

namespace A025065.P4174050773591414008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A233771 (n + 1) + A035363 (n + 1))

end

end A025065.P4174050773591414008

/-! ## A025065.P15618709945606137963

`A100824(or(1, n))`
-/

namespace A025065.P15618709945606137963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (Nat.lor 1 n)

end

end A025065.P15618709945606137963

/-! ## A025065.P1341450613310110729

`A100835(or(1, n))`
-/

namespace A025065.P1341450613310110729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (Nat.lor 1 n)

end

end A025065.P1341450613310110729

/-! ## A025065.P2175910386185772445

`A100824(A109613(n))`
-/

namespace A025065.P2175910386185772445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (A109613 n).toNat

end

end A025065.P2175910386185772445

/-!
# A025066: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ] and s = A023532.

The programs for A025066, there is no canonical definition to state claims against.
-/

/-! ## A025066.P4563446167035378480

`floor(A023616(n+2)/2)`
-/

namespace A025066.P4563446167035378480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023616 (n + 2) : ℚ) / 2⌋

end

end A025066.P4563446167035378480

/-! ## A025066.P11075827923970317819

`A004526(A023616(n+2))`
-/

namespace A025066.P11075827923970317819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023616 (n + 2)).toNat

end

end A025066.P11075827923970317819

/-! ## A025066.P3350938187864452467

`A004524(or(1, A023616(n+2)))`
-/

namespace A025066.P3350938187864452467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A023616 (n + 2))).toNat

end

end A025066.P3350938187864452467

/-! ## A025066.P15528127280435941814

`A028242(or(1, A023616(n+2)))`
-/

namespace A025066.P15528127280435941814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A023616 (n + 2))).toNat

end

end A025066.P15528127280435941814

/-! ## A025066.P448615265655671333

`A006370(or(1, A023616(n+2))-1)`
-/

namespace A025066.P448615265655671333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.lor 1 (A023616 (n + 2)) - 1).toNat

end

end A025066.P448615265655671333

/-! ## A025066.P12060028068762878525

`A008619(or(1, A023616(n+2)))-1`
-/

namespace A025066.P12060028068762878525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A023616 (n + 2))).toNat - 1

end

end A025066.P12060028068762878525

/-! ## A025066.P15884678702498140141

`A065033(or(1, A023616(n+2)))-1`
-/

namespace A025066.P15884678702498140141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor 1 (A023616 (n + 2))).toNat - 1

end

end A025066.P15884678702498140141

/-! ## A025066.P3315656033891445783

`A052938(or(1, A023616(n+2)))-3`
-/

namespace A025066.P3315656033891445783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (Int.lor 1 (A023616 (n + 2))).toNat - 3

end

end A025066.P3315656033891445783

/-! ## A025066.P7331868163182300290

`A023616(n+2)-A024366(n+2)`
-/

namespace A025066.P7331868163182300290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023616 (n + 2) - A024366 (n + 2)

end

end A025066.P7331868163182300290

/-! ## A025066.P6895519522198866260

`val(A072985(or(1, A023616(n+2))), 3)`
-/

namespace A025066.P6895519522198866260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072985 (Int.lor 1 (A023616 (n + 2))).toNat).toNat 3

end

end A025066.P6895519522198866260

/-!
# A025071: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023532, t = (F(2), F(3), F(4), ...).

The programs for A025071, there is no canonical definition to state claims against.
-/

/-! ## A025071.P6861690820729908631

`round(ϕ*A024371(n+2))`
-/

namespace A025071.P6861690820729908631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A024371 (n + 2) : ℝ))

end

end A025071.P6861690820729908631

/-! ## A025071.P657631691525235069

`A024371(n+2)+A024367(n+1)`
-/

namespace A025071.P657631691525235069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024371 (n + 2) + A024367 (n + 1)

end

end A025071.P657631691525235069

/-! ## A025071.P15714998836852861706

`A024874(n+2)-(A024885(n+2)+A024861(n+2))`
-/

namespace A025071.P15714998836852861706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024874 (n + 2) - (A024885 (n + 2) + A024861 (n + 2))

end

end A025071.P15714998836852861706

/-! ## A025071.P4742240760345235600

`A024878(n+2)-(A024885(n+2)+A024874(n+2))`
-/

namespace A025071.P4742240760345235600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024878 (n + 2) - (A024885 (n + 2) + A024874 (n + 2))

end

end A025071.P4742240760345235600

/-! ## A025071.P2286774395457647229

`A003258(A024371(n+2))`
-/

namespace A025071.P2286774395457647229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A024371 (n + 2)).toNat

end

end A025071.P2286774395457647229

/-!
# A025072: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023532, t = (odd natural numbers).

The programs for A025072, there is no canonical definition to state claims against.
-/

/-! ## A025072.P17320417079677434699

`A124132(n+1)+A004559(A004527(n))`
-/

namespace A025072.P17320417079677434699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (n + 1) + A004559 (A004527 n).toNat

end

end A025072.P17320417079677434699

/-!
# A025073: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023532, t = A000201 (lower Wythoff sequence).

The programs for A025073, there is no canonical definition to state claims against.
-/

/-! ## A025073.P15894211861290898297

`A177151(A025074(n+1))`
-/

namespace A025073.P15894211861290898297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A025074 (n + 1)).toNat

end

end A025073.P15894211861290898297

/-!
# A025075: a(n) = s(1)*t(n+1) + s(2)*t(n) + ... + s(k)*t(n-k+2), where k = floor((n+1)/2), s = A023532, t = A023533.

The programs for A025075, there is no canonical definition to state claims against.
-/

/-! ## A025075.P67128994186797161

`A000051(n)%A059268(A077168(A024865(n+2)))`
-/

namespace A025075.P67128994186797161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000051 n) (A059268 (A077168 (A024865 (n + 2)).toNat).toNat)

end

end A025075.P67128994186797161

/-! ## A025075.P3385861966784205647

`A007814(A015942(n+1))%A209434(A024865(n+2))`
-/

namespace A025075.P3385861966784205647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A015942 (n + 1)).toNat) (A209434 (A024865 (n + 2)).toNat)

end

end A025075.P3385861966784205647

/-! ## A025075.P12208647790916474978

`A168181(A056558(n+4)*A179454(n))`
-/

namespace A025075.P12208647790916474978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A056558 (n + 4) * A179454 n).toNat

end

end A025075.P12208647790916474978

/-! ## A025075.P8035813756223572441

`A023532(A007931(n+1)*A056558(n+4))`
-/

namespace A025075.P8035813756223572441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A007931 (n + 1) * A056558 (n + 4)).toNat

end

end A025075.P8035813756223572441

/-! ## A025075.P5667742057140570559

`A057211(A090481(n+1))`
-/

namespace A025075.P5667742057140570559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (A090481 (n + 1)).toNat

end

end A025075.P5667742057140570559

/-!
# A025076: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A023532, t = A014306.

The programs for A025076, there is no canonical definition to state claims against.
-/

/-! ## A025076.P4780305352504738984

`A025126(n+1)+A025128(n+1)-A024890(n+2)`
-/

namespace A025076.P4780305352504738984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025126 (n + 1) + (A025128 (n + 1) - A024890 (n + 2))

end

end A025076.P4780305352504738984

/-! ## A025076.P10839446361586677904

`or(A283422(n+1), A283437(A283461(3*(n+2))))`
-/

namespace A025076.P10839446361586677904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283422 (n + 1)) (A283437 (A283461 (3 * (n + 2))).toNat)

end

end A025076.P10839446361586677904

/-!
# A025078: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ] and s = (Fibonacci numbers).

The programs for A025078, the canonical program `A025078.P9952779972674218111` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025078 has offset 1).

The definition of A025078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025078.P5052493013052046614

`A025082(n+1)-A024458(n+1)`
-/

namespace A025078.P5052493013052046614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (n + 1) - A024458 (n + 1)

end

end A025078.P5052493013052046614

namespace A025078

/-- `A025082(n+1)-A024458(n+1)` -/
def P5052493013052046614.Spec : Prop :=
  ∀ n, P5052493013052046614.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P9952779972674218111

`A001629(n+3)-A024458(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025078

/-- `A001629(n+3)-A024458(n+2)` -/
def P9952779972674218111.Spec : Prop :=
  ∀ n, P9952779972674218111.a n = A025078 (n + 1)

theorem P9952779972674218111.correct : P9952779972674218111.Spec := by
  intro n
  simp only [A025078, Nat.add_sub_cancel]

end A025078

/-! ## A025078.P1664014040582510666

`A025079(n+1)-2*A024458(n+1)`
-/

namespace A025078.P1664014040582510666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025079 (n + 1) - 2 * A024458 (n + 1)

end

end A025078.P1664014040582510666

namespace A025078

/-- `A025079(n+1)-2*A024458(n+1)` -/
def P1664014040582510666.Spec : Prop :=
  ∀ n, P1664014040582510666.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P12137141161898654728

`2*A025082(n+1)-A025079(n+1)`
-/

namespace A025078.P12137141161898654728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025082 (n + 1) - A025079 (n + 1)

end

end A025078.P12137141161898654728

namespace A025078

/-- `2*A025082(n+1)-A025079(n+1)` -/
def P12137141161898654728.Spec : Prop :=
  ∀ n, P12137141161898654728.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P8347348121180984083

`∪[A025082(2*n+1), A025082(2*(n+1))-A025082(2*n+1)]`
-/

namespace A025078.P8347348121180984083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (2 * (n + 1)) - A025082 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025078.P8347348121180984083

namespace A025078

/-- `∪[A025082(2*n+1), A025082(2*(n+1))-A025082(2*n+1)]` -/
def P8347348121180984083.Spec : Prop :=
  ∀ n, (P8347348121180984083.a n : ℤ) = A025078 (n + 1)

end A025078

/-! ## A025078.P9403904854126728689

`A213777(∑[n+1]-(or(1, n)-1)/2)`
-/

namespace A025078.P9403904854126728689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2)).toNat

end

end A025078.P9403904854126728689

namespace A025078

/-- `A213777(∑[n+1]-(or(1, n)-1)/2)` -/
def P9403904854126728689.Spec : Prop :=
  ∀ n, P9403904854126728689.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P9083150237870688124

`A213777(A080827(n+1))`
-/

namespace A025078.P9083150237870688124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A080827 (n + 1)).toNat

end

end A025078.P9083150237870688124

namespace A025078

/-- `A213777(A080827(n+1))` -/
def P9083150237870688124.Spec : Prop :=
  ∀ n, P9083150237870688124.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P17570989450148879919

`A213777(A099392(n+2))`
-/

namespace A025078.P17570989450148879919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A099392 (n + 2)).toNat

end

end A025078.P17570989450148879919

namespace A025078

/-- `A213777(A099392(n+2))` -/
def P17570989450148879919.Spec : Prop :=
  ∀ n, P17570989450148879919.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P9315432307289497613

`A213777(∑[n+1]-A004526(n))`
-/

namespace A025078.P9315432307289497613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004526 n).toNat

end

end A025078.P9315432307289497613

namespace A025078

/-- `A213777(∑[n+1]-A004526(n))` -/
def P9315432307289497613.Spec : Prop :=
  ∀ n, P9315432307289497613.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P3010227696866605050

`A067330(∑[or(1, n)]+n)`
-/

namespace A025078.P3010227696866605050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A025078.P3010227696866605050

namespace A025078

/-- `A067330(∑[or(1, n)]+n)` -/
def P3010227696866605050.Spec : Prop :=
  ∀ n, P3010227696866605050.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P3842181763132785621

`record[A067418(A000982(n))]`
-/

namespace A025078.P3842181763132785621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025078.P3842181763132785621

namespace A025078

/-- `record[A067418(A000982(n))]` -/
def P3842181763132785621.Spec : Prop :=
  ∀ n, P3842181763132785621.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P6027166522044851414

`A067418(A000982(n+2))`
-/

namespace A025078.P6027166522044851414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000982 (n + 2)).toNat

end

end A025078.P6027166522044851414

namespace A025078

/-- `A067418(A000982(n+2))` -/
def P6027166522044851414.Spec : Prop :=
  ∀ n, P6027166522044851414.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P9159884320586518860

`A067330(A047838(n+2))`
-/

namespace A025078.P9159884320586518860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A047838 (n + 2)).toNat

end

end A025078.P9159884320586518860

namespace A025078

/-- `A067330(A047838(n+2))` -/
def P9159884320586518860.Spec : Prop :=
  ∀ n, P9159884320586518860.a n = A025078 (n + 1)

end A025078

/-! ## A025078.P2506340208801952363

`A067330(A000982(n+1)+n)`
-/

namespace A025078.P2506340208801952363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000982 (n + 1) + (n : ℤ)).toNat

end

end A025078.P2506340208801952363

namespace A025078

/-- `A067330(A000982(n+1)+n)` -/
def P2506340208801952363.Spec : Prop :=
  ∀ n, P2506340208801952363.a n = A025078 (n + 1)

end A025078

/-!
# A025079: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = (Lucas numbers).

The programs for A025079, the canonical program `A025079.P6411856452203359211` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025079 has offset 1).

The definition of A025079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025079.P10643754786609156513

`A025082(n+1)+A024458(n+1)`
-/

namespace A025079.P10643754786609156513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (n + 1) + A024458 (n + 1)

end

end A025079.P10643754786609156513

namespace A025079

/-- `A025082(n+1)+A024458(n+1)` -/
def P10643754786609156513.Spec : Prop :=
  ∀ n, P10643754786609156513.a n = A025079 (n + 1)

end A025079

/-! ## A025079.P472417667226998308

`A025078(n+1)+2*A024458(n+1)`
-/

namespace A025079.P472417667226998308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025078 (n + 1) + 2 * A024458 (n + 1)

end

end A025079.P472417667226998308

namespace A025079

/-- `A025078(n+1)+2*A024458(n+1)` -/
def P472417667226998308.Spec : Prop :=
  ∀ n, P472417667226998308.a n = A025079 (n + 1)

end A025079

/-! ## A025079.P10381790402251669928

`2*A025082(n+1)-A025078(n+1)`
-/

namespace A025079.P10381790402251669928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025082 (n + 1) - A025078 (n + 1)

end

end A025079.P10381790402251669928

namespace A025079

/-- `2*A025082(n+1)-A025078(n+1)` -/
def P10381790402251669928.Spec : Prop :=
  ∀ n, P10381790402251669928.a n = A025079 (n + 1)

end A025079

/-! ## A025079.P6411856452203359211

`A006498(n)+A008619(n)*A020695(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A025079

/-- `A006498(n)+A008619(n)*A020695(n)` -/
def P6411856452203359211.Spec : Prop :=
  ∀ n, P6411856452203359211.a n = A025079 (n + 1)

theorem P6411856452203359211.correct : P6411856452203359211.Spec := by
  intro n
  simp only [A025079, Nat.add_sub_cancel]

end A025079

/-! ## A025079.P12184124824528535423

`A067418(A008818(2*n+1))+A025082(n+1)`
-/

namespace A025079.P12184124824528535423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A008818 (2 * n + 1)).toNat + A025082 (n + 1)

end

end A025079.P12184124824528535423

namespace A025079

/-- `A067418(A008818(2*n+1))+A025082(n+1)` -/
def P12184124824528535423.Spec : Prop :=
  ∀ n, P12184124824528535423.a n = A025079 (n + 1)

end A025079

/-!
# A025082: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = (F(2), F(3), F(4), ...).

The programs for A025082, the canonical program `A025082.P11802128794640137597` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025082 has offset 1).

The definition of A025082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025082.P7182579559547535585

`round(ϕ*A025078(n+1))`
-/

namespace A025082.P7182579559547535585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A025078 (n + 1) : ℝ))

end

end A025082.P7182579559547535585

namespace A025082

/-- `round(ϕ*A025078(n+1))` -/
def P7182579559547535585.Spec : Prop :=
  ∀ n, P7182579559547535585.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P11802128794640137597

`A024591(n+1)+A006498(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025082

/-- `A024591(n+1)+A006498(n)` -/
def P11802128794640137597.Spec : Prop :=
  ∀ n, P11802128794640137597.a n = A025082 (n + 1)

theorem P11802128794640137597.correct : P11802128794640137597.Spec := by
  intro n
  simp only [A025082, Nat.add_sub_cancel]

end A025082

/-! ## A025082.P5326037819257791415

`A025078(n+1)+A024458(n+1)`
-/

namespace A025082.P5326037819257791415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025078 (n + 1) + A024458 (n + 1)

end

end A025082.P5326037819257791415

namespace A025082

/-- `A025078(n+1)+A024458(n+1)` -/
def P5326037819257791415.Spec : Prop :=
  ∀ n, P5326037819257791415.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P13554214605339044065

`A024458(n+3)-A006498(n+2)`
-/

namespace A025082.P13554214605339044065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (n + 3) - A006498 (n + 2)

end

end A025082.P13554214605339044065

namespace A025082

/-- `A024458(n+3)-A006498(n+2)` -/
def P13554214605339044065.Spec : Prop :=
  ∀ n, P13554214605339044065.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P15235154513692032449

`A025079(n+1)-A024458(n+1)`
-/

namespace A025082.P15235154513692032449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025079 (n + 1) - A024458 (n + 1)

end

end A025082.P15235154513692032449

namespace A025082

/-- `A025079(n+1)-A024458(n+1)` -/
def P15235154513692032449.Spec : Prop :=
  ∀ n, P15235154513692032449.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P8604942556098022302

`A213777(A080827(n+1)+2+n)`
-/

namespace A025082.P8604942556098022302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A080827 (n + 1) + 2 + (n : ℤ)).toNat

end

end A025082.P8604942556098022302

namespace A025082

/-- `A213777(A080827(n+1)+2+n)` -/
def P8604942556098022302.Spec : Prop :=
  ∀ n, P8604942556098022302.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P7403665853233269618

`A067330(A116940(n+1))`
-/

namespace A025082.P7403665853233269618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A116940 (n + 1)).toNat

end

end A025082.P7403665853233269618

namespace A025082

/-- `A067330(A116940(n+1))` -/
def P7403665853233269618.Spec : Prop :=
  ∀ n, P7403665853233269618.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P6771418391792649316

`A067418(A099392(n+4))`
-/

namespace A025082.P6771418391792649316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A099392 (n + 4)).toNat

end

end A025082.P6771418391792649316

namespace A025082

/-- `A067418(A099392(n+4))` -/
def P6771418391792649316.Spec : Prop :=
  ∀ n, P6771418391792649316.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P10221330193038161638

`A067330(A116941(∑[n+2]))`
-/

namespace A025082.P10221330193038161638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A116941 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025082.P10221330193038161638

namespace A025082

/-- `A067330(A116941(∑[n+2]))` -/
def P10221330193038161638.Spec : Prop :=
  ∀ n, P10221330193038161638.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P17522194433034472128

`A067330(A103517(n)+∑[or(1, n)])`
-/

namespace A025082.P17522194433034472128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A103517 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A025082.P17522194433034472128

namespace A025082

/-- `A067330(A103517(n)+∑[or(1, n)])` -/
def P17522194433034472128.Spec : Prop :=
  ∀ n, P17522194433034472128.a n = A025082 (n + 1)

end A025082

/-! ## A025082.P7551182712458522718

`A067330(A047838(n+2)+2+n)`
-/

namespace A025082.P7551182712458522718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A047838 (n + 2) + 2 + (n : ℤ)).toNat

end

end A025082.P7551182712458522718

namespace A025082

/-- `A067330(A047838(n+2)+2+n)` -/
def P7551182712458522718.Spec : Prop :=
  ∀ n, P7551182712458522718.a n = A025082 (n + 1)

end A025082

/-!
# A025083: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = (odd natural numbers).

The programs for A025083, the canonical program `A025083.P14741746701760172126` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025083 has offset 1).

The definition of A025083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025083.P14741746701760172126

`A213768(Δ[A173154(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025083

/-- `A213768(Δ[A173154(n)])` -/
def P14741746701760172126.Spec : Prop :=
  ∀ n, P14741746701760172126.a n = A025083 (n + 1)

theorem P14741746701760172126.correct : P14741746701760172126.Spec := by
  intro n
  simp only [A025083, Nat.add_sub_cancel]

end A025083

/-! ## A025083.P1173689833723049467

`A213768(A061925(n+2))`
-/

namespace A025083.P1173689833723049467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A061925 (n + 2)).toNat

end

end A025083.P1173689833723049467

namespace A025083

/-- `A213768(A061925(n+2))` -/
def P1173689833723049467.Spec : Prop :=
  ∀ n, P1173689833723049467.a n = A025083 (n + 1)

end A025083

/-! ## A025083.P14389704895632384680

`A213768(A116940(n)+3)`
-/

namespace A025083.P14389704895632384680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A116940 n + 3).toNat

end

end A025083.P14389704895632384680

namespace A025083

/-- `A213768(A116940(n)+3)` -/
def P14389704895632384680.Spec : Prop :=
  ∀ n, P14389704895632384680.a n = A025083 (n + 1)

end A025083

/-! ## A025083.P13165205092424505336

`A213768(Δ[A203292(n+1)])`
-/

namespace A025083.P13165205092424505336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (f1 (n + 1) - f1 n).toNat

end

end A025083.P13165205092424505336

namespace A025083

/-- `A213768(Δ[A203292(n+1)])` -/
def P13165205092424505336.Spec : Prop :=
  ∀ n, P13165205092424505336.a n = A025083 (n + 1)

end A025083

/-! ## A025083.P13109908256742483049

`A213768(A080827(n+1)+2+n)`
-/

namespace A025083.P13109908256742483049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A080827 (n + 1) + 2 + (n : ℤ)).toNat

end

end A025083.P13109908256742483049

namespace A025083

/-- `A213768(A080827(n+1)+2+n)` -/
def P13109908256742483049.Spec : Prop :=
  ∀ n, P13109908256742483049.a n = A025083 (n + 1)

end A025083

/-! ## A025083.P17287709619899410051

`A213768(A173154(n+1)-A173154(n))`
-/

namespace A025083.P17287709619899410051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A173154 (n + 1) - A173154 n).toNat

end

end A025083.P17287709619899410051

namespace A025083

/-- `A213768(A173154(n+1)-A173154(n))` -/
def P17287709619899410051.Spec : Prop :=
  ∀ n, P17287709619899410051.a n = A025083 (n + 1)

theorem P17287709619899410051.correct : P17287709619899410051.Spec := by
  intro n
  simp only [A025083, Nat.add_sub_cancel, A025083.P17287709619899410051.a, A025083.P14741746701760172126.f1, A025083.P14741746701760172126.a, SequenceMachineLib.memo_apply]

end A025083

/-!
# A025084: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = A000201 (lower Wythoff sequence).

The programs for A025084, there is no canonical definition to state claims against.
-/

/-! ## A025084.P8132163378149221610

`A025107(n+1)+A025107(n+1)-A025094(n+1)`
-/

namespace A025084.P8132163378149221610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025107 (n + 1) + (A025107 (n + 1) - A025094 (n + 1))

end

end A025084.P8132163378149221610

/-! ## A025084.P16935643644240966645

`2*A025107(n+1)-A025094(n+1)`
-/

namespace A025084.P16935643644240966645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025107 (n + 1) - A025094 (n + 1)

end

end A025084.P16935643644240966645

/-! ## A025084.P14670937427308044564

`A004277(A025107(n+1))-A025094(n+1)`
-/

namespace A025084.P14670937427308044564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025107 (n + 1)).toNat - A025094 (n + 1)

end

end A025084.P14670937427308044564

/-! ## A025084.P8161625528512462305

`A025480(A024474(n+3)-A024464(n+3))`
-/

namespace A025084.P8161625528512462305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A024474 (n + 3) - A024464 (n + 3)).toNat

end

end A025084.P8161625528512462305

/-!
# A025085: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = A001950 (upper Wythoff sequence).

The programs for A025085, there is no canonical definition to state claims against.
-/

/-! ## A025085.P2884815740181036435

`A024594(n+2)-A024465(n+2)`
-/

namespace A025085.P2884815740181036435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024594 (n + 2) - A024465 (n + 2)

end

end A025085.P2884815740181036435

/-! ## A025085.P3929061024812488115

`A024475(n+2)-A024594(n+2)`
-/

namespace A025085.P3929061024812488115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024475 (n + 2) - A024594 (n + 2)

end

end A025085.P3929061024812488115

/-! ## A025085.P5422233529298904121

`(A024475(n+2)-A024465(n+2))/2`
-/

namespace A025085.P5422233529298904121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024475 (n + 2) - A024465 (n + 2) : ℚ) / 2

end

end A025085.P5422233529298904121

/-! ## A025085.P5754681159059694157

`A024475(A028310(n+1)+1)%A024594(n+2)`
-/

namespace A025085.P5754681159059694157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024475 (A028310 (n + 1) + 1).toNat) (A024594 (n + 2))

end

end A025085.P5754681159059694157

/-! ## A025085.P15748192985408451823

`A014682(A024475(n+2)-A024465(n+2))`
-/

namespace A025085.P15748192985408451823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A024475 (n + 2) - A024465 (n + 2)).toNat

end

end A025085.P15748192985408451823

/-!
# A025086: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A000045, t = A023533.

The programs for A025086, there is no canonical definition to state claims against.
-/

/-! ## A025086.P12514732916834825715

`A025109(n+2)+A025109(n+2)-A025096(n+2)`
-/

namespace A025086.P12514732916834825715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025109 (n + 2) + (A025109 (n + 2) - A025096 (n + 2))

end

end A025086.P12514732916834825715

/-! ## A025086.P11310284763147165641

`2*A025109(n+2)-A025096(n+2)`
-/

namespace A025086.P11310284763147165641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025109 (n + 2) - A025096 (n + 2)

end

end A025086.P11310284763147165641

/-! ## A025086.P13354383212712547993

`∑[A079977(n)]-A025087(n+1)`
-/

namespace A025086.P13354383212712547993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025087 (n + 1)

end

end A025086.P13354383212712547993

/-! ## A025086.P16871945077410807890

`∑[A079977(n)]-round(A025110(n+1)/ϕ)`
-/

namespace A025086.P16871945077410807890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.roundAway ((A025110 (n + 1) : ℝ) / Real.goldenRatio)

end

end A025086.P16871945077410807890

/-! ## A025086.P2672100186116766671

`∑[A079977(n)]-(A024477(n+3)-A024596(n+3))`
-/

namespace A025086.P2672100186116766671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A024477 (n + 3) - A024596 (n + 3))

end

end A025086.P2672100186116766671

/-! ## A025086.P6190399021059478992

`A024466(n+2)%A000045(A029579(n+1))`
-/

namespace A025086.P6190399021059478992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024466 (n + 2)) (A000045 (A029579 (n + 1)).toNat)

end

end A025086.P6190399021059478992

/-! ## A025086.P4147116385343069178

`A005206(A025109(n+2))`
-/

namespace A025086.P4147116385343069178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A025109 (n + 2)).toNat

end

end A025086.P4147116385343069178

/-!
# A025087: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = A014306.

The programs for A025087, there is no canonical definition to state claims against.
-/

/-! ## A025087.P1724409119476889177

`∑[A079977(n)]-A025086(n+2)`
-/

namespace A025087.P1724409119476889177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025086 (n + 2)

end

end A025087.P1724409119476889177

/-! ## A025087.P1080006422827406664

`round(A025110(n+1)/ϕ)`
-/

namespace A025087.P1080006422827406664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025110 (n + 1) : ℝ) / Real.goldenRatio)

end

end A025087.P1080006422827406664

/-! ## A025087.P11729613189183717290

`A024596(n+3)-A024467(n+3)`
-/

namespace A025087.P11729613189183717290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024596 (n + 3) - A024467 (n + 3)

end

end A025087.P11729613189183717290

/-! ## A025087.P8195298513783770442

`A025110(n+1)+A025110(n+1)-A025097(n+1)`
-/

namespace A025087.P8195298513783770442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025110 (n + 1) + (A025110 (n + 1) - A025097 (n + 1))

end

end A025087.P8195298513783770442

/-! ## A025087.P5850043557599045309

`A024477(n+3)-A024596(n+3)`
-/

namespace A025087.P5850043557599045309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024477 (n + 3) - A024596 (n + 3)

end

end A025087.P5850043557599045309

/-! ## A025087.P2643136675113293270

`2*A025110(n+1)-A025097(n+1)`
-/

namespace A025087.P2643136675113293270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025110 (n + 1) - A025097 (n + 1)

end

end A025087.P2643136675113293270

/-!
# A025088: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = (primes).

The programs for A025088, there is no canonical definition to state claims against.
-/

/-! ## A025088.P3513538196018096379

`A024597(n+3)-A024468(n+3)`
-/

namespace A025088.P3513538196018096379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024597 (n + 3) - A024468 (n + 3)

end

end A025088.P3513538196018096379

/-! ## A025088.P10787708392892237704

`A025111(n+1)+A025111(n+1)-A025098(n+1)`
-/

namespace A025088.P10787708392892237704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025111 (n + 1) + (A025111 (n + 1) - A025098 (n + 1))

end

end A025088.P10787708392892237704

/-! ## A025088.P483513802178713958

`A024478(n+3)-A024597(n+3)`
-/

namespace A025088.P483513802178713958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024478 (n + 3) - A024597 (n + 3)

end

end A025088.P483513802178713958

/-! ## A025088.P1057801802294475094

`2*A025111(n+1)-A025098(n+1)`
-/

namespace A025088.P1057801802294475094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025111 (n + 1) - A025098 (n + 1)

end

end A025088.P1057801802294475094

/-! ## A025088.P1196761444999452251

`A024478(n+3)%(A024597(n+3)*A033999(n))`
-/

namespace A025088.P1196761444999452251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024478 (n + 3)) (A024597 (n + 3) * A033999 n)

end

end A025088.P1196761444999452251

/-! ## A025088.P2935983373403392855

`A024478(A252463(2*(n+1))+2)%A024597(n+3)`
-/

namespace A025088.P2935983373403392855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024478 (A252463 (2 * (n + 1)) + 2).toNat) (A024597 (n + 3))

end

end A025088.P2935983373403392855

/-!
# A025089: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n-k+1), where k = [n/2], s = (Lucas numbers).

The programs for A025089, the canonical program `A025089.P5435601216984553650` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025089 has offset 1).

The definition of A025089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025089.P5435601216984553650

`A004799(n+1)-A024469(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025089

/-- `A004799(n+1)-A024469(n+1)` -/
def P5435601216984553650.Spec : Prop :=
  ∀ n, P5435601216984553650.a n = A025089 (n + 1)

theorem P5435601216984553650.correct : P5435601216984553650.Spec := by
  intro n
  simp only [A025089, Nat.add_sub_cancel]

end A025089

/-!
# A025092: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (F(2), F(3), F(4), ...).

The programs for A025092, the canonical program `A025092.P5540335712594963880` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025092 has offset 1).

The definition of A025092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025092.P3322471989706894679

`2*A025105(n+1)-A025082(n+1)`
-/

namespace A025092.P3322471989706894679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025105 (n + 1) - A025082 (n + 1)

end

end A025092.P3322471989706894679

namespace A025092

/-- `2*A025105(n+1)-A025082(n+1)` -/
def P3322471989706894679.Spec : Prop :=
  ∀ n, P3322471989706894679.a n = A025092 (n + 1)

end A025092

/-! ## A025092.P5540335712594963880

`2*(A023610(n+2)-A024458(n+4))-A025082(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A025092

/-- `2*(A023610(n+2)-A024458(n+4))-A025082(n+1)` -/
def P5540335712594963880.Spec : Prop :=
  ∀ n, P5540335712594963880.a n = A025092 (n + 1)

theorem P5540335712594963880.correct : P5540335712594963880.Spec := by
  intro n
  simp only [A025092, Nat.add_sub_cancel]

end A025092

/-! ## A025092.P10067590620314115220

`3*A024472(n+1)-A024469(n+1)`
-/

namespace A025092.P10067590620314115220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024472 (n + 1) - A024469 (n + 1)

end

end A025092.P10067590620314115220

namespace A025092

/-- `3*A024472(n+1)-A024469(n+1)` -/
def P10067590620314115220.Spec : Prop :=
  ∀ n, P10067590620314115220.a n = A025092 (n + 1)

end A025092

/-! ## A025092.P10270320073959854846

`2*A213587(A080827(n+1)+2+n)-A025082(n+1)`
-/

namespace A025092.P10270320073959854846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213587 (A080827 (n + 1) + 2 + (n : ℤ)).toNat - A025082 (n + 1)

end

end A025092.P10270320073959854846

namespace A025092

/-- `2*A213587(A080827(n+1)+2+n)-A025082(n+1)` -/
def P10270320073959854846.Spec : Prop :=
  ∀ n, P10270320073959854846.a n = A025092 (n + 1)

end A025092

/-! ## A025092.P17635456137176362541

`2*A213587(A099392(n+2)+n+2)-A025082(n+1)`
-/

namespace A025092.P17635456137176362541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213587 (A099392 (n + 2) + (n + 2 : ℤ)).toNat - A025082 (n + 1)

end

end A025092.P17635456137176362541

namespace A025092

/-- `2*A213587(A099392(n+2)+n+2)-A025082(n+1)` -/
def P17635456137176362541.Spec : Prop :=
  ∀ n, P17635456137176362541.a n = A025092 (n + 1)

end A025092

/-!
# A025093: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (odd natural numbers).

The programs for A025093, the canonical program `A025093.P5417694836519234021` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025093 has offset 1).

The definition of A025093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025093.P5417694836519234021

`A025106(n+1)+A025106(n+1)-A025083(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A025093

/-- `A025106(n+1)+A025106(n+1)-A025083(n+1)` -/
def P5417694836519234021.Spec : Prop :=
  ∀ n, P5417694836519234021.a n = A025093 (n + 1)

theorem P5417694836519234021.correct : P5417694836519234021.Spec := by
  intro n
  simp only [A025093, Nat.add_sub_cancel]

end A025093

/-! ## A025093.P2509519168866489005

`2*A025106(n+1)-A025083(n+1)`
-/

namespace A025093.P2509519168866489005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025106 (n + 1) - A025083 (n + 1)

end

end A025093.P2509519168866489005

namespace A025093

/-- `2*A025106(n+1)-A025083(n+1)` -/
def P2509519168866489005.Spec : Prop :=
  ∀ n, P2509519168866489005.a n = A025093 (n + 1)

theorem P2509519168866489005.correct : P2509519168866489005.Spec := by
  intro n
  simp only [A025093, Nat.add_sub_cancel, A025093.P2509519168866489005.a, A025093.P5417694836519234021.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A025093

/-! ## A025093.P1294385433044804651

`A005843(A025106(n+1))-A025083(n+1)`
-/

namespace A025093.P1294385433044804651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A025106 (n + 1)).toNat - A025083 (n + 1)

end

end A025093.P1294385433044804651

namespace A025093

/-- `A005843(A025106(n+1))-A025083(n+1)` -/
def P1294385433044804651.Spec : Prop :=
  ∀ n, P1294385433044804651.a n = A025093 (n + 1)

end A025093

/-!
# A025094: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = A000201 (lower Wythoff sequence).

The programs for A025094, there is no canonical definition to state claims against.
-/

/-! ## A025094.P7343031760260142790

`A025107(n+1)+A025107(n+1)-A025084(n+1)`
-/

namespace A025094.P7343031760260142790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025107 (n + 1) + (A025107 (n + 1) - A025084 (n + 1))

end

end A025094.P7343031760260142790

/-! ## A025094.P2645519321486081116

`2*A025107(n+1)-A025084(n+1)`
-/

namespace A025094.P2645519321486081116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025107 (n + 1) - A025084 (n + 1)

end

end A025094.P2645519321486081116

/-! ## A025094.P4675391547812971532

`A004277(A025107(n+1))-A025084(n+1)`
-/

namespace A025094.P4675391547812971532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025107 (n + 1)).toNat - A025084 (n + 1)

end

end A025094.P4675391547812971532

/-!
# A025095: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = A001950 (upper Wythoff sequence).

The programs for A025095, there is no canonical definition to state claims against.
-/

/-! ## A025095.P534058772628779276

`A114327(C(A025119(n+1)+1, 2))`
-/

namespace A025095.P534058772628779276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (Nat.choose (A025119 (n + 1) + 1).toNat 2)

end

end A025095.P534058772628779276

/-!
# A025096: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A000032, t = A023533.

The programs for A025096, there is no canonical definition to state claims against.
-/

/-! ## A025096.P7599315068291468565

`A025109(n+2)+A025109(n+2)-A025086(n+2)`
-/

namespace A025096.P7599315068291468565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025109 (n + 2) + (A025109 (n + 2) - A025086 (n + 2))

end

end A025096.P7599315068291468565

/-! ## A025096.P14967965059031462920

`2*A025109(n+2)-A025086(n+2)`
-/

namespace A025096.P14967965059031462920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025109 (n + 2) - A025086 (n + 2)

end

end A025096.P14967965059031462920

/-! ## A025096.P17869508117438944057

`A005843(A025109(n+2))-A025086(n+2)`
-/

namespace A025096.P17869508117438944057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A025109 (n + 2)).toNat - A025086 (n + 2)

end

end A025096.P17869508117438944057

/-! ## A025096.P167723022427291540

`A024476(n+2)%A133263(A024476(n+3))`
-/

namespace A025096.P167723022427291540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024476 (n + 2)) (A133263 (A024476 (n + 3)).toNat)

end

end A025096.P167723022427291540

/-! ## A025096.P15531807448505661895

`A024476(n+2)%A273533(A023613(n))`
-/

namespace A025096.P15531807448505661895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024476 (n + 2)) (A273533 (A023613 n).toNat)

end

end A025096.P15531807448505661895

/-!
# A025097: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = A014306.

The programs for A025097, there is no canonical definition to state claims against.
-/

/-! ## A025097.P12331972074442621522

`A025110(n+1)+A025110(n+1)-A025087(n+1)`
-/

namespace A025097.P12331972074442621522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025110 (n + 1) + (A025110 (n + 1) - A025087 (n + 1))

end

end A025097.P12331972074442621522

/-! ## A025097.P11087620564300624035

`2*A025110(n+1)-A025087(n+1)`
-/

namespace A025097.P11087620564300624035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025110 (n + 1) - A025087 (n + 1)

end

end A025097.P11087620564300624035

/-! ## A025097.P5251996681610036777

`2*floor(A024596(n+3)/ϕ)-A025087(n+1)`
-/

namespace A025097.P5251996681610036777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A024596 (n + 3) : ℝ) / Real.goldenRatio⌋ - A025087 (n + 1)

end

end A025097.P5251996681610036777

/-!
# A025098: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (primes).

The programs for A025098, there is no canonical definition to state claims against.
-/

/-! ## A025098.P15978425973747276505

`A025111(n+1)+A025111(n+1)-A025088(n+1)`
-/

namespace A025098.P15978425973747276505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025111 (n + 1) + (A025111 (n + 1) - A025088 (n + 1))

end

end A025098.P15978425973747276505

/-! ## A025098.P13352050540275007201

`A025111(n+1)+A025111(n+1)-(A024597(n+3)-A024468(n+3))`
-/

namespace A025098.P13352050540275007201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025111 (n + 1) + (A025111 (n + 1) - (A024597 (n + 3) - A024468 (n + 3)))

end

end A025098.P13352050540275007201

/-! ## A025098.P13872251583860747039

`2*A025111(n+1)-A025088(n+1)`
-/

namespace A025098.P13872251583860747039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025111 (n + 1) - A025088 (n + 1)

end

end A025098.P13872251583860747039

/-! ## A025098.P5732965719936659623

`2*A025111(n+1)-(A024597(n+3)-A024468(n+3))`
-/

namespace A025098.P5732965719936659623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025111 (n + 1) - (A024597 (n + 3) - A024468 (n + 3))

end

end A025098.P5732965719936659623

/-! ## A025098.P4826979228526306984

`2*A025111(n+1)-(A024478(n+3)-A024597(n+3))`
-/

namespace A025098.P4826979228526306984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025111 (n + 1) - (A024478 (n + 3) - A024597 (n + 3))

end

end A025098.P4826979228526306984

/-!
# A025099: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = (1, p(1), p(2), ...).

The programs for A025099, there is no canonical definition to state claims against.
-/

/-! ## A025099.P9132407819115771626

`A025129(A028310(n))+Δ[A007504(n)]`
-/

namespace A025099.P9132407819115771626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A025099.P9132407819115771626

/-! ## A025099.P17815580523333005288

`A025129(A028310(n))+A000040(n+1)`
-/

namespace A025099.P17815580523333005288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + A000040 (n + 1)

end

end A025099.P17815580523333005288

/-! ## A025099.P12104783694971972144

`A025129(A028310(n))+A008578(n+2)`
-/

namespace A025099.P12104783694971972144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + A008578 (n + 2)

end

end A025099.P12104783694971972144

/-! ## A025099.P1081647401382770921

`A025129(A028310(n))+record[A000010(n+1)+1]`
-/

namespace A025099.P1081647401382770921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025099.P1081647401382770921

/-! ## A025099.P5868404493641021464

`A025129(A028310(n))+p?[A007989(n)]`
-/

namespace A025099.P5868404493641021464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025099.P5868404493641021464

/-! ## A025099.P8653116766691925895

`A025129(A028310(n))+p?[A005100(n+1)]`
-/

namespace A025099.P8653116766691925895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025099.P8653116766691925895

/-! ## A025099.P6406731070549544683

`A025129(A028310(n))+p?[A000037(n+1)]`
-/

namespace A025099.P6406731070549544683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025099.P6406731070549544683

/-! ## A025099.P8483443390125839914

`A025129(A028310(n))+p?[A014681(n)]`
-/

namespace A025099.P8483443390125839914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025099.P8483443390125839914

/-! ## A025099.P14614750557935835909

`A025129(A028310(n))+p?[A001057(n)]`
-/

namespace A025099.P14614750557935835909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025099.P14614750557935835909

/-! ## A025099.P2043117252556267051

`A025129(A028310(n))+p?[A006370(n)]`
-/

namespace A025099.P2043117252556267051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025099.P2043117252556267051

/-! ## A025099.P4582545051081556445

`A025129(A028310(n))+p?[A000463(n+1)]`
-/

namespace A025099.P4582545051081556445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025129 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025099.P4582545051081556445

