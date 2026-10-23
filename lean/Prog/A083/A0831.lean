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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A083100: a(n) = 2*a(n-1) + 7*a(n-2).

The programs for A083100, the canonical program `A083100.P6437834124928167504` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083100 has offset 0).

The definition of A083100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+7*a(n-2)` (program `A083100.P6437834124928167504`, by `A083100.P6437834124928167504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083100.P6437834124928167504

`2*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083100

/-- `2*a(n-1)+7*a(n-2)` -/
def P6437834124928167504.Spec : Prop :=
  ∀ n, (P6437834124928167504.a n : ℤ) = A083100 n

theorem P6437834124928167504.correct : P6437834124928167504.Spec := by
  intro n
  simp only [A083100]

end A083100

/-! ## A083100.P16953249189560147274

`ogf((1+7x)/(1-2x-7x^2))`
-/

namespace A083100.P16953249189560147274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -2, -7] n

end

end A083100.P16953249189560147274

namespace A083100

/-- `ogf((1+7x)/(1-2x-7x^2))` -/
def P16953249189560147274.Spec : Prop :=
  ∀ n, P16953249189560147274.a n = A083100 n

end A083100

/-! ## A083100.P12727381727994245823

`A084058(n+1)`
-/

namespace A083100.P12727381727994245823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (n + 1)

end

end A083100.P12727381727994245823

namespace A083100

/-- `A084058(n+1)` -/
def P12727381727994245823.Spec : Prop :=
  ∀ n, P12727381727994245823.a n = A083100 n

end A083100

/-! ## A083100.P16423378170718375318

`∑[A291001(n)]+1`
-/

namespace A083100.P16423378170718375318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083100.P16423378170718375318

namespace A083100

/-- `∑[A291001(n)]+1` -/
def P16423378170718375318.Spec : Prop :=
  ∀ n, P16423378170718375318.a n = A083100 n

end A083100

/-! ## A083100.P8217169562258279282

`∑[8*A015519(n)]+1`
-/

namespace A083100.P8217169562258279282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A015519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A083100.P8217169562258279282

namespace A083100

/-- `∑[8*A015519(n)]+1` -/
def P8217169562258279282.Spec : Prop :=
  ∀ n, P8217169562258279282.a n = A083100 n

end A083100

/-! ## A083100.P3435911384993377923

`2*A084136(n+1)-1`
-/

namespace A083100.P3435911384993377923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084136 (n + 1) - 1

end

end A083100.P3435911384993377923

namespace A083100

/-- `2*A084136(n+1)-1` -/
def P3435911384993377923.Spec : Prop :=
  ∀ n, P3435911384993377923.a n = A083100 n

end A083100

/-! ## A083100.P10893949447992581689

`or(1, ∑[4*A305492(n)]+1)`
-/

namespace A083100.P10893949447992581689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A305492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083100.P10893949447992581689

namespace A083100

/-- `or(1, ∑[4*A305492(n)]+1)` -/
def P10893949447992581689.Spec : Prop :=
  ∀ n, P10893949447992581689.a n = A083100 n

end A083100

/-! ## A083100.P16075294353893582869

`record[A084058(A008611(n))]`
-/

namespace A083100.P16075294353893582869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083100.P16075294353893582869

namespace A083100

/-- `record[A084058(A008611(n))]` -/
def P16075294353893582869.Spec : Prop :=
  ∀ n, P16075294353893582869.a n = A083100 n

end A083100

/-! ## A083100.P17822276898449876122

`record[A084058(A008615(n))]`
-/

namespace A083100.P17822276898449876122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083100.P17822276898449876122

namespace A083100

/-- `record[A084058(A008615(n))]` -/
def P17822276898449876122.Spec : Prop :=
  ∀ n, P17822276898449876122.a n = A083100 n

end A083100

/-! ## A083100.P12045314283963360656

`record[A084058(A008624(n))]`
-/

namespace A083100.P12045314283963360656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083100.P12045314283963360656

namespace A083100

/-- `record[A084058(A008624(n))]` -/
def P12045314283963360656.Spec : Prop :=
  ∀ n, P12045314283963360656.a n = A083100 n

end A083100

/-! ## A083100.P6708994794002807602

`record[A084058(A028242(n))]`
-/

namespace A083100.P6708994794002807602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083100.P6708994794002807602

namespace A083100

/-- `record[A084058(A028242(n))]` -/
def P6708994794002807602.Spec : Prop :=
  ∀ n, P6708994794002807602.a n = A083100 n

end A083100

/-! ## A083100.P2420626549089496383

`record[A084058(A057979(n))]`
-/

namespace A083100.P2420626549089496383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083100.P2420626549089496383

namespace A083100

/-- `record[A084058(A057979(n))]` -/
def P2420626549089496383.Spec : Prop :=
  ∀ n, P2420626549089496383.a n = A083100 n

end A083100

/-! ## A083100.P9044579789067268713

`record[A084058(A058207(n))]`
-/

namespace A083100.P9044579789067268713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084058 (A058207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083100.P9044579789067268713

namespace A083100

/-- `record[A084058(A058207(n))]` -/
def P9044579789067268713.Spec : Prop :=
  ∀ n, P9044579789067268713.a n = A083100 n

end A083100

/-! ## A083100.P3368555926514165262

`A305492(n)+A164544(n)`
-/

namespace A083100.P3368555926514165262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305492 n + A164544 n

end

end A083100.P3368555926514165262

namespace A083100

/-- `A305492(n)+A164544(n)` -/
def P3368555926514165262.Spec : Prop :=
  ∀ n, P3368555926514165262.a n = A083100 n

end A083100

/-! ## A083100.P528630300453680391

`A096980(n)+2*A305492(n)`
-/

namespace A083100.P528630300453680391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096980 n + 2 * A305492 n

end

end A083100.P528630300453680391

namespace A083100

/-- `A096980(n)+2*A305492(n)` -/
def P528630300453680391.Spec : Prop :=
  ∀ n, P528630300453680391.a n = A083100 n

end A083100

/-! ## A083100.P7644445907055459581

`A096980(n)+A291001(n)/2`
-/

namespace A083100.P7644445907055459581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096980 n : ℚ) + (A291001 n : ℚ) / 2

end

end A083100.P7644445907055459581

namespace A083100

/-- `A096980(n)+A291001(n)/2` -/
def P7644445907055459581.Spec : Prop :=
  ∀ n, P7644445907055459581.a n = (A083100 n : ℚ)

end A083100

/-! ## A083100.P87334960737956936

`A015519(n+1)+7*A015519(n)`
-/

namespace A083100.P87334960737956936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + 7 * A015519 n

end

end A083100.P87334960737956936

namespace A083100

/-- `A015519(n+1)+7*A015519(n)` -/
def P87334960737956936.Spec : Prop :=
  ∀ n, P87334960737956936.a n = A083100 n

end A083100

/-! ## A083100.P14724013555472667351

`Δ[A015519(n+1)]`
-/

namespace A083100.P14724013555472667351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083100.P14724013555472667351

namespace A083100

/-- `Δ[A015519(n+1)]` -/
def P14724013555472667351.Spec : Prop :=
  ∀ n, P14724013555472667351.a n = A083100 n

end A083100

/-! ## A083100.P9147305350373106210

`Δ[Δ[A084150(n+1)]]`
-/

namespace A083100.P9147305350373106210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083100.P9147305350373106210

namespace A083100

/-- `Δ[Δ[A084150(n+1)]]` -/
def P9147305350373106210.Spec : Prop :=
  ∀ n, P9147305350373106210.a n = A083100 n

end A083100

/-! ## A083100.P3907341907262441154

`Δ[A305492(n+1)/2]`
-/

namespace A083100.P3907341907262441154
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305492 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083100.P3907341907262441154

namespace A083100

/-- `Δ[A305492(n+1)/2]` -/
def P3907341907262441154.Spec : Prop :=
  ∀ n, P3907341907262441154.a n = (A083100 n : ℚ)

end A083100

/-!
# A083101: a(n) = 2*a(n-1) + 10*a(n-2), with a(0) = 1, a(1) = 12.

The programs for A083101, the canonical program `A083101.P14217943093821676573` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083101 has offset 0).

The definition of A083101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+10*a(n-2)` (program `A083101.P14217943093821676573`, by `A083101.P14217943093821676573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083101.P14217943093821676573

`2*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083101

/-- `2*a(n-1)+10*a(n-2)` -/
def P14217943093821676573.Spec : Prop :=
  ∀ n, (P14217943093821676573.a n : ℤ) = A083101 n

theorem P14217943093821676573.correct : P14217943093821676573.Spec := by
  intro n
  simp only [A083101]

end A083101

/-! ## A083101.P2662079451174112717

`ogf((1+10x)/(1-2x-10x^2))`
-/

namespace A083101.P2662079451174112717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, -2, -10] n

end

end A083101.P2662079451174112717

namespace A083101

/-- `ogf((1+10x)/(1-2x-10x^2))` -/
def P2662079451174112717.Spec : Prop :=
  ∀ n, P2662079451174112717.a n = A083101 n

end A083101

/-! ## A083101.P1939202856419939869

`Δ[A083102(n)]`
-/

namespace A083101.P1939202856419939869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083101.P1939202856419939869

namespace A083101

/-- `Δ[A083102(n)]` -/
def P1939202856419939869.Spec : Prop :=
  ∀ n, P1939202856419939869.a n = A083101 n

end A083101

/-! ## A083101.P10558916120342801539

`A133294(n+1)`
-/

namespace A083101.P10558916120342801539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133294 (n + 1)

end

end A083101.P10558916120342801539

namespace A083101

/-- `A133294(n+1)` -/
def P10558916120342801539.Spec : Prop :=
  ∀ n, P10558916120342801539.a n = A083101 n

end A083101

/-! ## A083101.P4095564955059273987

`A127261(n+1)/2`
-/

namespace A083101.P4095564955059273987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127261 (n + 1) : ℚ) / 2

end

end A083101.P4095564955059273987

namespace A083101

/-- `A127261(n+1)/2` -/
def P4095564955059273987.Spec : Prop :=
  ∀ n, P4095564955059273987.a n = (A083101 n : ℚ)

end A083101

/-! ## A083101.P8394439010446135007

`Δ[A274526(n+1)/2]`
-/

namespace A083101.P8394439010446135007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274526 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083101.P8394439010446135007

namespace A083101

/-- `Δ[A274526(n+1)/2]` -/
def P8394439010446135007.Spec : Prop :=
  ∀ n, P8394439010446135007.a n = (A083101 n : ℚ)

end A083101

/-! ## A083101.P14853525289540436843

`record[A133294(A008612(n))]`
-/

namespace A083101.P14853525289540436843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133294 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083101.P14853525289540436843

namespace A083101

/-- `record[A133294(A008612(n))]` -/
def P14853525289540436843.Spec : Prop :=
  ∀ n, P14853525289540436843.a n = A083101 n

end A083101

/-! ## A083101.P8705960568707707724

`A060546(n)*A083334(n)`
-/

namespace A083101.P8705960568707707724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A083334 n

end

end A083101.P8705960568707707724

namespace A083101

/-- `A060546(n)*A083334(n)` -/
def P8705960568707707724.Spec : Prop :=
  ∀ n, P8705960568707707724.a n = A083101 n

end A083101

/-! ## A083101.P16138484090444084773

`A083102(n+1)-A083102(n)`
-/

namespace A083101.P16138484090444084773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083102 (n + 1) - A083102 n

end

end A083101.P16138484090444084773

namespace A083101

/-- `A083102(n+1)-A083102(n)` -/
def P16138484090444084773.Spec : Prop :=
  ∀ n, P16138484090444084773.a n = A083101 n

end A083101

/-! ## A083101.P14843459705591051270

`Δ[sqrt(A144044(n+1))]`
-/

namespace A083101.P14843459705591051270
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A144044 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083101.P14843459705591051270

namespace A083101

/-- `Δ[sqrt(A144044(n+1))]` -/
def P14843459705591051270.Spec : Prop :=
  ∀ n, P14843459705591051270.a n = (A083101 n : ℝ)

end A083101

/-!
# A083102: a(n) = 2*a(n-1) + 10*a(n-2), with a(0) = 1, a(1) = 2.

The programs for A083102, the canonical program `A083102.P7694633354003405476` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083102 has offset 0).

The definition of A083102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+10*a(n-2)` (program `A083102.P7694633354003405476`, by `A083102.P7694633354003405476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083102.P7694633354003405476

`2*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083102

/-- `2*a(n-1)+10*a(n-2)` -/
def P7694633354003405476.Spec : Prop :=
  ∀ n, (P7694633354003405476.a n : ℤ) = A083102 n

theorem P7694633354003405476.correct : P7694633354003405476.Spec := by
  intro n
  simp only [A083102]

end A083102

/-! ## A083102.P608572659984249033

`ogf(1/(1-2x-10x^2))`
-/

namespace A083102.P608572659984249033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -10] n

end

end A083102.P608572659984249033

namespace A083102

/-- `ogf(1/(1-2x-10x^2))` -/
def P608572659984249033.Spec : Prop :=
  ∀ n, P608572659984249033.a n = A083102 n

end A083102

/-! ## A083102.P14833755864954119435

`2*(2*3*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A083102.P14833755864954119435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * (3 * a (n - 2)) - (a (n - 2) - a (n - 1)))

end

end A083102.P14833755864954119435

namespace A083102

/-- `2*(2*3*a(n-2)-(a(n-2)-a(n-1)))` -/
def P14833755864954119435.Spec : Prop :=
  ∀ n, P14833755864954119435.a n = A083102 n

end A083102

/-! ## A083102.P4040257099726852205

`a(n-2)+a(n-1)+a(n-1)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=2`
-/

namespace A083102.P4040257099726852205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 1) + (a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2))

end

end A083102.P4040257099726852205

namespace A083102

/-- `a(n-2)+a(n-1)+a(n-1)+a(n-2)/(1/3)²` -/
def P4040257099726852205.Spec : Prop :=
  ∀ n, P4040257099726852205.a n = (A083102 n : ℚ)

end A083102

/-! ## A083102.P12424169343957448449

`∑[A133294(n)]`
-/

namespace A083102.P12424169343957448449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083102.P12424169343957448449

namespace A083102

/-- `∑[A133294(n)]` -/
def P12424169343957448449.Spec : Prop :=
  ∀ n, P12424169343957448449.a n = A083102 n

end A083102

/-! ## A083102.P9538350820248852192

`∑[A127261(n)/2]`
-/

namespace A083102.P9538350820248852192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127261 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083102.P9538350820248852192

namespace A083102

/-- `∑[A127261(n)/2]` -/
def P9538350820248852192.Spec : Prop :=
  ∀ n, P9538350820248852192.a n = (A083102 n : ℚ)

end A083102

/-! ## A083102.P13957258558781906610

`A274526(n+1)/2`
-/

namespace A083102.P13957258558781906610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274526 (n + 1) : ℚ) / 2

end

end A083102.P13957258558781906610

namespace A083102

/-- `A274526(n+1)/2` -/
def P13957258558781906610.Spec : Prop :=
  ∀ n, P13957258558781906610.a n = (A083102 n : ℚ)

end A083102

/-! ## A083102.P16974969978524982802

`A083101(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A083102.P16974969978524982802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083101 (n - 1) + a (n - 1)

end

end A083102.P16974969978524982802

namespace A083102

/-- `A083101(n-1)+a(n-1)` -/
def P16974969978524982802.Spec : Prop :=
  ∀ n, P16974969978524982802.a n = A083102 n

end A083102

/-! ## A083102.P10152521091288985641

`A060546(n)*A083335(n)`
-/

namespace A083102.P10152521091288985641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A083335 n

end

end A083102.P10152521091288985641

namespace A083102

/-- `A060546(n)*A083335(n)` -/
def P10152521091288985641.Spec : Prop :=
  ∀ n, P10152521091288985641.a n = A083102 n

end A083102

/-! ## A083102.P8850775911316065810

`∑[A083101(log2(A011782(n)))]`
-/

namespace A083102.P8850775911316065810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083102.P8850775911316065810

namespace A083102

/-- `∑[A083101(log2(A011782(n)))]` -/
def P8850775911316065810.Spec : Prop :=
  ∀ n, P8850775911316065810.a n = A083102 n

end A083102

/-! ## A083102.P3350793126384829106

`∑[A083101(n)]+1-A083101(n)`
-/

namespace A083102.P3350793126384829106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A083101 n)

end

end A083102.P3350793126384829106

namespace A083102

/-- `∑[A083101(n)]+1-A083101(n)` -/
def P3350793126384829106.Spec : Prop :=
  ∀ n, P3350793126384829106.a n = A083102 n

end A083102

/-! ## A083102.P9859373223961614557

`Δ[A083101(n)/11]`
-/

namespace A083102.P9859373223961614557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083101 n : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083102.P9859373223961614557

namespace A083102

/-- `Δ[A083101(n)/11]` -/
def P9859373223961614557.Spec : Prop :=
  ∀ n, P9859373223961614557.a n = (A083102 n : ℚ)

end A083102

/-!
# A083106: Triangle read by rows in which the n-th row contains n smallest numbers whose product == 1 mod n.

The programs for A083106, there is no canonical definition to state claims against.
-/

/-! ## A083106.P17254749995810827260

`A080099(n)+A002260(A187829(n+1))`
-/

namespace A083106.P17254749995810827260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n + A002260 (A187829 (n + 1)).toNat

end

end A083106.P17254749995810827260

/-! ## A083106.P781844860949277580

`A123275(A187829(n+1))+A002262(n)`
-/

namespace A083106.P781844860949277580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (A187829 (n + 1)).toNat + A002262 n

end

end A083106.P781844860949277580

/-! ## A083106.P2446005519851628014

`A123275(n+1)+A025668(A187829(n+1))`
-/

namespace A083106.P2446005519851628014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) + A025668 (A187829 (n + 1)).toNat

end

end A083106.P2446005519851628014

/-!
# A083107: Diagonal of A083106.

The programs for A083107, there is no canonical definition to state claims against.
-/

/-! ## A083107.P5238799232122522438

`A083106(∑[n+1])`
-/

namespace A083107.P5238799232122522438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083107.P5238799232122522438

/-!
# A083108: Product of terms in row n of A083106.

The programs for A083108, there is no canonical definition to state claims against.
-/

/-! ## A083108.P6914476344484292364

`(n+1)*A083109(n+1)+1`
-/

namespace A083108.P6914476344484292364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083109 (n + 1) + 1

end

end A083108.P6914476344484292364

/-!
# A083109: a(n) = (A083108(n) - 1)/n.

The programs for A083109, there is no canonical definition to state claims against.
-/

/-! ## A083109.P4757599958586272558

`(A083108(n+1)-1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083109.P4757599958586272558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083108 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A083109.P4757599958586272558

/-! ## A083109.P550232872339659152

`floor(A083108(n+1)/A348776(n+1))`
-/

namespace A083109.P550232872339659152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083108 (n + 1) : ℚ) / (A348776 (n + 1) : ℚ)⌋

end

end A083109.P550232872339659152

/-!
# A083110: Triangle read by rows in which the n-th row contains lexicographically earliest increasing sequence of n positive integers whose product == -1 (mod n).

The programs for A083110, there is no canonical definition to state claims against.
-/

/-! ## A083110.P11771520037840922768

`A077581(n+1)+A000122(A026054(n+3))`
-/

namespace A083110.P11771520037840922768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (n + 1) + A000122 (A026054 (n + 3)).toNat

end

end A083110.P11771520037840922768

/-! ## A083110.P9830417231413855464

`A077581(n+1)+A010673(A174064(3*n+4))`
-/

namespace A083110.P9830417231413855464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (n + 1) + A010673 (A174064 (3 * n + 4)).toNat

end

end A083110.P9830417231413855464

/-! ## A083110.P10095670911032374680

`A126572(A245300(n)+1)+A002448(A026054(n+3))`
-/

namespace A083110.P10095670911032374680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126572 (A245300 n + 1).toNat + A002448 (A026054 (n + 3)).toNat

end

end A083110.P10095670911032374680

/-! ## A083110.P18284627327701187205

`A002448(A026054(n+3))+A077664(n+1)-1-A003056(n)`
-/

namespace A083110.P18284627327701187205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A026054 (n + 3)).toNat + (A077664 (n + 1) - 1 - A003056 n)

end

end A083110.P18284627327701187205

/-! ## A083110.P3097357838425568288

`A002448(A026054(n+3))+A077664(n+1)+n+1-A014132(n+1)`
-/

namespace A083110.P3097357838425568288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A026054 (n + 3)).toNat + (A077664 (n + 1) + (n + 1 : ℤ) - A014132 (n + 1))

end

end A083110.P3097357838425568288

/-!
# A083111: Diagonal of A083110.

The programs for A083111, there is no canonical definition to state claims against.
-/

/-! ## A083111.P5943082631941747884

`A083110(∑[n+1]+1)`
-/

namespace A083111.P5943082631941747884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083110 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083111.P5943082631941747884

/-!
# A083112: Product of terms in row n of A083110.

The programs for A083112, there is no canonical definition to state claims against.
-/

/-! ## A083112.P1522221731160362674

`(n+1)*A083113(n+1)-1`
-/

namespace A083112.P1522221731160362674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083113 (n + 1) - 1

end

end A083112.P1522221731160362674

/-!
# A083113: a(n) = (A083112(n) + 1)/n.

The programs for A083113, there is no canonical definition to state claims against.
-/

/-! ## A083113.P10130053470961655520

`(A083112(n+1)+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083113.P10130053470961655520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083112 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)

end

end A083113.P10130053470961655520

/-!
# A083114: Numbers with nonzero digits whose sum of digits as well as product of digits is a palindrome.

The programs for A083114, there is no canonical definition to state claims against.
-/

/-! ## A083114.P10635382163261298

`∩[A090274(n+1), A368728(n+1)]`
-/

namespace A083114.P10635382163261298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083114.P10635382163261298

/-!
# A083115: Palindromes in A083114.

The programs for A083115, there is no canonical definition to state claims against.
-/

/-! ## A083115.P10050268738093522909

`∩[A082207(n+1), A117056(n+1)]`
-/

namespace A083115.P10050268738093522909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P10050268738093522909

/-! ## A083115.P7730104741002315897

`∩[A082208(n+1), A083114(n+1)]`
-/

namespace A083115.P7730104741002315897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P7730104741002315897

/-! ## A083115.P1152834187411425586

`∩[A083114(n+1), A117055(n+1)]`
-/

namespace A083115.P1152834187411425586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P1152834187411425586

/-! ## A083115.P1976671695744143297

`∩[A083114(n+1), A117056(n+1)]`
-/

namespace A083115.P1976671695744143297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P1976671695744143297

/-! ## A083115.P15751481482476146054

`∩[A002113(n+1), A083114(n+1)]`
-/

namespace A083115.P15751481482476146054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P15751481482476146054

/-! ## A083115.P18367595530321242532

`∩[A083114(n+1), A178354(n+1)]`
-/

namespace A083115.P18367595530321242532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P18367595530321242532

/-! ## A083115.P672373571083601240

`∩[A061917(n+1), A083114(n+1)]`
-/

namespace A083115.P672373571083601240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P672373571083601240

/-! ## A083115.P17023271697115034685

`∩[A083114(n+1), A169824(n+1)]`
-/

namespace A083115.P17023271697115034685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P17023271697115034685

/-! ## A083115.P17008547246291971879

`∩[A083114(n+1), A306273(n+1)]`
-/

namespace A083115.P17008547246291971879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P17008547246291971879

/-! ## A083115.P3914276372124948377

`∩[A082208(n+1), A090274(n+1)]`
-/

namespace A083115.P3914276372124948377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083115.P3914276372124948377

/-!
# A083116: Smallest multiple of n using a single digit with multiplicity, or 0 if no such number exists.

The programs for A083116, there is no canonical definition to state claims against.
-/

/-! ## A083116.P9910756556168431948

`(n+1)*A083117(n+1)`
-/

namespace A083116.P9910756556168431948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083117 (n + 1)

end

end A083116.P9910756556168431948

/-! ## A083116.P11549891497849935293

`lcm(A083117(n+1), A284823(A000124(n)))`
-/

namespace A083116.P11549891497849935293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083117 (n + 1)) (A284823 (A000124 n).toNat)

end

end A083116.P11549891497849935293

/-! ## A083116.P11454336410571334412

`A083117(Δ[n²]-n)*A284823(A000124(n))`
-/

namespace A083116.P11454336410571334412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat * A284823 (A000124 n).toNat

end

end A083116.P11454336410571334412

/-! ## A083116.P5565193762910734637

`lcm(A005496(n), A083117(A187829(n+1)))`
-/

namespace A083116.P5565193762910734637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005496 n) (A083117 (A187829 (n + 1)).toNat)

end

end A083116.P5565193762910734637

/-! ## A083116.P272865422815625942

`lcm(A083117(A161951(n+1)), A161951(n+1))`
-/

namespace A083116.P272865422815625942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083117 (A161951 (n + 1)).toNat) (A161951 (n + 1))

end

end A083116.P272865422815625942

/-!
# A083117: Smallest k such that k*n contains a single digit with multiplicity, or 0 if no such number exists.

The programs for A083117, there is no canonical definition to state claims against.
-/

/-! ## A083117.P3333454932381228275

`A083116(n+1)/(n+1)`
-/

namespace A083117.P3333454932381228275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083116 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083117.P3333454932381228275

/-! ## A083117.P4832149208343696069

`A316211(A036598(n))`
-/

namespace A083117.P4832149208343696069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316211 (A036598 n).toNat

end

end A083117.P4832149208343696069

/-! ## A083117.P15151171182991096320

`A373074(A036424(n))`
-/

namespace A083117.P15151171182991096320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (A036424 n).toNat

end

end A083117.P15151171182991096320

/-! ## A083117.P5992230961986794620

`A373074(A036633(n))`
-/

namespace A083117.P5992230961986794620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (A036633 n).toNat

end

end A083117.P5992230961986794620

/-! ## A083117.P3082327701290615744

`A373074(A036640(n))`
-/

namespace A083117.P3082327701290615744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (A036640 n).toNat

end

end A083117.P3082327701290615744

/-!
# A083118: Index of zeros in A083116 and A083117.

The programs for A083118, the canonical program `A083118.P15455909415279761198` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083118 has offset 1).

The definition of A083118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083118.P15455909415279761198

`lt[10, A227071(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A083118

/-- `lt[10, A227071(n+1)]` -/
def P15455909415279761198.Spec : Prop :=
  ∀ n, (P15455909415279761198.a n : ℤ) = A083118 (n + 1)

theorem P15455909415279761198.correct : P15455909415279761198.Spec := by
  intro n
  simp only [A083118, Nat.add_sub_cancel]

end A083118

/-! ## A083118.P4715769969527379896

`lt[10, n/A132740(A004277(n))+1]`
-/

namespace A083118.P4715769969527379896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A132740 (A004277 n).toNat : ℚ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A083118.P4715769969527379896

namespace A083118

/-- `lt[10, n/A132740(A004277(n))+1]` -/
def P4715769969527379896.Spec : Prop :=
  ∀ n, (P4715769969527379896.a n : ℤ) = A083118 (n + 1)

end A083118

/-! ## A083118.P16615551852260685683

`lt[8, A132741(A233583(n+1))]`
-/

namespace A083118.P16615551852260685683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083118.P16615551852260685683

namespace A083118

/-- `lt[8, A132741(A233583(n+1))]` -/
def P16615551852260685683.Spec : Prop :=
  ∀ n, (P16615551852260685683.a n : ℤ) = A083118 (n + 1)

end A083118

/-! ## A083118.P11787308612532825170

`eq[2, A098378(A227071(n+1))]%A243862(n)`
-/

namespace A083118.P11787308612532825170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (A227071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A243862 (n + 10))

end

end A083118.P11787308612532825170

namespace A083118

/-- `eq[2, A098378(A227071(n+1))]%A243862(n)` -/
def P11787308612532825170.Spec : Prop :=
  ∀ n, P11787308612532825170.a n = A083118 (n + 1)

end A083118

/-! ## A083118.P5818236209770900145

`lt[8, gcd(n, 10^n)]`
-/

namespace A083118.P5818236209770900145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (10 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083118.P5818236209770900145

namespace A083118

/-- `lt[8, gcd(n, 10^n)]` -/
def P5818236209770900145.Spec : Prop :=
  ∀ n, (P5818236209770900145.a n : ℤ) = A083118 (n + 1)

end A083118

/-!
# A083120: Numbers that are congruent to {0, 2, 4, 5, 7, 9, 10} mod 12.

The programs for A083120, the canonical program `A083120.P5494695497941507203` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083120 has offset 1).

The definition of A083120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083120.P11675335310269547438

`floor(4*(3*(n+1)-2)/7)`
-/

namespace A083120.P11675335310269547438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * ((3 * (n + 1) : ℤ) - 2) : ℚ) / 7⌋

end

end A083120.P11675335310269547438

namespace A083120

/-- `floor(4*(3*(n+1)-2)/7)` -/
def P11675335310269547438.Spec : Prop :=
  ∀ n, P11675335310269547438.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P5494695497941507203

`a(n-7)+12` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=7, a(5)=9, a(6)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083120

/-- `a(n-7)+12` -/
def P5494695497941507203.Spec : Prop :=
  ∀ n, (P5494695497941507203.a n : ℤ) = A083120 (n + 1)

theorem P5494695497941507203.correct : P5494695497941507203.Spec := by
  intro n
  simp only [A083120, Nat.add_sub_cancel]

end A083120

/-! ## A083120.P14631538137570325007

`2*n-round(a(n-1)/6)` with `a(0)=0`
-/

namespace A083120.P14631538137570325007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 6)

end

end A083120.P14631538137570325007

namespace A083120

/-- `2*n-round(a(n-1)/6)` -/
def P14631538137570325007.Spec : Prop :=
  ∀ n, P14631538137570325007.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P3261801126869023078

`round(A017533(n)/7)`
-/

namespace A083120.P3261801126869023078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A017533 n : ℚ) / 7)

end

end A083120.P3261801126869023078

namespace A083120

/-- `round(A017533(n)/7)` -/
def P3261801126869023078.Spec : Prop :=
  ∀ n, P3261801126869023078.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P845236195993948381

`A302255(n)+A004777(n+1)`
-/

namespace A083120.P845236195993948381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 n + A004777 (n + 1)

end

end A083120.P845236195993948381

namespace A083120

/-- `A302255(n)+A004777(n+1)` -/
def P845236195993948381.Spec : Prop :=
  ∀ n, P845236195993948381.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P12391538986674602051

`∪[A081032(n+1), A175884(n+1)]`
-/

namespace A083120.P12391538986674602051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083120.P12391538986674602051

namespace A083120

/-- `∪[A081032(n+1), A175884(n+1)]` -/
def P12391538986674602051.Spec : Prop :=
  ∀ n, (P12391538986674602051.a n : ℤ) = A083120 (n + 1)

end A083120

/-! ## A083120.P11392490960522015813

`∪[A175884(n+2)-2, A175884(n+2)]`
-/

namespace A083120.P11392490960522015813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083120.P11392490960522015813

namespace A083120

/-- `∪[A175884(n+2)-2, A175884(n+2)]` -/
def P11392490960522015813.Spec : Prop :=
  ∀ n, (P11392490960522015813.a n : ℤ) = A083120 (n + 1)

end A083120

/-! ## A083120.P5553756712790416144

`A060107(n+1)+A083026(n+1)-A083028(n+1)`
-/

namespace A083120.P5553756712790416144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + (A083026 (n + 1) - A083028 (n + 1))

end

end A083120.P5553756712790416144

namespace A083120

/-- `A060107(n+1)+A083026(n+1)-A083028(n+1)` -/
def P5553756712790416144.Spec : Prop :=
  ∀ n, P5553756712790416144.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P11038299961590730020

`A083089(n+2)-2`
-/

namespace A083120.P11038299961590730020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 2) - 2

end

end A083120.P11038299961590730020

namespace A083120

/-- `A083089(n+2)-2` -/
def P11038299961590730020.Spec : Prop :=
  ∀ n, P11038299961590730020.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P2818040965212200809

`Δ[n²-A008739(n)]`
-/

namespace A083120.P2818040965212200809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083120.P2818040965212200809

namespace A083120

/-- `Δ[n²-A008739(n)]` -/
def P2818040965212200809.Spec : Prop :=
  ∀ n, P2818040965212200809.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P15683498242000096117

`2*n-A057356(n+1)`
-/

namespace A083120.P15683498242000096117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A057356 (n + 1)

end

end A083120.P15683498242000096117

namespace A083120

/-- `2*n-A057356(n+1)` -/
def P15683498242000096117.Spec : Prop :=
  ∀ n, P15683498242000096117.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P1454045374524408249

`2*n-A004526(A057358(n+1))`
-/

namespace A083120.P1454045374524408249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004526 (A057358 (n + 1)).toNat

end

end A083120.P1454045374524408249

namespace A083120

/-- `2*n-A004526(A057358(n+1))` -/
def P1454045374524408249.Spec : Prop :=
  ∀ n, P1454045374524408249.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P1899329164154567421

`A175884(n+1)-(A057356(n+1)+A057354(n))`
-/

namespace A083120.P1899329164154567421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1) - (A057356 (n + 1) + A057354 n)

end

end A083120.P1899329164154567421

namespace A083120

/-- `A175884(n+1)-(A057356(n+1)+A057354(n))` -/
def P1899329164154567421.Spec : Prop :=
  ∀ n, P1899329164154567421.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P9631477437107537835

`A002265(n+1)+A047379(n+1)-A057356(n+1)`
-/

namespace A083120.P9631477437107537835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (A047379 (n + 1) - A057356 (n + 1))

end

end A083120.P9631477437107537835

namespace A083120

/-- `A002265(n+1)+A047379(n+1)-A057356(n+1)` -/
def P9631477437107537835.Spec : Prop :=
  ∀ n, P9631477437107537835.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P6878122780078894802

`A083034(n+3)-3`
-/

namespace A083120.P6878122780078894802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083034 (n + 3) - 3

end

end A083120.P6878122780078894802

namespace A083120

/-- `A083034(n+3)-3` -/
def P6878122780078894802.Spec : Prop :=
  ∀ n, P6878122780078894802.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P10748456692310214854

`2*n+1-A004526(A225875(n+3))`
-/

namespace A083120.P10748456692310214854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A004526 (A225875 (n + 3)).toNat

end

end A083120.P10748456692310214854

namespace A083120

/-- `2*n+1-A004526(A225875(n+3))` -/
def P10748456692310214854.Spec : Prop :=
  ∀ n, P10748456692310214854.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P5773313214697437292

`A083033(n+4)-5`
-/

namespace A083120.P5773313214697437292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 4) - 5

end

end A083120.P5773313214697437292

namespace A083120

/-- `A083033(n+4)-5` -/
def P5773313214697437292.Spec : Prop :=
  ∀ n, P5773313214697437292.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P443030556706183823

`A083026(n+5)-7`
-/

namespace A083120.P443030556706183823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 5) - 7

end

end A083120.P443030556706183823

namespace A083120

/-- `A083026(n+5)-7` -/
def P443030556706183823.Spec : Prop :=
  ∀ n, P443030556706183823.a n = A083120 (n + 1)

end A083120

/-! ## A083120.P16061184467364631388

`2*n-A002265(A004777(n+2))`
-/

namespace A083120.P16061184467364631388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A002265 (A004777 (n + 2)).toNat

end

end A083120.P16061184467364631388

namespace A083120

/-- `2*n-A002265(A004777(n+2))` -/
def P16061184467364631388.Spec : Prop :=
  ∀ n, P16061184467364631388.a n = A083120 (n + 1)

end A083120

/-!
# A083121: Bases of the squares arising in A083119.

The programs for A083121, there is no canonical definition to state claims against.
-/

/-! ## A083121.P6485596905121464073

`∑[A299090(A106287(n+1)+1)]`
-/

namespace A083121.P6485596905121464073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A106287 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083121.P6485596905121464073

/-! ## A083121.P2911884307766645151

`lt[A215061(n+3), A001221(A097275(n))]`
-/

namespace A083121.P2911884307766645151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215061 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A097275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083121.P2911884307766645151

/-! ## A083121.P11591667303189737308

`lt[A124570(A050002(n+1)), A050004(n+1)]`
-/

namespace A083121.P11591667303189737308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124570 (A050002 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083121.P11591667303189737308

/-! ## A083121.P14399347576928145638

`lt[A079546(A093517(2*n+3)), 1]+1`
-/

namespace A083121.P14399347576928145638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079546 (A093517 (2 * n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A083121.P14399347576928145638

/-! ## A083121.P9874131763951399648

`∑[A100063(∑[A035294(n+1)])]`
-/

namespace A083121.P9874131763951399648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083121.P9874131763951399648

/-!
# A083122: a(1) = 1, then the smallest number not included earlier and not a string of 1's such that the concatenation a(n), a(n+1) is a palindrome.

The programs for A083122, there is no canonical definition to state claims against.
-/

/-! ## A083122.P8094949365064175597

`A165300(A298825(3*n+1)+n)`
-/

namespace A083122.P8094949365064175597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165300 (A298825 (3 * n + 1) + (n : ℤ)).toNat

end

end A083122.P8094949365064175597

/-!
# A083123: Smallest n-digit palindromic multiple of n, or 0 if no such number exists.

The programs for A083123, there is no canonical definition to state claims against.
-/

/-! ## A083123.P12384357370631916050

`A084024(∑[n]+1)`
-/

namespace A083123.P12384357370631916050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083123.P12384357370631916050

/-!
# A083125: a(1) = 1, then the smallest number not occurring earlier such that the product of a pair of successive terms is a palindrome.

The programs for A083125, there is no canonical definition to state claims against.
-/

/-! ## A083125.P1859246467442181761

`A083126(n)/a(n-1)` with `a(0)=1`
-/

namespace A083125.P1859246467442181761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A083126 n : ℚ) / a (n - 1)

end

end A083125.P1859246467442181761

/-! ## A083125.P14175223787930581399

`A083664(comp[10*n])`
-/

namespace A083125.P14175223787930581399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083664 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A083125.P14175223787930581399

/-! ## A083125.P16209210396434870837

`filter[A083664(n+1), A168184(#)]`
-/

namespace A083125.P16209210396434870837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A083125.P16209210396434870837

/-! ## A083125.P15037340925140335312

`filter[A083664(n+1), A225181(#)]`
-/

namespace A083125.P15037340925140335312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A083125.P15037340925140335312

/-!
# A083126: Palindromes arising in A083125. a(n) = A083125(n)*A083125(n+1).

The programs for A083126, there is no canonical definition to state claims against.
-/

/-! ## A083126.P14282303836699579781

`A083125(n+1)*A083125(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083126.P14282303836699579781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083125 (n + 1) * A083125 (n + 2)

end

end A083126.P14282303836699579781

/-! ## A083126.P6103200126127818094

`A083664(n+1)*A083664(A276142(n+2))`
-/

namespace A083126.P6103200126127818094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083664 (n + 1) * A083664 (A276142 (n + 2)).toNat

end

end A083126.P6103200126127818094

/-!
# A083127: a(n) = 3*n^3 + n^2 - 4*n.

The programs for A083127, the canonical program `A083127.P13350646007919024394` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083127 has offset 0).

The definition of A083127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3+n²-4*n` (program `A083127.P13350646007919024394`, by `A083127.P13350646007919024394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083127.P17188492117248397282

`n*(3*n²+n-4)`
-/

namespace A083127.P17188492117248397282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((3 * n ^ 2 + n : ℤ) - 4)

end

end A083127.P17188492117248397282

namespace A083127

/-- `n*(3*n²+n-4)` -/
def P17188492117248397282.Spec : Prop :=
  ∀ n, P17188492117248397282.a n = A083127 n

theorem P17188492117248397282.correct : P17188492117248397282.Spec := by
  intro n
  simp only [A083127, Nat.add_sub_cancel, A083127.P17188492117248397282.a, A083127.P13350646007919024394.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083127

/-! ## A083127.P13350646007919024394

`3*n^3+n²-4*n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083127

/-- `3*n^3+n²-4*n` -/
def P13350646007919024394.Spec : Prop :=
  ∀ n, P13350646007919024394.a n = A083127 n

theorem P13350646007919024394.correct : P13350646007919024394.Spec := by
  intro n
  simp only [A083127]

end A083127

/-! ## A083127.P13235077575260584090

`∑[(9*n+2)*(2*n)%(n+1)]`
-/

namespace A083127.P13235077575260584090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n + 2) * (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083127.P13235077575260584090

namespace A083127

/-- `∑[(9*n+2)*(2*n)%(n+1)]` -/
def P13235077575260584090.Spec : Prop :=
  ∀ n, (P13235077575260584090.a n : ℤ) = A083127 n

end A083127

/-!
# A083129: Consider the triangle in which n-th row contains the smallest set of n consecutive numbers such that every prime among first n primes divides at least one distinct number in the row (irrespective of order). Sequence gives the first column.

The programs for A083129, there is no canonical definition to state claims against.
-/

/-! ## A083129.P2213478196336653996

`A151552(xor(11, A091768(n)))`
-/

namespace A083129.P2213478196336653996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 (Int.xor 11 (A091768 n)).toNat

end

end A083129.P2213478196336653996

/-!
# A083135: LCM of the terms of the n-th row of the triangle pertaining to A083130.

The programs for A083135, there is no canonical definition to state claims against.
-/

/-! ## A083135.P894209732425492628

`A211418(p?[A002266(∑[n])])`
-/

namespace A083135.P894209732425492628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211418 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A083135.P894209732425492628

/-! ## A083135.P8253810709664152591

`A211418(p?[record[A077168(n)]])`
-/

namespace A083135.P8253810709664152591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211418 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A083135.P8253810709664152591

/-!
# A083136: a(n+1) is the smallest palindrome greater than a(n) and relatively prime to a(n).

The programs for A083136, there is no canonical definition to state claims against.
-/

/-! ## A083136.P5386637761550738482

`eq[A004530(A113581(n)), A033665(n)]`
-/

namespace A083136.P5386637761550738482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A113581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083136.P5386637761550738482

/-! ## A083136.P10029052431792481256

`eq[A050782(n), A213217(A004176(n))]`
-/

namespace A083136.P10029052431792481256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083136.P10029052431792481256

/-! ## A083136.P4704608093510783421

`eq[A072137(n), A213217(A004176(n))]`
-/

namespace A083136.P4704608093510783421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083136.P4704608093510783421

/-! ## A083136.P3412679513704726053

`A033865(A056142(n)+char[A046469(n)])`
-/

namespace A083136.P3412679513704726053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A056142 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A083136.P3412679513704726053

/-! ## A083136.P7190850190145895014

`A033865(A056142(n)+char[A056142(n)])`
-/

namespace A083136.P7190850190145895014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A056142 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A083136.P7190850190145895014

/-!
# A083138: Composite numbers in A083137.

The programs for A083138, there is no canonical definition to state claims against.
-/

/-! ## A083138.P10511213187744361014

`∩[A035135(n+1), A083137(n+1)]`
-/

namespace A083138.P10511213187744361014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083138.P10511213187744361014

/-! ## A083138.P10620631404798608342

`∩[A046328(n+1), A083137(n+1)]`
-/

namespace A083138.P10620631404798608342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083138.P10620631404798608342

/-! ## A083138.P16760502085541884597

`∩[A075812(n+1), A083137(n+1)]`
-/

namespace A083138.P16760502085541884597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083138.P16760502085541884597

/-! ## A083138.P6698854364466956550

`∩[A083137(n+1), A084325(n+1)]`
-/

namespace A083138.P6698854364466956550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083138.P6698854364466956550

/-! ## A083138.P12193928943858663150

`∩[A083137(n+1), A257973(n+1)]`
-/

namespace A083138.P12193928943858663150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083138.P12193928943858663150

/-! ## A083138.P8917089946693304778

`∩[A083137(n+1), A330616(n+1)]`
-/

namespace A083138.P8917089946693304778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083138.P8917089946693304778

/-! ## A083138.P9013344032932211646

`∩[A083137(n+1), A394546(n+1)]`
-/

namespace A083138.P9013344032932211646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083138.P9013344032932211646

/-!
# A083140: Sieve of Eratosthenes arranged as an array and read by antidiagonals in the up direction; n-th row has property that smallest prime factor is prime(n).

The programs for A083140, there is no canonical definition to state claims against.
-/

/-! ## A083140.P16337220754428607331

`A083221(∑[char[∑[n]]]²-n+1)`
-/

namespace A083140.P16337220754428607331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A083140.P16337220754428607331

/-! ## A083140.P3321966896136369508

`A249741(∑[char[∑[n]]]²-n)+1`
-/

namespace A083140.P3321966896136369508
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + 1

end

end A083140.P3321966896136369508

/-! ## A083140.P13796213047767813133

`A255408(A255129(n+2))`
-/

namespace A083140.P13796213047767813133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A255129 (n + 2)).toNat

end

end A083140.P13796213047767813133

/-! ## A083140.P2005499456250396375

`A298268(A125624(n+1))`
-/

namespace A083140.P2005499456250396375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298268 (A125624 (n + 1)).toNat

end

end A083140.P2005499456250396375

/-! ## A083140.P7016166230770816883

`A207801(A288870(n))`
-/

namespace A083140.P7016166230770816883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (A288870 n).toNat

end

end A083140.P7016166230770816883

/-! ## A083140.P16899066703594445088

`A249811(A054582(n))+1`
-/

namespace A083140.P16899066703594445088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A054582 n).toNat + 1

end

end A083140.P16899066703594445088

/-! ## A083140.P5498953523520691264

`A249817(A246273(n+1)+1)`
-/

namespace A083140.P5498953523520691264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A246273 (n + 1) + 1).toNat

end

end A083140.P5498953523520691264

/-! ## A083140.P12027423404735585521

`A249817(A246279(n+1))`
-/

namespace A083140.P12027423404735585521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A246279 (n + 1)).toNat

end

end A083140.P12027423404735585521

/-! ## A083140.P16475597072162442335

`A114881(n+1)+1`
-/

namespace A083140.P16475597072162442335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114881 (n + 1) + 1

end

end A083140.P16475597072162442335

/-! ## A083140.P5229295358452758146

`A020725(A114881(n+1))`
-/

namespace A083140.P5229295358452758146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A114881 (n + 1)).toNat

end

end A083140.P5229295358452758146

/-!
# A083141: Main diagonal of array in A083140.

The programs for A083141, the canonical program `A083141.P9150602828074558768` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083141 has offset 1).

The definition of A083141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083141.P14205251244409324355

`A249743(n+1)+1`
-/

namespace A083141.P14205251244409324355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249743 (n + 1) + 1

end

end A083141.P14205251244409324355

namespace A083141

/-- `A249743(n+1)+1` -/
def P14205251244409324355.Spec : Prop :=
  ∀ n, P14205251244409324355.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P9150602828074558768

`A006005(A028310(2*n))*A008578(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083141

/-- `A006005(A028310(2*n))*A008578(n+2)` -/
def P9150602828074558768.Spec : Prop :=
  ∀ n, P9150602828074558768.a n = A083141 (n + 1)

theorem P9150602828074558768.correct : P9150602828074558768.Spec := by
  intro n
  simp only [A083141, Nat.add_sub_cancel]

end A083141

/-! ## A083141.P1078222836600329191

`p?[abs(xor(n, -2))]*A008578(2*n+1)`
-/

namespace A083141.P1078222836600329191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008578 (2 * n + 1)

end

end A083141.P1078222836600329191

namespace A083141

/-- `p?[abs(xor(n, -2))]*A008578(2*n+1)` -/
def P1078222836600329191.Spec : Prop :=
  ∀ n, P1078222836600329191.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P9119369728874811539

`A000040(n+1)*A008578(2*n+1)`
-/

namespace A083141.P9119369728874811539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008578 (2 * n + 1)

end

end A083141.P9119369728874811539

namespace A083141

/-- `A000040(n+1)*A008578(2*n+1)` -/
def P9119369728874811539.Spec : Prop :=
  ∀ n, P9119369728874811539.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P1853075009906838150

`A000040(n+1)*A158611(2*(n+1))`
-/

namespace A083141.P1853075009906838150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A158611 (2 * (n + 1))

end

end A083141.P1853075009906838150

namespace A083141

/-- `A000040(n+1)*A158611(2*(n+1))` -/
def P1853075009906838150.Spec : Prop :=
  ∀ n, P1853075009906838150.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P10290153923144610404

`A008578(2*n+1)*A008578(n+2)`
-/

namespace A083141.P10290153923144610404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * n + 1) * A008578 (n + 2)

end

end A083141.P10290153923144610404

namespace A083141

/-- `A008578(2*n+1)*A008578(n+2)` -/
def P10290153923144610404.Spec : Prop :=
  ∀ n, P10290153923144610404.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P18106636694983390820

`A158611(2*(n+1))*A182986(n+2)`
-/

namespace A083141.P18106636694983390820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * (n + 1)) * A182986 (n + 2)

end

end A083141.P18106636694983390820

namespace A083141

/-- `A158611(2*(n+1))*A182986(n+2)` -/
def P18106636694983390820.Spec : Prop :=
  ∀ n, P18106636694983390820.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P12706566654453884148

`A158611(2*(n+1))*A158611(n+3)`
-/

namespace A083141.P12706566654453884148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * (n + 1)) * A158611 (n + 3)

end

end A083141.P12706566654453884148

namespace A083141

/-- `A158611(2*(n+1))*A158611(n+3)` -/
def P12706566654453884148.Spec : Prop :=
  ∀ n, P12706566654453884148.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P5752590651004810310

`sqrt(A280076(2*n+1)*A280076(n+2))`
-/

namespace A083141.P5752590651004810310
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (2 * n + 1) * A280076 (n + 2) : ℝ)

end

end A083141.P5752590651004810310

namespace A083141

/-- `sqrt(A280076(2*n+1)*A280076(n+2))` -/
def P5752590651004810310.Spec : Prop :=
  ∀ n, P5752590651004810310.a n = (A083141 (n + 1) : ℝ)

end A083141

/-! ## A083141.P13590733606091123689

`p?[A008578(n+1)]*A008578(A005408(n))`
-/

namespace A083141.P13590733606091123689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008578 (A005408 n).toNat

end

end A083141.P13590733606091123689

namespace A083141

/-- `p?[A008578(n+1)]*A008578(A005408(n))` -/
def P13590733606091123689.Spec : Prop :=
  ∀ n, P13590733606091123689.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P12552870542119300779

`A073846(2*(n+1))*A073846(A004277(2*n))`
-/

namespace A083141.P12552870542119300779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1)) * A073846 (A004277 (2 * n)).toNat

end

end A083141.P12552870542119300779

namespace A083141

/-- `A073846(2*(n+1))*A073846(A004277(2*n))` -/
def P12552870542119300779.Spec : Prop :=
  ∀ n, P12552870542119300779.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P5297864097557366849

`A209259(2*n+1)*A209259(A004273(2*n))`
-/

namespace A083141.P5297864097557366849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (2 * n + 1) * A209259 (A004273 (2 * n)).toNat

end

end A083141.P5297864097557366849

namespace A083141

/-- `A209259(2*n+1)*A209259(A004273(2*n))` -/
def P5297864097557366849.Spec : Prop :=
  ∀ n, P5297864097557366849.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P6227572612759806064

`A075643(2*n+1)*A075643(n+2)`
-/

namespace A083141.P6227572612759806064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (2 * n + 1) * A075643 (n + 2)

end

end A083141.P6227572612759806064

namespace A083141

/-- `A075643(2*n+1)*A075643(n+2)` -/
def P6227572612759806064.Spec : Prop :=
  ∀ n, P6227572612759806064.a n = A083141 (n + 1)

end A083141

/-! ## A083141.P12687460883555642744

`A028310(A182986(2*n+1))*A182986(n+2)`
-/

namespace A083141.P12687460883555642744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A182986 (2 * n + 1)).toNat * A182986 (n + 2)

end

end A083141.P12687460883555642744

namespace A083141

/-- `A028310(A182986(2*n+1))*A182986(n+2)` -/
def P12687460883555642744.Spec : Prop :=
  ∀ n, P12687460883555642744.a n = A083141 (n + 1)

end A083141

/-!
# A083143: Smallest n-digit palindromic multiple of prime(n), or 0 if no such number exists.

The programs for A083143, there is no canonical definition to state claims against.
-/

/-! ## A083143.P5326630535445485137

`Δ[A007504(n)]*A083144(n+1)`
-/

namespace A083143.P5326630535445485137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A083144 (n + 1)

end

end A083143.P5326630535445485137

/-! ## A083143.P18027254250757185100

`p?[A006370(n)]*A083144(n+1)`
-/

namespace A083143.P18027254250757185100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A083144 (n + 1)

end

end A083143.P18027254250757185100

/-! ## A083143.P15954120436786968083

`A000040(n+1)*A083144(n+1)`
-/

namespace A083143.P15954120436786968083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A083144 (n + 1)

end

end A083143.P15954120436786968083

/-! ## A083143.P9740676119707701445

`sqrt(A001248(n+1))*A083144(n+1)`
-/

namespace A083143.P9740676119707701445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A083144 (n + 1) : ℝ)

end

end A083143.P9740676119707701445

/-! ## A083143.P17650741771853592992

`A020639(A083141(n+1))*A083144(n+1)`
-/

namespace A083143.P17650741771853592992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A083141 (n + 1)).toNat * A083144 (n + 1)

end

end A083143.P17650741771853592992

/-!
# A083144: Smallest k such that k*prime(n) is an n-digit palindrome, or 0 if no such number exists.

The programs for A083144, there is no canonical definition to state claims against.
-/

/-! ## A083144.P9760722918483802767

`A083143(n+1)/Δ[A007504(n)]`
-/

namespace A083144.P9760722918483802767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083143 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A083144.P9760722918483802767

/-! ## A083144.P7067245372343585752

`A083143(n+1)/record[A051698(n)]`
-/

namespace A083144.P7067245372343585752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083143 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A083144.P7067245372343585752

/-! ## A083144.P16934803999679959061

`A083143(n+1)/p?[A006370(n)]`
-/

namespace A083144.P16934803999679959061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083143 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A083144.P16934803999679959061

/-! ## A083144.P1206857379309366557

`A083143(n+1)/A000040(n+1)`
-/

namespace A083144.P1206857379309366557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083143 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A083144.P1206857379309366557

/-! ## A083144.P15633910267375404049

`A083143(n+1)/sqrt(A001248(n+1))`
-/

namespace A083144.P15633910267375404049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A083143 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A083144.P15633910267375404049

/-!
# A083145: Smallest nontrivial palindromic multiple of the n-th palindrome (a(n) is not equal to the n-th palindrome).

The programs for A083145, there is no canonical definition to state claims against.
-/

/-! ## A083145.P16770832220058771396

`A033862(A085920(n+1))`
-/

namespace A083145.P16770832220058771396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A085920 (n + 1)).toNat

end

end A083145.P16770832220058771396

/-! ## A083145.P1029874878146033748

`filter[A085920(n+1), A105470(#)]`
-/

namespace A083145.P1029874878146033748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105470 (f1 j).toNat = 1) n)

end

end A083145.P1029874878146033748

/-! ## A083145.P6323102337779057122

`filter[A085920(n+1), A130854(#)]`
-/

namespace A083145.P6323102337779057122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130854 (f1 j).toNat = 1) n)

end

end A083145.P6323102337779057122

/-! ## A083145.P7527691557030270948

`filter[A085920(n+1), A225181(#)]`
-/

namespace A083145.P7527691557030270948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A083145.P7527691557030270948

/-! ## A083145.P8028678621952764480

`filter[A085920(n+1), A330550(#)]`
-/

namespace A083145.P8028678621952764480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330550 (f1 j).toNat = 1) n)

end

end A083145.P8028678621952764480

/-!
# A083146: Smallest palindromic multiple of n-th palindrome which is not a concatenation of copies of that palindrome.

The programs for A083146, there is no canonical definition to state claims against.
-/

/-! ## A083146.P9127472941516282617

`(A209349(A335457(n))+1)*(n+1)`
-/

namespace A083146.P9127472941516282617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209349 (A335457 n).toNat + 1) * (n + 1 : ℤ)

end

end A083146.P9127472941516282617

/-!
# A083147: a(1) = 1, a(n) = smallest nontrivial palindromic multiple of a(n-1). a(n) is not equal to a(n-1) or a concatenation of a(n-1) with itself.

The programs for A083147, there is no canonical definition to state claims against.
-/

/-! ## A083147.P15944356409146613868

`a(n-1)*A083148(n)` with `a(0)=1`
-/

namespace A083147.P15944356409146613868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A083148 n

end

end A083147.P15944356409146613868

/-! ## A083147.P14971254449386968660

`∏[A083148(n+1)]/A083148(n+1)`
-/

namespace A083147.P14971254449386968660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083148 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A083148 (n + 1) : ℚ)

end

end A083147.P14971254449386968660

/-!
# A083148: a(n) = A083147(n+1)/A083147(n).

The programs for A083148, there is no canonical definition to state claims against.
-/

/-! ## A083148.P2057318846509995099

`A083147(n+2)/A083147(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083148.P2057318846509995099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083147 (n + 2) : ℚ) / (A083147 (n + 1) : ℚ)

end

end A083148.P2057318846509995099

/-! ## A083148.P15357795599276077463

`ratio[A083147(n+1)]`
-/

namespace A083148.P15357795599276077463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083147 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083148.P15357795599276077463

/-! ## A083148.P7046441893631198844

`ratio[record[A083147(A028920(n))]]`
-/

namespace A083148.P7046441893631198844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083147 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083148.P7046441893631198844

/-! ## A083148.P16424761212799651351

`ratio[record[A083147(A143182(n))]]`
-/

namespace A083148.P16424761212799651351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083147 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083148.P16424761212799651351

/-! ## A083148.P493947949545748265

`ratio[record[A083147(A193592(n))]]`
-/

namespace A083148.P493947949545748265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083147 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083148.P493947949545748265

/-!
# A083149: a(1) = 3, a(n) = smallest nontrivial palindromic multiple of a(n-1). a(n) is not equal to a(n-1) or a concatenation of a(n-1) with itself.

The programs for A083149, there is no canonical definition to state claims against.
-/

/-! ## A083149.P946598655767474490

`A066710(A225779(n)+n)`
-/

namespace A083149.P946598655767474490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066710 (A225779 n + (n : ℤ)).toNat

end

end A083149.P946598655767474490

/-!
# A083150: a(n) = A083149(n+1)/A083149(n).

The programs for A083150, there is no canonical definition to state claims against.
-/

/-! ## A083150.P17462545918847646432

`A083149(n+2)/A083149(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083150.P17462545918847646432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083149 (n + 2) : ℚ) / (A083149 (n + 1) : ℚ)

end

end A083150.P17462545918847646432

/-! ## A083150.P15883479602436811070

`ratio[A083149(n+1)]`
-/

namespace A083150.P15883479602436811070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083149 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083150.P15883479602436811070

/-! ## A083150.P12260994110667631365

`ceil(ratio[A083149(A291769(n))])`
-/

namespace A083150.P12260994110667631365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083149 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A083150.P12260994110667631365

/-! ## A083150.P12635558843780554907

`ratio[record[A083149(A143182(n))]]`
-/

namespace A083150.P12635558843780554907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083149 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083150.P12635558843780554907

/-! ## A083150.P18431112799952128067

`ratio[record[A083149(A193592(n))]]`
-/

namespace A083150.P18431112799952128067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083149 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083150.P18431112799952128067

/-!
# A083152: a(n) = A083151(n+1)/A083151(n).

The programs for A083152, there is no canonical definition to state claims against.
-/

/-! ## A083152.P15037027222136529133

`A083151(n+2)/A083151(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083152.P15037027222136529133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083151 (n + 2) : ℚ) / (A083151 (n + 1) : ℚ)

end

end A083152.P15037027222136529133

/-! ## A083152.P17658942308650746465

`ratio[A083151(n+1)]`
-/

namespace A083152.P17658942308650746465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083151 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083152.P17658942308650746465

/-! ## A083152.P14436383833781545956

`ceil(ratio[A083151(A291769(n))])`
-/

namespace A083152.P14436383833781545956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083151 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A083152.P14436383833781545956

/-! ## A083152.P2076067104096314257

`ratio[record[A083151(A143182(n))]]`
-/

namespace A083152.P2076067104096314257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083151 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083152.P2076067104096314257

/-! ## A083152.P412968718843505390

`ratio[record[A083151(A193592(n))]]`
-/

namespace A083152.P412968718843505390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083151 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083152.P412968718843505390

/-!
# A083154: a(n) = A083153(n+1)/A083153(n).

The programs for A083154, there is no canonical definition to state claims against.
-/

/-! ## A083154.P15290379576023202044

`ratio[A083153(n+1)]`
-/

namespace A083154.P15290379576023202044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083153 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083154.P15290379576023202044

/-! ## A083154.P2614139442541383243

`A083153(n+2)/A083153(n+1)`
-/

namespace A083154.P2614139442541383243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083153 (n + 2) : ℚ) / (A083153 (n + 1) : ℚ)

end

end A083154.P2614139442541383243

/-!
# A083155: a(1) = 9, a(n) = smallest nontrivial palindromic multiple of a(n-1). a(n) is not equal to a(n-1) or a concatenation of a(n-1) with itself.

The programs for A083155, there is no canonical definition to state claims against.
-/

/-! ## A083155.P6403386320067151885

`A068668(n+2)/A083156(A233583(n+2))`
-/

namespace A083155.P6403386320067151885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068668 (n + 2) : ℚ) / (A083156 (A233583 (n + 2)).toNat : ℚ)

end

end A083155.P6403386320067151885

/-!
# A083156: a(n) = A083155(n+1)/A083155(n).

The programs for A083156, there is no canonical definition to state claims against.
-/

/-! ## A083156.P102193312684121219

`A083155(n+2)/A083155(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083156.P102193312684121219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083155 (n + 2) : ℚ) / (A083155 (n + 1) : ℚ)

end

end A083156.P102193312684121219

/-! ## A083156.P1089173703616279396

`ratio[A083155(n+1)]`
-/

namespace A083156.P1089173703616279396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083155 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083156.P1089173703616279396

/-! ## A083156.P17761108952157728733

`floor(ratio[A083155(A291769(n))])`
-/

namespace A083156.P17761108952157728733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083155 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A083156.P17761108952157728733

/-! ## A083156.P5609952032413113296

`ratio[record[A083155(A051340(n))]]`
-/

namespace A083156.P5609952032413113296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083155 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083156.P5609952032413113296

/-! ## A083156.P18115838649087027766

`ratio[record[A083155(A143182(n))]]`
-/

namespace A083156.P18115838649087027766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083155 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A083156.P18115838649087027766

/-!
# A083157: Palindromes which are the geometric mean of two distinct palindromes >1.

The programs for A083157, there is no canonical definition to state claims against.
-/

/-! ## A083157.P5982297609423919670

`A265571(A255843(n))`
-/

namespace A083157.P5982297609423919670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265571 (A255843 n).toNat

end

end A083157.P5982297609423919670

/-! ## A083157.P17608479035226026221

`A265569(A178547(n+1))`
-/

namespace A083157.P17608479035226026221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A178547 (n + 1)).toNat

end

end A083157.P17608479035226026221

/-! ## A083157.P18075386478530212903

`A265569(A192096(n+1))`
-/

namespace A083157.P18075386478530212903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A192096 (n + 1)).toNat

end

end A083157.P18075386478530212903

/-!
# A083158: Palindromes which are the arithmetic mean of two distinct palindromes.

The programs for A083158, there is no canonical definition to state claims against.
-/

/-! ## A083158.P18422399734630958972

`A262038(A002113(n+4)-A359910(3*(n+1)))`
-/

namespace A083158.P18422399734630958972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A002113 (n + 4) - A359910 (3 * (n + 1))).toNat

end

end A083158.P18422399734630958972

/-! ## A083158.P7887341095631299681

`record[A047813(n+12)]`
-/

namespace A083158.P7887341095631299681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083158.P7887341095631299681

/-! ## A083158.P14497181265653627772

`filter[A337843(n+1), A136522(#)]`
-/

namespace A083158.P14497181265653627772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A083158.P14497181265653627772

/-! ## A083158.P10679669208241129239

`lt[A136522(A038872(n+1)), A136522(n)]`
-/

namespace A083158.P10679669208241129239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A038872 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083158.P10679669208241129239

/-! ## A083158.P9218713787451627028

`A109872(A167619(n+2))`
-/

namespace A083158.P9218713787451627028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109872 (A167619 (n + 2)).toNat

end

end A083158.P9218713787451627028

/-!
# A083159: Palindromes n such that the n*m is also a palindrome, where m is the next palindrome after n.

The programs for A083159, there is no canonical definition to state claims against.
-/

/-! ## A083159.P5236323693050022361

`record[A178836(n+1)%A004087(A004167(n))]`
-/

namespace A083159.P5236323693050022361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178836 (n + 1)) (A004087 (A004167 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083159.P5236323693050022361

/-!
# A083160: Palindromes n such that the n + m is also a palindrome, where m is the next palindrome after n.

The programs for A083160, there is no canonical definition to state claims against.
-/

/-! ## A083160.P14422420817866365056

`record[A265518(A051801(n))]`
-/

namespace A083160.P14422420817866365056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A051801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083160.P14422420817866365056

/-! ## A083160.P17377843167703726041

`record[A265567(A112382(n))]`
-/

namespace A083160.P17377843167703726041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265567 (A112382 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083160.P17377843167703726041

/-! ## A083160.P3872226536573044794

`record[A265518(∑[A057790(n)])]`
-/

namespace A083160.P3872226536573044794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083160.P3872226536573044794

/-! ## A083160.P16930050148599478538

`record[A265518(A007093(n+1))]`
-/

namespace A083160.P16930050148599478538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A007093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083160.P16930050148599478538

/-! ## A083160.P2634396582443189931

`record[A265518(A007954(n+1))]`
-/

namespace A083160.P2634396582443189931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A007954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083160.P2634396582443189931

/-!
# A083161: a(n) = (concatenation of the first n terms of A099552)/n.

The programs for A083161, there is no canonical definition to state claims against.
-/

/-! ## A083161.P12383264088581720674

`∑[A250469(∏[record[n%3+1+n]])]`
-/

namespace A083161.P12383264088581720674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083161.P12383264088581720674

/-!
# A083165: a(n) = (Sum of the terms of A083164 with index which are the divisors of n ) /n.

The programs for A083165, there is no canonical definition to state claims against.
-/

/-! ## A083165.P12999517229704848437

`A176723(A115621(n+1)!)+A071625(n+1)`
-/

namespace A083165.P12999517229704848437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 (Nat.factorial (A115621 (n + 1)).toNat) + A071625 (n + 1)

end

end A083165.P12999517229704848437

/-! ## A083165.P1019131095789500337

`A001221(A134441(n+1)+floor(3/acot(n)))`
-/

namespace A083165.P1019131095789500337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A134441 (n + 1) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A083165.P1019131095789500337

/-! ## A083165.P16789555309936963890

`A001221(A134441(n+1)+A008486(n))`
-/

namespace A083165.P16789555309936963890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A134441 (n + 1) + A008486 n).toNat

end

end A083165.P16789555309936963890

/-! ## A083165.P3395281127028445793

`∑{e}[A134441(n+1)+A008486(n), A007318(#)]`
-/

namespace A083165.P3395281127028445793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134441 (n + 1) + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p)

end

end A083165.P3395281127028445793

/-!
# A083166: Fixed points of A083164: numbers k such that A083164(k) = k.

The programs for A083166, there is no canonical definition to state claims against.
-/

/-! ## A083166.P2268331099097547356

`eq[n, A083164(round(sqrt(n²+1)))]`
-/

namespace A083166.P2268331099097547356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083164 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083166.P2268331099097547356

/-! ## A083166.P5131813257218613962

`eq[n+1, A083164(n+1)]+1`
-/

namespace A083166.P5131813257218613962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083166.P5131813257218613962

/-!
# A083167: Triangle read by rows in which from the second row onwards the n-th row contains n smallest multiples of (n-1) not included earlier such that the row sum is a multiple of n. Triangle begins with 1.

The programs for A083167, there is no canonical definition to state claims against.
-/

/-! ## A083167.P16108466825648719383

`floor(acot(n))+A003056(n)*A083172(n+1)`
-/

namespace A083167.P16108466825648719383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + A003056 n * A083172 (n + 1)

end

end A083167.P16108466825648719383

/-! ## A083167.P5786596105249628750

`A003056(n^floor(atan(n)))*A083172(n+1)`
-/

namespace A083167.P5786596105249628750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat * A083172 (n + 1)

end

end A083167.P5786596105249628750

/-! ## A083167.P9321937147016120482

`A003056(abs(1-n)+1)*A083172(n+1)`
-/

namespace A083167.P9321937147016120482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (|1 - (n : ℤ)| + 1).toNat * A083172 (n + 1)

end

end A083167.P9321937147016120482

/-! ## A083167.P10761660170221677420

`A000007(n)+A003056(n)*A083172(n+1)`
-/

namespace A083167.P10761660170221677420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A003056 n * A083172 (n + 1)

end

end A083167.P10761660170221677420

/-! ## A083167.P8849397558979935639

`(A003056(n)*A083172(n+1))^A057428(n)²`
-/

namespace A083167.P8849397558979935639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n * A083172 (n + 1) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A083167.P8849397558979935639

/-! ## A083167.P18433009440316597335

`(A003056(n)*A083172(n+1))^(A000040(n+1)%2)`
-/

namespace A083167.P18433009440316597335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n * A083172 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A083167.P18433009440316597335

/-! ## A083167.P17209377021903838094

`A000196(A063656(n)+1)*A083172(n+1)`
-/

namespace A083167.P17209377021903838094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A063656 n + 1).toNat * A083172 (n + 1)

end

end A083167.P17209377021903838094

/-! ## A083167.P15652725180743630160

`A028310((comp[C(n, 2)-2]-n)*A083172(n+1))`
-/

namespace A083167.P15652725180743630160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * A083172 (n + 1)).toNat

end

end A083167.P15652725180743630160

/-! ## A083167.P4817440496927438113

`A028310(A003056(n)*A083172(n+1))`
-/

namespace A083167.P4817440496927438113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003056 n * A083172 (n + 1)).toNat

end

end A083167.P4817440496927438113

/-! ## A083167.P10721912925791925763

`A028310(Δ[A006463(n)]*A083172(n+1))`
-/

namespace A083167.P10721912925791925763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((f1 (n + 1) - f1 n) * A083172 (n + 1)).toNat

end

end A083167.P10721912925791925763

/-!
# A083168: Diagonal of A083167.

The programs for A083168, there is no canonical definition to state claims against.
-/

/-! ## A083168.P16187428059102934367

`A083167(∑[n+1])`
-/

namespace A083168.P16187428059102934367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083167 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083168.P16187428059102934367

/-! ## A083168.P9441579773894256662

`A000027(A083167(C(n+2, 2)))`
-/

namespace A083168.P9441579773894256662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A083167 (Nat.choose (n + 2) 2)).toNat

end

end A083168.P9441579773894256662

/-! ## A083168.P6612838670233706431

`A083167(C(n+2, 2))+A001489(n)+n`
-/

namespace A083168.P6612838670233706431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083167 (Nat.choose (n + 2) 2) + A001489 n + (n : ℤ)

end

end A083168.P6612838670233706431

/-! ## A083168.P14892289759499115451

`A028310(n)*A083172(A000124(n)+n)`
-/

namespace A083168.P14892289759499115451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A083172 (A000124 n + (n : ℤ)).toNat

end

end A083168.P14892289759499115451

/-!
# A083169: First column of A083167.

The programs for A083169, there is no canonical definition to state claims against.
-/

/-! ## A083169.P13091051279042669698

`A083167(∑[n]+1)`
-/

namespace A083169.P13091051279042669698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083169.P13091051279042669698

/-! ## A083169.P721231594470877059

`round(1/acot(n))*A083172(A000124(n))`
-/

namespace A083169.P721231594470877059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A083172 (A000124 n).toNat

end

end A083169.P721231594470877059

/-! ## A083169.P8499998493253632695

`A000007(n)+n*A083172(A000124(n))`
-/

namespace A083169.P8499998493253632695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A083172 (A000124 n).toNat

end

end A083169.P8499998493253632695

/-! ## A083169.P6707347452068220630

`A028310(n*A083172(A000124(n)))`
-/

namespace A083169.P6707347452068220630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A083172 (A000124 n).toNat).toNat

end

end A083169.P6707347452068220630

/-!
# A083170: Row sums in A083167.

The programs for A083170, there is no canonical definition to state claims against.
-/

/-! ## A083170.P4203866805982555419

`(n+1)*A083171(n+1)`
-/

namespace A083170.P4203866805982555419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083171 (n + 1)

end

end A083170.P4203866805982555419

/-! ## A083170.P12373243843261501505

`A373676(A053818(n+1)+A000217(n))`
-/

namespace A083170.P12373243843261501505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373676 (A053818 (n + 1) + A000217 n).toNat

end

end A083170.P12373243843261501505

/-!
# A083171: a(n) = the arithmetic mean of the n-th row of triangle A083167.

The programs for A083171, there is no canonical definition to state claims against.
-/

/-! ## A083171.P8197904597900485137

`A083170(n+1)/(n+1)`
-/

namespace A083171.P8197904597900485137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083170 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083171.P8197904597900485137

/-! ## A083171.P3311467218280055429

`abs(A083170(A008619(2*n))/xor(n, -1))`
-/

namespace A083171.P3311467218280055429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A083170 (A008619 (2 * n)).toNat : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ)|

end

end A083171.P3311467218280055429

/-!
# A083172: Triangle read by rows: T(1, 1) = 1 and for n > 1, T(n, k) = A083167(n, k)/(n-1).

The programs for A083172, there is no canonical definition to state claims against.
-/

/-! ## A083172.P49984640990924289

`A083167(n+1)/A028310(A003056(n))`
-/

namespace A083172.P49984640990924289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083167 (n + 1) : ℚ) / (A028310 (A003056 n).toNat : ℚ)

end

end A083172.P49984640990924289

/-! ## A083172.P9328394173165072557

`A083167(n+1)/A028310(Δ[A006463(n)])`
-/

namespace A083172.P9328394173165072557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083167 (n + 1) : ℚ) / (A028310 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A083172.P9328394173165072557

/-! ## A083172.P2640329351340900907

`A083167(n+1)/A003056(A000007(n)+n)`
-/

namespace A083172.P2640329351340900907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083167 (n + 1) : ℚ) / (A003056 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A083172.P2640329351340900907

/-! ## A083172.P8655455566593680397

`A083167(n+1)/A051162(1-A051162(n)+n)`
-/

namespace A083172.P8655455566593680397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083167 (n + 1) : ℚ) / (A051162 (1 - A051162 n + (n : ℤ)).toNat : ℚ)

end

end A083172.P8655455566593680397

/-! ## A083172.P4473619963441325781

`A083167(n+1)/A003056(A123108(2*n))`
-/

namespace A083172.P4473619963441325781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083167 (n + 1) : ℚ) / (A003056 (A123108 (2 * n)).toNat : ℚ)

end

end A083172.P4473619963441325781

/-! ## A083172.P6251241591250267294

`A083167(n+1)/A003056(A233583(n+1))`
-/

namespace A083172.P6251241591250267294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083167 (n + 1) : ℚ) / (A003056 (A233583 (n + 1)).toNat : ℚ)

end

end A083172.P6251241591250267294

/-!
# A083173: Triangle read by rows: the n-th row contains the first n-1 multiples of prime(n) followed by the next multiple that will make the row sum a multiple of n.

The programs for A083173, the canonical program `A083173.P701774359917477188` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083173 has offset 1).

The definition of A083173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083173.P701774359917477188

`A005145(n+1)*A080511(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A083173

/-- `A005145(n+1)*A080511(n+1)` -/
def P701774359917477188.Spec : Prop :=
  ∀ n, P701774359917477188.a n = A083173 (n + 1)

theorem P701774359917477188.correct : P701774359917477188.Spec := by
  intro n
  simp only [A083173, Nat.add_sub_cancel]

end A083173

/-! ## A083173.P17603240127723438785

`A008578(comp[∑[n]]-n)*A080511(n+1)`
-/

namespace A083173.P17603240127723438785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) * A080511 (n + 1)

end

end A083173.P17603240127723438785

namespace A083173

/-- `A008578(comp[∑[n]]-n)*A080511(n+1)` -/
def P17603240127723438785.Spec : Prop :=
  ∀ n, P17603240127723438785.a n = A083173 (n + 1)

end A083173

/-! ## A083173.P4429998269142585616

`A000040(round(sqrt(2*(n+1))))*A080511(n+1)`
-/

namespace A083173.P4429998269142585616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat * A080511 (n + 1)

end

end A083173.P4429998269142585616

namespace A083173

/-- `A000040(round(sqrt(2*(n+1))))*A080511(n+1)` -/
def P4429998269142585616.Spec : Prop :=
  ∀ n, P4429998269142585616.a n = A083173 (n + 1)

end A083173

/-! ## A083173.P9089968857524799763

`A037126(A127739(n+1))*A080511(n+1)`
-/

namespace A083173.P9089968857524799763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A127739 (n + 1)).toNat * A080511 (n + 1)

end

end A083173.P9089968857524799763

namespace A083173

/-- `A037126(A127739(n+1))*A080511(n+1)` -/
def P9089968857524799763.Spec : Prop :=
  ∀ n, P9089968857524799763.a n = A083173 (n + 1)

end A083173

/-! ## A083173.P15785717640435274686

`A006530(A077320(n+1))*A080511(n+1)`
-/

namespace A083173.P15785717640435274686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077320 (n + 1)).toNat * A080511 (n + 1)

end

end A083173.P15785717640435274686

namespace A083173

/-- `A006530(A077320(n+1))*A080511(n+1)` -/
def P15785717640435274686.Spec : Prop :=
  ∀ n, P15785717640435274686.a n = A083173 (n + 1)

end A083173

/-! ## A083173.P2638014166871065833

`A006530(A087112(n+1))*A080511(n+1)`
-/

namespace A083173.P2638014166871065833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087112 (n + 1)).toNat * A080511 (n + 1)

end

end A083173.P2638014166871065833

namespace A083173

/-- `A006530(A087112(n+1))*A080511(n+1)` -/
def P2638014166871065833.Spec : Prop :=
  ∀ n, P2638014166871065833.a n = A083173 (n + 1)

end A083173

/-! ## A083173.P439763664963784548

`A019565(A137688(n))*A080511(n+1)`
-/

namespace A083173.P439763664963784548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A137688 n).toNat * A080511 (n + 1)

end

end A083173.P439763664963784548

namespace A083173

/-- `A019565(A137688(n))*A080511(n+1)` -/
def P439763664963784548.Spec : Prop :=
  ∀ n, P439763664963784548.a n = A083173 (n + 1)

end A083173

/-! ## A083173.P11145484867699602966

`A080511(n+1)*A337377(A140513(n))`
-/

namespace A083173.P11145484867699602966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A337377 (A140513 n).toNat

end

end A083173.P11145484867699602966

namespace A083173

/-- `A080511(n+1)*A337377(A140513(n))` -/
def P11145484867699602966.Spec : Prop :=
  ∀ n, P11145484867699602966.a n = A083173 (n + 1)

end A083173

/-!
# A083174: Leading diagonal of A083173.

The programs for A083174, the canonical program `A083174.P3712066604536312936` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083174 has offset 1).

The definition of A083174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083174.P7178212028595851830

`(and(1, n)/2+1)*(n+1)*p?[ceil(2/acot(n))]`
-/

namespace A083174.P7178212028595851830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℚ) / 2 + 1) * (n + 1 : ℚ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A083174.P7178212028595851830

namespace A083174

/-- `(and(1, n)/2+1)*(n+1)*p?[ceil(2/acot(n))]` -/
def P7178212028595851830.Spec : Prop :=
  ∀ n, P7178212028595851830.a n = (A083174 (n + 1) : ℚ)

end A083174

/-! ## A083174.P16029542803532398820

`3*p?[round(8*n/7)]*(n+1)/(gcd(2, n)+1)`
-/

namespace A083174.P16029542803532398820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) * ((n + 1 : ℚ) / (Nat.gcd 2 n + 1 : ℚ))

end

end A083174.P16029542803532398820

namespace A083174

/-- `3*p?[round(8*n/7)]*(n+1)/(gcd(2, n)+1)` -/
def P16029542803532398820.Spec : Prop :=
  ∀ n, P16029542803532398820.a n = (A083174 (n + 1) : ℚ)

end A083174

/-! ## A083174.P5828117067239943497

`(n+1)/2*A107621(n+1)`
-/

namespace A083174.P5828117067239943497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A107621 (n + 1) : ℚ)

end

end A083174.P5828117067239943497

namespace A083174

/-- `(n+1)/2*A107621(n+1)` -/
def P5828117067239943497.Spec : Prop :=
  ∀ n, P5828117067239943497.a n = (A083174 (n + 1) : ℚ)

end A083174

/-! ## A083174.P3712066604536312936

`p?[xor(1, n)+1]*A080512(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083174

/-- `p?[xor(1, n)+1]*A080512(n+1)` -/
def P3712066604536312936.Spec : Prop :=
  ∀ n, P3712066604536312936.a n = A083174 (n + 1)

theorem P3712066604536312936.correct : P3712066604536312936.Spec := by
  intro n
  simp only [A083174, Nat.add_sub_cancel]

end A083174

/-! ## A083174.P13286731949297939746

`A000040(n+1)*A080512(n+1)`
-/

namespace A083174.P13286731949297939746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A080512 (n + 1)

end

end A083174.P13286731949297939746

namespace A083174

/-- `A000040(n+1)*A080512(n+1)` -/
def P13286731949297939746.Spec : Prop :=
  ∀ n, P13286731949297939746.a n = A083174 (n + 1)

end A083174

/-! ## A083174.P6489370911907217422

`p?[ceil(2/acot(n))]*A032742(3*(n+1))`
-/

namespace A083174.P6489370911907217422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A032742 (3 * (n + 1))

end

end A083174.P6489370911907217422

namespace A083174

/-- `p?[ceil(2/acot(n))]*A032742(3*(n+1))` -/
def P6489370911907217422.Spec : Prop :=
  ∀ n, P6489370911907217422.a n = A083174 (n + 1)

end A083174

/-! ## A083174.P17385557443895812447

`A083173(∑[n+1])`
-/

namespace A083174.P17385557443895812447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083173 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083174.P17385557443895812447

namespace A083174

/-- `A083173(∑[n+1])` -/
def P17385557443895812447.Spec : Prop :=
  ∀ n, P17385557443895812447.a n = A083174 (n + 1)

end A083174

/-!
# A083175: Row sums in A083175.

The programs for A083175, the canonical program `A083175.P13449966882912245673` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083175 has offset 1).

The definition of A083175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083175.P13449966882912245673

`(n+1)*(ceil(n/2)+1)*p?[abs(xor(n, -2))]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083175

/-- `(n+1)*(ceil(n/2)+1)*p?[abs(xor(n, -2))]` -/
def P13449966882912245673.Spec : Prop :=
  ∀ n, P13449966882912245673.a n = A083175 (n + 1)

theorem P13449966882912245673.correct : P13449966882912245673.Spec := by
  intro n
  simp only [A083175, Nat.add_sub_cancel]

end A083175

/-! ## A083175.P2014632376817547052

`(ceil(n/2)+1)*(n+1)*p?[xor(1, n)+1]`
-/

namespace A083175.P2014632376817547052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A083175.P2014632376817547052

namespace A083175

/-- `(ceil(n/2)+1)*(n+1)*p?[xor(1, n)+1]` -/
def P2014632376817547052.Spec : Prop :=
  ∀ n, P2014632376817547052.a n = A083175 (n + 1)

end A083175

/-! ## A083175.P4927083357516326018

`(n+1)*A083176(n+1)`
-/

namespace A083175.P4927083357516326018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083176 (n + 1)

end

end A083175.P4927083357516326018

namespace A083175

/-- `(n+1)*A083176(n+1)` -/
def P4927083357516326018.Spec : Prop :=
  ∀ n, P4927083357516326018.a n = A083175 (n + 1)

end A083175

/-! ## A083175.P3785152212402872000

`(ceil(n/2)+1)*A033286(n+1)`
-/

namespace A083175.P3785152212402872000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * A033286 (n + 1)

end

end A083175.P3785152212402872000

namespace A083175

/-- `(ceil(n/2)+1)*A033286(n+1)` -/
def P3785152212402872000.Spec : Prop :=
  ∀ n, P3785152212402872000.a n = A083175 (n + 1)

end A083175

/-! ## A083175.P8932105562317193145

`(ceil(n/2)+1)*∑[A090942(n+1)]`
-/

namespace A083175.P8932105562317193145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083175.P8932105562317193145

namespace A083175

/-- `(ceil(n/2)+1)*∑[A090942(n+1)]` -/
def P8932105562317193145.Spec : Prop :=
  ∀ n, P8932105562317193145.a n = A083175 (n + 1)

end A083175

/-! ## A083175.P10585976394046308380

`A033286(n+1)*A080513(n)`
-/

namespace A083175.P10585976394046308380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) * A080513 n

end

end A083175.P10585976394046308380

namespace A083175

/-- `A033286(n+1)*A080513(n)` -/
def P10585976394046308380.Spec : Prop :=
  ∀ n, P10585976394046308380.a n = A083175 (n + 1)

end A083175

/-! ## A083175.P16730251351773783809

`A000040(n+1)*A265225(n)`
-/

namespace A083175.P16730251351773783809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A265225 n

end

end A083175.P16730251351773783809

namespace A083175

/-- `A000040(n+1)*A265225(n)` -/
def P16730251351773783809.Spec : Prop :=
  ∀ n, P16730251351773783809.a n = A083175 (n + 1)

end A083175

/-! ## A083175.P8151776696632597758

`lcm(A033286(n+1), A097362(n+1))`
-/

namespace A083175.P8151776696632597758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033286 (n + 1)) (A097362 (n + 1))

end

end A083175.P8151776696632597758

namespace A083175

/-- `lcm(A033286(n+1), A097362(n+1))` -/
def P8151776696632597758.Spec : Prop :=
  ∀ n, (P8151776696632597758.a n : ℤ) = A083175 (n + 1)

end A083175

/-!
# A083176: Arithmetic means of rows of A083173.

The programs for A083176, the canonical program `A083176.P12552362125242154043` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083176 has offset 1).

The definition of A083176 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083175, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083176.P12552362125242154043

`A083175(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083176

/-- `A083175(n+1)/(n+1)` -/
def P12552362125242154043.Spec : Prop :=
  ∀ n, P12552362125242154043.a n = (A083176 (n + 1) : ℚ)

end A083176

/-! ## A083176.P7745116735618264883

`(ceil(n/2)+1)*p?[abs(xor(n, -2))]`
-/

namespace A083176.P7745116735618264883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083176.P7745116735618264883

namespace A083176

/-- `(ceil(n/2)+1)*p?[abs(xor(n, -2))]` -/
def P7745116735618264883.Spec : Prop :=
  ∀ n, P7745116735618264883.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P6576611155412229542

`(ceil(n/2)+1)*p?[xor(1, n)+1]`
-/

namespace A083176.P6576611155412229542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A083176.P6576611155412229542

namespace A083176

/-- `(ceil(n/2)+1)*p?[xor(1, n)+1]` -/
def P6576611155412229542.Spec : Prop :=
  ∀ n, P6576611155412229542.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P17641508312440835043

`(ceil(n/2)+1)*p?[round(sqrt(n)+n)]`
-/

namespace A083176.P17641508312440835043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083176.P17641508312440835043

namespace A083176

/-- `(ceil(n/2)+1)*p?[round(sqrt(n)+n)]` -/
def P17641508312440835043.Spec : Prop :=
  ∀ n, P17641508312440835043.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P1496866081578208855

`lcm(floor((n+1)/2)+1, p?[xor(1, n)+1])`
-/

namespace A083176.P1496866081578208855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌊(n + 1 : ℚ) / 2⌋ + 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A083176.P1496866081578208855

namespace A083176

/-- `lcm(floor((n+1)/2)+1, p?[xor(1, n)+1])` -/
def P1496866081578208855.Spec : Prop :=
  ∀ n, (P1496866081578208855.a n : ℤ) = A083176 (n + 1)

end A083176

/-! ## A083176.P5688246364845867722

`(abs(p?[round(8*n/7)]-n)+n)*(∑[n%2]+1)`
-/

namespace A083176.P5688246364845867722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A083176.P5688246364845867722

namespace A083176

/-- `(abs(p?[round(8*n/7)]-n)+n)*(∑[n%2]+1)` -/
def P5688246364845867722.Spec : Prop :=
  ∀ n, P5688246364845867722.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P3014909397239129589

`A000040(n+1)*A080513(n)`
-/

namespace A083176.P3014909397239129589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A080513 n

end

end A083176.P3014909397239129589

namespace A083176

/-- `A000040(n+1)*A080513(n)` -/
def P3014909397239129589.Spec : Prop :=
  ∀ n, P3014909397239129589.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P10314829690969315455

`A000040(n+1)*A008619(n+1)`
-/

namespace A083176.P10314829690969315455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008619 (n + 1)

end

end A083176.P10314829690969315455

namespace A083176

/-- `A000040(n+1)*A008619(n+1)` -/
def P10314829690969315455.Spec : Prop :=
  ∀ n, P10314829690969315455.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P10375256416290363703

`A000040(n+1)*(A110654(n)+1)`
-/

namespace A083176.P10375256416290363703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (A110654 n + 1)

end

end A083176.P10375256416290363703

namespace A083176

/-- `A000040(n+1)*(A110654(n)+1)` -/
def P10375256416290363703.Spec : Prop :=
  ∀ n, P10375256416290363703.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P15419091949664198385

`A000040(n+1)+A000040(n+1)*A004526(n+1)`
-/

namespace A083176.P15419091949664198385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 1) * A004526 (n + 1)

end

end A083176.P15419091949664198385

namespace A083176

/-- `A000040(n+1)+A000040(n+1)*A004526(n+1)` -/
def P15419091949664198385.Spec : Prop :=
  ∀ n, P15419091949664198385.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P12217054142075420445

`A077320(A080827(n+1))`
-/

namespace A083176.P12217054142075420445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077320 (A080827 (n + 1)).toNat

end

end A083176.P12217054142075420445

namespace A083176

/-- `A077320(A080827(n+1))` -/
def P12217054142075420445.Spec : Prop :=
  ∀ n, P12217054142075420445.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P12999152732932337908

`A077320(A099392(n+2))`
-/

namespace A083176.P12999152732932337908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077320 (A099392 (n + 2)).toNat

end

end A083176.P12999152732932337908

namespace A083176

/-- `A077320(A099392(n+2))` -/
def P12999152732932337908.Spec : Prop :=
  ∀ n, P12999152732932337908.a n = A083176 (n + 1)

end A083176

/-! ## A083176.P8524812176673001718

`A077320(A000982(n)+n+1)`
-/

namespace A083176.P8524812176673001718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077320 (A000982 n + (n + 1 : ℤ)).toNat

end

end A083176.P8524812176673001718

namespace A083176

/-- `A077320(A000982(n)+n+1)` -/
def P8524812176673001718.Spec : Prop :=
  ∀ n, P8524812176673001718.a n = A083176 (n + 1)

end A083176

/-!
# A083177: Let P(k) = floor(k/2). Start with n, apply P repeatedly until reach 1. a(n) = concatenation of numbers obtained.

The programs for A083177, there is no canonical definition to state claims against.
-/

/-! ## A083177.P7499369613724695049

`A004086(∑[10^A001511(n+1)])`
-/

namespace A083177.P7499369613724695049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001511 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083177.P7499369613724695049

/-! ## A083177.P12537863912656003438

`A004186(∑[10^A007814(n+1)])`
-/

namespace A083177.P12537863912656003438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A007814 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083177.P12537863912656003438

/-! ## A083177.P6246361838855117645

`A004086(∑[10^A265331(n+1)])`
-/

namespace A083177.P6246361838855117645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A265331 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083177.P6246361838855117645

/-! ## A083177.P16512663596703362804

`A004186(∑[A007088(2^val(n+1, 2))])`
-/

namespace A083177.P16512663596703362804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083177.P16512663596703362804

/-! ## A083177.P9240440112006164805

`A004086(∑[A007088(xor(n, n+1)+1)])`
-/

namespace A083177.P9240440112006164805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083177.P9240440112006164805

/-!
# A083178: Numbers with a digit sum of n and a maximum product of digits. In case of two identical products choose the largest number.

The programs for A083178, the canonical program `A083178.P18214434896536918023` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083178 has offset 1).

The definition of A083178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083178.P14111816879218944219

`a(n-3)+3*10^floor(n/3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=22`
-/

namespace A083178.P14111816879218944219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3, 22] fun n a =>
  a (n - 3) + 3 * (10 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A083178.P14111816879218944219

namespace A083178

/-- `a(n-3)+3*10^floor(n/3)` -/
def P14111816879218944219.Spec : Prop :=
  ∀ n, P14111816879218944219.a n = (A083178 (n + 1) : ℚ)

end A083178

/-! ## A083178.P18214434896536918023

`11*a(n-3)-10*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=22, a(4)=32, a(5)=33, a(6)=322`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083178

/-- `11*a(n-3)-10*a(n-6)` -/
def P18214434896536918023.Spec : Prop :=
  ∀ n, P18214434896536918023.a n = A083178 (n + 1)

theorem P18214434896536918023.correct : P18214434896536918023.Spec := by
  intro n
  simp only [A083178, Nat.add_sub_cancel]

end A083178

/-! ## A083178.P1159429821783796673

`A084796(record[A006047(n)])`
-/

namespace A083178.P1159429821783796673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083178.P1159429821783796673

namespace A083178

/-- `A084796(record[A006047(n)])` -/
def P1159429821783796673.Spec : Prop :=
  ∀ n, P1159429821783796673.a n = A083178 (n + 1)

end A083178

/-! ## A083178.P9953430076721268246

`A084796(record[A036561(n)])`
-/

namespace A083178.P9953430076721268246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083178.P9953430076721268246

namespace A083178

/-- `A084796(record[A036561(n)])` -/
def P9953430076721268246.Spec : Prop :=
  ∀ n, P9953430076721268246.a n = A083178 (n + 1)

end A083178

/-! ## A083178.P16350155335157607030

`A084797(record[A036561(n)])`
-/

namespace A083178.P16350155335157607030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083178.P16350155335157607030

namespace A083178

/-- `A084797(record[A036561(n)])` -/
def P16350155335157607030.Spec : Prop :=
  ∀ n, P16350155335157607030.a n = A083178 (n + 1)

end A083178

/-!
# A083179: a(1)=1, a(n) = smallest positive integer not included earlier such that the partial sums of a(A000040) are prime and the partial sums of a(A002808) are composite.

The programs for A083179, there is no canonical definition to state claims against.
-/

/-! ## A083179.P15914003146644084763

`A121878(A194977(n+1)%A167517(n+1))`
-/

namespace A083179.P15914003146644084763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121878 (Int.tmod (A194977 (n + 1)) (A167517 (n + 1))).toNat

end

end A083179.P15914003146644084763

/-!
# A083180: Numbers which retain their natural position under the rearrangement of A083179.

The programs for A083180, there is no canonical definition to state claims against.
-/

/-! ## A083180.P695316613673402955

`eq[n, A083179(abs(1-n)+1)]`
-/

namespace A083180.P695316613673402955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083179 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083180.P695316613673402955

/-! ## A083180.P17697370271682154054

`record[gcd(n+1, A083179(n+1))]`
-/

namespace A083180.P17697370271682154054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A083179 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083180.P17697370271682154054

/-! ## A083180.P10847337734394167795

`record[gcd(A083179(n+1), A131738(n))]`
-/

namespace A083180.P10847337734394167795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083179 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083180.P10847337734394167795

/-! ## A083180.P12458452001475327649

`eq[A000027(n+1), A083179(n+1)]+1`
-/

namespace A083180.P12458452001475327649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A083180.P12458452001475327649

/-! ## A083180.P5402850037251622306

`A083179(eq[n+1, A083179(n+1)]+1)`
-/

namespace A083180.P5402850037251622306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083180.P5402850037251622306

/-!
# A083183: Smallest palindromic prime using only prime digits (2,3,5,7) and having a sum of digits = prime(n), or 0 if no such number exists.

The programs for A083183, there is no canonical definition to state claims against.
-/

/-! ## A083183.P3251791129729328217

`p?[A084983(∑[A007318(n)])]`
-/

namespace A083183.P3251791129729328217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084983 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083183.P3251791129729328217

/-! ## A083183.P12397119064424808432

`p?[A084983(∑[A141020(n)])]`
-/

namespace A083183.P12397119064424808432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084983 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083183.P12397119064424808432

/-! ## A083183.P11747431662829774913

`record[p?[A084983(A145111(n))]]`
-/

namespace A083183.P11747431662829774913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084983 (A145111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083183.P11747431662829774913

/-!
# A083184: Smallest palindromic prime having a sum of digits = prime(n), or 0 if no such number exists.

The programs for A083184, there is no canonical definition to state claims against.
-/

/-! ## A083184.P4882430168149335751

`A070245(A000040(n+1))`
-/

namespace A083184.P4882430168149335751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070245 (A000040 (n + 1)).toNat

end

end A083184.P4882430168149335751

/-! ## A083184.P10494480737301928694

`A070245(A049551(n+1))`
-/

namespace A083184.P10494480737301928694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070245 (A049551 (n + 1)).toNat

end

end A083184.P10494480737301928694

/-! ## A083184.P10693075822889280153

`A070245(A057448(n+1))`
-/

namespace A083184.P10693075822889280153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070245 (A057448 (n + 1)).toNat

end

end A083184.P10693075822889280153

/-! ## A083184.P7603616313002841360

`A070245(A058853(n+1))`
-/

namespace A083184.P7603616313002841360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070245 (A058853 (n + 1)).toNat

end

end A083184.P7603616313002841360

/-! ## A083184.P14984954312470626372

`A070245(A077359(n+1))`
-/

namespace A083184.P14984954312470626372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070245 (A077359 (n + 1)).toNat

end

end A083184.P14984954312470626372

/-!
# A083185: Palindromic primes using only nonprime digits (0,1,4,6,8,9).

The programs for A083185, there is no canonical definition to state claims against.
-/

/-! ## A083185.P12173801531988342836

`∩[A002385(n+1), A084985(n+1)]`
-/

namespace A083185.P12173801531988342836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P12173801531988342836

/-! ## A083185.P11596687961537270150

`∩[A072299(n+1), A084985(n+1)]`
-/

namespace A083185.P11596687961537270150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P11596687961537270150

/-! ## A083185.P5784436280137437046

`∩[A084985(n+1), A232183(n+1)]`
-/

namespace A083185.P5784436280137437046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P5784436280137437046

/-! ## A083185.P7395984725242162162

`∩[A002113(n+1), A034844(n+1)]`
-/

namespace A083185.P7395984725242162162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P7395984725242162162

/-! ## A083185.P15028185308435317308

`∩[A002385(n+1), A034844(n+1)]`
-/

namespace A083185.P15028185308435317308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P15028185308435317308

/-! ## A083185.P12577645850504448408

`∩[A029950(n+1), A034844(n+1)]`
-/

namespace A083185.P12577645850504448408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P12577645850504448408

/-! ## A083185.P2524205761037309025

`∩[A034844(n+1), A062687(n+1)]`
-/

namespace A083185.P2524205761037309025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P2524205761037309025

/-! ## A083185.P6899173033732404762

`∩[A034844(n+1), A071251(n+1)]`
-/

namespace A083185.P6899173033732404762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P6899173033732404762

/-! ## A083185.P16098817205643025234

`∩[A034844(n+1), A072299(n+1)]`
-/

namespace A083185.P16098817205643025234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P16098817205643025234

/-! ## A083185.P13648466522840776936

`∩[A034844(n+1), A075800(n+1)]`
-/

namespace A083185.P13648466522840776936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083185.P13648466522840776936

/-!
# A083186: Sum of the first n primes whose indices are primes.

The programs for A083186, the canonical program `A083186.P11976608839394708486` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083186 has offset 1).

The definition of A083186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083186.P11976608839394708486

`∑[A006450(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083186

/-- `∑[A006450(n+1)]` -/
def P11976608839394708486.Spec : Prop :=
  ∀ n, P11976608839394708486.a n = A083186 (n + 1)

theorem P11976608839394708486.correct : P11976608839394708486.Spec := by
  intro n
  simp only [A083186, Nat.add_sub_cancel]

end A083186

/-! ## A083186.P777682982497776990

`∑[sqrt(A092769(n+1))]`
-/

namespace A083186.P777682982497776990
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P777682982497776990

namespace A083186

/-- `∑[sqrt(A092769(n+1))]` -/
def P777682982497776990.Spec : Prop :=
  ∀ n, P777682982497776990.a n = (A083186 (n + 1) : ℝ)

end A083186

/-! ## A083186.P5712508512118187564

`∑[A141138(n+1)+1]`
-/

namespace A083186.P5712508512118187564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P5712508512118187564

namespace A083186

/-- `∑[A141138(n+1)+1]` -/
def P5712508512118187564.Spec : Prop :=
  ∀ n, P5712508512118187564.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P3836029113828023139

`∑[A262021(n+1)+1+n]`
-/

namespace A083186.P3836029113828023139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P3836029113828023139

namespace A083186

/-- `∑[A262021(n+1)+1+n]` -/
def P3836029113828023139.Spec : Prop :=
  ∀ n, P3836029113828023139.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P3718954659002893623

`∑[A080697(n+1)/(n+1)]`
-/

namespace A083186.P3718954659002893623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080697 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P3718954659002893623

namespace A083186

/-- `∑[A080697(n+1)/(n+1)]` -/
def P3718954659002893623.Spec : Prop :=
  ∀ n, P3718954659002893623.a n = (A083186 (n + 1) : ℚ)

end A083186

/-! ## A083186.P12876514593548647418

`∑[A073131(n)+a(n-1)]` with `a(0)=3`
-/

namespace A083186.P12876514593548647418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A073131 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P12876514593548647418

namespace A083186

/-- `∑[A073131(n)+a(n-1)]` -/
def P12876514593548647418.Spec : Prop :=
  ∀ n, P12876514593548647418.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P10045759466112176792

`∑[A168152(n+1)+A000040(n+1)]`
-/

namespace A083186.P10045759466112176792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P10045759466112176792

namespace A083186

/-- `∑[A168152(n+1)+A000040(n+1)]` -/
def P10045759466112176792.Spec : Prop :=
  ∀ n, P10045759466112176792.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P9361126008101220161

`∑[A073136(n+1)-A000040(n+1)]`
-/

namespace A083186.P9361126008101220161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073136 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P9361126008101220161

namespace A083186

/-- `∑[A073136(n+1)-A000040(n+1)]` -/
def P9361126008101220161.Spec : Prop :=
  ∀ n, P9361126008101220161.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P10122218637471762186

`∑[A168152(n+1)+A008864(n+1)-1]`
-/

namespace A083186.P10122218637471762186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + (A008864 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P10122218637471762186

namespace A083186

/-- `∑[A168152(n+1)+A008864(n+1)-1]` -/
def P10122218637471762186.Spec : Prop :=
  ∀ n, P10122218637471762186.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P17433016550177501110

`∑[A168152(n+1)+A040976(n+1)+2]`
-/

namespace A083186.P17433016550177501110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P17433016550177501110

namespace A083186

/-- `∑[A168152(n+1)+A040976(n+1)+2]` -/
def P17433016550177501110.Spec : Prop :=
  ∀ n, P17433016550177501110.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P12781580326594320944

`∑[A175247(n+2)]`
-/

namespace A083186.P12781580326594320944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P12781580326594320944

namespace A083186

/-- `∑[A175247(n+2)]` -/
def P12781580326594320944.Spec : Prop :=
  ∀ n, P12781580326594320944.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P3210521119714079584

`∑[p?[A302596(n+1)]]`
-/

namespace A083186.P3210521119714079584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P3210521119714079584

namespace A083186

/-- `∑[p?[A302596(n+1)]]` -/
def P3210521119714079584.Spec : Prop :=
  ∀ n, P3210521119714079584.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P2325064006815427832

`∑[p?[A302592(n+3)]]`
-/

namespace A083186.P2325064006815427832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P2325064006815427832

namespace A083186

/-- `∑[p?[A302592(n+3)]]` -/
def P2325064006815427832.Spec : Prop :=
  ∀ n, P2325064006815427832.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P16842253669029789088

`∑[p?[A302590(n+1)]]`
-/

namespace A083186.P16842253669029789088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P16842253669029789088

namespace A083186

/-- `∑[p?[A302590(n+1)]]` -/
def P16842253669029789088.Spec : Prop :=
  ∀ n, P16842253669029789088.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P3558263130542359140

`∑[p?[A076610(n+1)]]`
-/

namespace A083186.P3558263130542359140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P3558263130542359140

namespace A083186

/-- `∑[p?[A076610(n+1)]]` -/
def P3558263130542359140.Spec : Prop :=
  ∀ n, P3558263130542359140.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P1419313345698853855

`∑[p?[A302539(n+3)]]`
-/

namespace A083186.P1419313345698853855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302539 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P1419313345698853855

namespace A083186

/-- `∑[p?[A302539(n+3)]]` -/
def P1419313345698853855.Spec : Prop :=
  ∀ n, P1419313345698853855.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P3226516336056984819

`∑[record[A105574(n+2)]]`
-/

namespace A083186.P3226516336056984819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P3226516336056984819

namespace A083186

/-- `∑[record[A105574(n+2)]]` -/
def P3226516336056984819.Spec : Prop :=
  ∀ n, P3226516336056984819.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P8396340187503286401

`∑[p?[A141436(n+1)]]`
-/

namespace A083186.P8396340187503286401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P8396340187503286401

namespace A083186

/-- `∑[p?[A141436(n+1)]]` -/
def P8396340187503286401.Spec : Prop :=
  ∀ n, P8396340187503286401.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P15684879367838650610

`∑[record[A105562(n+2)]]`
-/

namespace A083186.P15684879367838650610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P15684879367838650610

namespace A083186

/-- `∑[record[A105562(n+2)]]` -/
def P15684879367838650610.Spec : Prop :=
  ∀ n, P15684879367838650610.a n = A083186 (n + 1)

end A083186

/-! ## A083186.P2562383437481517404

`∑[record[A351368(n+2)]]`
-/

namespace A083186.P2562383437481517404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351368 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083186.P2562383437481517404

namespace A083186

/-- `∑[record[A351368(n+2)]]` -/
def P2562383437481517404.Spec : Prop :=
  ∀ n, P2562383437481517404.a n = A083186 (n + 1)

end A083186

/-!
# A083187: a(n) = floor(log_3/2(n+1)) - floor(log_3/2(n)).

The programs for A083187, the canonical program `A083187.P4988443400256280712` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083187 has offset 1).

The definition of A083187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083187.P4988443400256280712

`floor(log(n+2)/log(3/2))-floor(log(n+1)/log(3/2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083187

/-- `floor(log(n+2)/log(3/2))-floor(log(n+1)/log(3/2))` -/
def P4988443400256280712.Spec : Prop :=
  ∀ n, P4988443400256280712.a n = A083187 (n + 1)

theorem P4988443400256280712.correct : P4988443400256280712.Spec := by
  intro n
  simp only [A083187, Nat.add_sub_cancel]

end A083187

/-! ## A083187.P7928388491404673284

`A000701(Δ[comp[A002379(n)+n]])`
-/

namespace A083187.P7928388491404673284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083187.P7928388491404673284

namespace A083187

/-- `A000701(Δ[comp[A002379(n)+n]])` -/
def P7928388491404673284.Spec : Prop :=
  ∀ n, P7928388491404673284.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P18059296659755605163

`A001221(Δ[comp[A002379(n)+n]])`
-/

namespace A083187.P18059296659755605163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083187.P18059296659755605163

namespace A083187

/-- `A001221(Δ[comp[A002379(n)+n]])` -/
def P18059296659755605163.Spec : Prop :=
  ∀ n, P18059296659755605163.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P3008378465637501311

`A032741(Δ[comp[A002379(n)+n]])`
-/

namespace A083187.P3008378465637501311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083187.P3008378465637501311

namespace A083187

/-- `A032741(Δ[comp[A002379(n)+n]])` -/
def P3008378465637501311.Spec : Prop :=
  ∀ n, P3008378465637501311.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P4835547939956688897

`A346240(Δ[comp[A002379(n+1)+n]]²)`
-/

namespace A083187.P4835547939956688897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346240 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A083187.P4835547939956688897

namespace A083187

/-- `A346240(Δ[comp[A002379(n+1)+n]]²)` -/
def P4835547939956688897.Spec : Prop :=
  ∀ n, P4835547939956688897.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P3943897387272550041

`A016969(n)%Δ[comp[A002379(n+1)+n]]`
-/

namespace A083187.P3943897387272550041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A083187.P3943897387272550041

namespace A083187

/-- `A016969(n)%Δ[comp[A002379(n+1)+n]]` -/
def P3943897387272550041.Spec : Prop :=
  ∀ n, P3943897387272550041.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P3448176659758828743

`A000960(n+1)%Δ[comp[A002379(n+1)+n]]`
-/

namespace A083187.P3448176659758828743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000960 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A083187.P3448176659758828743

namespace A083187

/-- `A000960(n+1)%Δ[comp[A002379(n+1)+n]]` -/
def P3448176659758828743.Spec : Prop :=
  ∀ n, P3448176659758828743.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P4879263347380630270

`A001844(n+1)%Δ[comp[A002379(n+1)+n]]`
-/

namespace A083187.P4879263347380630270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A083187.P4879263347380630270

namespace A083187

/-- `A001844(n+1)%Δ[comp[A002379(n+1)+n]]` -/
def P4879263347380630270.Spec : Prop :=
  ∀ n, P4879263347380630270.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P11592156249224999023

`A002061(n+2)%Δ[comp[A002379(n+1)+n]]`
-/

namespace A083187.P11592156249224999023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 (n + 2)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A083187.P11592156249224999023

namespace A083187

/-- `A002061(n+2)%Δ[comp[A002379(n+1)+n]]` -/
def P11592156249224999023.Spec : Prop :=
  ∀ n, P11592156249224999023.a n = A083187 (n + 1)

end A083187

/-! ## A083187.P5200987816993575528

`Δ[A001057(2*n)+comp[A002379(n+1)+n]]`
-/

namespace A083187.P5200987816993575528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083187.P5200987816993575528

namespace A083187

/-- `Δ[A001057(2*n)+comp[A002379(n+1)+n]]` -/
def P5200987816993575528.Spec : Prop :=
  ∀ n, P5200987816993575528.a n = A083187 (n + 1)

end A083187

/-!
# A083188: Lexicographically earliest sequence of distinct primes with the property that for all n >= 1, the concatenation of a(n), a(n+1), ..., a(2n-1) is a prime.

The programs for A083188, there is no canonical definition to state claims against.
-/

/-! ## A083188.P9291809013099165690

`p?[A131162(n+1)%A131139(n)]`
-/

namespace A083188.P9291809013099165690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131162 (n + 1)) (A131139 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083188.P9291809013099165690

/-! ## A083188.P14341399480148897426

`p?[A122361(n)%A054317(n+3)]`
-/

namespace A083188.P14341399480148897426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122361 n) (A054317 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083188.P14341399480148897426

/-! ## A083188.P14799564793806918902

`p?[A131005(n)%A054317(n+3)]`
-/

namespace A083188.P14799564793806918902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131005 n) (A054317 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083188.P14799564793806918902

/-! ## A083188.P13751881400965351032

`p?[A131162(n)%A054317(n+3)]`
-/

namespace A083188.P13751881400965351032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131162 n) (A054317 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083188.P13751881400965351032

/-!
# A083190: a(1) = 1; for n>1 a(n) is smallest prime not occurring earlier such that the concatenation of a(n), a(n+1), ..., a(2n-1) is a composite number.

The programs for A083190, there is no canonical definition to state claims against.
-/

/-! ## A083190.P4271104358317759906

`filter[A333811(n+1), A080339(#)]`
-/

namespace A083190.P4271104358317759906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A083190.P4271104358317759906

/-! ## A083190.P7078104738618217235

`A008578(A131042(n+1))%A099296(n+1)`
-/

namespace A083190.P7078104738618217235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A131042 (n + 1)).toNat) (A099296 (n + 1))

end

end A083190.P7078104738618217235

/-!
# A083195: Multiples of n obtained as the concatenation of terms A075618(n) to A075618(2n-1).

The programs for A083195, there is no canonical definition to state claims against.
-/

/-! ## A083195.P11510135342437343769

`(n+1)*A075619(n+1)`
-/

namespace A083195.P11510135342437343769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075619 (n + 1)

end

end A083195.P11510135342437343769

/-!
# A083196: a(n) = 8*n^4 + 9*n^2 + 2.

The programs for A083196, the canonical program `A083196.P4170246716802607715` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083196 has offset 0).

The definition of A083196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n^4+9*n²+2` (program `A083196.P4170246716802607715`, by `A083196.P4170246716802607715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083196.P4170246716802607715

`8*n^4+9*n²+2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083196

/-- `8*n^4+9*n²+2` -/
def P4170246716802607715.Spec : Prop :=
  ∀ n, (P4170246716802607715.a n : ℤ) = A083196 n

theorem P4170246716802607715.correct : P4170246716802607715.Spec := by
  intro n
  simp only [A083196]

end A083196

/-! ## A083196.P1867218586552909055

`floor(C(A004769(n²)-6, 2)/4)`
-/

namespace A083196.P1867218586552909055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A004769 (n ^ 2) - 6).toNat 2 : ℚ) / 4⌋

end

end A083196.P1867218586552909055

namespace A083196

/-- `floor(C(A004769(n²)-6, 2)/4)` -/
def P1867218586552909055.Spec : Prop :=
  ∀ n, P1867218586552909055.a n = A083196 n

end A083196

/-! ## A083196.P16313675624565591687

`A125201(n²+1)`
-/

namespace A083196.P16313675624565591687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 (n ^ 2 + 1)

end

end A083196.P16313675624565591687

namespace A083196

/-- `A125201(n²+1)` -/
def P16313675624565591687.Spec : Prop :=
  ∀ n, P16313675624565591687.a n = A083196 n

end A083196

/-! ## A083196.P16590986751599586815

`A397976(A058331(n))`
-/

namespace A083196.P16590986751599586815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397976 (A058331 n).toNat

end

end A083196.P16590986751599586815

namespace A083196

/-- `A397976(A058331(n))` -/
def P16590986751599586815.Spec : Prop :=
  ∀ n, P16590986751599586815.a n = A083196 n

end A083196

/-! ## A083196.P7556924693678592837

`A397976(A000384(n)+n+1)`
-/

namespace A083196.P7556924693678592837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397976 (A000384 n + (n + 1 : ℤ)).toNat

end

end A083196.P7556924693678592837

namespace A083196

/-- `A397976(A000384(n)+n+1)` -/
def P7556924693678592837.Spec : Prop :=
  ∀ n, P7556924693678592837.a n = A083196 n

end A083196

/-!
# A083197: Triangular array, read by rows, where if n is odd the n-th row consists of n least unused nonprimes, while if n is even the n-th row consists of the n least unused primes.

The programs for A083197, the canonical program `A083197.P7741079771248666664` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083197 has offset 1).

The definition of A083197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083197.P9299391043441712925

`A073846(A074147(n+1))`
-/

namespace A083197.P9299391043441712925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A074147 (n + 1)).toNat

end

end A083197.P9299391043441712925

namespace A083197

/-- `A073846(A074147(n+1))` -/
def P9299391043441712925.Spec : Prop :=
  ∀ n, P9299391043441712925.a n = A083197 (n + 1)

end A083197

/-! ## A083197.P1013367922791625960

`A073846(A116941(n)+1)`
-/

namespace A083197.P1013367922791625960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A116941 n + 1).toNat

end

end A083197.P1013367922791625960

namespace A083197

/-- `A073846(A116941(n)+1)` -/
def P1013367922791625960.Spec : Prop :=
  ∀ n, P1013367922791625960.a n = A083197 (n + 1)

end A083197

/-! ## A083197.P7741079771248666664

`A073846(A008619(A005408(n)-A114327(n)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A083197

/-- `A073846(A008619(A005408(n)-A114327(n)))` -/
def P7741079771248666664.Spec : Prop :=
  ∀ n, P7741079771248666664.a n = A083197 (n + 1)

theorem P7741079771248666664.correct : P7741079771248666664.Spec := by
  intro n
  simp only [A083197, Nat.add_sub_cancel]

end A083197

/-! ## A083197.P16374145827760192177

`A181095(A084408(n+1)%A141214(n))`
-/

namespace A083197.P16374145827760192177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (Int.tmod (A084408 (n + 1)) (A141214 n)).toNat

end

end A083197.P16374145827760192177

namespace A083197

/-- `A181095(A084408(n+1)%A141214(n))` -/
def P16374145827760192177.Spec : Prop :=
  ∀ n, P16374145827760192177.a n = A083197 (n + 1)

end A083197

/-! ## A083197.P12928953349177741607

`A181095(A084408(n+1))^A007318(A034562(n+1))`
-/

namespace A083197.P12928953349177741607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181095 (A084408 (n + 1)).toNat : ℚ) ^ (A007318 (A034562 (n + 1)).toNat : ℤ)

end

end A083197.P12928953349177741607

namespace A083197

/-- `A181095(A084408(n+1))^A007318(A034562(n+1))` -/
def P12928953349177741607.Spec : Prop :=
  ∀ n, P12928953349177741607.a n = (A083197 (n + 1) : ℚ)

end A083197

/-!
# A083198: a(n) = A061419(n) - A002379(n).

The programs for A083198, the canonical program `A083198.P17915299577347371668` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083198 has offset 5).

The definition of A083198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A061419(n+5)-A002379(n+5)` (program `A083198.P17915299577347371668`, by `A083198.P17915299577347371668.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083198.P17915299577347371668

`A061419(n+5)-A002379(n+5)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A083198

/-- `A061419(n+5)-A002379(n+5)` -/
def P17915299577347371668.Spec : Prop :=
  ∀ n, P17915299577347371668.a n = A083198 (n + 5)

theorem P17915299577347371668.correct : P17915299577347371668.Spec := by
  intro n
  simp only [A083198, Nat.add_sub_cancel]

end A083198

/-! ## A083198.P1533788073056511073

`A061418(n+5)-A034082(n+5)`
-/

namespace A083198.P1533788073056511073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 5) - A034082 (n + 5)

end

end A083198.P1533788073056511073

namespace A083198

/-- `A061418(n+5)-A034082(n+5)` -/
def P1533788073056511073.Spec : Prop :=
  ∀ n, P1533788073056511073.a n = A083198 (n + 5)

end A083198

/-! ## A083198.P7646052160687981810

`A061418(n+5)-1-A002379(n+5)`
-/

namespace A083198.P7646052160687981810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 5) - 1 - A002379 (n + 5)

end

end A083198.P7646052160687981810

namespace A083198

/-- `A061418(n+5)-1-A002379(n+5)` -/
def P7646052160687981810.Spec : Prop :=
  ∀ n, P7646052160687981810.a n = A083198 (n + 5)

end A083198

/-! ## A083198.P17122353613025831039

`A003312(n+5)-2-A002379(n+5)`
-/

namespace A083198.P17122353613025831039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 5) - 2 - A002379 (n + 5)

end

end A083198.P17122353613025831039

namespace A083198

/-- `A003312(n+5)-2-A002379(n+5)` -/
def P17122353613025831039.Spec : Prop :=
  ∀ n, P17122353613025831039.a n = A083198 (n + 5)

end A083198

/-! ## A083198.P15211712821830231155

`A061419(A000027(n+1)+4)%A002379(n+5)`
-/

namespace A083198.P15211712821830231155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061419 (A000027 (n + 1) + 4).toNat) (A002379 (n + 5))

end

end A083198.P15211712821830231155

namespace A083198

/-- `A061419(A000027(n+1)+4)%A002379(n+5)` -/
def P15211712821830231155.Spec : Prop :=
  ∀ n, P15211712821830231155.a n = A083198 (n + 5)

end A083198

/-!
# A083199: Exponent of largest power of 2 dividing A061419(n).

The programs for A083199, the canonical program `A083199.P131418108510612791` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083199 has offset 1).

The definition of A083199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083199.P131418108510612791

`val(A006999(n)+1, 2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083199

/-- `val(A006999(n)+1, 2)` -/
def P131418108510612791.Spec : Prop :=
  ∀ n, (P131418108510612791.a n : ℤ) = A083199 (n + 1)

theorem P131418108510612791.correct : P131418108510612791.Spec := by
  intro n
  simp only [A083199, Nat.add_sub_cancel]

end A083199

/-! ## A083199.P724223354343407356

`val(A061419(n+1), 2)`
-/

namespace A083199.P724223354343407356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061419 (n + 1)).toNat 2

end

end A083199.P724223354343407356

namespace A083199

/-- `val(A061419(n+1), 2)` -/
def P724223354343407356.Spec : Prop :=
  ∀ n, (P724223354343407356.a n : ℤ) = A083199 (n + 1)

end A083199

/-! ## A083199.P8173277104938825567

`val(∑[A073941(n+1)], 2)`
-/

namespace A083199.P8173277104938825567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A083199.P8173277104938825567

namespace A083199

/-- `val(∑[A073941(n+1)], 2)` -/
def P8173277104938825567.Spec : Prop :=
  ∀ n, (P8173277104938825567.a n : ℤ) = A083199 (n + 1)

end A083199

/-! ## A083199.P8502120718429392974

`val(A061418(n+1)-1, 2)`
-/

namespace A083199.P8502120718429392974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061418 (n + 1) - 1).toNat 2

end

end A083199.P8502120718429392974

namespace A083199

/-- `val(A061418(n+1)-1, 2)` -/
def P8502120718429392974.Spec : Prop :=
  ∀ n, (P8502120718429392974.a n : ℤ) = A083199 (n + 1)

end A083199

/-! ## A083199.P14696064851438045891

`val(A003312(n+1)-2, 2)`
-/

namespace A083199.P14696064851438045891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003312 (n + 1) - 2).toNat 2

end

end A083199.P14696064851438045891

namespace A083199

/-- `val(A003312(n+1)-2, 2)` -/
def P14696064851438045891.Spec : Prop :=
  ∀ n, (P14696064851438045891.a n : ℤ) = A083199 (n + 1)

end A083199

/-! ## A083199.P1024910946262132164

`val(A081848(n+1)-A304273(n+1), 2)`
-/

namespace A083199.P1024910946262132164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081848 (n + 1) - A304273 (n + 1)).toNat 2

end

end A083199.P1024910946262132164

namespace A083199

/-- `val(A081848(n+1)-A304273(n+1), 2)` -/
def P1024910946262132164.Spec : Prop :=
  ∀ n, (P1024910946262132164.a n : ℤ) = A083199 (n + 1)

end A083199

/-! ## A083199.P4646667553833803909

`val(A070885(n+2), 2)`
-/

namespace A083199.P4646667553833803909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A070885 (n + 2)).toNat 2

end

end A083199.P4646667553833803909

namespace A083199

/-- `val(A070885(n+2), 2)` -/
def P4646667553833803909.Spec : Prop :=
  ∀ n, (P4646667553833803909.a n : ℤ) = A083199 (n + 1)

end A083199

/-! ## A083199.P17864951186917110855

`val(∑[A081848(n+1)], 2)`
-/

namespace A083199.P17864951186917110855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A083199.P17864951186917110855

namespace A083199

/-- `val(∑[A081848(n+1)], 2)` -/
def P17864951186917110855.Spec : Prop :=
  ∀ n, (P17864951186917110855.a n : ℤ) = A083199 (n + 1)

end A083199

