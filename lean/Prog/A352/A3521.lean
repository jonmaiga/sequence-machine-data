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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A352100: Number of partitions of 2n into two odd parts that are not both prime.

The programs for A352100, there is no canonical definition to state claims against.
-/

/-! ## A352100.P9789490690722656551

`A234537(n+1)+1`
-/

namespace A352100.P9789490690722656551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234537 (n + 1) + 1

end

end A352100.P9789490690722656551

/-! ## A352100.P12657784586706085233

`∑[log2(gcd(2, n))]-A002375(n+1)`
-/

namespace A352100.P12657784586706085233
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002375 (n + 1) : ℝ)

end

end A352100.P12657784586706085233

/-! ## A352100.P6613263050643221790

`∑[char[2*n]]-A240708(n+1)`
-/

namespace A352100.P6613263050643221790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A240708 (n + 1)

end

end A352100.P6613263050643221790

/-! ## A352100.P15986972277069125620

`floor((n-A002372(n+1))/2)+1`
-/

namespace A352100.P15986972277069125620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A002372 (n + 1) : ℚ) / 2⌋ + 1

end

end A352100.P15986972277069125620

/-! ## A352100.P14871501364876242876

`floor((n-A035026(n+1))/2)+1`
-/

namespace A352100.P14871501364876242876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A035026 (n + 1) : ℚ) / 2⌋ + 1

end

end A352100.P14871501364876242876

/-! ## A352100.P3702574001053820919

`floor(n/2)+1-A190353(2*(n+1))`
-/

namespace A352100.P3702574001053820919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (1 - A190353 (2 * (n + 1)))

end

end A352100.P3702574001053820919

/-! ## A352100.P640415850268577979

`A008619(n-A002372(n+1))`
-/

namespace A352100.P640415850268577979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A002372 (n + 1)).toNat

end

end A352100.P640415850268577979

/-! ## A352100.P12737400629275931847

`A008619(n)-A002375(n+1)`
-/

namespace A352100.P12737400629275931847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A002375 (n + 1)

end

end A352100.P12737400629275931847

/-! ## A352100.P12213004169251033153

`A008619(n-A035026(n+1))`
-/

namespace A352100.P12213004169251033153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A035026 (n + 1)).toNat

end

end A352100.P12213004169251033153

/-! ## A352100.P4372294261692557500

`A004526(n-A002372(n+1))+1`
-/

namespace A352100.P4372294261692557500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A002372 (n + 1)).toNat + 1

end

end A352100.P4372294261692557500

/-!
# A352101: The numbers formed by removing the required prime factors to form the number from a set which is initially empty and that has primes added via the addition of the missing prime factors of numbers which cannot be created from those currently in the set. Start by trying to create the number 2.

The programs for A352101, there is no canonical definition to state claims against.
-/

/-! ## A352101.P2961894002823546718

`lt[A283241(A008287(n)), A078898(n)]`
-/

namespace A352101.P2961894002823546718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283241 (A008287 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352101.P2961894002823546718

/-! ## A352101.P1513737826945629350

`eq[A049825(n+1), A225662(n)]`
-/

namespace A352101.P1513737826945629350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352101.P1513737826945629350

/-! ## A352101.P15232931199048194232

`eq[A121885(n+3), A131636(n+1)]`
-/

namespace A352101.P15232931199048194232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121885 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352101.P15232931199048194232

/-! ## A352101.P18213095177223366693

`A361102(lt[A070548(n+3), A255668(3*n)]+1)`
-/

namespace A352101.P18213095177223366693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255668 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A352101.P18213095177223366693

/-!
# A352102: Number of graph minors of the n-centipede graph.

The programs for A352102, there is no canonical definition to state claims against.
-/

/-! ## A352102.P3646774584229405405

`A291766(∑[∑[A156989(n+1)]])`
-/

namespace A352102.P3646774584229405405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156989 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352102.P3646774584229405405

/-! ## A352102.P1094434114054633804

`A037568(n+1)+A003056(A037562(n+1))`
-/

namespace A352102.P1094434114054633804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037568 (n + 1) + A003056 (A037562 (n + 1)).toNat

end

end A352102.P1094434114054633804

/-!
# A352103: a(n) is the maximal (or lazy) tribonacci representation of n using a binary system of vectors not containing three consecutive 0's.

The programs for A352103, the canonical program `A352103.P9753175658429631275` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352103 has offset 0).

The definition of A352103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003796, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352103.P9753175658429631275

`A007088(A003796(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A352103

/-- `A007088(A003796(n+1))` -/
def P9753175658429631275.Spec : Prop :=
  ∀ n, P9753175658429631275.a n = A352103 n

theorem P9753175658429631275.correct : P9753175658429631275.Spec := by
  intro n
  simp only [A352103]

end A352103

/-! ## A352103.P12951277286041300136

`record[A000007(A056974(2*n+1))*A007088(n)]`
-/

namespace A352103.P12951277286041300136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A056974 (2 * n + 1)).toNat * A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352103.P12951277286041300136

namespace A352103

/-- `record[A000007(A056974(2*n+1))*A007088(n)]` -/
def P12951277286041300136.Spec : Prop :=
  ∀ n, P12951277286041300136.a n = A352103 n

end A352103

/-! ## A352103.P2368520185253481374

`A007088(lt[A087117(n), 3])`
-/

namespace A352103.P2368520185253481374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A352103.P2368520185253481374

namespace A352103

/-- `A007088(lt[A087117(n), 3])` -/
def P2368520185253481374.Spec : Prop :=
  ∀ n, P2368520185253481374.a n = A352103 n

end A352103

/-! ## A352103.P7037755250159515246

`A185544(2*A003796(n+1))`
-/

namespace A352103.P7037755250159515246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A003796 (n + 1)).toNat

end

end A352103.P7037755250159515246

namespace A352103

/-- `A185544(2*A003796(n+1))` -/
def P7037755250159515246.Spec : Prop :=
  ∀ n, P7037755250159515246.a n = A352103 n

end A352103

/-! ## A352103.P9721553331063916925

`A185544(A003796(n+1)+A003796(n+1))`
-/

namespace A352103.P9721553331063916925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A003796 (n + 1) + A003796 (n + 1)).toNat

end

end A352103.P9721553331063916925

namespace A352103

/-- `A185544(A003796(n+1)+A003796(n+1))` -/
def P9721553331063916925.Spec : Prop :=
  ∀ n, P9721553331063916925.a n = A352103 n

end A352103

/-!
# A352104: a(n) is the number of 1's in the maximal tribonacci representation of n (A352103).

The programs for A352104, the canonical program `A352104.P4259153123948201544` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352104 has offset 0).

The definition of A352104 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A352103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352104.P4259153123948201544

`A007953(A352103(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A352104

/-- `A007953(A352103(n))` -/
def P4259153123948201544.Spec : Prop :=
  ∀ n, P4259153123948201544.a n = A352104 n

theorem P4259153123948201544.correct : P4259153123948201544.Spec := by
  intro n
  simp only [A352104]

end A352104

/-! ## A352104.P15508340101043041630

`A356895(n)-A356894(n)`
-/

namespace A352104.P15508340101043041630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356895 n - A356894 n

end

end A352104.P15508340101043041630

namespace A352104

/-- `A356895(n)-A356894(n)` -/
def P15508340101043041630.Spec : Prop :=
  ∀ n, P15508340101043041630.a n = A352104 n

end A352104

/-! ## A352104.P15373510705996161422

`∑{digits}[A007088(A003796(n+1)), A005206(#)]`
-/

namespace A352104.P15373510705996161422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005206 x).sum

end

end A352104.P15373510705996161422

namespace A352104

/-- `∑{digits}[A007088(A003796(n+1)), A005206(#)]` -/
def P15373510705996161422.Spec : Prop :=
  ∀ n, P15373510705996161422.a n = A352104 n

end A352104

/-! ## A352104.P10392264076060315028

`∑{digits}[A007088(A003796(n+1)), A007088(#)]`
-/

namespace A352104.P10392264076060315028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007088 x).sum

end

end A352104.P10392264076060315028

namespace A352104

/-- `∑{digits}[A007088(A003796(n+1)), A007088(#)]` -/
def P10392264076060315028.Spec : Prop :=
  ∀ n, P10392264076060315028.a n = A352104 n

end A352104

/-! ## A352104.P10660042149713792637

`A000120(A003796(n+1))`
-/

namespace A352104.P10660042149713792637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003796 (n + 1)).toNat

end

end A352104.P10660042149713792637

namespace A352104

/-- `A000120(A003796(n+1))` -/
def P10660042149713792637.Spec : Prop :=
  ∀ n, P10660042149713792637.a n = A352104 n

end A352104

/-! ## A352104.P10646338967517438187

`A000120(lt[A087117(n), 3])`
-/

namespace A352104.P10646338967517438187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A352104.P10646338967517438187

namespace A352104

/-- `A000120(lt[A087117(n), 3])` -/
def P10646338967517438187.Spec : Prop :=
  ∀ n, P10646338967517438187.a n = A352104 n

end A352104

/-! ## A352104.P10151442079915324402

`record[A352103(A002262(n))]%9`
-/

namespace A352104.P10151442079915324402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A352104.P10151442079915324402

namespace A352104

/-- `record[A352103(A002262(n))]%9` -/
def P10151442079915324402.Spec : Prop :=
  ∀ n, P10151442079915324402.a n = A352104 n

end A352104

/-!
# A352105: Numbers whose maximal tribonacci representation (A352103) is palindromic.

The programs for A352105, the canonical program `A352105.P912367162564622228` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352105 has offset 1).

The definition of A352105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352105.P912367162564622228

`eq[0, A175919(A003796(n+1))]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A352105

/-- `eq[0, A175919(A003796(n+1))]` -/
def P912367162564622228.Spec : Prop :=
  ∀ n, (P912367162564622228.a n : ℤ) = A352105 (n + 1)

theorem P912367162564622228.correct : P912367162564622228.Spec := by
  intro n
  simp only [A352105, Nat.add_sub_cancel]

end A352105

/-! ## A352105.P14210504529522848669

`lt[A175919(A003796(n+1)), A000119(n)]`
-/

namespace A352105.P14210504529522848669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003796 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352105.P14210504529522848669

namespace A352105

/-- `lt[A175919(A003796(n+1)), A000119(n)]` -/
def P14210504529522848669.Spec : Prop :=
  ∀ n, (P14210504529522848669.a n : ℤ) = A352105 (n + 1)

end A352105

/-! ## A352105.P13951020845365208383

`lt[A175919(A003796(n+1)), A050603(n)]`
-/

namespace A352105.P13951020845365208383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003796 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352105.P13951020845365208383

namespace A352105

/-- `lt[A175919(A003796(n+1)), A050603(n)]` -/
def P13951020845365208383.Spec : Prop :=
  ∀ n, (P13951020845365208383.a n : ℤ) = A352105 (n + 1)

end A352105

/-! ## A352105.P6251531232499316107

`lt[A175919(A003796(n+1)), A167489(n)]`
-/

namespace A352105.P6251531232499316107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003796 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352105.P6251531232499316107

namespace A352105

/-- `lt[A175919(A003796(n+1)), A167489(n)]` -/
def P6251531232499316107.Spec : Prop :=
  ∀ n, (P6251531232499316107.a n : ℤ) = A352105 (n + 1)

end A352105

/-! ## A352105.P10081420943297513449

`lt[A175919(A003796(n+1)), A227349(n)]`
-/

namespace A352105.P10081420943297513449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003796 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352105.P10081420943297513449

namespace A352105

/-- `lt[A175919(A003796(n+1)), A227349(n)]` -/
def P10081420943297513449.Spec : Prop :=
  ∀ n, (P10081420943297513449.a n : ℤ) = A352105 (n + 1)

end A352105

/-! ## A352105.P9592307071111045697

`lt[A175919(A003796(n+1)), A284559(n)]`
-/

namespace A352105.P9592307071111045697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003796 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352105.P9592307071111045697

namespace A352105

/-- `lt[A175919(A003796(n+1)), A284559(n)]` -/
def P9592307071111045697.Spec : Prop :=
  ∀ n, (P9592307071111045697.a n : ℤ) = A352105 (n + 1)

end A352105

/-! ## A352105.P5058186055778066916

`lt[A175919(A003796(n+1)), A349520(n+1)]`
-/

namespace A352105.P5058186055778066916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003796 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352105.P5058186055778066916

namespace A352105

/-- `lt[A175919(A003796(n+1)), A349520(n+1)]` -/
def P5058186055778066916.Spec : Prop :=
  ∀ n, (P5058186055778066916.a n : ℤ) = A352105 (n + 1)

end A352105

/-!
# A352106: Numbers whose binary and maximal tribonacci representations are both palindromic.

The programs for A352106, there is no canonical definition to state claims against.
-/

/-! ## A352106.P5046017421904481963

`∩[A006995(n+1), A352105(n+1)]`
-/

namespace A352106.P5046017421904481963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352106.P5046017421904481963

/-! ## A352106.P2462704913940845518

`∩[A180204(n+1), A352105(n+1)]`
-/

namespace A352106.P2462704913940845518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352106.P2462704913940845518

/-! ## A352106.P1718850543585726230

`∩[record[A049776(n+1)-1], A352105(n+1)]`
-/

namespace A352106.P1718850543585726230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A352106.P1718850543585726230

/-! ## A352106.P13545755233794007325

`∩[A352105(n+1), record[n-A303534(n)²]]`
-/

namespace A352106.P13545755233794007325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352105 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A303534 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352106.P13545755233794007325

/-! ## A352106.P2192948597543667139

`filter[A352105(n+1), A178225(#)]`
-/

namespace A352106.P2192948597543667139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A352106.P2192948597543667139

/-!
# A352108: Numbers k such that k and k+1 are both lazy-tribonacci-Niven numbers (A352107).

The programs for A352108, there is no canonical definition to state claims against.
-/

/-! ## A352108.P218548727112843535

`∩[A352107(n+1)-1, A352107(n+1)]`
-/

namespace A352108.P218548727112843535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352107 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352108.P218548727112843535

/-! ## A352108.P11307616764219489032

`∩[A352107(n+1), A023443(A352107(n+1))]`
-/

namespace A352108.P11307616764219489032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352107 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352108.P11307616764219489032

/-!
# A352109: Starts of runs of 3 consecutive lazy-tribonacci-Niven numbers (A352107).

The programs for A352109, there is no canonical definition to state claims against.
-/

/-! ## A352109.P14847512195789534751

`∩[A352108(n+1)-1, A352108(n+1)]`
-/

namespace A352109.P14847512195789534751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352108 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352109.P14847512195789534751

/-!
# A352110: Starts of runs of 4 consecutive lazy-tribonacci-Niven numbers (A352107).

The programs for A352110, there is no canonical definition to state claims against.
-/

/-! ## A352110.P3286894235243709410

`∩[A352109(n+1)-1, A352109(n+1)]`
-/

namespace A352110.P3286894235243709410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352109 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352110.P3286894235243709410

/-!
# A352111: In the factorial base expansion of n, replace each place value, say k! with k > 0, by (-1)^(k-1) * k!.

The programs for A352111, there is no canonical definition to state claims against.
-/

/-! ## A352111.P6663400039034511

`A352112(n)%A101554(n)`
-/

namespace A352111.P6663400039034511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352112 n) (A101554 n)

end

end A352111.P6663400039034511

/-! ## A352111.P3380775786812407316

`A352112(n^A091717(n+1))`
-/

namespace A352111.P3380775786812407316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352112 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A091717 (n + 1) : ℤ))).toNat

end

end A352111.P3380775786812407316

/-! ## A352111.P12651093797802906273

`A352112(n)+A010673(A352115(n))`
-/

namespace A352111.P12651093797802906273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352112 n + A010673 (A352115 n).toNat

end

end A352111.P12651093797802906273

/-! ## A352111.P18010103791517967464

`A352112(n)*A361948(A361948(n))`
-/

namespace A352111.P18010103791517967464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352112 n * A361948 (A361948 n).toNat

end

end A352111.P18010103791517967464

/-! ## A352111.P11079798061776782066

`or(A227291(A000032(n)), A352112(n))`
-/

namespace A352111.P11079798061776782066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A227291 (A000032 n).toNat) (A352112 n)

end

end A352111.P11079798061776782066

/-!
# A352112: In the primorial base expansion of n, replace each place value, say A002110(k) with k >= 0, by (-1)^k * A002110(k).

The programs for A352112, there is no canonical definition to state claims against.
-/

/-! ## A352112.P12830730198477993833

`n-A070437(A056453(n+1))`
-/

namespace A352112.P12830730198477993833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070437 (A056453 (n + 1)).toNat

end

end A352112.P12830730198477993833

/-!
# A352113: Expansion of e.g.f. (1 - log(1 - 3*x))^(1/3).

The programs for A352113, there is no canonical definition to state claims against.
-/

/-! ## A352113.P567810805825723054

`A049782(3*(n+1)^(n-1))`
-/

namespace A352113.P567810805825723054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049782 (SequenceMachineLib.roundAway (3 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A352113.P567810805825723054

/-! ## A352113.P14104191918713876235

`A306927(A119649(n)+2)`
-/

namespace A352113.P14104191918713876235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (A119649 n + 2).toNat

end

end A352113.P14104191918713876235

/-!
# A352114: Expansion of e.g.f. (1 - log(1 - 4*x))^(1/4).

The programs for A352114, there is no canonical definition to state claims against.
-/

/-! ## A352114.P3584412331431775311

`A236380(A292932(n))+1`
-/

namespace A352114.P3584412331431775311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236380 (A292932 n).toNat + 1

end

end A352114.P3584412331431775311

/-! ## A352114.P15448286882933120615

`and(A107188(A143633(n)), A143633(n))`
-/

namespace A352114.P15448286882933120615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107188 (A143633 n).toNat) (A143633 n)

end

end A352114.P15448286882933120615

/-!
# A352115: Partial sums of the even triangular numbers (A014494).

The programs for A352115, the canonical program `A352115.P2198151441432500455` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352115 has offset 0).

The definition of A352115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352115.P2198151441432500455

`(n+1)*(4*n²+8*n+3-3*(-1)^n)/6`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352115

/-- `(n+1)*(4*n²+8*n+3-3*(-1)^n)/6` -/
def P2198151441432500455.Spec : Prop :=
  ∀ n, P2198151441432500455.a n = (A352115 n : ℚ)

end A352115

/-! ## A352115.P10580641687462032406

`∑[C(∑[3^(n%2)], 2)]`
-/

namespace A352115.P10580641687462032406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P10580641687462032406

namespace A352115

/-- `∑[C(∑[3^(n%2)], 2)]` -/
def P10580641687462032406.Spec : Prop :=
  ∀ n, (P10580641687462032406.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P14116818057449838082

`∑[C(∑[3^and(1, n)], 2)]`
-/

namespace A352115.P14116818057449838082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P14116818057449838082

namespace A352115

/-- `∑[C(∑[3^and(1, n)], 2)]` -/
def P14116818057449838082.Spec : Prop :=
  ∀ n, (P14116818057449838082.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P6941509767287782769

`∑[C(∑[C(3, and(1, n))], 2)]`
-/

namespace A352115.P6941509767287782769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P6941509767287782769

namespace A352115

/-- `∑[C(∑[C(3, and(1, n))], 2)]` -/
def P6941509767287782769.Spec : Prop :=
  ∀ n, (P6941509767287782769.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P12962433988074504218

`∑[∑[lcm(2, lcm(2, n)+n)]]`
-/

namespace A352115.P12962433988074504218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lcm 2 n + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P12962433988074504218

namespace A352115

/-- `∑[∑[lcm(2, lcm(2, n)+n)]]` -/
def P12962433988074504218.Spec : Prop :=
  ∀ n, (P12962433988074504218.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P10817380432838034763

`∑[C(or(1, n+1)+n, 2)]`
-/

namespace A352115.P10817380432838034763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 1) + n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P10817380432838034763

namespace A352115

/-- `∑[C(or(1, n+1)+n, 2)]` -/
def P10817380432838034763.Spec : Prop :=
  ∀ n, (P10817380432838034763.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P9654576609543508780

`∑[C(∑[(2*n)%4+1], 2)]`
-/

namespace A352115.P9654576609543508780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 4 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P9654576609543508780

namespace A352115

/-- `∑[C(∑[(2*n)%4+1], 2)]` -/
def P9654576609543508780.Spec : Prop :=
  ∀ n, (P9654576609543508780.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P12453534909638865485

`∑[C(∑[4-a(n-1)], 2)]` with `a(0)=1`
-/

namespace A352115.P12453534909638865485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P12453534909638865485

namespace A352115

/-- `∑[C(∑[4-a(n-1)], 2)]` -/
def P12453534909638865485.Spec : Prop :=
  ∀ n, (P12453534909638865485.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P4788035356888753181

`∑[C(gcd(2, n+1)+2*n, 2)]`
-/

namespace A352115.P4788035356888753181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 (n + 1) + 2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P4788035356888753181

namespace A352115

/-- `∑[C(gcd(2, n+1)+2*n, 2)]` -/
def P4788035356888753181.Spec : Prop :=
  ∀ n, (P4788035356888753181.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P16072919912994947871

`∑[(and(1, n)+n)*(2*n+1)]`
-/

namespace A352115.P16072919912994947871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + n) * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P16072919912994947871

namespace A352115

/-- `∑[(and(1, n)+n)*(2*n+1)]` -/
def P16072919912994947871.Spec : Prop :=
  ∀ n, (P16072919912994947871.a n : ℤ) = A352115 n

end A352115

/-! ## A352115.P356655161685432184

`∑[(2*n+1)*(or(1, n+1)-1)]`
-/

namespace A352115.P356655161685432184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((Nat.lor 1 (n + 1) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P356655161685432184

namespace A352115

/-- `∑[(2*n+1)*(or(1, n+1)-1)]` -/
def P356655161685432184.Spec : Prop :=
  ∀ n, P356655161685432184.a n = A352115 n

end A352115

/-! ## A352115.P13357446445909358706

`∑[(2*n+1)*∑[2-a(n-1)]]` with `a(0)=0`
-/

namespace A352115.P13357446445909358706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P13357446445909358706

namespace A352115

/-- `∑[(2*n+1)*∑[2-a(n-1)]]` -/
def P13357446445909358706.Spec : Prop :=
  ∀ n, P13357446445909358706.a n = A352115 n

end A352115

/-! ## A352115.P4418160599657704384

`∑[A014494(n)]`
-/

namespace A352115.P4418160599657704384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P4418160599657704384

namespace A352115

/-- `∑[A014494(n)]` -/
def P4418160599657704384.Spec : Prop :=
  ∀ n, P4418160599657704384.a n = A352115 n

end A352115

/-! ## A352115.P7225281737722732520

`∑[2*A074378(n)]`
-/

namespace A352115.P7225281737722732520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P7225281737722732520

namespace A352115

/-- `∑[2*A074378(n)]` -/
def P7225281737722732520.Spec : Prop :=
  ∀ n, P7225281737722732520.a n = A352115 n

end A352115

/-! ## A352115.P4038872401274666585

`∑[A193867(n+1)-1]`
-/

namespace A352115.P4038872401274666585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P4038872401274666585

namespace A352115

/-- `∑[A193867(n+1)-1]` -/
def P4038872401274666585.Spec : Prop :=
  ∀ n, P4038872401274666585.a n = A352115 n

end A352115

/-! ## A352115.P7108574606601821715

`∑[A354595(n+1)-(n+1)]`
-/

namespace A352115.P7108574606601821715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354595 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352115.P7108574606601821715

namespace A352115

/-- `∑[A354595(n+1)-(n+1)]` -/
def P7108574606601821715.Spec : Prop :=
  ∀ n, P7108574606601821715.a n = A352115 n

end A352115

/-! ## A352115.P11282172624894567755

`A111746(n)+A001057(n)`
-/

namespace A352115.P11282172624894567755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111746 n + A001057 n

end

end A352115.P11282172624894567755

namespace A352115

/-- `A111746(n)+A001057(n)` -/
def P11282172624894567755.Spec : Prop :=
  ∀ n, P11282172624894567755.a n = A352115 n

end A352115

/-! ## A352115.P4046288732827369961

`A111746(n)-A130472(n)`
-/

namespace A352115.P4046288732827369961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111746 n - A130472 n

end

end A352115.P4046288732827369961

namespace A352115

/-- `A111746(n)-A130472(n)` -/
def P4046288732827369961.Spec : Prop :=
  ∀ n, P4046288732827369961.a n = A352115 n

end A352115

/-! ## A352115.P11283652085120295406

`A238411(n+1)+A006331(n)`
-/

namespace A352115.P11283652085120295406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 1) + A006331 n

end

end A352115.P11283652085120295406

namespace A352115

/-- `A238411(n+1)+A006331(n)` -/
def P11283652085120295406.Spec : Prop :=
  ∀ n, P11283652085120295406.a n = A352115 n

end A352115

/-! ## A352115.P18416449168931643476

`A342362(n)-A317614(n+1)`
-/

namespace A352115.P18416449168931643476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342362 n - A317614 (n + 1)

end

end A352115.P18416449168931643476

namespace A352115

/-- `A342362(n)-A317614(n+1)` -/
def P18416449168931643476.Spec : Prop :=
  ∀ n, P18416449168931643476.a n = A352115 n

end A352115

/-!
# A352116: Partial sums of the odd triangular numbers (A014493).

The programs for A352116, the canonical program `A352116.P10023477106212243746` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352116 has offset 1).

The definition of A352116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352116.P14198472526386667906

`(n+1)*(4*(n+1)²-1-3*(-1)^(n+1))/6`
-/

namespace A352116.P14198472526386667906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((4 * (n + 1) ^ 2 : ℤ) - 1 - 3 * (-1) ^ (n + 1)) : ℚ) / 6

end

end A352116.P14198472526386667906

namespace A352116

/-- `(n+1)*(4*(n+1)²-1-3*(-1)^(n+1))/6` -/
def P14198472526386667906.Spec : Prop :=
  ∀ n, P14198472526386667906.a n = (A352116 (n + 1) : ℚ)

end A352116

/-! ## A352116.P10334164648572434710

`A352115(n)+(-1)^n*(n+1)`
-/

namespace A352116.P10334164648572434710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352115 n + (-1) ^ n * (n + 1 : ℤ)

end

end A352116.P10334164648572434710

namespace A352116

/-- `A352115(n)+(-1)^n*(n+1)` -/
def P10334164648572434710.Spec : Prop :=
  ∀ n, P10334164648572434710.a n = A352116 (n + 1)

end A352116

/-! ## A352116.P10023477106212243746

`A000447(n+1)-A352115(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A352116

/-- `A000447(n+1)-A352115(n)` -/
def P10023477106212243746.Spec : Prop :=
  ∀ n, P10023477106212243746.a n = A352116 (n + 1)

theorem P10023477106212243746.correct : P10023477106212243746.Spec := by
  intro n
  simp only [A352116, Nat.add_sub_cancel]

end A352116

/-! ## A352116.P13625663799879448414

`∑[record[C(or(2, n), 2)]]`
-/

namespace A352116.P13625663799879448414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P13625663799879448414

namespace A352116

/-- `∑[record[C(or(2, n), 2)]]` -/
def P13625663799879448414.Spec : Prop :=
  ∀ n, (P13625663799879448414.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P5101775164104737363

`∑[record[C(xor(2, n), 2)]]`
-/

namespace A352116.P5101775164104737363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 2 n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P5101775164104737363

namespace A352116

/-- `∑[record[C(xor(2, n), 2)]]` -/
def P5101775164104737363.Spec : Prop :=
  ∀ n, (P5101775164104737363.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P10005660321958610526

`∑[record[C(n, and(2, n))]]`
-/

namespace A352116.P10005660321958610526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P10005660321958610526

namespace A352116

/-- `∑[record[C(n, and(2, n))]]` -/
def P10005660321958610526.Spec : Prop :=
  ∀ n, (P10005660321958610526.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P13020060579606060649

`∑[C(eq[n, or(2, n)], 2)]`
-/

namespace A352116.P13020060579606060649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f2 j = f3 j) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P13020060579606060649

namespace A352116

/-- `∑[C(eq[n, or(2, n)], 2)]` -/
def P13020060579606060649.Spec : Prop :=
  ∀ n, (P13020060579606060649.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P15336183254535044397

`∑[C(lt[xor(2, n), n], 2)]`
-/

namespace A352116.P15336183254535044397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f2 j < f3 j) n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P15336183254535044397

namespace A352116

/-- `∑[C(lt[xor(2, n), n], 2)]` -/
def P15336183254535044397.Spec : Prop :=
  ∀ n, (P15336183254535044397.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P15646946238243298695

`∑[or(1, n)*Δ[n²]]`
-/

namespace A352116.P15646946238243298695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P15646946238243298695

namespace A352116

/-- `∑[or(1, n)*Δ[n²]]` -/
def P15646946238243298695.Spec : Prop :=
  ∀ n, P15646946238243298695.a n = A352116 (n + 1)

end A352116

/-! ## A352116.P2397258960782592757

`∑[(2*n+1)*or(1, n)]`
-/

namespace A352116.P2397258960782592757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P2397258960782592757

namespace A352116

/-- `∑[(2*n+1)*or(1, n)]` -/
def P2397258960782592757.Spec : Prop :=
  ∀ n, (P2397258960782592757.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P14932755676285077392

`∑[C(gcd(2, n)+2*n, 2)]`
-/

namespace A352116.P14932755676285077392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 n + 2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P14932755676285077392

namespace A352116

/-- `∑[C(gcd(2, n)+2*n, 2)]` -/
def P14932755676285077392.Spec : Prop :=
  ∀ n, (P14932755676285077392.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P8053409046620822147

`∑[C(or(1, n)+n+1, 2)]`
-/

namespace A352116.P8053409046620822147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n + (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P8053409046620822147

namespace A352116

/-- `∑[C(or(1, n)+n+1, 2)]` -/
def P8053409046620822147.Spec : Prop :=
  ∀ n, (P8053409046620822147.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P14096975495609678853

`∑[or(1, n*or(3, 2*n))]`
-/

namespace A352116.P14096975495609678853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.lor 3 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P14096975495609678853

namespace A352116

/-- `∑[or(1, n*or(3, 2*n))]` -/
def P14096975495609678853.Spec : Prop :=
  ∀ n, (P14096975495609678853.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P15589735174574234129

`∑[lcm(n+1+n, or(1, n))]`
-/

namespace A352116.P15589735174574234129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1 + n) (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P15589735174574234129

namespace A352116

/-- `∑[lcm(n+1+n, or(1, n))]` -/
def P15589735174574234129.Spec : Prop :=
  ∀ n, (P15589735174574234129.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P15093176650193877656

`∑[C(and(1, n+1)+2*n+1, 2)]`
-/

namespace A352116.P15093176650193877656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 (n + 1) + (2 * n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P15093176650193877656

namespace A352116

/-- `∑[C(and(1, n+1)+2*n+1, 2)]` -/
def P15093176650193877656.Spec : Prop :=
  ∀ n, (P15093176650193877656.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P2569832194013422413

`∑[(2*n+1)*((n+1)%2+n)]`
-/

namespace A352116.P2569832194013422413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((n + 1) % 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P2569832194013422413

namespace A352116

/-- `∑[(2*n+1)*((n+1)%2+n)]` -/
def P2569832194013422413.Spec : Prop :=
  ∀ n, (P2569832194013422413.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P13763574158407737569

`∑[(and(1, n+1)+n)*(2*n+1)]`
-/

namespace A352116.P13763574158407737569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + n) * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P13763574158407737569

namespace A352116

/-- `∑[(and(1, n+1)+n)*(2*n+1)]` -/
def P13763574158407737569.Spec : Prop :=
  ∀ n, (P13763574158407737569.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P12126212490194446692

`a(n-1)+(2*n+1)*or(1, n)` with `a(0)=1`
-/

namespace A352116.P12126212490194446692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * Nat.lor 1 n

end

end A352116.P12126212490194446692

namespace A352116

/-- `a(n-1)+(2*n+1)*or(1, n)` -/
def P12126212490194446692.Spec : Prop :=
  ∀ n, (P12126212490194446692.a n : ℤ) = A352116 (n + 1)

end A352116

/-! ## A352116.P1428219690391943877

`∑[(2*n+1)*∑[2-a(n-1)]]` with `a(0)=1, a(1)=0`
-/

namespace A352116.P1428219690391943877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P1428219690391943877

namespace A352116

/-- `∑[(2*n+1)*∑[2-a(n-1)]]` -/
def P1428219690391943877.Spec : Prop :=
  ∀ n, P1428219690391943877.a n = A352116 (n + 1)

end A352116

/-! ## A352116.P4687583666049258672

`∑[(2*n+1)*(n+2-gcd(n+1, n-1))]`
-/

namespace A352116.P4687583666049258672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n + 2 : ℤ) - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352116.P4687583666049258672

namespace A352116

/-- `∑[(2*n+1)*(n+2-gcd(n+1, n-1))]` -/
def P4687583666049258672.Spec : Prop :=
  ∀ n, P4687583666049258672.a n = A352116 (n + 1)

end A352116

/-!
# A352117: Expansion of e.g.f. 1/sqrt(2 - exp(2*x)).

The programs for A352117, there is no canonical definition to state claims against.
-/

/-! ## A352117.P15738255492756315398

`A084820(A101483(n))`
-/

namespace A352117.P15738255492756315398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (A101483 n).toNat

end

end A352117.P15738255492756315398

/-! ## A352117.P6020583006899080634

`A065033(Δ[abs(A352121(n))])`
-/

namespace A352117.P6020583006899080634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352121 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A352117.P6020583006899080634

/-!
# A352118: Expansion of e.g.f. 1/(2 - exp(3*x))^(1/3).

The programs for A352118, there is no canonical definition to state claims against.
-/

/-! ## A352118.P2971936242678982899

`A287635(∏[∑[n+1]])`
-/

namespace A352118.P2971936242678982899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287635 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A352118.P2971936242678982899

/-!
# A352119: Expansion of e.g.f. 1/(2 - exp(4*x))^(1/4).

The programs for A352119, there is no canonical definition to state claims against.
-/

/-! ## A352119.P15935085548201329412

`A139642(A108676(n))`
-/

namespace A352119.P15935085548201329412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139642 (A108676 n).toNat

end

end A352119.P15935085548201329412

/-!
# A352121: Expansion of e.g.f. sqrt(2 - exp(-2*x)).

The programs for A352121, there is no canonical definition to state claims against.
-/

/-! ## A352121.P5153899290739243563

`A110665(A001831(n))`
-/

namespace A352121.P5153899290739243563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 (A001831 n).toNat

end

end A352121.P5153899290739243563

/-! ## A352121.P9994741869933062535

`A030640(A001831(n)-1)`
-/

namespace A352121.P9994741869933062535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030640 (A001831 n - 1).toNat

end

end A352121.P9994741869933062535

/-!
# A352123: Expansion of e.g.f. (2 - exp(-4*x))^(1/4).

The programs for A352123, there is no canonical definition to state claims against.
-/

/-! ## A352123.P11460017988036643392

`A290880(n)%A310599(2^n*n!)`
-/

namespace A352123.P11460017988036643392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290880 n) (A310599 (2 ^ n * Nat.factorial n))

end

end A352123.P11460017988036643392

/-!
# A352124: Fibonacci numbers k such that pi(k) is also a Fibonacci number.

The programs for A352124, there is no canonical definition to state claims against.
-/

/-! ## A352124.P17077714122178819548

`∑[ceil(n/3)]*A026352(C(n, 5))`
-/

namespace A352124.P17077714122178819548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A026352 (Nat.choose n 5)

end

end A352124.P17077714122178819548

/-! ## A352124.P14136832829554709828

`∑[A261041(n)]%∑[ceil(3^(n-1))]`
-/

namespace A352124.P14136832829554709828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A352124.P14136832829554709828

/-! ## A352124.P7460208267313416530

`record[char[round(ϕ^n)]*A000045(n+1)]`
-/

namespace A352124.P7460208267313416530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352124.P7460208267313416530

/-!
# A352127: a(n) is the smallest even number whose n smallest divisors > 2 are all odd.

The programs for A352127, there is no canonical definition to state claims against.
-/

/-! ## A352127.P17315899685667406325

`A203461(A157100(n))`
-/

namespace A352127.P17315899685667406325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203461 (A157100 n).toNat

end

end A352127.P17315899685667406325

/-!
# A352128: Number of strict integer partitions of n with (1) as many even parts as odd parts, and (2) as many even conjugate parts as odd conjugate parts.

The programs for A352128, there is no canonical definition to state claims against.
-/

/-! ## A352128.P16739550049132830615

`A277731(A187920(n+2))`
-/

namespace A352128.P16739550049132830615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (A187920 (n + 2)).toNat

end

end A352128.P16739550049132830615

/-! ## A352128.P12927663211706687240

`A024326(or(5, A018399(n+1)))`
-/

namespace A352128.P12927663211706687240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024326 (Int.lor 5 (A018399 (n + 1))).toNat

end

end A352128.P12927663211706687240

/-! ## A352128.P5865438113211989468

`and(A001694(A285785(n+1)), A007318(n))`
-/

namespace A352128.P5865438113211989468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001694 (A285785 (n + 1)).toNat) (A007318 n)

end

end A352128.P5865438113211989468

/-! ## A352128.P7720593396752900481

`A000161(A002822(n+1)+A000198(n+1))`
-/

namespace A352128.P7720593396752900481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A002822 (n + 1) + A000198 (n + 1)).toNat

end

end A352128.P7720593396752900481

/-! ## A352128.P3689926645063080073

`A175804(gcd(A071251(2*n+3), A378089(3*n+5)))`
-/

namespace A352128.P3689926645063080073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (Int.gcd (A071251 (2 * n + 3)) (A378089 (3 * n + 5)))

end

end A352128.P3689926645063080073

/-!
# A352129: Number of strict integer partitions of n with as many even conjugate parts as odd conjugate parts.

The programs for A352129, there is no canonical definition to state claims against.
-/

/-! ## A352129.P942753239316610071

`Δ[A048766(record[A095732(n+1)])]`
-/

namespace A352129.P942753239316610071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352129.P942753239316610071

/-! ## A352129.P12190403586772026411

`Δ[A007412(A245271(n))%A245271(n)]`
-/

namespace A352129.P12190403586772026411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007412 (A245271 n).toNat) (A245271 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352129.P12190403586772026411

/-! ## A352129.P14969074638494594090

`A025851(lt[A024655(n), A114095(2*n+1)])`
-/

namespace A352129.P14969074638494594090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352129.P14969074638494594090

/-! ## A352129.P8736101888520862666

`A029320(lt[A348781(n+1), A348785(3*n+2)])`
-/

namespace A352129.P8736101888520862666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348785 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352129.P8736101888520862666

/-! ## A352129.P8528287137616134774

`Δ[Δ[A000194(A027337(2*n+1))]]`
-/

namespace A352129.P8528287137616134774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A027337 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352129.P8528287137616134774

/-!
# A352131: Number of strict integer partitions of n with same number of even parts as odd conjugate parts.

The programs for A352131, there is no canonical definition to state claims against.
-/

/-! ## A352131.P15590774333753439821

`A162909(A162933(2*(n+1)))-A209229(n)`
-/

namespace A352131.P15590774333753439821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (A162933 (2 * (n + 1))).toNat - A209229 n

end

end A352131.P15590774333753439821

/-! ## A352131.P5146580617942410191

`A257990(A054543(n+1))-A209229(n)`
-/

namespace A352131.P5146580617942410191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A054543 (n + 1)).toNat - A209229 n

end

end A352131.P5146580617942410191

/-! ## A352131.P6748282362844436007

`A257990(A054543(n+1))-char[A344493(n)]`
-/

namespace A352131.P6748282362844436007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344493 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A054543 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A352131.P6748282362844436007

/-! ## A352131.P11105632019308222705

`A097795(xor(9, A124108(n)))`
-/

namespace A352131.P11105632019308222705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (Int.xor 9 (A124108 n)).toNat

end

end A352131.P11105632019308222705

/-! ## A352131.P2915157854928006853

`A037820(A049929(n+1))+C(2, n+2)`
-/

namespace A352131.P2915157854928006853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A049929 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A352131.P2915157854928006853

/-!
# A352133: Centered cube numbers that can be written as sums of two other cubes in at least one way.

The programs for A352133, there is no canonical definition to state claims against.
-/

/-! ## A352133.P12933520061236545425

`A352134(n+1)^3+(A352134(n+1)+1)^3`
-/

namespace A352133.P12933520061236545425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352134 (n + 1) ^ 3 + (A352134 (n + 1) + 1) ^ 3

end

end A352133.P12933520061236545425

/-! ## A352133.P14981247859629453618

`A352135(n+1)^3+A352136(n+1)^3`
-/

namespace A352133.P14981247859629453618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352135 (n + 1) ^ 3 + A352136 (n + 1) ^ 3

end

end A352133.P14981247859629453618

/-! ## A352133.P8223513507279027660

`A005898(A352134(n+1))`
-/

namespace A352133.P8223513507279027660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (A352134 (n + 1)).toNat

end

end A352133.P8223513507279027660

/-! ## A352133.P1241644407089806954

`A246695(2*A352134(n+1))`
-/

namespace A352133.P1241644407089806954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 (2 * A352134 (n + 1)).toNat

end

end A352133.P1241644407089806954

/-! ## A352133.P16286288227713063398

`∩[A293647(n+1), A005898(n)]`
-/

namespace A352133.P16286288227713063398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352133.P16286288227713063398

/-!
# A352139: Expansion of e.g.f. 1/(exp(x) - log(1 - x)).

The programs for A352139, there is no canonical definition to state claims against.
-/

/-! ## A352139.P14591272560876304710

`xor(A101281(A000142(n)), A269428(n))`
-/

namespace A352139.P14591272560876304710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101281 (A000142 n).toNat) (A269428 n)

end

end A352139.P14591272560876304710

/-!
# A352140: Numbers whose prime factorization has all even prime indices and all odd exponents.

The programs for A352140, there is no canonical definition to state claims against.
-/

/-! ## A352140.P7764650656197093747

`filter[A066207(n+1), A295316(#)]`
-/

namespace A352140.P7764650656197093747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A352140.P7764650656197093747

/-! ## A352140.P18205145344789579096

`record[A331737(A066207(n+1))]`
-/

namespace A352140.P18205145344789579096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A066207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P18205145344789579096

/-! ## A352140.P3664715570372794651

`∩[A066207(n+1), A268335(n+1)]`
-/

namespace A352140.P3664715570372794651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352140.P3664715570372794651

/-! ## A352140.P12052538059843181398

`record[A248101(A002035(n+1))]`
-/

namespace A352140.P12052538059843181398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A002035 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P12052538059843181398

/-! ## A352140.P6354688623015135394

`record[A331737(A248101(n+1))]`
-/

namespace A352140.P6354688623015135394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A248101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P6354688623015135394

/-! ## A352140.P10753544370587365274

`record[A248101(A350389(n+1))]`
-/

namespace A352140.P10753544370587365274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A350389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P10753544370587365274

/-! ## A352140.P3963563803295993315

`record[A248101(A350390(n+1))]`
-/

namespace A352140.P3963563803295993315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (A350390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P3963563803295993315

/-! ## A352140.P17145588826197868193

`record[A248101(n+1)/A056624(n+1)]`
-/

namespace A352140.P17145588826197868193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248101 (n + 1) : ℚ) / (A056624 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P17145588826197868193

/-! ## A352140.P10481687751086826539

`record[A248101(n+1)/A071974(n+1)]`
-/

namespace A352140.P10481687751086826539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248101 (n + 1) : ℚ) / (A071974 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P10481687751086826539

/-! ## A352140.P8181987007725697153

`record[A331737(n+1)/A247503(n+1)]`
-/

namespace A352140.P8181987007725697153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331737 (n + 1) : ℚ) / (A247503 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P8181987007725697153

/-! ## A352140.P7789014596552584771

`record[A350389(n+1)/A247503(n+1)]`
-/

namespace A352140.P7789014596552584771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A247503 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352140.P7789014596552584771

/-!
# A352141: Numbers whose prime factorization has all even indices and all even exponents.

The programs for A352141, there is no canonical definition to state claims against.
-/

/-! ## A352141.P4268301298775625450

`A066207(n+1)²`
-/

namespace A352141.P4268301298775625450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1) ^ 2

end

end A352141.P4268301298775625450

/-! ## A352141.P13940165380654496992

`A066207(A000027(n+1))^2`
-/

namespace A352141.P13940165380654496992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (A000027 (n + 1)).toNat ^ 2

end

end A352141.P13940165380654496992

/-! ## A352141.P15998959782245275042

`A066207(n+1)^A000034((n+1)/2^val(n+1, 2))`
-/

namespace A352141.P15998959782245275042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066207 (n + 1) : ℚ) ^ (A000034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℤ)

end

end A352141.P15998959782245275042

/-! ## A352141.P12137389381269349717

`A066207(n+1)^A001316(A001316(n))`
-/

namespace A352141.P12137389381269349717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066207 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A352141.P12137389381269349717

/-! ## A352141.P14057655325711886860

`A066207(n+1)^A020639(A016933(n))`
-/

namespace A352141.P14057655325711886860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066207 (n + 1) : ℚ) ^ (A020639 (A016933 n).toNat : ℤ)

end

end A352141.P14057655325711886860

/-! ## A352141.P3430849697986802489

`A066207(A000027(n+1))*A066207(n+1)`
-/

namespace A352141.P3430849697986802489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (A000027 (n + 1)).toNat * A066207 (n + 1)

end

end A352141.P3430849697986802489

/-! ## A352141.P3073181498560944332

`A066207(A028310(n+1))*A066207(n+1)`
-/

namespace A352141.P3073181498560944332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (A028310 (n + 1)).toNat * A066207 (n + 1)

end

end A352141.P3073181498560944332

/-! ## A352141.P9230681645741618764

`A066207(n+1)^A007978(A000265(n+1))`
-/

namespace A352141.P9230681645741618764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066207 (n + 1) : ℚ) ^ (A007978 (A000265 (n + 1)).toNat : ℤ)

end

end A352141.P9230681645741618764

/-! ## A352141.P7304302030785438934

`A066207(n+1)^A000005(A020639(n+1))`
-/

namespace A352141.P7304302030785438934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066207 (n + 1) : ℚ) ^ (A000005 (A020639 (n + 1)).toNat : ℤ)

end

end A352141.P7304302030785438934

/-! ## A352141.P12160193709129245336

`A066207(n+1)^A007978(A006530(2*n+3))`
-/

namespace A352141.P12160193709129245336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066207 (n + 1) : ℚ) ^ (A007978 (A006530 (2 * n + 3)).toNat : ℤ)

end

end A352141.P12160193709129245336

/-! ## A352141.P12188342965475687509

`A066207(n+1)^A007978(A198170(n+1))`
-/

namespace A352141.P12188342965475687509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066207 (n + 1) : ℚ) ^ (A007978 (A198170 (n + 1)).toNat : ℤ)

end

end A352141.P12188342965475687509

/-! ## A352141.P11971131167013439087

`(lt[A257991(n+1), 1]+1)²`
-/

namespace A352141.P11971131167013439087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A352141.P11971131167013439087

/-! ## A352141.P10851100312649060439

`(lt[A344908(n+1), 1]+1)²`
-/

namespace A352141.P10851100312649060439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A352141.P10851100312649060439

/-! ## A352141.P11458039514474352006

`A016754((A066207(n+1)-1)/2)`
-/

namespace A352141.P11458039514474352006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (SequenceMachineLib.roundAway ((A066207 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A352141.P11458039514474352006

/-! ## A352141.P8386741255716431425

`(eq[A001222(n+1), A257992(n+1)]+1)²`
-/

namespace A352141.P8386741255716431425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2

end

end A352141.P8386741255716431425

/-! ## A352141.P16677960484174892672

`record[A374611(n+1)²]`
-/

namespace A352141.P16677960484174892672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352141.P16677960484174892672

/-! ## A352141.P5756662758879653681

`A374611(A066208(n+1))²`
-/

namespace A352141.P5756662758879653681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (A066208 (n + 1)).toNat ^ 2

end

end A352141.P5756662758879653681

/-! ## A352141.P16557538186168227005

`A066207(n+1)*A374611(A066208(n+1))`
-/

namespace A352141.P16557538186168227005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1) * A374611 (A066208 (n + 1)).toNat

end

end A352141.P16557538186168227005

/-! ## A352141.P640583592831253139

`record[A248101(n+1)²]`
-/

namespace A352141.P640583592831253139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352141.P640583592831253139

/-! ## A352141.P12173521279980755804

`record[A248101(or(1, n))]²`
-/

namespace A352141.P12173521279980755804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A352141.P12173521279980755804

/-!
# A352142: Numbers whose prime factorization has all odd indices and all odd exponents.

The programs for A352142, the canonical program `A352142.P6668695384311402358` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352142 has offset 1).

The definition of A352142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352142.P6668695384311402358

`filter[A066208(n+1), A295316(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A352142

/-- `filter[A066208(n+1), A295316(#)]` -/
def P6668695384311402358.Spec : Prop :=
  ∀ n, P6668695384311402358.a n = A352142 (n + 1)

theorem P6668695384311402358.correct : P6668695384311402358.Spec := by
  intro n
  simp only [A352142, Nat.add_sub_cancel]

end A352142

/-! ## A352142.P16782463478375632910

`∩[A066208(n+1), A268335(n+1)]`
-/

namespace A352142.P16782463478375632910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352142.P16782463478375632910

namespace A352142

/-- `∩[A066208(n+1), A268335(n+1)]` -/
def P16782463478375632910.Spec : Prop :=
  ∀ n, (P16782463478375632910.a n : ℤ) = A352142 (n + 1)

end A352142

/-! ## A352142.P3960033464055845911

`record[A331737(A247503(n+1))]`
-/

namespace A352142.P3960033464055845911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A247503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P3960033464055845911

namespace A352142

/-- `record[A331737(A247503(n+1))]` -/
def P3960033464055845911.Spec : Prop :=
  ∀ n, P3960033464055845911.a n = A352142 (n + 1)

end A352142

/-! ## A352142.P2283069072551259028

`record[A350389(record[A247503(n+1)])]`
-/

namespace A352142.P2283069072551259028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P2283069072551259028

namespace A352142

/-- `record[A350389(record[A247503(n+1)])]` -/
def P2283069072551259028.Spec : Prop :=
  ∀ n, P2283069072551259028.a n = A352142 (n + 1)

end A352142

/-! ## A352142.P17177989230837509546

`record[(n+1)*A000035(A304117(n+1))]`
-/

namespace A352142.P17177989230837509546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A304117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P17177989230837509546

namespace A352142

/-- `record[(n+1)*A000035(A304117(n+1))]` -/
def P17177989230837509546.Spec : Prop :=
  ∀ n, P17177989230837509546.a n = A352142 (n + 1)

end A352142

/-! ## A352142.P5693038213321233225

`record[A247503(n+1)/A071974(n+1)]`
-/

namespace A352142.P5693038213321233225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247503 (n + 1) : ℚ) / (A071974 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P5693038213321233225

namespace A352142

/-- `record[A247503(n+1)/A071974(n+1)]` -/
def P5693038213321233225.Spec : Prop :=
  ∀ n, P5693038213321233225.a n = (A352142 (n + 1) : ℚ)

end A352142

/-! ## A352142.P7723670864678299869

`record[A331737(n+1)/A248101(n+1)]`
-/

namespace A352142.P7723670864678299869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331737 (n + 1) : ℚ) / (A248101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P7723670864678299869

namespace A352142

/-- `record[A331737(n+1)/A248101(n+1)]` -/
def P7723670864678299869.Spec : Prop :=
  ∀ n, P7723670864678299869.a n = (A352142 (n + 1) : ℚ)

end A352142

/-! ## A352142.P16205855357687105259

`record[A247503(n+1)/A336643(n+1)]`
-/

namespace A352142.P16205855357687105259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247503 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P16205855357687105259

namespace A352142

/-- `record[A247503(n+1)/A336643(n+1)]` -/
def P16205855357687105259.Spec : Prop :=
  ∀ n, P16205855357687105259.a n = (A352142 (n + 1) : ℚ)

end A352142

/-! ## A352142.P15647385310333593668

`record[A350389(n+1)/A248101(n+1)]`
-/

namespace A352142.P15647385310333593668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A248101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P15647385310333593668

namespace A352142

/-- `record[A350389(n+1)/A248101(n+1)]` -/
def P15647385310333593668.Spec : Prop :=
  ∀ n, P15647385310333593668.a n = (A352142 (n + 1) : ℚ)

end A352142

/-! ## A352142.P15201089281046976356

`record[A350390(n+1)/A248101(n+1)]`
-/

namespace A352142.P15201089281046976356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350390 (n + 1) : ℚ) / (A248101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P15201089281046976356

namespace A352142

/-- `record[A350390(n+1)/A248101(n+1)]` -/
def P15201089281046976356.Spec : Prop :=
  ∀ n, P15201089281046976356.a n = (A352142 (n + 1) : ℚ)

end A352142

/-! ## A352142.P15781325677861993915

`record[A247503(n+1)/A006519(A005361(n+1))]`
-/

namespace A352142.P15781325677861993915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247503 (n + 1) : ℚ) / (A006519 (A005361 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352142.P15781325677861993915

namespace A352142

/-- `record[A247503(n+1)/A006519(A005361(n+1))]` -/
def P15781325677861993915.Spec : Prop :=
  ∀ n, P15781325677861993915.a n = (A352142 (n + 1) : ℚ)

end A352142

/-!
# A352143: Numbers whose prime indices and conjugate prime indices are all odd.

The programs for A352143, there is no canonical definition to state claims against.
-/

/-! ## A352143.P8005424625000463034

`record[A247503(A346635(n+1))]`
-/

namespace A352143.P8005424625000463034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A346635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352143.P8005424625000463034

/-! ## A352143.P5768200903937323248

`record[A247503(A350945(n+1))]`
-/

namespace A352143.P5768200903937323248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A350945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352143.P5768200903937323248

/-! ## A352143.P17503802522147447804

`∩[A066208(n+1), A346635(n+1)]`
-/

namespace A352143.P17503802522147447804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352143.P17503802522147447804

/-! ## A352143.P9725156192223241090

`∩[A066208(n+1), A350945(n+1)]`
-/

namespace A352143.P9725156192223241090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352143.P9725156192223241090

/-! ## A352143.P10372897663316453655

`∩[A346635(n+1), A350945(n+1)]`
-/

namespace A352143.P10372897663316453655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352143.P10372897663316453655

/-!
# A352144: The number of interior points that are intersections of exactly two chords for a 2n-gon where all its vertices are joined by lines (cf. A006561).

The programs for A352144, there is no canonical definition to state claims against.
-/

/-! ## A352144.P12112627256662334334

`A292105(∑[n+2])`
-/

namespace A352144.P12112627256662334334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352144.P12112627256662334334

/-! ## A352144.P10770953237136374187

`A292104(2*(n+1))`
-/

namespace A352144.P10770953237136374187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292104 (2 * (n + 1))

end

end A352144.P10770953237136374187

/-! ## A352144.P9880051191743990848

`and(-1, A292104(record[2-xor(1, -n)]))`
-/

namespace A352144.P9880051191743990848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A292104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A352144.P9880051191743990848

/-! ## A352144.P4879437409244458219

`and(-3, A292104(A103517(n)))`
-/

namespace A352144.P4879437409244458219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A292104 (A103517 n).toNat)

end

end A352144.P4879437409244458219

/-! ## A352144.P11241040289684997935

`A292104(record[2-xor(1, -n)])%A022571(n)`
-/

namespace A352144.P11241040289684997935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A022571 n)

end

end A352144.P11241040289684997935

/-! ## A352144.P10670550223213716333

`A057427(n)*A292104(A103517(n))`
-/

namespace A352144.P10670550223213716333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A292104 (A103517 n).toNat

end

end A352144.P10670550223213716333

/-! ## A352144.P3541509149928259119

`A292104(A103517(n))%A008534(n)`
-/

namespace A352144.P3541509149928259119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292104 (A103517 n).toNat) (A008534 n)

end

end A352144.P3541509149928259119

/-! ## A352144.P11868982723509559632

`lcm(A033999(n), A292104(A103517(n)))`
-/

namespace A352144.P11868982723509559632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292104 (A103517 n).toNat)

end

end A352144.P11868982723509559632

/-! ## A352144.P5586939641213262175

`A000038(n)!*A292104(A103517(n))`
-/

namespace A352144.P5586939641213262175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A292104 (A103517 n).toNat

end

end A352144.P5586939641213262175

/-! ## A352144.P1098264463140595173

`A292104(A103517(n))+A000007(n+1)`
-/

namespace A352144.P1098264463140595173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292104 (A103517 n).toNat + A000007 (n + 1)

end

end A352144.P1098264463140595173

/-!
# A352146: Expansion of e.g.f. 1/(exp(x) + log(1 - x)).

The programs for A352146, there is no canonical definition to state claims against.
-/

/-! ## A352146.P5202799207513091330

`A175249(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A352146.P5202799207513091330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A175249 (a (n - 1) + 1).toNat

end

end A352146.P5202799207513091330

/-! ## A352146.P6931255822757224541

`A116649(a(n-1)+2)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A352146.P6931255822757224541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A116649 (a (n - 1) + 2).toNat

end

end A352146.P6931255822757224541

/-! ## A352146.P12724905713232268269

`A165006(A357220(n))`
-/

namespace A352146.P12724905713232268269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (A357220 n).toNat

end

end A352146.P12724905713232268269

/-!
# A352148: Integers m such that nonzero digits of A000217(m) are all the same.

The programs for A352148, there is no canonical definition to state claims against.
-/

/-! ## A352148.P1324851674761870227

`floor(sqrt(2*A352057(n+1)))`
-/

namespace A352148.P1324851674761870227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A352057 (n + 1))

end

end A352148.P1324851674761870227

/-! ## A352148.P6299654256063771684

`A080098(A352057(n+1))`
-/

namespace A352148.P6299654256063771684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A352057 (n + 1)).toNat

end

end A352148.P6299654256063771684

/-! ## A352148.P10297107505895315140

`A324351(4*A352057(n+1))`
-/

namespace A352148.P10297107505895315140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324351 (4 * A352057 (n + 1)).toNat

end

end A352148.P10297107505895315140

/-! ## A352148.P9958862614160671680

`A075362(A352057(n+1)+1)-1`
-/

namespace A352148.P9958862614160671680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A352057 (n + 1) + 1).toNat - 1

end

end A352148.P9958862614160671680

/-! ## A352148.P18124403204680927292

`A094727(A352057(n+1)+1)-1`
-/

namespace A352148.P18124403204680927292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A352057 (n + 1) + 1).toNat - 1

end

end A352148.P18124403204680927292

/-!
# A352149: a(n) = Sum_{k=0..n-1} binomial(n,k)^2 * (n-k-1)!.

The programs for A352149, there is no canonical definition to state claims against.
-/

/-! ## A352149.P11830139906356201041

`A004273(A059685(n+1))-A219861(n+1)`
-/

namespace A352149.P11830139906356201041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A059685 (n + 1)).toNat - A219861 (n + 1)

end

end A352149.P11830139906356201041

/-! ## A352149.P4992853751685784829

`A255338(A270229(n))-1`
-/

namespace A352149.P4992853751685784829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (A270229 n).toNat - 1

end

end A352149.P4992853751685784829

/-!
# A352151: Expansion of e.g.f. 1/(cos(x) - tan(x)).

The programs for A352151, there is no canonical definition to state claims against.
-/

/-! ## A352151.P7796328304581873443

`A055254(A049864(3*n))+1`
-/

namespace A352151.P7796328304581873443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055254 (A049864 (3 * n)).toNat + 1

end

end A352151.P7796328304581873443

/-! ## A352151.P13348221499601073659

`and(-A006228(n), ∑{d}[n!, A256133(#)])`
-/

namespace A352151.P13348221499601073659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A006228 n) (∑ d ∈ Nat.divisors (f1 n), A256133 d)

end

end A352151.P13348221499601073659

/-!
# A352154: Numbers m such that the decimal expansion of 1/m contains the digit 0, ignoring leading and trailing 0's.

The programs for A352154, there is no canonical definition to state claims against.
-/

/-! ## A352154.P13091904121155657317

`eq[0, A352153(n+1)]+1`
-/

namespace A352154.P13091904121155657317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352154.P13091904121155657317

/-! ## A352154.P8401850205555198305

`lt[A352153(round(acot(n)+n)), 1]`
-/

namespace A352154.P8401850205555198305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352154.P8401850205555198305

/-! ## A352154.P3760314943349676501

`lt[A352153(round(sqrt(n²+1))), 1]`
-/

namespace A352154.P3760314943349676501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352154.P3760314943349676501

/-! ## A352154.P792029437226761237

`eq[0, A352153(ceil(n-(atan(n)-1)))]`
-/

namespace A352154.P792029437226761237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 ⌈(n : ℝ) - (Real.arctan (n : ℝ) - 1)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352154.P792029437226761237

/-! ## A352154.P14269443507243169571

`eq[0, A352153(A028310(n))]`
-/

namespace A352154.P14269443507243169571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352154.P14269443507243169571

/-! ## A352154.P13265791800780871627

`A020725(eq[0, A352153(n+1)])`
-/

namespace A352154.P13265791800780871627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352154.P13265791800780871627

/-! ## A352154.P4717401924841815634

`A063660(eq[0, A352153(n+1)])`
-/

namespace A352154.P4717401924841815634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352154.P4717401924841815634

/-! ## A352154.P16994823611529189213

`A153152(eq[0, A352153(n+1)])`
-/

namespace A352154.P16994823611529189213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352154.P16994823611529189213

/-! ## A352154.P14382059782236281516

`eq[0, A352153(A233583(n+1))]`
-/

namespace A352154.P14382059782236281516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352154.P14382059782236281516

/-! ## A352154.P8476164206810621997

`eq[0, A352153(A123108(2*n))]`
-/

namespace A352154.P8476164206810621997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352154.P8476164206810621997

/-!
# A352155: Numbers m such that the smallest digit in the decimal expansion of 1/m is 1, ignoring leading and trailing 0's.

The programs for A352155, there is no canonical definition to state claims against.
-/

/-! ## A352155.P8676744838709042388

`∩[A353437(n+1), A362710(n+1)]`
-/

namespace A352155.P8676744838709042388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352155.P8676744838709042388

/-! ## A352155.P7291697094779670321

`eq[1, A352153(n+1)]+1`
-/

namespace A352155.P7291697094779670321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352155.P7291697094779670321

/-! ## A352155.P10775522658725378400

`eq[n-abs(1-n), A352153(A028310(n))]`
-/

namespace A352155.P10775522658725378400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352155.P10775522658725378400

/-! ## A352155.P9582360471893323445

`eq[A057427(n), A352153(A065033(2*n))]`
-/

namespace A352155.P9582360471893323445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352155.P9582360471893323445

/-! ## A352155.P13743786809011597702

`eq[n, A028310(n)*A352153(A028310(n))]`
-/

namespace A352155.P13743786809011597702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A352153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352155.P13743786809011597702

/-!
# A352157: Numbers m such that the smallest digit in the decimal expansion of 1/m is 3, ignoring leading and trailing 0's.

The programs for A352157, there is no canonical definition to state claims against.
-/

/-! ## A352157.P2710036853056589570

`A344292(A300274(n+2))`
-/

namespace A352157.P2710036853056589570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344292 (A300274 (n + 2)).toNat

end

end A352157.P2710036853056589570

/-!
# A352159: Numbers m such that the smallest digit in the decimal expansion of 1/m is 5, ignoring leading and trailing 0's.

The programs for A352159, there is no canonical definition to state claims against.
-/

/-! ## A352159.P17143625193124876014

`∑[A032644(A288403(n))+1]`
-/

namespace A352159.P17143625193124876014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032644 (A288403 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352159.P17143625193124876014

/-!
# A352160: Numbers m such that the smallest digit in the decimal expansion of 1/m is k = 6, ignoring leading and trailing 0's.

The programs for A352160, there is no canonical definition to state claims against.
-/

/-! ## A352160.P5451957965681040075

`A008851(6*5^n+1)*A028846(n+1)`
-/

namespace A352160.P5451957965681040075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (6 * 5 ^ n + 1) * A028846 (n + 1)

end

end A352160.P5451957965681040075

/-!
# A352163: a(n) is the least prime p such that p+3 is divisible by exactly n distinct primes.

The programs for A352163, there is no canonical definition to state claims against.
-/

/-! ## A352163.P2452052989044272240

`A151800(floor(10^n/9)*A096507(n+1))`
-/

namespace A352163.P2452052989044272240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (⌊(10 ^ n : ℚ) / 9⌋ * A096507 (n + 1)).toNat

end

end A352163.P2452052989044272240

/-!
# A352164: Expansion of e.g.f. 1/(cosh(x) - tanh(x)).

The programs for A352164, there is no canonical definition to state claims against.
-/

/-! ## A352164.P5771077995296576138

`1-A165927(A007564(n))`
-/

namespace A352164.P5771077995296576138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A165927 (A007564 n).toNat

end

end A352164.P5771077995296576138

/-! ## A352164.P3389707384624210287

`1-A396514(A307496(n))`
-/

namespace A352164.P3389707384624210287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A396514 (A307496 n).toNat

end

end A352164.P3389707384624210287

/-!
# A352165: Number of partitions of n into odd prime powers (1 included).

The programs for A352165, there is no canonical definition to state claims against.
-/

/-! ## A352165.P24294919599555918

`∑[A280151(n)]`
-/

namespace A352165.P24294919599555918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352165.P24294919599555918

/-! ## A352165.P5038442963344981009

`∑[∑[(-1)^n*∑[A329097(n)]]]`
-/

namespace A352165.P5038442963344981009
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352165.P5038442963344981009

/-! ## A352165.P12756621301110024797

`∑[∑[∑[A329097(n)]*A033999(n)]]`
-/

namespace A352165.P12756621301110024797
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) * A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352165.P12756621301110024797

/-! ## A352165.P350450728167500019

`∑[A000196(A263150(n))]%A057751(2*n+1)`
-/

namespace A352165.P350450728167500019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A263150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A057751 (2 * n + 1))

end

end A352165.P350450728167500019

/-! ## A352165.P10478988605050565700

`∑[A000196(A263150(n))%A178374(n+1)]`
-/

namespace A352165.P10478988605050565700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A263150 n).toNat) (A178374 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352165.P10478988605050565700

/-!
# A352166: Number of partitions of n into distinct odd prime powers (1 included).

The programs for A352166, there is no canonical definition to state claims against.
-/

/-! ## A352166.P2011951935446160099

`A280152(abs(1-n))+A280152(n)`
-/

namespace A352166.P2011951935446160099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280152 |1 - (n : ℤ)|.toNat + A280152 n

end

end A352166.P2011951935446160099

/-! ## A352166.P10458669873945898715

`A272187(val(A112084(n+1), 2)+n)`
-/

namespace A352166.P10458669873945898715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272187 (SequenceMachineLib.valuation (A112084 (n + 1)).toNat 2 + n)

end

end A352166.P10458669873945898715

/-! ## A352166.P8034462274799835771

`A045778(A124112(n+1))*A272187(n)`
-/

namespace A352166.P8034462274799835771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A124112 (n + 1)).toNat * A272187 n

end

end A352166.P8034462274799835771

/-! ## A352166.P553135899689779021

`A049076(A302571(n+1))*A272187(n)`
-/

namespace A352166.P553135899689779021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A302571 (n + 1)).toNat * A272187 n

end

end A352166.P553135899689779021

/-!
# A352167: a(n) is the sum of the prime factors of n (with multiplicity) that are less than n.

The programs for A352167, the canonical program `A352167.P833396178534285227` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352167 has offset 1).

The definition of A352167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352167.P833396178534285227

`A001414(n+1)-A061397(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A352167

/-- `A001414(n+1)-A061397(n+1)` -/
def P833396178534285227.Spec : Prop :=
  ∀ n, P833396178534285227.a n = A352167 (n + 1)

theorem P833396178534285227.correct : P833396178534285227.Spec := by
  intro n
  simp only [A352167, Nat.add_sub_cancel]

end A352167

/-! ## A352167.P12090163920912687614

`∑{p}[n+1, #*val(n+1, #)]-∑{p}[n+1, C(#, n)]`
-/

namespace A352167.P12090163920912687614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ)

end

end A352167.P12090163920912687614

namespace A352167

/-- `∑{p}[n+1, #*val(n+1, #)]-∑{p}[n+1, C(#, n)]` -/
def P12090163920912687614.Spec : Prop :=
  ∀ n, P12090163920912687614.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P9493497583079159325

`xor(∑{p}[n+1, #*val(n+1, #)], ∑{p}[n+1, C(#, n)])`
-/

namespace A352167.P9493497583079159325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

end

end A352167.P9493497583079159325

namespace A352167

/-- `xor(∑{p}[n+1, #*val(n+1, #)], ∑{p}[n+1, C(#, n)])` -/
def P9493497583079159325.Spec : Prop :=
  ∀ n, (P9493497583079159325.a n : ℤ) = A352167 (n + 1)

end A352167

/-! ## A352167.P4056578803784870163

`floor(atan(∑{e}[n+1, #]))*∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A352167.P4056578803784870163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋ * ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A352167.P4056578803784870163

namespace A352167

/-- `floor(atan(∑{e}[n+1, #]))*∑{p}[n+1, #*val(n+1, #)]` -/
def P4056578803784870163.Spec : Prop :=
  ∀ n, P4056578803784870163.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P15840498984349785875

`∑{p}[n+1, #*val(n+1, #)]-∑{p}[n+1, floor(#^(#-n))]`
-/

namespace A352167.P15840498984349785875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) ^ ((p : ℤ) - (n : ℤ) : ℤ)⌋

end

end A352167.P15840498984349785875

namespace A352167

/-- `∑{p}[n+1, #*val(n+1, #)]-∑{p}[n+1, floor(#^(#-n))]` -/
def P15840498984349785875.Spec : Prop :=
  ∀ n, P15840498984349785875.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P955637092955094340

`and(-C(n, ∑{p}[n+1, C(#, n)]), ∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A352167.P955637092955094340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) : ℤ)) ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A352167.P955637092955094340

namespace A352167

/-- `and(-C(n, ∑{p}[n+1, C(#, n)]), ∑{p}[n+1, #*val(n+1, #)])` -/
def P955637092955094340.Spec : Prop :=
  ∀ n, P955637092955094340.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P5957444640961847453

`abs(-∑{p}[n+1, #*val(n+1, #)]%((n+1)²/∏{p}[n+1, #]))`
-/

namespace A352167.P5957444640961847453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)) (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)))|

end

end A352167.P5957444640961847453

namespace A352167

/-- `abs(-∑{p}[n+1, #*val(n+1, #)]%((n+1)²/∏{p}[n+1, #]))` -/
def P5957444640961847453.Spec : Prop :=
  ∀ n, P5957444640961847453.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P675823725422705390

`((1-char[1])*∑{p}[n+1, #*val(n+1, #)])%((n+1)²/∏{p}[n+1, #])`
-/

namespace A352167.P675823725422705390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)) (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)))

end

end A352167.P675823725422705390

namespace A352167

/-- `((1-char[1])*∑{p}[n+1, #*val(n+1, #)])%((n+1)²/∏{p}[n+1, #])` -/
def P675823725422705390.Spec : Prop :=
  ∀ n, P675823725422705390.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P3579425062077062312

`char[lt[A014963(n+1), n]]*∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A352167.P3579425062077062312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) * (∑ p ∈ Nat.primeFactors (f4 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A352167.P3579425062077062312

namespace A352167

/-- `char[lt[A014963(n+1), n]]*∑{p}[n+1, #*val(n+1, #)]` -/
def P3579425062077062312.Spec : Prop :=
  ∀ n, (P3579425062077062312.a n : ℤ) = A352167 (n + 1)

end A352167

/-! ## A352167.P6075699624145712653

`A001414(A005451(n+1))`
-/

namespace A352167.P6075699624145712653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A005451 (n + 1)).toNat

end

end A352167.P6075699624145712653

namespace A352167

/-- `A001414(A005451(n+1))` -/
def P6075699624145712653.Spec : Prop :=
  ∀ n, P6075699624145712653.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P13370133455459068402

`A001414(n+1)%A139693(n)`
-/

namespace A352167.P13370133455459068402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1)) (A139693 n)

end

end A352167.P13370133455459068402

namespace A352167

/-- `A001414(n+1)%A139693(n)` -/
def P13370133455459068402.Spec : Prop :=
  ∀ n, P13370133455459068402.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P15554563700825910143

`A280292(n+1)+A105221(n+1)`
-/

namespace A352167.P15554563700825910143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + A105221 (n + 1)

end

end A352167.P15554563700825910143

namespace A352167

/-- `A280292(n+1)+A105221(n+1)` -/
def P15554563700825910143.Spec : Prop :=
  ∀ n, P15554563700825910143.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P10067793588480446548

`A075254(n+1)-A143545(n+1)`
-/

namespace A352167.P10067793588480446548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A143545 (n + 1)

end

end A352167.P10067793588480446548

namespace A352167

/-- `A075254(n+1)-A143545(n+1)` -/
def P10067793588480446548.Spec : Prop :=
  ∀ n, P10067793588480446548.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P11936569772576754157

`A191558(n+1)-A075255(n+1)`
-/

namespace A352167.P11936569772576754157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) - A075255 (n + 1)

end

end A352167.P11936569772576754157

namespace A352167

/-- `A191558(n+1)-A075255(n+1)` -/
def P11936569772576754157.Spec : Prop :=
  ∀ n, P11936569772576754157.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P15367029496123568388

`A001414(n+1)*A005171(n+1)`
-/

namespace A352167.P15367029496123568388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A005171 (n + 1)

end

end A352167.P15367029496123568388

namespace A352167

/-- `A001414(n+1)*A005171(n+1)` -/
def P15367029496123568388.Spec : Prop :=
  ∀ n, P15367029496123568388.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P6276581011110054430

`A001414(n+1)*A066247(n+1)`
-/

namespace A352167.P6276581011110054430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A066247 (n + 1)

end

end A352167.P6276581011110054430

namespace A352167

/-- `A001414(n+1)*A066247(n+1)` -/
def P6276581011110054430.Spec : Prop :=
  ∀ n, P6276581011110054430.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P7562129266706522187

`A001414(n+2-A089026(n+1))`
-/

namespace A352167.P7562129266706522187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((n + 2 : ℤ) - A089026 (n + 1)).toNat

end

end A352167.P7562129266706522187

namespace A352167

/-- `A001414(n+2-A089026(n+1))` -/
def P7562129266706522187.Spec : Prop :=
  ∀ n, P7562129266706522187.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P7764318542375880950

`A001414((n+1)/A089026(n+1))`
-/

namespace A352167.P7764318542375880950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A089026 (n + 1) : ℚ))).toNat

end

end A352167.P7764318542375880950

namespace A352167

/-- `A001414((n+1)/A089026(n+1))` -/
def P7764318542375880950.Spec : Prop :=
  ∀ n, P7764318542375880950.a n = A352167 (n + 1)

end A352167

/-! ## A352167.P11890238545532453709

`lcm(A001414(n+1), A182936(n+1))`
-/

namespace A352167.P11890238545532453709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001414 (n + 1)) (A182936 (n + 1))

end

end A352167.P11890238545532453709

namespace A352167

/-- `lcm(A001414(n+1), A182936(n+1))` -/
def P11890238545532453709.Spec : Prop :=
  ∀ n, (P11890238545532453709.a n : ℤ) = A352167 (n + 1)

end A352167

/-!
# A352168: a(n) = Sum_{p+q = 2n, p<=q, p,q prime} (p*q mod 2n).

The programs for A352168, there is no canonical definition to state claims against.
-/

/-! ## A352168.P15005190819173628956

`A338768(2*(n+1))`
-/

namespace A352168.P15005190819173628956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338768 (2 * (n + 1))

end

end A352168.P15005190819173628956

/-! ## A352168.P15912954260754743320

`A338768(Δ[A002378(n)])%(2^n)`
-/

namespace A352168.P15912954260754743320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338768 (f1 (n + 1) - f1 n).toNat) (2 ^ n : ℤ)

end

end A352168.P15912954260754743320

/-! ## A352168.P18229150853778898632

`A338768(A005843(n+1))%(2^n)`
-/

namespace A352168.P18229150853778898632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338768 (A005843 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A352168.P18229150853778898632

/-! ## A352168.P10708126433852735087

`A054977(n)*A338768(record[2-xor(1, -n)])`
-/

namespace A352168.P10708126433852735087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A338768 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352168.P10708126433852735087

/-! ## A352168.P7019460844528421293

`A338768(record[2-xor(1, -n)])%A002203(n)`
-/

namespace A352168.P7019460844528421293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338768 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A002203 n)

end

end A352168.P7019460844528421293

/-! ## A352168.P16623121159423541079

`A057427(n)*A338768(A103517(n))`
-/

namespace A352168.P16623121159423541079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A338768 (A103517 n).toNat

end

end A352168.P16623121159423541079

/-!
# A352169: Numbers k with a Goldbach partition (p,q) such that k/2 divides at least one of p*q +- 1.

The programs for A352169, there is no canonical definition to state claims against.
-/

/-! ## A352169.P18102370910680413377

`record[A000005(A071342(2*n+3))]`
-/

namespace A352169.P18102370910680413377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071342 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352169.P18102370910680413377

/-! ## A352169.P18000466309133733325

`∑[A008904(A003399(n+2))]+2`
-/

namespace A352169.P18000466309133733325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (A003399 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A352169.P18000466309133733325

/-! ## A352169.P159162986721231642

`record[A372792(A363488(n+1))]`
-/

namespace A352169.P159162986721231642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372792 (A363488 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352169.P159162986721231642

/-! ## A352169.P1254109843947586890

`A343150(A152870(n+1)+n)`
-/

namespace A352169.P1254109843947586890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343150 (A152870 (n + 1) + (n : ℤ)).toNat

end

end A352169.P1254109843947586890

/-! ## A352169.P15399906175602698515

`∑[A335185(A190913(n)+∑[n]+6)]+6`
-/

namespace A352169.P15399906175602698515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335185 (A190913 n + ((∑ j ∈ Finset.range (n + 1), f2 j + 6 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A352169.P15399906175602698515

/-!
# A352170: Primes p such that p+4, 3*p+4 and 3*p+8 are also prime.

The programs for A352170, there is no canonical definition to state claims against.
-/

/-! ## A352170.P9062953999690398123

`∩[A181848(n+1), A289413(n+1)]`
-/

namespace A352170.P9062953999690398123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352170.P9062953999690398123

/-! ## A352170.P6544073915585732131

`∩[A015913(n+1), A181848(n+1)]`
-/

namespace A352170.P6544073915585732131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352170.P6544073915585732131

/-! ## A352170.P5392796041247067919

`∩[A172238(n+1), A181848(n+1)]`
-/

namespace A352170.P5392796041247067919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352170.P5392796041247067919

/-! ## A352170.P5801984708174336578

`∩[A056772(n+1), A181848(n+1)]`
-/

namespace A352170.P5801984708174336578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352170.P5801984708174336578

/-! ## A352170.P3913243146711993674

`p?[A045344(A241945(n+1))-4]`
-/

namespace A352170.P3913243146711993674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A241945 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352170.P3913243146711993674

/-!
# A352172: a(n) is the product of the cubes of the nonzero digits of n.

The programs for A352172, the canonical program `A352172.P16430294877662207818` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352172 has offset 1).

The definition of A352172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352172.P16430294877662207818

`A051801(n+1)^3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A352172

/-- `A051801(n+1)^3` -/
def P16430294877662207818.Spec : Prop :=
  ∀ n, P16430294877662207818.a n = A352172 (n + 1)

theorem P16430294877662207818.correct : P16430294877662207818.Spec := by
  intro n
  simp only [A352172, Nat.add_sub_cancel]

end A352172

/-! ## A352172.P16873397216517936695

`sqrt(A352598(n+1)^3)`
-/

namespace A352172.P16873397216517936695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352598 (n + 1) ^ 3 : ℝ)

end

end A352172.P16873397216517936695

namespace A352172

/-- `sqrt(A352598(n+1)^3)` -/
def P16873397216517936695.Spec : Prop :=
  ∀ n, P16873397216517936695.a n = (A352172 (n + 1) : ℝ)

end A352172

/-! ## A352172.P16889605067268344259

`∏{digits}[A004719(n+1), #*#²]`
-/

namespace A352172.P16889605067268344259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * x ^ 2).prod

end

end A352172.P16889605067268344259

namespace A352172

/-- `∏{digits}[A004719(n+1), #*#²]` -/
def P16889605067268344259.Spec : Prop :=
  ∀ n, (P16889605067268344259.a n : ℤ) = A352172 (n + 1)

end A352172

/-! ## A352172.P7685291976323756696

`(A063114(n+1)-(n+1))^3`
-/

namespace A352172.P7685291976323756696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063114 (n + 1) - (n + 1 : ℤ)) ^ 3

end

end A352172.P7685291976323756696

namespace A352172

/-- `(A063114(n+1)-(n+1))^3` -/
def P7685291976323756696.Spec : Prop :=
  ∀ n, P7685291976323756696.a n = A352172 (n + 1)

end A352172

/-! ## A352172.P4627018445273602567

`(n+1-A063543(n+1))^3`
-/

namespace A352172.P4627018445273602567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A063543 (n + 1)) ^ 3

end

end A352172.P4627018445273602567

namespace A352172

/-- `(n+1-A063543(n+1))^3` -/
def P4627018445273602567.Spec : Prop :=
  ∀ n, P4627018445273602567.a n = A352172 (n + 1)

end A352172

/-! ## A352172.P11972719363793701270

`A000578(A051801(n+1))`
-/

namespace A352172.P11972719363793701270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A051801 (n + 1)).toNat

end

end A352172.P11972719363793701270

namespace A352172

/-- `A000578(A051801(n+1))` -/
def P11972719363793701270.Spec : Prop :=
  ∀ n, P11972719363793701270.a n = A352172 (n + 1)

end A352172

/-! ## A352172.P15310866091873545103

`A051801(n+1)*A352598(n+1)`
-/

namespace A352172.P15310866091873545103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (n + 1) * A352598 (n + 1)

end

end A352172.P15310866091873545103

namespace A352172

/-- `A051801(n+1)*A352598(n+1)` -/
def P15310866091873545103.Spec : Prop :=
  ∀ n, P15310866091873545103.a n = A352172 (n + 1)

end A352172

/-! ## A352172.P64764020302872770

`(A230101(n+1)/(n+1))^3`
-/

namespace A352172.P64764020302872770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A230101 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A352172.P64764020302872770

namespace A352172

/-- `(A230101(n+1)/(n+1))^3` -/
def P64764020302872770.Spec : Prop :=
  ∀ n, P64764020302872770.a n = (A352172 (n + 1) : ℚ)

end A352172

/-! ## A352172.P7563431397871762527

`A000093(A352598(n+1))`
-/

namespace A352172.P7563431397871762527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A352598 (n + 1)).toNat

end

end A352172.P7563431397871762527

namespace A352172

/-- `A000093(A352598(n+1))` -/
def P7563431397871762527.Spec : Prop :=
  ∀ n, P7563431397871762527.a n = A352172 (n + 1)

end A352172

/-! ## A352172.P4361705488777913918

`A000290(A051801(n+1)²)/A051801(n+1)`
-/

namespace A352172.P4361705488777913918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A051801 (n + 1) ^ 2).toNat : ℚ) / (A051801 (n + 1) : ℚ)

end

end A352172.P4361705488777913918

namespace A352172

/-- `A000290(A051801(n+1)²)/A051801(n+1)` -/
def P4361705488777913918.Spec : Prop :=
  ∀ n, P4361705488777913918.a n = (A352172 (n + 1) : ℚ)

end A352172

/-!
# A352173: The number of Feynman graphs in phi^4 theory with n vertices, 2 external legs.

The programs for A352173, there is no canonical definition to state claims against.
-/

/-! ## A352173.P6576609201674431352

`A187187(Δ[(1-2^n)²]+1)+n`
-/

namespace A352173.P6576609201674431352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (f1 (n + 1) - f1 n + 1).toNat + (n : ℤ)

end

end A352173.P6576609201674431352

/-! ## A352173.P6496427220069777639

`∑[A194640(A150469(n))]`
-/

namespace A352173.P6496427220069777639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A150469 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352173.P6496427220069777639

/-!
# A352174: The number of connected Feynman graphs in phi^4 theory with n vertices, 2 external legs.

The programs for A352174, there is no canonical definition to state claims against.
-/

/-! ## A352174.P686025238556138847

`A008621(A083862(n)+A011965(n))`
-/

namespace A352174.P686025238556138847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A083862 n + A011965 n).toNat

end

end A352174.P686025238556138847

/-! ## A352174.P15325162081295900599

`A110655(A110577(n)+A011965(n))`
-/

namespace A352174.P15325162081295900599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A110577 n + A011965 n).toNat

end

end A352174.P15325162081295900599

/-! ## A352174.P10770573116798320519

`A124532(n)-A082859(A016098(n))`
-/

namespace A352174.P10770573116798320519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124532 n - A082859 (A016098 n).toNat

end

end A352174.P10770573116798320519

/-!
# A352175: The number of Feynman graphs in phi^3 theory with 2n vertices, 2 external legs.

The programs for A352175, there is no canonical definition to state claims against.
-/

/-! ## A352175.P12072668312133892401

`A281356((n+2)²)-A281333(n)`
-/

namespace A352175.P12072668312133892401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281356 ((n + 2) ^ 2) - A281333 n

end

end A352175.P12072668312133892401

/-!
# A352176: G.f. A(x) satisfies: 1 - x = Product_{n>=1} (1 + x^(2*n)*A(x)^2) / (1 + x^n*A(x)).

The programs for A352176, there is no canonical definition to state claims against.
-/

/-! ## A352176.P13186097930190764334

`ceil(A004277(A005774(n))/A004277(n+4))`
-/

namespace A352176.P13186097930190764334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004277 (A005774 n).toNat : ℚ) / (A004277 (n + 4) : ℚ)⌉

end

end A352176.P13186097930190764334

/-! ## A352176.P15876424070051432560

`A081753(A284676(n+2)+A131408(n+1))`
-/

namespace A352176.P15876424070051432560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A284676 (n + 2) + A131408 (n + 1)).toNat

end

end A352176.P15876424070051432560

/-! ## A352176.P5353387319293431804

`A081753(A131408(n+1)+A089792(2*n))`
-/

namespace A352176.P5353387319293431804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A131408 (n + 1) + A089792 (2 * n)).toNat

end

end A352176.P5353387319293431804

/-! ## A352176.P2274207047944277868

`A319315(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A352176.P2274207047944277868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A319315 (a (n - 1)).toNat + a (n - 1)

end

end A352176.P2274207047944277868

/-! ## A352176.P998899422483622922

`ceil(A008679(3*(2*A176501(n+1)-1))/log2(7))`
-/

namespace A352176.P998899422483622922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008679 (3 * (2 * A176501 (n + 1) - 1)).toNat : ℝ) / Real.logb 2 (7 : ℝ)⌉

end

end A352176.P998899422483622922

/-!
# A352177: a(n) is the number of symmetric Toeplitz anti-Hadamard matrices of order n whose sum of the inverse squares of their singular values is maximal.

The programs for A352177, the canonical program `A352177.P15061197474559679959` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352177 has offset 1).

The definition of A352177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352177.P15061197474559679959

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=1, a(5)=3, a(6)=1, a(7)=1, a(8)=2, a(9)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352177

/-- `a(n-1)` -/
def P15061197474559679959.Spec : Prop :=
  ∀ n, (P15061197474559679959.a n : ℤ) = A352177 (n + 1)

theorem P15061197474559679959.correct : P15061197474559679959.Spec := by
  intro n
  simp only [A352177, Nat.add_sub_cancel]

end A352177

/-!
# A352178: Let S = {t_1, t_2, ..., t_n} be a set of n distinct integers and consider the sums t_i + t_j (i

The programs for A352178, there is no canonical definition to state claims against.
-/

/-! ## A352178.P12540706635070246243

`∑[round(sqrt(n))+1-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A352178.P12540706635070246243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352178.P12540706635070246243

/-! ## A352178.P16752720618835525743

`A276611(∑[∑[∑[n]]])`
-/

namespace A352178.P16752720618835525743
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352178.P16752720618835525743

/-! ## A352178.P387374251263742023

`round(log(A006212(n+1)))`
-/

namespace A352178.P387374251263742023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A006212 (n + 1) : ℝ))

end

end A352178.P387374251263742023

/-! ## A352178.P1959746253950721280

`round(log(A162977(n+3)))`
-/

namespace A352178.P1959746253950721280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A162977 (n + 3) : ℝ))

end

end A352178.P1959746253950721280

/-! ## A352178.P4130434856136433948

`A347301(n+1)+char[4]`
-/

namespace A352178.P4130434856136433948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347301 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A352178.P4130434856136433948

/-!
# A352179: Numbers k such that the decimal expansion of 14^k begins with 14.

The programs for A352179, there is no canonical definition to state claims against.
-/

/-! ## A352179.P7305384462218799406

`∑[A326533(A035004(n+1)!)]`
-/

namespace A352179.P7305384462218799406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326533 (Nat.factorial (A035004 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352179.P7305384462218799406

/-! ## A352179.P4852461359835306542

`∑[A001333(A020639(5^n*Δ[n²]))]`
-/

namespace A352179.P4852461359835306542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A020639 ((5 ^ n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352179.P4852461359835306542

/-!
# A352180: a(n) = 9*A006190(n)+1.

The programs for A352180, the canonical program `A352180.P7692494567590223161` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352180 has offset 0).

The definition of A352180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*A006190(n)+1` (program `A352180.P7692494567590223161`, by `A352180.P7692494567590223161.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352180.P7692494567590223161

`9*A006190(n)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A352180

/-- `9*A006190(n)+1` -/
def P7692494567590223161.Spec : Prop :=
  ∀ n, P7692494567590223161.a n = A352180 n

theorem P7692494567590223161.correct : P7692494567590223161.Spec := by
  intro n
  simp only [A352180]

end A352180

/-! ## A352180.P6171720564796156927

`ogf((1+6x-10x^2)/(1-4x+2x^2+x^3))`
-/

namespace A352180.P6171720564796156927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -10] [1, -4, 2, 1] n

end

end A352180.P6171720564796156927

namespace A352180

/-- `ogf((1+6x-10x^2)/(1-4x+2x^2+x^3))` -/
def P6171720564796156927.Spec : Prop :=
  ∀ n, P6171720564796156927.a n = A352180 n

end A352180

/-! ## A352180.P14878982979544325303

`a(n-2)+3*(a(n-1)-1)` with `a(0)=1, a(1)=10`
-/

namespace A352180.P14878982979544325303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 2) + 3 * (a (n - 1) - 1)

end

end A352180.P14878982979544325303

namespace A352180

/-- `a(n-2)+3*(a(n-1)-1)` -/
def P14878982979544325303.Spec : Prop :=
  ∀ n, P14878982979544325303.a n = A352180 n

end A352180

/-! ## A352180.P2621417101890438062

`a(n-2)-3*(1-a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A352180.P2621417101890438062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 2) - 3 * (1 - a (n - 1))

end

end A352180.P2621417101890438062

namespace A352180

/-- `a(n-2)-3*(1-a(n-1))` -/
def P2621417101890438062.Spec : Prop :=
  ∀ n, P2621417101890438062.a n = A352180 n

end A352180

/-! ## A352180.P16305744784153400532

`a(n-2)+a(n-1)/(1-2/3)-3` with `a(0)=1, a(1)=10`
-/

namespace A352180.P16305744784153400532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 2) + a (n - 1) / (1 - (2 : ℚ) / 3) - 3

end

end A352180.P16305744784153400532

namespace A352180

/-- `a(n-2)+a(n-1)/(1-2/3)-3` -/
def P16305744784153400532.Spec : Prop :=
  ∀ n, P16305744784153400532.a n = (A352180 n : ℚ)

end A352180

/-! ## A352180.P9838084371388138121

`a(n-1)+a(n-1)+a(n-1)+a(n-2)-3` with `a(0)=1, a(1)=10`
-/

namespace A352180.P9838084371388138121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2))) - 3

end

end A352180.P9838084371388138121

namespace A352180

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)-3` -/
def P9838084371388138121.Spec : Prop :=
  ∀ n, P9838084371388138121.a n = A352180 n

end A352180

/-!
# A352181: a(n) = A200993(n)/2.

The programs for A352181, the canonical program `A352181.P14252209942141296081` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352181 has offset 0).

The definition of A352181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352181.P14252209942141296081

`99*a(n-1)-99*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=495`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A352181

/-- `99*a(n-1)-99*a(n-2)+a(n-3)` -/
def P14252209942141296081.Spec : Prop :=
  ∀ n, P14252209942141296081.a n = A352181 n

theorem P14252209942141296081.correct : P14252209942141296081.Spec := by
  intro n
  simp only [A352181]

end A352181

/-! ## A352181.P10310475969918353719

`A200993(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352181.P10310475969918353719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200993 n : ℚ) / 2

end

end A352181.P10310475969918353719

namespace A352181

/-- `A200993(n)/2` -/
def P10310475969918353719.Spec : Prop :=
  ∀ n, P10310475969918353719.a n = (A352181 n : ℚ)

end A352181

/-! ## A352181.P6126248440851054466

`A200994(n)/3`
-/

namespace A352181.P6126248440851054466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200994 n : ℚ) / 3

end

end A352181.P6126248440851054466

namespace A352181

/-- `A200994(n)/3` -/
def P6126248440851054466.Spec : Prop :=
  ∀ n, P6126248440851054466.a n = (A352181 n : ℚ)

end A352181

/-! ## A352181.P17863868492128027982

`5*A278620(n)`
-/

namespace A352181.P17863868492128027982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A278620 n

end

end A352181.P17863868492128027982

namespace A352181

/-- `5*A278620(n)` -/
def P17863868492128027982.Spec : Prop :=
  ∀ n, P17863868492128027982.a n = A352181 n

end A352181

/-! ## A352181.P6312421998882390739

`∑[98*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=5`
-/

namespace A352181.P6312421998882390739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  98 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352181.P6312421998882390739

namespace A352181

/-- `∑[98*a(n-1)-a(n-2)]` -/
def P6312421998882390739.Spec : Prop :=
  ∀ n, P6312421998882390739.a n = A352181 n

end A352181

/-! ## A352181.P12442876558696248760

`A352182(n)/6`
-/

namespace A352181.P12442876558696248760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352182 n : ℚ) / 6

end

end A352181.P12442876558696248760

namespace A352181

/-- `A352182(n)/6` -/
def P12442876558696248760.Spec : Prop :=
  ∀ n, P12442876558696248760.a n = (A352181 n : ℚ)

end A352181

/-! ## A352181.P6399723110772669672

`A045502(n)/8`
-/

namespace A352181.P6399723110772669672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045502 n : ℚ) / 8

end

end A352181.P6399723110772669672

namespace A352181

/-- `A045502(n)/8` -/
def P6399723110772669672.Spec : Prop :=
  ∀ n, P6399723110772669672.a n = (A352181 n : ℚ)

end A352181

/-! ## A352181.P12008980108610256075

`∑[A168520(n+1)/2]`
-/

namespace A352181.P12008980108610256075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168520 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352181.P12008980108610256075

namespace A352181

/-- `∑[A168520(n+1)/2]` -/
def P12008980108610256075.Spec : Prop :=
  ∀ n, P12008980108610256075.a n = (A352181 n : ℚ)

end A352181

/-! ## A352181.P16950090585943918746

`∑[A004189(2*n)/2]`
-/

namespace A352181.P16950090585943918746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352181.P16950090585943918746

namespace A352181

/-- `∑[A004189(2*n)/2]` -/
def P16950090585943918746.Spec : Prop :=
  ∀ n, P16950090585943918746.a n = (A352181 n : ℚ)

end A352181

/-! ## A352181.P965602445726467911

`C(A054318(n+1), 2)/2`
-/

namespace A352181.P965602445726467911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A054318 (n + 1)).toNat 2 : ℚ) / 2

end

end A352181.P965602445726467911

namespace A352181

/-- `C(A054318(n+1), 2)/2` -/
def P965602445726467911.Spec : Prop :=
  ∀ n, P965602445726467911.a n = (A352181 n : ℚ)

end A352181

/-!
# A352182: Twice A200994.

The programs for A352182, there is no canonical definition to state claims against.
-/

/-! ## A352182.P12268066022851372585

`∑[98*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=30`
-/

namespace A352182.P12268066022851372585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 30] fun n f1 =>
  98 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352182.P12268066022851372585

/-! ## A352182.P11971045598432286689

`2*A200994(n)`
-/

namespace A352182.P11971045598432286689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200994 n

end

end A352182.P11971045598432286689

/-! ## A352182.P5481406706517710374

`3*A200993(n)`
-/

namespace A352182.P5481406706517710374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A200993 n

end

end A352182.P5481406706517710374

/-! ## A352182.P10737963050239030567

`6*A352181(n)`
-/

namespace A352182.P10737963050239030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A352181 n

end

end A352182.P10737963050239030567

/-! ## A352182.P14137485014023237742

`3/4*A045502(n)`
-/

namespace A352182.P14137485014023237742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A045502 n : ℚ)

end

end A352182.P14137485014023237742

/-! ## A352182.P17574323962990481662

`floor((A054320(n)/2)²)`
-/

namespace A352182.P17574323962990481662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A054320 n : ℚ) / 2) ^ 2⌋

end

end A352182.P17574323962990481662

/-! ## A352182.P8227222951691713276

`∑[A122653(2*n)/2]`
-/

namespace A352182.P8227222951691713276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352182.P8227222951691713276

/-! ## A352182.P12906399477754349919

`(A219113(n+1)-1)/2`
-/

namespace A352182.P12906399477754349919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219113 (n + 1) - 1 : ℚ) / 2

end

end A352182.P12906399477754349919

/-! ## A352182.P2831348694731778331

`(A006244(n+1)-1)/3`
-/

namespace A352182.P2831348694731778331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006244 (n + 1) - 1 : ℚ) / 3

end

end A352182.P2831348694731778331

/-! ## A352182.P12942256943468411070

`(A006061(n+1)-1)/4`
-/

namespace A352182.P12942256943468411070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006061 (n + 1) - 1 : ℚ) / 4

end

end A352182.P12942256943468411070

/-!
# A352184: Coxeter-Catalan numbers for the Coxeter groups A_0, A_1, A_2, A_3 = D_3, D_4, D_5, E_6, E_7, E_8.

The programs for A352184, there is no canonical definition to state claims against.
-/

/-! ## A352184.P10322594258815880898

`A087065(a(n-1))+floor(sqrt(n))²` with `a(0)=1`
-/

namespace A352184.P10322594258815880898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087065 (a (n - 1)).toNat + (Nat.sqrt n ^ 2 : ℤ)

end

end A352184.P10322594258815880898

/-! ## A352184.P1007845571126937305

`A137442(A116704(n+1))`
-/

namespace A352184.P1007845571126937305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137442 (A116704 (n + 1)).toNat

end

end A352184.P1007845571126937305

/-!
# A352185: a(n) = smallest integer m for which there is an integer k, with 0 < k < m and gcd(k,m)=1, such that the arithmetic progression m+k, 2*m+k, ..., n*m+k contains only composite numbers.

The programs for A352185, there is no canonical definition to state claims against.
-/

/-! ## A352185.P12703862420970897798

`or(A013632(A008862(n)), A020484(n))`
-/

namespace A352185.P12703862420970897798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013632 (A008862 n).toNat) (A020484 n)

end

end A352185.P12703862420970897798

/-! ## A352185.P8562305445994310286

`or(A013632(A008862(n)), A151800(2*n+1))`
-/

namespace A352185.P8562305445994310286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013632 (A008862 n).toNat) (A151800 (2 * n + 1))

end

end A352185.P8562305445994310286

/-! ## A352185.P15448708765959781499

`or(A007918(2*(n+1)), A012257(A352917(n+1)))`
-/

namespace A352185.P15448708765959781499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007918 (2 * (n + 1))) (A012257 (A352917 (n + 1)).toNat)

end

end A352185.P15448708765959781499

/-! ## A352185.P15038267336829319298

`or(A151800(2*(n+1)), A331847(A374989(n)))`
-/

namespace A352185.P15038267336829319298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151800 (2 * (n + 1))) (A331847 (A374989 n).toNat)

end

end A352185.P15038267336829319298

/-!
# A352187: a(1)=1, a(2)=2; thereafter, a(n) is the smallest number m not yet in the sequence such that gcd(m,a(n-1)) > 1 and gcd(m,a(n-2))=1, except that the second condition is ignored if it would imply that no choice for m were possible.

The programs for A352187, there is no canonical definition to state claims against.
-/

/-! ## A352187.P13109718795148738731

`A057427(A335143(n+1))*A382868(n+1)`
-/

namespace A352187.P13109718795148738731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A335143 (n + 1)).toNat * A382868 (n + 1)

end

end A352187.P13109718795148738731

/-! ## A352187.P15093182220041488485

`A322585(A382878(n+1))*A382868(n+1)`
-/

namespace A352187.P15093182220041488485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A382878 (n + 1)).toNat * A382868 (n + 1)

end

end A352187.P15093182220041488485

/-! ## A352187.P13443003857668547481

`A382868(n+1)+A302048(A000041(n+3))`
-/

namespace A352187.P13443003857668547481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382868 (n + 1) + A302048 (A000041 (n + 3)).toNat

end

end A352187.P13443003857668547481

/-! ## A352187.P7820373564867486345

`A382868(n+1)+A007814(A005846(2*n+5))`
-/

namespace A352187.P7820373564867486345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382868 (n + 1) + A007814 (A005846 (2 * n + 5)).toNat

end

end A352187.P7820373564867486345

/-! ## A352187.P18205303321035354233

`A247379(A247383(A382868(n+1)))`
-/

namespace A352187.P18205303321035354233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247379 (A247383 (A382868 (n + 1)).toNat).toNat

end

end A352187.P18205303321035354233

/-!
# A352188: When n appears in A352187, or -1 if n never appears.

The programs for A352188, there is no canonical definition to state claims against.
-/

/-! ## A352188.P1053905529761568612

`A098452(A064664(n+1))`
-/

namespace A352188.P1053905529761568612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098452 (A064664 (n + 1)).toNat

end

end A352188.P1053905529761568612

/-! ## A352188.P1060189512129900869

`A098452(A064421(n+1)+1)`
-/

namespace A352188.P1060189512129900869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098452 (A064421 (n + 1) + 1).toNat

end

end A352188.P1060189512129900869

/-! ## A352188.P17495779127232253855

`A086073(A000638(n))+A064664(n+1)`
-/

namespace A352188.P17495779127232253855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086073 (A000638 n).toNat + A064664 (n + 1)

end

end A352188.P17495779127232253855

/-! ## A352188.P12401367897511591702

`A102683(A004733(n))+A064664(n+1)`
-/

namespace A352188.P12401367897511591702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A004733 n).toNat + A064664 (n + 1)

end

end A352188.P12401367897511591702

/-! ## A352188.P13664969481612146522

`A064664(n+1)+A000122(A129955(n))`
-/

namespace A352188.P13664969481612146522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1) + A000122 (A129955 n).toNat

end

end A352188.P13664969481612146522

/-!
# A352189: Index of n-th prime in A352187.

The programs for A352189, there is no canonical definition to state claims against.
-/

/-! ## A352189.P12844155645902682050

`A352193(n+1)+A100484(n+1)`
-/

namespace A352189.P12844155645902682050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352193 (n + 1) + A100484 (n + 1)

end

end A352189.P12844155645902682050

/-! ## A352189.P1636425693190111915

`record[A352188(n+2)]`
-/

namespace A352189.P1636425693190111915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352189.P1636425693190111915

/-! ## A352189.P399830316920333530

`A352188(A000040(n+1))`
-/

namespace A352189.P399830316920333530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (A000040 (n + 1)).toNat

end

end A352189.P399830316920333530

/-! ## A352189.P11259094981433842797

`A352188(A008578(n+2))`
-/

namespace A352189.P11259094981433842797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (A008578 (n + 2)).toNat

end

end A352189.P11259094981433842797

/-! ## A352189.P11214740513931483501

`A352188(A182986(n+2))`
-/

namespace A352189.P11214740513931483501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (A182986 (n + 2)).toNat

end

end A352189.P11214740513931483501

/-! ## A352189.P5809406445578225222

`A352188(p?[A057637(n+1)])`
-/

namespace A352189.P5809406445578225222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A352189.P5809406445578225222

/-! ## A352189.P2771469316295827803

`A352188(A100484(n+1)/2)`
-/

namespace A352189.P2771469316295827803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A352189.P2771469316295827803

/-! ## A352189.P1633351790115121840

`A352188(A001747(n+2)/2)`
-/

namespace A352189.P1633351790115121840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A352189.P1633351790115121840

/-! ## A352189.P18245725561589410620

`A352188(record[A006530(2*or(1, n))])`
-/

namespace A352189.P18245725561589410620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352189.P18245725561589410620

/-!
# A352190: 

The programs for A352190, there is no canonical definition to state claims against.
-/

/-! ## A352190.P14740018415789339521

`A008578(n+1)%(9*(n+2))`
-/

namespace A352190.P14740018415789339521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) (9 * (n + 2) : ℤ)

end

end A352190.P14740018415789339521

/-! ## A352190.P16609268705965810182

`record[A020639(n+1)]%record[xor(7, n)]`
-/

namespace A352190.P16609268705965810182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A352190.P16609268705965810182

/-! ## A352190.P13911483372323264923

`record[n+2-A001222(n+1)!^5]`
-/

namespace A352190.P13911483372323264923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.factorial (A001222 (n + 1)).toNat ^ 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352190.P13911483372323264923

/-! ## A352190.P8946338013895664544

`filter[A081998(n), A174897(#)]`
-/

namespace A352190.P8946338013895664544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A352190.P8946338013895664544

/-! ## A352190.P3989126086781317185

`filter[A117288(n+1), A174897(#)]`
-/

namespace A352190.P3989126086781317185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A352190.P3989126086781317185

/-! ## A352190.P8930803571187957533

`filter[A028691(n+1), A294905(#)]`
-/

namespace A352190.P8930803571187957533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A352190.P8930803571187957533

/-! ## A352190.P226753711226210419

`filter[A036116(n+1), A297086(#)]`
-/

namespace A352190.P226753711226210419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A352190.P226753711226210419

/-! ## A352190.P185938043558331468

`filter[A026416(n+1), A323152(#)]`
-/

namespace A352190.P185938043558331468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A352190.P185938043558331468

/-! ## A352190.P11583267954595126696

`filter[A028691(n+1), A323152(#)]`
-/

namespace A352190.P11583267954595126696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A352190.P11583267954595126696

/-! ## A352190.P11392334822782880372

`filter[A343983(n+1), A008966(#)]`
-/

namespace A352190.P11392334822782880372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A352190.P11392334822782880372

/-! ## A352190.P8562026456153846237

`filter[A036116(n+1), A323152(#)]`
-/

namespace A352190.P8562026456153846237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A352190.P8562026456153846237

/-! ## A352190.P4782307622413423826

`filter[A028691(n+1), A353787(#)]`
-/

namespace A352190.P4782307622413423826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A352190.P4782307622413423826

/-! ## A352190.P12707737018916445886

`∩[A117283(n+1), A260442(n)]`
-/

namespace A352190.P12707737018916445886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352190.P12707737018916445886

/-!
# A352191: Records in A352187.

The programs for A352191, there is no canonical definition to state claims against.
-/

/-! ## A352191.P10747198463934218768

`record[A352187(n+1)]`
-/

namespace A352191.P10747198463934218768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352191.P10747198463934218768

/-! ## A352191.P3605463720814245127

`A352187(A352192(n+1))`
-/

namespace A352191.P3605463720814245127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352187 (A352192 (n + 1)).toNat

end

end A352191.P3605463720814245127

/-! ## A352191.P13378457457711892191

`record[A357963(n+1)]%A065106(n+1)`
-/

namespace A352191.P13378457457711892191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A065106 (n + 1))

end

end A352191.P13378457457711892191

/-! ## A352191.P1050931395980240170

`record[A357963(n+1)%A250237(n+1)]`
-/

namespace A352191.P1050931395980240170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357963 (n + 1)) (A250237 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352191.P1050931395980240170

/-! ## A352191.P3765861924901911703

`record[A357963(n+1)+A027656(A073648(2*(n+2)))]`
-/

namespace A352191.P3765861924901911703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357963 (n + 1) + A027656 (A073648 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352191.P3765861924901911703

/-!
# A352192: Indices of records in A352187.

The programs for A352192, there is no canonical definition to state claims against.
-/

/-! ## A352192.P8681941129249576873

`A352188(A352191(n+1))`
-/

namespace A352192.P8681941129249576873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (A352191 (n + 1)).toNat

end

end A352192.P8681941129249576873

/-! ## A352192.P2027142633715215778

`A352188(record[A352187(n+1)])`
-/

namespace A352192.P2027142633715215778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352192.P2027142633715215778

/-! ## A352192.P12277580547794612355

`∑[A181935(A138495(n))]`
-/

namespace A352192.P12277580547794612355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A138495 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352192.P12277580547794612355

/-! ## A352192.P1053859561639651148

`∑[A181935(Δ[A138477(n)])]`
-/

namespace A352192.P1053859561639651148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352192.P1053859561639651148

/-! ## A352192.P11179036068235546740

`∑[∏{e}[record[A060002(n)], #]]`
-/

namespace A352192.P11179036068235546740
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352192.P11179036068235546740

/-!
# A352193: It seems that the n-th prime p will appear in A352187 at around position 2*p; if in fact A352187(w) = p then set a(n) = w-2*p, or set a(n) = -1 if p never appears in A352187.

The programs for A352193, there is no canonical definition to state claims against.
-/

/-! ## A352193.P17647176491804998269

`A352189(n+1)-A100484(n+1)`
-/

namespace A352193.P17647176491804998269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352189 (n + 1) - A100484 (n + 1)

end

end A352193.P17647176491804998269

/-! ## A352193.P8718060362031820651

`A352189(n+1)-2*A000040(n+1)`
-/

namespace A352193.P8718060362031820651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352189 (n + 1) - 2 * A000040 (n + 1)

end

end A352193.P8718060362031820651

/-! ## A352193.P1036820174591590627

`A352189(n+1)-A005843(A000040(n+1))`
-/

namespace A352193.P1036820174591590627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352189 (n + 1) - A005843 (A000040 (n + 1)).toNat

end

end A352193.P1036820174591590627

/-! ## A352193.P12035007772708372350

`A352189(n+1)-A103517(A008864(n+1)-2)`
-/

namespace A352193.P12035007772708372350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352189 (n + 1) - A103517 (A008864 (n + 1) - 2).toNat

end

end A352193.P12035007772708372350

/-! ## A352193.P15144381741442854629

`record[A352188(n+2)]-A100484(n+1)`
-/

namespace A352193.P15144381741442854629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A100484 (n + 1)

end

end A352193.P15144381741442854629

/-! ## A352193.P5642253728490507625

`record[A352188(n+2)]-A001747(n+2)`
-/

namespace A352193.P5642253728490507625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001747 (n + 2)

end

end A352193.P5642253728490507625

/-! ## A352193.P2609241795803697481

`A352188(A000040(n+1))-A100484(n+1)`
-/

namespace A352193.P2609241795803697481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (A000040 (n + 1)).toNat - A100484 (n + 1)

end

end A352193.P2609241795803697481

/-! ## A352193.P4808527366035075555

`A352188(A008578(n+2))-A100484(n+1)`
-/

namespace A352193.P4808527366035075555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (A008578 (n + 2)).toNat - A100484 (n + 1)

end

end A352193.P4808527366035075555

/-! ## A352193.P11806759627555107205

`A352188(p?[A057637(n+1)])-A100484(n+1)`
-/

namespace A352193.P11806759627555107205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A100484 (n + 1)

end

end A352193.P11806759627555107205

/-! ## A352193.P6901708667357042670

`A352188(A100484(n+1)/2)-A100484(n+1)`
-/

namespace A352193.P6901708667357042670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352188 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat - A100484 (n + 1)

end

end A352193.P6901708667357042670

/-!
# A352194: It seems that the n-th prime p appears in A064413 at around position 2*p; if in fact A064413(w) = p then set a(n) = 2*p-w.

The programs for A352194, there is no canonical definition to state claims against.
-/

/-! ## A352194.P10189182712771687316

`A268611(A064955(n+1))`
-/

namespace A352194.P10189182712771687316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268611 (A064955 (n + 1)).toNat

end

end A352194.P10189182712771687316

/-! ## A352194.P3937496260741356654

`A268611(A064423(n+1)+1)`
-/

namespace A352194.P3937496260741356654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268611 (A064423 (n + 1) + 1).toNat

end

end A352194.P3937496260741356654

/-! ## A352194.P6345490129107556730

`A100484(n+1)-A064955(n+1)`
-/

namespace A352194.P6345490129107556730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A064955 (n + 1)

end

end A352194.P6345490129107556730

/-! ## A352194.P9864861491630381079

`A001747(n+2)-A064955(n+1)`
-/

namespace A352194.P9864861491630381079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - A064955 (n + 1)

end

end A352194.P9864861491630381079

/-! ## A352194.P16599696590647538437

`2*A000040(n+1)-A064955(n+1)`
-/

namespace A352194.P16599696590647538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A064955 (n + 1)

end

end A352194.P16599696590647538437

/-! ## A352194.P5188875049415616201

`2*p?[A064413(n+1)]-A064955(n+1)`
-/

namespace A352194.P5188875049415616201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064955 (n + 1)

end

end A352194.P5188875049415616201

/-! ## A352194.P18212391785161545413

`2*p?[A169847(n+1)]-A064955(n+1)`
-/

namespace A352194.P18212391785161545413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A064955 (n + 1)

end

end A352194.P18212391785161545413

/-! ## A352194.P5597973904819891814

`A100484(n+1)-A064664(A100484(n+1)/2)`
-/

namespace A352194.P5597973904819891814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A064664 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A352194.P5597973904819891814

/-! ## A352194.P13163455113108512674

`A008578(n+2)+A008578(n+2)-A064955(n+1)`
-/

namespace A352194.P13163455113108512674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (A008578 (n + 2) - A064955 (n + 1))

end

end A352194.P13163455113108512674

/-!
# A352195: It seems that the n-th prime p appears in A098550 at around position 2*p; if in fact A098550(w) = p then set a(n) =w-2*p.

The programs for A352195, there is no canonical definition to state claims against.
-/

/-! ## A352195.P9299284202853468789

`A251239(n+1)-A100484(n+1)`
-/

namespace A352195.P9299284202853468789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1) - A100484 (n + 1)

end

end A352195.P9299284202853468789

/-! ## A352195.P14493231482910839289

`A251239(n+1)-2*A000040(n+1)`
-/

namespace A352195.P14493231482910839289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1) - 2 * A000040 (n + 1)

end

end A352195.P14493231482910839289

/-! ## A352195.P4677751744690187333

`A251239(n+1)-A004277(A000040(n+1))`
-/

namespace A352195.P4677751744690187333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1) - A004277 (A000040 (n + 1)).toNat

end

end A352195.P4677751744690187333

/-! ## A352195.P8647290509461894283

`A251239(n+1)-A103517(A006093(n+1))`
-/

namespace A352195.P8647290509461894283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1) - A103517 (A006093 (n + 1)).toNat

end

end A352195.P8647290509461894283

/-! ## A352195.P962438212004416981

`A251239(n+1)-A005843(record[A020639(n+2)])`
-/

namespace A352195.P962438212004416981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251239 (n + 1) - A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352195.P962438212004416981

/-!
# A352196: a(n) = number of steps for the standard mod-n Ackermann function to stabilize to a set consisting of only one value, or -1 if it does not stabilize.

The programs for A352196, there is no canonical definition to state claims against.
-/

/-! ## A352196.P117546334070725862

`∑{e}[n*A267695(2*n+3), #]`
-/

namespace A352196.P117546334070725862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A267695 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352196.P117546334070725862

/-! ## A352196.P14307172988763157218

`A131576(3*(n+1)/2^val(n+1, 2)*p?[round(8*n/7)]²)`
-/

namespace A352196.P14307172988763157218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℚ))).toNat

end

end A352196.P14307172988763157218

/-! ## A352196.P9615153327853758263

`A325282(A353860(n)+A005811(n))`
-/

namespace A352196.P9615153327853758263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325282 (A353860 n + A005811 n).toNat

end

end A352196.P9615153327853758263

/-! ## A352196.P13101621571610736678

`A305822(A000265(n+1)*A173033(n))`
-/

namespace A352196.P13101621571610736678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305822 (A000265 (n + 1) * A173033 n).toNat

end

end A352196.P13101621571610736678

/-!
# A352198: Where n-th prime appears in A350359, or -1 if n-th prime does not appear.

The programs for A352198, there is no canonical definition to state claims against.
-/

/-! ## A352198.P16372915113387561617

`A352197(Δ[A007504(n)])`
-/

namespace A352198.P16372915113387561617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (f1 (n + 1) - f1 n).toNat

end

end A352198.P16372915113387561617

/-! ## A352198.P17509395404152288078

`A352197(A000040(n+1))`
-/

namespace A352198.P17509395404152288078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (A000040 (n + 1)).toNat

end

end A352198.P17509395404152288078

/-! ## A352198.P3229651101943329385

`A352197(A008578(n+2))`
-/

namespace A352198.P3229651101943329385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (A008578 (n + 2)).toNat

end

end A352198.P3229651101943329385

/-! ## A352198.P17789391349593583103

`A352197(A182986(n+2))`
-/

namespace A352198.P17789391349593583103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (A182986 (n + 2)).toNat

end

end A352198.P17789391349593583103

/-! ## A352198.P17081596619382973828

`A352197(abs(Δ[A022837(n)]))`
-/

namespace A352198.P17081596619382973828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 |f1 (n + 1) - f1 n|.toNat

end

end A352198.P17081596619382973828

/-! ## A352198.P9988332685511025320

`A352197(∑[A054541(n+1)])`
-/

namespace A352198.P9988332685511025320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352198.P9988332685511025320

/-! ## A352198.P11531335859436764084

`A352197(record[A006530(n+2)])`
-/

namespace A352198.P11531335859436764084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352198.P11531335859436764084

/-! ## A352198.P12849117537263596330

`A352197(record[A020639(n+2)])`
-/

namespace A352198.P12849117537263596330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352198.P12849117537263596330

/-! ## A352198.P18045367442288351459

`A352197(record[A014963(n+2)])`
-/

namespace A352198.P18045367442288351459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352197 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352198.P18045367442288351459

