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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A037100: Lexically first set of (even) numbers, beginning with 4, such that for any two different terms, a(i) + a(j) + 1 is prime.

The programs for A037100, there is no canonical definition to state claims against.
-/

/-! ## A037100.P3281638368936514781

`3*A338644(a(n-1)-2)` with `a(0)=4`
-/

namespace A037100.P3281638368936514781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * A338644 (a (n - 1) - 2).toNat

end

end A037100.P3281638368936514781

/-! ## A037100.P10705278426946254787

`A279891(∏[p?[A210485(n)]])`
-/

namespace A037100.P10705278426946254787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037100.P10705278426946254787

/-!
# A037102: Trajectory of 3 under map n->9n+1 if n odd, n->n/2 if n even.

The programs for A037102, there is no canonical definition to state claims against.
-/

/-! ## A037102.P682849836296305453

`A006370(A347365(a(n-1)))` with `a(0)=3`
-/

namespace A037102.P682849836296305453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006370 (A347365 (a (n - 1)).toNat).toNat

end

end A037102.P682849836296305453

/-! ## A037102.P18076851179654157583

`A006370(A186813(2*a(n-1)))` with `a(0)=3`
-/

namespace A037102.P18076851179654157583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006370 (A186813 (2 * a (n - 1)).toNat).toNat

end

end A037102.P18076851179654157583

/-!
# A037103: Trajectory of 3 under map n->11n+1 if n odd, n->n/2 if n even.

The programs for A037103, there is no canonical definition to state claims against.
-/

/-! ## A037103.P14592390597450649606

`A033963(n+3)`
-/

namespace A037103.P14592390597450649606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033963 (n + 3)

end

end A037103.P14592390597450649606

/-! ## A037103.P10321892927106219439

`filter[A033963(n), A262855(#)]`
-/

namespace A037103.P10321892927106219439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262855 (f1 j).toNat = 1) n)

end

end A037103.P10321892927106219439

/-! ## A037103.P3059709329096299216

`filter[A033963(n), A267800(#)]`
-/

namespace A037103.P3059709329096299216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267800 (f1 j).toNat = 1) n)

end

end A037103.P3059709329096299216

/-! ## A037103.P2256202475559037633

`filter[A033963(n), A267810(#)]`
-/

namespace A037103.P2256202475559037633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A037103.P2256202475559037633

/-!
# A037107: Trajectory of 3 under map n->19n+1 if n odd, n->n/2 if n even.

The programs for A037107, there is no canonical definition to state claims against.
-/

/-! ## A037107.P4085954448925447281

`A033966(n+9)`
-/

namespace A037107.P4085954448925447281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033966 (n + 9)

end

end A037107.P4085954448925447281

/-!
# A037109: Trajectory of 3 under map n->23n+1 if n odd, n->n/2 if n even.

The programs for A037109, there is no canonical definition to state claims against.
-/

/-! ## A037109.P7610759689117317113

`A033968(n+4)`
-/

namespace A037109.P7610759689117317113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033968 (n + 4)

end

end A037109.P7610759689117317113

/-! ## A037109.P14290634696126281948

`filter[A033968(n), A057212(#)]`
-/

namespace A037109.P14290634696126281948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057212 (f1 j).toNat = 1) n)

end

end A037109.P14290634696126281948

/-!
# A037121: Trajectory of 3 under map n -> 47n+1 if n odd, n->n/2 if n even.

The programs for A037121, there is no canonical definition to state claims against.
-/

/-! ## A037121.P15465064121479825096

`A033979(n+5)`
-/

namespace A037121.P15465064121479825096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033979 (n + 5)

end

end A037121.P15465064121479825096

/-! ## A037121.P1159466100666251192

`filter[A033979(n), A379969(#)]`
-/

namespace A037121.P1159466100666251192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A037121.P1159466100666251192

/-!
# A037123: a(n) = a(n-1) + sum of digits of n.

The programs for A037123, the canonical program `A037123.P656767004676487668` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037123 has offset 0).

The definition of A037123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037123.P656767004676487668

`∑[∑{digits}[n, #]]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037123

/-- `∑[∑{digits}[n, #]]` -/
def P656767004676487668.Spec : Prop :=
  ∀ n, (P656767004676487668.a n : ℤ) = A037123 n

theorem P656767004676487668.correct : P656767004676487668.Spec := by
  intro n
  simp only [A037123]

end A037123

/-! ## A037123.P1218758951385418858

`∑[log(∏{digits}[n, exp(#)])]`
-/

namespace A037123.P1218758951385418858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P1218758951385418858

namespace A037123

/-- `∑[log(∏{digits}[n, exp(#)])]` -/
def P1218758951385418858.Spec : Prop :=
  ∀ n, P1218758951385418858.a n = (A037123 n : ℝ)

end A037123

/-! ## A037123.P13168491433750039647

`∑[log2(∏{digits}[n, 2^#])]`
-/

namespace A037123.P13168491433750039647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P13168491433750039647

namespace A037123

/-- `∑[log2(∏{digits}[n, 2^#])]` -/
def P13168491433750039647.Spec : Prop :=
  ∀ n, P13168491433750039647.a n = (A037123 n : ℝ)

end A037123

/-! ## A037123.P13002458713767765874

`∑[val(∏{digits}[n, 2^#], 2)]`
-/

namespace A037123.P13002458713767765874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P13002458713767765874

namespace A037123

/-- `∑[val(∏{digits}[n, 2^#], 2)]` -/
def P13002458713767765874.Spec : Prop :=
  ∀ n, (P13002458713767765874.a n : ℤ) = A037123 n

end A037123

/-! ## A037123.P7335590676300779640

`∑{digits}[n, #]+a(n-1)` with `a(0)=0`
-/

namespace A037123.P7335590676300779640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A037123.P7335590676300779640

namespace A037123

/-- `∑{digits}[n, #]+a(n-1)` -/
def P7335590676300779640.Spec : Prop :=
  ∀ n, (P7335590676300779640.a n : ℤ) = A037123 n

end A037123

/-! ## A037123.P13036341668885754222

`∑[A007953(n)]`
-/

namespace A037123.P13036341668885754222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P13036341668885754222

namespace A037123

/-- `∑[A007953(n)]` -/
def P13036341668885754222.Spec : Prop :=
  ∀ n, P13036341668885754222.a n = A037123 n

end A037123

/-! ## A037123.P3814259685855301423

`∑[sqrt(A118881(n))]`
-/

namespace A037123.P3814259685855301423
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P3814259685855301423

namespace A037123

/-- `∑[sqrt(A118881(n))]` -/
def P3814259685855301423.Spec : Prop :=
  ∀ n, P3814259685855301423.a n = (A037123 n : ℝ)

end A037123

/-! ## A037123.P422399963485618513

`∑[log2(A329562(n))]`
-/

namespace A037123.P422399963485618513
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P422399963485618513

namespace A037123

/-- `∑[log2(A329562(n))]` -/
def P422399963485618513.Spec : Prop :=
  ∀ n, P422399963485618513.a n = (A037123 n : ℝ)

end A037123

/-! ## A037123.P8108155486790589641

`∑[A169805(n)/2]`
-/

namespace A037123.P8108155486790589641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P8108155486790589641

namespace A037123

/-- `∑[A169805(n)/2]` -/
def P8108155486790589641.Spec : Prop :=
  ∀ n, P8108155486790589641.a n = (A037123 n : ℚ)

end A037123

/-! ## A037123.P7710196555155838727

`∑[A062028(n)-n]`
-/

namespace A037123.P7710196555155838727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P7710196555155838727

namespace A037123

/-- `∑[A062028(n)-n]` -/
def P7710196555155838727.Spec : Prop :=
  ∀ n, P7710196555155838727.a n = A037123 n

end A037123

/-! ## A037123.P1502535206772242698

`∑[n-A066568(n)]`
-/

namespace A037123.P1502535206772242698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P1502535206772242698

namespace A037123

/-- `∑[n-A066568(n)]` -/
def P1502535206772242698.Spec : Prop :=
  ∀ n, P1502535206772242698.a n = A037123 n

end A037123

/-! ## A037123.P16949512984227489855

`∑[1-A160941(n+1)+n]`
-/

namespace A037123.P16949512984227489855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A160941 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P16949512984227489855

namespace A037123

/-- `∑[1-A160941(n+1)+n]` -/
def P16949512984227489855.Spec : Prop :=
  ∀ n, P16949512984227489855.a n = A037123 n

theorem P16949512984227489855.correct : P16949512984227489855.Spec := by
  intro n
  simp only [A037123, Nat.add_sub_cancel, A037123.P16949512984227489855.f1, A037123.P16949512984227489855.a, A037123.P656767004676487668.f2, A037123.P656767004676487668.f1, A037123.P656767004676487668.a, A160941, A160941.P11918685615583149497.f1, A160941.P11918685615583149497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037123

/-! ## A037123.P2368306223890758856

`∑[A160939(n+1)-(n+1)]`
-/

namespace A037123.P2368306223890758856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P2368306223890758856

namespace A037123

/-- `∑[A160939(n+1)-(n+1)]` -/
def P2368306223890758856.Spec : Prop :=
  ∀ n, P2368306223890758856.a n = A037123 n

end A037123

/-! ## A037123.P6403508214580061423

`∑[A160942(n+1)/(n+1)]`
-/

namespace A037123.P6403508214580061423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P6403508214580061423

namespace A037123

/-- `∑[A160942(n+1)/(n+1)]` -/
def P6403508214580061423.Spec : Prop :=
  ∀ n, P6403508214580061423.a n = (A037123 n : ℚ)

end A037123

/-! ## A037123.P11538934778982200451

`A239324(n)+A051351(n)`
-/

namespace A037123.P11538934778982200451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239324 n + A051351 n

end

end A037123.P11538934778982200451

namespace A037123

/-- `A239324(n)+A051351(n)` -/
def P11538934778982200451.Spec : Prop :=
  ∀ n, P11538934778982200451.a n = A037123 n

end A037123

/-! ## A037123.P15643081155952480756

`A054632(A117804(n+1)-1)`
-/

namespace A037123.P15643081155952480756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (A117804 (n + 1) - 1).toNat

end

end A037123.P15643081155952480756

namespace A037123

/-- `A054632(A117804(n+1)-1)` -/
def P15643081155952480756.Spec : Prop :=
  ∀ n, P15643081155952480756.a n = A037123 n

end A037123

/-! ## A037123.P13827128795769667836

`∑[A053836(A102489(n))]`
-/

namespace A037123.P13827128795769667836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A102489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P13827128795769667836

namespace A037123

/-- `∑[A053836(A102489(n))]` -/
def P13827128795769667836.Spec : Prop :=
  ∀ n, P13827128795769667836.a n = A037123 n

end A037123

/-! ## A037123.P3411528809919861639

`∑[A004092(5*n)]`
-/

namespace A037123.P3411528809919861639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P3411528809919861639

namespace A037123

/-- `∑[A004092(5*n)]` -/
def P3411528809919861639.Spec : Prop :=
  ∀ n, P3411528809919861639.a n = A037123 n

end A037123

/-! ## A037123.P3040464033186272215

`∑[n-A171181(2*n+1)]`
-/

namespace A037123.P3040464033186272215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A171181 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P3040464033186272215

namespace A037123

/-- `∑[n-A171181(2*n+1)]` -/
def P3040464033186272215.Spec : Prop :=
  ∀ n, P3040464033186272215.a n = A037123 n

end A037123

/-! ## A037123.P11262793269302387474

`∑[∑{e}[∏{digits}[n, 2^#], #]]`
-/

namespace A037123.P11262793269302387474
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 2 ^ x).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037123.P11262793269302387474

namespace A037123

/-- `∑[∑{e}[∏{digits}[n, 2^#], #]]` -/
def P11262793269302387474.Spec : Prop :=
  ∀ n, (P11262793269302387474.a n : ℤ) = A037123 n

end A037123

/-!
# A037124: Numbers that contain only one nonzero digit.

The programs for A037124, the canonical program `A037124.P10531659379818548989` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037124 has offset 1).

The definition of A037124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037124.P17504081264241472643

`(n%9+1)*10^floor(n/9)`
-/

namespace A037124.P17504081264241472643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 9 + 1 : ℕ) : ℚ) * (10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ)

end

end A037124.P17504081264241472643

namespace A037124

/-- `(n%9+1)*10^floor(n/9)` -/
def P17504081264241472643.Spec : Prop :=
  ∀ n, P17504081264241472643.a n = (A037124 (n + 1) : ℚ)

end A037124

/-! ## A037124.P10531659379818548989

`10*a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037124

/-- `10*a(n-9)` -/
def P10531659379818548989.Spec : Prop :=
  ∀ n, (P10531659379818548989.a n : ℤ) = A037124 (n + 1)

theorem P10531659379818548989.correct : P10531659379818548989.Spec := by
  intro n
  simp only [A037124, Nat.add_sub_cancel]

end A037124

/-! ## A037124.P17923741051887633117

`10^floor(n/9)*(n+1-9*floor(n/9))`
-/

namespace A037124.P17923741051887633117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ) * ((n + 1 : ℤ) - 9 * ⌊(n : ℚ) / 9⌋ : ℚ)

end

end A037124.P17923741051887633117

namespace A037124

/-- `10^floor(n/9)*(n+1-9*floor(n/9))` -/
def P17923741051887633117.Spec : Prop :=
  ∀ n, P17923741051887633117.a n = (A037124 (n + 1) : ℚ)

end A037124

/-! ## A037124.P18178501936667410535

`A051885(n)+1`
-/

namespace A037124.P18178501936667410535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n + 1

end

end A037124.P18178501936667410535

namespace A037124

/-- `A051885(n)+1` -/
def P18178501936667410535.Spec : Prop :=
  ∀ n, P18178501936667410535.a n = A037124 (n + 1)

theorem P18178501936667410535.correct : P18178501936667410535.Spec := by
  intro n
  simp only [A037124, Nat.add_sub_cancel, A037124.P18178501936667410535.a, A037124.P10531659379818548989.a, A051885, A051885.P11585152797781986562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037124

/-! ## A037124.P15351400704441180103

`a(n-1)+a(n-dr(n))` with `a(0)=1`
-/

namespace A037124.P15351400704441180103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - SequenceMachineLib.digitalRoot (n : ℤ))

end

end A037124.P15351400704441180103

namespace A037124

/-- `a(n-1)+a(n-dr(n))` -/
def P15351400704441180103.Spec : Prop :=
  ∀ n, (P15351400704441180103.a n : ℤ) = A037124 (n + 1)

end A037124

/-! ## A037124.P7167496149067896909

`a(n-1)+10^val(a(n-1), 10)` with `a(0)=1`
-/

namespace A037124.P7167496149067896909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 10 ^ SequenceMachineLib.valuation (a (n - 1)) 10

end

end A037124.P7167496149067896909

namespace A037124

/-- `a(n-1)+10^val(a(n-1), 10)` -/
def P7167496149067896909.Spec : Prop :=
  ∀ n, (P7167496149067896909.a n : ℤ) = A037124 (n + 1)

end A037124

/-! ## A037124.P3743383495680330515

`root(a(n-1)+10^floor((n-1)/9), 2)²` with `a(0)=1`
-/

namespace A037124.P3743383495680330515
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((a (n - 1) + ((10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ) : ℝ)) ^ (1 / (2 : ℝ))) ^ 2

end

end A037124.P3743383495680330515

namespace A037124

/-- `root(a(n-1)+10^floor((n-1)/9), 2)²` -/
def P3743383495680330515.Spec : Prop :=
  ∀ n, P3743383495680330515.a n = (A037124 (n + 1) : ℝ)

end A037124

/-! ## A037124.P8942283021763459228

`∑[A010785(n-dr(n))+1]`
-/

namespace A037124.P8942283021763459228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n - SequenceMachineLib.digitalRoot (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037124.P8942283021763459228

namespace A037124

/-- `∑[A010785(n-dr(n))+1]` -/
def P8942283021763459228.Spec : Prop :=
  ∀ n, P8942283021763459228.a n = A037124 (n + 1)

end A037124

/-! ## A037124.P7695068964379167023

`A002522(n)-(n²-A051885(n))`
-/

namespace A037124.P7695068964379167023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A051885 n)

end

end A037124.P7695068964379167023

namespace A037124

/-- `A002522(n)-(n²-A051885(n))` -/
def P7695068964379167023.Spec : Prop :=
  ∀ n, P7695068964379167023.a n = A037124 (n + 1)

theorem P7695068964379167023.correct : P7695068964379167023.Spec := by
  intro n
  simp only [A037124, Nat.add_sub_cancel, A037124.P7695068964379167023.a, A037124.P10531659379818548989.a, A002522, A002522.P3778392011853271743.a, A051885, A051885.P11585152797781986562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037124

/-! ## A037124.P7135634936031299946

`∩[A085133(n+1), A193460(n+1)]`
-/

namespace A037124.P7135634936031299946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037124.P7135634936031299946

namespace A037124

/-- `∩[A085133(n+1), A193460(n+1)]` -/
def P7135634936031299946.Spec : Prop :=
  ∀ n, (P7135634936031299946.a n : ℤ) = A037124 (n + 1)

end A037124

/-! ## A037124.P16764509225113248677

`∩[A085135(n+1), A193460(n+1)]`
-/

namespace A037124.P16764509225113248677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037124.P16764509225113248677

namespace A037124

/-- `∩[A085135(n+1), A193460(n+1)]` -/
def P16764509225113248677.Spec : Prop :=
  ∀ n, (P16764509225113248677.a n : ℤ) = A037124 (n + 1)

end A037124

/-! ## A037124.P15159939411747501622

`1-(A055672(A055672(n))-A051885(n))`
-/

namespace A037124.P15159939411747501622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A055672 (A055672 n).toNat - A051885 n)

end

end A037124.P15159939411747501622

namespace A037124

/-- `1-(A055672(A055672(n))-A051885(n))` -/
def P15159939411747501622.Spec : Prop :=
  ∀ n, P15159939411747501622.a n = A037124 (n + 1)

end A037124

/-! ## A037124.P2609669383705613945

`1-(A138472(A000120(n))-A051885(n))`
-/

namespace A037124.P2609669383705613945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A138472 (A000120 n).toNat - A051885 n)

end

end A037124.P2609669383705613945

namespace A037124

/-- `1-(A138472(A000120(n))-A051885(n))` -/
def P2609669383705613945.Spec : Prop :=
  ∀ n, P2609669383705613945.a n = A037124 (n + 1)

end A037124

/-! ## A037124.P3910255957139143133

`2-(A007318(∑[n])-A051885(n))`
-/

namespace A037124.P3910255957139143133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A051885 n)

end

end A037124.P3910255957139143133

namespace A037124

/-- `2-(A007318(∑[n])-A051885(n))` -/
def P3910255957139143133.Spec : Prop :=
  ∀ n, P3910255957139143133.a n = A037124 (n + 1)

end A037124

/-!
# A037125: Irregular triangle: row n is 1, 2, 3, 4, .., prime(n).

The programs for A037125, the canonical program `A037125.P7956072038026776361` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037125 has offset 1).

The definition of A037125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037125.P14025816476838013213

`(a(n-1)+1)^A226520(n+1)²` with `a(0)=1`
-/

namespace A037125.P14025816476838013213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) ^ (A226520 (n + 1) ^ 2 : ℤ)

end

end A037125.P14025816476838013213

namespace A037125

/-- `(a(n-1)+1)^A226520(n+1)²` -/
def P14025816476838013213.Spec : Prop :=
  ∀ n, P14025816476838013213.a n = (A037125 (n + 1) : ℚ)

end A037125

/-! ## A037125.P7956072038026776361

`n+1-A007504(A350174(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037125

/-- `n+1-A007504(A350174(n))` -/
def P7956072038026776361.Spec : Prop :=
  ∀ n, P7956072038026776361.a n = A037125 (n + 1)

theorem P7956072038026776361.correct : P7956072038026776361.Spec := by
  intro n
  simp only [A037125, Nat.add_sub_cancel]

end A037125

/-! ## A037125.P12005859092634879300

`n+2-A014284(A083375(n+1))`
-/

namespace A037125.P12005859092634879300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A014284 (A083375 (n + 1)).toNat

end

end A037125.P12005859092634879300

namespace A037125

/-- `n+2-A014284(A083375(n+1))` -/
def P12005859092634879300.Spec : Prop :=
  ∀ n, P12005859092634879300.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P6513053885913130411

`(a(n-1)+1)%A000040(A327467(n))` with `a(0)=1`
-/

namespace A037125.P6513053885913130411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A000040 (A327467 n).toNat)

end

end A037125.P6513053885913130411

namespace A037125

/-- `(a(n-1)+1)%A000040(A327467(n))` -/
def P6513053885913130411.Spec : Prop :=
  ∀ n, P6513053885913130411.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P3697356391203163313

`A000720(A327277(n+1))`
-/

namespace A037125.P3697356391203163313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A327277 (n + 1)).toNat

end

end A037125.P3697356391203163313

namespace A037125

/-- `A000720(A327277(n+1))` -/
def P3697356391203163313.Spec : Prop :=
  ∀ n, P3697356391203163313.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P13841836984862608929

`A153452(2*A327277(n+1))`
-/

namespace A037125.P13841836984862608929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (2 * A327277 (n + 1)).toNat

end

end A037125.P13841836984862608929

namespace A037125

/-- `A153452(2*A327277(n+1))` -/
def P13841836984862608929.Spec : Prop :=
  ∀ n, P13841836984862608929.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P3419890160309229804

`A156061(2*A327277(n+1))`
-/

namespace A037125.P3419890160309229804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A327277 (n + 1)).toNat

end

end A037125.P3419890160309229804

namespace A037125

/-- `A156061(2*A327277(n+1))` -/
def P3419890160309229804.Spec : Prop :=
  ∀ n, P3419890160309229804.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P2443555896415031334

`∑{d}[A327277(n+1), A066328(#)]`
-/

namespace A037125.P2443555896415031334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A037125.P2443555896415031334

namespace A037125

/-- `∑{d}[A327277(n+1), A066328(#)]` -/
def P2443555896415031334.Spec : Prop :=
  ∀ n, P2443555896415031334.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P10855646508470295486

`∑{d}[A327277(n+1), A327267(#)]`
-/

namespace A037125.P10855646508470295486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327267 d

end

end A037125.P10855646508470295486

namespace A037125

/-- `∑{d}[A327277(n+1), A327267(#)]` -/
def P10855646508470295486.Spec : Prop :=
  ∀ n, P10855646508470295486.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P18279663763715226557

`A056239(2*A327277(n+1))-1`
-/

namespace A037125.P18279663763715226557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A327277 (n + 1)).toNat - 1

end

end A037125.P18279663763715226557

namespace A037125

/-- `A056239(2*A327277(n+1))-1` -/
def P18279663763715226557.Spec : Prop :=
  ∀ n, P18279663763715226557.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P12063291640548638144

`A263111(A327277(n+1)%(8*n+4))`
-/

namespace A037125.P12063291640548638144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (Int.tmod (A327277 (n + 1)) (8 * n + 4 : ℤ)).toNat

end

end A037125.P12063291640548638144

namespace A037125

/-- `A263111(A327277(n+1)%(8*n+4))` -/
def P12063291640548638144.Spec : Prop :=
  ∀ n, P12063291640548638144.a n = A037125 (n + 1)

end A037125

/-! ## A037125.P1697691733058364789

`A263111(A327277(n+1))%A000040(n+1)`
-/

namespace A037125.P1697691733058364789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263111 (A327277 (n + 1)).toNat) (A000040 (n + 1))

end

end A037125.P1697691733058364789

namespace A037125

/-- `A263111(A327277(n+1))%A000040(n+1)` -/
def P1697691733058364789.Spec : Prop :=
  ∀ n, P1697691733058364789.a n = A037125 (n + 1)

end A037125

/-!
# A037126: Triangle T(n,k) = prime(k) for k = 1..n.

The programs for A037126, the canonical program `A037126.P12409953000028740775` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037126 has offset 1).

The definition of A037126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(col(n)+1)` (program `A037126.P12409953000028740775`, by `A037126.P12409953000028740775.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037126.P12409953000028740775

`A000040(col(n)+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037126

/-- `A000040(col(n)+1)` -/
def P12409953000028740775.Spec : Prop :=
  ∀ n, P12409953000028740775.a n = A037126 (n + 1)

theorem P12409953000028740775.correct : P12409953000028740775.Spec := by
  intro n
  simp only [A037126, Nat.add_sub_cancel]

end A037126

/-! ## A037126.P2009866506296782380

`A008578(col(n)+2)`
-/

namespace A037126.P2009866506296782380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.triCol n + 2)

end

end A037126.P2009866506296782380

namespace A037126

/-- `A008578(col(n)+2)` -/
def P2009866506296782380.Spec : Prop :=
  ∀ n, P2009866506296782380.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P10124243468658458181

`A000040(n+1-C(∑[char[∑[n]]], 2))`
-/

namespace A037126.P10124243468658458181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A037126.P10124243468658458181

namespace A037126

/-- `A000040(n+1-C(∑[char[∑[n]]], 2))` -/
def P10124243468658458181.Spec : Prop :=
  ∀ n, P10124243468658458181.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P17228522005317230907

`A051599(A112367(n))`
-/

namespace A037126.P17228522005317230907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A112367 n).toNat

end

end A037126.P17228522005317230907

namespace A037126

/-- `A051599(A112367(n))` -/
def P17228522005317230907.Spec : Prop :=
  ∀ n, P17228522005317230907.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P9952689176981284959

`A382129(A174028(n))`
-/

namespace A037126.P9952689176981284959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382129 (A174028 n).toNat

end

end A037126.P9952689176981284959

namespace A037126

/-- `A382129(A174028(n))` -/
def P9952689176981284959.Spec : Prop :=
  ∀ n, P9952689176981284959.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P15983573472963072743

`A000040(A002260(n+1))`
-/

namespace A037126.P15983573472963072743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002260 (n + 1)).toNat

end

end A037126.P15983573472963072743

namespace A037126

/-- `A000040(A002260(n+1))` -/
def P15983573472963072743.Spec : Prop :=
  ∀ n, P15983573472963072743.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P3097268829351625951

`A000040(A002262(n)+1)`
-/

namespace A037126.P3097268829351625951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002262 n + 1).toNat

end

end A037126.P3097268829351625951

namespace A037126

/-- `A000040(A002262(n)+1)` -/
def P3097268829351625951.Spec : Prop :=
  ∀ n, P3097268829351625951.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P12741393804576041460

`A005145(A112367(n)+1)`
-/

namespace A037126.P12741393804576041460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A112367 n + 1).toNat

end

end A037126.P12741393804576041460

namespace A037126

/-- `A005145(A112367(n)+1)` -/
def P12741393804576041460.Spec : Prop :=
  ∀ n, P12741393804576041460.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P6059497597411148848

`A008578(A002262(n)+2)`
-/

namespace A037126.P6059497597411148848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A002262 n + 2).toNat

end

end A037126.P6059497597411148848

namespace A037126

/-- `A008578(A002262(n)+2)` -/
def P6059497597411148848.Spec : Prop :=
  ∀ n, P6059497597411148848.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P2226617921897770549

`A182986(A002262(n)+2)`
-/

namespace A037126.P2226617921897770549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A002262 n + 2).toNat

end

end A037126.P2226617921897770549

namespace A037126

/-- `A182986(A002262(n)+2)` -/
def P2226617921897770549.Spec : Prop :=
  ∀ n, P2226617921897770549.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P9029291187702271501

`A158611(A002262(n)+3)`
-/

namespace A037126.P9029291187702271501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A002262 n + 3).toNat

end

end A037126.P9029291187702271501

namespace A037126

/-- `A158611(A002262(n)+3)` -/
def P9029291187702271501.Spec : Prop :=
  ∀ n, P9029291187702271501.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P15408786386478596234

`A000040(abs(A140756(n+1)))`
-/

namespace A037126.P15408786386478596234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 |A140756 (n + 1)|.toNat

end

end A037126.P15408786386478596234

namespace A037126

/-- `A000040(abs(A140756(n+1)))` -/
def P15408786386478596234.Spec : Prop :=
  ∀ n, P15408786386478596234.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P15462030440764910274

`A000040(sqrt(A133819(n+1)))`
-/

namespace A037126.P15462030440764910274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A037126.P15462030440764910274

namespace A037126

/-- `A000040(sqrt(A133819(n+1)))` -/
def P15462030440764910274.Spec : Prop :=
  ∀ n, P15462030440764910274.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P9494103135059935986

`A000040(sqrt(A143844(n))+1)`
-/

namespace A037126.P9494103135059935986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat

end

end A037126.P9494103135059935986

namespace A037126

/-- `A000040(sqrt(A143844(n))+1)` -/
def P9494103135059935986.Spec : Prop :=
  ∀ n, P9494103135059935986.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P2347354996950431599

`A000040(log2(A059268(n))+1)`
-/

namespace A037126.P2347354996950431599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A037126.P2347354996950431599

namespace A037126

/-- `A000040(log2(A059268(n))+1)` -/
def P2347354996950431599.Spec : Prop :=
  ∀ n, P2347354996950431599.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P5735479631897068264

`A000040(log2(2*A059268(n)))`
-/

namespace A037126.P5735479631897068264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059268 n : ℝ))).toNat

end

end A037126.P5735479631897068264

namespace A037126

/-- `A000040(log2(2*A059268(n)))` -/
def P5735479631897068264.Spec : Prop :=
  ∀ n, P5735479631897068264.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P202741062474333381

`A008578(A002260(n+1)+1)`
-/

namespace A037126.P202741062474333381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A002260 (n + 1) + 1).toNat

end

end A037126.P202741062474333381

namespace A037126

/-- `A008578(A002260(n+1)+1)` -/
def P202741062474333381.Spec : Prop :=
  ∀ n, P202741062474333381.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P18344536756852594638

`A082500(2*A002260(n+1))`
-/

namespace A037126.P18344536756852594638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A002260 (n + 1)).toNat

end

end A037126.P18344536756852594638

namespace A037126

/-- `A082500(2*A002260(n+1))` -/
def P18344536756852594638.Spec : Prop :=
  ∀ n, P18344536756852594638.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P14452681563113544354

`A207790(2*A002260(n+1))`
-/

namespace A037126.P14452681563113544354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A002260 (n + 1)).toNat

end

end A037126.P14452681563113544354

namespace A037126

/-- `A207790(2*A002260(n+1))` -/
def P14452681563113544354.Spec : Prop :=
  ∀ n, P14452681563113544354.a n = A037126 (n + 1)

end A037126

/-! ## A037126.P16787450520416129421

`A000040(val(A059268(n), 2)+1)`
-/

namespace A037126.P16787450520416129421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation (A059268 n).toNat 2 + 1)

end

end A037126.P16787450520416129421

namespace A037126

/-- `A000040(val(A059268(n), 2)+1)` -/
def P16787450520416129421.Spec : Prop :=
  ∀ n, P16787450520416129421.a n = A037126 (n + 1)

end A037126

/-!
# A037127: a(n) = nextprime(3^n) - 2^n.

The programs for A037127, the canonical program `A037127.P14189568244569981483` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037127 has offset 0).

The definition of A037127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037127.P14189568244569981483

`A151800(A000244(n))-A000079(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037127

/-- `A151800(A000244(n))-A000079(n)` -/
def P14189568244569981483.Spec : Prop :=
  ∀ n, P14189568244569981483.a n = A037127 n

theorem P14189568244569981483.correct : P14189568244569981483.Spec := by
  intro n
  simp only [A037127]

end A037127

/-! ## A037127.P9274634059206496060

`A014211(n)-2^n`
-/

namespace A037127.P9274634059206496060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - (2 ^ n : ℤ)

end

end A037127.P9274634059206496060

namespace A037127

/-- `A014211(n)-2^n` -/
def P9274634059206496060.Spec : Prop :=
  ∀ n, P9274634059206496060.a n = A037127 n

end A037127

/-! ## A037127.P9828773168752440097

`A013598(n)+A001047(n)`
-/

namespace A037127.P9828773168752440097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n + A001047 n

end

end A037127.P9828773168752440097

namespace A037127

/-- `A013598(n)+A001047(n)` -/
def P9828773168752440097.Spec : Prop :=
  ∀ n, P9828773168752440097.a n = A037127 n

end A037127

/-! ## A037127.P13929777959941354725

`A037128(n)+A013597(n)`
-/

namespace A037127.P13929777959941354725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037128 n + A013597 n

end

end A037127.P13929777959941354725

namespace A037127

/-- `A037128(n)+A013597(n)` -/
def P13929777959941354725.Spec : Prop :=
  ∀ n, P13929777959941354725.a n = A037127 n

end A037127

/-! ## A037127.P4862202700937332210

`A104081(n)-A186949(n)`
-/

namespace A037127.P4862202700937332210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 n - A186949 n

end

end A037127.P4862202700937332210

namespace A037127

/-- `A104081(n)-A186949(n)` -/
def P4862202700937332210.Spec : Prop :=
  ∀ n, P4862202700937332210.a n = A037127 n

end A037127

/-! ## A037127.P11684117819214869568

`A000244(n)+A013598(n)-A000079(n)`
-/

namespace A037127.P11684117819214869568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A013598 n - A000079 n)

end

end A037127.P11684117819214869568

namespace A037127

/-- `A000244(n)+A013598(n)-A000079(n)` -/
def P11684117819214869568.Spec : Prop :=
  ∀ n, P11684117819214869568.a n = A037127 n

end A037127

/-! ## A037127.P6783881086404096919

`A013597(n)+A014211(n)-A014210(n)`
-/

namespace A037127.P6783881086404096919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n + (A014211 n - A014210 n)

end

end A037127.P6783881086404096919

namespace A037127

/-- `A013597(n)+A014211(n)-A014210(n)` -/
def P6783881086404096919.Spec : Prop :=
  ∀ n, P6783881086404096919.a n = A037127 n

end A037127

/-! ## A037127.P5000448706700453477

`A013597(n)+A014211(n)-A203074(n+1)`
-/

namespace A037127.P5000448706700453477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n + (A014211 n - A203074 (n + 1))

end

end A037127.P5000448706700453477

namespace A037127

/-- `A013597(n)+A014211(n)-A203074(n+1)` -/
def P5000448706700453477.Spec : Prop :=
  ∀ n, P5000448706700453477.a n = A037127 n

end A037127

/-!
# A037128: a(n) = nextprime(3^n) - nextprime(2^n).

The programs for A037128, the canonical program `A037128.P2879077099965106880` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037128 has offset 0).

The definition of A037128 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, A014211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037128.P2879077099965106880

`A014211(n)-A014210(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037128

/-- `A014211(n)-A014210(n)` -/
def P2879077099965106880.Spec : Prop :=
  ∀ n, P2879077099965106880.a n = A037128 n

theorem P2879077099965106880.correct : P2879077099965106880.Spec := by
  intro n
  simp only [A037128]

end A037128

/-! ## A037128.P5949714855268096162

`2*A037129(n)`
-/

namespace A037128.P5949714855268096162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037129 n

end

end A037128.P5949714855268096162

namespace A037128

/-- `2*A037129(n)` -/
def P5949714855268096162.Spec : Prop :=
  ∀ n, P5949714855268096162.a n = A037128 n

end A037128

/-! ## A037128.P17614189531813500731

`A037127(n)-A013597(n)`
-/

namespace A037128.P17614189531813500731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037127 n - A013597 n

end

end A037128.P17614189531813500731

namespace A037128

/-- `A037127(n)-A013597(n)` -/
def P17614189531813500731.Spec : Prop :=
  ∀ n, P17614189531813500731.a n = A037128 n

end A037128

/-! ## A037128.P3157008580144489378

`A014211(n)-A203074(n+1)`
-/

namespace A037128.P3157008580144489378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - A203074 (n + 1)

end

end A037128.P3157008580144489378

namespace A037128

/-- `A014211(n)-A203074(n+1)` -/
def P3157008580144489378.Spec : Prop :=
  ∀ n, P3157008580144489378.a n = A037128 n

end A037128

/-! ## A037128.P8145884719244573861

`lcm(2, A104080(n)-A104081(n))`
-/

namespace A037128.P8145884719244573861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A104080 n - A104081 n)

end

end A037128.P8145884719244573861

namespace A037128

/-- `lcm(2, A104080(n)-A104081(n))` -/
def P8145884719244573861.Spec : Prop :=
  ∀ n, (P8145884719244573861.a n : ℤ) = A037128 n

end A037128

/-! ## A037128.P12605077043662367254

`A037129(A005843(n)/2)+A037129(n)`
-/

namespace A037128.P12605077043662367254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037129 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A037129 n

end

end A037128.P12605077043662367254

namespace A037128

/-- `A037129(A005843(n)/2)+A037129(n)` -/
def P12605077043662367254.Spec : Prop :=
  ∀ n, P12605077043662367254.a n = A037128 n

end A037128

/-! ## A037128.P5412918182654553430

`A014211(n)-(A013597(n)+A000079(n))`
-/

namespace A037128.P5412918182654553430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - (A013597 n + A000079 n)

end

end A037128.P5412918182654553430

namespace A037128

/-- `A014211(n)-(A013597(n)+A000079(n))` -/
def P5412918182654553430.Spec : Prop :=
  ∀ n, P5412918182654553430.a n = A037128 n

theorem P5412918182654553430.correct : P5412918182654553430.Spec := by
  intro n
  simp only [A037128, Nat.add_sub_cancel, A037128.P5412918182654553430.a, A037128.P2879077099965106880.a, A000079, A000079.P10855139691139572931.a, A013597, A013597.P2064454081418839404.a, A014210, A014210.P8900791388522812635.a, A014211, A014211.P17006346503809986776.a, A000038, A000038.P13734959004655594922.a, A008611, A008611.P13529448793166959438.a, A013632, A013632.P6559946879985956067.a, A104081, A104081.P13360857715571968060.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000244, A000244.P17162167222172810417.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037128

/-! ## A037128.P17396554211236526901

`A037129(A005843(n)-n)+A037129(n)`
-/

namespace A037128.P17396554211236526901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037129 (A005843 n - (n : ℤ)).toNat + A037129 n

end

end A037128.P17396554211236526901

namespace A037128

/-- `A037129(A005843(n)-n)+A037129(n)` -/
def P17396554211236526901.Spec : Prop :=
  ∀ n, P17396554211236526901.a n = A037128 n

end A037128

/-!
# A037129: (nextprime(3^n)-nextprime(2^n))/2.

The programs for A037129, the canonical program `A037129.P8703308658167490187` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037129 has offset 0).

The definition of A037129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037128, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037129.P8703308658167490187

`A037128(n)/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A037129

/-- `A037128(n)/2` -/
def P8703308658167490187.Spec : Prop :=
  ∀ n, P8703308658167490187.a n = (A037129 n : ℚ)

end A037129

/-! ## A037129.P13363067516175720994

`(A014211(n)-A014210(n))/2`
-/

namespace A037129.P13363067516175720994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014211 n - A014210 n : ℚ) / 2

end

end A037129.P13363067516175720994

namespace A037129

/-- `(A014211(n)-A014210(n))/2` -/
def P13363067516175720994.Spec : Prop :=
  ∀ n, P13363067516175720994.a n = (A037129 n : ℚ)

end A037129

/-! ## A037129.P11840725968926823214

`(A037127(n)-A013597(n))/2`
-/

namespace A037129.P11840725968926823214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037127 n - A013597 n : ℚ) / 2

end

end A037129.P11840725968926823214

namespace A037129

/-- `(A037127(n)-A013597(n))/2` -/
def P11840725968926823214.Spec : Prop :=
  ∀ n, P11840725968926823214.a n = (A037129 n : ℚ)

end A037129

/-! ## A037129.P16757173737979283760

`(A014211(n)-A203074(n+1))/2`
-/

namespace A037129.P16757173737979283760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014211 n - A203074 (n + 1) : ℚ) / 2

end

end A037129.P16757173737979283760

namespace A037129

/-- `(A014211(n)-A203074(n+1))/2` -/
def P16757173737979283760.Spec : Prop :=
  ∀ n, P16757173737979283760.a n = (A037129 n : ℚ)

end A037129

/-! ## A037129.P3143740059051487959

`(A014211(n)-(A013597(n)+A000079(n)))/2`
-/

namespace A037129.P3143740059051487959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014211 n - (A013597 n + A000079 n) : ℚ) / 2

end

end A037129.P3143740059051487959

namespace A037129

/-- `(A014211(n)-(A013597(n)+A000079(n)))/2` -/
def P3143740059051487959.Spec : Prop :=
  ∀ n, P3143740059051487959.a n = (A037129 n : ℚ)

end A037129

/-!
# A037130: Nextprime(4^n)-nextprime(2^n).

The programs for A037130, the canonical program `A037130.P1803988098589939308` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037130 has offset 0).

The definition of A037130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037130.P4953747003097210479

`2*A037131(n)`
-/

namespace A037130.P4953747003097210479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037131 n

end

end A037130.P4953747003097210479

namespace A037130

/-- `2*A037131(n)` -/
def P4953747003097210479.Spec : Prop :=
  ∀ n, P4953747003097210479.a n = A037130 n

end A037130

/-! ## A037130.P7139427910249082780

`A104082(n)-A014210(n)`
-/

namespace A037130.P7139427910249082780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A014210 n

end

end A037130.P7139427910249082780

namespace A037130

/-- `A104082(n)-A014210(n)` -/
def P7139427910249082780.Spec : Prop :=
  ∀ n, P7139427910249082780.a n = A037130 n

end A037130

/-! ## A037130.P7157600100069926863

`A104082(n)-A203074(n+1)`
-/

namespace A037130.P7157600100069926863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - A203074 (n + 1)

end

end A037130.P7157600100069926863

namespace A037130

/-- `A104082(n)-A203074(n+1)` -/
def P7157600100069926863.Spec : Prop :=
  ∀ n, P7157600100069926863.a n = A037130 n

end A037130

/-! ## A037130.P1803988098589939308

`A014210(2*n)-A014210(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037130

/-- `A014210(2*n)-A014210(n)` -/
def P1803988098589939308.Spec : Prop :=
  ∀ n, P1803988098589939308.a n = A037130 n

theorem P1803988098589939308.correct : P1803988098589939308.Spec := by
  intro n
  simp only [A037130]

end A037130

/-! ## A037130.P16912180426895603378

`A104080(2*n)-A203074(n+1)`
-/

namespace A037130.P16912180426895603378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (2 * n) - A203074 (n + 1)

end

end A037130.P16912180426895603378

namespace A037130

/-- `A104080(2*n)-A203074(n+1)` -/
def P16912180426895603378.Spec : Prop :=
  ∀ n, P16912180426895603378.a n = A037130 n

end A037130

/-! ## A037130.P2986004714950943753

`A203074(2*n+1)-A203074(n+1)`
-/

namespace A037130.P2986004714950943753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203074 (2 * n + 1) - A203074 (n + 1)

end

end A037130.P2986004714950943753

namespace A037130

/-- `A203074(2*n+1)-A203074(n+1)` -/
def P2986004714950943753.Spec : Prop :=
  ∀ n, P2986004714950943753.a n = A037130 n

end A037130

/-! ## A037130.P7526528176611155665

`A037131(A005843(n)/2)+A037131(n)`
-/

namespace A037130.P7526528176611155665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037131 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A037131 n

end

end A037130.P7526528176611155665

namespace A037130

/-- `A037131(A005843(n)/2)+A037131(n)` -/
def P7526528176611155665.Spec : Prop :=
  ∀ n, P7526528176611155665.a n = A037130 n

end A037130

/-! ## A037130.P9220119272394186869

`A037131(A005843(n)-n)+A037131(n)`
-/

namespace A037130.P9220119272394186869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037131 (A005843 n - (n : ℤ)).toNat + A037131 n

end

end A037130.P9220119272394186869

namespace A037130

/-- `A037131(A005843(n)-n)+A037131(n)` -/
def P9220119272394186869.Spec : Prop :=
  ∀ n, P9220119272394186869.a n = A037130 n

end A037130

/-! ## A037130.P939100385150226985

`A104082(n)-(A013597(n)+A000079(n))`
-/

namespace A037130.P939100385150226985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104082 n - (A013597 n + A000079 n)

end

end A037130.P939100385150226985

namespace A037130

/-- `A104082(n)-(A013597(n)+A000079(n))` -/
def P939100385150226985.Spec : Prop :=
  ∀ n, P939100385150226985.a n = A037130 n

end A037130

/-!
# A037131: a(n) = (nextprime(4^n) - nextprime(2^n))/2.

The programs for A037131, the canonical program `A037131.P15693349067059617684` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037131 has offset 0).

The definition of A037131 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037130, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037131.P15693349067059617684

`A037130(n)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037131

/-- `A037130(n)/2` -/
def P15693349067059617684.Spec : Prop :=
  ∀ n, P15693349067059617684.a n = (A037131 n : ℚ)

end A037131

/-! ## A037131.P11074474820819118817

`(A104082(n)-A014210(n))/2`
-/

namespace A037131.P11074474820819118817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104082 n - A014210 n : ℚ) / 2

end

end A037131.P11074474820819118817

namespace A037131

/-- `(A104082(n)-A014210(n))/2` -/
def P11074474820819118817.Spec : Prop :=
  ∀ n, P11074474820819118817.a n = (A037131 n : ℚ)

end A037131

/-! ## A037131.P18111368992648415273

`(A014210(2*n)-A014210(n))/2`
-/

namespace A037131.P18111368992648415273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014210 (2 * n) - A014210 n : ℚ) / 2

end

end A037131.P18111368992648415273

namespace A037131

/-- `(A014210(2*n)-A014210(n))/2` -/
def P18111368992648415273.Spec : Prop :=
  ∀ n, P18111368992648415273.a n = (A037131 n : ℚ)

end A037131

/-! ## A037131.P18129006169789720505

`(A104080(2*n)-A203074(n+1))/2`
-/

namespace A037131.P18129006169789720505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104080 (2 * n) - A203074 (n + 1) : ℚ) / 2

end

end A037131.P18129006169789720505

namespace A037131

/-- `(A104080(2*n)-A203074(n+1))/2` -/
def P18129006169789720505.Spec : Prop :=
  ∀ n, P18129006169789720505.a n = (A037131 n : ℚ)

end A037131

/-! ## A037131.P11024235274441482228

`(A203074(2*n+1)-A203074(n+1))/2`
-/

namespace A037131.P11024235274441482228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203074 (2 * n + 1) - A203074 (n + 1) : ℚ) / 2

end

end A037131.P11024235274441482228

namespace A037131

/-- `(A203074(2*n+1)-A203074(n+1))/2` -/
def P11024235274441482228.Spec : Prop :=
  ∀ n, P11024235274441482228.a n = (A037131 n : ℚ)

end A037131

/-!
# A037132: nextprime(5^n)-nextprime(2^n).

The programs for A037132, there is no canonical definition to state claims against.
-/

/-! ## A037132.P10171195276136404899

`2*A037133(n)`
-/

namespace A037132.P10171195276136404899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037133 n

end

end A037132.P10171195276136404899

/-! ## A037132.P10224444931590189916

`A054321(n)-A014210(n)`
-/

namespace A037132.P10224444931590189916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054321 n - A014210 n

end

end A037132.P10224444931590189916

/-! ## A037132.P14881972906887894395

`A054321(n)-A203074(n+1)`
-/

namespace A037132.P14881972906887894395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054321 n - A203074 (n + 1)

end

end A037132.P14881972906887894395

/-! ## A037132.P1706628929786149922

`A000351(n)+A013599(n)-A014210(n)`
-/

namespace A037132.P1706628929786149922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + (A013599 n - A014210 n)

end

end A037132.P1706628929786149922

/-! ## A037132.P1792082935134254639

`A037128(n)+A054321(n)-A014211(n)`
-/

namespace A037132.P1792082935134254639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037128 n + (A054321 n - A014211 n)

end

end A037132.P1792082935134254639

/-!
# A037133: (nextprime(5^n)-nextprime(2^n))/2.

The programs for A037133, there is no canonical definition to state claims against.
-/

/-! ## A037133.P6465013041228635285

`A037132(n)/2`
-/

namespace A037133.P6465013041228635285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037132 n : ℚ) / 2

end

end A037133.P6465013041228635285

/-! ## A037133.P16795630202999749041

`(A054321(n)-A014210(n))/2`
-/

namespace A037133.P16795630202999749041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054321 n - A014210 n : ℚ) / 2

end

end A037133.P16795630202999749041

/-! ## A037133.P11376437017970545901

`(A054321(n)-A203074(n+1))/2`
-/

namespace A037133.P11376437017970545901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054321 n - A203074 (n + 1) : ℚ) / 2

end

end A037133.P11376437017970545901

/-! ## A037133.P14025046359386567120

`(A000351(n)+A013599(n)-A014210(n))/2`
-/

namespace A037133.P14025046359386567120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n + (A013599 n - A014210 n) : ℚ) / 2

end

end A037133.P14025046359386567120

/-! ## A037133.P12537675038643164096

`(A037128(n)+A054321(n)-A014211(n))/2`
-/

namespace A037133.P12537675038643164096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037128 n + (A054321 n - A014211 n) : ℚ) / 2

end

end A037133.P12537675038643164096

/-!
# A037134: Number of ways of writing n as a+b where a is abundant (or perfect), b is deficient (or perfect) and s(a)-a=b-s(b) (s(x)=sigma(x)-x).

The programs for A037134, there is no canonical definition to state claims against.
-/

/-! ## A037134.P7656475498639755520

`A277165(A306110(n+1)+A187081(3*n+2))`
-/

namespace A037134.P7656475498639755520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 (A306110 (n + 1) + A187081 (3 * n + 2)).toNat

end

end A037134.P7656475498639755520

/-! ## A037134.P9272622221904539424

`A353495(xor(A074650(2*n+3), A324337(n+3)))`
-/

namespace A037134.P9272622221904539424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (Int.xor (A074650 (2 * n + 3)) (A324337 (n + 3))).toNat

end

end A037134.P9272622221904539424

/-! ## A037134.P4971342180447093085

`A277165(A306110(n+1))^A236657(n+1)`
-/

namespace A037134.P4971342180447093085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277165 (A306110 (n + 1)).toNat : ℚ) ^ (A236657 (n + 1) : ℤ)

end

end A037134.P4971342180447093085

/-! ## A037134.P17738732662677853352

`A277165(A306110(n+1)%A236657(n+1))`
-/

namespace A037134.P17738732662677853352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 (Int.tmod (A306110 (n + 1)) (A236657 (n + 1))).toNat

end

end A037134.P17738732662677853352

/-! ## A037134.P12561233305797926066

`A330023(A238125(n)+5)`
-/

namespace A037134.P12561233305797926066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330023 (A238125 n + 5).toNat

end

end A037134.P12561233305797926066

/-!
# A037135: Number of ways of writing n=a+b where |s(a)-a|=|s(b)-b|, s(x)=sigma(x)-x.

The programs for A037135, there is no canonical definition to state claims against.
-/

/-! ## A037135.P14490445054312083680

`A010872(xor(A017988(n), A059845(n+1)))`
-/

namespace A037135.P14490445054312083680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.xor (A017988 n) (A059845 (n + 1))).toNat

end

end A037135.P14490445054312083680

/-! ## A037135.P15035002506506120210

`A143542(A001175(n+1))+A141846(A115321(n+2))`
-/

namespace A037135.P15035002506506120210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143542 (A001175 (n + 1)).toNat + A141846 (A115321 (n + 2)).toNat

end

end A037135.P15035002506506120210

/-! ## A037135.P9791959035983849858

`A164056(n)+A014587(A007088(n))`
-/

namespace A037135.P9791959035983849858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164056 n + A014587 (A007088 n).toNat

end

end A037135.P9791959035983849858

/-! ## A037135.P22141783111523979

`A260736(A078012(n)+A003160(n+1))`
-/

namespace A037135.P22141783111523979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (A078012 n + A003160 (n + 1)).toNat

end

end A037135.P22141783111523979

/-! ## A037135.P8683833582642622005

`A164057(A307782(n+1))+A164056(n)`
-/

namespace A037135.P8683833582642622005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164057 (A307782 (n + 1)).toNat + A164056 n

end

end A037135.P8683833582642622005

/-!
# A037136: Numbers k such that A037134(k) = A037135(k).

The programs for A037136, there is no canonical definition to state claims against.
-/

/-! ## A037136.P2969193840420986321

`eq[A037134(n+1), A037135(n+1)]+1`
-/

namespace A037136.P2969193840420986321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037136.P2969193840420986321

/-! ## A037136.P10362566746178707640

`A133259(eq[A037134(n+1), A037135(n+1)])`
-/

namespace A037136.P10362566746178707640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037136.P10362566746178707640

/-! ## A037136.P16495755071427709683

`lt[A104611(A347180(2*n+1)), val(n+1, 2)+1]`
-/

namespace A037136.P16495755071427709683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104611 (A347180 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037136.P16495755071427709683

/-! ## A037136.P9733297425470661627

`A005408(eq[A000586(n), A346510(n+1)])`
-/

namespace A037136.P9733297425470661627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037136.P9733297425470661627

/-! ## A037136.P2940013389015431387

`eq[A187081(A140436(n+1)), A279500(n)]`
-/

namespace A037136.P2940013389015431387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187081 (A140436 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037136.P2940013389015431387

/-!
# A037137: Numbers k such that A037134(k) = A037135(k) > 0.

The programs for A037137, there is no canonical definition to state claims against.
-/

/-! ## A037137.P8511666768273615471

`∩[A037136(n+1), A395419(n+1)]`
-/

namespace A037137.P8511666768273615471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037137.P8511666768273615471

/-!
# A037140: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= 5.

The programs for A037140, the canonical program `A037140.P3050859849392477551` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037140 has offset 0).

The definition of A037140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037140.P3050859849392477551

`A000045(n+9)-(29+8*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037140

/-- `A000045(n+9)-(29+8*n)` -/
def P3050859849392477551.Spec : Prop :=
  ∀ n, P3050859849392477551.a n = A037140 n

theorem P3050859849392477551.correct : P3050859849392477551.Spec := by
  intro n
  simp only [A037140]

end A037140

/-! ## A037140.P17517788747428243197

`∑[ogf((5+3x)/(1-2x+x^3))]`
-/

namespace A037140.P17517788747428243197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P17517788747428243197

namespace A037140

/-- `∑[ogf((5+3x)/(1-2x+x^3))]` -/
def P17517788747428243197.Spec : Prop :=
  ∀ n, P17517788747428243197.a n = A037140 n

end A037140

/-! ## A037140.P202253870691954898

`ogf((5+3x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A037140.P202253870691954898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3] [1, -3, 2, 1, -1] n

end

end A037140.P202253870691954898

namespace A037140

/-- `ogf((5+3x)/(1-3x+2x^2+x^3-x^4))` -/
def P202253870691954898.Spec : Prop :=
  ∀ n, P202253870691954898.a n = A037140 n

end A037140

/-! ## A037140.P8983483169644337291

`∑[ceil(ϕ*(a(n-1)+3))]` with `a(0)=5`
-/

namespace A037140.P8983483169644337291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) + 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P8983483169644337291

namespace A037140

/-- `∑[ceil(ϕ*(a(n-1)+3))]` -/
def P8983483169644337291.Spec : Prop :=
  ∀ n, P8983483169644337291.a n = A037140 n

end A037140

/-! ## A037140.P14217699851813018663

`∑[round(ϕ*(a(n-1)+3))]` with `a(0)=5`
-/

namespace A037140.P14217699851813018663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) + 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P14217699851813018663

namespace A037140

/-- `∑[round(ϕ*(a(n-1)+3))]` -/
def P14217699851813018663.Spec : Prop :=
  ∀ n, P14217699851813018663.a n = A037140 n

end A037140

/-! ## A037140.P5759104442732899405

`∑[floor(ϕ*a(n-1))+5]` with `a(0)=5`
-/

namespace A037140.P5759104442732899405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P5759104442732899405

namespace A037140

/-- `∑[floor(ϕ*a(n-1))+5]` -/
def P5759104442732899405.Spec : Prop :=
  ∀ n, P5759104442732899405.a n = A037140 n

end A037140

/-! ## A037140.P13715314314639236823

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=5, a(1)=8`
-/

namespace A037140.P13715314314639236823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P13715314314639236823

namespace A037140

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P13715314314639236823.Spec : Prop :=
  ∀ n, (P13715314314639236823.a n : ℤ) = A037140 n

end A037140

/-! ## A037140.P3917040040036948274

`∑[∑[A020712(n)]]`
-/

namespace A037140.P3917040040036948274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P3917040040036948274

namespace A037140

/-- `∑[∑[A020712(n)]]` -/
def P3917040040036948274.Spec : Prop :=
  ∀ n, P3917040040036948274.a n = A037140 n

end A037140

/-! ## A037140.P5956556106415495319

`∑[A180671(n+1)]`
-/

namespace A037140.P5956556106415495319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P5956556106415495319

namespace A037140

/-- `∑[A180671(n+1)]` -/
def P5956556106415495319.Spec : Prop :=
  ∀ n, P5956556106415495319.a n = A037140 n

end A037140

/-! ## A037140.P9545072235767847465

`∑[A180672(n)+5]`
-/

namespace A037140.P9545072235767847465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180672 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P9545072235767847465

namespace A037140

/-- `∑[A180672(n)+5]` -/
def P9545072235767847465.Spec : Prop :=
  ∀ n, P9545072235767847465.a n = A037140 n

end A037140

/-! ## A037140.P12690330979713812691

`∑[∑[A020701(n+1)]]`
-/

namespace A037140.P12690330979713812691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P12690330979713812691

namespace A037140

/-- `∑[∑[A020701(n+1)]]` -/
def P12690330979713812691.Spec : Prop :=
  ∀ n, P12690330979713812691.a n = A037140 n

end A037140

/-! ## A037140.P11204791762859560440

`∑[∑[A020732(n)+1]]`
-/

namespace A037140.P11204791762859560440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P11204791762859560440

namespace A037140

/-- `∑[∑[A020732(n)+1]]` -/
def P11204791762859560440.Spec : Prop :=
  ∀ n, P11204791762859560440.a n = A037140 n

end A037140

/-! ## A037140.P9051148092648895142

`∑[∑[A020695(n+2)]]`
-/

namespace A037140.P9051148092648895142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P9051148092648895142

namespace A037140

/-- `∑[∑[A020695(n+2)]]` -/
def P9051148092648895142.Spec : Prop :=
  ∀ n, P9051148092648895142.a n = A037140 n

end A037140

/-! ## A037140.P1823300030808071572

`∑[∑[A020717(n)-1]]`
-/

namespace A037140.P1823300030808071572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P1823300030808071572

namespace A037140

/-- `∑[∑[A020717(n)-1]]` -/
def P1823300030808071572.Spec : Prop :=
  ∀ n, P1823300030808071572.a n = A037140 n

end A037140

/-! ## A037140.P17132218410152919939

`∑[∑[A020743(n)-2]]`
-/

namespace A037140.P17132218410152919939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P17132218410152919939

namespace A037140

/-- `∑[∑[A020743(n)-2]]` -/
def P17132218410152919939.Spec : Prop :=
  ∀ n, P17132218410152919939.a n = A037140 n

end A037140

/-! ## A037140.P5103537025877301140

`∑[∑[A071679(n+3)]]`
-/

namespace A037140.P5103537025877301140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P5103537025877301140

namespace A037140

/-- `∑[∑[A071679(n+3)]]` -/
def P5103537025877301140.Spec : Prop :=
  ∀ n, P5103537025877301140.a n = A037140 n

end A037140

/-! ## A037140.P8937917992351146705

`∑[∑[A373566(n+3)]]`
-/

namespace A037140.P8937917992351146705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P8937917992351146705

namespace A037140

/-- `∑[∑[A373566(n+3)]]` -/
def P8937917992351146705.Spec : Prop :=
  ∀ n, P8937917992351146705.a n = A037140 n

end A037140

/-! ## A037140.P4042586141208003871

`∑[∑[A000045(n+5)]]`
-/

namespace A037140.P4042586141208003871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P4042586141208003871

namespace A037140

/-- `∑[∑[A000045(n+5)]]` -/
def P4042586141208003871.Spec : Prop :=
  ∀ n, P4042586141208003871.a n = A037140 n

end A037140

/-! ## A037140.P3960386463355168505

`∑[∑[A020706(n+1)-1]]`
-/

namespace A037140.P3960386463355168505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P3960386463355168505

namespace A037140

/-- `∑[∑[A020706(n+1)-1]]` -/
def P3960386463355168505.Spec : Prop :=
  ∀ n, P3960386463355168505.a n = A037140 n

end A037140

/-! ## A037140.P4576365347501331613

`∑[∑[A048584(n+1)-2]]`
-/

namespace A037140.P4576365347501331613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037140.P4576365347501331613

namespace A037140

/-- `∑[∑[A048584(n+1)-2]]` -/
def P4576365347501331613.Spec : Prop :=
  ∀ n, P4576365347501331613.a n = A037140 n

end A037140

/-!
# A037141: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= -5, with F(-n)=(-1)^(n+1)*F(n);.

The programs for A037141, the canonical program `A037141.P11268728842912675615` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037141 has offset 0).

The definition of A037141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037141.P2578683062583491889

`∑[ogf((5-8x)/(1-2x+x^3))]`
-/

namespace A037141.P2578683062583491889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037141.P2578683062583491889

namespace A037141

/-- `∑[ogf((5-8x)/(1-2x+x^3))]` -/
def P2578683062583491889.Spec : Prop :=
  ∀ n, P2578683062583491889.a n = A037141 n

end A037141

/-! ## A037141.P16849334896881435502

`ogf((5-8x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A037141.P16849334896881435502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8] [1, -3, 2, 1, -1] n

end

end A037141.P16849334896881435502

namespace A037141

/-- `ogf((5-8x)/(1-3x+2x^2+x^3-x^4))` -/
def P16849334896881435502.Spec : Prop :=
  ∀ n, P16849334896881435502.a n = A037141 n

end A037141

/-! ## A037141.P11268728842912675615

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=5, a(1)=-3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037141

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P11268728842912675615.Spec : Prop :=
  ∀ n, P11268728842912675615.a n = A037141 n

theorem P11268728842912675615.correct : P11268728842912675615.Spec := by
  intro n
  simp only [A037141]

end A037141

/-! ## A037141.P16200731413256448672

`∑[a(n-1)-(3-a(n-2))]` with `a(0)=5, a(1)=2`
-/

namespace A037141.P16200731413256448672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037141.P16200731413256448672

namespace A037141

/-- `∑[a(n-1)-(3-a(n-2))]` -/
def P16200731413256448672.Spec : Prop :=
  ∀ n, P16200731413256448672.a n = A037141 n

end A037141

/-! ## A037141.P4496702430535064147

`A212804(n)+2*n+4+n`
-/

namespace A037141.P4496702430535064147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (2 * n : ℤ) + 4 + (n : ℤ)

end

end A037141.P4496702430535064147

namespace A037141

/-- `A212804(n)+2*n+4+n` -/
def P4496702430535064147.Spec : Prop :=
  ∀ n, P4496702430535064147.a n = A037141 n

end A037141

/-! ## A037141.P8163227968261994691

`A000045(abs(1-n))+3*n+4`
-/

namespace A037141.P8163227968261994691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat + (3 * n + 4 : ℤ)

end

end A037141.P8163227968261994691

namespace A037141

/-- `A000045(abs(1-n))+3*n+4` -/
def P8163227968261994691.Spec : Prop :=
  ∀ n, P8163227968261994691.a n = A037141 n

end A037141

/-! ## A037141.P3444454248762876679

`A212804(n)+A016777(n+1)`
-/

namespace A037141.P3444454248762876679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A016777 (n + 1)

end

end A037141.P3444454248762876679

namespace A037141

/-- `A212804(n)+A016777(n+1)` -/
def P3444454248762876679.Spec : Prop :=
  ∀ n, P3444454248762876679.a n = A037141 n

end A037141

/-! ## A037141.P168748153422707200

`A016789(n)+A212804(n)+2`
-/

namespace A037141.P168748153422707200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (A212804 n + 2)

end

end A037141.P168748153422707200

namespace A037141

/-- `A016789(n)+A212804(n)+2` -/
def P168748153422707200.Spec : Prop :=
  ∀ n, P168748153422707200.a n = A037141 n

end A037141

/-! ## A037141.P7108980363968013999

`A004277(n+2)+A212804(n)+n`
-/

namespace A037141.P7108980363968013999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 2) + (A212804 n + (n : ℤ))

end

end A037141.P7108980363968013999

namespace A037141

/-- `A004277(n+2)+A212804(n)+n` -/
def P7108980363968013999.Spec : Prop :=
  ∀ n, P7108980363968013999.a n = A037141 n

end A037141

/-! ## A037141.P18174634237747496409

`Δ[A160536(n)]+n+3`
-/

namespace A037141.P18174634237747496409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 3 : ℤ)

end

end A037141.P18174634237747496409

namespace A037141

/-- `Δ[A160536(n)]+n+3` -/
def P18174634237747496409.Spec : Prop :=
  ∀ n, P18174634237747496409.a n = A037141 n

end A037141

/-! ## A037141.P2476147419772809432

`3*(n+1)+Δ[A002062(n)]`
-/

namespace A037141.P2476147419772809432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + (f1 (n + 1) - f1 n)

end

end A037141.P2476147419772809432

namespace A037141

/-- `3*(n+1)+Δ[A002062(n)]` -/
def P2476147419772809432.Spec : Prop :=
  ∀ n, P2476147419772809432.a n = A037141 n

end A037141

/-! ## A037141.P12378337698561828538

`3*n+Δ[A000045(n)]+4`
-/

namespace A037141.P12378337698561828538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (f1 (n + 1) - f1 n + 4)

end

end A037141.P12378337698561828538

namespace A037141

/-- `3*n+Δ[A000045(n)]+4` -/
def P12378337698561828538.Spec : Prop :=
  ∀ n, P12378337698561828538.a n = A037141 n

end A037141

/-! ## A037141.P11806701979583921088

`Δ[A001611(n)]+3*n+4`
-/

namespace A037141.P11806701979583921088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 * n + 4 : ℤ)

end

end A037141.P11806701979583921088

namespace A037141

/-- `Δ[A001611(n)]+3*n+4` -/
def P11806701979583921088.Spec : Prop :=
  ∀ n, P11806701979583921088.a n = A037141 n

end A037141

/-! ## A037141.P1321801657746789243

`A089061(n)-A065220(n)`
-/

namespace A037141.P1321801657746789243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089061 n - A065220 n

end

end A037141.P1321801657746789243

namespace A037141

/-- `A089061(n)-A065220(n)` -/
def P1321801657746789243.Spec : Prop :=
  ∀ n, P1321801657746789243.a n = A037141 n

end A037141

/-! ## A037141.P10451900194385628241

`Δ[A000326(n+1)+A000045(n)]`
-/

namespace A037141.P10451900194385628241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037141.P10451900194385628241

namespace A037141

/-- `Δ[A000326(n+1)+A000045(n)]` -/
def P10451900194385628241.Spec : Prop :=
  ∀ n, P10451900194385628241.a n = A037141 n

end A037141

/-! ## A037141.P5921108270198305711

`A016777(n+1)+Δ[A000045(n)]`
-/

namespace A037141.P5921108270198305711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037141.P5921108270198305711

namespace A037141

/-- `A016777(n+1)+Δ[A000045(n)]` -/
def P5921108270198305711.Spec : Prop :=
  ∀ n, P5921108270198305711.a n = A037141 n

end A037141

/-! ## A037141.P5882257127743493363

`Δ[A000045(n)]+A016789(n)+2`
-/

namespace A037141.P5882257127743493363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A016789 n + 2)

end

end A037141.P5882257127743493363

namespace A037141

/-- `Δ[A000045(n)]+A016789(n)+2` -/
def P5882257127743493363.Spec : Prop :=
  ∀ n, P5882257127743493363.a n = A037141 n

end A037141

/-! ## A037141.P869270397527816195

`Δ[A001844(n)+A000045(n)]-n`
-/

namespace A037141.P869270397527816195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A037141.P869270397527816195

namespace A037141

/-- `Δ[A001844(n)+A000045(n)]-n` -/
def P869270397527816195.Spec : Prop :=
  ∀ n, P869270397527816195.a n = A037141 n

end A037141

/-! ## A037141.P10114012621968124857

`Δ[A046092(n)+A000045(n)]-n`
-/

namespace A037141.P10114012621968124857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A037141.P10114012621968124857

namespace A037141

/-- `Δ[A046092(n)+A000045(n)]-n` -/
def P10114012621968124857.Spec : Prop :=
  ∀ n, P10114012621968124857.a n = A037141 n

end A037141

/-! ## A037141.P6743513090617166235

`Δ[Δ[A000071(n+1)]+∑[3*n+1]]`
-/

namespace A037141.P6743513090617166235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037141.P6743513090617166235

namespace A037141

/-- `Δ[Δ[A000071(n+1)]+∑[3*n+1]]` -/
def P6743513090617166235.Spec : Prop :=
  ∀ n, P6743513090617166235.a n = A037141 n

end A037141

/-!
# A037143: Numbers with at most 2 prime factors (counted with multiplicity).

The programs for A037143, the canonical program `A037143.P1526375851961906888` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037143 has offset 1).

The definition of A037143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037143.P1365656562145333980

`lt[A216677(n+1), 2]+1`
-/

namespace A037143.P1365656562145333980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216677 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P1365656562145333980

namespace A037143

/-- `lt[A216677(n+1), 2]+1` -/
def P1365656562145333980.Spec : Prop :=
  ∀ n, (P1365656562145333980.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P7139764632141268538

`lt[A300239(n+1), 2]+1`
-/

namespace A037143.P7139764632141268538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P7139764632141268538

namespace A037143

/-- `lt[A300239(n+1), 2]+1` -/
def P7139764632141268538.Spec : Prop :=
  ∀ n, (P7139764632141268538.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P3216992920433189936

`lt[A001222(n+1), 3]+1`
-/

namespace A037143.P3216992920433189936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P3216992920433189936

namespace A037143

/-- `lt[A001222(n+1), 3]+1` -/
def P3216992920433189936.Spec : Prop :=
  ∀ n, (P3216992920433189936.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P17361238681185320844

`lt[A050379(n+1), 3]+1`
-/

namespace A037143.P17361238681185320844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P17361238681185320844

namespace A037143

/-- `lt[A050379(n+1), 3]+1` -/
def P17361238681185320844.Spec : Prop :=
  ∀ n, (P17361238681185320844.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P6599707834642240194

`lt[A300252(n+1), 3]+1`
-/

namespace A037143.P6599707834642240194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P6599707834642240194

namespace A037143

/-- `lt[A300252(n+1), 3]+1` -/
def P6599707834642240194.Spec : Prop :=
  ∀ n, (P6599707834642240194.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P15389361482411809153

`lt[A305809(n+1), 3]+1`
-/

namespace A037143.P15389361482411809153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305809 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P15389361482411809153

namespace A037143

/-- `lt[A305809(n+1), 3]+1` -/
def P15389361482411809153.Spec : Prop :=
  ∀ n, (P15389361482411809153.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P16677475890251582494

`lt[A318326(n+1), 3]+1`
-/

namespace A037143.P16677475890251582494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P16677475890251582494

namespace A037143

/-- `lt[A318326(n+1), 3]+1` -/
def P16677475890251582494.Spec : Prop :=
  ∀ n, (P16677475890251582494.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P1526375851961906888

`lt[A318473(n+1), 3]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A037143

/-- `lt[A318473(n+1), 3]+1` -/
def P1526375851961906888.Spec : Prop :=
  ∀ n, (P1526375851961906888.a n : ℤ) = A037143 (n + 1)

theorem P1526375851961906888.correct : P1526375851961906888.Spec := by
  intro n
  simp only [A037143, Nat.add_sub_cancel]

end A037143

/-! ## A037143.P17368468435372533710

`lt[A319683(n+1), 3]+1`
-/

namespace A037143.P17368468435372533710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037143.P17368468435372533710

namespace A037143

/-- `lt[A319683(n+1), 3]+1` -/
def P17368468435372533710.Spec : Prop :=
  ∀ n, (P17368468435372533710.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P16497220515268618557

`eq[1, A117358(2*(n+1))]+1`
-/

namespace A037143.P16497220515268618557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037143.P16497220515268618557

namespace A037143

/-- `eq[1, A117358(2*(n+1))]+1` -/
def P16497220515268618557.Spec : Prop :=
  ∀ n, (P16497220515268618557.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P16388188909074712537

`eq[1, A340369(2*(n+1))]+1`
-/

namespace A037143.P16388188909074712537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037143.P16388188909074712537

namespace A037143

/-- `eq[1, A340369(2*(n+1))]+1` -/
def P16388188909074712537.Spec : Prop :=
  ∀ n, (P16388188909074712537.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P6027684168041915369

`∪[A033946(n+1), A001358(n+1)]`
-/

namespace A037143.P6027684168041915369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A037143.P6027684168041915369

namespace A037143

/-- `∪[A033946(n+1), A001358(n+1)]` -/
def P6027684168041915369.Spec : Prop :=
  ∀ n, (P6027684168041915369.a n : ℤ) = A037143 (n + 1)

end A037143

/-! ## A037143.P13299567359779375654

`filter[A007964(n+1), A212793(#)]`
-/

namespace A037143.P13299567359779375654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A037143.P13299567359779375654

namespace A037143

/-- `filter[A007964(n+1), A212793(#)]` -/
def P13299567359779375654.Spec : Prop :=
  ∀ n, P13299567359779375654.a n = A037143 (n + 1)

end A037143

/-! ## A037143.P2130832586803926488

`filter[A007964(n+1), A355823(#)]`
-/

namespace A037143.P2130832586803926488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A037143.P2130832586803926488

namespace A037143

/-- `filter[A007964(n+1), A355823(#)]` -/
def P2130832586803926488.Spec : Prop :=
  ∀ n, P2130832586803926488.a n = A037143 (n + 1)

end A037143

/-! ## A037143.P10540564072070550274

`filter[A007964(n+1), A355825(#)]`
-/

namespace A037143.P10540564072070550274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A037143.P10540564072070550274

namespace A037143

/-- `filter[A007964(n+1), A355825(#)]` -/
def P10540564072070550274.Spec : Prop :=
  ∀ n, P10540564072070550274.a n = A037143 (n + 1)

end A037143

/-! ## A037143.P16257757544768993273

`filter[A007964(n+1), A359471(#)]`
-/

namespace A037143.P16257757544768993273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A037143.P16257757544768993273

namespace A037143

/-- `filter[A007964(n+1), A359471(#)]` -/
def P16257757544768993273.Spec : Prop :=
  ∀ n, P16257757544768993273.a n = A037143 (n + 1)

end A037143

/-! ## A037143.P16903900430083515910

`filter[A354144(n+1), A212793(#)]`
-/

namespace A037143.P16903900430083515910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A037143.P16903900430083515910

namespace A037143

/-- `filter[A354144(n+1), A212793(#)]` -/
def P16903900430083515910.Spec : Prop :=
  ∀ n, P16903900430083515910.a n = A037143 (n + 1)

end A037143

/-! ## A037143.P9267756739343331503

`filter[A354144(n+1), A359471(#)]`
-/

namespace A037143.P9267756739343331503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A037143.P9267756739343331503

namespace A037143

/-- `filter[A354144(n+1), A359471(#)]` -/
def P9267756739343331503.Spec : Prop :=
  ∀ n, P9267756739343331503.a n = A037143 (n + 1)

end A037143

/-! ## A037143.P14532356154356843314

`filter[A085156(n+1), A359471(#)]`
-/

namespace A037143.P14532356154356843314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A037143.P14532356154356843314

namespace A037143

/-- `filter[A085156(n+1), A359471(#)]` -/
def P14532356154356843314.Spec : Prop :=
  ∀ n, P14532356154356843314.a n = A037143 (n + 1)

end A037143

/-! ## A037143.P7680195822303971916

`filter[A119885(n+1), A359471(#)]`
-/

namespace A037143.P7680195822303971916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A037143.P7680195822303971916

namespace A037143

/-- `filter[A119885(n+1), A359471(#)]` -/
def P7680195822303971916.Spec : Prop :=
  ∀ n, P7680195822303971916.a n = A037143 (n + 1)

end A037143

/-!
# A037144: Numbers with at most 3 prime factors (counted with multiplicity).

The programs for A037144, the canonical program `A037144.P12279108171807343711` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037144 has offset 1).

The definition of A037144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037144.P11396466178243831279

`eq[1, A117358(n+1)]+1`
-/

namespace A037144.P11396466178243831279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037144.P11396466178243831279

namespace A037144

/-- `eq[1, A117358(n+1)]+1` -/
def P11396466178243831279.Spec : Prop :=
  ∀ n, (P11396466178243831279.a n : ℤ) = A037144 (n + 1)

end A037144

/-! ## A037144.P12279108171807343711

`eq[1, A340369(n+1)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037144

/-- `eq[1, A340369(n+1)]+1` -/
def P12279108171807343711.Spec : Prop :=
  ∀ n, (P12279108171807343711.a n : ℤ) = A037144 (n + 1)

theorem P12279108171807343711.correct : P12279108171807343711.Spec := by
  intro n
  simp only [A037144, Nat.add_sub_cancel]

end A037144

/-! ## A037144.P12111807023211682062

`lt[A001222(n+1), 4]+1`
-/

namespace A037144.P12111807023211682062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037144.P12111807023211682062

namespace A037144

/-- `lt[A001222(n+1), 4]+1` -/
def P12111807023211682062.Spec : Prop :=
  ∀ n, (P12111807023211682062.a n : ℤ) = A037144 (n + 1)

end A037144

/-! ## A037144.P1218870790412171638

`lt[A292504(n+1), 9]+1`
-/

namespace A037144.P1218870790412171638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037144.P1218870790412171638

namespace A037144

/-- `lt[A292504(n+1), 9]+1` -/
def P1218870790412171638.Spec : Prop :=
  ∀ n, (P1218870790412171638.a n : ℤ) = A037144 (n + 1)

end A037144

/-! ## A037144.P3297944795378595980

`lt[A265390(n+1), 44]+1`
-/

namespace A037144.P3297944795378595980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A037144.P3297944795378595980

namespace A037144

/-- `lt[A265390(n+1), 44]+1` -/
def P3297944795378595980.Spec : Prop :=
  ∀ n, (P3297944795378595980.a n : ℤ) = A037144 (n + 1)

end A037144

/-! ## A037144.P8854689716812022275

`eq[1, A329888(A329888(n+1))]+1`
-/

namespace A037144.P8854689716812022275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A329888 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037144.P8854689716812022275

namespace A037144

/-- `eq[1, A329888(A329888(n+1))]+1` -/
def P8854689716812022275.Spec : Prop :=
  ∀ n, (P8854689716812022275.a n : ℤ) = A037144 (n + 1)

end A037144

/-! ## A037144.P895592869916389858

`record[A000027(n+1)/A117358(n+1)]`
-/

namespace A037144.P895592869916389858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A117358 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037144.P895592869916389858

namespace A037144

/-- `record[A000027(n+1)/A117358(n+1)]` -/
def P895592869916389858.Spec : Prop :=
  ∀ n, P895592869916389858.a n = (A037144 (n + 1) : ℚ)

end A037144

/-! ## A037144.P3892262875764698818

`eq[A050374(n+1)², A050374(n+1)]+1`
-/

namespace A037144.P3892262875764698818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037144.P3892262875764698818

namespace A037144

/-- `eq[A050374(n+1)², A050374(n+1)]+1` -/
def P3892262875764698818.Spec : Prop :=
  ∀ n, (P3892262875764698818.a n : ℤ) = A037144 (n + 1)

end A037144

/-! ## A037144.P5403006763835845242

`filter[A289555(n+1), A340369(#)]`
-/

namespace A037144.P5403006763835845242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P5403006763835845242

namespace A037144

/-- `filter[A289555(n+1), A340369(#)]` -/
def P5403006763835845242.Spec : Prop :=
  ∀ n, P5403006763835845242.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P10561582031512321084

`filter[A180925(n+1), A340369(#)]`
-/

namespace A037144.P10561582031512321084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P10561582031512321084

namespace A037144

/-- `filter[A180925(n+1), A340369(#)]` -/
def P10561582031512321084.Spec : Prop :=
  ∀ n, P10561582031512321084.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P9260833378633408048

`filter[A166718(n+1), A340369(#)]`
-/

namespace A037144.P9260833378633408048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P9260833378633408048

namespace A037144

/-- `filter[A166718(n+1), A340369(#)]` -/
def P9260833378633408048.Spec : Prop :=
  ∀ n, P9260833378633408048.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P521685533321364664

`filter[A253781(n+1), A340369(#)]`
-/

namespace A037144.P521685533321364664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P521685533321364664

namespace A037144

/-- `filter[A253781(n+1), A340369(#)]` -/
def P521685533321364664.Spec : Prop :=
  ∀ n, P521685533321364664.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P16213998139183156780

`filter[A166719(n+1), A340369(#)]`
-/

namespace A037144.P16213998139183156780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P16213998139183156780

namespace A037144

/-- `filter[A166719(n+1), A340369(#)]` -/
def P16213998139183156780.Spec : Prop :=
  ∀ n, P16213998139183156780.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P8228637230804736566

`filter[A064598(n+1), A340369(#)]`
-/

namespace A037144.P8228637230804736566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P8228637230804736566

namespace A037144

/-- `filter[A064598(n+1), A340369(#)]` -/
def P8228637230804736566.Spec : Prop :=
  ∀ n, P8228637230804736566.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P925051408058478465

`filter[A046100(n+1), A340369(#)]`
-/

namespace A037144.P925051408058478465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P925051408058478465

namespace A037144

/-- `filter[A046100(n+1), A340369(#)]` -/
def P925051408058478465.Spec : Prop :=
  ∀ n, P925051408058478465.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P11923468602374116461

`filter[A265711(n+1), A340369(#)]`
-/

namespace A037144.P11923468602374116461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P11923468602374116461

namespace A037144

/-- `filter[A265711(n+1), A340369(#)]` -/
def P11923468602374116461.Spec : Prop :=
  ∀ n, P11923468602374116461.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P3258991731675356445

`filter[A377021(n+1), A340369(#)]`
-/

namespace A037144.P3258991731675356445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P3258991731675356445

namespace A037144

/-- `filter[A377021(n+1), A340369(#)]` -/
def P3258991731675356445.Spec : Prop :=
  ∀ n, P3258991731675356445.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P4689160098952934549

`filter[A115063(n+1), A340369(#)]`
-/

namespace A037144.P4689160098952934549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P4689160098952934549

namespace A037144

/-- `filter[A115063(n+1), A340369(#)]` -/
def P4689160098952934549.Spec : Prop :=
  ∀ n, P4689160098952934549.a n = A037144 (n + 1)

end A037144

/-! ## A037144.P11763533341396916501

`filter[A390439(n+1), A340369(#)]`
-/

namespace A037144.P11763533341396916501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A037144.P11763533341396916501

namespace A037144

/-- `filter[A390439(n+1), A340369(#)]` -/
def P11763533341396916501.Spec : Prop :=
  ∀ n, P11763533341396916501.a n = A037144 (n + 1)

end A037144

/-!
# A037145: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)*(1-x^6)).

The programs for A037145, the canonical program `A037145.P14292097428719380923` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037145 has offset 0).

The definition of A037145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^4+2x^7+2x^8+x^9-x^11-2x^12-2x^13+x^16+x^17+x^18-x^20))` (program `A037145.P14292097428719380923`, by `A037145.P14292097428719380923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037145.P14292097428719380923

`ogf(1/(1-x^2-x^3-x^4+2x^7+2x^8+x^9-x^11-2x^12-2x^13+x^16+x^17+x^18-x^20))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037145

/-- `ogf(1/(1-x^2-x^3-x^4+2x^7+2x^8+x^9-x^11-2x^12-2x^13+x^16+x^17+x^18-x^20))` -/
def P14292097428719380923.Spec : Prop :=
  ∀ n, P14292097428719380923.a n = A037145 n

theorem P14292097428719380923.correct : P14292097428719380923.Spec := by
  intro n
  simp only [A037145]

end A037145

/-! ## A037145.P12136289183938941015

`A008681(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A037145.P12136289183938941015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008681 n + a (n - 2)

end

end A037145.P12136289183938941015

namespace A037145

/-- `A008681(n)+a(n-2)` -/
def P12136289183938941015.Spec : Prop :=
  ∀ n, P12136289183938941015.a n = A037145 n

end A037145

/-! ## A037145.P1307557843727064868

`A029171(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A037145.P1307557843727064868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029171 n + a (n - 3)

end

end A037145.P1307557843727064868

namespace A037145

/-- `A029171(n)+a(n-3)` -/
def P1307557843727064868.Spec : Prop :=
  ∀ n, P1307557843727064868.a n = A037145 n

end A037145

/-! ## A037145.P6698047731419308150

`A060025(n)+A026812(n)`
-/

namespace A037145.P6698047731419308150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 n + A026812 n

end

end A037145.P6698047731419308150

namespace A037145

/-- `A060025(n)+A026812(n)` -/
def P6698047731419308150.Spec : Prop :=
  ∀ n, P6698047731419308150.a n = A037145 n

end A037145

/-! ## A037145.P5995883127549513294

`A060025(n)-A026812(n)*A134824(n)`
-/

namespace A037145.P5995883127549513294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 n - A026812 n * A134824 n

end

end A037145.P5995883127549513294

namespace A037145

/-- `A060025(n)-A026812(n)*A134824(n)` -/
def P5995883127549513294.Spec : Prop :=
  ∀ n, P5995883127549513294.a n = A037145 n

end A037145

/-! ## A037145.P3692080379755225762

`Δ[A001401(n)-A060025(n)]`
-/

namespace A037145.P3692080379755225762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A060025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037145.P3692080379755225762

namespace A037145

/-- `Δ[A001401(n)-A060025(n)]` -/
def P3692080379755225762.Spec : Prop :=
  ∀ n, P3692080379755225762.a n = A037145 n

end A037145

/-! ## A037145.P504205035302227715

`A001402(n)-A026812(n+5)`
-/

namespace A037145.P504205035302227715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A026812 (n + 5)

end

end A037145.P504205035302227715

namespace A037145

/-- `A001402(n)-A026812(n+5)` -/
def P504205035302227715.Spec : Prop :=
  ∀ n, P504205035302227715.a n = A037145 n

end A037145

/-! ## A037145.P10083759189944104020

`Δ[A026812(n+5)]`
-/

namespace A037145.P10083759189944104020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037145.P10083759189944104020

namespace A037145

/-- `Δ[A026812(n+5)]` -/
def P10083759189944104020.Spec : Prop :=
  ∀ n, P10083759189944104020.a n = A037145 n

end A037145

/-! ## A037145.P15635407045437336365

`Δ[A152146(A167614(n+1))]`
-/

namespace A037145.P15635407045437336365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037145.P15635407045437336365

namespace A037145

/-- `Δ[A152146(A167614(n+1))]` -/
def P15635407045437336365.Spec : Prop :=
  ∀ n, P15635407045437336365.a n = A037145 n

end A037145

/-! ## A037145.P9104955589318018881

`Δ[A152146(A167499(n)+n)]`
-/

namespace A037145.P9104955589318018881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037145.P9104955589318018881

namespace A037145

/-- `Δ[A152146(A167499(n)+n)]` -/
def P9104955589318018881.Spec : Prop :=
  ∀ n, P9104955589318018881.a n = A037145 n

end A037145

/-! ## A037145.P8666282756740681934

`A333925(A055999(n+3))`
-/

namespace A037145.P8666282756740681934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333925 (A055999 (n + 3)).toNat

end

end A037145.P8666282756740681934

namespace A037145

/-- `A333925(A055999(n+3))` -/
def P8666282756740681934.Spec : Prop :=
  ∀ n, P8666282756740681934.a n = A037145 n

end A037145

/-!
# A037147: Denominators of Fourier coefficients of Eisenstein series of degree 2 and weight 10 when evaluated at Gram(A_2)*z.

The programs for A037147, there is no canonical definition to state claims against.
-/

/-! ## A037147.P9357190038403844350

`A000367(A026045(a(and(1, n))))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A037147.P9357190038403844350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000367 (A026045 (a (Nat.land 1 n)).toNat).toNat

end

end A037147.P9357190038403844350

/-!
# A037151: Smallest prime > n!.

The programs for A037151, the canonical program `A037151.P13747861056298471043` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037151 has offset 1).

The definition of A037151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037151.P12925087513143101037

`A000142(n+1)+A033932(n+1)`
-/

namespace A037151.P12925087513143101037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + A033932 (n + 1)

end

end A037151.P12925087513143101037

namespace A037151

/-- `A000142(n+1)+A033932(n+1)` -/
def P12925087513143101037.Spec : Prop :=
  ∀ n, P12925087513143101037.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P13747861056298471043

`A151800(A000142(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037151

/-- `A151800(A000142(n+1))` -/
def P13747861056298471043.Spec : Prop :=
  ∀ n, P13747861056298471043.a n = A037151 (n + 1)

theorem P13747861056298471043.correct : P13747861056298471043.Spec := by
  intro n
  simp only [A037151, Nat.add_sub_cancel]

end A037151

/-! ## A037151.P12837110595787681196

`record[or(A023532(n), A087421(n))]`
-/

namespace A037151.P12837110595787681196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 n) (A087421 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037151.P12837110595787681196

namespace A037151

/-- `record[or(A023532(n), A087421(n))]` -/
def P12837110595787681196.Spec : Prop :=
  ∀ n, P12837110595787681196.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P15730494144714334978

`or(A023532(n), A087421(n+1))`
-/

namespace A037151.P15730494144714334978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 n) (A087421 (n + 1))

end

end A037151.P15730494144714334978

namespace A037151

/-- `or(A023532(n), A087421(n+1))` -/
def P15730494144714334978.Spec : Prop :=
  ∀ n, P15730494144714334978.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P11975271158327098310

`record[A087421(n)+A055672(2*n)]`
-/

namespace A037151.P11975271158327098310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087421 n + A055672 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037151.P11975271158327098310

namespace A037151

/-- `record[A087421(n)+A055672(2*n)]` -/
def P11975271158327098310.Spec : Prop :=
  ∀ n, P11975271158327098310.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P16492698333701223664

`record[or(A087421(n), A093879(n+1))]`
-/

namespace A037151.P16492698333701223664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087421 n) (A093879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037151.P16492698333701223664

namespace A037151

/-- `record[or(A087421(n), A093879(n+1))]` -/
def P16492698333701223664.Spec : Prop :=
  ∀ n, P16492698333701223664.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P2024921900073698560

`A087421(n+1)+A055672(2*n)`
-/

namespace A037151.P2024921900073698560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087421 (n + 1) + A055672 (2 * n)

end

end A037151.P2024921900073698560

namespace A037151

/-- `A087421(n+1)+A055672(2*n)` -/
def P2024921900073698560.Spec : Prop :=
  ∀ n, P2024921900073698560.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P17803491860383567719

`or(A010051(n+1), A087421(n+1))`
-/

namespace A037151.P17803491860383567719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A087421 (n + 1))

end

end A037151.P17803491860383567719

namespace A037151

/-- `or(A010051(n+1), A087421(n+1))` -/
def P17803491860383567719.Spec : Prop :=
  ∀ n, P17803491860383567719.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P1847235487716205481

`or(A049240(n+1), A087421(n+1))`
-/

namespace A037151.P1847235487716205481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049240 (n + 1)) (A087421 (n + 1))

end

end A037151.P1847235487716205481

namespace A037151

/-- `or(A049240(n+1), A087421(n+1))` -/
def P1847235487716205481.Spec : Prop :=
  ∀ n, P1847235487716205481.a n = A037151 (n + 1)

end A037151

/-! ## A037151.P109653652029215509

`or(A087421(n+1), A093879(n+1))`
-/

namespace A037151.P109653652029215509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087421 (n + 1)) (A093879 (n + 1))

end

end A037151.P109653652029215509

namespace A037151

/-- `or(A087421(n+1), A093879(n+1))` -/
def P109653652029215509.Spec : Prop :=
  ∀ n, P109653652029215509.a n = A037151 (n + 1)

end A037151

/-!
# A037152: Smallest prime > n!+1.

The programs for A037152, the canonical program `A037152.P12694008118734574474` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037152 has offset 1).

The definition of A037152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037152.P7103562499068981129

`A000142(n+1)+A037153(n+1)`
-/

namespace A037152.P7103562499068981129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + A037153 (n + 1)

end

end A037152.P7103562499068981129

namespace A037152

/-- `A000142(n+1)+A037153(n+1)` -/
def P7103562499068981129.Spec : Prop :=
  ∀ n, P7103562499068981129.a n = A037152 (n + 1)

end A037152

/-! ## A037152.P12694008118734574474

`A151800(A038507(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037152

/-- `A151800(A038507(n+1))` -/
def P12694008118734574474.Spec : Prop :=
  ∀ n, P12694008118734574474.a n = A037152 (n + 1)

theorem P12694008118734574474.correct : P12694008118734574474.Spec := by
  intro n
  simp only [A037152, Nat.add_sub_cancel]

end A037152

/-! ## A037152.P14319711270881705289

`A151800(A000142(n+1)+1)`
-/

namespace A037152.P14319711270881705289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000142 (n + 1) + 1).toNat

end

end A037152.P14319711270881705289

namespace A037152

/-- `A151800(A000142(n+1)+1)` -/
def P14319711270881705289.Spec : Prop :=
  ∀ n, P14319711270881705289.a n = A037152 (n + 1)

theorem P14319711270881705289.correct : P14319711270881705289.Spec := by
  intro n
  simp only [A037152, Nat.add_sub_cancel, A037152.P14319711270881705289.a, A037152.P12694008118734574474.a, A000142, A000142.P3272619076580183195.a, A038507, A038507.P6297172410669872132.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037152

/-! ## A037152.P15496449822014985815

`A213169(n+1)+A090786(n+1)`
-/

namespace A037152.P15496449822014985815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213169 (n + 1) + A090786 (n + 1)

end

end A037152.P15496449822014985815

namespace A037152

/-- `A213169(n+1)+A090786(n+1)` -/
def P15496449822014985815.Spec : Prop :=
  ∀ n, P15496449822014985815.a n = A037152 (n + 1)

end A037152

/-! ## A037152.P13210339455053934772

`A005095(n+1)+A090786(n+1)+1`
-/

namespace A037152.P13210339455053934772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 (n + 1) + (A090786 (n + 1) + 1)

end

end A037152.P13210339455053934772

namespace A037152

/-- `A005095(n+1)+A090786(n+1)+1` -/
def P13210339455053934772.Spec : Prop :=
  ∀ n, P13210339455053934772.a n = A037152 (n + 1)

end A037152

/-! ## A037152.P11940358214806772682

`A005165(n+1)+A037153(n+1)+A005165(n)`
-/

namespace A037152.P11940358214806772682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005165 (n + 1) + (A037153 (n + 1) + A005165 n)

end

end A037152.P11940358214806772682

namespace A037152

/-- `A005165(n+1)+A037153(n+1)+A005165(n)` -/
def P11940358214806772682.Spec : Prop :=
  ∀ n, P11940358214806772682.a n = A037152 (n + 1)

end A037152

/-! ## A037152.P6129913851054530777

`A037151(n+1)+A037153(n+1)-A033932(n+1)`
-/

namespace A037152.P6129913851054530777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (n + 1) + (A037153 (n + 1) - A033932 (n + 1))

end

end A037152.P6129913851054530777

namespace A037152

/-- `A037151(n+1)+A037153(n+1)-A033932(n+1)` -/
def P6129913851054530777.Spec : Prop :=
  ∀ n, P6129913851054530777.a n = A037152 (n + 1)

end A037152

/-! ## A037152.P16148248587784687832

`A343593(n+1)+A005095(n+1)`
-/

namespace A037152.P16148248587784687832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343593 (n + 1) + A005095 (n + 1)

end

end A037152.P16148248587784687832

namespace A037152

/-- `A343593(n+1)+A005095(n+1)` -/
def P16148248587784687832.Spec : Prop :=
  ∀ n, P16148248587784687832.a n = A037152 (n + 1)

end A037152

/-!
# A037153: a(n) = p-n!, where p is the smallest prime > n!+1.

The programs for A037153, there is no canonical definition to state claims against.
-/

/-! ## A037153.P4853730714695567723

`p?[A090786(n)+1+n]`
-/

namespace A037153.P4853730714695567723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037153.P4853730714695567723

/-! ## A037153.P11033973546300590907

`A090786(n+1)+2+n`
-/

namespace A037153.P11033973546300590907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 (n + 1) + 2 + (n : ℤ)

end

end A037153.P11033973546300590907

/-! ## A037153.P13857264694998118072

`p?[A141310(A090786(n)+n)]`
-/

namespace A037153.P13857264694998118072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A090786 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037153.P13857264694998118072

/-! ## A037153.P11149613552884342887

`p?[A166333(A090786(n)+n)]`
-/

namespace A037153.P11149613552884342887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A090786 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037153.P11149613552884342887

/-! ## A037153.P18084127786587624890

`A000040(A151903(n+1)+A000720(n+1))`
-/

namespace A037153.P18084127786587624890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A151903 (n + 1) + A000720 (n + 1)).toNat

end

end A037153.P18084127786587624890

/-! ## A037153.P3092673983555054814

`A037152(n+1)-A000142(n+1)`
-/

namespace A037153.P3092673983555054814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037152 (n + 1) - A000142 (n + 1)

end

end A037153.P3092673983555054814

/-! ## A037153.P10584054951894594926

`p?[A343593(n)+n]`
-/

namespace A037153.P10584054951894594926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343593 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037153.P10584054951894594926

/-! ## A037153.P3539321291878341342

`A343593(n+1)+1+n`
-/

namespace A037153.P3539321291878341342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343593 (n + 1) + 1 + (n : ℤ)

end

end A037153.P3539321291878341342

/-!
# A037154: Largest prime < n!-1.

The programs for A037154, there is no canonical definition to state claims against.
-/

/-! ## A037154.P5784875846253916365

`(n+3)!-A037155(n+3)`
-/

namespace A037154.P5784875846253916365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℤ) - A037155 (n + 3)

end

end A037154.P5784875846253916365

/-! ## A037154.P9175277790191394024

`(n+3)!-(A301427(n+3)+3+n)`
-/

namespace A037154.P9175277790191394024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℤ) - (A301427 (n + 3) + 3 + (n : ℤ))

end

end A037154.P9175277790191394024

/-! ## A037154.P5422298718492071922

`A000142(n+3)-A037155(n+3)`
-/

namespace A037154.P5422298718492071922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 3) - A037155 (n + 3)

end

end A037154.P5422298718492071922

/-! ## A037154.P17692481083919791952

`A005096(n+3)-A301427(n+3)`
-/

namespace A037154.P17692481083919791952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005096 (n + 3) - A301427 (n + 3)

end

end A037154.P17692481083919791952

/-! ## A037154.P1933577608889720048

`A193216(n+3)/A037155(n+3)`
-/

namespace A037154.P1933577608889720048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193216 (n + 3) : ℚ) / (A037155 (n + 3) : ℚ)

end

end A037154.P1933577608889720048

/-!
# A037155: a(n) = n!-p, where p is the largest prime < (n!-1).

The programs for A037155, there is no canonical definition to state claims against.
-/

/-! ## A037155.P16932490824526365107

`A301427(n+3)+3+n`
-/

namespace A037155.P16932490824526365107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301427 (n + 3) + 3 + (n : ℤ)

end

end A037155.P16932490824526365107

/-! ## A037155.P10464232433038383217

`(n+3)!-A037154(n+3)`
-/

namespace A037155.P10464232433038383217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℤ) - A037154 (n + 3)

end

end A037155.P10464232433038383217

/-! ## A037155.P15887282129256553046

`A000142(n+3)-A037154(n+3)`
-/

namespace A037155.P15887282129256553046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 3) - A037154 (n + 3)

end

end A037155.P15887282129256553046

/-! ## A037155.P9046367454338866878

`A193216(n+3)/A037154(n+3)`
-/

namespace A037155.P9046367454338866878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193216 (n + 3) : ℚ) / (A037154 (n + 3) : ℚ)

end

end A037155.P9046367454338866878

/-!
# A037156: a(n) = 10^n*(10^n+1)/2.

The programs for A037156, the canonical program `A037156.P2936529416865772698` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037156 has offset 0).

The definition of A037156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(10^n+1)/2` (program `A037156.P15848968868545289750`, by `A037156.P15848968868545289750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037156.P2936529416865772698

`110*a(n-1)-1000*a(n-2)` with `a(0)=1, a(1)=55`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037156

/-- `110*a(n-1)-1000*a(n-2)` -/
def P2936529416865772698.Spec : Prop :=
  ∀ n, P2936529416865772698.a n = A037156 n

theorem P2936529416865772698.correct : P2936529416865772698.Spec := by
  intro n
  simp only [A037156]

end A037156

/-! ## A037156.P14631099781844691434

`A000533(n)*A093143(n)`
-/

namespace A037156.P14631099781844691434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n * A093143 n

end

end A037156.P14631099781844691434

namespace A037156

/-- `A000533(n)*A093143(n)` -/
def P14631099781844691434.Spec : Prop :=
  ∀ n, P14631099781844691434.a n = A037156 n

end A037156

/-! ## A037156.P15848968868545289750

`10^n*(10^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037156.P15848968868545289750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * (10 ^ n + 1) : ℚ) / 2

end

end A037156.P15848968868545289750

namespace A037156

/-- `10^n*(10^n+1)/2` -/
def P15848968868545289750.Spec : Prop :=
  ∀ n, P15848968868545289750.a n = (A037156 n : ℚ)

theorem P15848968868545289750.correct : P15848968868545289750.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A037156, Nat.add_sub_cancel, A037156.P15848968868545289750.a, A037156.P2936529416865772698.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A037156, Nat.add_sub_cancel, A037156.P15848968868545289750.a, A037156.P2936529416865772698.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037156

/-! ## A037156.P15977849243471493215

`sqrt(A038544(n))`
-/

namespace A037156.P15977849243471493215
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038544 n : ℝ)

end

end A037156.P15977849243471493215

namespace A037156

/-- `sqrt(A038544(n))` -/
def P15977849243471493215.Spec : Prop :=
  ∀ n, P15977849243471493215.a n = (A037156 n : ℝ)

end A037156

/-! ## A037156.P558622464797487241

`A088404(A058331(n))`
-/

namespace A037156.P558622464797487241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088404 (A058331 n).toNat

end

end A037156.P558622464797487241

namespace A037156

/-- `A088404(A058331(n))` -/
def P558622464797487241.Spec : Prop :=
  ∀ n, P558622464797487241.a n = A037156 n

end A037156

/-! ## A037156.P8562511323162788213

`C(10^n+1, 2)`
-/

namespace A037156.P8562511323162788213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (10 ^ n + 1) 2

end

end A037156.P8562511323162788213

namespace A037156

/-- `C(10^n+1, 2)` -/
def P8562511323162788213.Spec : Prop :=
  ∀ n, (P8562511323162788213.a n : ℤ) = A037156 n

end A037156

/-!
# A037157: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= 6.

The programs for A037157, the canonical program `A037157.P4336713290147807195` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037157 has offset 0).

The definition of A037157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037157.P4336713290147807195

`A000045(n+10)-(47+13*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037157

/-- `A000045(n+10)-(47+13*n)` -/
def P4336713290147807195.Spec : Prop :=
  ∀ n, P4336713290147807195.a n = A037157 n

theorem P4336713290147807195.correct : P4336713290147807195.Spec := by
  intro n
  simp only [A037157]

end A037157

/-! ## A037157.P3716210874432022920

`∑[ogf((8+5x)/(1-2x+x^3))]`
-/

namespace A037157.P3716210874432022920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 5] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P3716210874432022920

namespace A037157

/-- `∑[ogf((8+5x)/(1-2x+x^3))]` -/
def P3716210874432022920.Spec : Prop :=
  ∀ n, P3716210874432022920.a n = A037157 n

end A037157

/-! ## A037157.P11717401259075718964

`ogf((8+5x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A037157.P11717401259075718964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 5] [1, -3, 2, 1, -1] n

end

end A037157.P11717401259075718964

namespace A037157

/-- `ogf((8+5x)/(1-3x+2x^2+x^3-x^4))` -/
def P11717401259075718964.Spec : Prop :=
  ∀ n, P11717401259075718964.a n = A037157 n

end A037157

/-! ## A037157.P7091466118614736606

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=8, a(1)=13`
-/

namespace A037157.P7091466118614736606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 13] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P7091466118614736606

namespace A037157

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P7091466118614736606.Spec : Prop :=
  ∀ n, (P7091466118614736606.a n : ℤ) = A037157 n

end A037157

/-! ## A037157.P17886954138713599001

`∑[A180672(n+1)]`
-/

namespace A037157.P17886954138713599001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P17886954138713599001

namespace A037157

/-- `∑[A180672(n+1)]` -/
def P17886954138713599001.Spec : Prop :=
  ∀ n, P17886954138713599001.a n = A037157 n

end A037157

/-! ## A037157.P14354224413797262722

`∑[∑[A020712(n+1)]]`
-/

namespace A037157.P14354224413797262722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P14354224413797262722

namespace A037157

/-- `∑[∑[A020712(n+1)]]` -/
def P14354224413797262722.Spec : Prop :=
  ∀ n, P14354224413797262722.a n = A037157 n

end A037157

/-! ## A037157.P2098462710640027432

`∑[∑[A020701(n+2)]]`
-/

namespace A037157.P2098462710640027432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P2098462710640027432

namespace A037157

/-- `∑[∑[A020701(n+2)]]` -/
def P2098462710640027432.Spec : Prop :=
  ∀ n, P2098462710640027432.a n = A037157 n

end A037157

/-! ## A037157.P11129245955947917767

`∑[∑[A020695(n+3)]]`
-/

namespace A037157.P11129245955947917767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P11129245955947917767

namespace A037157

/-- `∑[∑[A020695(n+3)]]` -/
def P11129245955947917767.Spec : Prop :=
  ∀ n, P11129245955947917767.a n = A037157 n

end A037157

/-! ## A037157.P16076945007035986467

`∑[∑[A000045(n+6)]]`
-/

namespace A037157.P16076945007035986467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P16076945007035986467

namespace A037157

/-- `∑[∑[A000045(n+6)]]` -/
def P16076945007035986467.Spec : Prop :=
  ∀ n, P16076945007035986467.a n = A037157 n

end A037157

/-! ## A037157.P15933073551413236184

`∑[A180671(n+2)-5]`
-/

namespace A037157.P15933073551413236184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 (n + 2) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P15933073551413236184

namespace A037157

/-- `∑[A180671(n+2)-5]` -/
def P15933073551413236184.Spec : Prop :=
  ∀ n, P15933073551413236184.a n = A037157 n

end A037157

/-! ## A037157.P15767398766880184388

`∑[∑[A020732(n+1)+1]]`
-/

namespace A037157.P15767398766880184388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P15767398766880184388

namespace A037157

/-- `∑[∑[A020732(n+1)+1]]` -/
def P15767398766880184388.Spec : Prop :=
  ∀ n, P15767398766880184388.a n = A037157 n

end A037157

/-! ## A037157.P17971276715756575251

`∑[∑[A020717(n+1)-1]]`
-/

namespace A037157.P17971276715756575251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P17971276715756575251

namespace A037157

/-- `∑[∑[A020717(n+1)-1]]` -/
def P17971276715756575251.Spec : Prop :=
  ∀ n, P17971276715756575251.a n = A037157 n

end A037157

/-! ## A037157.P9879322071248553075

`∑[∑[A020743(n+1)-2]]`
-/

namespace A037157.P9879322071248553075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037157.P9879322071248553075

namespace A037157

/-- `∑[∑[A020743(n+1)-2]]` -/
def P9879322071248553075.Spec : Prop :=
  ∀ n, P9879322071248553075.a n = A037157 n

end A037157

/-! ## A037157.P17459830107338871700

`A037140(n)+A033960(n)`
-/

namespace A037157.P17459830107338871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037140 n + A033960 n

end

end A037157.P17459830107338871700

namespace A037157

/-- `A037140(n)+A033960(n)` -/
def P17459830107338871700.Spec : Prop :=
  ∀ n, P17459830107338871700.a n = A037157 n

end A037157

/-! ## A037157.P12340622868229468165

`A033937(n)+2*A033960(n)`
-/

namespace A037157.P12340622868229468165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 n + 2 * A033960 n

end

end A037157.P12340622868229468165

namespace A037157

/-- `A033937(n)+2*A033960(n)` -/
def P12340622868229468165.Spec : Prop :=
  ∀ n, P12340622868229468165.a n = A037157 n

end A037157

/-! ## A037157.P6749741144117076268

`A033814(n+1)+A001891(n+1)`
-/

namespace A037157.P6749741144117076268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033814 (n + 1) + A001891 (n + 1)

end

end A037157.P6749741144117076268

namespace A037157

/-- `A033814(n+1)+A001891(n+1)` -/
def P6749741144117076268.Spec : Prop :=
  ∀ n, P6749741144117076268.a n = A037157 n

end A037157

/-! ## A037157.P10465562277670265774

`A037140(n)+A037140(n)-A033937(n)`
-/

namespace A037157.P10465562277670265774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037140 n + (A037140 n - A033937 n)

end

end A037157.P10465562277670265774

namespace A037157

/-- `A037140(n)+A037140(n)-A033937(n)` -/
def P10465562277670265774.Spec : Prop :=
  ∀ n, P10465562277670265774.a n = A037157 n

end A037157

/-! ## A037157.P4658035975199187501

`A001891(n+1)+A037140(n)+A033937(n)`
-/

namespace A037157.P4658035975199187501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) + (A037140 n + A033937 n)

end

end A037157.P4658035975199187501

namespace A037157

/-- `A001891(n+1)+A037140(n)+A033937(n)` -/
def P4658035975199187501.Spec : Prop :=
  ∀ n, P4658035975199187501.a n = A037157 n

end A037157

/-! ## A037157.P17813753984522897647

`2*A037140(n)-A033937(n)`
-/

namespace A037157.P17813753984522897647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037140 n - A033937 n

end

end A037157.P17813753984522897647

namespace A037157

/-- `2*A037140(n)-A033937(n)` -/
def P17813753984522897647.Spec : Prop :=
  ∀ n, P17813753984522897647.a n = A037157 n

end A037157

/-!
# A037158: Convolution of natural numbers n >= 1 with Fibonacci numbers F(k), for k >= -7, with F(-n)=(-1)^(n+1)*F(n).

The programs for A037158, the canonical program `A037158.P15677220345464833760` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037158 has offset 0).

The definition of A037158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037158.P15677220345464833760

`∑[a(n-1)+a(n-2)-8]` with `a(0)=13, a(1)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037158

/-- `∑[a(n-1)+a(n-2)-8]` -/
def P15677220345464833760.Spec : Prop :=
  ∀ n, P15677220345464833760.a n = A037158 n

theorem P15677220345464833760.correct : P15677220345464833760.Spec := by
  intro n
  simp only [A037158]

end A037158

/-! ## A037158.P11212282873474280046

`∑[a(n-1)-(8-a(n-2))]` with `a(0)=13, a(1)=5`
-/

namespace A037158.P11212282873474280046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, 5] fun n f1 =>
  f1 (n - 1) - (8 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037158.P11212282873474280046

namespace A037158

/-- `∑[a(n-1)-(8-a(n-2))]` -/
def P11212282873474280046.Spec : Prop :=
  ∀ n, P11212282873474280046.a n = A037158 n

theorem P11212282873474280046.correct : P11212282873474280046.Spec := by
  intro n
  simp only [A037158, Nat.add_sub_cancel, A037158.P11212282873474280046.f1, A037158.P11212282873474280046.a, A037158.P15677220345464833760.f1, A037158.P15677220345464833760.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A037158

/-! ## A037158.P8817266541699880015

`A004769(n)-Δ[A152163(n)]`
-/

namespace A037158.P8817266541699880015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n - (f1 (n + 1) - f1 n)

end

end A037158.P8817266541699880015

namespace A037158

/-- `A004769(n)-Δ[A152163(n)]` -/
def P8817266541699880015.Spec : Prop :=
  ∀ n, P8817266541699880015.a n = A037158 n

end A037158

/-! ## A037158.P14725816440422254475

`A020742(A016825(n))-Δ[A152163(n)]`
-/

namespace A037158.P14725816440422254475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A016825 n).toNat - (f1 (n + 1) - f1 n)

end

end A037158.P14725816440422254475

namespace A037158

/-- `A020742(A016825(n))-Δ[A152163(n)]` -/
def P14725816440422254475.Spec : Prop :=
  ∀ n, P14725816440422254475.a n = A037158 n

end A037158

/-! ## A037158.P18359428828855404471

`A004769(n)+A212804(n)-Δ[A212804(n)]`
-/

namespace A037158.P18359428828855404471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n + (A212804 n - (f1 (n + 1) - f1 n))

end

end A037158.P18359428828855404471

namespace A037158

/-- `A004769(n)+A212804(n)-Δ[A212804(n)]` -/
def P18359428828855404471.Spec : Prop :=
  ∀ n, P18359428828855404471.a n = A037158 n

end A037158

/-! ## A037158.P2388396161401784507

`A004769(n)+Δ[Δ[A212804(n)]]`
-/

namespace A037158.P2388396161401784507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n + (f1 (n + 1) - f1 n)

end

end A037158.P2388396161401784507

namespace A037158

/-- `A004769(n)+Δ[Δ[A212804(n)]]` -/
def P2388396161401784507.Spec : Prop :=
  ∀ n, P2388396161401784507.a n = A037158 n

end A037158

/-!
# A037162: Well-order the rational numbers; take denominators.

The programs for A037162, there is no canonical definition to state claims against.
-/

/-! ## A037162.P7569289504043241565

`A050603(A230096(A166983(n+1))+A050603(n))`
-/

namespace A037162.P7569289504043241565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A230096 (A166983 (n + 1)).toNat + A050603 n).toNat

end

end A037162.P7569289504043241565

/-!
# A037164: Numerators of coefficients of Eisenstein series E_12(q) (or E_6(q) or E_24(q)).

The programs for A037164, there is no canonical definition to state claims against.
-/

/-! ## A037164.P6278469533605004835

`A029828(n)^A057428(n)²`
-/

namespace A037164.P6278469533605004835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029828 n : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A037164.P6278469533605004835

/-! ## A037164.P8684851220748113383

`A029828(n)^and(1, A000040(n+1))`
-/

namespace A037164.P8684851220748113383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029828 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A037164.P8684851220748113383

/-! ## A037164.P10217589834800855890

`gcd(A008683(A145154(n)), A029828(n))`
-/

namespace A037164.P10217589834800855890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A145154 n).toNat) (A029828 n)

end

end A037164.P10217589834800855890

/-! ## A037164.P16069854838497001551

`A029828(n)^A001221(A000961(n+1))`
-/

namespace A037164.P16069854838497001551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029828 n : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A037164.P16069854838497001551

/-! ## A037164.P4768351788328912922

`and(A029828(n), A033999(A004273(n)))`
-/

namespace A037164.P4768351788328912922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029828 n) (A033999 (A004273 n).toNat)

end

end A037164.P4768351788328912922

/-! ## A037164.P11708155200602197881

`A029828(n)%(A282403(3*n+1)+2)`
-/

namespace A037164.P11708155200602197881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029828 n) (A282403 (3 * n + 1) + 2)

end

end A037164.P11708155200602197881

/-! ## A037164.P3533709668625539159

`A029828(n)^A004016(A079366(n)*A088157(n))`
-/

namespace A037164.P3533709668625539159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029828 n : ℚ) ^ (A004016 (A079366 n * A088157 n).toNat : ℤ)

end

end A037164.P3533709668625539159

/-!
# A037165: a(n) = prime(n)*prime(n+1) - prime(n) - prime(n+1).

The programs for A037165, the canonical program `A037165.P6513622621090832271` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037165 has offset 1).

The definition of A037165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)-A000040(n+1)-A000040(n+2)` (program `A037165.P6513622621090832271`, by `A037165.P6513622621090832271.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037165.P11474511069064839000

`A006094(n+1)-A001043(n+1)`
-/

namespace A037165.P11474511069064839000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001043 (n + 1)

end

end A037165.P11474511069064839000

namespace A037165

/-- `A006094(n+1)-A001043(n+1)` -/
def P11474511069064839000.Spec : Prop :=
  ∀ n, P11474511069064839000.a n = A037165 (n + 1)

theorem P11474511069064839000.correct : P11474511069064839000.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P11474511069064839000.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P6513622621090832271

`A000040(n+1)*A000040(n+2)-A000040(n+1)-A000040(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037165

/-- `A000040(n+1)*A000040(n+2)-A000040(n+1)-A000040(n+2)` -/
def P6513622621090832271.Spec : Prop :=
  ∀ n, P6513622621090832271.a n = A037165 (n + 1)

theorem P6513622621090832271.correct : P6513622621090832271.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel]

end A037165

/-! ## A037165.P8887257476494533095

`A083553(n+1)-1`
-/

namespace A037165.P8887257476494533095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083553 (n + 1) - 1

end

end A037165.P8887257476494533095

namespace A037165

/-- `A083553(n+1)-1` -/
def P8887257476494533095.Spec : Prop :=
  ∀ n, P8887257476494533095.a n = A037165 (n + 1)

theorem P8887257476494533095.correct : P8887257476494533095.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P8887257476494533095.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A083553, A083553.P14618886648007354780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P10984022774947730240

`2*A099407(n+1)-1`
-/

namespace A037165.P10984022774947730240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099407 (n + 1) - 1

end

end A037165.P10984022774947730240

namespace A037165

/-- `2*A099407(n+1)-1` -/
def P10984022774947730240.Spec : Prop :=
  ∀ n, P10984022774947730240.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P11839015557237326861

`A037167(n+1)-Δ[A007504(n)]`
-/

namespace A037165.P11839015557237326861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - (f1 (n + 1) - f1 n)

end

end A037165.P11839015557237326861

namespace A037165

/-- `A037167(n+1)-Δ[A007504(n)]` -/
def P11839015557237326861.Spec : Prop :=
  ∀ n, P11839015557237326861.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P12048044860118254809

`A006094(n+1)-Δ[A061802(n)]`
-/

namespace A037165.P12048044860118254809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - (f1 (n + 1) - f1 n)

end

end A037165.P12048044860118254809

namespace A037165

/-- `A006094(n+1)-Δ[A061802(n)]` -/
def P12048044860118254809.Spec : Prop :=
  ∀ n, P12048044860118254809.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P139500694241102315

`A037167(n+1)-A000040(n+1)`
-/

namespace A037165.P139500694241102315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - A000040 (n + 1)

end

end A037165.P139500694241102315

namespace A037165

/-- `A037167(n+1)-A000040(n+1)` -/
def P139500694241102315.Spec : Prop :=
  ∀ n, P139500694241102315.a n = A037165 (n + 1)

theorem P139500694241102315.correct : P139500694241102315.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P139500694241102315.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037167, A037167.P4374457487449018136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P14386136476686773654

`A037166(n+1)-A065091(n+1)`
-/

namespace A037165.P14386136476686773654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - A065091 (n + 1)

end

end A037165.P14386136476686773654

namespace A037165

/-- `A037166(n+1)-A065091(n+1)` -/
def P14386136476686773654.Spec : Prop :=
  ∀ n, P14386136476686773654.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P4067696996459882634

`A069486(n+1)-A126199(n+1)`
-/

namespace A037165.P4067696996459882634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A126199 (n + 1)

end

end A037165.P4067696996459882634

namespace A037165

/-- `A069486(n+1)-A126199(n+1)` -/
def P4067696996459882634.Spec : Prop :=
  ∀ n, P4067696996459882634.a n = A037165 (n + 1)

theorem P4067696996459882634.correct : P4067696996459882634.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P4067696996459882634.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069486, A069486.P4196932283638993766.a, A126199, A126199.P9184133218425217126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P12849950090345289117

`A111071(n+1)-A096379(n+1)`
-/

namespace A037165.P12849950090345289117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) - A096379 (n + 1)

end

end A037165.P12849950090345289117

namespace A037165

/-- `A111071(n+1)-A096379(n+1)` -/
def P12849950090345289117.Spec : Prop :=
  ∀ n, P12849950090345289117.a n = A037165 (n + 1)

theorem P12849950090345289117.correct : P12849950090345289117.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P12849950090345289117.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096379, A096379.P509834506880397996.a, A111071, A111071.P17768111592594357772.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P10775244989678448575

`A292926(n+1)-A034961(n+1)`
-/

namespace A037165.P10775244989678448575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) - A034961 (n + 1)

end

end A037165.P10775244989678448575

namespace A037165

/-- `A292926(n+1)-A034961(n+1)` -/
def P10775244989678448575.Spec : Prop :=
  ∀ n, P10775244989678448575.a n = A037165 (n + 1)

theorem P10775244989678448575.correct : P10775244989678448575.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P10775244989678448575.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A292926, A292926.P2687136301656224397.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P17803849510190745360

`A006094(n+1)-A011974(n+2)`
-/

namespace A037165.P17803849510190745360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A011974 (n + 2)

end

end A037165.P17803849510190745360

namespace A037165

/-- `A006094(n+1)-A011974(n+2)` -/
def P17803849510190745360.Spec : Prop :=
  ∀ n, P17803849510190745360.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P15602272731620719779

`sqrt(A166329(n+1))-A001043(n+1)`
-/

namespace A037165.P15602272731620719779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ) - (A001043 (n + 1) : ℝ)

end

end A037165.P15602272731620719779

namespace A037165

/-- `sqrt(A166329(n+1))-A001043(n+1)` -/
def P15602272731620719779.Spec : Prop :=
  ∀ n, P15602272731620719779.a n = (A037165 (n + 1) : ℝ)

end A037165

/-! ## A037165.P3174384469674516935

`A037167(n+1)-(A006093(n+1)+1)`
-/

namespace A037165.P3174384469674516935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - (A006093 (n + 1) + 1)

end

end A037165.P3174384469674516935

namespace A037165

/-- `A037167(n+1)-(A006093(n+1)+1)` -/
def P3174384469674516935.Spec : Prop :=
  ∀ n, P3174384469674516935.a n = A037165 (n + 1)

theorem P3174384469674516935.correct : P3174384469674516935.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P3174384469674516935.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A037167, A037167.P4374457487449018136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P15368271111932992230

`A006094(n+1)+1-A092949(n+1)`
-/

namespace A037165.P15368271111932992230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (1 - A092949 (n + 1))

end

end A037165.P15368271111932992230

namespace A037165

/-- `A006094(n+1)+1-A092949(n+1)` -/
def P15368271111932992230.Spec : Prop :=
  ∀ n, P15368271111932992230.a n = A037165 (n + 1)

theorem P15368271111932992230.correct : P15368271111932992230.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P15368271111932992230.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A092949, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P13912852771916295380

`A005097(n+1)*A037168(n+1)-1`
-/

namespace A037165.P13912852771916295380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A037168 (n + 1) - 1

end

end A037165.P13912852771916295380

namespace A037165

/-- `A005097(n+1)*A037168(n+1)-1` -/
def P13912852771916295380.Spec : Prop :=
  ∀ n, P13912852771916295380.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P9579023780965365789

`A058263(n+1)*A083554(n+1)-1`
-/

namespace A037165.P9579023780965365789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) * A083554 (n + 1) - 1

end

end A037165.P9579023780965365789

namespace A037165

/-- `A058263(n+1)*A083554(n+1)-1` -/
def P9579023780965365789.Spec : Prop :=
  ∀ n, P9579023780965365789.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P17635339591239171013

`A037167(n+1)-A100484(n+1)/2`
-/

namespace A037165.P17635339591239171013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037167 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A037165.P17635339591239171013

namespace A037165

/-- `A037167(n+1)-A100484(n+1)/2` -/
def P17635339591239171013.Spec : Prop :=
  ∀ n, P17635339591239171013.a n = (A037165 (n + 1) : ℚ)

theorem P17635339591239171013.correct : P17635339591239171013.Spec := by
  intro n
  simp only [A037165, Nat.add_sub_cancel, A037165.P17635339591239171013.a, A037165.P6513622621090832271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037167, A037167.P4374457487449018136.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037165

/-! ## A037165.P16198420162721588770

`A058263(n+1)²*A083555(n+1)-1`
-/

namespace A037165.P16198420162721588770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1) ^ 2 * A083555 (n + 1) - 1

end

end A037165.P16198420162721588770

namespace A037165

/-- `A058263(n+1)²*A083555(n+1)-1` -/
def P16198420162721588770.Spec : Prop :=
  ∀ n, P16198420162721588770.a n = A037165 (n + 1)

end A037165

/-! ## A037165.P9941106190910838876

`A083554(n+1)²/A083555(n+1)-1`
-/

namespace A037165.P9941106190910838876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) ^ 2 : ℚ) / (A083555 (n + 1) : ℚ) - 1

end

end A037165.P9941106190910838876

namespace A037165

/-- `A083554(n+1)²/A083555(n+1)-1` -/
def P9941106190910838876.Spec : Prop :=
  ∀ n, P9941106190910838876.a n = (A037165 (n + 1) : ℚ)

end A037165

/-!
# A037166: a(n) = prime(n)*prime(n+1) - prime(n).

The programs for A037166, the canonical program `A037166.P14619227700024520226` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037166 has offset 1).

The definition of A037166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)-A000040(n+1)` (program `A037166.P14619227700024520226`, by `A037166.P14619227700024520226.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037166.P14619227700024520226

`A000040(n+1)*A000040(n+2)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037166

/-- `A000040(n+1)*A000040(n+2)-A000040(n+1)` -/
def P14619227700024520226.Spec : Prop :=
  ∀ n, P14619227700024520226.a n = A037166 (n + 1)

theorem P14619227700024520226.correct : P14619227700024520226.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel]

end A037166

/-! ## A037166.P1711317038747412675

`2*A014303(n+1)`
-/

namespace A037166.P1711317038747412675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014303 (n + 1)

end

end A037166.P1711317038747412675

namespace A037166

/-- `2*A014303(n+1)` -/
def P1711317038747412675.Spec : Prop :=
  ∀ n, P1711317038747412675.a n = A037166 (n + 1)

end A037166

/-! ## A037166.P10487473834375221653

`A006094(n+1)-Δ[A007504(n)]`
-/

namespace A037166.P10487473834375221653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - (f1 (n + 1) - f1 n)

end

end A037166.P10487473834375221653

namespace A037166

/-- `A006094(n+1)-Δ[A007504(n)]` -/
def P10487473834375221653.Spec : Prop :=
  ∀ n, P10487473834375221653.a n = A037166 (n + 1)

end A037166

/-! ## A037166.P12521151501579814613

`A037167(n+1)+A001223(n+1)`
-/

namespace A037166.P12521151501579814613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) + A001223 (n + 1)

end

end A037166.P12521151501579814613

namespace A037166

/-- `A037167(n+1)+A001223(n+1)` -/
def P12521151501579814613.Spec : Prop :=
  ∀ n, P12521151501579814613.a n = A037166 (n + 1)

theorem P12521151501579814613.correct : P12521151501579814613.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P12521151501579814613.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A037167, A037167.P4374457487449018136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P15853997807439029857

`A065091(n+1)+A037165(n+1)`
-/

namespace A037166.P15853997807439029857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A037165 (n + 1)

end

end A037166.P15853997807439029857

namespace A037166

/-- `A065091(n+1)+A037165(n+1)` -/
def P15853997807439029857.Spec : Prop :=
  ∀ n, P15853997807439029857.a n = A037166 (n + 1)

theorem P15853997807439029857.correct : P15853997807439029857.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P15853997807439029857.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037165, A037165.P6513622621090832271.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P16008292844733135209

`A111071(n+1)+A031131(n+1)`
-/

namespace A037166.P16008292844733135209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + A031131 (n + 1)

end

end A037166.P16008292844733135209

namespace A037166

/-- `A111071(n+1)+A031131(n+1)` -/
def P16008292844733135209.Spec : Prop :=
  ∀ n, P16008292844733135209.a n = A037166 (n + 1)

theorem P16008292844733135209.correct : P16008292844733135209.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P16008292844733135209.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A111071, A111071.P17768111592594357772.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P9532035017989849304

`A291463(n+1)+A036689(n+1)`
-/

namespace A037166.P9532035017989849304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A036689 (n + 1)

end

end A037166.P9532035017989849304

namespace A037166

/-- `A291463(n+1)+A036689(n+1)` -/
def P9532035017989849304.Spec : Prop :=
  ∀ n, P9532035017989849304.a n = A037166 (n + 1)

end A037166

/-! ## A037166.P12337752897375453718

`A006094(n+1)-A000040(n+1)`
-/

namespace A037166.P12337752897375453718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A000040 (n + 1)

end

end A037166.P12337752897375453718

namespace A037166

/-- `A006094(n+1)-A000040(n+1)` -/
def P12337752897375453718.Spec : Prop :=
  ∀ n, P12337752897375453718.a n = A037166 (n + 1)

end A037166

/-! ## A037166.P9200855600328390843

`A069486(n+1)-A123134(n+1)`
-/

namespace A037166.P9200855600328390843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A123134 (n + 1)

end

end A037166.P9200855600328390843

namespace A037166

/-- `A069486(n+1)-A123134(n+1)` -/
def P9200855600328390843.Spec : Prop :=
  ∀ n, P9200855600328390843.a n = A037166 (n + 1)

theorem P9200855600328390843.correct : P9200855600328390843.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P9200855600328390843.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069486, A069486.P4196932283638993766.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P6472145408638832304

`A123134(n+1)-A100484(n+1)`
-/

namespace A037166.P6472145408638832304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A100484 (n + 1)

end

end A037166.P6472145408638832304

namespace A037166

/-- `A123134(n+1)-A100484(n+1)` -/
def P6472145408638832304.Spec : Prop :=
  ∀ n, P6472145408638832304.a n = A037166 (n + 1)

theorem P6472145408638832304.correct : P6472145408638832304.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P6472145408638832304.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P13153709008698917876

`A345727(n+1)-A001043(n+1)`
-/

namespace A037166.P13153709008698917876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) - A001043 (n + 1)

end

end A037166.P13153709008698917876

namespace A037166

/-- `A345727(n+1)-A001043(n+1)` -/
def P13153709008698917876.Spec : Prop :=
  ∀ n, P13153709008698917876.a n = A037166 (n + 1)

theorem P13153709008698917876.correct : P13153709008698917876.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P13153709008698917876.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A345727, A345727.P3884411863800253257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P1424271432265983791

`A286624(n+1)-A072055(n+1)`
-/

namespace A037166.P1424271432265983791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - A072055 (n + 1)

end

end A037166.P1424271432265983791

namespace A037166

/-- `A286624(n+1)-A072055(n+1)` -/
def P1424271432265983791.Spec : Prop :=
  ∀ n, P1424271432265983791.a n = A037166 (n + 1)

theorem P1424271432265983791.correct : P1424271432265983791.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P1424271432265983791.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, A286624, A286624.P12249411066844732850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P2540106241644054854

`A005097(n+1)*A100484(n+1)`
-/

namespace A037166.P2540106241644054854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A100484 (n + 1)

end

end A037166.P2540106241644054854

namespace A037166

/-- `A005097(n+1)*A100484(n+1)` -/
def P2540106241644054854.Spec : Prop :=
  ∀ n, P2540106241644054854.a n = A037166 (n + 1)

end A037166

/-! ## A037166.P3299356576785465042

`A357679(n+2)-A293206(n+1)`
-/

namespace A037166.P3299356576785465042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 2) - A293206 (n + 1)

end

end A037166.P3299356576785465042

namespace A037166

/-- `A357679(n+2)-A293206(n+1)` -/
def P3299356576785465042.Spec : Prop :=
  ∀ n, P3299356576785465042.a n = A037166 (n + 1)

theorem P3299356576785465042.correct : P3299356576785465042.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P3299356576785465042.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A293206, A293206.P17581408903572913072.a, A357679, A357679.P10693997046708946195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P6355656547386099411

`lcm(A100484(n+1), A165972(n+1))`
-/

namespace A037166.P6355656547386099411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100484 (n + 1)) (A165972 (n + 1))

end

end A037166.P6355656547386099411

namespace A037166

/-- `lcm(A100484(n+1), A165972(n+1))` -/
def P6355656547386099411.Spec : Prop :=
  ∀ n, (P6355656547386099411.a n : ℤ) = A037166 (n + 1)

end A037166

/-! ## A037166.P17351331308847771822

`A006094(n+1)-sqrt(A001248(n+1))`
-/

namespace A037166.P17351331308847771822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A037166.P17351331308847771822

namespace A037166

/-- `A006094(n+1)-sqrt(A001248(n+1))` -/
def P17351331308847771822.Spec : Prop :=
  ∀ n, P17351331308847771822.a n = (A037166 (n + 1) : ℝ)

end A037166

/-! ## A037166.P10071858036684917168

`sqrt(A166329(n+1))-A000040(n+1)`
-/

namespace A037166.P10071858036684917168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ) - (A000040 (n + 1) : ℝ)

end

end A037166.P10071858036684917168

namespace A037166

/-- `sqrt(A166329(n+1))-A000040(n+1)` -/
def P10071858036684917168.Spec : Prop :=
  ∀ n, P10071858036684917168.a n = (A037166 (n + 1) : ℝ)

end A037166

/-! ## A037166.P1415490568093169934

`A006094(n+1)+1-A008864(n+1)`
-/

namespace A037166.P1415490568093169934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (1 - A008864 (n + 1))

end

end A037166.P1415490568093169934

namespace A037166

/-- `A006094(n+1)+1-A008864(n+1)` -/
def P1415490568093169934.Spec : Prop :=
  ∀ n, P1415490568093169934.a n = A037166 (n + 1)

theorem P1415490568093169934.correct : P1415490568093169934.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P1415490568093169934.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P9300646131394463445

`(A154115(n+1)+2)*A000040(n+1)`
-/

namespace A037166.P9300646131394463445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154115 (n + 1) + 2) * A000040 (n + 1)

end

end A037166.P9300646131394463445

namespace A037166

/-- `(A154115(n+1)+2)*A000040(n+1)` -/
def P9300646131394463445.Spec : Prop :=
  ∀ n, P9300646131394463445.a n = A037166 (n + 1)

theorem P9300646131394463445.correct : P9300646131394463445.Spec := by
  intro n
  simp only [A037166, Nat.add_sub_cancel, A037166.P9300646131394463445.a, A037166.P14619227700024520226.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037166

/-! ## A037166.P6544516259289822045

`2*A000040(n+1)*A005097(n+1)`
-/

namespace A037166.P6544516259289822045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) * A005097 (n + 1))

end

end A037166.P6544516259289822045

namespace A037166

/-- `2*A000040(n+1)*A005097(n+1)` -/
def P6544516259289822045.Spec : Prop :=
  ∀ n, P6544516259289822045.a n = A037166 (n + 1)

end A037166

/-!
# A037167: a(n) = prime(n)*prime(n+1) - prime(n+1).

The programs for A037167, the canonical program `A037167.P4374457487449018136` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037167 has offset 1).

The definition of A037167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)-A000040(n+2)` (program `A037167.P4374457487449018136`, by `A037167.P4374457487449018136.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037167.P12207412600685706978

`A000040(n+2)*(A000040(n+1)-1)`
-/

namespace A037167.P12207412600685706978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * (A000040 (n + 1) - 1)

end

end A037167.P12207412600685706978

namespace A037167

/-- `A000040(n+2)*(A000040(n+1)-1)` -/
def P12207412600685706978.Spec : Prop :=
  ∀ n, P12207412600685706978.a n = A037167 (n + 1)

theorem P12207412600685706978.correct : P12207412600685706978.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P12207412600685706978.a, A037167.P4374457487449018136.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A037167

/-! ## A037167.P4374457487449018136

`A000040(n+1)*A000040(n+2)-A000040(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037167

/-- `A000040(n+1)*A000040(n+2)-A000040(n+2)` -/
def P4374457487449018136.Spec : Prop :=
  ∀ n, P4374457487449018136.a n = A037167 (n + 1)

theorem P4374457487449018136.correct : P4374457487449018136.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel]

end A037167

/-! ## A037167.P899646944418536499

`floor((1-sqrt(A123134(n+1)))²)`
-/

namespace A037167.P899646944418536499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - Real.sqrt (A123134 (n + 1) : ℝ)) ^ 2⌋

end

end A037167.P899646944418536499

namespace A037167

/-- `floor((1-sqrt(A123134(n+1)))²)` -/
def P899646944418536499.Spec : Prop :=
  ∀ n, P899646944418536499.a n = A037167 (n + 1)

end A037167

/-! ## A037167.P6368008876254188523

`A037165(n+1)+Δ[A007504(n)]`
-/

namespace A037167.P6368008876254188523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037167.P6368008876254188523

namespace A037167

/-- `A037165(n+1)+Δ[A007504(n)]` -/
def P6368008876254188523.Spec : Prop :=
  ∀ n, P6368008876254188523.a n = A037167 (n + 1)

end A037167

/-! ## A037167.P11043553757995377342

`A037165(n+1)+A000040(n+1)`
-/

namespace A037167.P11043553757995377342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A000040 (n + 1)

end

end A037167.P11043553757995377342

namespace A037167

/-- `A037165(n+1)+A000040(n+1)` -/
def P11043553757995377342.Spec : Prop :=
  ∀ n, P11043553757995377342.a n = A037167 (n + 1)

theorem P11043553757995377342.correct : P11043553757995377342.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P11043553757995377342.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037165, A037165.P6513622621090832271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P14138666941191654202

`A083553(n+1)+A006093(n+1)`
-/

namespace A037167.P14138666941191654202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083553 (n + 1) + A006093 (n + 1)

end

end A037167.P14138666941191654202

namespace A037167

/-- `A083553(n+1)+A006093(n+1)` -/
def P14138666941191654202.Spec : Prop :=
  ∀ n, P14138666941191654202.a n = A037167 (n + 1)

theorem P14138666941191654202.correct : P14138666941191654202.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P14138666941191654202.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A083553, A083553.P14618886648007354780.a, A037165, A037165.P6513622621090832271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P9626801552019327899

`A291463(n+1)+A062235(n+1)`
-/

namespace A037167.P9626801552019327899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A062235 (n + 1)

end

end A037167.P9626801552019327899

namespace A037167

/-- `A291463(n+1)+A062235(n+1)` -/
def P9626801552019327899.Spec : Prop :=
  ∀ n, P9626801552019327899.a n = A037167 (n + 1)

theorem P9626801552019327899.correct : P9626801552019327899.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P9626801552019327899.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062235, A062235.P13673509665247740832.a, A291463, A291463.P14308935140851577628.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P17827074166767994039

`A037166(n+1)-A001223(n+1)`
-/

namespace A037167.P17827074166767994039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - A001223 (n + 1)

end

end A037167.P17827074166767994039

namespace A037167

/-- `A037166(n+1)-A001223(n+1)` -/
def P17827074166767994039.Spec : Prop :=
  ∀ n, P17827074166767994039.a n = A037167 (n + 1)

theorem P17827074166767994039.correct : P17827074166767994039.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P17827074166767994039.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A037166, A037166.P14619227700024520226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P4719406931946246110

`A006094(n+1)-A065091(n+1)`
-/

namespace A037167.P4719406931946246110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A065091 (n + 1)

end

end A037167.P4719406931946246110

namespace A037167

/-- `A006094(n+1)-A065091(n+1)` -/
def P4719406931946246110.Spec : Prop :=
  ∀ n, P4719406931946246110.a n = A037167 (n + 1)

end A037167

/-! ## A037167.P18369240265802589919

`A111071(n+1)+A001223(n+2)`
-/

namespace A037167.P18369240265802589919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + A001223 (n + 2)

end

end A037167.P18369240265802589919

namespace A037167

/-- `A111071(n+1)+A001223(n+2)` -/
def P18369240265802589919.Spec : Prop :=
  ∀ n, P18369240265802589919.a n = A037167 (n + 1)

theorem P18369240265802589919.correct : P18369240265802589919.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P18369240265802589919.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A111071, A111071.P17768111592594357772.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P3683377112274317544

`A123134(n+1)-A001043(n+1)`
-/

namespace A037167.P3683377112274317544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A001043 (n + 1)

end

end A037167.P3683377112274317544

namespace A037167

/-- `A123134(n+1)-A001043(n+1)` -/
def P3683377112274317544.Spec : Prop :=
  ∀ n, P3683377112274317544.a n = A037167 (n + 1)

theorem P3683377112274317544.correct : P3683377112274317544.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P3683377112274317544.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P9784184615023967447

`A152530(n+1)-A205955(n+1)`
-/

namespace A037167.P9784184615023967447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - A205955 (n + 1)

end

end A037167.P9784184615023967447

namespace A037167

/-- `A152530(n+1)-A205955(n+1)` -/
def P9784184615023967447.Spec : Prop :=
  ∀ n, P9784184615023967447.a n = A037167 (n + 1)

theorem P9784184615023967447.correct : P9784184615023967447.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P9784184615023967447.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A152530, A152530.P5114075304399341964.a, A205955, A205955.P3288332573374675140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P11810636530516947947

`A286624(n+1)-A092949(n+1)`
-/

namespace A037167.P11810636530516947947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - A092949 (n + 1)

end

end A037167.P11810636530516947947

namespace A037167

/-- `A286624(n+1)-A092949(n+1)` -/
def P11810636530516947947.Spec : Prop :=
  ∀ n, P11810636530516947947.a n = A037167 (n + 1)

theorem P11810636530516947947.correct : P11810636530516947947.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P11810636530516947947.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092949, A092949.P1382492647621219255.a, A286624, A286624.P12249411066844732850.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P13434537673563705914

`A069486(n+1)-A345727(n+1)`
-/

namespace A037167.P13434537673563705914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A345727 (n + 1)

end

end A037167.P13434537673563705914

namespace A037167

/-- `A069486(n+1)-A345727(n+1)` -/
def P13434537673563705914.Spec : Prop :=
  ∀ n, P13434537673563705914.a n = A037167 (n + 1)

theorem P13434537673563705914.correct : P13434537673563705914.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P13434537673563705914.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069486, A069486.P4196932283638993766.a, A345727, A345727.P3884411863800253257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P11845505018628423534

`A126199(n+1)-A364411(n+1)`
-/

namespace A037167.P11845505018628423534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A364411 (n + 1)

end

end A037167.P11845505018628423534

namespace A037167

/-- `A126199(n+1)-A364411(n+1)` -/
def P11845505018628423534.Spec : Prop :=
  ∀ n, P11845505018628423534.a n = A037167 (n + 1)

theorem P11845505018628423534.correct : P11845505018628423534.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P11845505018628423534.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A126199, A126199.P9184133218425217126.a, A364411, A364411.P15302735804831571920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P5654102981547897054

`A006093(n+1)*A065091(n+1)`
-/

namespace A037167.P5654102981547897054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A065091 (n + 1)

end

end A037167.P5654102981547897054

namespace A037167

/-- `A006093(n+1)*A065091(n+1)` -/
def P5654102981547897054.Spec : Prop :=
  ∀ n, P5654102981547897054.a n = A037167 (n + 1)

theorem P5654102981547897054.correct : P5654102981547897054.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P5654102981547897054.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P6209988319269380122

`lcm(A039915(n+1), A140475(n+1))`
-/

namespace A037167.P6209988319269380122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039915 (n + 1)) (A140475 (n + 1))

end

end A037167.P6209988319269380122

namespace A037167

/-- `lcm(A039915(n+1), A140475(n+1))` -/
def P6209988319269380122.Spec : Prop :=
  ∀ n, (P6209988319269380122.a n : ℤ) = A037167 (n + 1)

end A037167

/-! ## A037167.P16477494053229988933

`A000040(n+1)+A083553(n+1)-1`
-/

namespace A037167.P16477494053229988933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A083553 (n + 1) - 1)

end

end A037167.P16477494053229988933

namespace A037167

/-- `A000040(n+1)+A083553(n+1)-1` -/
def P16477494053229988933.Spec : Prop :=
  ∀ n, P16477494053229988933.a n = A037167 (n + 1)

theorem P16477494053229988933.correct : P16477494053229988933.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P16477494053229988933.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A083553, A083553.P14618886648007354780.a, A037165, A037165.P6513622621090832271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P9042396047288413655

`A123134(n+1)+1-A092949(n+1)`
-/

namespace A037167.P9042396047288413655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + (1 - A092949 (n + 1))

end

end A037167.P9042396047288413655

namespace A037167

/-- `A123134(n+1)+1-A092949(n+1)` -/
def P9042396047288413655.Spec : Prop :=
  ∀ n, P9042396047288413655.a n = A037167 (n + 1)

theorem P9042396047288413655.correct : P9042396047288413655.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P9042396047288413655.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092949, A092949.P1382492647621219255.a, A123134, A123134.P1141730384481929553.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-! ## A037167.P7702948810090725683

`(A040976(n+1)+1)*A065091(n+1)`
-/

namespace A037167.P7702948810090725683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 1) * A065091 (n + 1)

end

end A037167.P7702948810090725683

namespace A037167

/-- `(A040976(n+1)+1)*A065091(n+1)` -/
def P7702948810090725683.Spec : Prop :=
  ∀ n, P7702948810090725683.a n = A037167 (n + 1)

theorem P7702948810090725683.correct : P7702948810090725683.Spec := by
  intro n
  simp only [A037167, Nat.add_sub_cancel, A037167.P7702948810090725683.a, A037167.P4374457487449018136.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037167

/-!
# A037168: a(n) = 2*prime(n) - 2.

The programs for A037168, the canonical program `A037168.P225285487484933431` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037168 has offset 1).

The definition of A037168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+1)-2` (program `A037168.P225285487484933431`, by `A037168.P225285487484933431.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037168.P1217111255812181998

`2*A006093(n+1)`
-/

namespace A037168.P1217111255812181998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1)

end

end A037168.P1217111255812181998

namespace A037168

/-- `2*A006093(n+1)` -/
def P1217111255812181998.Spec : Prop :=
  ∀ n, P1217111255812181998.a n = A037168 (n + 1)

theorem P1217111255812181998.correct : P1217111255812181998.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P1217111255812181998.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P225285487484933431

`2*A000040(n+1)-2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037168

/-- `2*A000040(n+1)-2` -/
def P225285487484933431.Spec : Prop :=
  ∀ n, P225285487484933431.a n = A037168 (n + 1)

theorem P225285487484933431.correct : P225285487484933431.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel]

end A037168

/-! ## A037168.P8283518447804811334

`2*A000010(A000040(n+1))`
-/

namespace A037168.P8283518447804811334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (A000040 (n + 1)).toNat

end

end A037168.P8283518447804811334

namespace A037168

/-- `2*A000010(A000040(n+1))` -/
def P8283518447804811334.Spec : Prop :=
  ∀ n, P8283518447804811334.a n = A037168 (n + 1)

end A037168

/-! ## A037168.P12004111881170843612

`∑[2*A075526(n)]`
-/

namespace A037168.P12004111881170843612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037168.P12004111881170843612

namespace A037168

/-- `∑[2*A075526(n)]` -/
def P12004111881170843612.Spec : Prop :=
  ∀ n, P12004111881170843612.a n = A037168 (n + 1)

end A037168

/-! ## A037168.P14269426293245646734

`A131426(n+1)+1`
-/

namespace A037168.P14269426293245646734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + 1

end

end A037168.P14269426293245646734

namespace A037168

/-- `A131426(n+1)+1` -/
def P14269426293245646734.Spec : Prop :=
  ∀ n, P14269426293245646734.a n = A037168 (n + 1)

theorem P14269426293245646734.correct : P14269426293245646734.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P14269426293245646734.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P17856006811668172512

`A140777(n+1)+2`
-/

namespace A037168.P17856006811668172512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + 2

end

end A037168.P17856006811668172512

namespace A037168

/-- `A140777(n+1)+2` -/
def P17856006811668172512.Spec : Prop :=
  ∀ n, P17856006811668172512.a n = A037168 (n + 1)

theorem P17856006811668172512.correct : P17856006811668172512.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P17856006811668172512.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140777, A140777.P12433789027448162273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P13576184599886110943

`A100484(n+1)-2`
-/

namespace A037168.P13576184599886110943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 2

end

end A037168.P13576184599886110943

namespace A037168

/-- `A100484(n+1)-2` -/
def P13576184599886110943.Spec : Prop :=
  ∀ n, P13576184599886110943.a n = A037168 (n + 1)

end A037168

/-! ## A037168.P2464269960626688643

`A072055(n+1)-3`
-/

namespace A037168.P2464269960626688643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 3

end

end A037168.P2464269960626688643

namespace A037168

/-- `A072055(n+1)-3` -/
def P2464269960626688643.Spec : Prop :=
  ∀ n, P2464269960626688643.a n = A037168 (n + 1)

theorem P2464269960626688643.correct : P2464269960626688643.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P2464269960626688643.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P9373979714771967960

`A089241(n+1)-4`
-/

namespace A037168.P9373979714771967960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 4

end

end A037168.P9373979714771967960

namespace A037168

/-- `A089241(n+1)-4` -/
def P9373979714771967960.Spec : Prop :=
  ∀ n, P9373979714771967960.a n = A037168 (n + 1)

theorem P9373979714771967960.correct : P9373979714771967960.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P9373979714771967960.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P17733861747770888625

`A129069(n+1)-5`
-/

namespace A037168.P17733861747770888625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - 5

end

end A037168.P17733861747770888625

namespace A037168

/-- `A129069(n+1)-5` -/
def P17733861747770888625.Spec : Prop :=
  ∀ n, P17733861747770888625.a n = A037168 (n + 1)

theorem P17733861747770888625.correct : P17733861747770888625.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P17733861747770888625.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129069, A129069.P1730810587281407252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P5410234733709916966

`∑[2*Δ[A028815(n)]]`
-/

namespace A037168.P5410234733709916966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037168.P5410234733709916966

namespace A037168

/-- `∑[2*Δ[A028815(n)]]` -/
def P5410234733709916966.Spec : Prop :=
  ∀ n, P5410234733709916966.a n = A037168 (n + 1)

end A037168

/-! ## A037168.P16705273790358847464

`sqrt(A069262(n+1))-2`
-/

namespace A037168.P16705273790358847464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) - 2

end

end A037168.P16705273790358847464

namespace A037168

/-- `sqrt(A069262(n+1))-2` -/
def P16705273790358847464.Spec : Prop :=
  ∀ n, P16705273790358847464.a n = (A037168 (n + 1) : ℝ)

end A037168

/-! ## A037168.P5923086967262231995

`2*sqrt(A005722(n+1))`
-/

namespace A037168.P5923086967262231995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A005722 (n + 1) : ℝ)

end

end A037168.P5923086967262231995

namespace A037168

/-- `2*sqrt(A005722(n+1))` -/
def P5923086967262231995.Spec : Prop :=
  ∀ n, P5923086967262231995.a n = (A037168 (n + 1) : ℝ)

end A037168

/-! ## A037168.P3190169507212887254

`2*(A040976(n+1)+1)`
-/

namespace A037168.P3190169507212887254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040976 (n + 1) + 1)

end

end A037168.P3190169507212887254

namespace A037168

/-- `2*(A040976(n+1)+1)` -/
def P3190169507212887254.Spec : Prop :=
  ∀ n, P3190169507212887254.a n = A037168 (n + 1)

theorem P3190169507212887254.correct : P3190169507212887254.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P3190169507212887254.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P5686403391170934288

`2*(A086801(n+1)+2)`
-/

namespace A037168.P5686403391170934288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086801 (n + 1) + 2)

end

end A037168.P5686403391170934288

namespace A037168

/-- `2*(A086801(n+1)+2)` -/
def P5686403391170934288.Spec : Prop :=
  ∀ n, P5686403391170934288.a n = A037168 (n + 1)

theorem P5686403391170934288.correct : P5686403391170934288.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P5686403391170934288.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P9674675332376221383

`2*(A008864(n+1)-2)`
-/

namespace A037168.P9674675332376221383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008864 (n + 1) - 2)

end

end A037168.P9674675332376221383

namespace A037168

/-- `2*(A008864(n+1)-2)` -/
def P9674675332376221383.Spec : Prop :=
  ∀ n, P9674675332376221383.a n = A037168 (n + 1)

theorem P9674675332376221383.correct : P9674675332376221383.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P9674675332376221383.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P12000365646553760961

`A001749(n+1)/2-2`
-/

namespace A037168.P12000365646553760961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 - 2

end

end A037168.P12000365646553760961

namespace A037168

/-- `A001749(n+1)/2-2` -/
def P12000365646553760961.Spec : Prop :=
  ∀ n, P12000365646553760961.a n = (A037168 (n + 1) : ℚ)

theorem P12000365646553760961.correct : P12000365646553760961.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P12000365646553760961.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P17208036172682303459

`2*(A052147(n+1)-3)`
-/

namespace A037168.P17208036172682303459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052147 (n + 1) - 3)

end

end A037168.P17208036172682303459

namespace A037168

/-- `2*(A052147(n+1)-3)` -/
def P17208036172682303459.Spec : Prop :=
  ∀ n, P17208036172682303459.a n = A037168 (n + 1)

theorem P17208036172682303459.correct : P17208036172682303459.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P17208036172682303459.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P13755559818364528272

`A138636(n+1)/3-2`
-/

namespace A037168.P13755559818364528272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 3 - 2

end

end A037168.P13755559818364528272

namespace A037168

/-- `A138636(n+1)/3-2` -/
def P13755559818364528272.Spec : Prop :=
  ∀ n, P13755559818364528272.a n = (A037168 (n + 1) : ℚ)

theorem P13755559818364528272.correct : P13755559818364528272.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P13755559818364528272.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138636, A138636.P18275506092715506513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-! ## A037168.P3264878779297059930

`A134591(n+1)+n-1`
-/

namespace A037168.P3264878779297059930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + ((n : ℤ) - 1)

end

end A037168.P3264878779297059930

namespace A037168

/-- `A134591(n+1)+n-1` -/
def P3264878779297059930.Spec : Prop :=
  ∀ n, P3264878779297059930.a n = A037168 (n + 1)

theorem P3264878779297059930.correct : P3264878779297059930.Spec := by
  intro n
  simp only [A037168, Nat.add_sub_cancel, A037168.P3264878779297059930.a, A037168.P225285487484933431.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A134591, A134591.P13784663667261059065.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037168

/-!
# A037169: a(n) = prime(n) * Product_{k=0..n-2} prime(n-k) mod prime(n-k-1).

The programs for A037169, the canonical program `A037169.P12121537751605403474` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037169 has offset 1).

The definition of A037169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037169.P16606148162839188952

`Δ[A007504(n)]*∏[A075526(n)]`
-/

namespace A037169.P16606148162839188952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A037169.P16606148162839188952

namespace A037169

/-- `Δ[A007504(n)]*∏[A075526(n)]` -/
def P16606148162839188952.Spec : Prop :=
  ∀ n, P16606148162839188952.a n = A037169 (n + 1)

end A037169

/-! ## A037169.P10172685095419923611

`∏[A075526(n)]*p?[A001057(n)]`
-/

namespace A037169.P10172685095419923611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A037169.P10172685095419923611

namespace A037169

/-- `∏[A075526(n)]*p?[A001057(n)]` -/
def P10172685095419923611.Spec : Prop :=
  ∀ n, P10172685095419923611.a n = A037169 (n + 1)

end A037169

/-! ## A037169.P10339393796648824751

`A000040(n+1)*∏[A075526(n)]`
-/

namespace A037169.P10339393796648824751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A037169.P10339393796648824751

namespace A037169

/-- `A000040(n+1)*∏[A075526(n)]` -/
def P10339393796648824751.Spec : Prop :=
  ∀ n, P10339393796648824751.a n = A037169 (n + 1)

theorem P10339393796648824751.correct : P10339393796648824751.Spec := by
  intro n
  simp only [A037169, Nat.add_sub_cancel, A037169.P10339393796648824751.f1, A037169.P10339393796648824751.a, A037169.P12121537751605403474.f2, A037169.P12121537751605403474.f1, A037169.P12121537751605403474.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, A075526, A075526.P13453056913313804413.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037169

/-! ## A037169.P11087857793928080122

`∏[A075526(n)]*A008578(n+2)`
-/

namespace A037169.P11087857793928080122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A008578 (n + 2)

end

end A037169.P11087857793928080122

namespace A037169

/-- `∏[A075526(n)]*A008578(n+2)` -/
def P11087857793928080122.Spec : Prop :=
  ∀ n, P11087857793928080122.a n = A037169 (n + 1)

end A037169

/-! ## A037169.P4873398453338223190

`∏[A075526(n)]*record[A006530(n+2)]`
-/

namespace A037169.P4873398453338223190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A037169.P4873398453338223190

namespace A037169

/-- `∏[A075526(n)]*record[A006530(n+2)]` -/
def P4873398453338223190.Spec : Prop :=
  ∀ n, P4873398453338223190.a n = A037169 (n + 1)

end A037169

/-! ## A037169.P15615910916678641304

`∏[A075526(n)]*record[A014963(n+2)]`
-/

namespace A037169.P15615910916678641304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A037169.P15615910916678641304

namespace A037169

/-- `∏[A075526(n)]*record[A014963(n+2)]` -/
def P15615910916678641304.Spec : Prop :=
  ∀ n, P15615910916678641304.a n = A037169 (n + 1)

end A037169

/-! ## A037169.P4721427703316002052

`∏[A075526(n)]*record[A020639(n+2)]`
-/

namespace A037169.P4721427703316002052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A037169.P4721427703316002052

namespace A037169

/-- `∏[A075526(n)]*record[A020639(n+2)]` -/
def P4721427703316002052.Spec : Prop :=
  ∀ n, P4721427703316002052.a n = A037169 (n + 1)

end A037169

/-! ## A037169.P18201362040909812175

`A000040(n+1)*A154279(2*n+3)`
-/

namespace A037169.P18201362040909812175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A154279 (2 * n + 3)

end

end A037169.P18201362040909812175

namespace A037169

/-- `A000040(n+1)*A154279(2*n+3)` -/
def P18201362040909812175.Spec : Prop :=
  ∀ n, P18201362040909812175.a n = A037169 (n + 1)

end A037169

/-! ## A037169.P12121537751605403474

`A000040(n+1)*∏[Δ[A008578(n+1)]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037169

/-- `A000040(n+1)*∏[Δ[A008578(n+1)]]` -/
def P12121537751605403474.Spec : Prop :=
  ∀ n, P12121537751605403474.a n = A037169 (n + 1)

theorem P12121537751605403474.correct : P12121537751605403474.Spec := by
  intro n
  simp only [A037169, Nat.add_sub_cancel]

end A037169

/-! ## A037169.P16263226130207866529

`A154279(2*(n+1))*A154279(2*n+3)`
-/

namespace A037169.P16263226130207866529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154279 (2 * (n + 1)) * A154279 (2 * n + 3)

end

end A037169.P16263226130207866529

namespace A037169

/-- `A154279(2*(n+1))*A154279(2*n+3)` -/
def P16263226130207866529.Spec : Prop :=
  ∀ n, P16263226130207866529.a n = A037169 (n + 1)

end A037169

/-!
# A037170: Numbers n such that n = pi(n) + phi(n), where pi = A000720, phi = A000010.

The programs for A037170, there is no canonical definition to state claims against.
-/

/-! ## A037170.P14189181508103517927

`A100411(round(sqrt(n²+1)))+char[1]`
-/

namespace A037170.P14189181508103517927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100411 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A037170.P14189181508103517927

/-! ## A037170.P10378479786024378093

`gcd(A100411(A233583(n+1)), A130706(n))`
-/

namespace A037170.P10378479786024378093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100411 (A233583 (n + 1)).toNat) (A130706 n)

end

end A037170.P10378479786024378093

/-! ## A037170.P18028307168808846918

`A014963(A005893(n))*A100411(A151933(n)+n)`
-/

namespace A037170.P18028307168808846918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005893 n).toNat * A100411 (A151933 n + (n : ℤ)).toNat

end

end A037170.P18028307168808846918

/-! ## A037170.P6067231754092185855

`A100411(A000038(a(n-1))+n)` with `a(0)=1, a(1)=2`
-/

namespace A037170.P6067231754092185855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A100411 (A000038 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A037170.P6067231754092185855

/-! ## A037170.P14862456312548923174

`eq[n+1, A082515(n+1)]+1`
-/

namespace A037170.P14862456312548923174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037170.P14862456312548923174

/-!
# A037172: Numbers n such that sigma(n) - n = {number of primes <= n}.

The programs for A037172, there is no canonical definition to state claims against.
-/

/-! ## A037172.P6701634180290183019

`A275335(A275331(∑[∑[n+2]-1]))`
-/

namespace A037172.P6701634180290183019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275335 (A275331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A037172.P6701634180290183019

/-!
# A037173: Numbers that are not the sum of consecutive composite numbers.

The programs for A037173, there is no canonical definition to state claims against.
-/

/-! ## A037173.P14596669582280003999

`lt[A358603(n), A269303(∏{p}[n+1, #+1])]`
-/

namespace A037173.P14596669582280003999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358603 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (∏ p ∈ Nat.primeFactors (f3 n), (p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037173.P14596669582280003999

/-! ## A037173.P3467647114614405637

`∑[A242923(A002260(A082169(n)))]`
-/

namespace A037173.P3467647114614405637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242923 (A002260 (A082169 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037173.P3467647114614405637

/-! ## A037173.P12375798681998853070

`∑[A241918(A141214(A179937(n+1)))]`
-/

namespace A037173.P12375798681998853070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241918 (A141214 (A179937 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037173.P12375798681998853070

/-! ## A037173.P11403467500970894938

`∑[A207974(A246369(A222353(n+1)))]`
-/

namespace A037173.P11403467500970894938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207974 (A246369 (A222353 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037173.P11403467500970894938

/-!
# A037174: Primes which are not the sum of consecutive composite numbers.

The programs for A037174, there is no canonical definition to state claims against.
-/

/-! ## A037174.P17463808192718717523

`A140464(n+2)`
-/

namespace A037174.P17463808192718717523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (n + 2)

end

end A037174.P17463808192718717523

/-! ## A037174.P8988160008982155252

`p?[A140464(A028310(n))]`
-/

namespace A037174.P8988160008982155252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037174.P8988160008982155252

/-! ## A037174.P6988437780562441339

`p?[A140464(A152271(n))]`
-/

namespace A037174.P6988437780562441339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037174.P6988437780562441339

/-! ## A037174.P9625105810227923445

`p?[A140464(A344180(n))]`
-/

namespace A037174.P9625105810227923445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037174.P9625105810227923445

/-! ## A037174.P14993873707207940950

`p?[A140464(abs(A157128(n)))]`
-/

namespace A037174.P14993873707207940950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 |A157128 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A037174.P14993873707207940950

/-!
# A037178: Longest cycle when squaring modulo n-th prime.

The programs for A037178, there is no canonical definition to state claims against.
-/

/-! ## A037178.P18030178031798064623

`A256608(A000040(n+1))`
-/

namespace A037178.P18030178031798064623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A000040 (n + 1)).toNat

end

end A037178.P18030178031798064623

/-! ## A037178.P4324880982819843510

`A007733(A057023(n+1))`
-/

namespace A037178.P4324880982819843510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A057023 (n + 1)).toNat

end

end A037178.P4324880982819843510

/-! ## A037178.P6355057635661280430

`A007733(A130290(n+1))`
-/

namespace A037178.P6355057635661280430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A130290 (n + 1)).toNat

end

end A037178.P6355057635661280430

/-! ## A037178.P15419953544609370514

`A007733(A236965(n+1))`
-/

namespace A037178.P15419953544609370514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A236965 (n + 1)).toNat

end

end A037178.P15419953544609370514

/-! ## A037178.P111854902333463804

`A007733(floor(A000040(n+1)/2))`
-/

namespace A037178.P111854902333463804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat

end

end A037178.P111854902333463804

/-! ## A037178.P2857100980846935802

`A007733(eq[1, ∑{e}[n+1, #]])`
-/

namespace A037178.P2857100980846935802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037178.P2857100980846935802

/-! ## A037178.P16663681013074417759

`A007733(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A037178.P16663681013074417759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037178.P16663681013074417759

/-! ## A037178.P1957556298256262151

`A256608(Δ[A007504(n)])`
-/

namespace A037178.P1957556298256262151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (f1 (n + 1) - f1 n).toNat

end

end A037178.P1957556298256262151

/-! ## A037178.P17499926362046783396

`A007733(A006093(n+1))`
-/

namespace A037178.P17499926362046783396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A006093 (n + 1)).toNat

end

end A037178.P17499926362046783396

/-! ## A037178.P14810014833675599543

`A007733(A156037(n+1))`
-/

namespace A037178.P14810014833675599543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A156037 (n + 1)).toNat

end

end A037178.P14810014833675599543

/-! ## A037178.P11314316629964285308

`A256608(A006005(n+1))`
-/

namespace A037178.P11314316629964285308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A006005 (n + 1)).toNat

end

end A037178.P11314316629964285308

/-! ## A037178.P9967884564116102113

`A256608(A008578(n+2))`
-/

namespace A037178.P9967884564116102113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (A008578 (n + 2)).toNat

end

end A037178.P9967884564116102113

/-! ## A037178.P9811418874699539570

`A007733(Δ[A007504(n)]-1)`
-/

namespace A037178.P9811418874699539570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (n + 1) - f1 n - 1).toNat

end

end A037178.P9811418874699539570

/-! ## A037178.P2864260204757483484

`A007733(record[A000010(n+1)])`
-/

namespace A037178.P2864260204757483484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037178.P2864260204757483484

/-! ## A037178.P6676133574990041741

`A007733(record[A051698(n)-1])`
-/

namespace A037178.P6676133574990041741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037178.P6676133574990041741

/-! ## A037178.P7723828265194235790

`A256608(record[A006530(n+2)])`
-/

namespace A037178.P7723828265194235790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037178.P7723828265194235790

/-! ## A037178.P7283882358324677833

`A256608(record[A020639(n+2)])`
-/

namespace A037178.P7283882358324677833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037178.P7283882358324677833

/-! ## A037178.P9926667190775937882

`A007733(p?[A014681(n)]-1)`
-/

namespace A037178.P9926667190775937882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A037178.P9926667190775937882

/-! ## A037178.P10905556434698693981

`A007733(p?[A256450(n)]-1)`
-/

namespace A037178.P10905556434698693981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A037178.P10905556434698693981

/-! ## A037178.P10057147313744507392

`A007733(p?[A260442(n)]-1)`
-/

namespace A037178.P10057147313744507392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A037178.P10057147313744507392

/-!
# A037179: Number of cycles when squaring modulo n-th prime.

The programs for A037179, there is no canonical definition to state claims against.
-/

/-! ## A037179.P8916173364443919646

`A023153(A000040(n+1))`
-/

namespace A037179.P8916173364443919646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (A000040 (n + 1)).toNat

end

end A037179.P8916173364443919646

/-! ## A037179.P524898188418695712

`A023153(A008578(n+2))`
-/

namespace A037179.P524898188418695712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (A008578 (n + 2)).toNat

end

end A037179.P524898188418695712

/-! ## A037179.P12182032823677109650

`A023153(A175787(n+2))`
-/

namespace A037179.P12182032823677109650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (A175787 (n + 2)).toNat

end

end A037179.P12182032823677109650

/-! ## A037179.P7243815827891560632

`A023153(A182986(n+2))`
-/

namespace A037179.P7243815827891560632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (A182986 (n + 2)).toNat

end

end A037179.P7243815827891560632

/-! ## A037179.P15163770112183859109

`A023153(record[A006530(n+2)])`
-/

namespace A037179.P15163770112183859109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037179.P15163770112183859109

/-! ## A037179.P545032877808553288

`A023153(record[A014963(n+2)])`
-/

namespace A037179.P545032877808553288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037179.P545032877808553288

/-! ## A037179.P16599780543874868268

`A023153(record[A020639(n+2)])`
-/

namespace A037179.P16599780543874868268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037179.P16599780543874868268

/-! ## A037179.P1542977916832682240

`A000374(A040976(n+1)+1)+1`
-/

namespace A037179.P1542977916832682240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A040976 (n + 1) + 1).toNat + 1

end

end A037179.P1542977916832682240

/-! ## A037179.P3325960832172947357

`A000374(A000040(n+1)-1)+1`
-/

namespace A037179.P3325960832172947357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A000040 (n + 1) - 1).toNat + 1

end

end A037179.P3325960832172947357

/-! ## A037179.P15717313684404592725

`A000374(record[A014963(n+2)]-1)+1`
-/

namespace A037179.P15717313684404592725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat + 1

end

end A037179.P15717313684404592725

/-! ## A037179.P1683673215015764774

`∑{d}[A000040(n+1), A000374(A000010(#))]`
-/

namespace A037179.P1683673215015764774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000374 (A000010 d).toNat

end

end A037179.P1683673215015764774

/-!
# A037180: Number of different cycle lengths when squaring modulo n-th prime.

The programs for A037180, there is no canonical definition to state claims against.
-/

/-! ## A037180.P15908751386091829198

`A327657(eq[2, A325248(n+1)])`
-/

namespace A037180.P15908751386091829198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037180.P15908751386091829198

/-! ## A037180.P12249191840759883960

`A327657(record[A037225(n)]%A258616(n+1))`
-/

namespace A037180.P12249191840759883960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A258616 (n + 1))).toNat

end

end A037180.P12249191840759883960

/-! ## A037180.P17939534086467051585

`A327657(A006093(n+1)%A258616(n+1))`
-/

namespace A037180.P17939534086467051585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (Int.tmod (A006093 (n + 1)) (A258616 (n + 1))).toNat

end

end A037180.P17939534086467051585

/-!
# A037182: a(n) = 10^n*(10^n-1)/2.

The programs for A037182, the canonical program `A037182.P6753773557534546412` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037182 has offset 0).

The definition of A037182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(10^n-1)/2` (program `A037182.P5299732233525847013`, by `A037182.P5299732233525847013.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A037182.P5299732233525847013

`10^n*(10^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A037182.P5299732233525847013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 2

end

end A037182.P5299732233525847013

namespace A037182

/-- `10^n*(10^n-1)/2` -/
def P5299732233525847013.Spec : Prop :=
  ∀ n, P5299732233525847013.a n = (A037182 n : ℚ)

theorem P5299732233525847013.correct : P5299732233525847013.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A037182, Nat.add_sub_cancel, A037182.P5299732233525847013.a, A037182.P6753773557534546412.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A037182, Nat.add_sub_cancel, A037182.P5299732233525847013.a, A037182.P6753773557534546412.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A037182

/-! ## A037182.P6753773557534546412

`110*a(n-1)-1000*a(n-2)` with `a(0)=0, a(1)=45`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037182

/-- `110*a(n-1)-1000*a(n-2)` -/
def P6753773557534546412.Spec : Prop :=
  ∀ n, P6753773557534546412.a n = A037182 n

theorem P6753773557534546412.correct : P6753773557534546412.Spec := by
  intro n
  simp only [A037182]

end A037182

/-! ## A037182.P13589887746140181119

`sqrt(A350869(n))`
-/

namespace A037182.P13589887746140181119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350869 n : ℝ)

end

end A037182.P13589887746140181119

namespace A037182

/-- `sqrt(A350869(n))` -/
def P13589887746140181119.Spec : Prop :=
  ∀ n, P13589887746140181119.a n = (A037182 n : ℝ)

end A037182

/-! ## A037182.P13194753369697689766

`A037156(n)-A011557(n)`
-/

namespace A037182.P13194753369697689766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037156 n - A011557 n

end

end A037182.P13194753369697689766

namespace A037182

/-- `A037156(n)-A011557(n)` -/
def P13194753369697689766.Spec : Prop :=
  ∀ n, P13194753369697689766.a n = A037182 n

end A037182

/-! ## A037182.P1202239795457951132

`A093143(2*n)-A093143(n)`
-/

namespace A037182.P1202239795457951132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (2 * n) - A093143 n

end

end A037182.P1202239795457951132

namespace A037182

/-- `A093143(2*n)-A093143(n)` -/
def P1202239795457951132.Spec : Prop :=
  ∀ n, P1202239795457951132.a n = A037182 n

end A037182

/-! ## A037182.P8601399548337184304

`C(10^n, 2)`
-/

namespace A037182.P8601399548337184304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (10 ^ n) 2

end

end A037182.P8601399548337184304

namespace A037182

/-- `C(10^n, 2)` -/
def P8601399548337184304.Spec : Prop :=
  ∀ n, (P8601399548337184304.a n : ℤ) = A037182 n

end A037182

/-!
# A037183: Smallest number that is palindromic (with at least 2 digits) in n bases.

The programs for A037183, there is no canonical definition to state claims against.
-/

/-! ## A037183.P3294867664825422745

`A107129(A001104(n+1))`
-/

namespace A037183.P3294867664825422745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107129 (A001104 (n + 1)).toNat

end

end A037183.P3294867664825422745

/-! ## A037183.P15006920648749694835

`A107129(A002998(n+1))`
-/

namespace A037183.P15006920648749694835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107129 (A002998 (n + 1)).toNat

end

end A037183.P15006920648749694835

/-! ## A037183.P11582809851460888250

`A107129(A028431(n+1))`
-/

namespace A037183.P11582809851460888250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107129 (A028431 (n + 1)).toNat

end

end A037183.P11582809851460888250

/-! ## A037183.P4565280297359838980

`A107129(A032555(n+1))`
-/

namespace A037183.P4565280297359838980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107129 (A032555 (n + 1)).toNat

end

end A037183.P4565280297359838980

/-! ## A037183.P3071660132874784637

`A107129(A032557(n+1))`
-/

namespace A037183.P3071660132874784637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107129 (A032557 (n + 1)).toNat

end

end A037183.P3071660132874784637

/-!
# A037184: Functional digraphs with 1 node not in the image.

The programs for A037184, the canonical program `A037184.P9522735859337010079` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037184 has offset 3).

The definition of A037184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037184.P9522735859337010079

`(n+3)*((n+1)*a(n-1)+(n+2)*a(n-2))/n` with `a(0)=6, a(1)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037184

/-- `(n+3)*((n+1)*a(n-1)+(n+2)*a(n-2))/n` -/
def P9522735859337010079.Spec : Prop :=
  ∀ n, P9522735859337010079.a n = (A037184 (n + 3) : ℚ)

end A037184

/-! ## A037184.P8086384211025857758

`(n+3)*A105927(n+2)`
-/

namespace A037184.P8086384211025857758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A105927 (n + 2)

end

end A037184.P8086384211025857758

namespace A037184

/-- `(n+3)*A105927(n+2)` -/
def P8086384211025857758.Spec : Prop :=
  ∀ n, P8086384211025857758.a n = A037184 (n + 3)

end A037184

/-! ## A037184.P10421971568764450377

`A065088(n+3)-A000387(n+3)`
-/

namespace A037184.P10421971568764450377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065088 (n + 3) - A000387 (n + 3)

end

end A037184.P10421971568764450377

namespace A037184

/-- `A065088(n+3)-A000387(n+3)` -/
def P10421971568764450377.Spec : Prop :=
  ∀ n, P10421971568764450377.a n = A037184 (n + 3)

end A037184

/-! ## A037184.P5214378123509534283

`Δ[A000255(n+1)]*A000217(n+2)`
-/

namespace A037184.P5214378123509534283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (n + 2)

end

end A037184.P5214378123509534283

namespace A037184

/-- `Δ[A000255(n+1)]*A000217(n+2)` -/
def P5214378123509534283.Spec : Prop :=
  ∀ n, P5214378123509534283.a n = A037184 (n + 3)

end A037184

/-! ## A037184.P1400406200325569450

`(A000166(n+3)-A000166(n+1))*A000217(n+2)`
-/

namespace A037184.P1400406200325569450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000166 (n + 3) - A000166 (n + 1)) * A000217 (n + 2)

end

end A037184.P1400406200325569450

namespace A037184

/-- `(A000166(n+3)-A000166(n+1))*A000217(n+2)` -/
def P1400406200325569450.Spec : Prop :=
  ∀ n, P1400406200325569450.a n = A037184 (n + 3)

end A037184

/-! ## A037184.P11013133620999432918

`A000536(n+4)/(n+4)`
-/

namespace A037184.P11013133620999432918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000536 (n + 4) : ℚ) / (n + 4 : ℚ)

end

end A037184.P11013133620999432918

namespace A037184

/-- `A000536(n+4)/(n+4)` -/
def P11013133620999432918.Spec : Prop :=
  ∀ n, P11013133620999432918.a n = (A037184 (n + 3) : ℚ)

end A037184

/-!
# A037185: Number of ways of placing 2n points on n X n grid so no 3 are in a line (solutions with no symmetry).

The programs for A037185, there is no canonical definition to state claims against.
-/

/-! ## A037185.P11012162939796286448

`A211020(A155661(n)%A000142(n))`
-/

namespace A037185.P11012162939796286448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211020 (Int.tmod (A155661 n) (A000142 n)).toNat

end

end A037185.P11012162939796286448

/-! ## A037185.P4309151787118992767

`A211020(A003422(n)*A112798(n+2))`
-/

namespace A037185.P4309151787118992767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211020 (A003422 n * A112798 (n + 2)).toNat

end

end A037185.P4309151787118992767

/-! ## A037185.P13123666188884796011

`A051470(n+1)%A003056(A114296(n))`
-/

namespace A037185.P13123666188884796011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051470 (n + 1)) (A003056 (A114296 n).toNat)

end

end A037185.P13123666188884796011

/-!
# A037188: Number of ways of placing 2n points on n X n grid so no 3 are in a line (solutions with symmetry about both main diagonals).

The programs for A037188, there is no canonical definition to state claims against.
-/

/-! ## A037188.P16644172520702686551

`and(A004524(A019595(n)), A302044(n+1))`
-/

namespace A037188.P16644172520702686551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004524 (A019595 n).toNat) (A302044 (n + 1))

end

end A037188.P16644172520702686551

/-! ## A037188.P10941996971191632345

`A056978(A279011(n+1))-A056978(n+1)`
-/

namespace A037188.P10941996971191632345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056978 (A279011 (n + 1)).toNat - A056978 (n + 1)

end

end A037188.P10941996971191632345

/-! ## A037188.P4815707796024912265

`A001358(A056058(n+1))%A034444(n+1)`
-/

namespace A037188.P4815707796024912265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (A056058 (n + 1)).toNat) (A034444 (n + 1))

end

end A037188.P4815707796024912265

/-! ## A037188.P4849771659270405922

`A180426(n+1)%A000005(A196176(n+1))`
-/

namespace A037188.P4849771659270405922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180426 (n + 1)) (A000005 (A196176 (n + 1)).toNat)

end

end A037188.P4849771659270405922

/-!
# A037189: Number of ways of placing 4n points on 2n X 2n grid so no 3 are in a line (solutions with either 90-degree rotational symmetry or full symmetry).

The programs for A037189, there is no canonical definition to state claims against.
-/

/-! ## A037189.P4025467603030245491

`A212807(n+1)-char[A020079(n)]`
-/

namespace A037189.P4025467603030245491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212807 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A037189.P4025467603030245491

/-! ## A037189.P1754856973396688580

`A212807(n+1)-char[A065733(n)]`
-/

namespace A037189.P1754856973396688580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212807 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A037189.P1754856973396688580

/-! ## A037189.P17217759391419463856

`A212807(n+1)-char[A086344(n)]`
-/

namespace A037189.P17217759391419463856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086344 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212807 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A037189.P17217759391419463856

/-! ## A037189.P17926467332735754666

`A212807(n+1)-char[A287287(n)]`
-/

namespace A037189.P17926467332735754666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287287 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212807 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A037189.P17926467332735754666

/-! ## A037189.P15891140881010917956

`A212807(n+1)-A036987(∑[n+1])`
-/

namespace A037189.P15891140881010917956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212807 (n + 1) - A036987 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037189.P15891140881010917956

/-!
# A037197: Numbers k such that tau(sigma(k)) = tau(k) where tau(k) is the number of divisors of k and sigma(k) their sum.

The programs for A037197, the canonical program `A037197.P6784349758619348236` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037197 has offset 1).

The definition of A037197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037197.P6784349758619348236

`lt[A295306(n+1)², 1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037197

/-- `lt[A295306(n+1)², 1]+1` -/
def P6784349758619348236.Spec : Prop :=
  ∀ n, (P6784349758619348236.a n : ℤ) = A037197 (n + 1)

theorem P6784349758619348236.correct : P6784349758619348236.Spec := by
  intro n
  simp only [A037197, Nat.add_sub_cancel]

end A037197

/-! ## A037197.P10001218833419205924

`eq[A000005(n+1), A000005(A000203(n+1))]+1`
-/

namespace A037197.P10001218833419205924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037197.P10001218833419205924

namespace A037197

/-- `eq[A000005(n+1), A000005(A000203(n+1))]+1` -/
def P10001218833419205924.Spec : Prop :=
  ∀ n, (P10001218833419205924.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P3656120104407932497

`record[gcd(n+1, A295305(n+1))]`
-/

namespace A037197.P3656120104407932497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A295305 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037197.P3656120104407932497

namespace A037197

/-- `record[gcd(n+1, A295305(n+1))]` -/
def P3656120104407932497.Spec : Prop :=
  ∀ n, (P3656120104407932497.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P5746561645985590318

`eq[A000005(n+1), A062068(n+1)]+1`
-/

namespace A037197.P5746561645985590318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037197.P5746561645985590318

namespace A037197

/-- `eq[A000005(n+1), A062068(n+1)]+1` -/
def P5746561645985590318.Spec : Prop :=
  ∀ n, (P5746561645985590318.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P229220242758066588

`eq[A000007(n), A295306(A028310(n))]`
-/

namespace A037197.P229220242758066588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037197.P229220242758066588

namespace A037197

/-- `eq[A000007(n), A295306(A028310(n))]` -/
def P229220242758066588.Spec : Prop :=
  ∀ n, (P229220242758066588.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P17159417795450204642

`eq[A000038(n), A295305(A028310(n))]`
-/

namespace A037197.P17159417795450204642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295305 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037197.P17159417795450204642

namespace A037197

/-- `eq[A000038(n), A295305(A028310(n))]` -/
def P17159417795450204642.Spec : Prop :=
  ∀ n, (P17159417795450204642.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P15171479817094204542

`eq[A000007(n), A295306(A000007(n)+n)]`
-/

namespace A037197.P15171479817094204542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037197.P15171479817094204542

namespace A037197

/-- `eq[A000007(n), A295306(A000007(n)+n)]` -/
def P15171479817094204542.Spec : Prop :=
  ∀ n, (P15171479817094204542.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P5149487982018627327

`eq[A000038(n), A295305(A000038(n)+n)]`
-/

namespace A037197.P5149487982018627327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295305 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037197.P5149487982018627327

namespace A037197

/-- `eq[A000038(n), A295305(A000038(n)+n)]` -/
def P5149487982018627327.Spec : Prop :=
  ∀ n, (P5149487982018627327.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P7380468544226764650

`eq[A000005(n+1), A000005(A276528(n+1))]+1`
-/

namespace A037197.P7380468544226764650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276528 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037197.P7380468544226764650

namespace A037197

/-- `eq[A000005(n+1), A000005(A276528(n+1))]+1` -/
def P7380468544226764650.Spec : Prop :=
  ∀ n, (P7380468544226764650.a n : ℤ) = A037197 (n + 1)

end A037197

/-! ## A037197.P8685013708088533879

`eq[A000005(n+1), A000005(A088580(n+1)-1)]+1`
-/

namespace A037197.P8685013708088533879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088580 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037197.P8685013708088533879

namespace A037197

/-- `eq[A000005(n+1), A000005(A088580(n+1)-1)]+1` -/
def P8685013708088533879.Spec : Prop :=
  ∀ n, (P8685013708088533879.a n : ℤ) = A037197 (n + 1)

end A037197

/-!
# A037198: Number of divisors of (sigma(n)-n) = number of divisors of n.

The programs for A037198, the canonical program `A037198.P4959961532228558436` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037198 has offset 1).

The definition of A037198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037198.P4959961532228558436

`eq[A000005(A001065(n+2)), A000005(n+2)]+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037198

/-- `eq[A000005(A001065(n+2)), A000005(n+2)]+2` -/
def P4959961532228558436.Spec : Prop :=
  ∀ n, (P4959961532228558436.a n : ℤ) = A037198 (n + 1)

theorem P4959961532228558436.correct : P4959961532228558436.Spec := by
  intro n
  simp only [A037198, Nat.add_sub_cancel]

end A037198

/-! ## A037198.P18111081910191873226

`eq[A000005(n+2), A000005(A048050(n+2)+1)]+2`
-/

namespace A037198.P18111081910191873226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048050 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A037198.P18111081910191873226

namespace A037198

/-- `eq[A000005(n+2), A000005(A048050(n+2)+1)]+2` -/
def P18111081910191873226.Spec : Prop :=
  ∀ n, (P18111081910191873226.a n : ℤ) = A037198 (n + 1)

end A037198

/-! ## A037198.P151632252259022077

`A023219(n+2)-A004525(A023750(3*n+2)%A322644(n+1))`
-/

namespace A037198.P151632252259022077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 2) - A004525 (Int.tmod (A023750 (3 * n + 2)) (A322644 (n + 1))).toNat

end

end A037198.P151632252259022077

namespace A037198

/-- `A023219(n+2)-A004525(A023750(3*n+2)%A322644(n+1))` -/
def P151632252259022077.Spec : Prop :=
  ∀ n, P151632252259022077.a n = A037198 (n + 1)

end A037198

/-!
# A037199: Number of consonants in n (in German).

The programs for A037199, there is no canonical definition to state claims against.
-/

/-! ## A037199.P8414886880920857494

`A007208(n)-A037200(n)`
-/

namespace A037199.P8414886880920857494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007208 n - A037200 n

end

end A037199.P8414886880920857494

