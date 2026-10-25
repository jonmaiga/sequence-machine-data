import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A134700: Triangle read by rows: A000012 * A051731^2.

The programs for A134700, the canonical program `A134700.P8117380377990256962` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134700 has offset 1).

The definition of A134700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134700.P2729418603024759694

`A006218(A010766(n+1))`
-/

namespace A134700.P2729418603024759694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A010766 (n + 1)).toNat

end

end A134700.P2729418603024759694

namespace A134700

/-- `A006218(A010766(n+1))` -/
def P2729418603024759694.Spec : Prop :=
  ∀ n, P2729418603024759694.a n = A134700 (n + 1)

end A134700

/-! ## A134700.P7044870534666317329

`A056535(A128489(n+1))`
-/

namespace A134700.P7044870534666317329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056535 (A128489 (n + 1)).toNat

end

end A134700.P7044870534666317329

namespace A134700

/-- `A056535(A128489(n+1))` -/
def P7044870534666317329.Spec : Prop :=
  ∀ n, P7044870534666317329.a n = A134700 (n + 1)

end A134700

/-! ## A134700.P8117380377990256962

`A113215(A085383(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134700

/-- `A113215(A085383(n+1))` -/
def P8117380377990256962.Spec : Prop :=
  ∀ n, P8117380377990256962.a n = A134700 (n + 1)

theorem P8117380377990256962.correct : P8117380377990256962.Spec := by
  intro n
  simp only [A134700, Nat.add_sub_cancel]

end A134700

/-! ## A134700.P5521628382001255814

`A113215(A360610(n+1))`
-/

namespace A134700.P5521628382001255814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A360610 (n + 1)).toNat

end

end A134700.P5521628382001255814

namespace A134700

/-- `A113215(A360610(n+1))` -/
def P5521628382001255814.Spec : Prop :=
  ∀ n, P5521628382001255814.a n = A134700 (n + 1)

end A134700

/-! ## A134700.P17687009657826028942

`A113215(A010766(n+1)²)`
-/

namespace A134700.P17687009657826028942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A010766 (n + 1) ^ 2).toNat

end

end A134700.P17687009657826028942

namespace A134700

/-- `A113215(A010766(n+1)²)` -/
def P17687009657826028942.Spec : Prop :=
  ∀ n, P17687009657826028942.a n = A134700 (n + 1)

end A134700

/-! ## A134700.P1071883975524435747

`A006218(A013942(2*(n+1)))`
-/

namespace A134700.P1071883975524435747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A013942 (2 * (n + 1))).toNat

end

end A134700.P1071883975524435747

namespace A134700

/-- `A006218(A013942(2*(n+1)))` -/
def P1071883975524435747.Spec : Prop :=
  ∀ n, P1071883975524435747.a n = A134700 (n + 1)

end A134700

/-! ## A134700.P11402763602376515146

`A113215(A331147(n+1))`
-/

namespace A134700.P11402763602376515146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A331147 (n + 1)).toNat

end

end A134700.P11402763602376515146

namespace A134700

/-- `A113215(A331147(n+1))` -/
def P11402763602376515146.Spec : Prop :=
  ∀ n, P11402763602376515146.a n = A134700 (n + 1)

end A134700

/-! ## A134700.P2484314128532740275

`A113215(A331149(n+1))`
-/

namespace A134700.P2484314128532740275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A331149 (n + 1)).toNat

end

end A134700.P2484314128532740275

namespace A134700

/-- `A113215(A331149(n+1))` -/
def P2484314128532740275.Spec : Prop :=
  ∀ n, P2484314128532740275.a n = A134700 (n + 1)

end A134700

/-! ## A134700.P11083774397709811550

`A113215(A331151(n+1))`
-/

namespace A134700.P11083774397709811550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A331151 (n + 1)).toNat

end

end A134700.P11083774397709811550

namespace A134700

/-- `A113215(A331151(n+1))` -/
def P11083774397709811550.Spec : Prop :=
  ∀ n, P11083774397709811550.a n = A134700 (n + 1)

end A134700

/-!
# A134701: Smallest initial prime, greater than 3, of a prime chain of length n under the iteration x->2x-3.

The programs for A134701, there is no canonical definition to state claims against.
-/

/-! ## A134701.P6050953509542442121

`A105269(A304885(n)²)`
-/

namespace A134701.P6050953509542442121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105269 (A304885 n ^ 2).toNat

end

end A134701.P6050953509542442121

/-! ## A134701.P4951431440655825247

`A006512(A243712(n!))`
-/

namespace A134701.P4951431440655825247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A243712 (Nat.factorial n)).toNat

end

end A134701.P4951431440655825247

/-! ## A134701.P14716812502814572968

`A006512(A354781((n-floor(sqrt(2*n+1)-1/2))!))`
-/

namespace A134701.P14716812502814572968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A354781 (Nat.factorial ((n : ℤ) - ⌊Real.sqrt (2 * n + 1 : ℝ) - ((1 : ℚ) / 2 : ℝ)⌋).toNat)).toNat

end

end A134701.P14716812502814572968

/-!
# A134703: Powerful numbers (2b): a sum of nonnegative powers of its digits.

The programs for A134703, there is no canonical definition to state claims against.
-/

/-! ## A134703.P14333813194952306992

`A061862(n+1)%A225702(n+1)`
-/

namespace A134703.P14333813194952306992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061862 (n + 1)) (A225702 (n + 1))

end

end A134703.P14333813194952306992

/-! ## A134703.P5834665820252469975

`A335520(3*n+5)+A061862(n+1)`
-/

namespace A134703.P5834665820252469975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (3 * n + 5) + A061862 (n + 1)

end

end A134703.P5834665820252469975

/-! ## A134703.P14160409135553877899

`A184974(A114295(n))+A061862(n+1)`
-/

namespace A134703.P14160409135553877899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A114295 n).toNat + A061862 (n + 1)

end

end A134703.P14160409135553877899

/-! ## A134703.P2499757135348412397

`A061862(n+1)+A061853(A290678(n))`
-/

namespace A134703.P2499757135348412397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1) + A061853 (A290678 n).toNat

end

end A134703.P2499757135348412397

/-! ## A134703.P7052310643745467485

`A057427(A229915(n))*A061862(n+1)`
-/

namespace A134703.P7052310643745467485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A229915 n).toNat * A061862 (n + 1)

end

end A134703.P7052310643745467485

/-!
# A134704: Expansion of g.f. -x*(10*x^4+12*x^3-x^2-3*x-3)/((x^2+x-1)*(4*x^3+x^2-x-1)).

The programs for A134704, the canonical program `A134704.P14496363667609766584` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134704 has offset 1).

The definition of A134704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x+x^2-12x^3-10x^4)/(1-3x^2-4x^3+5x^4+4x^5))` (program `A134704.P14496363667609766584`, by `A134704.P14496363667609766584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134704.P14496363667609766584

`ogf((3+3x+x^2-12x^3-10x^4)/(1-3x^2-4x^3+5x^4+4x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134704

/-- `ogf((3+3x+x^2-12x^3-10x^4)/(1-3x^2-4x^3+5x^4+4x^5))` -/
def P14496363667609766584.Spec : Prop :=
  ∀ n, P14496363667609766584.a n = A134704 (n + 1)

theorem P14496363667609766584.correct : P14496363667609766584.Spec := by
  intro n
  simp only [A134704, Nat.add_sub_cancel]

end A134704

/-!
# A134705: a(n) = n-th perfect number divided by 2^n.

The programs for A134705, there is no canonical definition to state claims against.
-/

/-! ## A134705.P11848421150415117535

`A000396(n+1)/2^(n+1)`
-/

namespace A134705.P11848421150415117535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A134705.P11848421150415117535

/-! ## A134705.P10889059521225865844

`A134706(n+1)+1`
-/

namespace A134705.P10889059521225865844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134706 (n + 1) + 1

end

end A134705.P10889059521225865844

/-! ## A134705.P11367286275266840510

`A133028(n+1)/2^n`
-/

namespace A134705.P11367286275266840510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133028 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A134705.P11367286275266840510

/-! ## A134705.P1628913890502442588

`floor(A133028(n+1)/A000079(n))`
-/

namespace A134705.P1628913890502442588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133028 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A134705.P1628913890502442588

/-! ## A134705.P11120388762088119777

`A233757(A139117(n+1)-(n+1))`
-/

namespace A134705.P11120388762088119777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233757 (A139117 (n + 1) - (n + 1 : ℤ)).toNat

end

end A134705.P11120388762088119777

/-!
# A134706: a(n) = n-th perfect number divided by 2^n, minus 1.

The programs for A134706, there is no canonical definition to state claims against.
-/

/-! ## A134706.P7707274920426007159

`A134705(n+1)-1`
-/

namespace A134706.P7707274920426007159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134705 (n + 1) - 1

end

end A134706.P7707274920426007159

/-! ## A134706.P4124663194240064823

`A000396(n+1)/2^(n+1)-1`
-/

namespace A134706.P4124663194240064823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ) - 1

end

end A134706.P4124663194240064823

/-! ## A134706.P17642678762828042048

`floor(A133067(n+1)/A000079(n))`
-/

namespace A134706.P17642678762828042048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133067 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A134706.P17642678762828042048

/-! ## A134706.P599705958474148830

`A133028(n+1)/A000079(n)-1`
-/

namespace A134706.P599705958474148830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133028 (n + 1) : ℚ) / (A000079 n : ℚ) - 1

end

end A134706.P599705958474148830

/-! ## A134706.P9414856858914513132

`floor(A133067(n+1)/A133025(n+1))`
-/

namespace A134706.P9414856858914513132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133067 (n + 1) : ℚ) / (A133025 (n + 1) : ℚ)⌋

end

end A134706.P9414856858914513132

/-!
# A134707: a(n) = floor(n^sqrt(Pi)).

The programs for A134707, the canonical program `A134707.P18211234444570781755` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134707 has offset 1).

The definition of A134707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^sqrt(π))` (program `A134707.P18211234444570781755`, by `A134707.P18211234444570781755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134707.P18211234444570781755

`floor((n+1)^sqrt(π))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134707

/-- `floor((n+1)^sqrt(π))` -/
def P18211234444570781755.Spec : Prop :=
  ∀ n, P18211234444570781755.a n = A134707 (n + 1)

theorem P18211234444570781755.correct : P18211234444570781755.Spec := by
  intro n
  simp only [A134707, Nat.add_sub_cancel]

end A134707

/-!
# A134708: Even superperfect numbers divided by 2.

The programs for A134708, there is no canonical definition to state claims against.
-/

/-! ## A134708.P10909532531116498013

`2^(A000043(n+1)-2)`
-/

namespace A134708.P10909532531116498013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 1) - 2 : ℤ)

end

end A134708.P10909532531116498013

/-! ## A134708.P17558355946060570254

`sqrt(A152923(n+1))`
-/

namespace A134708.P17558355946060570254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152923 (n + 1) : ℝ)

end

end A134708.P17558355946060570254

/-! ## A134708.P12879846530522510124

`A134709(n+1)+1`
-/

namespace A134708.P12879846530522510124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134709 (n + 1) + 1

end

end A134708.P12879846530522510124

/-! ## A134708.P9775357205592143049

`A019279(n+1)/2`
-/

namespace A134708.P9775357205592143049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019279 (n + 1) : ℚ) / 2

end

end A134708.P9775357205592143049

/-! ## A134708.P17939335618255882283

`2^A153798(n+1)`
-/

namespace A134708.P17939335618255882283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A153798 (n + 1) : ℤ)

end

end A134708.P17939335618255882283

/-!
# A134709: Even superperfect numbers divided by 2, minus 1.

The programs for A134709, there is no canonical definition to state claims against.
-/

/-! ## A134709.P9188416982289327863

`A134708(n+1)-1`
-/

namespace A134709.P9188416982289327863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134708 (n + 1) - 1

end

end A134709.P9188416982289327863

/-! ## A134709.P1795536587578835707

`sqrt(A152923(n+1))-1`
-/

namespace A134709.P1795536587578835707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152923 (n + 1) : ℝ) - 1

end

end A134709.P1795536587578835707

/-! ## A134709.P5882195775078304327

`floor(A000668(n+1)/4)`
-/

namespace A134709.P5882195775078304327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000668 (n + 1) : ℚ) / 4⌋

end

end A134709.P5882195775078304327

/-! ## A134709.P16213604093475741517

`floor(A343733(n+2)/4)`
-/

namespace A134709.P16213604093475741517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343733 (n + 2) : ℚ) / 4⌋

end

end A134709.P16213604093475741517

/-! ## A134709.P16949039327965157536

`floor(A139257(n+1)/8)`
-/

namespace A134709.P16949039327965157536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139257 (n + 1) : ℚ) / 8⌋

end

end A134709.P16949039327965157536

/-!
# A134710: a(n) = n-th even superperfect number divided by 2^n.

The programs for A134710, there is no canonical definition to state claims against.
-/

/-! ## A134710.P8272722880259964771

`2^(A000043(n+1)-(n+1)-1)`
-/

namespace A134710.P8272722880259964771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 1) - (n + 1 : ℤ) - 1 : ℤ)

end

end A134710.P8272722880259964771

/-! ## A134710.P16629354617513370668

`A134711(n+1)+1`
-/

namespace A134710.P16629354617513370668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134711 (n + 1) + 1

end

end A134710.P16629354617513370668

/-! ## A134710.P15071083586213436228

`2^A134712(n+1)`
-/

namespace A134710.P15071083586213436228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A134712 (n + 1) : ℤ)

end

end A134710.P15071083586213436228

/-! ## A134710.P4583186630154781920

`2^(A134713(n+1)-1)`
-/

namespace A134710.P4583186630154781920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A134713 (n + 1) - 1 : ℤ)

end

end A134710.P4583186630154781920

/-! ## A134710.P15559095298992822541

`2^(A153798(n+1)-n)`
-/

namespace A134710.P15559095298992822541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A153798 (n + 1) - (n : ℤ) : ℤ)

end

end A134710.P15559095298992822541

/-!
# A134711: a(n) = n-th even superperfect number divided by 2^n, minus 1.

The programs for A134711, there is no canonical definition to state claims against.
-/

/-! ## A134711.P12424772595246197584

`A134710(n+1)-1`
-/

namespace A134711.P12424772595246197584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134710 (n + 1) - 1

end

end A134711.P12424772595246197584

/-! ## A134711.P2138079800102672582

`2^A134712(n+1)-1`
-/

namespace A134711.P2138079800102672582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A134712 (n + 1) : ℤ) - 1

end

end A134711.P2138079800102672582

/-! ## A134711.P14849072582335462250

`floor(A134709(n+1)/2^n)`
-/

namespace A134711.P14849072582335462250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134709 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A134711.P14849072582335462250

/-! ## A134711.P10725766791532763037

`A134708(n+1)/2^n-1`
-/

namespace A134711.P10725766791532763037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134708 (n + 1) : ℚ) / (2 ^ n : ℚ) - 1

end

end A134711.P10725766791532763037

/-! ## A134711.P7968523824975280058

`A000225(A134712(n+1))`
-/

namespace A134711.P7968523824975280058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A134712 (n + 1)).toNat

end

end A134711.P7968523824975280058

/-!
# A134712: Base-2 logarithm of (n-th even superperfect number divided by 2^n).

The programs for A134712, there is no canonical definition to state claims against.
-/

/-! ## A134712.P13868460443922719666

`A090748(n+1)-(n+1)`
-/

namespace A134712.P13868460443922719666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) - (n + 1 : ℤ)

end

end A134712.P13868460443922719666

/-! ## A134712.P12759002525485150057

`A000043(n+1)-(n+1)-1`
-/

namespace A134712.P12759002525485150057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - (n + 1 : ℤ) - 1

end

end A134712.P12759002525485150057

/-! ## A134712.P4642094267352378592

`A134713(n+1)-1`
-/

namespace A134712.P4642094267352378592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134713 (n + 1) - 1

end

end A134712.P4642094267352378592

/-! ## A134712.P11240300112436243511

`A153798(n+1)-n`
-/

namespace A134712.P11240300112436243511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) - (n : ℤ)

end

end A134712.P11240300112436243511

/-! ## A134712.P6270928104689298191

`A000043(n+1)-(n+2)`
-/

namespace A134712.P6270928104689298191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - (n + 2 : ℤ)

end

end A134712.P6270928104689298191

/-!
# A134713: Base-2 logarithm of (n-th even superperfect number divided by 2^n), plus 1.

The programs for A134713, there is no canonical definition to state claims against.
-/

/-! ## A134713.P14924384906821199403

`A090748(n+1)-n`
-/

namespace A134713.P14924384906821199403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) - (n : ℤ)

end

end A134713.P14924384906821199403

/-! ## A134713.P2425002934140140274

`A000043(n+1)-(n+1)`
-/

namespace A134713.P2425002934140140274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - (n + 1 : ℤ)

end

end A134713.P2425002934140140274

/-! ## A134713.P13049611357961379974

`A134712(n+1)+1`
-/

namespace A134713.P13049611357961379974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134712 (n + 1) + 1

end

end A134713.P13049611357961379974

/-! ## A134713.P13362530474914682103

`A153798(n+1)+1-n`
-/

namespace A134713.P13362530474914682103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + (1 - (n : ℤ))

end

end A134713.P13362530474914682103

/-! ## A134713.P17001208013861744831

`A050475(n+1)-(n+2)`
-/

namespace A134713.P17001208013861744831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - (n + 2 : ℤ)

end

end A134713.P17001208013861744831

/-!
# A134715: Odd Bell numbers.

The programs for A134715, there is no canonical definition to state claims against.
-/

/-! ## A134715.P6427405457605708850

`A000110((6*(n+1)-7-(-1)^(n+1))/4)`
-/

namespace A134715.P6427405457605708850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway (((6 * (n + 1) : ℤ) - 7 - (-1) ^ (n + 1) : ℚ) / 4)).toNat

end

end A134715.P6427405457605708850

/-! ## A134715.P11400263075878642615

`A123081(A195160(n))`
-/

namespace A134715.P11400263075878642615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A195160 n).toNat

end

end A134715.P11400263075878642615

/-! ## A134715.P6166055149015149910

`A123081(A210981(n))`
-/

namespace A134715.P6166055149015149910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A210981 n).toNat

end

end A134715.P6166055149015149910

/-! ## A134715.P16827296161491159623

`A188164(A047225(n+1))`
-/

namespace A134715.P16827296161491159623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (A047225 (n + 1)).toNat

end

end A134715.P16827296161491159623

/-! ## A134715.P9714361845186603686

`A188164(A047238(n+1))`
-/

namespace A134715.P9714361845186603686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (A047238 (n + 1)).toNat

end

end A134715.P9714361845186603686

/-! ## A134715.P4741544090198786408

`A188164(A298474(n+1))`
-/

namespace A134715.P4741544090198786408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (A298474 (n + 1)).toNat

end

end A134715.P4741544090198786408

/-! ## A134715.P1356926983387932857

`A343254(A274221(n+1))`
-/

namespace A134715.P1356926983387932857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343254 (A274221 (n + 1)).toNat

end

end A134715.P1356926983387932857

/-! ## A134715.P18302240734952830679

`A123346(A210981(n)+n)`
-/

namespace A134715.P18302240734952830679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A210981 n + (n : ℤ)).toNat

end

end A134715.P18302240734952830679

/-!
# A134716: a(n) = least number m such that sigma(m)/m > n, where sigma(m) = sum of divisors of m.

The programs for A134716, there is no canonical definition to state claims against.
-/

/-! ## A134716.P6280967359496092614

`A061799(ceil(sqrt(A136551(n))))`
-/

namespace A134716.P6280967359496092614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 ⌈Real.sqrt (A136551 n : ℝ)⌉.toNat

end

end A134716.P6280967359496092614

/-! ## A134716.P10007722749178040337

`A143176(A322847(n+1)+A046787(n))`
-/

namespace A134716.P10007722749178040337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143176 (A322847 (n + 1) + A046787 n).toNat

end

end A134716.P10007722749178040337

/-!
# A134717: Odd Motzkin numbers.

The programs for A134717, the canonical program `A134717.P9837690411213750985` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134717 has offset 1).

The definition of A134717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134717.P9837690411213750985

`A001006(A161674(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134717

/-- `A001006(A161674(n+1))` -/
def P9837690411213750985.Spec : Prop :=
  ∀ n, P9837690411213750985.a n = A134717 (n + 1)

theorem P9837690411213750985.correct : P9837690411213750985.Spec := by
  intro n
  simp only [A134717, Nat.add_sub_cancel]

end A134717

/-! ## A134717.P12712029552093707875

`A001006(lt[0, A039963(n)])`
-/

namespace A134717.P12712029552093707875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134717.P12712029552093707875

namespace A134717

/-- `A001006(lt[0, A039963(n)])` -/
def P12712029552093707875.Spec : Prop :=
  ∀ n, P12712029552093707875.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P779402474063392690

`A001006(eq[1, A039963(n)])`
-/

namespace A134717.P779402474063392690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134717.P779402474063392690

namespace A134717

/-- `A001006(eq[1, A039963(n)])` -/
def P779402474063392690.Spec : Prop :=
  ∀ n, P779402474063392690.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P3973859217448246649

`A001006(lt[0, A245187(n)])`
-/

namespace A134717.P3973859217448246649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134717.P3973859217448246649

namespace A134717

/-- `A001006(lt[0, A245187(n)])` -/
def P3973859217448246649.Spec : Prop :=
  ∀ n, P3973859217448246649.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P9813586120925526043

`A001006(eq[1, A001006(n)%2])`
-/

namespace A134717.P9813586120925526043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134717.P9813586120925526043

namespace A134717

/-- `A001006(eq[1, A001006(n)%2])` -/
def P9813586120925526043.Spec : Prop :=
  ∀ n, P9813586120925526043.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P16686429966951553909

`A001006(eq[1, gcd(2, A001006(n))])`
-/

namespace A134717.P16686429966951553909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134717.P16686429966951553909

namespace A134717

/-- `A001006(eq[1, gcd(2, A001006(n))])` -/
def P16686429966951553909.Spec : Prop :=
  ∀ n, P16686429966951553909.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P3897340408732047970

`A001006(eq[1, and(1, A001006(n))])`
-/

namespace A134717.P3897340408732047970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134717.P3897340408732047970

namespace A134717

/-- `A001006(eq[1, and(1, A001006(n))])` -/
def P3897340408732047970.Spec : Prop :=
  ∀ n, P3897340408732047970.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P15718889924445660465

`A001006(A161641(2*n+1)/2)`
-/

namespace A134717.P15718889924445660465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.roundAway ((A161641 (2 * n + 1) : ℚ) / 2)).toNat

end

end A134717.P15718889924445660465

namespace A134717

/-- `A001006(A161641(2*n+1)/2)` -/
def P15718889924445660465.Spec : Prop :=
  ∀ n, P15718889924445660465.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P5361436143896631799

`A001006(eq[1, val(A001006(n), 2)+1])`
-/

namespace A134717.P5361436143896631799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001006 n).toNat 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134717.P5361436143896631799

namespace A134717

/-- `A001006(eq[1, val(A001006(n), 2)+1])` -/
def P5361436143896631799.Spec : Prop :=
  ∀ n, P5361436143896631799.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P15197880698345179864

`A001006(eq[1, 1-val(A001006(n), 2)])`
-/

namespace A134717.P15197880698345179864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A001006 n).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134717.P15197880698345179864

namespace A134717

/-- `A001006(eq[1, 1-val(A001006(n), 2)])` -/
def P15197880698345179864.Spec : Prop :=
  ∀ n, P15197880698345179864.a n = A134717 (n + 1)

end A134717

/-! ## A134717.P4900019381603490230

`A001006(eq[1, val(2*A001006(n), 2)])`
-/

namespace A134717.P4900019381603490230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A001006 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134717.P4900019381603490230

namespace A134717

/-- `A001006(eq[1, val(2*A001006(n), 2)])` -/
def P4900019381603490230.Spec : Prop :=
  ∀ n, P4900019381603490230.a n = A134717 (n + 1)

end A134717

/-!
# A134718: Even Motzkin numbers.

The programs for A134718, the canonical program `A134718.P7894386797613415673` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134718 has offset 1).

The definition of A134718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134718.P7894386797613415673

`A001006(A081706(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134718

/-- `A001006(A081706(n+1))` -/
def P7894386797613415673.Spec : Prop :=
  ∀ n, P7894386797613415673.a n = A134718 (n + 1)

theorem P7894386797613415673.correct : P7894386797613415673.Spec := by
  intro n
  simp only [A134718, Nat.add_sub_cancel]

end A134718

/-! ## A134718.P98496391851977317

`2*A135618(n+1)`
-/

namespace A134718.P98496391851977317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135618 (n + 1)

end

end A134718.P98496391851977317

namespace A134718

/-- `2*A135618(n+1)` -/
def P98496391851977317.Spec : Prop :=
  ∀ n, P98496391851977317.a n = A134718 (n + 1)

end A134718

/-! ## A134718.P17218463026427271273

`A001006(eq[0, A039963(n)])`
-/

namespace A134718.P17218463026427271273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134718.P17218463026427271273

namespace A134718

/-- `A001006(eq[0, A039963(n)])` -/
def P17218463026427271273.Spec : Prop :=
  ∀ n, P17218463026427271273.a n = A134718 (n + 1)

end A134718

/-! ## A134718.P2168614974908920037

`A001006(lt[A039963(n), 1])`
-/

namespace A134718.P2168614974908920037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A134718.P2168614974908920037

namespace A134718

/-- `A001006(lt[A039963(n), 1])` -/
def P2168614974908920037.Spec : Prop :=
  ∀ n, P2168614974908920037.a n = A134718 (n + 1)

end A134718

/-! ## A134718.P3974998472432436316

`A001006(lt[A245187(n), 1])`
-/

namespace A134718.P3974998472432436316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245187 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A134718.P3974998472432436316

namespace A134718

/-- `A001006(lt[A245187(n), 1])` -/
def P3974998472432436316.Spec : Prop :=
  ∀ n, P3974998472432436316.a n = A134718 (n + 1)

end A134718

/-! ## A134718.P12383728029542125021

`abs(A166587(A344346(n+1)))`
-/

namespace A134718.P12383728029542125021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (A344346 (n + 1)).toNat|

end

end A134718.P12383728029542125021

namespace A134718

/-- `abs(A166587(A344346(n+1)))` -/
def P12383728029542125021.Spec : Prop :=
  ∀ n, P12383728029542125021.a n = A134718 (n + 1)

end A134718

/-! ## A134718.P11365286082733649703

`A086246(A081706(n+1)+2)`
-/

namespace A134718.P11365286082733649703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (A081706 (n + 1) + 2).toNat

end

end A134718.P11365286082733649703

namespace A134718

/-- `A086246(A081706(n+1)+2)` -/
def P11365286082733649703.Spec : Prop :=
  ∀ n, P11365286082733649703.a n = A134718 (n + 1)

end A134718

/-! ## A134718.P18133166288531973216

`A168049(A081706(n+1)+2)`
-/

namespace A134718.P18133166288531973216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (A081706 (n + 1) + 2).toNat

end

end A134718.P18133166288531973216

namespace A134718

/-- `A168049(A081706(n+1)+2)` -/
def P18133166288531973216.Spec : Prop :=
  ∀ n, P18133166288531973216.a n = A134718 (n + 1)

end A134718

/-! ## A134718.P17703943195925654491

`A001006(A344346(n+1)-1)`
-/

namespace A134718.P17703943195925654491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A344346 (n + 1) - 1).toNat

end

end A134718.P17703943195925654491

namespace A134718

/-- `A001006(A344346(n+1)-1)` -/
def P17703943195925654491.Spec : Prop :=
  ∀ n, P17703943195925654491.a n = A134718 (n + 1)

theorem P17703943195925654491.correct : P17703943195925654491.Spec := by
  intro n
  simp only [A134718, Nat.add_sub_cancel, A134718.P17703943195925654491.a, A134718.P7894386797613415673.a, A001006, A001006.P11199602840237397285.a, A081706, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, A344346, A344346.P16964101836230254873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134718

/-! ## A134718.P2078459213015314786

`A001006(eq[2, gcd(2, A001006(n))])`
-/

namespace A134718.P2078459213015314786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134718.P2078459213015314786

namespace A134718

/-- `A001006(eq[2, gcd(2, A001006(n))])` -/
def P2078459213015314786.Spec : Prop :=
  ∀ n, P2078459213015314786.a n = A134718 (n + 1)

end A134718

/-!
# A134719: Odd Padovan numbers.

The programs for A134719, the canonical program `A134719.P13112211751660439804` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134719 has offset 1).

The definition of A134719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134719.P13112211751660439804

`A000931(A047328(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134719

/-- `A000931(A047328(n+1))` -/
def P13112211751660439804.Spec : Prop :=
  ∀ n, P13112211751660439804.a n = A134719 (n + 1)

theorem P13112211751660439804.correct : P13112211751660439804.Spec := by
  intro n
  simp only [A134719, Nat.add_sub_cancel]

end A134719

/-! ## A134719.P16214422980562488135

`A078027(A047328(n+1)+2)`
-/

namespace A134719.P16214422980562488135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A047328 (n + 1) + 2).toNat

end

end A134719.P16214422980562488135

namespace A134719

/-- `A078027(A047328(n+1)+2)` -/
def P16214422980562488135.Spec : Prop :=
  ∀ n, P16214422980562488135.a n = A134719 (n + 1)

end A134719

/-! ## A134719.P7942362205979477574

`A000931(A028919(n+1)/2)`
-/

namespace A134719.P7942362205979477574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (SequenceMachineLib.roundAway ((A028919 (n + 1) : ℚ) / 2)).toNat

end

end A134719.P7942362205979477574

namespace A134719

/-- `A000931(A028919(n+1)/2)` -/
def P7942362205979477574.Spec : Prop :=
  ∀ n, P7942362205979477574.a n = A134719 (n + 1)

end A134719

/-! ## A134719.P7441809166747603150

`abs(A124745(A047328(n+1)+2))`
-/

namespace A134719.P7441809166747603150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124745 (A047328 (n + 1) + 2).toNat|

end

end A134719.P7441809166747603150

namespace A134719

/-- `abs(A124745(A047328(n+1)+2))` -/
def P7441809166747603150.Spec : Prop :=
  ∀ n, P7441809166747603150.a n = A134719 (n + 1)

end A134719

/-! ## A134719.P1775220141972741155

`A000931(record[A002262(A017053(n))])`
-/

namespace A134719.P1775220141972741155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A017053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134719.P1775220141972741155

namespace A134719

/-- `A000931(record[A002262(A017053(n))])` -/
def P1775220141972741155.Spec : Prop :=
  ∀ n, P1775220141972741155.a n = A134719 (n + 1)

end A134719

/-!
# A134720: Even Padovan numbers.

The programs for A134720, the canonical program `A134720.P14885746599945397126` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134720 has offset 1).

The definition of A134720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134720.P17711512398500950705

`2*A135619(n+1)`
-/

namespace A134720.P17711512398500950705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135619 (n + 1)

end

end A134720.P17711512398500950705

namespace A134720

/-- `2*A135619(n+1)` -/
def P17711512398500950705.Spec : Prop :=
  ∀ n, P17711512398500950705.a n = A134720 (n + 1)

end A134720

/-! ## A134720.P14885746599945397126

`A000931(A047350(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134720

/-- `A000931(A047350(n+1))` -/
def P14885746599945397126.Spec : Prop :=
  ∀ n, P14885746599945397126.a n = A134720 (n + 1)

theorem P14885746599945397126.correct : P14885746599945397126.Spec := by
  intro n
  simp only [A134720, Nat.add_sub_cancel]

end A134720

/-! ## A134720.P10832218167434328249

`A078027(A047296(n+1))`
-/

namespace A134720.P10832218167434328249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A047296 (n + 1)).toNat

end

end A134720.P10832218167434328249

namespace A134720

/-- `A078027(A047296(n+1))` -/
def P10832218167434328249.Spec : Prop :=
  ∀ n, P10832218167434328249.a n = A134720 (n + 1)

end A134720

/-! ## A134720.P15410342789126565678

`A133034(A047321(n+2))`
-/

namespace A134720.P15410342789126565678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (A047321 (n + 2)).toNat

end

end A134720.P15410342789126565678

namespace A134720

/-- `A133034(A047321(n+2))` -/
def P15410342789126565678.Spec : Prop :=
  ∀ n, P15410342789126565678.a n = A134720 (n + 1)

end A134720

/-! ## A134720.P1988626836831678668

`A078027(A047350(n+1)+2)`
-/

namespace A134720.P1988626836831678668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A047350 (n + 1) + 2).toNat

end

end A134720.P1988626836831678668

namespace A134720

/-- `A078027(A047350(n+1)+2)` -/
def P1988626836831678668.Spec : Prop :=
  ∀ n, P1988626836831678668.a n = A134720 (n + 1)

end A134720

/-! ## A134720.P14701021762316269106

`A000931(A047296(n+1)-2)`
-/

namespace A134720.P14701021762316269106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A047296 (n + 1) - 2).toNat

end

end A134720.P14701021762316269106

namespace A134720

/-- `A000931(A047296(n+1)-2)` -/
def P14701021762316269106.Spec : Prop :=
  ∀ n, P14701021762316269106.a n = A134720 (n + 1)

end A134720

/-! ## A134720.P7442038016312767059

`A000931(A302588(n+1)-A302588(n))`
-/

namespace A134720.P7442038016312767059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A302588 (n + 1) - A302588 n).toNat

end

end A134720.P7442038016312767059

namespace A134720

/-- `A000931(A302588(n+1)-A302588(n))` -/
def P7442038016312767059.Spec : Prop :=
  ∀ n, P7442038016312767059.a n = A134720 (n + 1)

end A134720

/-! ## A134720.P16925836772058941283

`Δ[A000931(A047390(n+1))]`
-/

namespace A134720.P16925836772058941283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A047390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134720.P16925836772058941283

namespace A134720

/-- `Δ[A000931(A047390(n+1))]` -/
def P16925836772058941283.Spec : Prop :=
  ∀ n, P16925836772058941283.a n = A134720 (n + 1)

end A134720

/-! ## A134720.P9720458935584666343

`A000931(∑[A011782(n)%7])`
-/

namespace A134720.P9720458935584666343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134720.P9720458935584666343

namespace A134720

/-- `A000931(∑[A011782(n)%7])` -/
def P9720458935584666343.Spec : Prop :=
  ∀ n, P9720458935584666343.a n = A134720 (n + 1)

end A134720

/-!
# A134721: 

The programs for A134721, there is no canonical definition to state claims against.
-/

/-! ## A134721.P14660500477326368376

`A000668(Δ[n²])`
-/

namespace A134721.P14660500477326368376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134721.P14660500477326368376

/-!
# A134727: Successive digits of members of the Padovan sequence A000931(n).

The programs for A134727, there is no canonical definition to state claims against.
-/

/-! ## A134727.P5879134647253961535

`gcd(A000931(n), A185284(A245226(n+1)))`
-/

namespace A134727.P5879134647253961535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000931 n) (A185284 (A245226 (n + 1)).toNat)

end

end A134727.P5879134647253961535

/-! ## A134727.P3179600167442371401

`gcd(A184955(n), A280200(n))`
-/

namespace A134727.P3179600167442371401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184955 n) (A280200 n)

end

end A134727.P3179600167442371401

/-! ## A134727.P6266329922244681681

`dr(A321802(A048410(A000931(n))))`
-/

namespace A134727.P6266329922244681681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A321802 (A048410 (A000931 n).toNat).toNat)

end

end A134727.P6266329922244681681

/-! ## A134727.P12228442490148485757

`A000931(n)%A125193(A027170(n))`
-/

namespace A134727.P12228442490148485757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000931 n) (A125193 (A027170 n).toNat)

end

end A134727.P12228442490148485757

/-! ## A134727.P10845864071688654884

`gcd(A000931(n), A002264(A184955(n)))`
-/

namespace A134727.P10845864071688654884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000931 n) (A002264 (A184955 n).toNat)

end

end A134727.P10845864071688654884

/-!
# A134732: Concatenation of first n members of the Padovan sequence A000931, starting at (1, 1, 1, 2).

The programs for A134732, there is no canonical definition to state claims against.
-/

/-! ## A134732.P12339217591717912673

`∑[A132347(n+1)^A160941(n+1)]`
-/

namespace A134732.P12339217591717912673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132347 (n + 1) : ℚ) ^ (A160941 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134732.P12339217591717912673

/-! ## A134732.P15558501008204983691

`∑[A132347(n+1)%A294696(3*(n+1))]`
-/

namespace A134732.P15558501008204983691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132347 (n + 1)) (A294696 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134732.P15558501008204983691

/-! ## A134732.P6635216575092067681

`∑[A132347(n+1)%A242811(n+1)]`
-/

namespace A134732.P6635216575092067681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132347 (n + 1)) (A242811 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134732.P6635216575092067681

/-! ## A134732.P13830755237122527161

`∑[A132347(n+1)]%A384110(2*(n+2))`
-/

namespace A134732.P13830755237122527161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A384110 (2 * (n + 2)))

end

end A134732.P13830755237122527161

/-! ## A134732.P17989157461523505352

`∑[A132347(n+1)-A083892(A001550(n))]`
-/

namespace A134732.P17989157461523505352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132347 (n + 1) - A083892 (A001550 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134732.P17989157461523505352

/-!
# A134734: First differences of A084662.

The programs for A134734, the canonical program `A134734.P2901709342958714934` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134734 has offset 1).

The definition of A134734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134734.P2901709342958714934

`Δ[a(n-1)+gcd(n+1, a(n-1))]` with `a(0)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134734

/-- `Δ[a(n-1)+gcd(n+1, a(n-1))]` -/
def P2901709342958714934.Spec : Prop :=
  ∀ n, P2901709342958714934.a n = A134734 (n + 1)

theorem P2901709342958714934.correct : P2901709342958714934.Spec := by
  intro n
  simp only [A134734, Nat.add_sub_cancel]

end A134734

/-! ## A134734.P13922282899834437152

`Δ[A084662(n+1)]`
-/

namespace A134734.P13922282899834437152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134734.P13922282899834437152

namespace A134734

/-- `Δ[A084662(n+1)]` -/
def P13922282899834437152.Spec : Prop :=
  ∀ n, P13922282899834437152.a n = A134734 (n + 1)

end A134734

/-! ## A134734.P978096317191500268

`A134743(lcm(n+1, a(n-1)))` with `a(0)=2`
-/

namespace A134734.P978096317191500268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A134743 (Int.lcm (n + 1 : ℤ) (a (n - 1)))

end

end A134734.P978096317191500268

namespace A134734

/-- `A134743(lcm(n+1, a(n-1)))` -/
def P978096317191500268.Spec : Prop :=
  ∀ n, P978096317191500268.a n = A134734 (n + 1)

end A134734

/-! ## A134734.P5861109481306636792

`Δ[A106108(n+1)]+C(2, n²)`
-/

namespace A134734.P5861109481306636792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n ^ 2) : ℤ)

end

end A134734.P5861109481306636792

namespace A134734

/-- `Δ[A106108(n+1)]+C(2, n²)` -/
def P5861109481306636792.Spec : Prop :=
  ∀ n, P5861109481306636792.a n = A134734 (n + 1)

end A134734

/-! ## A134734.P10445115801223206660

`A134743(n+1)+A000007(n)`
-/

namespace A134734.P10445115801223206660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134743 (n + 1) + A000007 n

end

end A134734.P10445115801223206660

namespace A134734

/-- `A134743(n+1)+A000007(n)` -/
def P10445115801223206660.Spec : Prop :=
  ∀ n, P10445115801223206660.a n = A134734 (n + 1)

end A134734

/-! ## A134734.P1366798786099475445

`A132199(n+1)+A130706(n)`
-/

namespace A134734.P1366798786099475445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (n + 1) + A130706 n

end

end A134734.P1366798786099475445

namespace A134734

/-- `A132199(n+1)+A130706(n)` -/
def P1366798786099475445.Spec : Prop :=
  ∀ n, P1366798786099475445.a n = A134734 (n + 1)

end A134734

/-! ## A134734.P12890220403323493287

`A054977(n)*A134743(n+1)`
-/

namespace A134734.P12890220403323493287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A134743 (n + 1)

end

end A134734.P12890220403323493287

namespace A134734

/-- `A054977(n)*A134743(n+1)` -/
def P12890220403323493287.Spec : Prop :=
  ∀ n, P12890220403323493287.a n = A134734 (n + 1)

end A134734

/-! ## A134734.P12021338970529318297

`A084662(n+2)-A084662(n+1)`
-/

namespace A134734.P12021338970529318297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 2) - A084662 (n + 1)

end

end A134734.P12021338970529318297

namespace A134734

/-- `A084662(n+2)-A084662(n+1)` -/
def P12021338970529318297.Spec : Prop :=
  ∀ n, P12021338970529318297.a n = A134734 (n + 1)

end A134734

/-! ## A134734.P13235415175517224924

`gcd(A020725(n+1), A084662(n+1))`
-/

namespace A134734.P13235415175517224924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A084662 (n + 1))

end

end A134734.P13235415175517224924

namespace A134734

/-- `gcd(A020725(n+1), A084662(n+1))` -/
def P13235415175517224924.Spec : Prop :=
  ∀ n, (P13235415175517224924.a n : ℤ) = A134734 (n + 1)

end A134734

/-! ## A134734.P15760401522610159505

`gcd(n+2, A167195(2*n+3))`
-/

namespace A134734.P15760401522610159505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A167195 (2 * n + 3))

end

end A134734.P15760401522610159505

namespace A134734

/-- `gcd(n+2, A167195(2*n+3))` -/
def P15760401522610159505.Spec : Prop :=
  ∀ n, (P15760401522610159505.a n : ℤ) = A134734 (n + 1)

end A134734

/-! ## A134734.P14708599449326501792

`A167195(2*(n+2))-A167195(2*n+3)`
-/

namespace A134734.P14708599449326501792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167195 (2 * (n + 2)) - A167195 (2 * n + 3)

end

end A134734.P14708599449326501792

namespace A134734

/-- `A167195(2*(n+2))-A167195(2*n+3)` -/
def P14708599449326501792.Spec : Prop :=
  ∀ n, P14708599449326501792.a n = A134734 (n + 1)

end A134734

/-!
# A134735: Primes followed by the difference from the next prime.

The programs for A134735, there is no canonical definition to state claims against.
-/

/-! ## A134735.P12465528982999110559

`A219606(xor(1, n)+1)`
-/

namespace A134735.P12465528982999110559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (Nat.xor 1 n + 1)

end

end A134735.P12465528982999110559

/-! ## A134735.P6382290970457707761

`A219606(A004442(n)+1)`
-/

namespace A134735.P6382290970457707761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A004442 n + 1).toNat

end

end A134735.P6382290970457707761

/-! ## A134735.P4629932605263803335

`A219606(A014681(n+1))`
-/

namespace A134735.P4629932605263803335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A014681 (n + 1)).toNat

end

end A134735.P4629932605263803335

/-! ## A134735.P6174466144980388571

`A219606(A103889(n+1))`
-/

namespace A134735.P6174466144980388571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A103889 (n + 1)).toNat

end

end A134735.P6174466144980388571

/-! ## A134735.P2205209631939422907

`A036262(record[n/A007318(n+1)])`
-/

namespace A134735.P2205209631939422907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007318 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A134735.P2205209631939422907

/-! ## A134735.P13183646619680334464

`A340202(n+1)%A181761(n+1)`
-/

namespace A134735.P13183646619680334464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340202 (n + 1)) (A181761 (n + 1))

end

end A134735.P13183646619680334464

/-! ## A134735.P15982497648054824028

`A321297(A033476(n))`
-/

namespace A134735.P15982497648054824028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321297 (A033476 n).toNat

end

end A134735.P15982497648054824028

/-! ## A134735.P16506694411832970727

`A321297(A057602(n+2))`
-/

namespace A134735.P16506694411832970727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321297 (A057602 (n + 2)).toNat

end

end A134735.P16506694411832970727

/-!
# A134736: a(1) = 5; for n >1, a(n) = a(n-1) + gcd(n, a(n-1)).

The programs for A134736, the canonical program `A134736.P14764777848236421163` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134736 has offset 1).

The definition of A134736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+1, a(n-1))` (program `A134736.P14764777848236421163`, by `A134736.P14764777848236421163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134736.P14764777848236421163

`a(n-1)+gcd(n+1, a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134736

/-- `a(n-1)+gcd(n+1, a(n-1))` -/
def P14764777848236421163.Spec : Prop :=
  ∀ n, (P14764777848236421163.a n : ℤ) = A134736 (n + 1)

theorem P14764777848236421163.correct : P14764777848236421163.Spec := by
  intro n
  simp only [A134736, Nat.add_sub_cancel]

end A134736

/-! ## A134736.P11336313302379649958

`A134743(n)+a(n-1)` with `a(0)=5`
-/

namespace A134736.P11336313302379649958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A134743 n + a (n - 1)

end

end A134736.P11336313302379649958

namespace A134736

/-- `A134743(n)+a(n-1)` -/
def P11336313302379649958.Spec : Prop :=
  ∀ n, P11336313302379649958.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P14756821696353196147

`or(char[2*n], A084662(n+1))`
-/

namespace A134736.P14756821696353196147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084662 (n + 1))

end

end A134736.P14756821696353196147

namespace A134736

/-- `or(char[2*n], A084662(n+1))` -/
def P14756821696353196147.Spec : Prop :=
  ∀ n, P14756821696353196147.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P76066376040029356

`A132199(n)+a(n-1)` with `a(0)=5, a(1)=6, a(2)=9`
-/

namespace A134736.P76066376040029356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 9] fun n a =>
  A132199 n + a (n - 1)

end

end A134736.P76066376040029356

namespace A134736

/-- `A132199(n)+a(n-1)` -/
def P76066376040029356.Spec : Prop :=
  ∀ n, P76066376040029356.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P16739938818144475645

`∑[A134743(lcm(n, a(n-1)))]` with `a(0)=5, a(1)=1`
-/

namespace A134736.P16739938818144475645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  A134743 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134736.P16739938818144475645

namespace A134736

/-- `∑[A134743(lcm(n, a(n-1)))]` -/
def P16739938818144475645.Spec : Prop :=
  ∀ n, P16739938818144475645.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P15570653510054784321

`A084662(n+1)+A000007(n)`
-/

namespace A134736.P15570653510054784321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1) + A000007 n

end

end A134736.P15570653510054784321

namespace A134736

/-- `A084662(n+1)+A000007(n)` -/
def P15570653510054784321.Spec : Prop :=
  ∀ n, P15570653510054784321.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P12674771527691447562

`A084662(n+2)-A134743(n+1)`
-/

namespace A134736.P12674771527691447562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 2) - A134743 (n + 1)

end

end A134736.P12674771527691447562

namespace A134736

/-- `A084662(n+2)-A134743(n+1)` -/
def P12674771527691447562.Spec : Prop :=
  ∀ n, P12674771527691447562.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P368212429083461812

`A084662(n+1)+val(A339692(n+1), 5)`
-/

namespace A134736.P368212429083461812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1) + (SequenceMachineLib.valuation (A339692 (n + 1)).toNat 5 : ℤ)

end

end A134736.P368212429083461812

namespace A134736

/-- `A084662(n+1)+val(A339692(n+1), 5)` -/
def P368212429083461812.Spec : Prop :=
  ∀ n, P368212429083461812.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P18288922280582211837

`floor(A084662(n+1)+1/A080735(n+1))`
-/

namespace A134736.P18288922280582211837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084662 (n + 1) : ℚ) + 1 / (A080735 (n + 1) : ℚ)⌋

end

end A134736.P18288922280582211837

namespace A134736

/-- `floor(A084662(n+1)+1/A080735(n+1))` -/
def P18288922280582211837.Spec : Prop :=
  ∀ n, P18288922280582211837.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P11565824237533033667

`A084662(n+1)+C(A093544(n+1), A093544(n+1)²)`
-/

namespace A134736.P11565824237533033667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1) + (Nat.choose (A093544 (n + 1)).toNat (A093544 (n + 1) ^ 2).toNat : ℤ)

end

end A134736.P11565824237533033667

namespace A134736

/-- `A084662(n+1)+C(A093544(n+1), A093544(n+1)²)` -/
def P11565824237533033667.Spec : Prop :=
  ∀ n, P11565824237533033667.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P6262416015078239169

`A084662(n+1)+A134734(n+1)-A000265(A134734(n+1))`
-/

namespace A134736.P6262416015078239169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1) + (A134734 (n + 1) - A000265 (A134734 (n + 1)).toNat)

end

end A134736.P6262416015078239169

namespace A134736

/-- `A084662(n+1)+A134734(n+1)-A000265(A134734(n+1))` -/
def P6262416015078239169.Spec : Prop :=
  ∀ n, P6262416015078239169.a n = A134736 (n + 1)

end A134736

/-! ## A134736.P14346570837230876557

`A084662(n+1)+C(A257262(n+1), A257262(n+1)²)`
-/

namespace A134736.P14346570837230876557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1) + (Nat.choose (A257262 (n + 1)).toNat (A257262 (n + 1) ^ 2).toNat : ℤ)

end

end A134736.P14346570837230876557

namespace A134736

/-- `A084662(n+1)+C(A257262(n+1), A257262(n+1)²)` -/
def P14346570837230876557.Spec : Prop :=
  ∀ n, P14346570837230876557.a n = A134736 (n + 1)

end A134736

/-!
# A134737: Number of partitions of the n-th partition number into positive parts not greater than n.

The programs for A134737, there is no canonical definition to state claims against.
-/

/-! ## A134737.P10727197815847564825

`A026820(A000217(A000065(n+1))+n+1)`
-/

namespace A134737.P10727197815847564825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A000217 (A000065 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A134737.P10727197815847564825

/-! ## A134737.P6161971496629966939

`A147343(3*(n+2))+n`
-/

namespace A134737.P6161971496629966939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147343 (3 * (n + 2)) + (n : ℤ)

end

end A134737.P6161971496629966939

/-! ## A134737.P2050230789843661595

`∑[A320056(A006252(n))]`
-/

namespace A134737.P2050230789843661595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320056 (A006252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134737.P2050230789843661595

/-!
# A134738: Cubes which are not the sum of three squares.

The programs for A134738, there is no canonical definition to state claims against.
-/

/-! ## A134738.P12225723195402431006

`A004215(n+1)^3`
-/

namespace A134738.P12225723195402431006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1) ^ 3

end

end A134738.P12225723195402431006

/-! ## A134738.P15970291466286323712

`(A055039(n+1)/2)^3`
-/

namespace A134738.P15970291466286323712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055039 (n + 1) : ℚ) / 2) ^ 3

end

end A134738.P15970291466286323712

/-! ## A134738.P15655115747313892937

`∩[A134739(n+1), A267321(n+1)]`
-/

namespace A134738.P15655115747313892937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P15655115747313892937

/-! ## A134738.P2120216344614879225

`∩[A267189(n+1), A267321(n+1)]`
-/

namespace A134738.P2120216344614879225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P2120216344614879225

/-! ## A134738.P1717874104114607943

`∩[A055052(n+1), A091067(n+1)]^3`
-/

namespace A134738.P1717874104114607943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A134738.P1717874104114607943

/-! ## A134738.P1985663722249623882

`lt[3, A002828(n)]^3`
-/

namespace A134738.P1985663722249623882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A134738.P1985663722249623882

/-! ## A134738.P8264811272020919288

`∩[A125111(n+1), A134739(n+1)]`
-/

namespace A134738.P8264811272020919288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P8264811272020919288

/-! ## A134738.P12653734113995567352

`∩[A125111(n+1), A267189(n+1)]`
-/

namespace A134738.P12653734113995567352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P12653734113995567352

/-! ## A134738.P16278471691618673190

`∩[A125111(n+1), A267321(n+1)]`
-/

namespace A134738.P16278471691618673190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P16278471691618673190

/-! ## A134738.P2860965619235061340

`∩[A134739(n+1), A396778(n+1)]`
-/

namespace A134738.P2860965619235061340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P2860965619235061340

/-! ## A134738.P7251876062910159548

`∩[A267189(n+1), A396778(n+1)]`
-/

namespace A134738.P7251876062910159548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P7251876062910159548

/-! ## A134738.P2815340303530029900

`∩[A179125(n+1), A267321(n+1)]`
-/

namespace A134738.P2815340303530029900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P2815340303530029900

/-! ## A134738.P13652435371803914241

`eq[0, A213384(n)]^3`
-/

namespace A134738.P13652435371803914241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A134738.P13652435371803914241

/-! ## A134738.P9427088438910461278

`eq[1, A072401(n)]^3`
-/

namespace A134738.P9427088438910461278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A134738.P9427088438910461278

/-! ## A134738.P5292409447394496575

`lt[A000164(n), 1]^3`
-/

namespace A134738.P5292409447394496575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A134738.P5292409447394496575

/-! ## A134738.P3656973308946566683

`lt[abs(A212885(n)), 1]^3`
-/

namespace A134738.P3656973308946566683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212885 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A134738.P3656973308946566683

/-! ## A134738.P17891966875351562354

`A000578(A004215(n+1))`
-/

namespace A134738.P17891966875351562354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004215 (n + 1)).toNat

end

end A134738.P17891966875351562354

/-! ## A134738.P10143949214128504125

`A000578(eq[0, A000164(n)])`
-/

namespace A134738.P10143949214128504125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134738.P10143949214128504125

/-! ## A134738.P6394681090124551654

`∩[A267321(n+1), A000578(n)]`
-/

namespace A134738.P6394681090124551654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P6394681090124551654

/-! ## A134738.P6118488982632302817

`∩[A184628(n+1), A267321(n+1)]`
-/

namespace A134738.P6118488982632302817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134738.P6118488982632302817

/-!
# A134739: Cubes of (positive numbers that are not the sum of three nonzero squares), that is, the terms of A004214, cubed.

The programs for A134739, there is no canonical definition to state claims against.
-/

/-! ## A134739.P17489753256665494985

`A004214(n+1)^3`
-/

namespace A134739.P17489753256665494985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1) ^ 3

end

end A134739.P17489753256665494985

/-! ## A134739.P5380969755565676433

`A004214(sqrt(A000290(n+1)))²*A004214(n+1)`
-/

namespace A134739.P5380969755565676433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (SequenceMachineLib.roundAway (Real.sqrt (A000290 (n + 1) : ℝ))).toNat ^ 2 * A004214 (n + 1)

end

end A134739.P5380969755565676433

/-! ## A134739.P16210337952944909724

`lt[n*A063691(n), n]^3`
-/

namespace A134739.P16210337952944909724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063691 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A134739.P16210337952944909724

/-! ## A134739.P4236509329490190507

`(eq[0, A037215(n+1)]+1)^3`
-/

namespace A134739.P4236509329490190507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A134739.P4236509329490190507

/-! ## A134739.P17969548567626763353

`(lt[A063691(n+1), 1]+1)^3`
-/

namespace A134739.P17969548567626763353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 3

end

end A134739.P17969548567626763353

/-! ## A134739.P11619705135354005061

`A000578(A004214(n+1))`
-/

namespace A134739.P11619705135354005061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004214 (n + 1)).toNat

end

end A134739.P11619705135354005061

/-! ## A134739.P16261412000019094738

`eq[A000007(n), A025427(n)]^3`
-/

namespace A134739.P16261412000019094738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A134739.P16261412000019094738

/-! ## A134739.P6584878140623361084

`∩[A001481(n+1), A004214(n+1)²]*A004214(n+1)`
-/

namespace A134739.P6584878140623361084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A004214 (n + 1)

end

end A134739.P6584878140623361084

/-! ## A134739.P6012608834128682029

`∩[A004214(n+1)², A005792(n+1)]*A004214(n+1)`
-/

namespace A134739.P6012608834128682029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A004214 (n + 1)

end

end A134739.P6012608834128682029

/-!
# A134740: Number of distinct prime factors in the n-th multiply perfect number A007691(n).

The programs for A134740, there is no canonical definition to state claims against.
-/

/-! ## A134740.P368871447329635922

`A057427(n)+A001221(∏{p}[A320024(n+1), #])`
-/

namespace A134740.P368871447329635922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A134740.P368871447329635922

/-! ## A134740.P10918518552307090709

`A001221(∏{p}[A320024(n+1), #])-A057428(n)`
-/

namespace A134740.P10918518552307090709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) - A057428 n

end

end A134740.P10918518552307090709

/-! ## A134740.P11486723272472911603

`A001221(∏{p}[A320024(n+1), #])+A000040(n+1)%2`
-/

namespace A134740.P11486723272472911603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) + Int.tmod (A000040 (n + 1)) 2

end

end A134740.P11486723272472911603

/-!
# A134741: Permutational numbers A134640 which are squares.

The programs for A134741, there is no canonical definition to state claims against.
-/

/-! ## A134741.P10280567270176477271

`A134742(n+1)²`
-/

namespace A134741.P10280567270176477271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134742 (n + 1) ^ 2

end

end A134741.P10280567270176477271

/-! ## A134741.P7752932665340813494

`A134742((n+1)^2/(n+1))^2`
-/

namespace A134741.P7752932665340813494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134742 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A134741.P7752932665340813494

/-! ## A134741.P9491483246545531275

`A134742(A000027(n+1))*A134742(n+1)`
-/

namespace A134741.P9491483246545531275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134742 (A000027 (n + 1)).toNat * A134742 (n + 1)

end

end A134741.P9491483246545531275

/-! ## A134741.P15702236094924880379

`A134742(A109594(3*n+1))*A134742(n+1)`
-/

namespace A134741.P15702236094924880379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134742 (A109594 (3 * n + 1)).toNat * A134742 (n + 1)

end

end A134741.P15702236094924880379

/-! ## A134741.P1322712288157141206

`A134742(n+1)*A134742((n+1)%A000040(n+1))`
-/

namespace A134741.P1322712288157141206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134742 (n + 1) * A134742 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A134741.P1322712288157141206

/-! ## A134741.P13488476500262884249

`(A134742(n+1)%A134742(n+2))^2`
-/

namespace A134741.P13488476500262884249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134742 (n + 1)) (A134742 (n + 2)) ^ 2

end

end A134741.P13488476500262884249

/-!
# A134742: Numbers whose square is a permutational number A134640.

The programs for A134742, there is no canonical definition to state claims against.
-/

/-! ## A134742.P13620875671584267639

`sqrt(A134741(n+1))`
-/

namespace A134742.P13620875671584267639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134741 (n + 1) : ℝ)

end

end A134742.P13620875671584267639

/-! ## A134742.P11461523119168893551

`A134741(C(n+1, n))^(1/2)`
-/

namespace A134742.P11461523119168893551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134741 (Nat.choose (n + 1) n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A134742.P11461523119168893551

/-! ## A134742.P17311198917249027209

`A134741(A000027(n+1))^(1/2)`
-/

namespace A134742.P17311198917249027209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134741 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A134742.P17311198917249027209

/-! ## A134742.P16525228298035358987

`A134741(A008619(2*n))^(1/2)`
-/

namespace A134742.P16525228298035358987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134741 (A008619 (2 * n)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A134742.P16525228298035358987

/-! ## A134742.P7486190454198434050

`A134741(n+1)^(A226478(n+1)/A085192(n))`
-/

namespace A134742.P7486190454198434050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134741 (n + 1) : ℝ) ^ ((A226478 (n + 1) : ℚ) / (A085192 n : ℚ) : ℝ)

end

end A134742.P7486190454198434050

/-!
# A134743: First differences of A134736.

The programs for A134743, the canonical program `A134743.P6500896351488234510` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134743 has offset 1).

The definition of A134743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134743.P6500896351488234510

`Δ[a(n-1)+gcd(n+1, a(n-1))]` with `a(0)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134743

/-- `Δ[a(n-1)+gcd(n+1, a(n-1))]` -/
def P6500896351488234510.Spec : Prop :=
  ∀ n, P6500896351488234510.a n = A134743 (n + 1)

theorem P6500896351488234510.correct : P6500896351488234510.Spec := by
  intro n
  simp only [A134743, Nat.add_sub_cancel]

end A134743

/-! ## A134743.P15591498060669758638

`gcd(n+2, A134736(n+1))`
-/

namespace A134743.P15591498060669758638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A134736 (n + 1))

end

end A134743.P15591498060669758638

namespace A134743

/-- `gcd(n+2, A134736(n+1))` -/
def P15591498060669758638.Spec : Prop :=
  ∀ n, (P15591498060669758638.a n : ℤ) = A134743 (n + 1)

end A134743

/-! ## A134743.P13954427781726860993

`Δ[A084662(n+1)-C(n, n²)]-C(n, n²)`
-/

namespace A134743.P13954427781726860993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose n (n ^ 2) : ℤ)

end

end A134743.P13954427781726860993

namespace A134743

/-- `Δ[A084662(n+1)-C(n, n²)]-C(n, n²)` -/
def P13954427781726860993.Spec : Prop :=
  ∀ n, P13954427781726860993.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P10293908786788568286

`A000265(A134734(n+1))`
-/

namespace A134743.P10293908786788568286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A134734 (n + 1)).toNat

end

end A134743.P10293908786788568286

namespace A134743

/-- `A000265(A134734(n+1))` -/
def P10293908786788568286.Spec : Prop :=
  ∀ n, P10293908786788568286.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P7162094159754138295

`A000265(Δ[A084662(n+1)])`
-/

namespace A134743.P7162094159754138295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n).toNat

end

end A134743.P7162094159754138295

namespace A134743

/-- `A000265(Δ[A084662(n+1)])` -/
def P7162094159754138295.Spec : Prop :=
  ∀ n, P7162094159754138295.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P3070532586698886356

`A026741(Δ[A084662(n+1)])`
-/

namespace A134743.P3070532586698886356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A134743.P3070532586698886356

namespace A134743

/-- `A026741(Δ[A084662(n+1)])` -/
def P3070532586698886356.Spec : Prop :=
  ∀ n, P3070532586698886356.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P6964348412345654781

`A134734(n+1)-A000007(n)`
-/

namespace A134743.P6964348412345654781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134734 (n + 1) - A000007 n

end

end A134743.P6964348412345654781

namespace A134743

/-- `A134734(n+1)-A000007(n)` -/
def P6964348412345654781.Spec : Prop :=
  ∀ n, P6964348412345654781.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P8213969785482153428

`A134734(n+1)/A054977(n)`
-/

namespace A134743.P8213969785482153428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134734 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A134743.P8213969785482153428

namespace A134743

/-- `A134734(n+1)/A054977(n)` -/
def P8213969785482153428.Spec : Prop :=
  ∀ n, P8213969785482153428.a n = (A134743 (n + 1) : ℚ)

end A134743

/-! ## A134743.P11530446789687792720

`gcd(A005718(n), A134734(n+1))`
-/

namespace A134743.P11530446789687792720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005718 n) (A134734 (n + 1))

end

end A134743.P11530446789687792720

namespace A134743

/-- `gcd(A005718(n), A134734(n+1))` -/
def P11530446789687792720.Spec : Prop :=
  ∀ n, (P11530446789687792720.a n : ℤ) = A134743 (n + 1)

end A134743

/-! ## A134743.P17629015558532669433

`lcm(A132199(n+1), A260196(n))`
-/

namespace A134743.P17629015558532669433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132199 (n + 1)) (A260196 n)

end

end A134743.P17629015558532669433

namespace A134743

/-- `lcm(A132199(n+1), A260196(n))` -/
def P17629015558532669433.Spec : Prop :=
  ∀ n, (P17629015558532669433.a n : ℤ) = A134743 (n + 1)

end A134743

/-! ## A134743.P17848445951867308369

`A134734(A054977(n)²²+n)`
-/

namespace A134743.P17848445951867308369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134734 ((A054977 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A134743.P17848445951867308369

namespace A134743

/-- `A134734(A054977(n)²²+n)` -/
def P17848445951867308369.Spec : Prop :=
  ∀ n, P17848445951867308369.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P17042644469026718529

`A084662(n+2)-A134736(n+1)`
-/

namespace A134743.P17042644469026718529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 2) - A134736 (n + 1)

end

end A134743.P17042644469026718529

namespace A134743

/-- `A084662(n+2)-A134736(n+1)` -/
def P17042644469026718529.Spec : Prop :=
  ∀ n, P17042644469026718529.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P1914715543624271922

`gcd(A065475(n+1), A084662(n+1))`
-/

namespace A134743.P1914715543624271922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065475 (n + 1)) (A084662 (n + 1))

end

end A134743.P1914715543624271922

namespace A134743

/-- `gcd(A065475(n+1), A084662(n+1))` -/
def P1914715543624271922.Spec : Prop :=
  ∀ n, (P1914715543624271922.a n : ℤ) = A134743 (n + 1)

end A134743

/-! ## A134743.P16449892267797287494

`A134734(n+1)+n-A028310(n)`
-/

namespace A134743.P16449892267797287494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134734 (n + 1) + ((n : ℤ) - A028310 n)

end

end A134743.P16449892267797287494

namespace A134743

/-- `A134734(n+1)+n-A028310(n)` -/
def P16449892267797287494.Spec : Prop :=
  ∀ n, P16449892267797287494.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P15672966036323751563

`A132199(n+1)+n*A130706(n)`
-/

namespace A134743.P15672966036323751563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (n + 1) + (n : ℤ) * A130706 n

end

end A134743.P15672966036323751563

namespace A134743

/-- `A132199(n+1)+n*A130706(n)` -/
def P15672966036323751563.Spec : Prop :=
  ∀ n, P15672966036323751563.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P9438962928597049981

`A028310(n*A134734(n+1)/A028310(n))`
-/

namespace A134743.P9438962928597049981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) * ((A134734 (n + 1) : ℚ) / (A028310 n : ℚ)))).toNat

end

end A134743.P9438962928597049981

namespace A134743

/-- `A028310(n*A134734(n+1)/A028310(n))` -/
def P9438962928597049981.Spec : Prop :=
  ∀ n, P9438962928597049981.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P17672370815528288571

`Δ[A134736(n+1)]`
-/

namespace A134743.P17672370815528288571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134743.P17672370815528288571

namespace A134743

/-- `Δ[A134736(n+1)]` -/
def P17672370815528288571.Spec : Prop :=
  ∀ n, P17672370815528288571.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P8862795046816365004

`A134736(n+2)-A134736(n+1)`
-/

namespace A134743.P8862795046816365004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 2) - A134736 (n + 1)

end

end A134743.P8862795046816365004

namespace A134743

/-- `A134736(n+2)-A134736(n+1)` -/
def P8862795046816365004.Spec : Prop :=
  ∀ n, P8862795046816365004.a n = A134743 (n + 1)

theorem P8862795046816365004.correct : P8862795046816365004.Spec := by
  intro n
  simp only [A134743, Nat.add_sub_cancel, A134743.P8862795046816365004.a, A134743.P6500896351488234510.f1, A134743.P6500896351488234510.a, A134736, A134736.P14764777848236421163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134743

/-! ## A134743.P996965666162426799

`A134734(n+1)-A130706(2*n)`
-/

namespace A134743.P996965666162426799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134734 (n + 1) - A130706 (2 * n)

end

end A134743.P996965666162426799

namespace A134743

/-- `A134734(n+1)-A130706(2*n)` -/
def P996965666162426799.Spec : Prop :=
  ∀ n, P996965666162426799.a n = A134743 (n + 1)

end A134743

/-! ## A134743.P10172995112791448385

`A132199(A084662(n+1)-1)*A132199(n+1)`
-/

namespace A134743.P10172995112791448385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (A084662 (n + 1) - 1).toNat * A132199 (n + 1)

end

end A134743.P10172995112791448385

namespace A134743

/-- `A132199(A084662(n+1)-1)*A132199(n+1)` -/
def P10172995112791448385.Spec : Prop :=
  ∀ n, P10172995112791448385.a n = A134743 (n + 1)

end A134743

/-!
# A134744: First differences of A084663.

The programs for A134744, the canonical program `A134744.P6886769773055633441` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134744 has offset 1).

The definition of A134744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134744.P6886769773055633441

`Δ[a(n-1)+gcd(n+1, a(n-1))]` with `a(0)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134744

/-- `Δ[a(n-1)+gcd(n+1, a(n-1))]` -/
def P6886769773055633441.Spec : Prop :=
  ∀ n, P6886769773055633441.a n = A134744 (n + 1)

theorem P6886769773055633441.correct : P6886769773055633441.Spec := by
  intro n
  simp only [A134744, Nat.add_sub_cancel]

end A134744

/-! ## A134744.P11101449187203477921

`Δ[A084663(n+1)]`
-/

namespace A134744.P11101449187203477921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134744.P11101449187203477921

namespace A134744

/-- `Δ[A084663(n+1)]` -/
def P11101449187203477921.Spec : Prop :=
  ∀ n, P11101449187203477921.a n = A134744 (n + 1)

end A134744

/-! ## A134744.P12895050494280643257

`A084663(n+2)-A084663(n+1)`
-/

namespace A134744.P12895050494280643257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084663 (n + 2) - A084663 (n + 1)

end

end A134744.P12895050494280643257

namespace A134744

/-- `A084663(n+2)-A084663(n+1)` -/
def P12895050494280643257.Spec : Prop :=
  ∀ n, P12895050494280643257.a n = A134744 (n + 1)

end A134744

/-! ## A134744.P11551788505977386428

`gcd(A020725(n+1), A084663(n+1))`
-/

namespace A134744.P11551788505977386428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A084663 (n + 1))

end

end A134744.P11551788505977386428

namespace A134744

/-- `gcd(A020725(n+1), A084663(n+1))` -/
def P11551788505977386428.Spec : Prop :=
  ∀ n, (P11551788505977386428.a n : ℤ) = A134744 (n + 1)

end A134744

/-! ## A134744.P1579622539222683646

`A084663(A000027(n+2))%A084663(n+1)`
-/

namespace A134744.P1579622539222683646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084663 (A000027 (n + 2)).toNat) (A084663 (n + 1))

end

end A134744.P1579622539222683646

namespace A134744

/-- `A084663(A000027(n+2))%A084663(n+1)` -/
def P1579622539222683646.Spec : Prop :=
  ∀ n, P1579622539222683646.a n = A134744 (n + 1)

end A134744

/-! ## A134744.P15301916609553241477

`A020639(A084663(n+2)%A084663(n+1))`
-/

namespace A134744.P15301916609553241477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A084663 (n + 2)) (A084663 (n + 1))).toNat

end

end A134744.P15301916609553241477

namespace A134744

/-- `A020639(A084663(n+2)%A084663(n+1))` -/
def P15301916609553241477.Spec : Prop :=
  ∀ n, P15301916609553241477.a n = A134744 (n + 1)

end A134744

/-!
# A134745: Numbers which are not permutational numbers A134640.

The programs for A134745, there is no canonical definition to state claims against.
-/

/-! ## A134745.P10833470964764938867

`comp[A134640(n+1)]`
-/

namespace A134745.P10833470964764938867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P10833470964764938867

/-! ## A134745.P12505420955152456801

`comp[A134749(n)+a(n-1)]` with `a(0)=0`
-/

namespace A134745.P12505420955152456801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A134749 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P12505420955152456801

/-! ## A134745.P11888024838705138412

`comp[∑[A134749(n+1)]-1]+1`
-/

namespace A134745.P11888024838705138412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134749 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A134745.P11888024838705138412

/-! ## A134745.P5513772123572121967

`comp[Δ[A134640(A152271(n))]]`
-/

namespace A134745.P5513772123572121967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P5513772123572121967

/-! ## A134745.P18396114068449050646

`comp[record[A134640(A008619(n))]]`
-/

namespace A134745.P18396114068449050646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P18396114068449050646

/-! ## A134745.P13779897424301379022

`comp[record[A134640(A008620(n))]]`
-/

namespace A134745.P13779897424301379022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A008620 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P13779897424301379022

/-! ## A134745.P12158607599728720362

`comp[record[A134640(A020915(n))]]`
-/

namespace A134745.P12158607599728720362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A020915 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P12158607599728720362

/-! ## A134745.P15884067595689598043

`comp[record[A134640(A020986(n))]]`
-/

namespace A134745.P15884067595689598043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P15884067595689598043

/-! ## A134745.P7073539711474123165

`comp[record[A134640(A028310(n))]]`
-/

namespace A134745.P7073539711474123165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P7073539711474123165

/-! ## A134745.P1370859940461239054

`comp[record[A134640(A065033(n))]]`
-/

namespace A134745.P1370859940461239054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A065033 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134745.P1370859940461239054

/-!
# A134746: Expansion of 1+k in powers of q^(1/2) where q is Jacobi's nome and k is the elliptic modulus.

The programs for A134746, there is no canonical definition to state claims against.
-/

/-! ## A134746.P3594891396802012884

`(-1)^n*A210067(n)`
-/

namespace A134746.P3594891396802012884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A210067 n

end

end A134746.P3594891396802012884

/-! ## A134746.P8751911957109210352

`A007096(n)*A117569(n)`
-/

namespace A134746.P8751911957109210352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n * A117569 n

end

end A134746.P8751911957109210352

/-! ## A134746.P9286435625883822970

`A084099(n)*A208933(n)`
-/

namespace A134746.P9286435625883822970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n * A208933 n

end

end A134746.P9286435625883822970

/-! ## A134746.P11456245619026149090

`A000038(n)-A210067(n)`
-/

namespace A134746.P11456245619026149090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A210067 n

end

end A134746.P11456245619026149090

/-! ## A134746.P9133774530712117459

`A163805(n)*A189925(n)`
-/

namespace A134746.P9133774530712117459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 n * A189925 n

end

end A134746.P9133774530712117459

/-! ## A134746.P9767325115852458903

`A210067(n)*A280193(n)`
-/

namespace A134746.P9767325115852458903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210067 n * A280193 n

end

end A134746.P9767325115852458903

/-! ## A134746.P7380886172241444258

`A210067(n)*A323191(n)`
-/

namespace A134746.P7380886172241444258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210067 n * A323191 n

end

end A134746.P7380886172241444258

/-! ## A134746.P10831465582607146216

`A210067(n)*A323202(n)`
-/

namespace A134746.P10831465582607146216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210067 n * A323202 n

end

end A134746.P10831465582607146216

/-! ## A134746.P1430648330431479032

`A000122(A000122(n)+n)-A210067(n)`
-/

namespace A134746.P1430648330431479032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A210067 n

end

end A134746.P1430648330431479032

/-! ## A134746.P734377366701209360

`A208274(n)+A208604(n)-A210067(n)`
-/

namespace A134746.P734377366701209360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n + (A208604 n - A210067 n)

end

end A134746.P734377366701209360

/-! ## A134746.P435397963853461007

`-(A130595(A020639(n+1))*A210067(n))`
-/

namespace A134746.P435397963853461007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A130595 (A020639 (n + 1)).toNat * A210067 n)

end

end A134746.P435397963853461007

/-! ## A134746.P16706551826239212213

`A208274(n+1)*A208274(n)-A210067(n)`
-/

namespace A134746.P16706551826239212213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (n + 1) * A208274 n - A210067 n

end

end A134746.P16706551826239212213

/-! ## A134746.P16285333088572482099

`A230865(A210067(A230865(n)))-A210067(n)`
-/

namespace A134746.P16285333088572482099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (A210067 (A230865 n).toNat).toNat - A210067 n

end

end A134746.P16285333088572482099

/-! ## A134746.P8169013465907991315

`A216060(2*n)`
-/

namespace A134746.P8169013465907991315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216060 (2 * n)

end

end A134746.P8169013465907991315

/-!
# A134747: Expansion of q * (chi(-q) / chi(-q^4))^8 in powers of q where chi() is a Ramanujan theta function.

The programs for A134747, there is no canonical definition to state claims against.
-/

/-! ## A134747.P7082034140004438255

`A096651(A136228(3*n))+A007259(n)`
-/

namespace A134747.P7082034140004438255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (A136228 (3 * n)).toNat + A007259 n

end

end A134747.P7082034140004438255

/-!
# A134748: a(n)=largest permutational number of order n - smallest permutational number of order n+1 : A062813(n)-A134703(n+1) : A134640(!n)-A134640(!n+1).

The programs for A134748, there is no canonical definition to state claims against.
-/

/-! ## A134748.P6509990065551517520

`A062813(n+1)-A023811(n+2)`
-/

namespace A134748.P6509990065551517520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (n + 1) - A023811 (n + 2)

end

end A134748.P6509990065551517520

/-! ## A134748.P16904492293062556825

`A062813(n+1)+1-A058128(n+2)`
-/

namespace A134748.P16904492293062556825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (n + 1) + (1 - A058128 (n + 2))

end

end A134748.P16904492293062556825

/-! ## A134748.P9701368234877760221

`A062813(n+1)+A260371(n+2)-A260351(n+2)`
-/

namespace A134748.P9701368234877760221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (n + 1) + (A260371 (n + 2) - A260351 (n + 2))

end

end A134748.P9701368234877760221

/-! ## A134748.P12596288675130683048

`n*A062805(n+1)-A062808(n+1)-A023811(A152271(2*n+3))`
-/

namespace A134748.P12596288675130683048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062805 (n + 1) - A062808 (n + 1) - A023811 (A152271 (2 * n + 3)).toNat

end

end A134748.P12596288675130683048

/-! ## A134748.P5461055818882054766

`A062813(n+1)-record[A277058(n+2)]`
-/

namespace A134748.P5461055818882054766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134748.P5461055818882054766

/-!
# A134749: First differences of permutational numbers : a(n)=A134640(n+1)-A134640(n).

The programs for A134749, there is no canonical definition to state claims against.
-/

/-! ## A134749.P8409426320547579384

`A134640(n+2)-A134640(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134749.P8409426320547579384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (n + 2) - A134640 (n + 1)

end

end A134749.P8409426320547579384

/-! ## A134749.P2923895724415681687

`Δ[A134640(n+1)]`
-/

namespace A134749.P2923895724415681687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134749.P2923895724415681687

/-! ## A134749.P1836098003246986608

`A134768(n+1)%A065644(n+1)`
-/

namespace A134749.P1836098003246986608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134768 (n + 1)) (A065644 (n + 1))

end

end A134749.P1836098003246986608

/-! ## A134749.P11236762168857935657

`Δ[A134750(n+1)]%A065644(n+1)`
-/

namespace A134749.P11236762168857935657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A065644 (n + 1))

end

end A134749.P11236762168857935657

/-! ## A134749.P15034448414402427247

`(A134750(n+2)-A134750(n+1))%A065644(n+1)`
-/

namespace A134749.P15034448414402427247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134750 (n + 2) - A134750 (n + 1)) (A065644 (n + 1))

end

end A134749.P15034448414402427247

/-!
# A134750: Variant of permutational numbers with shifted digits 0->1->2->...->k+1 in k+1 positional system.

The programs for A134750, there is no canonical definition to state claims against.
-/

/-! ## A134750.P10095376474042256703

`A134768(n)+a(n-1)` with `a(0)=1`
-/

namespace A134750.P10095376474042256703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134768 n + a (n - 1)

end

end A134750.P10095376474042256703

/-! ## A134750.P7087972595849852144

`∑[A134768(abs(1-n)+1)]`
-/

namespace A134750.P7087972595849852144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134768 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134750.P7087972595849852144

/-! ## A134750.P5635281527863331269

`∑[A134768(A028310(n))]-2`
-/

namespace A134750.P5635281527863331269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134768 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A134750.P5635281527863331269

/-! ## A134750.P7473656162881671280

`∑[A134768(A004277(n)-n)]-2`
-/

namespace A134750.P7473656162881671280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134768 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A134750.P7473656162881671280

/-! ## A134750.P1140778717527490072

`∑[A134768(n+1)]+1-A134768(n+1)`
-/

namespace A134750.P1140778717527490072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A134768 (n + 1))

end

end A134750.P1140778717527490072

/-! ## A134750.P5441716689312913652

`∑[A134768(A028310(n))%A154918(n)]`
-/

namespace A134750.P5441716689312913652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134768 (A028310 n).toNat) (A154918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134750.P5441716689312913652

/-!
# A134751: Hankel transform of expansion of (1/(1-x^2))c(x/(1-x^2)), where c(x) is the g.f. of A000108.

The programs for A134751, the canonical program `A134751.P9193238887656550234` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134751 has offset 0).

The definition of A134751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134751.P9193238887656550234

`2^floor((n+1)²/3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134751

/-- `2^floor((n+1)²/3)` -/
def P9193238887656550234.Spec : Prop :=
  ∀ n, P9193238887656550234.a n = (A134751 n : ℚ)

end A134751

/-! ## A134751.P6890228449761036535

`4*a(n-1)*a(n-3)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=32`
-/

namespace A134751.P6890228449761036535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 8, 32] fun n a =>
  4 * a (n - 1) * a (n - 3) / a (n - 4)

end

end A134751.P6890228449761036535

namespace A134751

/-- `4*a(n-1)*a(n-3)/a(n-4)` -/
def P6890228449761036535.Spec : Prop :=
  ∀ n, P6890228449761036535.a n = (A134751 n : ℚ)

end A134751

/-! ## A134751.P7469723824934695107

`∏[∏[(n²+1)%3]]`
-/

namespace A134751.P7469723824934695107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A134751.P7469723824934695107

namespace A134751

/-- `∏[∏[(n²+1)%3]]` -/
def P7469723824934695107.Spec : Prop :=
  ∀ n, (P7469723824934695107.a n : ℤ) = A134751 n

end A134751

/-! ## A134751.P1450178482118329264

`∏[4*a(n-3)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A134751.P1450178482118329264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  4 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A134751.P1450178482118329264

namespace A134751

/-- `∏[4*a(n-3)]` -/
def P1450178482118329264.Spec : Prop :=
  ∀ n, (P1450178482118329264.a n : ℤ) = A134751 n

end A134751

/-! ## A134751.P10090838391418623390

`floor(2^∑[a(n-3)+2])` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A134751.P10090838391418623390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134751.P10090838391418623390

namespace A134751

/-- `floor(2^∑[a(n-3)+2])` -/
def P10090838391418623390.Spec : Prop :=
  ∀ n, (P10090838391418623390.a n : ℤ) = A134751 n

end A134751

/-!
# A134752: a(n) = 3^(2*n-1) + 2.

The programs for A134752, the canonical program `A134752.P13513557009411226667` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134752 has offset 1).

The definition of A134752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(2*(n+1)-1)+2` (program `A134752.P15279493351006037439`, by `A134752.P15279493351006037439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134752.P15279493351006037439

`3^(2*(n+1)-1)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A134752.P15279493351006037439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) + 2

end

end A134752.P15279493351006037439

namespace A134752

/-- `3^(2*(n+1)-1)+2` -/
def P15279493351006037439.Spec : Prop :=
  ∀ n, P15279493351006037439.a n = (A134752 (n + 1) : ℚ)

theorem P15279493351006037439.correct : P15279493351006037439.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A134752, Nat.add_sub_cancel, A134752.P15279493351006037439.a, A134752.P13513557009411226667.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A134752, Nat.add_sub_cancel, A134752.P15279493351006037439.a, A134752.P13513557009411226667.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A134752

/-! ## A134752.P10347015066967165227

`xor(6, 3*9^n)`
-/

namespace A134752.P10347015066967165227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (3 * 9 ^ n)

end

end A134752.P10347015066967165227

namespace A134752

/-- `xor(6, 3*9^n)` -/
def P10347015066967165227.Spec : Prop :=
  ∀ n, (P10347015066967165227.a n : ℤ) = A134752 (n + 1)

end A134752

/-! ## A134752.P16084452989781131270

`ogf((5-21x)/(1-10x+9x^2))`
-/

namespace A134752.P16084452989781131270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -21] [1, -10, 9] n

end

end A134752.P16084452989781131270

namespace A134752

/-- `ogf((5-21x)/(1-10x+9x^2))` -/
def P16084452989781131270.Spec : Prop :=
  ∀ n, P16084452989781131270.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P830069746820129023

`record[3^xor(1, n)+2]`
-/

namespace A134752.P830069746820129023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 1 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134752.P830069746820129023

namespace A134752

/-- `record[3^xor(1, n)+2]` -/
def P830069746820129023.Spec : Prop :=
  ∀ n, (P830069746820129023.a n : ℤ) = A134752 (n + 1)

end A134752

/-! ## A134752.P455445884827897920

`record[2-(-3)^(n+1)]`
-/

namespace A134752.P455445884827897920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (-3) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134752.P455445884827897920

namespace A134752

/-- `record[2-(-3)^(n+1)]` -/
def P455445884827897920.Spec : Prop :=
  ∀ n, P455445884827897920.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P5895496769444118863

`or(1, 3^(2*n+1)+1)`
-/

namespace A134752.P5895496769444118863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 ^ (2 * n + 1) + 1)

end

end A134752.P5895496769444118863

namespace A134752

/-- `or(1, 3^(2*n+1)+1)` -/
def P5895496769444118863.Spec : Prop :=
  ∀ n, (P5895496769444118863.a n : ℤ) = A134752 (n + 1)

end A134752

/-! ## A134752.P8898938506760988487

`abs(12-abs(4-9*a(n-1)))` with `a(0)=5`
-/

namespace A134752.P8898938506760988487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |(12 - |4 - 9 * a (n - 1)|)|

end

end A134752.P8898938506760988487

namespace A134752

/-- `abs(12-abs(4-9*a(n-1)))` -/
def P8898938506760988487.Spec : Prop :=
  ∀ n, P8898938506760988487.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P16012791086538615477

`floor(a(n-1)+8*(a(n-1)-2))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A134752.P16012791086538615477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (a (n - 1) - 2)

end

end A134752.P16012791086538615477

namespace A134752

/-- `floor(a(n-1)+8*(a(n-1)-2))` -/
def P16012791086538615477.Spec : Prop :=
  ∀ n, P16012791086538615477.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P13513557009411226667

`floor(a(n-1)-8*(2-a(n-1)))` with `a(0)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134752

/-- `floor(a(n-1)-8*(2-a(n-1)))` -/
def P13513557009411226667.Spec : Prop :=
  ∀ n, P13513557009411226667.a n = A134752 (n + 1)

theorem P13513557009411226667.correct : P13513557009411226667.Spec := by
  intro n
  simp only [A134752, Nat.add_sub_cancel]

end A134752

/-! ## A134752.P8716495591198163497

`A081630(Δ[n²])`
-/

namespace A134752.P8716495591198163497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134752.P8716495591198163497

namespace A134752

/-- `A081630(Δ[n²])` -/
def P8716495591198163497.Spec : Prop :=
  ∀ n, P8716495591198163497.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P12938251492641332337

`A168607(Δ[n²])`
-/

namespace A134752.P12938251492641332337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134752.P12938251492641332337

namespace A134752

/-- `A168607(Δ[n²])` -/
def P12938251492641332337.Spec : Prop :=
  ∀ n, P12938251492641332337.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P2018490111465679944

`A259821(Δ[n²])`
-/

namespace A134752.P2018490111465679944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134752.P2018490111465679944

namespace A134752

/-- `A259821(Δ[n²])` -/
def P2018490111465679944.Spec : Prop :=
  ∀ n, P2018490111465679944.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P13481087844058005077

`abs(A081630(2*n+1))`
-/

namespace A134752.P13481087844058005077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081630 (2 * n + 1)|

end

end A134752.P13481087844058005077

namespace A134752

/-- `abs(A081630(2*n+1))` -/
def P13481087844058005077.Spec : Prop :=
  ∀ n, P13481087844058005077.a n = A134752 (n + 1)

end A134752

/-! ## A134752.P7904548695103436445

`or(6, 9^(n+1))/3`
-/

namespace A134752.P7904548695103436445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 (9 ^ (n + 1)) : ℚ) / 3

end

end A134752.P7904548695103436445

namespace A134752

/-- `or(6, 9^(n+1))/3` -/
def P7904548695103436445.Spec : Prop :=
  ∀ n, P7904548695103436445.a n = (A134752 (n + 1) : ℚ)

end A134752

/-! ## A134752.P9496438572813148707

`(A199564(n)+3)/2`
-/

namespace A134752.P9496438572813148707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199564 n + 3 : ℚ) / 2

end

end A134752.P9496438572813148707

namespace A134752

/-- `(A199564(n)+3)/2` -/
def P9496438572813148707.Spec : Prop :=
  ∀ n, P9496438572813148707.a n = (A134752 (n + 1) : ℚ)

theorem P9496438572813148707.correct : P9496438572813148707.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A134752, Nat.add_sub_cancel, A134752.P9496438572813148707.a, A134752.P13513557009411226667.a, A199564, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A134752, Nat.add_sub_cancel, A134752.P9496438572813148707.a, A134752.P13513557009411226667.a, A199564, A199564.P13221447657266508258.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A134752

/-! ## A134752.P10316099625672125351

`(A198963(n)+5)/2`
-/

namespace A134752.P10316099625672125351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198963 n + 5 : ℚ) / 2

end

end A134752.P10316099625672125351

namespace A134752

/-- `(A198963(n)+5)/2` -/
def P10316099625672125351.Spec : Prop :=
  ∀ n, P10316099625672125351.a n = (A134752 (n + 1) : ℚ)

theorem P10316099625672125351.correct : P10316099625672125351.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A134752, Nat.add_sub_cancel, A134752.P10316099625672125351.a, A134752.P13513557009411226667.a, A198963, A198963.P17210017036911163647.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A134752, Nat.add_sub_cancel, A134752.P10316099625672125351.a, A134752.P13513557009411226667.a, A198963, A198963.P17210017036911163647.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A134752

/-! ## A134752.P3916543295705642797

`lcm(2, A168607(2*n+1))/2`
-/

namespace A134752.P3916543295705642797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A168607 (2 * n + 1)) : ℚ) / 2

end

end A134752.P3916543295705642797

namespace A134752

/-- `lcm(2, A168607(2*n+1))/2` -/
def P3916543295705642797.Spec : Prop :=
  ∀ n, P3916543295705642797.a n = (A134752 (n + 1) : ℚ)

end A134752

/-! ## A134752.P15919073524326612985

`gcd(A000010(n+2)*A168607(2*n+1), A168607(2*n+1))`
-/

namespace A134752.P15919073524326612985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 2) * A168607 (2 * n + 1)) (A168607 (2 * n + 1))

end

end A134752.P15919073524326612985

namespace A134752

/-- `gcd(A000010(n+2)*A168607(2*n+1), A168607(2*n+1))` -/
def P15919073524326612985.Spec : Prop :=
  ∀ n, (P15919073524326612985.a n : ℤ) = A134752 (n + 1)

end A134752

/-!
# A134753: Numbers k such that 3^(2*k-1) + 2 is prime.

The programs for A134753, there is no canonical definition to state claims against.
-/

/-! ## A134753.P15959744509553041766

`record[A273943(A051783(n+1)+1)]`
-/

namespace A134753.P15959744509553041766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A051783 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134753.P15959744509553041766

/-! ## A134753.P13440097450074147770

`record[A152271(A051783(n+1))]`
-/

namespace A134753.P13440097450074147770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A051783 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134753.P13440097450074147770

/-! ## A134753.P15496147219719483137

`record[A001057(A051783(n+2))]`
-/

namespace A134753.P15496147219719483137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A051783 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134753.P15496147219719483137

/-! ## A134753.P2506822286540738309

`eq[1, A123359(2*n+1)]+1`
-/

namespace A134753.P2506822286540738309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134753.P2506822286540738309

/-! ## A134753.P725985109934770324

`eq[2, A013598(2*n+1)]+1`
-/

namespace A134753.P725985109934770324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134753.P725985109934770324

/-!
# A134756: Coefficients of a q-series of Zagier related to the Dedekind eta function.

The programs for A134756, the canonical program `A134756.P5651471618166463539` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134756 has offset 0).

The definition of A134756 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134756.P5651471618166463539

`sqrt(24*n+1)*A010815(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134756

/-- `sqrt(24*n+1)*A010815(n)` -/
def P5651471618166463539.Spec : Prop :=
  ∀ n, P5651471618166463539.a n = (A134756 n : ℝ)

end A134756

/-! ## A134756.P15986331195087226945

`A133079(n)*A199918(n)`
-/

namespace A134756.P15986331195087226945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 n * A199918 n

end

end A134756.P15986331195087226945

namespace A134756

/-- `A133079(n)*A199918(n)` -/
def P15986331195087226945.Spec : Prop :=
  ∀ n, P15986331195087226945.a n = A134756 n

end A134756

/-! ## A134756.P6551215766938621486

`(-1)^n*A121373(n)*A198954(3*n)`
-/

namespace A134756.P6551215766938621486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121373 n * A198954 (3 * n)

end

end A134756.P6551215766938621486

namespace A134756

/-- `(-1)^n*A121373(n)*A198954(3*n)` -/
def P6551215766938621486.Spec : Prop :=
  ∀ n, P6551215766938621486.a n = A134756 n

end A134756

/-! ## A134756.P11775208768513145518

`A057077(n)*A206958(n)*A198954(3*n)`
-/

namespace A134756.P11775208768513145518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A206958 n * A198954 (3 * n)

end

end A134756.P11775208768513145518

namespace A134756

/-- `A057077(n)*A206958(n)*A198954(3*n)` -/
def P11775208768513145518.Spec : Prop :=
  ∀ n, P11775208768513145518.a n = A134756 n

end A134756

/-! ## A134756.P10170929392909037626

`A010815(n)*A201552(3*n+2)`
-/

namespace A134756.P10170929392909037626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A201552 (3 * n + 2)

end

end A134756.P10170929392909037626

namespace A134756

/-- `A010815(n)*A201552(3*n+2)` -/
def P10170929392909037626.Spec : Prop :=
  ∀ n, P10170929392909037626.a n = A134756 n

end A134756

/-! ## A134756.P3900062993893145370

`A116916(n)*A143062(n)`
-/

namespace A134756.P3900062993893145370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 n * A143062 n

end

end A134756.P3900062993893145370

namespace A134756

/-- `A116916(n)*A143062(n)` -/
def P3900062993893145370.Spec : Prop :=
  ∀ n, P3900062993893145370.a n = A134756 n

end A134756

/-! ## A134756.P16001399732720001586

`A010815(n)*A099375(A008594(n))`
-/

namespace A134756.P16001399732720001586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A099375 (A008594 n).toNat

end

end A134756.P16001399732720001586

namespace A134756

/-- `A010815(n)*A099375(A008594(n))` -/
def P16001399732720001586.Spec : Prop :=
  ∀ n, P16001399732720001586.a n = A134756 n

end A134756

/-!
# A134757: A007318 * A100071.

The programs for A134757, the canonical program `A134757.P15787088376940040508` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134757 has offset 1).

The definition of A134757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134757.P15787088376940040508

`Δ[A132894(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134757

/-- `Δ[A132894(n)]` -/
def P15787088376940040508.Spec : Prop :=
  ∀ n, P15787088376940040508.a n = A134757 (n + 1)

theorem P15787088376940040508.correct : P15787088376940040508.Spec := by
  intro n
  simp only [A134757, Nat.add_sub_cancel]

end A134757

/-! ## A134757.P9776160460320443224

`Δ[n*A005773(n)]`
-/

namespace A134757.P9776160460320443224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P9776160460320443224

namespace A134757

/-- `Δ[n*A005773(n)]` -/
def P9776160460320443224.Spec : Prop :=
  ∀ n, P9776160460320443224.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P13360381860818318971

`Δ[n*A307789(n+1)]`
-/

namespace A134757.P13360381860818318971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A307789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P13360381860818318971

namespace A134757

/-- `Δ[n*A307789(n+1)]` -/
def P13360381860818318971.Spec : Prop :=
  ∀ n, P13360381860818318971.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P12384772956776717860

`Δ[n/2*A025565(n+1)]`
-/

namespace A134757.P12384772956776717860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A025565 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P12384772956776717860

namespace A134757

/-- `Δ[n/2*A025565(n+1)]` -/
def P12384772956776717860.Spec : Prop :=
  ∀ n, P12384772956776717860.a n = (A134757 (n + 1) : ℚ)

end A134757

/-! ## A134757.P5189660283317798797

`A132894(n)+A092690(n)`
-/

namespace A134757.P5189660283317798797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n + A092690 n

end

end A134757.P5189660283317798797

namespace A134757

/-- `A132894(n)+A092690(n)` -/
def P5189660283317798797.Spec : Prop :=
  ∀ n, P5189660283317798797.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P532888167789566115

`A132894(n+1)-A132894(n)`
-/

namespace A134757.P532888167789566115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 (n + 1) - A132894 n

end

end A134757.P532888167789566115

namespace A134757

/-- `A132894(n+1)-A132894(n)` -/
def P532888167789566115.Spec : Prop :=
  ∀ n, P532888167789566115.a n = A134757 (n + 1)

theorem P532888167789566115.correct : P532888167789566115.Spec := by
  intro n
  simp only [A134757, Nat.add_sub_cancel, A134757.P532888167789566115.a, A134757.P15787088376940040508.f1, A134757.P15787088376940040508.a, SequenceMachineLib.memo_apply]

end A134757

/-! ## A134757.P8751884827169035236

`A002426(n)+2*A132894(n)`
-/

namespace A134757.P8751884827169035236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + 2 * A132894 n

end

end A134757.P8751884827169035236

namespace A134757

/-- `A002426(n)+2*A132894(n)` -/
def P8751884827169035236.Spec : Prop :=
  ∀ n, P8751884827169035236.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P2408504528009523756

`2*A092690(n)-A002426(n)`
-/

namespace A134757.P2408504528009523756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092690 n - A002426 n

end

end A134757.P2408504528009523756

namespace A134757

/-- `2*A092690(n)-A002426(n)` -/
def P2408504528009523756.Spec : Prop :=
  ∀ n, P2408504528009523756.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P15116086485449424299

`A163865(n)+n*A002426(n)`
-/

namespace A134757.P15116086485449424299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 n + (n : ℤ) * A002426 n

end

end A134757.P15116086485449424299

namespace A134757

/-- `A163865(n)+n*A002426(n)` -/
def P15116086485449424299.Spec : Prop :=
  ∀ n, P15116086485449424299.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P8398284864449095436

`Δ[A092690(n)-2*A097861(n)]`
-/

namespace A134757.P8398284864449095436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 n - 2 * A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P8398284864449095436

namespace A134757

/-- `Δ[A092690(n)-2*A097861(n)]` -/
def P8398284864449095436.Spec : Prop :=
  ∀ n, P8398284864449095436.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P14753773101603758558

`A002426(n)+n*A025565(n+1)`
-/

namespace A134757.P14753773101603758558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (n : ℤ) * A025565 (n + 1)

end

end A134757.P14753773101603758558

namespace A134757

/-- `A002426(n)+n*A025565(n+1)` -/
def P14753773101603758558.Spec : Prop :=
  ∀ n, P14753773101603758558.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P2497021213831791420

`A005773(n+1)+n*A025566(n+1)`
-/

namespace A134757.P2497021213831791420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (n : ℤ) * A025566 (n + 1)

end

end A134757.P2497021213831791420

namespace A134757

/-- `A005773(n+1)+n*A025566(n+1)` -/
def P2497021213831791420.Spec : Prop :=
  ∀ n, P2497021213831791420.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P17982547072235147150

`A005213(A005843(n))+2*A132894(n)`
-/

namespace A134757.P17982547072235147150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (A005843 n).toNat + 2 * A132894 n

end

end A134757.P17982547072235147150

namespace A134757

/-- `A005213(A005843(n))+2*A132894(n)` -/
def P17982547072235147150.Spec : Prop :=
  ∀ n, P17982547072235147150.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P1998469450089103219

`2*A092690(n)-A005213(A005843(n))`
-/

namespace A134757.P1998469450089103219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092690 n - A005213 (A005843 n).toNat

end

end A134757.P1998469450089103219

namespace A134757

/-- `2*A092690(n)-A005213(A005843(n))` -/
def P1998469450089103219.Spec : Prop :=
  ∀ n, P1998469450089103219.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P8119362028727422468

`A391990(n+1)+A391990(n)-A002426(n+1)`
-/

namespace A134757.P8119362028727422468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391990 (n + 1) + (A391990 n - A002426 (n + 1))

end

end A134757.P8119362028727422468

namespace A134757

/-- `A391990(n+1)+A391990(n)-A002426(n+1)` -/
def P8119362028727422468.Spec : Prop :=
  ∀ n, P8119362028727422468.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P12051454338130632518

`Δ[n*A038622(C(n, 2))]`
-/

namespace A134757.P12051454338130632518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038622 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P12051454338130632518

namespace A134757

/-- `Δ[n*A038622(C(n, 2))]` -/
def P12051454338130632518.Spec : Prop :=
  ∀ n, P12051454338130632518.a n = A134757 (n + 1)

end A134757

/-! ## A134757.P6324428013711526926

`Δ[n*A171651(C(n, 2))]`
-/

namespace A134757.P6324428013711526926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A171651 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134757.P6324428013711526926

namespace A134757

/-- `Δ[n*A171651(C(n, 2))]` -/
def P6324428013711526926.Spec : Prop :=
  ∀ n, P6324428013711526926.a n = A134757 (n + 1)

end A134757

/-!
# A134758: a(n) = A000984(n) + n.

The programs for A134758, the canonical program `A134758.P3097203731672110701` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134758 has offset 0).

The definition of A134758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000984(n)+n` (program `A134758.P3097203731672110701`, by `A134758.P3097203731672110701.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134758.P3097203731672110701

`A000984(n)+n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134758

/-- `A000984(n)+n` -/
def P3097203731672110701.Spec : Prop :=
  ∀ n, P3097203731672110701.a n = A134758 n

theorem P3097203731672110701.correct : P3097203731672110701.Spec := by
  intro n
  simp only [A134758]

end A134758

/-! ## A134758.P7413756720028023859

`(2*(2*n-1)*a(n-1)-(3*n²-6*n+2))/n` with `a(0)=1`
-/

namespace A134758.P7413756720028023859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) - ((3 * n ^ 2 : ℤ) - (6 * n : ℤ) + 2 : ℚ)) / (n : ℚ)

end

end A134758.P7413756720028023859

namespace A134758

/-- `(2*(2*n-1)*a(n-1)-(3*n²-6*n+2))/n` -/
def P7413756720028023859.Spec : Prop :=
  ∀ n, P7413756720028023859.a n = (A134758 n : ℚ)

end A134758

/-! ## A134758.P11326389785360078521

`C(2*n, n)+n`
-/

namespace A134758.P11326389785360078521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n + n

end

end A134758.P11326389785360078521

namespace A134758

/-- `C(2*n, n)+n` -/
def P11326389785360078521.Spec : Prop :=
  ∀ n, (P11326389785360078521.a n : ℤ) = A134758 n

theorem P11326389785360078521.correct : P11326389785360078521.Spec := by
  intro n
  simp only [A134758, Nat.add_sub_cancel, A134758.P11326389785360078521.a, A134758.P3097203731672110701.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134758

/-! ## A134758.P16618492938166544436

`record[a(n-1)/(floor(n/2)/n-1)]+n` with `a(0)=1`
-/

namespace A134758.P16618492938166544436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ)

end

end A134758.P16618492938166544436

namespace A134758

/-- `record[a(n-1)/(floor(n/2)/n-1)]+n` -/
def P16618492938166544436.Spec : Prop :=
  ∀ n, P16618492938166544436.a n = (A134758 n : ℚ)

end A134758

/-! ## A134758.P17227993932558769237

`record[A081668(n)]+n`
-/

namespace A134758.P17227993932558769237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A134758.P17227993932558769237

namespace A134758

/-- `record[A081668(n)]+n` -/
def P17227993932558769237.Spec : Prop :=
  ∀ n, P17227993932558769237.a n = A134758 n

end A134758

/-! ## A134758.P964014800930665476

`record[A089849(n)]+n`
-/

namespace A134758.P964014800930665476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A134758.P964014800930665476

namespace A134758

/-- `record[A089849(n)]+n` -/
def P964014800930665476.Spec : Prop :=
  ∀ n, P964014800930665476.a n = A134758 n

end A134758

/-! ## A134758.P18320023606612482052

`record[A126869(n)]+n`
-/

namespace A134758.P18320023606612482052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A134758.P18320023606612482052

namespace A134758

/-- `record[A126869(n)]+n` -/
def P18320023606612482052.Spec : Prop :=
  ∀ n, P18320023606612482052.a n = A134758 n

end A134758

/-! ## A134758.P12506059445404326433

`record[A126930(n)]+n`
-/

namespace A134758.P12506059445404326433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A134758.P12506059445404326433

namespace A134758

/-- `record[A126930(n)]+n` -/
def P12506059445404326433.Spec : Prop :=
  ∀ n, P12506059445404326433.a n = A134758 n

end A134758

/-! ## A134758.P14639959826393081105

`record[A241543(n)]+n`
-/

namespace A134758.P14639959826393081105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A134758.P14639959826393081105

namespace A134758

/-- `record[A241543(n)]+n` -/
def P14639959826393081105.Spec : Prop :=
  ∀ n, P14639959826393081105.a n = A134758 n

end A134758

/-! ## A134758.P903234028787488088

`A001405(2*n)+n`
-/

namespace A134758.P903234028787488088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (n : ℤ)

end

end A134758.P903234028787488088

namespace A134758

/-- `A001405(2*n)+n` -/
def P903234028787488088.Spec : Prop :=
  ∀ n, P903234028787488088.a n = A134758 n

end A134758

/-! ## A134758.P5297664203228686811

`A045992(n)+2*n`
-/

namespace A134758.P5297664203228686811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n + (2 * n : ℤ)

end

end A134758.P5297664203228686811

namespace A134758

/-- `A045992(n)+2*n` -/
def P5297664203228686811.Spec : Prop :=
  ∀ n, P5297664203228686811.a n = A134758 n

theorem P5297664203228686811.correct : P5297664203228686811.Spec := by
  intro n
  simp only [A134758, Nat.add_sub_cancel, A134758.P5297664203228686811.a, A134758.P3097203731672110701.a, A000984, A000984.P7946844122574426130.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134758

/-! ## A134758.P8449829954007556084

`A063886(2*n)+n`
-/

namespace A134758.P8449829954007556084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) + (n : ℤ)

end

end A134758.P8449829954007556084

namespace A134758

/-- `A063886(2*n)+n` -/
def P8449829954007556084.Spec : Prop :=
  ∀ n, P8449829954007556084.a n = A134758 n

end A134758

/-! ## A134758.P6284109395491905117

`A081668(2*n)+n`
-/

namespace A134758.P6284109395491905117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) + (n : ℤ)

end

end A134758.P6284109395491905117

namespace A134758

/-- `A081668(2*n)+n` -/
def P6284109395491905117.Spec : Prop :=
  ∀ n, P6284109395491905117.a n = A134758 n

end A134758

/-! ## A134758.P8086653604871143365

`A089849(2*n)+n`
-/

namespace A134758.P8086653604871143365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (2 * n) + (n : ℤ)

end

end A134758.P8086653604871143365

namespace A134758

/-- `A089849(2*n)+n` -/
def P8086653604871143365.Spec : Prop :=
  ∀ n, P8086653604871143365.a n = A134758 n

end A134758

/-! ## A134758.P8027896884298524360

`A126869(2*n)+n`
-/

namespace A134758.P8027896884298524360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) + (n : ℤ)

end

end A134758.P8027896884298524360

namespace A134758

/-- `A126869(2*n)+n` -/
def P8027896884298524360.Spec : Prop :=
  ∀ n, P8027896884298524360.a n = A134758 n

end A134758

/-! ## A134758.P6989418557519691421

`A126930(2*n)+n`
-/

namespace A134758.P6989418557519691421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) + (n : ℤ)

end

end A134758.P6989418557519691421

namespace A134758

/-- `A126930(2*n)+n` -/
def P6989418557519691421.Spec : Prop :=
  ∀ n, P6989418557519691421.a n = A134758 n

end A134758

/-! ## A134758.P18059569042759010854

`A128014(2*n)+n`
-/

namespace A134758.P18059569042759010854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * n) + (n : ℤ)

end

end A134758.P18059569042759010854

namespace A134758

/-- `A128014(2*n)+n` -/
def P18059569042759010854.Spec : Prop :=
  ∀ n, P18059569042759010854.a n = A134758 n

end A134758

/-! ## A134758.P8687984800655706603

`A129383(2*n)+n`
-/

namespace A134758.P8687984800655706603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n) + (n : ℤ)

end

end A134758.P8687984800655706603

namespace A134758

/-- `A129383(2*n)+n` -/
def P8687984800655706603.Spec : Prop :=
  ∀ n, P8687984800655706603.a n = A134758 n

end A134758

/-! ## A134758.P9939286258125411572

`A318910(2*n)+n`
-/

namespace A134758.P9939286258125411572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318910 (2 * n) + (n : ℤ)

end

end A134758.P9939286258125411572

namespace A134758

/-- `A318910(2*n)+n` -/
def P9939286258125411572.Spec : Prop :=
  ∀ n, P9939286258125411572.a n = A134758 n

end A134758

/-! ## A134758.P15785826967435719990

`A375963(3*n)+n`
-/

namespace A134758.P15785826967435719990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375963 (3 * n) + (n : ℤ)

end

end A134758.P15785826967435719990

namespace A134758

/-- `A375963(3*n)+n` -/
def P15785826967435719990.Spec : Prop :=
  ∀ n, P15785826967435719990.a n = A134758 n

end A134758

/-!
# A134759: a(n) = 2*A000984(n) - (n+1).

The programs for A134759, the canonical program `A134759.P90257600578840069` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134759 has offset 0).

The definition of A134759 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000984(n)-(n+1)` (program `A134759.P90257600578840069`, by `A134759.P90257600578840069.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134759.P90257600578840069

`2*A000984(n)-(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134759

/-- `2*A000984(n)-(n+1)` -/
def P90257600578840069.Spec : Prop :=
  ∀ n, P90257600578840069.a n = A134759 n

theorem P90257600578840069.correct : P90257600578840069.Spec := by
  intro n
  simp only [A134759]

end A134759

/-! ## A134759.P13571762409068026108

`(n+1)*(2*A000108(n)-1)`
-/

namespace A134759.P13571762409068026108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 * A000108 n - 1)

end

end A134759.P13571762409068026108

namespace A134759

/-- `(n+1)*(2*A000108(n)-1)` -/
def P13571762409068026108.Spec : Prop :=
  ∀ n, P13571762409068026108.a n = A134759 n

end A134759

/-! ## A134759.P11009697171948473991

`(2*(2*n-1)*a(n-1)+3*n*(n-1))/n` with `a(0)=1`
-/

namespace A134759.P11009697171948473991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) + ((3 * n : ℤ) * ((n : ℤ) - 1) : ℚ)) / (n : ℚ)

end

end A134759.P11009697171948473991

namespace A134759

/-- `(2*(2*n-1)*a(n-1)+3*n*(n-1))/n` -/
def P11009697171948473991.Spec : Prop :=
  ∀ n, P11009697171948473991.a n = (A134759 n : ℚ)

end A134759

/-! ## A134759.P4137579051033680990

`2*C(2*n, n)-(n+1)`
-/

namespace A134759.P4137579051033680990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) n : ℤ) - (n + 1 : ℤ)

end

end A134759.P4137579051033680990

namespace A134759

/-- `2*C(2*n, n)-(n+1)` -/
def P4137579051033680990.Spec : Prop :=
  ∀ n, P4137579051033680990.a n = A134759 n

end A134759

/-! ## A134759.P1671701239097292997

`2*C(2*n, n)-n-1`
-/

namespace A134759.P1671701239097292997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) n : ℤ) - (n : ℤ) - 1

end

end A134759.P1671701239097292997

namespace A134759

/-- `2*C(2*n, n)-n-1` -/
def P1671701239097292997.Spec : Prop :=
  ∀ n, P1671701239097292997.a n = A134759 n

theorem P1671701239097292997.correct : P1671701239097292997.Spec := by
  intro n
  simp only [A134759, Nat.add_sub_cancel, A134759.P1671701239097292997.a, A134759.P90257600578840069.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134759

/-! ## A134759.P5727782662718812815

`record[a(n-1)/(floor(n/2)/n-1)]-(n+1)` with `a(0)=2`
-/

namespace A134759.P5727782662718812815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℚ)

end

end A134759.P5727782662718812815

namespace A134759

/-- `record[a(n-1)/(floor(n/2)/n-1)]-(n+1)` -/
def P5727782662718812815.Spec : Prop :=
  ∀ n, P5727782662718812815.a n = (A134759 n : ℚ)

end A134759

/-! ## A134759.P15706146814279133949

`A134760(n)-n`
-/

namespace A134759.P15706146814279133949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n - (n : ℤ)

end

end A134759.P15706146814279133949

namespace A134759

/-- `A134760(n)-n` -/
def P15706146814279133949.Spec : Prop :=
  ∀ n, P15706146814279133949.a n = A134759 n

theorem P15706146814279133949.correct : P15706146814279133949.Spec := by
  intro n
  simp only [A134759, Nat.add_sub_cancel, A134759.P15706146814279133949.a, A134759.P90257600578840069.a, A000984, A000984.P7946844122574426130.a, A134760, A134760.P5337587419616991528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134759

/-! ## A134759.P11926221895827748519

`record[A134761(n)]-n`
-/

namespace A134759.P11926221895827748519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A134759.P11926221895827748519

namespace A134759

/-- `record[A134761(n)]-n` -/
def P11926221895827748519.Spec : Prop :=
  ∀ n, P11926221895827748519.a n = A134759 n

end A134759

/-! ## A134759.P17246773504191739651

`A028329(n)-(n+1)`
-/

namespace A134759.P17246773504191739651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - (n + 1 : ℤ)

end

end A134759.P17246773504191739651

namespace A134759

/-- `A028329(n)-(n+1)` -/
def P17246773504191739651.Spec : Prop :=
  ∀ n, P17246773504191739651.a n = A134759 n

end A134759

/-! ## A134759.P3018774302175285594

`(n+1)*A131428(n)`
-/

namespace A134759.P3018774302175285594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131428 n

end

end A134759.P3018774302175285594

namespace A134759

/-- `(n+1)*A131428(n)` -/
def P3018774302175285594.Spec : Prop :=
  ∀ n, P3018774302175285594.a n = A134759 n

end A134759

/-! ## A134759.P16623430961851378291

`A134761(2*n)-n`
-/

namespace A134759.P16623430961851378291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 (2 * n) - (n : ℤ)

end

end A134759.P16623430961851378291

namespace A134759

/-- `A134761(2*n)-n` -/
def P16623430961851378291.Spec : Prop :=
  ∀ n, P16623430961851378291.a n = A134759 n

end A134759

/-! ## A134759.P3914686033685751437

`2*A045992(n)+n-1`
-/

namespace A134759.P3914686033685751437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045992 n + ((n : ℤ) - 1)

end

end A134759.P3914686033685751437

namespace A134759

/-- `2*A045992(n)+n-1` -/
def P3914686033685751437.Spec : Prop :=
  ∀ n, P3914686033685751437.a n = A134759 n

theorem P3914686033685751437.correct : P3914686033685751437.Spec := by
  intro n
  simp only [A134759, Nat.add_sub_cancel, A134759.P3914686033685751437.a, A134759.P90257600578840069.a, A000984, A000984.P7946844122574426130.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134759

/-! ## A134759.P13424350845404356746

`(n+1)*(A383251(n)-2)`
-/

namespace A134759.P13424350845404356746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A383251 n - 2)

end

end A134759.P13424350845404356746

namespace A134759

/-- `(n+1)*(A383251(n)-2)` -/
def P13424350845404356746.Spec : Prop :=
  ∀ n, P13424350845404356746.a n = A134759 n

end A134759

/-! ## A134759.P10600576341093892279

`A218008(2*n)-(n-1)`
-/

namespace A134759.P10600576341093892279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218008 (2 * n) - ((n : ℤ) - 1)

end

end A134759.P10600576341093892279

namespace A134759

/-- `A218008(2*n)-(n-1)` -/
def P10600576341093892279.Spec : Prop :=
  ∀ n, P10600576341093892279.a n = A134759 n

end A134759

/-! ## A134759.P10309995809292182153

`A240530(n)/2-(n+1)`
-/

namespace A134759.P10309995809292182153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240530 n : ℚ) / 2 - (n + 1 : ℚ)

end

end A134759.P10309995809292182153

namespace A134759

/-- `A240530(n)/2-(n+1)` -/
def P10309995809292182153.Spec : Prop :=
  ∀ n, P10309995809292182153.a n = (A134759 n : ℚ)

theorem P10309995809292182153.correct : P10309995809292182153.Spec := by
  intro n
  simp only [A134759, Nat.add_sub_cancel, A134759.P10309995809292182153.a, A134759.P90257600578840069.a, A000984, A000984.P7946844122574426130.a, A240530, A240530.P76168564774585467.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134759

/-! ## A134759.P5706238223349769619

`A047073(Δ[n²])-(n+1)`
-/

namespace A134759.P5706238223349769619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A134759.P5706238223349769619

namespace A134759

/-- `A047073(Δ[n²])-(n+1)` -/
def P5706238223349769619.Spec : Prop :=
  ∀ n, P5706238223349769619.a n = A134759 n

end A134759

/-! ## A134759.P4234360221374717114

`A063886(Δ[n²])-(n+1)`
-/

namespace A134759.P4234360221374717114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A134759.P4234360221374717114

namespace A134759

/-- `A063886(Δ[n²])-(n+1)` -/
def P4234360221374717114.Spec : Prop :=
  ∀ n, P4234360221374717114.a n = A134759 n

end A134759

/-! ## A134759.P4593903280749763436

`2*A359176(n+1)+n+1`
-/

namespace A134759.P4593903280749763436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359176 (n + 1) + (n + 1 : ℤ)

end

end A134759.P4593903280749763436

namespace A134759

/-- `2*A359176(n+1)+n+1` -/
def P4593903280749763436.Spec : Prop :=
  ∀ n, P4593903280749763436.a n = A134759 n

end A134759

/-! ## A134759.P11557312243367104258

`A182027(2*(n+1))-(n+1)`
-/

namespace A134759.P11557312243367104258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A134759.P11557312243367104258

namespace A134759

/-- `A182027(2*(n+1))-(n+1)` -/
def P11557312243367104258.Spec : Prop :=
  ∀ n, P11557312243367104258.a n = A134759 n

end A134759

/-!
# A134760: a(n) = 2*A000984(n) - 1.

The programs for A134760, the canonical program `A134760.P5337587419616991528` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134760 has offset 0).

The definition of A134760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000984(n)-1` (program `A134760.P5337587419616991528`, by `A134760.P5337587419616991528.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134760.P5337587419616991528

`2*A000984(n)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134760

/-- `2*A000984(n)-1` -/
def P5337587419616991528.Spec : Prop :=
  ∀ n, P5337587419616991528.a n = A134760 n

theorem P5337587419616991528.correct : P5337587419616991528.Spec := by
  intro n
  simp only [A134760]

end A134760

/-! ## A134760.P12182659233095745164

`2*(n+1)*A000108(n)-1`
-/

namespace A134760.P12182659233095745164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000108 n - 1

end

end A134760.P12182659233095745164

namespace A134760

/-- `2*(n+1)*A000108(n)-1` -/
def P12182659233095745164.Spec : Prop :=
  ∀ n, P12182659233095745164.a n = A134760 n

end A134760

/-! ## A134760.P1156738625029823763

`2*C(2*n, n)-1`
-/

namespace A134760.P1156738625029823763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) n : ℤ) - 1

end

end A134760.P1156738625029823763

namespace A134760

/-- `2*C(2*n, n)-1` -/
def P1156738625029823763.Spec : Prop :=
  ∀ n, P1156738625029823763.a n = A134760 n

end A134760

/-! ## A134760.P11891141626259665690

`1-2*floor((1/n-2)*a(n-1))` with `a(0)=1`
-/

namespace A134760.P11891141626259665690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * ⌊(1 / (n : ℚ) - 2) * (a (n - 1) : ℚ)⌋

end

end A134760.P11891141626259665690

namespace A134760

/-- `1-2*floor((1/n-2)*a(n-1))` -/
def P11891141626259665690.Spec : Prop :=
  ∀ n, P11891141626259665690.a n = A134760 n

end A134760

/-! ## A134760.P5428198370609039772

`record[a(n-1)/(floor(n/2)/n-1)]-1` with `a(0)=2`
-/

namespace A134760.P5428198370609039772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A134760.P5428198370609039772

namespace A134760

/-- `record[a(n-1)/(floor(n/2)/n-1)]-1` -/
def P5428198370609039772.Spec : Prop :=
  ∀ n, P5428198370609039772.a n = (A134760 n : ℚ)

end A134760

/-! ## A134760.P10566467814643368567

`record[A134761(n)]`
-/

namespace A134760.P10566467814643368567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134760.P10566467814643368567

namespace A134760

/-- `record[A134761(n)]` -/
def P10566467814643368567.Spec : Prop :=
  ∀ n, P10566467814643368567.a n = A134760 n

end A134760

/-! ## A134760.P14950726984579404112

`A028329(n)-1`
-/

namespace A134760.P14950726984579404112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - 1

end

end A134760.P14950726984579404112

namespace A134760

/-- `A028329(n)-1` -/
def P14950726984579404112.Spec : Prop :=
  ∀ n, P14950726984579404112.a n = A134760 n

end A134760

/-! ## A134760.P8726744667432748876

`A134761(2*n)`
-/

namespace A134760.P8726744667432748876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 (2 * n)

end

end A134760.P8726744667432748876

namespace A134760

/-- `A134761(2*n)` -/
def P8726744667432748876.Spec : Prop :=
  ∀ n, P8726744667432748876.a n = A134760 n

end A134760

/-! ## A134760.P12446836953149352275

`A134759(n)+n`
-/

namespace A134760.P12446836953149352275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n + (n : ℤ)

end

end A134760.P12446836953149352275

namespace A134760

/-- `A134759(n)+n` -/
def P12446836953149352275.Spec : Prop :=
  ∀ n, P12446836953149352275.a n = A134760 n

theorem P12446836953149352275.correct : P12446836953149352275.Spec := by
  intro n
  simp only [A134760, Nat.add_sub_cancel, A134760.P12446836953149352275.a, A134760.P5337587419616991528.a, A000984, A000984.P7946844122574426130.a, A134759, A134759.P90257600578840069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134760

/-! ## A134760.P18306164133304470746

`A218008(2*n)+1`
-/

namespace A134760.P18306164133304470746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218008 (2 * n) + 1

end

end A134760.P18306164133304470746

namespace A134760

/-- `A218008(2*n)+1` -/
def P18306164133304470746.Spec : Prop :=
  ∀ n, P18306164133304470746.a n = A134760 n

end A134760

/-! ## A134760.P3300931967167494143

`(A134770(n)+1)/2`
-/

namespace A134760.P3300931967167494143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134770 n + 1 : ℚ) / 2

end

end A134760.P3300931967167494143

namespace A134760

/-- `(A134770(n)+1)/2` -/
def P3300931967167494143.Spec : Prop :=
  ∀ n, P3300931967167494143.a n = (A134760 n : ℚ)

theorem P3300931967167494143.correct : P3300931967167494143.Spec := by
  intro n
  simp only [A134760, Nat.add_sub_cancel, A134760.P3300931967167494143.a, A134760.P5337587419616991528.a, A000984, A000984.P7946844122574426130.a, A134770, A134770.P14019126110980162082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134760

/-! ## A134760.P18121341033893826196

`A240530(n)/2-1`
-/

namespace A134760.P18121341033893826196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240530 n : ℚ) / 2 - 1

end

end A134760.P18121341033893826196

namespace A134760

/-- `A240530(n)/2-1` -/
def P18121341033893826196.Spec : Prop :=
  ∀ n, P18121341033893826196.a n = (A134760 n : ℚ)

theorem P18121341033893826196.correct : P18121341033893826196.Spec := by
  intro n
  simp only [A134760, Nat.add_sub_cancel, A134760.P18121341033893826196.a, A134760.P5337587419616991528.a, A000984, A000984.P7946844122574426130.a, A240530, A240530.P76168564774585467.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134760

/-! ## A134760.P8013325894438811528

`lcm(2, A100320(n))-1`
-/

namespace A134760.P8013325894438811528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A100320 n) : ℤ) - 1

end

end A134760.P8013325894438811528

namespace A134760

/-- `lcm(2, A100320(n))-1` -/
def P8013325894438811528.Spec : Prop :=
  ∀ n, P8013325894438811528.a n = A134760 n

end A134760

/-! ## A134760.P16095881030591727558

`A047073(Δ[n²])-1`
-/

namespace A134760.P16095881030591727558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A134760.P16095881030591727558

namespace A134760

/-- `A047073(Δ[n²])-1` -/
def P16095881030591727558.Spec : Prop :=
  ∀ n, P16095881030591727558.a n = A134760 n

end A134760

/-! ## A134760.P17489026490650788670

`A063886(Δ[n²])-1`
-/

namespace A134760.P17489026490650788670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A134760.P17489026490650788670

namespace A134760

/-- `A063886(Δ[n²])-1` -/
def P17489026490650788670.Spec : Prop :=
  ∀ n, P17489026490650788670.a n = A134760 n

end A134760

/-! ## A134760.P17529274610904088171

`record[2*A081668(n)-1]`
-/

namespace A134760.P17529274610904088171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081668 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134760.P17529274610904088171

namespace A134760

/-- `record[2*A081668(n)-1]` -/
def P17529274610904088171.Spec : Prop :=
  ∀ n, P17529274610904088171.a n = A134760 n

end A134760

/-! ## A134760.P16655884950454222889

`record[2*A126869(n)-1]`
-/

namespace A134760.P16655884950454222889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126869 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134760.P16655884950454222889

namespace A134760

/-- `record[2*A126869(n)-1]` -/
def P16655884950454222889.Spec : Prop :=
  ∀ n, P16655884950454222889.a n = A134760 n

end A134760

/-! ## A134760.P7332100402962419140

`record[2*A126930(n)-1]`
-/

namespace A134760.P7332100402962419140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126930 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134760.P7332100402962419140

namespace A134760

/-- `record[2*A126930(n)-1]` -/
def P7332100402962419140.Spec : Prop :=
  ∀ n, P7332100402962419140.a n = A134760 n

end A134760

/-! ## A134760.P2827152288307837910

`A182027(2*(n+1))-1`
-/

namespace A134760.P2827152288307837910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (2 * (n + 1)) - 1

end

end A134760.P2827152288307837910

namespace A134760

/-- `A182027(2*(n+1))-1` -/
def P2827152288307837910.Spec : Prop :=
  ∀ n, P2827152288307837910.a n = A134760 n

end A134760

/-! ## A134760.P203275083780345625

`2*A014495(2*n)+1`
-/

namespace A134760.P203275083780345625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014495 (2 * n) + 1

end

end A134760.P203275083780345625

namespace A134760

/-- `2*A014495(2*n)+1` -/
def P203275083780345625.Spec : Prop :=
  ∀ n, P203275083780345625.a n = A134760 n

end A134760

/-!
# A134761: a(n) = (1/2)*( (1 + (-1)^n)*A134760(n/2) + (1 - (-1)^n) ).

The programs for A134761, the canonical program `A134761.P10409477059561049575` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134761 has offset 0).

The definition of A134761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134761.P10409477059561049575

`abs(or(∏[xor(1, n)/(n+1)+1]-2, (-1)^n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A134761

/-- `abs(or(∏[xor(1, n)/(n+1)+1]-2, (-1)^n))` -/
def P10409477059561049575.Spec : Prop :=
  ∀ n, P10409477059561049575.a n = A134761 n

theorem P10409477059561049575.correct : P10409477059561049575.Spec := by
  intro n
  simp only [A134761]

end A134761

/-! ## A134761.P8972447134747642503

`abs(1-2*A126869(n))`
-/

namespace A134761.P8972447134747642503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A126869 n|

end

end A134761.P8972447134747642503

namespace A134761

/-- `abs(1-2*A126869(n))` -/
def P8972447134747642503.Spec : Prop :=
  ∀ n, P8972447134747642503.a n = A134761 n

end A134761

/-! ## A134761.P8525773717807881907

`round(2/3*A134763(n))`
-/

namespace A134761.P8525773717807881907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (A134763 n : ℚ))

end

end A134761.P8525773717807881907

namespace A134761

/-- `round(2/3*A134763(n))` -/
def P8525773717807881907.Spec : Prop :=
  ∀ n, P8525773717807881907.a n = A134761 n

end A134761

/-! ## A134761.P17688572681241494388

`A134760(A142150(n))`
-/

namespace A134761.P17688572681241494388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 (A142150 n).toNat

end

end A134761.P17688572681241494388

namespace A134761

/-- `A134760(A142150(n))` -/
def P17688572681241494388.Spec : Prop :=
  ∀ n, P17688572681241494388.a n = A134761 n

end A134761

/-! ## A134761.P12013719857979742872

`A063886(A093178(n+1))-1`
-/

namespace A134761.P12013719857979742872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (A093178 (n + 1)).toNat - 1

end

end A134761.P12013719857979742872

namespace A134761

/-- `A063886(A093178(n+1))-1` -/
def P12013719857979742872.Spec : Prop :=
  ∀ n, P12013719857979742872.a n = A134761 n

end A134761

/-! ## A134761.P6282809812681045706

`A081668(n)+A126869(n)-1`
-/

namespace A134761.P6282809812681045706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n + (A126869 n - 1)

end

end A134761.P6282809812681045706

namespace A134761

/-- `A081668(n)+A126869(n)-1` -/
def P6282809812681045706.Spec : Prop :=
  ∀ n, P6282809812681045706.a n = A134761 n

end A134761

/-! ## A134761.P15941392559617979366

`2*A126869(n)-A033999(n)`
-/

namespace A134761.P15941392559617979366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126869 n - A033999 n

end

end A134761.P15941392559617979366

namespace A134761

/-- `2*A126869(n)-A033999(n)` -/
def P15941392559617979366.Spec : Prop :=
  ∀ n, P15941392559617979366.a n = A134761 n

end A134761

/-! ## A134761.P9089522783742270642

`2*A134763(n)-A134771(n)`
-/

namespace A134761.P9089522783742270642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134763 n - A134771 n

end

end A134761.P9089522783742270642

namespace A134761

/-- `2*A134763(n)-A134771(n)` -/
def P9089522783742270642.Spec : Prop :=
  ∀ n, P9089522783742270642.a n = A134761 n

end A134761

/-! ## A134761.P17707006816290042416

`gcd(n%2, Δ[A191531(n)])`
-/

namespace A134761.P17707006816290042416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (f1 (n + 1) - f1 n)

end

end A134761.P17707006816290042416

namespace A134761

/-- `gcd(n%2, Δ[A191531(n)])` -/
def P17707006816290042416.Spec : Prop :=
  ∀ n, (P17707006816290042416.a n : ℤ) = A134761 n

end A134761

/-! ## A134761.P3189280265476919374

`2*C(n, gcd(n, ∑[n]))-1`
-/

namespace A134761.P3189280265476919374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - 1

end

end A134761.P3189280265476919374

namespace A134761

/-- `2*C(n, gcd(n, ∑[n]))-1` -/
def P3189280265476919374.Spec : Prop :=
  ∀ n, P3189280265476919374.a n = A134761 n

end A134761

/-! ## A134761.P17738986448746992506

`A109128(A092530(n))`
-/

namespace A134761.P17738986448746992506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (A092530 n).toNat

end

end A134761.P17738986448746992506

namespace A134761

/-- `A109128(A092530(n))` -/
def P17738986448746992506.Spec : Prop :=
  ∀ n, P17738986448746992506.a n = A134761 n

end A134761

/-! ## A134761.P13755284401341939786

`A109128(n*A008619(n))`
-/

namespace A134761.P13755284401341939786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 ((n : ℤ) * A008619 n).toNat

end

end A134761.P13755284401341939786

namespace A134761

/-- `A109128(n*A008619(n))` -/
def P13755284401341939786.Spec : Prop :=
  ∀ n, P13755284401341939786.a n = A134761 n

end A134761

/-! ## A134761.P2115473953142375183

`A109128(n*A065033(n+1))`
-/

namespace A134761.P2115473953142375183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 ((n : ℤ) * A065033 (n + 1)).toNat

end

end A134761.P2115473953142375183

namespace A134761

/-- `A109128(n*A065033(n+1))` -/
def P2115473953142375183.Spec : Prop :=
  ∀ n, P2115473953142375183.a n = A134761 n

end A134761

/-! ## A134761.P12985201628667614246

`A109128(n*A110654(n+1))`
-/

namespace A134761.P12985201628667614246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 ((n : ℤ) * A110654 (n + 1)).toNat

end

end A134761.P12985201628667614246

namespace A134761

/-- `A109128(n*A110654(n+1))` -/
def P12985201628667614246.Spec : Prop :=
  ∀ n, P12985201628667614246.a n = A134761 n

end A134761

/-! ## A134761.P13613330724738796447

`A132752(n*A008619(n+1))`
-/

namespace A134761.P13613330724738796447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132752 ((n : ℤ) * A008619 (n + 1)).toNat

end

end A134761.P13613330724738796447

namespace A134761

/-- `A132752(n*A008619(n+1))` -/
def P13613330724738796447.Spec : Prop :=
  ∀ n, P13613330724738796447.a n = A134761 n

end A134761

/-!
# A134762: a(n) = 3*A000984(n) - 2.

The programs for A134762, the canonical program `A134762.P15216652540126543409` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134762 has offset 0).

The definition of A134762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000984(n)-2` (program `A134762.P15216652540126543409`, by `A134762.P15216652540126543409.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134762.P15216652540126543409

`3*A000984(n)-2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134762

/-- `3*A000984(n)-2` -/
def P15216652540126543409.Spec : Prop :=
  ∀ n, P15216652540126543409.a n = A134762 n

theorem P15216652540126543409.correct : P15216652540126543409.Spec := by
  intro n
  simp only [A134762]

end A134762

/-! ## A134762.P10927474962909186126

`3*(n+1)*A000108(n)-2`
-/

namespace A134762.P10927474962909186126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A000108 n - 2

end

end A134762.P10927474962909186126

namespace A134762

/-- `3*(n+1)*A000108(n)-2` -/
def P10927474962909186126.Spec : Prop :=
  ∀ n, P10927474962909186126.a n = A134762 n

end A134762

/-! ## A134762.P14983084700378456406

`(2*(2*n-1)*a(n-1)+2*(3*n-2))/n` with `a(0)=1`
-/

namespace A134762.P14983084700378456406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) + (2 * ((3 * n : ℤ) - 2) : ℚ)) / (n : ℚ)

end

end A134762.P14983084700378456406

namespace A134762

/-- `(2*(2*n-1)*a(n-1)+2*(3*n-2))/n` -/
def P14983084700378456406.Spec : Prop :=
  ∀ n, P14983084700378456406.a n = (A134762 n : ℚ)

end A134762

/-! ## A134762.P9554684282065382774

`3*C(2*n, n)-2`
-/

namespace A134762.P9554684282065382774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * n) n : ℤ) - 2

end

end A134762.P9554684282065382774

namespace A134762

/-- `3*C(2*n, n)-2` -/
def P9554684282065382774.Spec : Prop :=
  ∀ n, P9554684282065382774.a n = A134762 n

end A134762

/-! ## A134762.P6830483610716234562

`record[a(n-1)/(floor(n/2)/n-1)]-2` with `a(0)=3`
-/

namespace A134762.P6830483610716234562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A134762.P6830483610716234562

namespace A134762

/-- `record[a(n-1)/(floor(n/2)/n-1)]-2` -/
def P6830483610716234562.Spec : Prop :=
  ∀ n, P6830483610716234562.a n = (A134762 n : ℚ)

end A134762

/-! ## A134762.P2595925253010966676

`A134763(2*n)`
-/

namespace A134762.P2595925253010966676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134763 (2 * n)

end

end A134762.P2595925253010966676

namespace A134762

/-- `A134763(2*n)` -/
def P2595925253010966676.Spec : Prop :=
  ∀ n, P2595925253010966676.a n = A134762 n

end A134762

/-! ## A134762.P1300115360122436942

`abs(2-A144706(n))`
-/

namespace A134762.P1300115360122436942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A144706 n|

end

end A134762.P1300115360122436942

namespace A134762

/-- `abs(2-A144706(n))` -/
def P1300115360122436942.Spec : Prop :=
  ∀ n, P1300115360122436942.a n = A134762 n

end A134762

/-! ## A134762.P15645472983557890843

`record[3*A081668(n)]-2`
-/

namespace A134762.P15645472983557890843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A134762.P15645472983557890843

namespace A134762

/-- `record[3*A081668(n)]-2` -/
def P15645472983557890843.Spec : Prop :=
  ∀ n, P15645472983557890843.a n = A134762 n

end A134762

/-! ## A134762.P13128052815074719140

`record[3*A126869(n)]-2`
-/

namespace A134762.P13128052815074719140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A134762.P13128052815074719140

namespace A134762

/-- `record[3*A126869(n)]-2` -/
def P13128052815074719140.Spec : Prop :=
  ∀ n, P13128052815074719140.a n = A134762 n

end A134762

/-! ## A134762.P17848835390729489728

`record[3*A126930(n)]-2`
-/

namespace A134762.P17848835390729489728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A134762.P17848835390729489728

namespace A134762

/-- `record[3*A126930(n)]-2` -/
def P17848835390729489728.Spec : Prop :=
  ∀ n, P17848835390729489728.a n = A134762 n

end A134762

/-! ## A134762.P12864213007277673603

`3*A001405(2*n)-2`
-/

namespace A134762.P12864213007277673603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001405 (2 * n) - 2

end

end A134762.P12864213007277673603

namespace A134762

/-- `3*A001405(2*n)-2` -/
def P12864213007277673603.Spec : Prop :=
  ∀ n, P12864213007277673603.a n = A134762 n

end A134762

/-! ## A134762.P5634026069228555767

`3*A063886(2*n)-2`
-/

namespace A134762.P5634026069228555767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A063886 (2 * n) - 2

end

end A134762.P5634026069228555767

namespace A134762

/-- `3*A063886(2*n)-2` -/
def P5634026069228555767.Spec : Prop :=
  ∀ n, P5634026069228555767.a n = A134762 n

end A134762

/-! ## A134762.P2562589708404976951

`3*A126930(2*n)-2`
-/

namespace A134762.P2562589708404976951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126930 (2 * n) - 2

end

end A134762.P2562589708404976951

namespace A134762

/-- `3*A126930(2*n)-2` -/
def P2562589708404976951.Spec : Prop :=
  ∀ n, P2562589708404976951.a n = A134762 n

end A134762

/-! ## A134762.P12596291293706377047

`3*(A045992(n)+n)-2`
-/

namespace A134762.P12596291293706377047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A045992 n + (n : ℤ)) - 2

end

end A134762.P12596291293706377047

namespace A134762

/-- `3*(A045992(n)+n)-2` -/
def P12596291293706377047.Spec : Prop :=
  ∀ n, P12596291293706377047.a n = A134762 n

theorem P12596291293706377047.correct : P12596291293706377047.Spec := by
  intro n
  simp only [A134762, Nat.add_sub_cancel, A134762.P12596291293706377047.a, A134762.P15216652540126543409.a, A000984, A000984.P7946844122574426130.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134762

/-! ## A134762.P4060014315145508043

`A010763(n)+A000777(n)`
-/

namespace A134762.P4060014315145508043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n + A000777 n

end

end A134762.P4060014315145508043

namespace A134762

/-- `A010763(n)+A000777(n)` -/
def P4060014315145508043.Spec : Prop :=
  ∀ n, P4060014315145508043.a n = A134762 n

end A134762

/-! ## A134762.P7157220478793844968

`A120304(n)+A051960(n)`
-/

namespace A134762.P7157220478793844968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + A051960 n

end

end A134762.P7157220478793844968

namespace A134762

/-- `A120304(n)+A051960(n)` -/
def P7157220478793844968.Spec : Prop :=
  ∀ n, P7157220478793844968.a n = A134762 n

end A134762

/-! ## A134762.P12482439270807886059

`A171556(n)+A062561(n)`
-/

namespace A134762.P12482439270807886059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171556 n + A062561 n

end

end A134762.P12482439270807886059

namespace A134762

/-- `A171556(n)+A062561(n)` -/
def P12482439270807886059.Spec : Prop :=
  ∀ n, P12482439270807886059.a n = A134762 n

end A134762

/-! ## A134762.P9311976495872068011

`A000984(n)+A134760(n)-1`
-/

namespace A134762.P9311976495872068011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A134760 n - 1)

end

end A134762.P9311976495872068011

namespace A134762

/-- `A000984(n)+A134760(n)-1` -/
def P9311976495872068011.Spec : Prop :=
  ∀ n, P9311976495872068011.a n = A134762 n

theorem P9311976495872068011.correct : P9311976495872068011.Spec := by
  intro n
  simp only [A134762, Nat.add_sub_cancel, A134762.P9311976495872068011.a, A134762.P15216652540126543409.a, A000984, A000984.P7946844122574426130.a, A134760, A134760.P5337587419616991528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134762

/-! ## A134762.P17576361115406420594

`A115112(n+1)-A276666(n)`
-/

namespace A134762.P17576361115406420594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115112 (n + 1) - A276666 n

end

end A134762.P17576361115406420594

namespace A134762

/-- `A115112(n+1)-A276666(n)` -/
def P17576361115406420594.Spec : Prop :=
  ∀ n, P17576361115406420594.a n = A134762 n

theorem P17576361115406420594.correct : P17576361115406420594.Spec := by
  intro n
  simp only [A134762, Nat.add_sub_cancel, A134762.P17576361115406420594.a, A134762.P15216652540126543409.a, A000984, A000984.P7946844122574426130.a, A115112, A115112.P11405233874723568779.a, A276666, A276666.P223053164440974407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134762

/-! ## A134762.P10531215589659362906

`A000984(n)+A028329(n)-2`
-/

namespace A134762.P10531215589659362906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A028329 n - 2)

end

end A134762.P10531215589659362906

namespace A134762

/-- `A000984(n)+A028329(n)-2` -/
def P10531215589659362906.Spec : Prop :=
  ∀ n, P10531215589659362906.a n = A134762 n

theorem P10531215589659362906.correct : P10531215589659362906.Spec := by
  intro n
  simp only [A134762, Nat.add_sub_cancel, A134762.P10531215589659362906.a, A134762.P15216652540126543409.a, A000984, A000984.P7946844122574426130.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134762

/-!
# A134763: a(n) = (1/2)*( (1+(-1)^n)*A134762(n/2) + 2*(1-(-1)^n) ).

The programs for A134763, the canonical program `A134763.P864080189301353738` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134763 has offset 0).

The definition of A134763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134763.P864080189301353738

`3/2*(1+(-1)^n)*A001405(n)-2*(-1)^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134763

/-- `3/2*(1+(-1)^n)*A001405(n)-2*(-1)^n` -/
def P864080189301353738.Spec : Prop :=
  ∀ n, P864080189301353738.a n = (A134763 n : ℚ)

end A134763

/-! ## A134763.P10097350317527484633

`abs(2-3*A126869(n))`
-/

namespace A134763.P10097350317527484633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 3 * A126869 n|

end

end A134763.P10097350317527484633

namespace A134763

/-- `abs(2-3*A126869(n))` -/
def P10097350317527484633.Spec : Prop :=
  ∀ n, P10097350317527484633.a n = A134763 n

end A134763

/-! ## A134763.P2463826381776790458

`A063886(n+1)-Δ[A081668(n)]`
-/

namespace A134763.P2463826381776790458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 1) - (f1 (n + 1) - f1 n)

end

end A134763.P2463826381776790458

namespace A134763

/-- `A063886(n+1)-Δ[A081668(n)]` -/
def P2463826381776790458.Spec : Prop :=
  ∀ n, P2463826381776790458.a n = A134763 n

end A134763

/-! ## A134763.P12862853588879004344

`A020639(A020639(3*(n+2))+1)*A081668(n)-2`
-/

namespace A134763.P12862853588879004344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (3 * (n + 2)) + 1).toNat * A081668 n - 2

end

end A134763.P12862853588879004344

namespace A134763

/-- `A020639(A020639(3*(n+2))+1)*A081668(n)-2` -/
def P12862853588879004344.Spec : Prop :=
  ∀ n, P12862853588879004344.a n = A134763 n

end A134763

/-! ## A134763.P15202850210990936694

`abs(3*(C(n, gcd(2*n, (n+1)*∑[n]))-1)+1)`
-/

namespace A134763.P15202850210990936694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((Nat.choose n (Nat.gcd (2 * n) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))) : ℤ) - 1) + 1|

end

end A134763.P15202850210990936694

namespace A134763

/-- `abs(3*(C(n, gcd(2*n, (n+1)*∑[n]))-1)+1)` -/
def P15202850210990936694.Spec : Prop :=
  ∀ n, P15202850210990936694.a n = A134763 n

end A134763

/-! ## A134763.P14104881889272629233

`abs(2-3*C(n, A188134(2*n)))`
-/

namespace A134763.P14104881889272629233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (3 * Nat.choose n (A188134 (2 * n)).toNat : ℤ)|

end

end A134763.P14104881889272629233

namespace A134763

/-- `abs(2-3*C(n, A188134(2*n)))` -/
def P14104881889272629233.Spec : Prop :=
  ∀ n, P14104881889272629233.a n = A134763 n

end A134763

/-! ## A134763.P12885019105819028628

`A131325(A210981(n))`
-/

namespace A134763.P12885019105819028628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131325 (A210981 n).toNat

end

end A134763.P12885019105819028628

namespace A134763

/-- `A131325(A210981(n))` -/
def P12885019105819028628.Spec : Prop :=
  ∀ n, P12885019105819028628.a n = A134763 n

end A134763

/-!
# A134764: A054525 * A000984.

The programs for A134764, the canonical program `A134764.P7980750495168599662` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134764 has offset 1).

The definition of A134764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134764.P7980750495168599662

`∑{d}[n+1, A007427(#)*A066768((n+1)/#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134764

/-- `∑{d}[n+1, A007427(#)*A066768((n+1)/#)]` -/
def P7980750495168599662.Spec : Prop :=
  ∀ n, P7980750495168599662.a n = A134764 (n + 1)

theorem P7980750495168599662.correct : P7980750495168599662.Spec := by
  intro n
  simp only [A134764, Nat.add_sub_cancel]

end A134764

/-! ## A134764.P18257247474602569309

`∑{d}[n+1, A000984(#-1)*A008683((n+1)/#)]`
-/

namespace A134764.P18257247474602569309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000984 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A134764.P18257247474602569309

namespace A134764

/-- `∑{d}[n+1, A000984(#-1)*A008683((n+1)/#)]` -/
def P18257247474602569309.Spec : Prop :=
  ∀ n, P18257247474602569309.a n = A134764 (n + 1)

end A134764

/-! ## A134764.P2751188661367186366

`∑{d}[n+1, A087003(#)*A129369((n+1)/#-1)]`
-/

namespace A134764.P2751188661367186366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A129369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A134764.P2751188661367186366

namespace A134764

/-- `∑{d}[n+1, A087003(#)*A129369((n+1)/#-1)]` -/
def P2751188661367186366.Spec : Prop :=
  ∀ n, P2751188661367186366.a n = A134764 (n + 1)

end A134764

/-! ## A134764.P11795859975648077911

`A129369(n)-A134391(A153440(n+1))`
-/

namespace A134764.P11795859975648077911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129369 n - A134391 (A153440 (n + 1)).toNat

end

end A134764.P11795859975648077911

namespace A134764

/-- `A129369(n)-A134391(A153440(n+1))` -/
def P11795859975648077911.Spec : Prop :=
  ∀ n, P11795859975648077911.a n = A134764 (n + 1)

end A134764

/-!
# A134766: Primes among variant of permutational numbers A134750.

The programs for A134766, there is no canonical definition to state claims against.
-/

/-! ## A134766.P15286948529936428081

`p?[∑[A134768(n+1)]+1]`
-/

namespace A134766.P15286948529936428081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134768 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134766.P15286948529936428081

/-! ## A134766.P11249312527893942671

`p?[A134768(n)+a(n-1)]` with `a(0)=1`
-/

namespace A134766.P11249312527893942671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A134768 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134766.P11249312527893942671

/-! ## A134766.P13136215823028102120

`p?[∑[A134768(A000038(n)+n)]]`
-/

namespace A134766.P13136215823028102120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134768 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134766.P13136215823028102120

/-! ## A134766.P9808162164553606511

`p?[A134768(n+1)+A134750(n+1)]`
-/

namespace A134766.P9808162164553606511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134768 (n + 1) + A134750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134766.P9808162164553606511

/-! ## A134766.P4825315495863653901

`p?[A134750(n+2)+A134749(n+2)]`
-/

namespace A134766.P4825315495863653901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (n + 2) + A134749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134766.P4825315495863653901

/-!
# A134767: Indices where primes occur in variant of permutational numbers A134750.

The programs for A134767, there is no canonical definition to state claims against.
-/

/-! ## A134767.P9670706308173634929

`eq[1, A001222(A134750(n+1))]+1`
-/

namespace A134767.P9670706308173634929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134750 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134767.P9670706308173634929

/-! ## A134767.P5799696753959416435

`lt[A130982(n), A316524(A134750(n+1))]+1`
-/

namespace A134767.P5799696753959416435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A134750 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134767.P5799696753959416435

/-! ## A134767.P8274759565063011601

`lt[A323635(n+1), A316524(A134750(n+1))]+1`
-/

namespace A134767.P8274759565063011601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A134750 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134767.P8274759565063011601

/-!
# A134768: First differences of variant of permutational numbers A134750 .

The programs for A134768, there is no canonical definition to state claims against.
-/

/-! ## A134768.P9445188678536623668

`Δ[A134750(n+1)]`
-/

namespace A134768.P9445188678536623668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134768.P9445188678536623668

/-! ## A134768.P8334440256943265648

`abs(Δ[A134750(-xor(n, -1))])`
-/

namespace A134768.P8334440256943265648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A134768.P8334440256943265648

/-! ## A134768.P14715283840062295921

`abs(Δ[A134750(1-(n-2*n))])`
-/

namespace A134768.P14715283840062295921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A134768.P14715283840062295921

/-! ## A134768.P7019473262330130922

`Δ[record[A134750(A020986(n))]]`
-/

namespace A134768.P7019473262330130922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134768.P7019473262330130922

/-! ## A134768.P12791737101628897439

`Δ[record[A134750(A133310(n))]]`
-/

namespace A134768.P12791737101628897439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134768.P12791737101628897439

/-! ## A134768.P8093569865601032544

`A134750(n+2)-A134750(n+1)`
-/

namespace A134768.P8093569865601032544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (n + 2) - A134750 (n + 1)

end

end A134768.P8093569865601032544

/-! ## A134768.P2350453161485863094

`Δ[A134750(-xor(n, -1))]-A000035(2*n)`
-/

namespace A134768.P2350453161485863094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134750 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000035 (2 * n)

end

end A134768.P2350453161485863094

/-!
# A134769: Koechel numbers of Mozart's string quartets.

The programs for A134769, there is no canonical definition to state claims against.
-/

/-! ## A134769.P3098739738996932341

`A335373(eq[1, dr(A137688(n))]+10)+2`
-/

namespace A134769.P3098739738996932341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A137688 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 10) + 2

end

end A134769.P3098739738996932341

/-!
# A134770: a(n) = 4*A000984(n) - 3.

The programs for A134770, the canonical program `A134770.P14019126110980162082` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134770 has offset 0).

The definition of A134770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A000984(n)-3` (program `A134770.P14019126110980162082`, by `A134770.P14019126110980162082.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134770.P14019126110980162082

`4*A000984(n)-3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134770

/-- `4*A000984(n)-3` -/
def P14019126110980162082.Spec : Prop :=
  ∀ n, P14019126110980162082.a n = A134770 n

theorem P14019126110980162082.correct : P14019126110980162082.Spec := by
  intro n
  simp only [A134770]

end A134770

/-! ## A134770.P7842401977136175109

`4*(n+1)*A000108(n)-3`
-/

namespace A134770.P7842401977136175109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A000108 n - 3

end

end A134770.P7842401977136175109

namespace A134770

/-- `4*(n+1)*A000108(n)-3` -/
def P7842401977136175109.Spec : Prop :=
  ∀ n, P7842401977136175109.a n = A134770 n

end A134770

/-! ## A134770.P3124508033259391497

`4*C(2*n, n)-3`
-/

namespace A134770.P3124508033259391497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (2 * n) n : ℤ) - 3

end

end A134770.P3124508033259391497

namespace A134770

/-- `4*C(2*n, n)-3` -/
def P3124508033259391497.Spec : Prop :=
  ∀ n, P3124508033259391497.a n = A134770 n

end A134770

/-! ## A134770.P7008755521154089672

`record[a(n-1)/(floor(n/2)/n-1)]-3` with `a(0)=4`
-/

namespace A134770.P7008755521154089672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 3

end

end A134770.P7008755521154089672

namespace A134770

/-- `record[a(n-1)/(floor(n/2)/n-1)]-3` -/
def P7008755521154089672.Spec : Prop :=
  ∀ n, P7008755521154089672.a n = (A134770 n : ℚ)

end A134770

/-! ## A134770.P16122726055033865112

`A134771(2*n)`
-/

namespace A134770.P16122726055033865112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134771 (2 * n)

end

end A134770.P16122726055033865112

namespace A134770

/-- `A134771(2*n)` -/
def P16122726055033865112.Spec : Prop :=
  ∀ n, P16122726055033865112.a n = A134770 n

end A134770

/-! ## A134770.P8269254870140464598

`A240530(n)-3`
-/

namespace A134770.P8269254870140464598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240530 n - 3

end

end A134770.P8269254870140464598

namespace A134770

/-- `A240530(n)-3` -/
def P8269254870140464598.Spec : Prop :=
  ∀ n, P8269254870140464598.a n = A134770 n

theorem P8269254870140464598.correct : P8269254870140464598.Spec := by
  intro n
  simp only [A134770, Nat.add_sub_cancel, A134770.P8269254870140464598.a, A134770.P14019126110980162082.a, A000984, A000984.P7946844122574426130.a, A240530, A240530.P76168564774585467.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134770

/-! ## A134770.P2635650149283769427

`2*A134760(n)-1`
-/

namespace A134770.P2635650149283769427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134760 n - 1

end

end A134770.P2635650149283769427

namespace A134770

/-- `2*A134760(n)-1` -/
def P2635650149283769427.Spec : Prop :=
  ∀ n, P2635650149283769427.a n = A134770 n

theorem P2635650149283769427.correct : P2635650149283769427.Spec := by
  intro n
  simp only [A134770, Nat.add_sub_cancel, A134770.P2635650149283769427.a, A134770.P14019126110980162082.a, A000984, A000984.P7946844122574426130.a, A134760, A134760.P5337587419616991528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134770

/-! ## A134770.P14120271880342825844

`2*A028329(n)-3`
-/

namespace A134770.P14120271880342825844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028329 n - 3

end

end A134770.P14120271880342825844

namespace A134770

/-- `2*A028329(n)-3` -/
def P14120271880342825844.Spec : Prop :=
  ∀ n, P14120271880342825844.a n = A134770 n

theorem P14120271880342825844.correct : P14120271880342825844.Spec := by
  intro n
  simp only [A134770, Nat.add_sub_cancel, A134770.P14120271880342825844.a, A134770.P14019126110980162082.a, A000984, A000984.P7946844122574426130.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134770

/-! ## A134770.P9158848715702940290

`A047073(2*(n+1))-3`
-/

namespace A134770.P9158848715702940290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 (2 * (n + 1)) - 3

end

end A134770.P9158848715702940290

namespace A134770

/-- `A047073(2*(n+1))-3` -/
def P9158848715702940290.Spec : Prop :=
  ∀ n, P9158848715702940290.a n = A134770 n

end A134770

/-! ## A134770.P9500605939656877416

`a(n-1)+4*A051924(n)` with `a(0)=1`
-/

namespace A134770.P9500605939656877416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * A051924 n

end

end A134770.P9500605939656877416

namespace A134770

/-- `a(n-1)+4*A051924(n)` -/
def P9500605939656877416.Spec : Prop :=
  ∀ n, P9500605939656877416.a n = A134770 n

end A134770

/-! ## A134770.P2659601271278978507

`A131428(n)+A115112(n+1)`
-/

namespace A134770.P2659601271278978507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + A115112 (n + 1)

end

end A134770.P2659601271278978507

namespace A134770

/-- `A131428(n)+A115112(n+1)` -/
def P2659601271278978507.Spec : Prop :=
  ∀ n, P2659601271278978507.a n = A134770 n

end A134770

/-! ## A134770.P18025021419652919718

`A000984(n)+A134762(n)-1`
-/

namespace A134770.P18025021419652919718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A134762 n - 1)

end

end A134770.P18025021419652919718

namespace A134770

/-- `A000984(n)+A134762(n)-1` -/
def P18025021419652919718.Spec : Prop :=
  ∀ n, P18025021419652919718.a n = A134770 n

theorem P18025021419652919718.correct : P18025021419652919718.Spec := by
  intro n
  simp only [A134770, Nat.add_sub_cancel, A134770.P18025021419652919718.a, A134770.P14019126110980162082.a, A000984, A000984.P7946844122574426130.a, A134762, A134762.P15216652540126543409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134770

/-! ## A134770.P9163041627530748920

`A030662(n+1)+A131428(n)-1`
-/

namespace A134770.P9163041627530748920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030662 (n + 1) + (A131428 n - 1)

end

end A134770.P9163041627530748920

namespace A134770

/-- `A030662(n+1)+A131428(n)-1` -/
def P9163041627530748920.Spec : Prop :=
  ∀ n, P9163041627530748920.a n = A134770 n

end A134770

/-! ## A134770.P977136928673455652

`A134763(2*n)+A014495(2*n)`
-/

namespace A134770.P977136928673455652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134763 (2 * n) + A014495 (2 * n)

end

end A134770.P977136928673455652

namespace A134770

/-- `A134763(2*n)+A014495(2*n)` -/
def P977136928673455652.Spec : Prop :=
  ∀ n, P977136928673455652.a n = A134770 n

end A134770

/-! ## A134770.P7769923211544624202

`A134760(n)-(A000984(n)-A134762(n))`
-/

namespace A134770.P7769923211544624202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n - (A000984 n - A134762 n)

end

end A134770.P7769923211544624202

namespace A134770

/-- `A134760(n)-(A000984(n)-A134762(n))` -/
def P7769923211544624202.Spec : Prop :=
  ∀ n, P7769923211544624202.a n = A134770 n

theorem P7769923211544624202.correct : P7769923211544624202.Spec := by
  intro n
  simp only [A134770, Nat.add_sub_cancel, A134770.P7769923211544624202.a, A134770.P14019126110980162082.a, A000984, A000984.P7946844122574426130.a, A134760, A134760.P5337587419616991528.a, A134762, A134762.P15216652540126543409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134770

/-!
# A134771: A134770 interleaved with threes.

The programs for A134771, the canonical program `A134771.P17660794014841576438` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134771 has offset 0).

The definition of A134771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134771.P17660794014841576438

`abs(3-4*A126869(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134771

/-- `abs(3-4*A126869(n))` -/
def P17660794014841576438.Spec : Prop :=
  ∀ n, P17660794014841576438.a n = A134771 n

theorem P17660794014841576438.correct : P17660794014841576438.Spec := by
  intro n
  simp only [A134771]

end A134771

/-! ## A134771.P6347848542837886232

`2*A134763(n)-A134761(n)`
-/

namespace A134771.P6347848542837886232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134763 n - A134761 n

end

end A134771.P6347848542837886232

namespace A134771

/-- `2*A134763(n)-A134761(n)` -/
def P6347848542837886232.Spec : Prop :=
  ∀ n, P6347848542837886232.a n = A134771 n

end A134771

/-! ## A134771.P7610077587463729229

`gcd(3-4*A126869(n), A000038(n))`
-/

namespace A134771.P7610077587463729229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - 4 * A126869 n) (A000038 n)

end

end A134771.P7610077587463729229

namespace A134771

/-- `gcd(3-4*A126869(n), A000038(n))` -/
def P7610077587463729229.Spec : Prop :=
  ∀ n, (P7610077587463729229.a n : ℤ) = A134771 n

end A134771

/-! ## A134771.P7334135399388792902

`lcm(3-4*A126869(n), A033999(n))`
-/

namespace A134771.P7334135399388792902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 - 4 * A126869 n) (A033999 n)

end

end A134771.P7334135399388792902

namespace A134771

/-- `lcm(3-4*A126869(n), A033999(n))` -/
def P7334135399388792902.Spec : Prop :=
  ∀ n, (P7334135399388792902.a n : ℤ) = A134771 n

end A134771

/-! ## A134771.P2801271416485173661

`Δ[A168326(n+1)]-(3-4*A126869(n))`
-/

namespace A134771.P2801271416485173661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (3 - 4 * A126869 n)

end

end A134771.P2801271416485173661

namespace A134771

/-- `Δ[A168326(n+1)]-(3-4*A126869(n))` -/
def P2801271416485173661.Spec : Prop :=
  ∀ n, P2801271416485173661.a n = A134771 n

end A134771

/-! ## A134771.P6028551688074159024

`A131327(A210981(n))`
-/

namespace A134771.P6028551688074159024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131327 (A210981 n).toNat

end

end A134771.P6028551688074159024

namespace A134771

/-- `A131327(A210981(n))` -/
def P6028551688074159024.Spec : Prop :=
  ∀ n, P6028551688074159024.a n = A134771 n

end A134771

/-!
# A134773: Primitive elements of A180054.

The programs for A134773, there is no canonical definition to state claims against.
-/

/-! ## A134773.P8215644811588458370

`record[lcm(2, A180054(n+1))/2]`
-/

namespace A134773.P8215644811588458370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A180054 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134773.P8215644811588458370

/-! ## A134773.P18311116212263880084

`record[A000265(A180054(n+1))]`
-/

namespace A134773.P18311116212263880084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A180054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134773.P18311116212263880084

/-! ## A134773.P16254993394099714491

`record[A026741(A180054(n+2))]`
-/

namespace A134773.P16254993394099714491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A180054 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134773.P16254993394099714491

/-! ## A134773.P14841738830993275952

`filter[A180054(n+1), A000035(#)]`
-/

namespace A134773.P14841738830993275952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A134773.P14841738830993275952

/-! ## A134773.P13356932251725935309

`filter[A180054(n+1), A053867(#)]`
-/

namespace A134773.P13356932251725935309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A134773.P13356932251725935309

/-! ## A134773.P15258998798573025708

`filter[A180054(n+1), A118102(#)]`
-/

namespace A134773.P15258998798573025708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A134773.P15258998798573025708

/-! ## A134773.P16806617832870428160

`filter[A180054(n+1), A266070(#)]`
-/

namespace A134773.P16806617832870428160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A134773.P16806617832870428160

/-! ## A134773.P11706615212395810016

`filter[A180054(n+1), A266246(#)]`
-/

namespace A134773.P11706615212395810016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A134773.P11706615212395810016

/-! ## A134773.P565660435130755619

`filter[A180054(n+1), A266611(#)]`
-/

namespace A134773.P565660435130755619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A134773.P565660435130755619

/-! ## A134773.P13936023932503338485

`filter[A180054(n+1), A266719(#)]`
-/

namespace A134773.P13936023932503338485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A134773.P13936023932503338485

/-!
# A134774: G.f.: A(x) = Product_{n>=1} G(x^n,n)^n where G(x,n) = 1 + x*G(x,n)^n.

The programs for A134774, there is no canonical definition to state claims against.
-/

/-! ## A134774.P7846389051014132192

`A392462(A293607(n))+A006906(n)`
-/

namespace A134774.P7846389051014132192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392462 (A293607 n).toNat + A006906 n

end

end A134774.P7846389051014132192

/-! ## A134774.P12650107217631391619

`A063834(n)-A318366(A026671(n))`
-/

namespace A134774.P12650107217631391619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n - A318366 (A026671 n).toNat

end

end A134774.P12650107217631391619

/-! ## A134774.P16353003509059345842

`A063834(n)-A066087(A007317(n+1))`
-/

namespace A134774.P16353003509059345842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n - A066087 (A007317 (n + 1)).toNat

end

end A134774.P16353003509059345842

/-! ## A134774.P11792198126794566544

`A241952(A187490(n+7))+A024816(A081123(n))`
-/

namespace A134774.P11792198126794566544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241952 (A187490 (n + 7)).toNat + A024816 (A081123 n).toNat

end

end A134774.P11792198126794566544

/-!
# A134775: Numbers k such that the sum of first k Catalan numbers is a prime.

The programs for A134775, there is no canonical definition to state claims against.
-/

/-! ## A134775.P2416466140359253903

`A126807(n+1)+1`
-/

namespace A134775.P2416466140359253903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126807 (n + 1) + 1

end

end A134775.P2416466140359253903

/-! ## A134775.P11575510345647371530

`record[A126807(A020986(n))-log2(1/2)]`
-/

namespace A134775.P11575510345647371530
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A126807 (A020986 n).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134775.P11575510345647371530

/-! ## A134775.P10113385783532029382

`A020725(A126807(n+1))`
-/

namespace A134775.P10113385783532029382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A126807 (n + 1)).toNat

end

end A134775.P10113385783532029382

/-!
# A134776: 

The programs for A134776, there is no canonical definition to state claims against.
-/

/-! ## A134776.P14413353072892852415

`A014138(A126807(n+1)+1)`
-/

namespace A134776.P14413353072892852415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (A126807 (n + 1) + 1).toNat

end

end A134776.P14413353072892852415

/-!
# A134777: First digit of n alphabetically.

The programs for A134777, there is no canonical definition to state claims against.
-/

/-! ## A134777.P4062531433159945180

`A000030(A057846(n))`
-/

namespace A134777.P4062531433159945180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A057846 n).toNat

end

end A134777.P4062531433159945180

/-!
# A134778: Last digit of n alphabetically.

The programs for A134778, there is no canonical definition to state claims against.
-/

/-! ## A134778.P8910765953359532285

`A057846(n)%10`
-/

namespace A134778.P8910765953359532285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057846 n) 10

end

end A134778.P8910765953359532285

/-! ## A134778.P8368647552126305027

`A010879(A057846(n))`
-/

namespace A134778.P8368647552126305027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A057846 n).toNat

end

end A134778.P8368647552126305027

/-!
# A134779: Integer coefficients of A(x), where a(n) is the least integer greater than a(n-1)+2 such that A(x)^(1/2) has integer coefficients.

The programs for A134779, there is no canonical definition to state claims against.
-/

/-! ## A134779.P2256089285232549411

`A103517(n)+∑[A284203(A000463(n+1))]`
-/

namespace A134779.P2256089285232549411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134779.P2256089285232549411

/-! ## A134779.P11425437313911673593

`2*n+A040001(2*n)+∑[A284203(A000463(n+1))]`
-/

namespace A134779.P11425437313911673593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A040001 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134779.P11425437313911673593

/-! ## A134779.P8458074799679119267

`∑[A000002(A110199(n+2))]+n-1`
-/

namespace A134779.P8458074799679119267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A110199 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A134779.P8458074799679119267

/-! ## A134779.P1137845161840209784

`∑[A358379(∑[A014963(n+2)])]`
-/

namespace A134779.P1137845161840209784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134779.P1137845161840209784

/-! ## A134779.P10254006854053624617

`∑[A358379(∑[A178380(n+2)])]`
-/

namespace A134779.P10254006854053624617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178380 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134779.P10254006854053624617

/-!
# A134787: Numbers k such that Fibonacci(prime(k)) is not prime.

The programs for A134787, there is no canonical definition to state claims against.
-/

/-! ## A134787.P10946288229838187846

`comp[A339082(n+1)]`
-/

namespace A134787.P10946288229838187846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A134787.P10946288229838187846

/-! ## A134787.P16432547425666440068

`comp[A119984(n+1)-1]+1`
-/

namespace A134787.P16432547425666440068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A134787.P16432547425666440068

/-! ## A134787.P8370402267823599976

`A000720(p?[A261312(n+1)])`
-/

namespace A134787.P8370402267823599976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134787.P8370402267823599976

/-! ## A134787.P9204733517320459485

`A003963(p?[A261312(n+1)])`
-/

namespace A134787.P9204733517320459485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134787.P9204733517320459485

/-! ## A134787.P18434848134690384462

`A049084(p?[A261312(n+1)])`
-/

namespace A134787.P18434848134690384462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134787.P18434848134690384462

/-! ## A134787.P14019518631541167110

`A061395(p?[A261312(n+1)])`
-/

namespace A134787.P14019518631541167110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134787.P14019518631541167110

/-! ## A134787.P7421144158430688316

`A230980(p?[A261312(n+1)])`
-/

namespace A134787.P7421144158430688316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134787.P7421144158430688316

/-! ## A134787.P14167141484024501667

`A000720(A090819(n+1))`
-/

namespace A134787.P14167141484024501667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090819 (n + 1)).toNat

end

end A134787.P14167141484024501667

/-! ## A134787.P13901426861417700560

`lt[tan(A080345(n+1)), tan(1)]+1`
-/

namespace A134787.P13901426861417700560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A080345 (n + 1) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A134787.P13901426861417700560

/-!
# A134788: If Fibonacci(prime(k)) is prime, append Fibonacci(prime(k)) - prime(k) to the sequence.

The programs for A134788, there is no canonical definition to state claims against.
-/

/-! ## A134788.P13549771863622064502

`A065220(A083668(n+1))`
-/

namespace A134788.P13549771863622064502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (A083668 (n + 1)).toNat

end

end A134788.P13549771863622064502

/-! ## A134788.P9134417219073641031

`A065220(A001605(n+2))`
-/

namespace A134788.P9134417219073641031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (A001605 (n + 2)).toNat

end

end A134788.P9134417219073641031

/-! ## A134788.P14115956471125933418

`A075737(n+1)-A083668(n+1)`
-/

namespace A134788.P14115956471125933418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075737 (n + 1) - A083668 (n + 1)

end

end A134788.P14115956471125933418

/-! ## A134788.P4290851533851873957

`A005478(n+2)-A001605(n+2)`
-/

namespace A134788.P4290851533851873957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005478 (n + 2) - A001605 (n + 2)

end

end A134788.P4290851533851873957

/-! ## A134788.P9760526150342806852

`A075737(n+1)-p?[A001605(n+1)]`
-/

namespace A134788.P9760526150342806852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075737 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134788.P9760526150342806852

/-!
# A134789: a(n) = round(Fibonacci(prime(k))/prime(k)), where k = A119984(n).

The programs for A134789, there is no canonical definition to state claims against.
-/

/-! ## A134789.P7530366410657228565

`round(A075737(n+1)/A083668(n+1))`
-/

namespace A134789.P7530366410657228565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075737 (n + 1) : ℚ) / (A083668 (n + 1) : ℚ))

end

end A134789.P7530366410657228565

/-! ## A134789.P18012945109805376510

`round(A075737(n+1)/p?[A001605(n+1)])`
-/

namespace A134789.P18012945109805376510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075737 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A134789.P18012945109805376510

/-! ## A134789.P1344554314694126822

`round(record[A325626(n+2)]/A083668(n+1))`
-/

namespace A134789.P1344554314694126822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325626 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A083668 (n + 1) : ℚ))

end

end A134789.P1344554314694126822

/-! ## A134789.P978925717451778630

`round(A075737(n+1)/A000040(A119984(n+1)))`
-/

namespace A134789.P978925717451778630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075737 (n + 1) : ℚ) / (A000040 (A119984 (n + 1)).toNat : ℚ))

end

end A134789.P978925717451778630

/-! ## A134789.P16464431633681925810

`round(A030426(A119984(n+1))/A083668(n+1))`
-/

namespace A134789.P16464431633681925810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030426 (A119984 (n + 1)).toNat : ℚ) / (A083668 (n + 1) : ℚ))

end

end A134789.P16464431633681925810

/-!
# A134790: Floor(prime Fibonacci(Prime(k))/Prime(k)).

The programs for A134790, there is no canonical definition to state claims against.
-/

/-! ## A134790.P8075234107278827873

`A127884(A083668(n+1))`
-/

namespace A134790.P8075234107278827873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127884 (A083668 (n + 1)).toNat

end

end A134790.P8075234107278827873

/-! ## A134790.P4408614136448740078

`A127884(A001605(n+2))`
-/

namespace A134790.P4408614136448740078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127884 (A001605 (n + 2)).toNat

end

end A134790.P4408614136448740078

/-! ## A134790.P4302364513478058754

`A127884(A069744(n+2)+1)`
-/

namespace A134790.P4302364513478058754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127884 (A069744 (n + 2) + 1).toNat

end

end A134790.P4302364513478058754

/-! ## A134790.P7153743587707215933

`floor(A075737(n+1)/A083668(n+1))`
-/

namespace A134790.P7153743587707215933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075737 (n + 1) : ℚ) / (A083668 (n + 1) : ℚ)⌋

end

end A134790.P7153743587707215933

/-! ## A134790.P8231950647253008621

`floor(A075737(n+1)/A000040(A119984(n+1)))`
-/

namespace A134790.P8231950647253008621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075737 (n + 1) : ℚ) / (A000040 (A119984 (n + 1)).toNat : ℚ)⌋

end

end A134790.P8231950647253008621

/-!
# A134791: a(n) = floor(log(Fibonacci(prime(k))/prime(k))), where k = A119984(n).

The programs for A134791, there is no canonical definition to state claims against.
-/

/-! ## A134791.P2106601489517413315

`floor(log(A134789(n+1))-A151933(n))`
-/

namespace A134791.P2106601489517413315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A134789 (n + 1) : ℝ) - (A151933 n : ℝ)⌋

end

end A134791.P2106601489517413315

/-!
# A134792: a(n) = round(log(Fibonacci(prime(k))/prime(k))), where k = A119984(n).

The programs for A134792, there is no canonical definition to state claims against.
-/

/-! ## A134792.P5864182206614102046

`round(log(A134789(n+1)))`
-/

namespace A134792.P5864182206614102046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A134789 (n + 1) : ℝ))

end

end A134792.P5864182206614102046

/-! ## A134792.P12765746873596235206

`floor(log(Δ[A099000(n+1)]))`
-/

namespace A134792.P12765746873596235206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ)⌋

end

end A134792.P12765746873596235206

/-!
# A134797: Odd isolated primes.

The programs for A134797, the canonical program `A134797.P10926386183801791278` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134797 has offset 1).

The definition of A134797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134797.P10926386183801791278

`A007510(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A134797

/-- `A007510(n+2)` -/
def P10926386183801791278.Spec : Prop :=
  ∀ n, P10926386183801791278.a n = A134797 (n + 1)

theorem P10926386183801791278.correct : P10926386183801791278.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel]

end A134797

/-! ## A134797.P2745703709191621203

`A085434(n+1)/2`
-/

namespace A134797.P2745703709191621203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085434 (n + 1) : ℚ) / 2

end

end A134797.P2745703709191621203

namespace A134797

/-- `A085434(n+1)/2` -/
def P2745703709191621203.Spec : Prop :=
  ∀ n, P2745703709191621203.a n = (A134797 (n + 1) : ℚ)

theorem P2745703709191621203.correct : P2745703709191621203.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel, A134797.P2745703709191621203.a, A134797.P10926386183801791278.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A085434, A085434.P6643677055624857651.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134797

/-! ## A134797.P11554996923851726632

`∑[A068015(n+1)]+2`
-/

namespace A134797.P11554996923851726632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A134797.P11554996923851726632

namespace A134797

/-- `∑[A068015(n+1)]+2` -/
def P11554996923851726632.Spec : Prop :=
  ∀ n, P11554996923851726632.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P6766198189474564762

`A163654(n+1)-(A164274(n+1)-(A176915(n+1)+A078571(n+1)))`
-/

namespace A134797.P6766198189474564762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163654 (n + 1) - (A164274 (n + 1) - (A176915 (n + 1) + A078571 (n + 1)))

end

end A134797.P6766198189474564762

namespace A134797

/-- `A163654(n+1)-(A164274(n+1)-(A176915(n+1)+A078571(n+1)))` -/
def P6766198189474564762.Spec : Prop :=
  ∀ n, P6766198189474564762.a n = A134797 (n + 1)

theorem P6766198189474564762.correct : P6766198189474564762.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel, A134797.P6766198189474564762.a, A134797.P10926386183801791278.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A078571, A078571.P1736636003966483613.a, A163654, A163654.P17404434252909917711.a, A164274, A164274.P11426709217476400918.a, A176915, A176915.P10687562346099040879.a, A001222, A001222.P11318177267732088261.a, A014574, A014574.P4587706211531852143.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A029837, A029837.P1050578713049589.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A063919, A063919.P11181265949704613022.a, A064989, A064989.P13349672914146769936.a, A065164, A065164.P11898003082546795665.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A151800, A151800.P4570031678714564115.a, A166597, A166597.P14552351031517696526.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134797

/-! ## A134797.P1858951794756912101

`Δ[A153478(n+1)]`
-/

namespace A134797.P1858951794756912101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134797.P1858951794756912101

namespace A134797

/-- `Δ[A153478(n+1)]` -/
def P1858951794756912101.Spec : Prop :=
  ∀ n, P1858951794756912101.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P17291012135554332630

`A167277(n+2)+1`
-/

namespace A134797.P17291012135554332630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 2) + 1

end

end A134797.P17291012135554332630

namespace A134797

/-- `A167277(n+2)+1` -/
def P17291012135554332630.Spec : Prop :=
  ∀ n, P17291012135554332630.a n = A134797 (n + 1)

theorem P17291012135554332630.correct : P17291012135554332630.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel, A134797.P17291012135554332630.a, A134797.P10926386183801791278.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A167277, A167277.P12308341413257393222.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134797

/-! ## A134797.P16333333748630503933

`A164534(n+2)-1`
-/

namespace A134797.P16333333748630503933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164534 (n + 2) - 1

end

end A134797.P16333333748630503933

namespace A134797

/-- `A164534(n+2)-1` -/
def P16333333748630503933.Spec : Prop :=
  ∀ n, P16333333748630503933.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P4810144193337769510

`A167397(n+2)+2+n`
-/

namespace A134797.P4810144193337769510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167397 (n + 2) + 2 + (n : ℤ)

end

end A134797.P4810144193337769510

namespace A134797

/-- `A167397(n+2)+2+n` -/
def P4810144193337769510.Spec : Prop :=
  ∀ n, P4810144193337769510.a n = A134797 (n + 1)

theorem P4810144193337769510.correct : P4810144193337769510.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel, A134797.P4810144193337769510.a, A134797.P10926386183801791278.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A167397, A167397.P6695962093421447498.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134797

/-! ## A134797.P1960052184221030507

`or(1, A007510(2-(n-2*n)))`
-/

namespace A134797.P1960052184221030507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007510 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A134797.P1960052184221030507

namespace A134797

/-- `or(1, A007510(2-(n-2*n)))` -/
def P1960052184221030507.Spec : Prop :=
  ∀ n, P1960052184221030507.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P6500814804723408171

`A153478(n+2)-A153478(n+1)`
-/

namespace A134797.P6500814804723408171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153478 (n + 2) - A153478 (n + 1)

end

end A134797.P6500814804723408171

namespace A134797

/-- `A153478(n+2)-A153478(n+1)` -/
def P6500814804723408171.Spec : Prop :=
  ∀ n, P6500814804723408171.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P9056890207328337763

`A161165(n+2)-A171688(n+1)`
-/

namespace A134797.P9056890207328337763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161165 (n + 2) - A171688 (n + 1)

end

end A134797.P9056890207328337763

namespace A134797

/-- `A161165(n+2)-A171688(n+1)` -/
def P9056890207328337763.Spec : Prop :=
  ∀ n, P9056890207328337763.a n = A134797 (n + 1)

theorem P9056890207328337763.correct : P9056890207328337763.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel, A134797.P9056890207328337763.a, A134797.P10926386183801791278.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A161165, A161165.P7740314374936360020.a, A171688, A171688.P7072917769576396976.a, A001097, A001097.P321733695451409135.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A280968, A280968.P4817024604496871762.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A163656, A163656.P15274253072224242917.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134797

/-! ## A134797.P11486104397121485201

`A161165(n+2)-A001097(n+2)`
-/

namespace A134797.P11486104397121485201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161165 (n + 2) - A001097 (n + 2)

end

end A134797.P11486104397121485201

namespace A134797

/-- `A161165(n+2)-A001097(n+2)` -/
def P11486104397121485201.Spec : Prop :=
  ∀ n, P11486104397121485201.a n = A134797 (n + 1)

theorem P11486104397121485201.correct : P11486104397121485201.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel, A134797.P11486104397121485201.a, A134797.P10926386183801791278.a, A001097, A001097.P321733695451409135.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A161165, A161165.P7740314374936360020.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A280968, A280968.P4817024604496871762.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A163656, A163656.P15274253072224242917.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A096281, A096281.P9870488552655544131.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134797

/-! ## A134797.P8583804741227821811

`A164274(n+2)-A014574(n+2)`
-/

namespace A134797.P8583804741227821811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 2) - A014574 (n + 2)

end

end A134797.P8583804741227821811

namespace A134797

/-- `A164274(n+2)-A014574(n+2)` -/
def P8583804741227821811.Spec : Prop :=
  ∀ n, P8583804741227821811.a n = A134797 (n + 1)

theorem P8583804741227821811.correct : P8583804741227821811.Spec := by
  intro n
  simp only [A134797, Nat.add_sub_cancel, A134797.P8583804741227821811.a, A134797.P10926386183801791278.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A014574, A014574.P4587706211531852143.a, A164274, A164274.P11426709217476400918.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A063919, A063919.P11181265949704613022.a, A156828, A156828.P15006888903266838988.a, A166597, A166597.P14552351031517696526.a, A353464, A353464.P7528674575556997429.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A054541, A054541.P347795157194570387.a, A065164, A065164.P11898003082546795665.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A151800, A151800.P4570031678714564115.a, A173557, A173557.P15666735857375843373.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134797

/-! ## A134797.P1721081052017608172

`A164274(n+2)+1-A006512(n+2)`
-/

namespace A134797.P1721081052017608172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 2) + (1 - A006512 (n + 2))

end

end A134797.P1721081052017608172

namespace A134797

/-- `A164274(n+2)+1-A006512(n+2)` -/
def P1721081052017608172.Spec : Prop :=
  ∀ n, P1721081052017608172.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P12655580926905864522

`p?[A167706(n+2)]`
-/

namespace A134797.P12655580926905864522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134797.P12655580926905864522

namespace A134797

/-- `p?[A167706(n+2)]` -/
def P12655580926905864522.Spec : Prop :=
  ∀ n, P12655580926905864522.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P14746021674036514941

`∩[A167706(n+1), A004139(n+1)]`
-/

namespace A134797.P14746021674036514941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134797.P14746021674036514941

namespace A134797

/-- `∩[A167706(n+1), A004139(n+1)]` -/
def P14746021674036514941.Spec : Prop :=
  ∀ n, (P14746021674036514941.a n : ℤ) = A134797 (n + 1)

end A134797

/-! ## A134797.P4857791042504709190

`A000040(A176656(n+2))`
-/

namespace A134797.P4857791042504709190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176656 (n + 2)).toNat

end

end A134797.P4857791042504709190

namespace A134797

/-- `A000040(A176656(n+2))` -/
def P4857791042504709190.Spec : Prop :=
  ∀ n, P4857791042504709190.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P17779534685136912672

`A000040(lt[1, A046929(n+1)]+1)`
-/

namespace A134797.P17779534685136912672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A134797.P17779534685136912672

namespace A134797

/-- `A000040(lt[1, A046929(n+1)]+1)` -/
def P17779534685136912672.Spec : Prop :=
  ∀ n, P17779534685136912672.a n = A134797 (n + 1)

end A134797

/-! ## A134797.P4217149568236580997

`∩[A061345(n), A167706(n+1)]`
-/

namespace A134797.P4217149568236580997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134797.P4217149568236580997

namespace A134797

/-- `∩[A061345(n), A167706(n+1)]` -/
def P4217149568236580997.Spec : Prop :=
  ∀ n, (P4217149568236580997.a n : ℤ) = A134797 (n + 1)

end A134797

/-! ## A134797.P15282335771144019805

`filter[A167706(n+1), A353638(#)]`
-/

namespace A134797.P15282335771144019805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A134797.P15282335771144019805

namespace A134797

/-- `filter[A167706(n+1), A353638(#)]` -/
def P15282335771144019805.Spec : Prop :=
  ∀ n, P15282335771144019805.a n = A134797 (n + 1)

end A134797

/-!
# A134799: 

The programs for A134799, there is no canonical definition to state claims against.
-/

/-! ## A134799.P17081766308587116830

`A060828(3^n)`
-/

namespace A134799.P17081766308587116830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060828 (3 ^ n)

end

end A134799.P17081766308587116830

