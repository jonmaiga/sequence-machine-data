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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A307800: Binomial transform of least common multiple sequence (A003418), starting with a(1).

The programs for A307800, there is no canonical definition to state claims against.
-/

/-! ## A307800.P16083181723950173073

`Δ[A100442(n+1)]`
-/

namespace A307800.P16083181723950173073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307800.P16083181723950173073

/-! ## A307800.P14992912924985781090

`Δ[record[A100442(A133310(n))]]`
-/

namespace A307800.P14992912924985781090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100442 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307800.P14992912924985781090

/-! ## A307800.P8849046864054804887

`Δ[record[A100442(A141256(n))]]`
-/

namespace A307800.P8849046864054804887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100442 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307800.P8849046864054804887

/-! ## A307800.P12101854921297118729

`Δ[record[A100442(A262519(n))]]`
-/

namespace A307800.P12101854921297118729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100442 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307800.P12101854921297118729

/-! ## A307800.P4982599457176962798

`Δ[record[A100442(A344180(n))]]`
-/

namespace A307800.P4982599457176962798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100442 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307800.P4982599457176962798

/-! ## A307800.P5609334468904942935

`A100442(n+2)-A100442(n+1)`
-/

namespace A307800.P5609334468904942935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100442 (n + 2) - A100442 (n + 1)

end

end A307800.P5609334468904942935

/-!
# A307801: Number of palindromic octagonal numbers with exactly n digits.

The programs for A307801, there is no canonical definition to state claims against.
-/

/-! ## A307801.P13840887240390787040

`A377912(gcd(A160113(2*(n+1)), A303139(3*n+4)))`
-/

namespace A307801.P13840887240390787040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377912 (Int.gcd (A160113 (2 * (n + 1))) (A303139 (3 * n + 4)))

end

end A307801.P13840887240390787040

/-!
# A307803: Inverse binomial transform of least common multiple sequence.

The programs for A307803, there is no canonical definition to state claims against.
-/

/-! ## A307803.P13426696122312651339

`Δ[abs(xor(1, A100443(n)))]`
-/

namespace A307803.P13426696122312651339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (A100443 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307803.P13426696122312651339

/-!
# A307805: a(n) = first position of prime(n) in A023503.

The programs for A307805, there is no canonical definition to state claims against.
-/

/-! ## A307805.P16664710363278036756

`A071349(A114461(n+1)+1)`
-/

namespace A307805.P16664710363278036756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071349 (A114461 (n + 1) + 1).toNat

end

end A307805.P16664710363278036756

/-! ## A307805.P12353328800320558818

`A132949(A000040(n+1))`
-/

namespace A307805.P12353328800320558818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A000040 (n + 1)).toNat

end

end A307805.P12353328800320558818

/-! ## A307805.P5707125594015003712

`A132949(A008578(n+2))`
-/

namespace A307805.P5707125594015003712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A008578 (n + 2)).toNat

end

end A307805.P5707125594015003712

/-! ## A307805.P14785811697332112331

`A132949(A182986(n+2))`
-/

namespace A307805.P14785811697332112331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A182986 (n + 2)).toNat

end

end A307805.P14785811697332112331

/-! ## A307805.P6946395498805151790

`A132949(p?[record[A166333(n)]])`
-/

namespace A307805.P6946395498805151790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307805.P6946395498805151790

/-! ## A307805.P14492829403448829199

`A132949(record[A166333(n+1)])`
-/

namespace A307805.P14492829403448829199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307805.P14492829403448829199

/-! ## A307805.P3154487924121401093

`A132949(record[A006530(n+2)])`
-/

namespace A307805.P3154487924121401093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307805.P3154487924121401093

/-! ## A307805.P13089611066544621396

`A132949(record[A014963(n+2)])`
-/

namespace A307805.P13089611066544621396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307805.P13089611066544621396

/-! ## A307805.P2831579794498175039

`A132949(record[A020639(n+2)])`
-/

namespace A307805.P2831579794498175039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307805.P2831579794498175039

/-! ## A307805.P2519347156360753366

`A132949(A006093(n+1)+1)`
-/

namespace A307805.P2519347156360753366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A006093 (n + 1) + 1).toNat

end

end A307805.P2519347156360753366

/-! ## A307805.P15520287333759121041

`A391765(A006093(n+1)+1)`
-/

namespace A307805.P15520287333759121041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A006093 (n + 1) + 1).toNat

end

end A307805.P15520287333759121041

/-! ## A307805.P8243758150826927794

`A132949(A100484(n+1)/2)`
-/

namespace A307805.P8243758150826927794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A307805.P8243758150826927794

/-! ## A307805.P16941187977433752494

`A132949(record[A000010(n+1)+1])`
-/

namespace A307805.P16941187977433752494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307805.P16941187977433752494

/-! ## A307805.P15863204902500936956

`A391765(A000040(2*n+1-n))`
-/

namespace A307805.P15863204902500936956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A000040 (2 * n + 1 - n)).toNat

end

end A307805.P15863204902500936956

/-! ## A307805.P6095585355780092102

`A132949(record[A333787(2*n+1)+1])`
-/

namespace A307805.P6095585355780092102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A307805.P6095585355780092102

/-! ## A307805.P7603942497490285779

`A391765(A034694(A006093(n+1)))`
-/

namespace A307805.P7603942497490285779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A034694 (A006093 (n + 1)).toNat).toNat

end

end A307805.P7603942497490285779

/-! ## A307805.P3661107524600705602

`A132949(A006005(n+1))+A000035(A001223(n+1))`
-/

namespace A307805.P3661107524600705602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A006005 (n + 1)).toNat + A000035 (A001223 (n + 1)).toNat

end

end A307805.P3661107524600705602

/-! ## A307805.P4855903674424200096

`A391765(A077017(n+2))`
-/

namespace A307805.P4855903674424200096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A077017 (n + 2)).toNat

end

end A307805.P4855903674424200096

/-! ## A307805.P4066664194637326665

`A132949(A006005(n+1))+A000035(A001043(n+1))`
-/

namespace A307805.P4066664194637326665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132949 (A006005 (n + 1)).toNat + A000035 (A001043 (n + 1)).toNat

end

end A307805.P4066664194637326665

/-! ## A307805.P2600472899815337812

`A000720(A035095(n+1))`
-/

namespace A307805.P2600472899815337812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A035095 (n + 1)).toNat

end

end A307805.P2600472899815337812

/-!
# A307810: Expansion of 1/AGM(1-64*x, sqrt((1-16*x)*(1-256*x))).

The programs for A307810, there is no canonical definition to state claims against.
-/

/-! ## A307810.P17084181556651879585

`A307695(n)²`
-/

namespace A307810.P17084181556651879585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307695 n ^ 2

end

end A307810.P17084181556651879585

/-! ## A307810.P4306684197440553588

`A143683(∑[4*n])²`
-/

namespace A307810.P4306684197440553588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143683 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A307810.P4306684197440553588

/-! ## A307810.P4180261846087880455

`A307695(n)^(A178334(n)+1)`
-/

namespace A307810.P4180261846087880455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307695 n : ℚ) ^ (A178334 n + 1 : ℤ)

end

end A307810.P4180261846087880455

/-! ## A307810.P15493534578388302558

`A307695(n)^(A000007(n)+2)`
-/

namespace A307810.P15493534578388302558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307695 n : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A307810.P15493534578388302558

/-! ## A307810.P6943059459774678139

`A307695(n)^A007051(A178334(n))`
-/

namespace A307810.P6943059459774678139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307695 n : ℚ) ^ (A007051 (A178334 n).toNat : ℤ)

end

end A307810.P6943059459774678139

/-!
# A307811: Expansion of 1/AGM(1-45*x, sqrt((1-25*x)*(1-81*x))).

The programs for A307811, there is no canonical definition to state claims against.
-/

/-! ## A307811.P1816382013938277847

`A104454(n)²`
-/

namespace A307811.P1816382013938277847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104454 n ^ 2

end

end A307811.P1816382013938277847

/-! ## A307811.P16187063843567265264

`A104454(n)^(A014963(15*(n+1))+1)`
-/

namespace A307811.P16187063843567265264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A014963 (15 * (n + 1)) + 1 : ℤ)

end

end A307811.P16187063843567265264

/-! ## A307811.P12033930617066666546

`A104454(n)^A020639(A008458(n))`
-/

namespace A307811.P12033930617066666546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A307811.P12033930617066666546

/-! ## A307811.P1062293920939062238

`A104454(n)^A020639(A008574(n))`
-/

namespace A307811.P1062293920939062238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A307811.P1062293920939062238

/-! ## A307811.P3447744319518653919

`A104454(n)^A043529(A016825(n))`
-/

namespace A307811.P3447744319518653919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A043529 (A016825 n).toNat : ℤ)

end

end A307811.P3447744319518653919

/-! ## A307811.P5177164240825283791

`A104454(n)^A133265(A133265(n))`
-/

namespace A307811.P5177164240825283791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A133265 (A133265 n).toNat : ℤ)

end

end A307811.P5177164240825283791

/-! ## A307811.P8198678136997223090

`A104454(n)^A020639(A315203(n))`
-/

namespace A307811.P8198678136997223090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A020639 (A315203 n).toNat : ℤ)

end

end A307811.P8198678136997223090

/-! ## A307811.P620414827152939872

`A104454(n)^A061142(A006530(n+1))`
-/

namespace A307811.P620414827152939872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A061142 (A006530 (n + 1)).toNat : ℤ)

end

end A307811.P620414827152939872

/-! ## A307811.P5836470450745121859

`A104454(n)^A300229(A046501(n+1))`
-/

namespace A307811.P5836470450745121859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104454 n : ℚ) ^ (A300229 (A046501 (n + 1)).toNat : ℤ)

end

end A307811.P5836470450745121859

/-! ## A307811.P14848134900056592799

`A104454(n)%A104454(n+1)*A104454(n)`
-/

namespace A307811.P14848134900056592799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104454 n) (A104454 (n + 1)) * A104454 n

end

end A307811.P14848134900056592799

/-!
# A307812: Triangular numbers t(n) with a zeroless decimal representation such that (product of decimal digits of t(n)) / n is an integer.

The programs for A307812, there is no canonical definition to state claims against.
-/

/-! ## A307812.P8060481097489087693

`A211007(A184308(n+1))`
-/

namespace A307812.P8060481097489087693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211007 (A184308 (n + 1)).toNat

end

end A307812.P8060481097489087693

/-!
# A307813: a(n) = (5/32)*4^n - floor((n^2 + 1)/2)*2^(n - 2).

The programs for A307813, the canonical program `A307813.P16154051539786875330` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307813 has offset 3).

The definition of A307813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307813.P16154051539786875330

`2^(n-2)*(5*2^(n+3)-4*(n+3)²+2*(-1)^(n+3)-2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A307813

/-- `2^(n-2)*(5*2^(n+3)-4*(n+3)²+2*(-1)^(n+3)-2)` -/
def P16154051539786875330.Spec : Prop :=
  ∀ n, P16154051539786875330.a n = (A307813 (n + 3) : ℚ)

end A307813

/-!
# A307815: Number of partitions of n into 3 squarefree parts.

The programs for A307815, there is no canonical definition to state claims against.
-/

/-! ## A307815.P12709183250518161011

`A347649(n)-A347648(n)`
-/

namespace A307815.P12709183250518161011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 n - A347648 n

end

end A307815.P12709183250518161011

/-! ## A307815.P8076155159984265275

`A294234(n)+A347649(n)-A105588(n)`
-/

namespace A307815.P8076155159984265275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + (A347649 n - A105588 n)

end

end A307815.P8076155159984265275

/-! ## A307815.P434299315557137122

`A098236(abs(1-n)+1)+A347649(n)-A347777(n)`
-/

namespace A307815.P434299315557137122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (|1 - (n : ℤ)| + 1).toNat + (A347649 n - A347777 n)

end

end A307815.P434299315557137122

/-! ## A307815.P14535434138802111401

`A294234(A028310(n))-(A105588(n)-A347649(n))`
-/

namespace A307815.P14535434138802111401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 (A028310 n).toNat - (A105588 n - A347649 n)

end

end A307815.P14535434138802111401

/-! ## A307815.P835152382971584219

`A347655(n)-(A347648(n)+A308767(n))`
-/

namespace A307815.P835152382971584219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 n - (A347648 n + A308767 n)

end

end A307815.P835152382971584219

/-!
# A307816: a(1) = 1; a(n) = Sum_{k=1..n-1} a(n-k) * Sum_{d|k} a(d)*a(k/d).

The programs for A307816, there is no canonical definition to state claims against.
-/

/-! ## A307816.P10865417463159021456

`A070548(A151829(n+2)+2)`
-/

namespace A307816.P10865417463159021456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A151829 (n + 2) + 2).toNat

end

end A307816.P10865417463159021456

/-! ## A307816.P3771601879961215234

`A008615(A307878(n)+A000111(n))`
-/

namespace A307816.P3771601879961215234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A307878 n + A000111 n).toNat

end

end A307816.P3771601879961215234

/-! ## A307816.P18319850596235142897

`A103221(A307878(n)+A000111(n))`
-/

namespace A307816.P18319850596235142897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A307878 n + A000111 n).toNat

end

end A307816.P18319850596235142897

/-!
# A307818: Numbers k such that A240718(k) = 0.

The programs for A307818, there is no canonical definition to state claims against.
-/

/-! ## A307818.P14329599672197455103

`eq[0, A240718(n+1)]+1`
-/

namespace A307818.P14329599672197455103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307818.P14329599672197455103

/-! ## A307818.P8096340966796447735

`record[gcd(A000027(n+1), A240718(n+1))]`
-/

namespace A307818.P8096340966796447735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A240718 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307818.P8096340966796447735

/-! ## A307818.P8739526220381699026

`eq[A000007(n), A240718(A028310(n))]`
-/

namespace A307818.P8739526220381699026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240718 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307818.P8739526220381699026

/-! ## A307818.P17258361301582588926

`eq[A000038(n), A240718(A028310(n))]`
-/

namespace A307818.P17258361301582588926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240718 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307818.P17258361301582588926

/-! ## A307818.P4111880898200347346

`eq[A000007(n), A240718(A123108(2*n))]`
-/

namespace A307818.P4111880898200347346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240718 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307818.P4111880898200347346

/-!
# A307819: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 + 2*k*x + k*(k+4)*x^2).

The programs for A307819, there is no canonical definition to state claims against.
-/

/-! ## A307819.P15451552016651094934

`A384758(n)%A066800(A034878(3*n+5))`
-/

namespace A307819.P15451552016651094934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384758 n) (A066800 (A034878 (3 * n + 5)).toNat)

end

end A307819.P15451552016651094934

/-! ## A307819.P9769782430711285933

`A038208(A257493(n))-A200370(n+1)^A155797(n)!`
-/

namespace A307819.P9769782430711285933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 (A257493 n).toNat - A200370 (n + 1) ^ Nat.factorial (A155797 n).toNat

end

end A307819.P9769782430711285933

/-! ## A307819.P17733015837851877283

`A286354(n)+A270417(A088172(n+2))`
-/

namespace A307819.P17733015837851877283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 n + A270417 (A088172 (n + 2)).toNat

end

end A307819.P17733015837851877283

/-! ## A307819.P13971793230607605545

`A384758(n)%A264798(A201166(n))`
-/

namespace A307819.P13971793230607605545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384758 n) (A264798 (A201166 n).toNat)

end

end A307819.P13971793230607605545

/-!
# A307821: The number of exponential abundant numbers below 10^n.

The programs for A307821, there is no canonical definition to state claims against.
-/

/-! ## A307821.P6453617968711517841

`A057627(2*A305819(n))`
-/

namespace A307821.P6453617968711517841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (2 * A305819 n).toNat

end

end A307821.P6453617968711517841

/-! ## A307821.P5217679719553967256

`A057357(A007092(Δ[n!]))`
-/

namespace A307821.P5217679719553967256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A007092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A307821.P5217679719553967256

/-!
# A307822: The number of e-perfect numbers below 10^n.

The programs for A307822, there is no canonical definition to state claims against.
-/

/-! ## A307822.P2700606895848314969

`floor(10^n/9)-A109042(floor(10^n/9))`
-/

namespace A307822.P2700606895848314969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋ - A109042 ⌊(10 ^ n : ℚ) / 9⌋.toNat

end

end A307822.P2700606895848314969

/-!
# A307824: Heinz numbers of integer partitions whose augmented differences are all equal.

The programs for A307824, there is no canonical definition to state claims against.
-/

/-! ## A307824.P661152369369341385

`record[A062759(A241912(n+1))]`
-/

namespace A307824.P661152369369341385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A241912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307824.P661152369369341385

/-! ## A307824.P13219539056276290590

`filter[A241912(n+1), A353627(#)]`
-/

namespace A307824.P13219539056276290590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A307824.P13219539056276290590

/-! ## A307824.P16391819987140331122

`filter[A241912(n+1), A353628(#)]`
-/

namespace A307824.P16391819987140331122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A307824.P16391819987140331122

/-! ## A307824.P9762779006662022486

`filter[A241912(n+1), A384667(#)]`
-/

namespace A307824.P9762779006662022486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A307824.P9762779006662022486

/-! ## A307824.P10755754839538831591

`∩[A241912(n+1), A085924(n)]`
-/

namespace A307824.P10755754839538831591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307824.P10755754839538831591

/-! ## A307824.P7979619969148889606

`lt[A001221(A325351(n+1)), 2]+1`
-/

namespace A307824.P7979619969148889606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325351 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A307824.P7979619969148889606

/-! ## A307824.P11140913563370556024

`∩[A072774(n+1), A241912(n+1)]`
-/

namespace A307824.P11140913563370556024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307824.P11140913563370556024

/-! ## A307824.P17334853964313997428

`∩[A076487(n+1), A241912(n+1)]`
-/

namespace A307824.P17334853964313997428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307824.P17334853964313997428

/-! ## A307824.P3402251419338829287

`∩[A122132(n+1), A241912(n+1)]`
-/

namespace A307824.P3402251419338829287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307824.P3402251419338829287

/-!
# A307826: The number of integers r such that all primes above a certain value have the form primorial(n)*q +- r.

The programs for A307826, there is no canonical definition to state claims against.
-/

/-! ## A307826.P16979154807753166871

`ceil(∏[p?[comp[n²]]-1]/2)`
-/

namespace A307826.P16979154807753166871
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A307826.P16979154807753166871

/-! ## A307826.P17858128800275755364

`round(∏[p?[comp[n²]]-1]/2)`
-/

namespace A307826.P17858128800275755364
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A307826.P17858128800275755364

/-! ## A307826.P6579014715589244306

`(p?[xor(1, n)]-1)*a(n-1)` with `a(0)=1`
-/

namespace A307826.P6579014715589244306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) * a (n - 1)

end

end A307826.P6579014715589244306

/-! ## A307826.P18206316350593243069

`∏[A156037(n+1)]`
-/

namespace A307826.P18206316350593243069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A307826.P18206316350593243069

/-! ## A307826.P17413769857779037225

`a(n-1)*A165972(n)` with `a(0)=1`
-/

namespace A307826.P17413769857779037225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A165972 n

end

end A307826.P17413769857779037225

/-! ## A307826.P6861590727280670771

`ceil(∏[record[A000010(n+1)]]/2)`
-/

namespace A307826.P6861590727280670771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A307826.P6861590727280670771

/-! ## A307826.P3140666597141660043

`a(n-1)*A006093(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A307826.P3140666597141660043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A006093 (n + 1)

end

end A307826.P3140666597141660043

/-! ## A307826.P10059986133432858763

`a(n-1)*A039915(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A307826.P10059986133432858763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A039915 (n + 1)

end

end A307826.P10059986133432858763

/-! ## A307826.P8903845660598901459

`a(n-1)*eq[1, A001222(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A307826.P8903845660598901459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307826.P8903845660598901459

/-! ## A307826.P2912479448765092021

`a(n-1)*eq[2, A000005(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A307826.P2912479448765092021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307826.P2912479448765092021

/-!
# A307827: Palindromic decagonal (or 10-gonal) numbers.

The programs for A307827, there is no canonical definition to state claims against.
-/

/-! ## A307827.P17924796184940875428

`A001107(A307829(n+1))`
-/

namespace A307827.P17924796184940875428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (A307829 (n + 1)).toNat

end

end A307827.P17924796184940875428

/-! ## A307827.P15467691676323520938

`A181995(2*A307829(n+1))`
-/

namespace A307827.P15467691676323520938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181995 (2 * A307829 (n + 1)).toNat

end

end A307827.P15467691676323520938

/-!
# A307828: Number of integer-sided triangles with perimeter n whose smallest side-length divides n.

The programs for A307828, there is no canonical definition to state claims against.
-/

/-! ## A307828.P2364231641262848957

`A054519(A328708(n+1))-A267870(A221073(n))`
-/

namespace A307828.P2364231641262848957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A328708 (n + 1)).toNat - A267870 (A221073 n).toNat

end

end A307828.P2364231641262848957

/-! ## A307828.P18404200316093836022

`A319700(n+1)-A079978(A000285(n))`
-/

namespace A307828.P18404200316093836022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (n + 1) - A079978 (A000285 n).toNat

end

end A307828.P18404200316093836022

/-! ## A307828.P1845961541165133770

`A213725(2*A000200(n))`
-/

namespace A307828.P1845961541165133770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (2 * A000200 n).toNat

end

end A307828.P1845961541165133770

/-! ## A307828.P14822522418751244392

`Δ[A036042(A027362(n+1))]`
-/

namespace A307828.P14822522418751244392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A027362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307828.P14822522418751244392

/-! ## A307828.P546728392034944738

`A115878(n+1)+A055641(A000041(2*n))`
-/

namespace A307828.P546728392034944738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (n + 1) + A055641 (A000041 (2 * n)).toNat

end

end A307828.P546728392034944738

/-!
# A307829: Base numbers of decagonal (10-gonal) palindromic numbers.

The programs for A307829, there is no canonical definition to state claims against.
-/

/-! ## A307829.P14992132508787986463

`round(sqrt(A307827(n+1))/2)`
-/

namespace A307829.P14992132508787986463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A307827 (n + 1) : ℝ) / 2)

end

end A307829.P14992132508787986463

/-! ## A307829.P18403085898389832945

`A001057(floor(sqrt(A307827(n+1))))`
-/

namespace A307829.P18403085898389832945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.sqrt (A307827 (n + 1))).toNat

end

end A307829.P18403085898389832945

/-!
# A307831: Number of palindromic decagonal (10-gonal) numbers with exactly n digits.

The programs for A307831, there is no canonical definition to state claims against.
-/

/-! ## A307831.P16415395168364995665

`A324027(A324022(n+1))%A324026(2*n)`
-/

namespace A307831.P16415395168364995665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324027 (A324022 (n + 1)).toNat) (A324026 (2 * n))

end

end A307831.P16415395168364995665

/-! ## A307831.P2673488038072199045

`A334812(A274925(2*n+3))+A000122(2*n+1)`
-/

namespace A307831.P2673488038072199045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334812 (A274925 (2 * n + 3)).toNat + A000122 (2 * n + 1)

end

end A307831.P2673488038072199045

/-! ## A307831.P6300815497975886934

`A085981(A000079(n))+A000122(2*n+1)`
-/

namespace A307831.P6300815497975886934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085981 (A000079 n).toNat + A000122 (2 * n + 1)

end

end A307831.P6300815497975886934

/-! ## A307831.P988245352433736779

`A260676(2*n+1)+A085981(A000079(n))`
-/

namespace A307831.P988245352433736779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260676 (2 * n + 1) + A085981 (A000079 n).toNat

end

end A307831.P988245352433736779

/-! ## A307831.P3442358921232423896

`A085981(A000079(n))-A002448(2*n+1)`
-/

namespace A307831.P3442358921232423896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085981 (A000079 n).toNat - A002448 (2 * n + 1)

end

end A307831.P3442358921232423896

/-!
# A307833: Smallest k > 1 such that A014574(n)*k is adjacent to a prime.

The programs for A307833, there is no canonical definition to state claims against.
-/

/-! ## A307833.P13479474053749051839

`A309120(A014574(n+1))`
-/

namespace A307833.P13479474053749051839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A014574 (n + 1)).toNat

end

end A307833.P13479474053749051839

/-! ## A307833.P296132867573716525

`A130192(A001359(n+1))`
-/

namespace A307833.P296132867573716525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A001359 (n + 1)).toNat

end

end A307833.P296132867573716525

/-! ## A307833.P9468010042075581895

`A130192(A111166(n+1))`
-/

namespace A307833.P9468010042075581895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A111166 (n + 1)).toNat

end

end A307833.P9468010042075581895

/-! ## A307833.P6084676224899660254

`A130192(A124588(n+2))`
-/

namespace A307833.P6084676224899660254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A124588 (n + 2)).toNat

end

end A307833.P6084676224899660254

/-! ## A307833.P10473322157381106819

`A130192(A181747(n+2))`
-/

namespace A307833.P10473322157381106819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A181747 (n + 2)).toNat

end

end A307833.P10473322157381106819

/-! ## A307833.P15617245263714862206

`A309120(A129297(n+5))`
-/

namespace A307833.P15617245263714862206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A129297 (n + 5)).toNat

end

end A307833.P15617245263714862206

/-! ## A307833.P16632588169605644901

`A309120(sqrt(A075369(n+1)))`
-/

namespace A307833.P16632588169605644901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A307833.P16632588169605644901

/-! ## A307833.P1554356556414544686

`A130192(p?[A001838(n+1)])`
-/

namespace A307833.P1554356556414544686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307833.P1554356556414544686

/-! ## A307833.P13865089138568084535

`A130192(A144834(n+1)+1)`
-/

namespace A307833.P13865089138568084535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A144834 (n + 1) + 1).toNat

end

end A307833.P13865089138568084535

/-! ## A307833.P16885519191270013357

`A309120(A001359(n+1)+1)`
-/

namespace A307833.P16885519191270013357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A001359 (n + 1) + 1).toNat

end

end A307833.P16885519191270013357

/-! ## A307833.P654444308515646752

`A130192(A014574(n+1)-1)`
-/

namespace A307833.P654444308515646752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A014574 (n + 1) - 1).toNat

end

end A307833.P654444308515646752

/-! ## A307833.P6222489644877781958

`A309120(A006512(n+1)-1)`
-/

namespace A307833.P6222489644877781958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (A006512 (n + 1) - 1).toNat

end

end A307833.P6222489644877781958

/-! ## A307833.P6165524982181886855

`A130192(A006512(n+1)-2)`
-/

namespace A307833.P6165524982181886855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A006512 (n + 1) - 2).toNat

end

end A307833.P6165524982181886855

/-! ## A307833.P15520270384576172119

`A309120(2*A040040(n+1))`
-/

namespace A307833.P15520270384576172119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (2 * A040040 (n + 1)).toNat

end

end A307833.P15520270384576172119

/-! ## A307833.P12849986832904822722

`A130192(A108605(n+1)/2)`
-/

namespace A307833.P12849986832904822722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (SequenceMachineLib.roundAway ((A108605 (n + 1) : ℚ) / 2)).toNat

end

end A307833.P12849986832904822722

/-! ## A307833.P18177697483264551756

`A309120(2*A168497(n+2))`
-/

namespace A307833.P18177697483264551756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (2 * A168497 (n + 2)).toNat

end

end A307833.P18177697483264551756

/-! ## A307833.P8551718927101841996

`A309120(xor(1, A006512(n+1)))`
-/

namespace A307833.P8551718927101841996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (Int.xor 1 (A006512 (n + 1))).toNat

end

end A307833.P8551718927101841996

/-! ## A307833.P1652267003052533646

`A130192(p?[A006093(n+1)-1])`
-/

namespace A307833.P1652267003052533646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A307833.P1652267003052533646

/-! ## A307833.P13032465326281035978

`A130192(A001097(2*n+1)-2)`
-/

namespace A307833.P13032465326281035978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A001097 (2 * n + 1) - 2).toNat

end

end A307833.P13032465326281035978

/-! ## A307833.P6433415886179933656

`A309120(p?[A000040(n+1)+2]-1)`
-/

namespace A307833.P6433415886179933656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A307833.P6433415886179933656

/-!
# A307835: Number of partitions of n into 3 distinct squarefree parts.

The programs for A307835, there is no canonical definition to state claims against.
-/

/-! ## A307835.P11830419407871963249

`A358024(n)-A358023(n)`
-/

namespace A307835.P11830419407871963249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358024 n - A358023 n

end

end A307835.P11830419407871963249

/-! ## A307835.P7362120595455706408

`A330955(A091434(n))`
-/

namespace A307835.P7362120595455706408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 (A091434 n).toNat

end

end A307835.P7362120595455706408

/-!
# A307837: a(1) = 1; a(n+1) = Sum_{d|n} lambda(d)*a(d), where lambda = Liouville function (A008836).

The programs for A307837, there is no canonical definition to state claims against.
-/

/-! ## A307837.P9341418233891104498

`A000035(A127525(n+1))`
-/

namespace A307837.P9341418233891104498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A127525 (n + 1)).toNat

end

end A307837.P9341418233891104498

/-! ## A307837.P10291916621395968056

`A349629(A069560(n+2))`
-/

namespace A307837.P10291916621395968056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349629 (A069560 (n + 2)).toNat

end

end A307837.P10291916621395968056

/-! ## A307837.P3221272174342136482

`A059841(A127525(n+1)+1)`
-/

namespace A307837.P3221272174342136482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A127525 (n + 1) + 1).toNat

end

end A307837.P3221272174342136482

/-! ## A307837.P8058186519436148379

`A266719(A127525(n+1)+2)`
-/

namespace A307837.P8058186519436148379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 (A127525 (n + 1) + 2).toNat

end

end A307837.P8058186519436148379

/-! ## A307837.P13637203088965645179

`A260390(A127525(n+1)+4)`
-/

namespace A307837.P13637203088965645179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (A127525 (n + 1) + 4).toNat

end

end A307837.P13637203088965645179

/-!
# A307839: Minimum number of Latin subrectangles in a diagonal Latin square of order n.

The programs for A307839, there is no canonical definition to state claims against.
-/

/-! ## A307839.P7249481228906394794

`A307840(n+1)+A307841(n+1)-A307842(n+1)`
-/

namespace A307839.P7249481228906394794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307840 (n + 1) + (A307841 (n + 1) - A307842 (n + 1))

end

end A307839.P7249481228906394794

/-! ## A307839.P8355021184253848500

`A307840(n+1)-A307842(A328347(n))`
-/

namespace A307839.P8355021184253848500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307840 (n + 1) - A307842 (A328347 n).toNat

end

end A307839.P8355021184253848500

/-!
# A307840: Maximum number of Latin subrectangles in a diagonal Latin square of order n.

The programs for A307840, there is no canonical definition to state claims against.
-/

/-! ## A307840.P13107686305149808450

`A307839(n+1)+A307842(n+1)-A307841(n+1)`
-/

namespace A307840.P13107686305149808450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307839 (n + 1) + (A307842 (n + 1) - A307841 (n + 1))

end

end A307840.P13107686305149808450

/-! ## A307840.P16006434985918506263

`A307842(A328347(n))+A307839(n+1)`
-/

namespace A307840.P16006434985918506263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307842 (A328347 n).toNat + A307839 (n + 1)

end

end A307840.P16006434985918506263

/-!
# A307842: Maximum number of nontrivial Latin subrectangles in a diagonal Latin square of order n.

The programs for A307842, there is no canonical definition to state claims against.
-/

/-! ## A307842.P15125891425560899523

`A307840(n+1)+A307841(n+1)-A307839(n+1)`
-/

namespace A307842.P15125891425560899523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307840 (n + 1) + (A307841 (n + 1) - A307839 (n + 1))

end

end A307842.P15125891425560899523

/-!
# A307843: Divisors of Fermat numbers.

The programs for A307843, there is no canonical definition to state claims against.
-/

/-! ## A307843.P16999804087083025775

`∏{e}[2^n, A023394(#)]`
-/

namespace A307843.P16999804087083025775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A023394 (Nat.factorization (f1 n) p)

end

end A307843.P16999804087083025775

/-! ## A307843.P16497498744688651735

`A023394(A028310(n))%A113332(n)`
-/

namespace A307843.P16497498744688651735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023394 (A028310 n).toNat) (A113332 n)

end

end A307843.P16497498744688651735

/-! ## A307843.P12129587827388523824

`A023394(n*a(A056965(n)))` with `a(0)=1`
-/

namespace A307843.P12129587827388523824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023394 ((n : ℤ) * a (A056965 n).toNat).toNat

end

end A307843.P12129587827388523824

/-! ## A307843.P10912847345936713615

`A023394(n*a(A151949(n)))` with `a(0)=1`
-/

namespace A307843.P10912847345936713615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023394 ((n : ℤ) * a (A151949 n).toNat).toNat

end

end A307843.P10912847345936713615

/-! ## A307843.P8900195802726489490

`∪[A023394(n+5), A006530(A051179(n))]`
-/

namespace A307843.P8900195802726489490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023394 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051179 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307843.P8900195802726489490

/-!
# A307844: Constant term in the expansion of (n/x + 1 + n*x)^n.

The programs for A307844, there is no canonical definition to state claims against.
-/

/-! ## A307844.P15895679442103767240

`A307847(∑[4*n])`
-/

namespace A307844.P15895679442103767240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307844.P15895679442103767240

/-! ## A307844.P6992702909579770728

`or(1, A307847(A046092(n)))`
-/

namespace A307844.P6992702909579770728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307847 (A046092 n).toNat)

end

end A307844.P6992702909579770728

/-! ## A307844.P10386990028349237024

`lcm(A158388(n), A307847(A046092(n)))`
-/

namespace A307844.P10386990028349237024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A307847 (A046092 n).toNat)

end

end A307844.P10386990028349237024

/-! ## A307844.P9185840788950753700

`A307847(A046092(n))/A007318(∑[n])`
-/

namespace A307844.P9185840788950753700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307847 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A307844.P9185840788950753700

/-! ## A307844.P9673319674665769617

`A007318(C(n, 2))*A307847(A046092(n))`
-/

namespace A307844.P9673319674665769617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A307847 (A046092 n).toNat

end

end A307844.P9673319674665769617

/-!
# A307848: 

The programs for A307848, there is no canonical definition to state claims against.
-/

/-! ## A307848.P730353125945628500

`∏{e}[n+1, A037445(#)]`
-/

namespace A307848.P730353125945628500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A037445 (Nat.factorization (f1 n) p)

end

end A307848.P730353125945628500

/-! ## A307848.P12640290595922898816

`∏{e}[n+1, A286324(#)]`
-/

namespace A307848.P12640290595922898816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A286324 (Nat.factorization (f1 n) p)

end

end A307848.P12640290595922898816

/-! ## A307848.P16360419085943832996

`∏{e}[n+1, A335385(#)]`
-/

namespace A307848.P16360419085943832996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A335385 (Nat.factorization (f1 n) p)

end

end A307848.P16360419085943832996

/-! ## A307848.P6937635401250330937

`A061142(A049419(n+1))`
-/

namespace A307848.P6937635401250330937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A049419 (n + 1)).toNat

end

end A307848.P6937635401250330937

/-! ## A307848.P11461322998495620396

`2^A001222(∏{e}[n+1, A000005(#)])`
-/

namespace A307848.P11461322998495620396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p)).toNat : ℤ)

end

end A307848.P11461322998495620396

/-! ## A307848.P4197717505058298970

`∏{e}[n+1, A000010(A000005(#)+A000005(#))]`
-/

namespace A307848.P4197717505058298970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000010 (A000005 (Nat.factorization (f1 n) p) + A000005 (Nat.factorization (f1 n) p)).toNat

end

end A307848.P4197717505058298970

/-! ## A307848.P18120165730977421939

`A049419(A049419(n+1)^5)`
-/

namespace A307848.P18120165730977421939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A049419 (n + 1) ^ 5).toNat

end

end A307848.P18120165730977421939

/-!
# A307849: Number of ways to pay n dollars using Canadian coins, that is: nickels (5 cents), dimes (10 cents), quarters (25 cents), loonies (100 cents or $1 coins) and toonies ($2 coins).

The programs for A307849, the canonical program `A307849.P4646658854026379784` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307849 has offset 0).

The definition of A307849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307849.P4646658854026379784

`(33-9*(-1)^n+224*n+298*n²+136*n^3+20*n^4)/24`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A307849

/-- `(33-9*(-1)^n+224*n+298*n²+136*n^3+20*n^4)/24` -/
def P4646658854026379784.Spec : Prop :=
  ∀ n, P4646658854026379784.a n = (A307849 n : ℚ)

end A307849

/-! ## A307849.P331978703228837471

`∑[∑[A195314(n+1)-A195146(n)]]`
-/

namespace A307849.P331978703228837471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195314 (n + 1) - A195146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307849.P331978703228837471

namespace A307849

/-- `∑[∑[A195314(n+1)-A195146(n)]]` -/
def P331978703228837471.Spec : Prop :=
  ∀ n, P331978703228837471.a n = A307849 n

end A307849

/-! ## A307849.P6716953499271302860

`∑[∑[A090771(3*n+1)+A005476(2*n)]]`
-/

namespace A307849.P6716953499271302860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (3 * n + 1) + A005476 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307849.P6716953499271302860

namespace A307849

/-- `∑[∑[A090771(3*n+1)+A005476(2*n)]]` -/
def P6716953499271302860.Spec : Prop :=
  ∀ n, P6716953499271302860.a n = A307849 n

end A307849

/-! ## A307849.P4860156862739009828

`A367253(A008602(n))`
-/

namespace A307849.P4860156862739009828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367253 (A008602 n).toNat

end

end A307849.P4860156862739009828

namespace A307849

/-- `A367253(A008602(n))` -/
def P4860156862739009828.Spec : Prop :=
  ∀ n, P4860156862739009828.a n = A307849 n

end A307849

/-!
# A307850: Number of palindromic triangular numbers of length n whose index is also palindromic.

The programs for A307850, there is no canonical definition to state claims against.
-/

/-! ## A307850.P9434794345569764561

`round(A319530(A063638(n+1))/(n+1))`
-/

namespace A307850.P9434794345569764561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319530 (A063638 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))

end

end A307850.P9434794345569764561

/-! ## A307850.P5379080195513800126

`round(A277823(n+4)/A077546(n+1))`
-/

namespace A307850.P5379080195513800126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A277823 (n + 4) : ℚ) / (A077546 (n + 1) : ℚ))

end

end A307850.P5379080195513800126

/-! ## A307850.P7001317010124147659

`A216280(or(a(n-2), A187185(n+1)))` with `a(0)=4, a(1)=1`
-/

namespace A307850.P7001317010124147659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  A216280 (Int.lor (a (n - 2)) (A187185 (n + 1))).toNat

end

end A307850.P7001317010124147659

/-! ## A307850.P12237300129303827309

`round(root(A088557(2*n+3), A162217(3*n+4)))-1`
-/

namespace A307850.P12237300129303827309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088557 (2 * n + 3) : ℝ) ^ (1 / (A162217 (3 * n + 4) : ℝ))) - 1

end

end A307850.P12237300129303827309

/-! ## A307850.P7364796052411184460

`val(A295901(A176995(2*(n+2))), A226806(n+1))`
-/

namespace A307850.P7364796052411184460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295901 (A176995 (2 * (n + 2))).toNat).toNat (A226806 (n + 1)).toNat

end

end A307850.P7364796052411184460

/-!
# A307852: Number of equivalence classes of rotational row complete Latin squares of order 2n under Gilbert transformations.

The programs for A307852, there is no canonical definition to state claims against.
-/

/-! ## A307852.P1434048486062749804

`ceil((11^n-n^5)/51)`
-/

namespace A307852.P1434048486062749804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((11 ^ n : ℤ) - (n ^ 5 : ℤ) : ℚ) / 51⌉

end

end A307852.P1434048486062749804

/-!
# A307854: Numbers k such that phi(r) + phi(s) = k has no solution, where phi is Euler totient function.

The programs for A307854, there is no canonical definition to state claims against.
-/

/-! ## A307854.P3207377324735356536

`lt[A307853(n+1), 1]+1`
-/

namespace A307854.P3207377324735356536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A307854.P3207377324735356536

/-! ## A307854.P11619725708671526546

`2*comp[A055034(n+1)]+1`
-/

namespace A307854.P11619725708671526546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A307854.P11619725708671526546

/-! ## A307854.P596975361349742049

`2*comp[A072451(n+1)]+1`
-/

namespace A307854.P596975361349742049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A307854.P596975361349742049

/-! ## A307854.P10640572996487265540

`2*comp[A002180(n+2)]+1`
-/

namespace A307854.P10640572996487265540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A307854.P10640572996487265540

/-! ## A307854.P18011581556588665489

`2*comp[A023022(n+2)]+1`
-/

namespace A307854.P18011581556588665489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A307854.P18011581556588665489

/-! ## A307854.P8413157360994154308

`A005408(comp[A055034(n+1)])`
-/

namespace A307854.P8413157360994154308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A307854.P8413157360994154308

/-! ## A307854.P12470442992518832186

`A005408(comp[ceil(A000010(n+1)/2)])`
-/

namespace A307854.P12470442992518832186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A307854.P12470442992518832186

/-! ## A307854.P17484560464202268376

`A007318(a(A001221(n)))+A005277(n)` with `a(0)=1`
-/

namespace A307854.P17484560464202268376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (a (A001221 n).toNat).toNat + A005277 n

end

end A307854.P17484560464202268376

/-!
# A307855: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 - 2*x + (1-4*k)*x^2).

The programs for A307855, there is no canonical definition to state claims against.
-/

/-! ## A307855.P4512710390578194535

`A110180(∑[2*n]%comp[∑[n]])`
-/

namespace A307855.P4512710390578194535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A307855.P4512710390578194535

/-! ## A307855.P11952745760942596649

`A110180(A061579(n))`
-/

namespace A307855.P11952745760942596649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A061579 n).toNat

end

end A307855.P11952745760942596649

/-! ## A307855.P1931799127987345375

`A110180(∑[A198954(n)-1])`
-/

namespace A307855.P1931799127987345375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307855.P1931799127987345375

/-! ## A307855.P10417731550181495397

`A110180(A038722(n+1)-1)`
-/

namespace A307855.P10417731550181495397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A038722 (n + 1) - 1).toNat

end

end A307855.P10417731550181495397

/-! ## A307855.P755497013824528099

`A110180(A038722(n+2))`
-/

namespace A307855.P755497013824528099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 (A038722 (n + 2)).toNat

end

end A307855.P755497013824528099

/-!
# A307856: a(1) = a(2) = 1; a(n) = Sum_{1 < k < n, k not dividing n} a(k).

The programs for A307856, there is no canonical definition to state claims against.
-/

/-! ## A307856.P18330134309988213519

`A155033(∑[char[1]+n]+1)`
-/

namespace A307856.P18330134309988213519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A307856.P18330134309988213519

/-! ## A307856.P6942389440184790742

`gcd(C(2, n), A155033(∑[n]+2))`
-/

namespace A307856.P6942389440184790742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A307856.P6942389440184790742

/-! ## A307856.P16984575971421587666

`A155033(∑[n]+2)+A000007(n)`
-/

namespace A307856.P16984575971421587666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A000007 n

end

end A307856.P16984575971421587666

/-! ## A307856.P5822749621052655943

`A155033(∑[n]+2)-A057427(n)+1`
-/

namespace A307856.P5822749621052655943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A057427 n + 1

end

end A307856.P5822749621052655943

/-! ## A307856.P18136326523670878091

`A155033(∑[n]+2)+A141056(n)%2`
-/

namespace A307856.P18136326523670878091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + Int.tmod (A141056 n) 2

end

end A307856.P18136326523670878091

/-! ## A307856.P17923309801094486054

`a(A000038(n))*A155033(∑[n]+2)` with `a(0)=1`
-/

namespace A307856.P17923309801094486054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A000038 n).toNat * A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A307856.P17923309801094486054

/-! ## A307856.P7506721386776774809

`A155033(∑[n]+2)+A008683((n+1)²)`
-/

namespace A307856.P7506721386776774809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A008683 ((n + 1) ^ 2)

end

end A307856.P7506721386776774809

/-! ## A307856.P7867725296331389687

`A155033(∑[n]+2)+A000010(n+2)%2`
-/

namespace A307856.P7867725296331389687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + Int.tmod (A000010 (n + 2)) 2

end

end A307856.P7867725296331389687

/-! ## A307856.P3455418431324738606

`A155033(∑[n]+2)+A000045(C(2, n+2))`
-/

namespace A307856.P3455418431324738606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A000045 (Nat.choose 2 (n + 2))

end

end A307856.P3455418431324738606

/-! ## A307856.P12148036840216710608

`A155033(∑[n]+2)+∑{d}[n+1, A008683(#)]`
-/

namespace A307856.P12148036840216710608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + ∑ d ∈ Nat.divisors (f2 n), A008683 d

end

end A307856.P12148036840216710608

/-!
# A307857: Number of partitions of n into 1, 2 or 3 nonprime parts.

The programs for A307857, there is no canonical definition to state claims against.
-/

/-! ## A307857.P10640966591128584377

`A106487(∑[A137171(2*n)])`
-/

namespace A307857.P10640966591128584377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307857.P10640966591128584377

/-! ## A307857.P10870428103905360920

`A212179(A093178(n)+A027306(n))`
-/

namespace A307857.P10870428103905360920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212179 (A093178 n + A027306 n).toNat

end

end A307857.P10870428103905360920

/-! ## A307857.P3468007092434917403

`A065033(n)-A037800(A203074(n))`
-/

namespace A307857.P3468007092434917403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A037800 (A203074 n).toNat

end

end A307857.P3468007092434917403

/-! ## A307857.P4747163936421573812

`A000120(A146620(n+1)+A051159(n))`
-/

namespace A307857.P4747163936421573812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A146620 (n + 1) + A051159 n).toNat

end

end A307857.P4747163936421573812

/-! ## A307857.P13842871482437917536

`A139352(A389741(n)+A233583(n+1))`
-/

namespace A307857.P13842871482437917536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A389741 n + A233583 (n + 1)).toNat

end

end A307857.P13842871482437917536

/-!
# A307861: Numbers that set records on longest chains of "Chained Divisors" of A306661 and A307858.

The programs for A307861, there is no canonical definition to state claims against.
-/

/-! ## A307861.P7845450395656851097

`∏{e}[A292228(n), A073053(#)]`
-/

namespace A307861.P7845450395656851097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A073053 (Nat.factorization (f1 n).natAbs p)

end

end A307861.P7845450395656851097

/-! ## A307861.P16074920831755292988

`∏{e}[A292228(n), A283600(#)]`
-/

namespace A307861.P16074920831755292988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A283600 (Nat.factorization (f1 n).natAbs p)

end

end A307861.P16074920831755292988

/-!
# A307862: Coefficient of x^n in (1 + x - n*x^2)^n.

The programs for A307862, there is no canonical definition to state claims against.
-/

/-! ## A307862.P11583869910819992475

`A307860(∑[4*n])`
-/

namespace A307862.P11583869910819992475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307860 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307862.P11583869910819992475

/-! ## A307862.P17829594918408714813

`or(1, A307860(A046092(n)))`
-/

namespace A307862.P17829594918408714813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307860 (A046092 n).toNat)

end

end A307862.P17829594918408714813

/-! ## A307862.P2367025249072571170

`A307860(A046092(n))^A017820(C(2, n²))`
-/

namespace A307862.P2367025249072571170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307860 (A046092 n).toNat : ℚ) ^ (A017820 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A307862.P2367025249072571170

/-! ## A307862.P10718900037373429060

`A008619(C(n, n^3))*A307860(A046092(n))`
-/

namespace A307862.P10718900037373429060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.choose n (n ^ 3)) * A307860 (A046092 n).toNat

end

end A307862.P10718900037373429060

/-! ## A307862.P16883121825551919004

`A001222(A107814(n+1))*A307860(A046092(n))`
-/

namespace A307862.P16883121825551919004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107814 (n + 1)).toNat * A307860 (A046092 n).toNat

end

end A307862.P16883121825551919004

/-!
# A307864: a(n) is the number of natural bases b < 2n+1 such that b^n == 1 (mod 2n+1).

The programs for A307864, there is no canonical definition to state claims against.
-/

/-! ## A307864.P13095122489722486072

`∏{p}[Δ[n²], gcd(n, A000010(#))]%(n+1)`
-/

namespace A307864.P13095122489722486072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Int.gcd (n : ℤ) (A000010 p)) % (n + 1)

end

end A307864.P13095122489722486072

/-! ## A307864.P1746163891688554996

`gcd(n², A065770(A016017(n+1)))`
-/

namespace A307864.P1746163891688554996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A065770 (A016017 (n + 1)).toNat)

end

end A307864.P1746163891688554996

/-!
# A307865: a(n) is the number of natural bases b < 2n+1 such that b^n == -1 (mod 2n+1).

The programs for A307865, there is no canonical definition to state claims against.
-/

/-! ## A307865.P16325145023680479845

`A307864(n)%A329726(A028310(n))`
-/

namespace A307865.P16325145023680479845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307864 n) (A329726 (A028310 n).toNat)

end

end A307865.P16325145023680479845

/-! ## A307865.P10888848475128885579

`and(n, A107393(record[A097284(n+1)]))`
-/

namespace A307865.P10888848475128885579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A107393 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A307865.P10888848475128885579

/-! ## A307865.P7127112540552668356

`n%A000041(A304464(2*n+1))`
-/

namespace A307865.P7127112540552668356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000041 (A304464 (2 * n + 1)).toNat)

end

end A307865.P7127112540552668356

/-! ## A307865.P2054615955405649222

`and(n, A033999(A331981(2*n+1)))`
-/

namespace A307865.P2054615955405649222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A033999 (A331981 (2 * n + 1)).toNat)

end

end A307865.P2054615955405649222

/-! ## A307865.P3256918801879542020

`n%A081046(A016545(n))`
-/

namespace A307865.P3256918801879542020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A081046 (A016545 n).toNat)

end

end A307865.P3256918801879542020

/-!
# A307866: K-champion numbers: numbers m such that K(m) > K(j) for all j < m, where K(m) is the Kalmár function (A074206).

The programs for A307866, there is no canonical definition to state claims against.
-/

/-! ## A307866.P13963169638772666813

`A333952(n+1)-C(n, n²)`
-/

namespace A307866.P13963169638772666813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333952 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A307866.P13963169638772666813

/-! ## A307866.P2775744279472930722

`xor(A169585(n), A333952(n+1))`
-/

namespace A307866.P2775744279472930722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169585 n) (A333952 (n + 1))

end

end A307866.P2775744279472930722

/-! ## A307866.P535915670833869055

`A333952(n+1)-A019590(n+1)`
-/

namespace A307866.P535915670833869055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333952 (n + 1) - A019590 (n + 1)

end

end A307866.P535915670833869055

/-! ## A307866.P4183746441738562362

`C(A333952(n+1), A276248(C(2, n²)+1))`
-/

namespace A307866.P4183746441738562362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333952 (n + 1)).toNat (A276248 (Nat.choose 2 (n ^ 2) + 1)).toNat

end

end A307866.P4183746441738562362

/-! ## A307866.P5544347988566256248

`C(A333952(n+1), A333952(C(2, n+1)+1))`
-/

namespace A307866.P5544347988566256248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333952 (n + 1)).toNat (A333952 (Nat.choose 2 (n + 1) + 1)).toNat

end

end A307866.P5544347988566256248

/-! ## A307866.P14998164016101253417

`A020639(A000010(n+1))+A333952(n+1)-2`
-/

namespace A307866.P14998164016101253417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat + (A333952 (n + 1) - 2)

end

end A307866.P14998164016101253417

/-! ## A307866.P12072705307819220912

`A333952(n+1)-A055641(A001511(n+1)%(n+1))`
-/

namespace A307866.P12072705307819220912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333952 (n + 1) - A055641 (Int.tmod (A001511 (n + 1)) (n + 1 : ℤ)).toNat

end

end A307866.P12072705307819220912

/-! ## A307866.P12232012158685662501

`A333952(n+1)-A337104(n+1)*A337104(n)`
-/

namespace A307866.P12232012158685662501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333952 (n + 1) - A337104 (n + 1) * A337104 n

end

end A307866.P12232012158685662501

/-!
# A307867: Numbers m such that K(m)/m > K(j)/j for all j < m, where K(m) is the Kalmár function (A074206).

The programs for A307867, there is no canonical definition to state claims against.
-/

/-! ## A307867.P4481756464522994894

`record[A212885(A004215(n+1)*A302126(n))]`
-/

namespace A307867.P4481756464522994894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 (A004215 (n + 1) * A302126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307867.P4481756464522994894

/-! ## A307867.P15598315146170598151

`A001616(A316099(2*n+1)^A321861(2*n+1))`
-/

namespace A307867.P15598315146170598151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (SequenceMachineLib.roundAway ((A316099 (2 * n + 1) : ℚ) ^ (A321861 (2 * n + 1) : ℤ))).toNat

end

end A307867.P15598315146170598151

/-!
# A307870: Numbers k with record values of the ratio d(k)/ud(k) between the number of divisors and the number of unitary divisors.

The programs for A307870, there is no canonical definition to state claims against.
-/

/-! ## A307870.P4161926638161022997

`A330873(A156136(∑[n]))`
-/

namespace A307870.P4161926638161022997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330873 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A307870.P4161926638161022997

/-! ## A307870.P2558634607703021187

`record[A057521(A129721(n))]`
-/

namespace A307870.P2558634607703021187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A129721 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307870.P2558634607703021187

/-! ## A307870.P18041444816198391311

`A330873(A002998(n)+1)`
-/

namespace A307870.P18041444816198391311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330873 (A002998 n + 1).toNat

end

end A307870.P18041444816198391311

/-! ## A307870.P5136185919090366341

`A330873(A043315(n+1))`
-/

namespace A307870.P5136185919090366341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330873 (A043315 (n + 1)).toNat

end

end A307870.P5136185919090366341

/-! ## A307870.P10181427804709008018

`A330873(A044912(n+1))`
-/

namespace A307870.P10181427804709008018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330873 (A044912 (n + 1)).toNat

end

end A307870.P10181427804709008018

/-!
# A307872: Sum of the smallest parts in the partitions of n into 3 parts.

The programs for A307872, the canonical program `A307872.P8733216762987257633` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307872 has offset 1).

The definition of A307872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307872.P8733216762987257633

`∑[∑[∑[n+1]]%(n+1)]+a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A307872

/-- `∑[∑[∑[n+1]]%(n+1)]+a(n-2)` -/
def P8733216762987257633.Spec : Prop :=
  ∀ n, (P8733216762987257633.a n : ℤ) = A307872 (n + 1)

theorem P8733216762987257633.correct : P8733216762987257633.Spec := by
  intro n
  simp only [A307872, Nat.add_sub_cancel]

end A307872

/-! ## A307872.P6665785896780206145

`∑[floor(((A063224(n+1)-n)/2)²)]`
-/

namespace A307872.P6665785896780206145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A063224 (n + 1) - (n : ℤ) : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307872.P6665785896780206145

namespace A307872

/-- `∑[floor(((A063224(n+1)-n)/2)²)]` -/
def P6665785896780206145.Spec : Prop :=
  ∀ n, P6665785896780206145.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P2215945799984497222

`A000601(n)-A144677(n)`
-/

namespace A307872.P2215945799984497222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A144677 n

end

end A307872.P2215945799984497222

namespace A307872

/-- `A000601(n)-A144677(n)` -/
def P2215945799984497222.Spec : Prop :=
  ∀ n, P2215945799984497222.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P4275285506961350435

`∑[A002620(A008611(n+1))]`
-/

namespace A307872.P4275285506961350435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307872.P4275285506961350435

namespace A307872

/-- `∑[A002620(A008611(n+1))]` -/
def P4275285506961350435.Spec : Prop :=
  ∀ n, P4275285506961350435.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P11875134551560311626

`A308266(n+1)-A008763(n)`
-/

namespace A307872.P11875134551560311626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (n + 1) - A008763 n

end

end A307872.P11875134551560311626

namespace A307872

/-- `A308266(n+1)-A008763(n)` -/
def P11875134551560311626.Spec : Prop :=
  ∀ n, P11875134551560311626.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P4167459025384292776

`∑[A008615(n)*A103221(n+1)]`
-/

namespace A307872.P4167459025384292776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n * A103221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307872.P4167459025384292776

namespace A307872

/-- `∑[A008615(n)*A103221(n+1)]` -/
def P4167459025384292776.Spec : Prop :=
  ∀ n, P4167459025384292776.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P4178894395244786170

`∑[(A008615(n)+A000035(n))*A008615(n)]`
-/

namespace A307872.P4178894395244786170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008615 n + A000035 n) * A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307872.P4178894395244786170

namespace A307872

/-- `∑[(A008615(n)+A000035(n))*A008615(n)]` -/
def P4178894395244786170.Spec : Prop :=
  ∀ n, P4178894395244786170.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P5750029712382698485

`∑[A307018(n+1)]`
-/

namespace A307872.P5750029712382698485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307872.P5750029712382698485

namespace A307872

/-- `∑[A307018(n+1)]` -/
def P5750029712382698485.Spec : Prop :=
  ∀ n, P5750029712382698485.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P1010401156338815222

`A309686(n+1)+A309684(n+1)`
-/

namespace A307872.P1010401156338815222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (n + 1) + A309684 (n + 1)

end

end A307872.P1010401156338815222

namespace A307872

/-- `A309686(n+1)+A309684(n+1)` -/
def P1010401156338815222.Spec : Prop :=
  ∀ n, P1010401156338815222.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P9772952843703470892

`∑[A008615(n+3)*A008615(n)]`
-/

namespace A307872.P9772952843703470892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 3) * A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307872.P9772952843703470892

namespace A307872

/-- `∑[A008615(n+3)*A008615(n)]` -/
def P9772952843703470892.Spec : Prop :=
  ∀ n, P9772952843703470892.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P640372535119877141

`A029136(abs(1-2*n))`
-/

namespace A307872.P640372535119877141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 |1 - (2 * n : ℤ)|.toNat

end

end A307872.P640372535119877141

namespace A307872

/-- `A029136(abs(1-2*n))` -/
def P640372535119877141.Spec : Prop :=
  ∀ n, P640372535119877141.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P5733128062053254566

`A387209(A004273(n))`
-/

namespace A307872.P5733128062053254566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387209 (A004273 n).toNat

end

end A307872.P5733128062053254566

namespace A307872

/-- `A387209(A004273(n))` -/
def P5733128062053254566.Spec : Prop :=
  ∀ n, P5733128062053254566.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P5955989517373062871

`A387209(A004274(n+1))`
-/

namespace A307872.P5955989517373062871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387209 (A004274 (n + 1)).toNat

end

end A307872.P5955989517373062871

namespace A307872

/-- `A387209(A004274(n+1))` -/
def P5955989517373062871.Spec : Prop :=
  ∀ n, P5955989517373062871.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P13013660205818075643

`A387209(A004280(n+1))`
-/

namespace A307872.P13013660205818075643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387209 (A004280 (n + 1)).toNat

end

end A307872.P13013660205818075643

namespace A307872

/-- `A387209(A004280(n+1))` -/
def P13013660205818075643.Spec : Prop :=
  ∀ n, P13013660205818075643.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P5090806375720195856

`A254594(2*n)-A144677(n)`
-/

namespace A307872.P5090806375720195856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (2 * n) - A144677 n

end

end A307872.P5090806375720195856

namespace A307872

/-- `A254594(2*n)-A144677(n)` -/
def P5090806375720195856.Spec : Prop :=
  ∀ n, P5090806375720195856.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P17088675054336007225

`A008670(2*n)-A029136(2*n)`
-/

namespace A307872.P17088675054336007225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (2 * n) - A029136 (2 * n)

end

end A307872.P17088675054336007225

namespace A307872

/-- `A008670(2*n)-A029136(2*n)` -/
def P17088675054336007225.Spec : Prop :=
  ∀ n, P17088675054336007225.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P15770359630056673774

`(A008670(2*n)-A025796(2*n))/2`
-/

namespace A307872.P15770359630056673774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008670 (2 * n) - A025796 (2 * n) : ℚ) / 2

end

end A307872.P15770359630056673774

namespace A307872

/-- `(A008670(2*n)-A025796(2*n))/2` -/
def P15770359630056673774.Spec : Prop :=
  ∀ n, P15770359630056673774.a n = (A307872 (n + 1) : ℚ)

end A307872

/-! ## A307872.P6148863481744724712

`∑[A025828(2*n+1)]-A025828(2*n+1)`
-/

namespace A307872.P6148863481744724712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025828 (2 * n + 1)

end

end A307872.P6148863481744724712

namespace A307872

/-- `∑[A025828(2*n+1)]-A025828(2*n+1)` -/
def P6148863481744724712.Spec : Prop :=
  ∀ n, P6148863481744724712.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P15419956516166333529

`∑[∑[A117910(3*n)-A117910(2*n+1)]]`
-/

namespace A307872.P15419956516166333529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (3 * n) - A117910 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307872.P15419956516166333529

namespace A307872

/-- `∑[∑[A117910(3*n)-A117910(2*n+1)]]` -/
def P15419956516166333529.Spec : Prop :=
  ∀ n, P15419956516166333529.a n = A307872 (n + 1)

end A307872

/-! ## A307872.P18119833559999693406

`A029265(A111284(n+1))`
-/

namespace A307872.P18119833559999693406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (A111284 (n + 1)).toNat

end

end A307872.P18119833559999693406

namespace A307872

/-- `A029265(A111284(n+1))` -/
def P18119833559999693406.Spec : Prop :=
  ∀ n, P18119833559999693406.a n = A307872 (n + 1)

end A307872

/-!
# A307875: G.f. A(x) satisfies: A(x) = 1 + x*(1 + x*A(x/(1 - x)^2)/(1 - x)^2).

The programs for A307875, there is no canonical definition to state claims against.
-/

/-! ## A307875.P3419374770305216849

`A187188(A003724(n)*3*(n+1))`
-/

namespace A307875.P3419374770305216849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A003724 n * (3 * (n + 1) : ℤ)).toNat

end

end A307875.P3419374770305216849

/-! ## A307875.P14338014121866275026

`A065475(A226190(n*a(n-1)))` with `a(0)=1`
-/

namespace A307875.P14338014121866275026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065475 (A226190 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A307875.P14338014121866275026

/-! ## A307875.P9695957478786732552

`A289494(A008989(n))+A088809(n)`
-/

namespace A307875.P9695957478786732552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A008989 n).toNat + A088809 n

end

end A307875.P9695957478786732552

/-!
# A307876: a(n) is the smallest m such that there are prime(n) Pythagorean triangles with a leg (not hypotenuse) of length m, or -1 if no such m exists.

The programs for A307876, there is no canonical definition to state claims against.
-/

/-! ## A307876.P4301971894948590799

`2*A016017(p?[round(8*n/7)]+1)`
-/

namespace A307876.P4301971894948590799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016017 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A307876.P4301971894948590799

/-! ## A307876.P7130136305521667981

`A368041(A000040(n+1))`
-/

namespace A307876.P7130136305521667981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368041 (A000040 (n + 1)).toNat

end

end A307876.P7130136305521667981

/-! ## A307876.P4829040884680346415

`A368041(A049551(n+1))`
-/

namespace A307876.P4829040884680346415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368041 (A049551 (n + 1)).toNat

end

end A307876.P4829040884680346415

/-! ## A307876.P12262624744867678010

`A368041(A057448(n+1))`
-/

namespace A307876.P12262624744867678010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368041 (A057448 (n + 1)).toNat

end

end A307876.P12262624744867678010

/-! ## A307876.P743061558362284743

`A368041(A058853(n+1))`
-/

namespace A307876.P743061558362284743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368041 (A058853 (n + 1)).toNat

end

end A307876.P743061558362284743

/-!
# A307877: Number of ways of partitioning the set of the first n positive squares into two subsets whose sums differ at most by 1.

The programs for A307877, there is no canonical definition to state claims against.
-/

/-! ## A307877.P17918434490886059630

`A350403(n)/A040001(∑[n])`
-/

namespace A307877.P17918434490886059630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350403 n : ℚ) / (A040001 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A307877.P17918434490886059630

/-! ## A307877.P13738773407313989030

`ceil(A350403(n)/A014695(n+2))`
-/

namespace A307877.P13738773407313989030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350403 n : ℚ) / (A014695 (n + 2) : ℚ)⌉

end

end A307877.P13738773407313989030

/-! ## A307877.P8828476205794461479

`A350403(n)/gcd(2, A179865(n+1))`
-/

namespace A307877.P8828476205794461479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350403 n : ℚ) / (Int.gcd 2 (A179865 (n + 1)) : ℚ)

end

end A307877.P8828476205794461479

/-! ## A307877.P14135614332498226304

`A350403(n)-A083527(round(acot(n)+n))`
-/

namespace A307877.P14135614332498226304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350403 n - A083527 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A307877.P14135614332498226304

/-! ## A307877.P10801334232367293405

`A350403(n)-A083527(round(sqrt(n²+1)))`
-/

namespace A307877.P10801334232367293405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350403 n - A083527 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A307877.P10801334232367293405

/-!
# A307878: Expansion of e.g.f. exp(3*x)*(sec(x) + tan(x)).

The programs for A307878, there is no canonical definition to state claims against.
-/

/-! ## A307878.P15300426751963461210

`A292975(∑[n+3]+n+3)`
-/

namespace A307878.P15300426751963461210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A307878.P15300426751963461210

/-! ## A307878.P3926811422588226684

`record[A292975(A007401(n+1))/A080247(n+2)]`
-/

namespace A307878.P3926811422588226684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292975 (A007401 (n + 1)).toNat : ℚ) / (A080247 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307878.P3926811422588226684

/-! ## A307878.P10143582664584014704

`record[gcd(A229892(n+4), A292975(n))]`
-/

namespace A307878.P10143582664584014704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229892 (n + 4)) (A292975 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307878.P10143582664584014704

/-! ## A307878.P5365533397505259111

`record[A292975(n)/A109449(n+3)]`
-/

namespace A307878.P5365533397505259111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292975 n : ℚ) / (A109449 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307878.P5365533397505259111

/-! ## A307878.P3496753707249029452

`record[A292975(n)/A247453(n+3)]`
-/

namespace A307878.P3496753707249029452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292975 n : ℚ) / (A247453 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307878.P3496753707249029452

/-!
# A307879: Expansion of e.g.f. exp(4*x)*(sec(x) + tan(x)).

The programs for A307879, there is no canonical definition to state claims against.
-/

/-! ## A307879.P11367672310412241633

`A292975(A052905(n+2))`
-/

namespace A307879.P11367672310412241633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A052905 (n + 2)).toNat

end

end A307879.P11367672310412241633

/-! ## A307879.P13205529600408539295

`A292975(eq[4, A025581(n)])`
-/

namespace A307879.P13205529600408539295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307879.P13205529600408539295

/-! ## A307879.P1683307460671094874

`A292975(eq[9, A099375(n)])`
-/

namespace A307879.P1683307460671094874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307879.P1683307460671094874

/-! ## A307879.P1103280523803191662

`record[A292975(A052905(A008611(n)))]`
-/

namespace A307879.P1103280523803191662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307879.P1103280523803191662

/-! ## A307879.P1610896941765032533

`record[A292975(A052905(A103221(n)))]`
-/

namespace A307879.P1610896941765032533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A052905 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307879.P1610896941765032533

/-!
# A307880: Hypotenuses of primitive pythagorean triangles having the property that the sum and absolute difference of the shorter legs are both prime numbers.

The programs for A307880, there is no canonical definition to state claims against.
-/

/-! ## A307880.P16312608287963477719

`A020882(A233583(n+1)+A227549(n+1))`
-/

namespace A307880.P16312608287963477719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (A233583 (n + 1) + A227549 (n + 1)).toNat

end

end A307880.P16312608287963477719

/-! ## A307880.P5377387884933720814

`A132981(∑[p?[A208150(n)]])`
-/

namespace A307880.P5377387884933720814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132981 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307880.P5377387884933720814

/-! ## A307880.P13530444148664850534

`A020882(lt[A285558(n), A001105(n)])`
-/

namespace A307880.P13530444148664850534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307880.P13530444148664850534

/-! ## A307880.P13801515416182771480

`A020882(lt[A208092(n+1), A003056(n)])`
-/

namespace A307880.P13801515416182771480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A307880.P13801515416182771480

/-!
# A307881: 2*a(n) is the least number where k sets a new record such that 2*a(n)-k and 2*a(n)+k are prime and at least one of 2*a(n)-j and 2*a(n)+j is composite for all 0

The programs for A307881, there is no canonical definition to state claims against.
-/

/-! ## A307881.P3839473466918433289

`A103147(record[A047160(2*(n+3))])/2`
-/

namespace A307881.P3839473466918433289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (2 * (n + 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103147 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A307881.P3839473466918433289

/-! ## A307881.P12315614879526555844

`A107926(record[A047160(2*(n+3))])/4`
-/

namespace A307881.P12315614879526555844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (2 * (n + 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 4

end

end A307881.P12315614879526555844

/-! ## A307881.P5361553102953058550

`record[A117818(A004525(A065978(n+1)))]`
-/

namespace A307881.P5361553102953058550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A004525 (A065978 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307881.P5361553102953058550

/-!
# A307882: Records of the offset k in A307881, divided by 3.

The programs for A307882, there is no canonical definition to state claims against.
-/

/-! ## A307882.P9036983317713207559

`A032742(record[A264526(n+2)])-A000038(n)`
-/

namespace A307882.P9036983317713207559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000038 n

end

end A307882.P9036983317713207559

/-!
# A307883: Square array read by descending antidiagonals: T(n, k) where column k is the expansion of 1/sqrt(1 - 2*(k+1)*x + ((k-1)*x)^2).

The programs for A307883, there is no canonical definition to state claims against.
-/

/-! ## A307883.P5709076377923855871

`A120565(A395080(n))`
-/

namespace A307883.P5709076377923855871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A395080 n).toNat

end

end A307883.P5709076377923855871

/-! ## A307883.P10929725126659403125

`A337769(A111670(n+1))`
-/

namespace A307883.P10929725126659403125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A111670 (n + 1)).toNat

end

end A307883.P10929725126659403125

/-! ## A307883.P12089281189474706019

`A048105(A079474(n+1))+1`
-/

namespace A307883.P12089281189474706019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A079474 (n + 1)).toNat + 1

end

end A307883.P12089281189474706019

/-! ## A307883.P13932861690792317900

`A227177(A027935(n)^A003056(n))`
-/

namespace A307883.P13932861690792317900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (SequenceMachineLib.roundAway ((A027935 n : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A307883.P13932861690792317900

/-! ## A307883.P11728857056265696457

`and(A034294(A144303(n)), A144303(n))`
-/

namespace A307883.P11728857056265696457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034294 (A144303 n).toNat) (A144303 n)

end

end A307883.P11728857056265696457

/-!
# A307884: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 + 2*(k-1)*x + ((k+1)*x)^2).

The programs for A307884, there is no canonical definition to state claims against.
-/

/-! ## A307884.P16232730704382590926

`A336179(n)%A040002(A000322(n))`
-/

namespace A307884.P16232730704382590926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336179 n) (A040002 (A000322 n).toNat)

end

end A307884.P16232730704382590926

/-! ## A307884.P9915917076070425225

`A336201(n)-and(2, A002617(n))`
-/

namespace A307884.P9915917076070425225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336201 n - Int.land 2 (A002617 n)

end

end A307884.P9915917076070425225

/-! ## A307884.P4062668530707386077

`A002321(A078802(n)!)-char[8]`
-/

namespace A307884.P4062668530707386077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (Nat.factorial (A078802 n).toNat) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A307884.P4062668530707386077

/-! ## A307884.P5198988598600971741

`or(1-A001221(A266213(n)!), A336179(n))%4`
-/

namespace A307884.P5198988598600971741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (1 - A001221 (Nat.factorial (A266213 n).toNat)) (A336179 n)) 4

end

end A307884.P5198988598600971741

/-! ## A307884.P11401689459878824518

`or(2-A000005(5^A071920(n)), A336179(n))%4`
-/

namespace A307884.P11401689459878824518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (2 - A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A071920 n : ℤ))).toNat) (A336179 n)) 4

end

end A307884.P11401689459878824518

/-!
# A307885: Coefficient of x^n in (1 - (n-1)*x - n*x^2)^n.

The programs for A307885, there is no canonical definition to state claims against.
-/

/-! ## A307885.P5299034778017448130

`A307884(∑[4*n])`
-/

namespace A307885.P5299034778017448130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307885.P5299034778017448130

/-! ## A307885.P14091168526839691484

`A060576(n)*A307884(A046092(n))`
-/

namespace A307885.P14091168526839691484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A307884 (A046092 n).toNat

end

end A307885.P14091168526839691484

/-! ## A307885.P14800068904799969364

`A304042(n)*A307884(A046092(n))`
-/

namespace A307885.P14800068904799969364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A307884 (A046092 n).toNat

end

end A307885.P14800068904799969364

/-! ## A307885.P15568822127198094087

`or(A000007(n), A307884(A046092(n)))`
-/

namespace A307885.P15568822127198094087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A307884 (A046092 n).toNat)

end

end A307885.P15568822127198094087

/-! ## A307885.P405148197489343

`or(A003982(n), A307884(A046092(n)))`
-/

namespace A307885.P405148197489343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A307884 (A046092 n).toNat)

end

end A307885.P405148197489343

/-!
# A307887: Least number k such that the determinant of the symmetric Toeplitz matrix formed by its decimal digits is equal to n.

The programs for A307887, there is no canonical definition to state claims against.
-/

/-! ## A307887.P15481052472608671331

`A360455(A006926(n))+n-1`
-/

namespace A307887.P15481052472608671331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360455 (A006926 n).toNat + ((n : ℤ) - 1)

end

end A307887.P15481052472608671331

/-! ## A307887.P3560154931659769611

`C(A004148(n), A043954(n+3)+1)+n`
-/

namespace A307887.P3560154931659769611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004148 n).toNat (A043954 (n + 3) + 1).toNat + n

end

end A307887.P3560154931659769611

/-! ## A307887.P13564676475462954557

`A257685(A056971(n))+A007953(n)`
-/

namespace A307887.P13564676475462954557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257685 (A056971 n).toNat + A007953 n

end

end A307887.P13564676475462954557

/-! ## A307887.P11323843714396836696

`A230686(A337495(n))+A007953(n)`
-/

namespace A307887.P11323843714396836696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230686 (A337495 n).toNat + A007953 n

end

end A307887.P11323843714396836696

/-! ## A307887.P14274892428671228538

`A193581(A135385(n+1))+A051022(n)`
-/

namespace A307887.P14274892428671228538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A135385 (n + 1)).toNat + A051022 n

end

end A307887.P14274892428671228538

/-!
# A307888: Non-coreful perfect numbers.

The programs for A307888, there is no canonical definition to state claims against.
-/

/-! ## A307888.P1980502069369712670

`A336565(A226275(n)+n)`
-/

namespace A307888.P1980502069369712670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336565 (A226275 n + (n : ℤ)).toNat

end

end A307888.P1980502069369712670

/-! ## A307888.P1696216529872571156

`A336565(A073207(2*n)+1)`
-/

namespace A307888.P1696216529872571156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336565 (A073207 (2 * n) + 1).toNat

end

end A307888.P1696216529872571156

/-!
# A307889: G.f. A(x) satisfies: A(x) = 1 + x*A(x^2)/(1 - x)^2.

The programs for A307889, there is no canonical definition to state claims against.
-/

/-! ## A307889.P17431158626121414013

`Δ[round(A173283(n)/4)]`
-/

namespace A307889.P17431158626121414013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173283 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307889.P17431158626121414013

/-! ## A307889.P1409744792831342160

`Δ[A130130(n)*A298414(n)]`
-/

namespace A307889.P1409744792831342160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n * A298414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307889.P1409744792831342160

/-! ## A307889.P10939300859725763365

`Δ[ceil(A173283(n)/8)*A130130(n)]`
-/

namespace A307889.P10939300859725763365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173283 n : ℚ) / 8⌉ * A130130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307889.P10939300859725763365

/-! ## A307889.P13859928332257472020

`A004277(Δ[A298414(n)])`
-/

namespace A307889.P13859928332257472020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A307889.P13859928332257472020

/-! ## A307889.P16022106283295333760

`A004275(Δ[A298414(n)]+1)`
-/

namespace A307889.P16022106283295333760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (n + 1) - f1 n + 1).toNat

end

end A307889.P16022106283295333760

/-!
# A307891: Rectilinear crossing number A014540(n) - crossing number A000241(n) of complete graph on n nodes.

The programs for A307891, there is no canonical definition to state claims against.
-/

/-! ## A307891.P14966871706811308711

`A014540(n+1)-∑[A028724(n)]`
-/

namespace A307891.P14966871706811308711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014540 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307891.P14966871706811308711

/-! ## A307891.P7823304024549302313

`A014540(n+1)-A000241(n+1)`
-/

namespace A307891.P7823304024549302313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014540 (n + 1) - A000241 (n + 1)

end

end A307891.P7823304024549302313

/-! ## A307891.P4365400991073198389

`A014540(n+1)-A002265(A307182(n+1))`
-/

namespace A307891.P4365400991073198389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014540 (n + 1) - A002265 (A307182 (n + 1)).toNat

end

end A307891.P4365400991073198389

/-!
# A307892: a(n) = lcm(tau(n), pod(n)) / n, where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

The programs for A307892, the canonical program `A307892.P2139601516006320098` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307892 has offset 1).

The definition of A307892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307892.P2139601516006320098

`A324528(n+1)/(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A307892

/-- `A324528(n+1)/(n+1)` -/
def P2139601516006320098.Spec : Prop :=
  ∀ n, P2139601516006320098.a n = (A307892 (n + 1) : ℚ)

end A307892

/-! ## A307892.P8211704153606061654

`∏{d}[n+1, #]/(n+1)*A137927(n+1)`
-/

namespace A307892.P8211704153606061654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * (A137927 (n + 1) : ℚ)

end

end A307892.P8211704153606061654

namespace A307892

/-- `∏{d}[n+1, #]/(n+1)*A137927(n+1)` -/
def P8211704153606061654.Spec : Prop :=
  ∀ n, P8211704153606061654.a n = (A307892 (n + 1) : ℚ)

end A307892

/-! ## A307892.P1629062674013688498

`lcm(A000005(n+1), ∏{d}[n+1, #])/(n+1)`
-/

namespace A307892.P1629062674013688498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000005 (n + 1)) ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A307892.P1629062674013688498

namespace A307892

/-- `lcm(A000005(n+1), ∏{d}[n+1, #])/(n+1)` -/
def P1629062674013688498.Spec : Prop :=
  ∀ n, P1629062674013688498.a n = (A307892 (n + 1) : ℚ)

end A307892

/-! ## A307892.P12421054557717305273

`lcm(-∑{d}[n+1, or(#, -1)], ∑{d}[n+1, A174940(#)])/(n+1)`
-/

namespace A307892.P12421054557717305273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (-(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1))) (∑ d ∈ Nat.divisors (f2 n), A174940 d) : ℚ) / (n + 1 : ℚ)

end

end A307892.P12421054557717305273

namespace A307892

/-- `lcm(-∑{d}[n+1, or(#, -1)], ∑{d}[n+1, A174940(#)])/(n+1)` -/
def P12421054557717305273.Spec : Prop :=
  ∀ n, P12421054557717305273.a n = (A307892 (n + 1) : ℚ)

end A307892

/-! ## A307892.P16912954932286939738

`A007956(n+1)*A137927(n+1)`
-/

namespace A307892.P16912954932286939738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A137927 (n + 1)

end

end A307892.P16912954932286939738

namespace A307892

/-- `A007956(n+1)*A137927(n+1)` -/
def P16912954932286939738.Spec : Prop :=
  ∀ n, P16912954932286939738.a n = A307892 (n + 1)

end A307892

/-! ## A307892.P4077091072110131327

`lcm(A007956(n+1), A090387(n+1))`
-/

namespace A307892.P4077091072110131327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007956 (n + 1)) (A090387 (n + 1))

end

end A307892.P4077091072110131327

namespace A307892

/-- `lcm(A007956(n+1), A090387(n+1))` -/
def P4077091072110131327.Spec : Prop :=
  ∀ n, (P4077091072110131327.a n : ℤ) = A307892 (n + 1)

end A307892

/-! ## A307892.P10559935774234402403

`Δ[A006218(n)]*A291186(n+1)/(n+1)`
-/

namespace A307892.P10559935774234402403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A291186 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307892.P10559935774234402403

namespace A307892

/-- `Δ[A006218(n)]*A291186(n+1)/(n+1)` -/
def P10559935774234402403.Spec : Prop :=
  ∀ n, P10559935774234402403.a n = (A307892 (n + 1) : ℚ)

end A307892

/-! ## A307892.P11237489332536371703

`A000005(n+1)*A291186(n+1)/(n+1)`
-/

namespace A307892.P11237489332536371703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A291186 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307892.P11237489332536371703

namespace A307892

/-- `A000005(n+1)*A291186(n+1)/(n+1)` -/
def P11237489332536371703.Spec : Prop :=
  ∀ n, P11237489332536371703.a n = (A307892 (n + 1) : ℚ)

end A307892

/-! ## A307892.P7656171127090468773

`lcm(A000005(n+1), A007955(n+1))/(n+1)`
-/

namespace A307892.P7656171127090468773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000005 (n + 1)) (A007955 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A307892.P7656171127090468773

namespace A307892

/-- `lcm(A000005(n+1), A007955(n+1))/(n+1)` -/
def P7656171127090468773.Spec : Prop :=
  ∀ n, P7656171127090468773.a n = (A307892 (n + 1) : ℚ)

end A307892

/-! ## A307892.P4827568142723111967

`sqrt(A277169(n+1))*A137927(n+1)`
-/

namespace A307892.P4827568142723111967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277169 (n + 1) : ℝ) * (A137927 (n + 1) : ℝ)

end

end A307892.P4827568142723111967

namespace A307892

/-- `sqrt(A277169(n+1))*A137927(n+1)` -/
def P4827568142723111967.Spec : Prop :=
  ∀ n, P4827568142723111967.a n = (A307892 (n + 1) : ℝ)

end A307892

/-!
# A307893: a(n) = lcm(sigma(n), pod(n)) / n, where sigma (k) = the sum of divisors of k (A000203) and pod(n) = the product of divisors of k (A007955).

The programs for A307893, the canonical program `A307893.P7001022775789678280` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307893 has offset 1).

The definition of A307893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324529, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307893.P7001022775789678280

`A324529(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A307893

/-- `A324529(n+1)/(n+1)` -/
def P7001022775789678280.Spec : Prop :=
  ∀ n, P7001022775789678280.a n = (A307893 (n + 1) : ℚ)

end A307893

/-! ## A307893.P10285486981744145439

`lcm(∑{d}[n+1, #], ∏{d}[n+1, #])/(n+1)`
-/

namespace A307893.P10285486981744145439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∑ d ∈ Nat.divisors (f1 n), d) (∏ d ∈ Nat.divisors (f2 n), d) : ℚ) / (n + 1 : ℚ)

end

end A307893.P10285486981744145439

namespace A307893

/-- `lcm(∑{d}[n+1, #], ∏{d}[n+1, #])/(n+1)` -/
def P10285486981744145439.Spec : Prop :=
  ∀ n, P10285486981744145439.a n = (A307893 (n + 1) : ℚ)

end A307893

/-! ## A307893.P17908917052915550047

`∑{d}[n+1, A244668(n+1)/#]`
-/

namespace A307893.P17908917052915550047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A244668 (n + 1) : ℚ) / (d : ℚ)

end

end A307893.P17908917052915550047

namespace A307893

/-- `∑{d}[n+1, A244668(n+1)/#]` -/
def P17908917052915550047.Spec : Prop :=
  ∀ n, P17908917052915550047.a n = (A307893 (n + 1) : ℚ)

end A307893

/-! ## A307893.P5217475133093140686

`∏{d}[n+1, #]/(n+1)*A244669(n+1)`
-/

namespace A307893.P5217475133093140686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) * (A244669 (n + 1) : ℚ)

end

end A307893.P5217475133093140686

namespace A307893

/-- `∏{d}[n+1, #]/(n+1)*A244669(n+1)` -/
def P5217475133093140686.Spec : Prop :=
  ∀ n, P5217475133093140686.a n = (A307893 (n + 1) : ℚ)

end A307893

/-! ## A307893.P3549024683174433910

`lcm(A000203(n+1), ∏{d}[n+1, #])/(n+1)`
-/

namespace A307893.P3549024683174433910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000203 (n + 1)) ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A307893.P3549024683174433910

namespace A307893

/-- `lcm(A000203(n+1), ∏{d}[n+1, #])/(n+1)` -/
def P3549024683174433910.Spec : Prop :=
  ∀ n, P3549024683174433910.a n = (A307893 (n + 1) : ℚ)

end A307893

/-! ## A307893.P8045995335989850248

`lcm(∏{d}[n+1, #]/(n+1), A017665(n+1))`
-/

namespace A307893.P8045995335989850248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (A017665 (n + 1))

end

end A307893.P8045995335989850248

namespace A307893

/-- `lcm(∏{d}[n+1, #]/(n+1), A017665(n+1))` -/
def P8045995335989850248.Spec : Prop :=
  ∀ n, (P8045995335989850248.a n : ℤ) = A307893 (n + 1)

end A307893

/-! ## A307893.P5296753385670065444

`∑{d}[n+1, 1/#]*∏{d}[n+1, #]/A306682(n+1)`
-/

namespace A307893.P5296753385670065444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)) * ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A307893.P5296753385670065444

namespace A307893

/-- `∑{d}[n+1, 1/#]*∏{d}[n+1, #]/A306682(n+1)` -/
def P5296753385670065444.Spec : Prop :=
  ∀ n, P5296753385670065444.a n = (A307893 (n + 1) : ℚ)

end A307893

/-! ## A307893.P9215219605491050677

`A007956(n+1)*A244669(n+1)`
-/

namespace A307893.P9215219605491050677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A244669 (n + 1)

end

end A307893.P9215219605491050677

namespace A307893

/-- `A007956(n+1)*A244669(n+1)` -/
def P9215219605491050677.Spec : Prop :=
  ∀ n, P9215219605491050677.a n = A307893 (n + 1)

end A307893

/-! ## A307893.P13076608664094256439

`lcm(A007956(n+1), A017665(n+1))`
-/

namespace A307893.P13076608664094256439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007956 (n + 1)) (A017665 (n + 1))

end

end A307893.P13076608664094256439

namespace A307893

/-- `lcm(A007956(n+1), A017665(n+1))` -/
def P13076608664094256439.Spec : Prop :=
  ∀ n, (P13076608664094256439.a n : ℤ) = A307893 (n + 1)

end A307893

/-! ## A307893.P3957983753024900107

`A220846(n+1)/A306682(n+1)`
-/

namespace A307893.P3957983753024900107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220846 (n + 1) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A307893.P3957983753024900107

namespace A307893

/-- `A220846(n+1)/A306682(n+1)` -/
def P3957983753024900107.Spec : Prop :=
  ∀ n, P3957983753024900107.a n = (A307893 (n + 1) : ℚ)

end A307893

/-!
# A307894: Hypotenuses of primitive Pythagorean triangles with prime length, having the property that the sum and absolute difference of the shorter legs are both prime numbers.

The programs for A307894, there is no canonical definition to state claims against.
-/

/-! ## A307894.P15310445506392436614

`p?[A307880(n+1)]`
-/

namespace A307894.P15310445506392436614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A307894.P15310445506392436614

/-! ## A307894.P17939396435579250451

`filter[A307880(n+1), A010051(#)]`
-/

namespace A307894.P17939396435579250451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A307894.P17939396435579250451

/-! ## A307894.P15280351921498810105

`filter[A307880(n+1), A323152(#)]`
-/

namespace A307894.P15280351921498810105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A307894.P15280351921498810105

/-! ## A307894.P15377438364592188272

`filter[A307880(n+1), A323153(#)]`
-/

namespace A307894.P15377438364592188272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A307894.P15377438364592188272

/-! ## A307894.P279051286517574016

`filter[A307880(n+1), A327861(#)]`
-/

namespace A307894.P279051286517574016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A307894.P279051286517574016

/-! ## A307894.P11293850799639375043

`filter[A307880(n+1), A327866(#)]`
-/

namespace A307894.P11293850799639375043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327866 (f1 j).toNat = 1) n)

end

end A307894.P11293850799639375043

/-! ## A307894.P13345184672144526119

`filter[A307880(n+1), A340371(#)]`
-/

namespace A307894.P13345184672144526119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A307894.P13345184672144526119

/-! ## A307894.P17400242442561005730

`filter[A307880(n+1), A342460(#)]`
-/

namespace A307894.P17400242442561005730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A307894.P17400242442561005730

/-! ## A307894.P14539803720454727517

`filter[A307880(n+1), A351957(#)]`
-/

namespace A307894.P14539803720454727517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A307894.P14539803720454727517

/-! ## A307894.P11893874471401881359

`∩[A283391(n+1), A307880(n+1)]`
-/

namespace A307894.P11893874471401881359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P11893874471401881359

/-! ## A307894.P5111829272964006792

`∩[A002144(n+1), A307880(n+1)]`
-/

namespace A307894.P5111829272964006792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P5111829272964006792

/-! ## A307894.P12980811191591876673

`∩[A002313(n+1), A307880(n+1)]`
-/

namespace A307894.P12980811191591876673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P12980811191591876673

/-! ## A307894.P77963983212366546

`∩[A280084(n+1), A307880(n+1)]`
-/

namespace A307894.P77963983212366546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P77963983212366546

/-! ## A307894.P13192331762874372013

`∩[A055025(n+1), A307880(n+1)]`
-/

namespace A307894.P13192331762874372013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P13192331762874372013

/-! ## A307894.P13824854805631692557

`∩[A172480(n+1), A307880(n+1)]`
-/

namespace A307894.P13824854805631692557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P13824854805631692557

/-! ## A307894.P14507158461470383047

`∩[A266987(n+1), A307880(n+1)]`
-/

namespace A307894.P14507158461470383047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P14507158461470383047

/-! ## A307894.P5767120439484254350

`∩[A175768(n+1), A307880(n+1)]`
-/

namespace A307894.P5767120439484254350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P5767120439484254350

/-! ## A307894.P8124071667108917946

`∩[A109515(n+1), A307880(n+1)]`
-/

namespace A307894.P8124071667108917946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P8124071667108917946

/-! ## A307894.P14600111109669447856

`∩[A049092(n+1), A307880(n+1)]`
-/

namespace A307894.P14600111109669447856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P14600111109669447856

/-! ## A307894.P2069894102209680215

`∩[A079348(n+1), A307880(n+1)]`
-/

namespace A307894.P2069894102209680215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307894.P2069894102209680215

/-!
# A307895: Numbers whose prime exponents, starting from the largest prime factor through to the smallest, form an initial interval of positive integers.

The programs for A307895, there is no canonical definition to state claims against.
-/

/-! ## A307895.P17791987130620902779

`eq[0, A336971(A077462(n))]`
-/

namespace A307895.P17791987130620902779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336971 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A307895.P17791987130620902779

/-! ## A307895.P16155058025064271911

`record[A243074(A230843(n+1))]`
-/

namespace A307895.P16155058025064271911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A230843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307895.P16155058025064271911

/-! ## A307895.P16016307701009786379

`∩[A179983(n+1), A304686(n+1)]`
-/

namespace A307895.P16016307701009786379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307895.P16016307701009786379

/-! ## A307895.P18294142307986893756

`∩[A212166(n+1), A304686(n+1)]`
-/

namespace A307895.P18294142307986893756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307895.P18294142307986893756

/-! ## A307895.P12128549507849340700

`∩[A212167(n+1), A304686(n+1)]`
-/

namespace A307895.P12128549507849340700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307895.P12128549507849340700

/-! ## A307895.P3464523050560556493

`∪[A008578(n+1), A096156(n+1)]`
-/

namespace A307895.P3464523050560556493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307895.P3464523050560556493

/-! ## A307895.P7681438841596930087

`∪[A015919(n+1), A096156(n+1)]`
-/

namespace A307895.P7681438841596930087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307895.P7681438841596930087

/-! ## A307895.P10503932956953924276

`∪[A096156(n+1), A324050(n+1)]`
-/

namespace A307895.P10503932956953924276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307895.P10503932956953924276

/-!
# A307898: Expansion of 1/(1 - x * Sum_{k>=1} prime(k)*x^k).

The programs for A307898, there is no canonical definition to state claims against.
-/

/-! ## A307898.P3782671816421231653

`A094192(A182968(n))-ceil((n+1)/(1/xor(n, n+1)+1))`
-/

namespace A307898.P3782671816421231653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A182968 n).toNat - ⌈(n + 1 : ℚ) / (1 / (Nat.xor n (n + 1) : ℚ) + 1)⌉

end

end A307898.P3782671816421231653

/-! ## A307898.P12907644722700608203

`A199883(n+1)-A112762(A199892(n+1))`
-/

namespace A307898.P12907644722700608203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199883 (n + 1) - A112762 (A199892 (n + 1)).toNat

end

end A307898.P12907644722700608203

/-! ## A307898.P10735261242095649841

`A145545(n+1)-A326453(A307049(n+1))`
-/

namespace A307898.P10735261242095649841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145545 (n + 1) - A326453 (A307049 (n + 1)).toNat

end

end A307898.P10735261242095649841

