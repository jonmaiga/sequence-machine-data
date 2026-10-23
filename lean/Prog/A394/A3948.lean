import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
# A394800: a(0) = a(1) = a(2) = a(3) = 1; a(n) = a(n-1) + (n-3)*a(n-4).

The programs for A394800, the canonical program `A394800.P14186958594767963629` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394800 has offset 0).

The definition of A394800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-3)*a(n-4)` (program `A394800.P14186958594767963629`, by `A394800.P14186958594767963629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394800.P14186958594767963629

`a(n-1)+(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A394800

/-- `a(n-1)+(n-3)*a(n-4)` -/
def P14186958594767963629.Spec : Prop :=
  ∀ n, P14186958594767963629.a n = A394800 n

theorem P14186958594767963629.correct : P14186958594767963629.Spec := by
  intro n
  simp only [A394800]

end A394800

/-! ## A394800.P5469987704770008290

`A114886(A369581(n))`
-/

namespace A394800.P5469987704770008290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A369581 n).toNat

end

end A394800.P5469987704770008290

namespace A394800

/-- `A114886(A369581(n))` -/
def P5469987704770008290.Spec : Prop :=
  ∀ n, P5469987704770008290.a n = A394800 n

end A394800

/-!
# A394802: G.f. A(x) satisfies A(x) = 1 - x^4 * d/dx log(1 - x*A(x)).

The programs for A394802, there is no canonical definition to state claims against.
-/

/-! ## A394802.P10699328494516668882

`A102705(A376491(n))`
-/

namespace A394802.P10699328494516668882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A376491 n).toNat

end

end A394802.P10699328494516668882

/-!
# A394805: Decimal expansion of 6 * arcsin(1/3) / Pi.

The programs for A394805, there is no canonical definition to state claims against.
-/

/-! ## A394805.P5256188807392634362

`9-A349605(n)`
-/

namespace A394805.P5256188807392634362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A349605 n

end

end A394805.P5256188807392634362

/-!
# A394813: Triangle read by rows: T(n, k) is the k-th even-indexed column of the array A394582.

The programs for A394813, there is no canonical definition to state claims against.
-/

/-! ## A394813.P16912607462095156399

`A004736(n+1)*A008957(n+1)`
-/

namespace A394813.P16912607462095156399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008957 (n + 1)

end

end A394813.P16912607462095156399

/-! ## A394813.P10510912777026056037

`ceil(A099375(n)/2)*A008957(n+1)`
-/

namespace A394813.P10510912777026056037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A008957 (n + 1)

end

end A394813.P10510912777026056037

/-! ## A394813.P3221470979430055978

`(val(A036561(n), 2)+1)*A008957(n+1)`
-/

namespace A394813.P3221470979430055978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 2 + 1 : ℤ) * A008957 (n + 1)

end

end A394813.P3221470979430055978

/-! ## A394813.P17548376137031923229

`val(A081954(n+1), 2)*A008957(n+1)`
-/

namespace A394813.P17548376137031923229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A081954 (n + 1)).toNat 2 : ℤ) * A008957 (n + 1)

end

end A394813.P17548376137031923229

/-! ## A394813.P1123364012087183823

`A008957(n+1)*A048794(A130321(n))`
-/

namespace A394813.P1123364012087183823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (n + 1) * A048794 (A130321 n).toNat

end

end A394813.P1123364012087183823

/-!
# A394814: Number of directed self-avoiding cycles of length 2*n in a cubic lattice, reduced for symmetry (with rotations and reflections not counted as distinct).

The programs for A394814, there is no canonical definition to state claims against.
-/

/-! ## A394814.P3250901982776360938

`A164585(A057711(n))`
-/

namespace A394814.P3250901982776360938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164585 (A057711 n).toNat

end

end A394814.P3250901982776360938

/-! ## A394814.P12679741741180856415

`A003056(A006126(n)-ceil(n!/2))`
-/

namespace A394814.P12679741741180856415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A006126 n - ⌈(Nat.factorial n : ℚ) / 2⌉).toNat

end

end A394814.P12679741741180856415

/-!
# A394815: Numbers k in A014574 (averages of twin prime pairs) such that gcd(k, sigma(k)) = 2.

The programs for A394815, there is no canonical definition to state claims against.
-/

/-! ## A394815.P12677572906064632596

`filter[A394757(n+1), A353812(#)]`
-/

namespace A394815.P12677572906064632596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A394815.P12677572906064632596

/-! ## A394815.P2626269387095778985

`filter[A394757(n+1), A353815(#)]`
-/

namespace A394815.P2626269387095778985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A394815.P2626269387095778985

/-! ## A394815.P10268986728644865600

`filter[A394757(n+1), A353816(#)]`
-/

namespace A394815.P10268986728644865600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A394815.P10268986728644865600

/-! ## A394815.P3240489742968250950

`filter[A394757(n+1), A358770(#)]`
-/

namespace A394815.P3240489742968250950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A394815.P3240489742968250950

/-!
# A394822: Expansion of o.g.f. 1 + Sum_{n>=1} (n * x^n / Product_{k=1..n} (1 - k^2*x)). Row sums of A394823.

The programs for A394822, there is no canonical definition to state claims against.
-/

/-! ## A394822.P5963894030109733025

`A369595(∪[A230952(3*n+2), A034856(n+1)])`
-/

namespace A394822.P5963894030109733025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230952 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369595 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A394822.P5963894030109733025

/-! ## A394822.P10975017467104875473

`A369595(∪[A352864(2*n+3), A034856(n+1)])`
-/

namespace A394822.P10975017467104875473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352864 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369595 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A394822.P10975017467104875473

/-!
# A394823: Triangle read by rows: T(n, k) = (2*n)! * [x^k] [y^n] (1 + u*sinh(u)/2) where u = sqrt(2*x*(cosh(y^(1/2)) - 1)).

The programs for A394823, there is no canonical definition to state claims against.
-/

/-! ## A394823.P3883007336207323396

`A130270(n+1)*A269945(n)`
-/

namespace A394823.P3883007336207323396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1) * A269945 n

end

end A394823.P3883007336207323396

/-! ## A394823.P18355517815586618421

`A144328(n+1)*A269945(n)`
-/

namespace A394823.P18355517815586618421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) * A269945 n

end

end A394823.P18355517815586618421

/-! ## A394823.P12978024911693487350

`A241314(A304336(n))`
-/

namespace A394823.P12978024911693487350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (A304336 n).toNat

end

end A394823.P12978024911693487350

/-! ## A394823.P634948659122035744

`A160558(A182406(n+1))`
-/

namespace A394823.P634948659122035744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160558 (A182406 (n + 1)).toNat

end

end A394823.P634948659122035744

/-! ## A394823.P12689270082232656711

`and(A020658(n+1), A338879(A156885(n)))`
-/

namespace A394823.P12689270082232656711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020658 (n + 1)) (A338879 (A156885 n).toNat)

end

end A394823.P12689270082232656711

/-!
# A394824: Triangle read by rows: T(n, k) = n^(n - k) * hypergeom([k, k-n], [], -1/n) for n > 0, T(0, 0) = 1.

The programs for A394824, there is no canonical definition to state claims against.
-/

/-! ## A394824.P11952469297880511498

`A394852(n)/A008279(n)`
-/

namespace A394824.P11952469297880511498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394852 n : ℚ) / (A008279 n : ℚ)

end

end A394824.P11952469297880511498

/-!
# A394826: The tetrahemihexahedral numbers.

The programs for A394826, the canonical program `A394826.P10046672064844749092` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394826 has offset 1).

The definition of A394826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394826.P10046672064844749092

`(n+3)*(4*(n+1)²-5*(n+1)+3)/6`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A394826

/-- `(n+3)*(4*(n+1)²-5*(n+1)+3)/6` -/
def P10046672064844749092.Spec : Prop :=
  ∀ n, P10046672064844749092.a n = (A394826 (n + 1) : ℚ)

end A394826

/-! ## A394826.P4044911710079169781

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A394826.P4044911710079169781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394826.P4044911710079169781

namespace A394826

/-- `∑[∑[a(n-1)+4]]` -/
def P4044911710079169781.Spec : Prop :=
  ∀ n, (P4044911710079169781.a n : ℤ) = A394826 (n + 1)

end A394826

/-! ## A394826.P13874568895619867183

`Δ[(C(n+1, 3)+1)*(n+3)]`
-/

namespace A394826.P13874568895619867183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 + 1) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A394826.P13874568895619867183

namespace A394826

/-- `Δ[(C(n+1, 3)+1)*(n+3)]` -/
def P13874568895619867183.Spec : Prop :=
  ∀ n, P13874568895619867183.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P6680802351756666968

`a(n-1)+(2*n+3)*n` with `a(0)=1`
-/

namespace A394826.P6680802351756666968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 3) * n

end

end A394826.P6680802351756666968

namespace A394826

/-- `a(n-1)+(2*n+3)*n` -/
def P6680802351756666968.Spec : Prop :=
  ∀ n, (P6680802351756666968.a n : ℤ) = A394826 (n + 1)

end A394826

/-! ## A394826.P12870531775906721153

`∑[A014106(n)]+1`
-/

namespace A394826.P12870531775906721153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A394826.P12870531775906721153

namespace A394826

/-- `∑[A014106(n)]+1` -/
def P12870531775906721153.Spec : Prop :=
  ∀ n, P12870531775906721153.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P855260871737374309

`A002412(n+1)-n`
-/

namespace A394826.P855260871737374309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) - (n : ℤ)

end

end A394826.P855260871737374309

namespace A394826

/-- `A002412(n+1)-n` -/
def P855260871737374309.Spec : Prop :=
  ∀ n, P855260871737374309.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P13268019597319793339

`∑[A084849(n)]+n²`
-/

namespace A394826.P13268019597319793339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A394826.P13268019597319793339

namespace A394826

/-- `∑[A084849(n)]+n²` -/
def P13268019597319793339.Spec : Prop :=
  ∀ n, P13268019597319793339.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P5042109348285708419

`A174723(n+1)+n²`
-/

namespace A394826.P5042109348285708419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1) + (n ^ 2 : ℤ)

end

end A394826.P5042109348285708419

namespace A394826

/-- `A174723(n+1)+n²` -/
def P5042109348285708419.Spec : Prop :=
  ∀ n, P5042109348285708419.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P6079038817390183559

`∑[A132209(n)+n+1]`
-/

namespace A394826.P6079038817390183559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394826.P6079038817390183559

namespace A394826

/-- `∑[A132209(n)+n+1]` -/
def P6079038817390183559.Spec : Prop :=
  ∀ n, P6079038817390183559.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P16799547531930489434

`∑[A000384(n+1)]-n`
-/

namespace A394826.P16799547531930489434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A394826.P16799547531930489434

namespace A394826

/-- `∑[A000384(n+1)]-n` -/
def P16799547531930489434.Spec : Prop :=
  ∀ n, P16799547531930489434.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P15967705033143419282

`A005894(n)+A000326(n)`
-/

namespace A394826.P15967705033143419282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + A000326 n

end

end A394826.P15967705033143419282

namespace A394826

/-- `A005894(n)+A000326(n)` -/
def P15967705033143419282.Spec : Prop :=
  ∀ n, P15967705033143419282.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P219307009886858650

`A027378(n)+A006002(n)`
-/

namespace A394826.P219307009886858650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n + A006002 n

end

end A394826.P219307009886858650

namespace A394826

/-- `A027378(n)+A006002(n)` -/
def P219307009886858650.Spec : Prop :=
  ∀ n, P219307009886858650.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P10774028186228416445

`A139488(n)+A033428(n)`
-/

namespace A394826.P10774028186228416445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139488 n + A033428 n

end

end A394826.P10774028186228416445

namespace A394826

/-- `A139488(n)+A033428(n)` -/
def P10774028186228416445.Spec : Prop :=
  ∀ n, P10774028186228416445.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P8615078341124312464

`A210440(n)+A000124(n)`
-/

namespace A394826.P8615078341124312464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A000124 n

end

end A394826.P8615078341124312464

namespace A394826

/-- `A210440(n)+A000124(n)` -/
def P8615078341124312464.Spec : Prop :=
  ∀ n, P8615078341124312464.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P12102489946061209052

`A188475(n)+A045943(n)`
-/

namespace A394826.P12102489946061209052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n + A045943 n

end

end A394826.P12102489946061209052

namespace A394826

/-- `A188475(n)+A045943(n)` -/
def P12102489946061209052.Spec : Prop :=
  ∀ n, P12102489946061209052.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P1054559100052405257

`A167875(n)+A101986(n)`
-/

namespace A394826.P1054559100052405257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A101986 n

end

end A394826.P1054559100052405257

namespace A394826

/-- `A167875(n)+A101986(n)` -/
def P1054559100052405257.Spec : Prop :=
  ∀ n, P1054559100052405257.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P7212275347428016767

`A317186(n)+A213045(n)`
-/

namespace A394826.P7212275347428016767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n + A213045 n

end

end A394826.P7212275347428016767

namespace A394826

/-- `A317186(n)+A213045(n)` -/
def P7212275347428016767.Spec : Prop :=
  ∀ n, P7212275347428016767.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P65546923104287171

`A341209(n)+A256857(n)`
-/

namespace A394826.P65546923104287171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + A256857 n

end

end A394826.P65546923104287171

namespace A394826

/-- `A341209(n)+A256857(n)` -/
def P65546923104287171.Spec : Prop :=
  ∀ n, P65546923104287171.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P9800069412546018205

`A081436(n)-A006527(n)`
-/

namespace A394826.P9800069412546018205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n - A006527 n

end

end A394826.P9800069412546018205

namespace A394826

/-- `A081436(n)-A006527(n)` -/
def P9800069412546018205.Spec : Prop :=
  ∀ n, P9800069412546018205.a n = A394826 (n + 1)

end A394826

/-! ## A394826.P18108147589024726059

`A098931(n)-A002412(n)`
-/

namespace A394826.P18108147589024726059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098931 n - A002412 n

end

end A394826.P18108147589024726059

namespace A394826

/-- `A098931(n)-A002412(n)` -/
def P18108147589024726059.Spec : Prop :=
  ∀ n, P18108147589024726059.a n = A394826 (n + 1)

end A394826

/-!
# A394828: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where T(n,k) is the number of 1's in the partitions of n into exactly k parts.

The programs for A394828, there is no canonical definition to state claims against.
-/

/-! ## A394828.P398052628821314801

`A333224(A368479(n))`
-/

namespace A394828.P398052628821314801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A368479 n).toNat

end

end A394828.P398052628821314801

/-! ## A394828.P13199475376486860604

`A350600(A078575(2*(n+2)))+A002262(n)`
-/

namespace A394828.P13199475376486860604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350600 (A078575 (2 * (n + 2))).toNat + A002262 n

end

end A394828.P13199475376486860604

/-! ## A394828.P1279647360764144207

`lcm(A097805(n), A237593(A014437(n+1)))`
-/

namespace A394828.P1279647360764144207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097805 n) (A237593 (A014437 (n + 1)).toNat)

end

end A394828.P1279647360764144207

/-! ## A394828.P18314830213213512407

`A235127(A390029(n+1))`
-/

namespace A394828.P18314830213213512407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A390029 (n + 1)).toNat

end

end A394828.P18314830213213512407

/-! ## A394828.P3922099861049259368

`A359552(A197655(n))+A002262(n)`
-/

namespace A394828.P3922099861049259368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359552 (A197655 n).toNat + A002262 n

end

end A394828.P3922099861049259368

/-!
# A394829: Numbers of the form h*(9*h+1), where h = 0, -1, 1, -2, 2, -3, 3, ...

The programs for A394829, the canonical program `A394829.P332927322309657524` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394829 has offset 0).

The definition of A394829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394829.P332927322309657524

`n*(n+1)/2+7*floor((n+1)/2)²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A394829

/-- `n*(n+1)/2+7*floor((n+1)/2)²` -/
def P332927322309657524.Spec : Prop :=
  ∀ n, P332927322309657524.a n = (A394829 n : ℚ)

end A394829

/-! ## A394829.P6529163203955564419

`A219395(n+1)/2`
-/

namespace A394829.P6529163203955564419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219395 (n + 1) : ℚ) / 2

end

end A394829.P6529163203955564419

namespace A394829

/-- `A219395(n+1)/2` -/
def P6529163203955564419.Spec : Prop :=
  ∀ n, P6529163203955564419.a n = (A394829 n : ℚ)

end A394829

/-! ## A394829.P7872907755915425886

`∑[n*gcd(2, n+1)^3]`
-/

namespace A394829.P7872907755915425886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P7872907755915425886

namespace A394829

/-- `∑[n*gcd(2, n+1)^3]` -/
def P7872907755915425886.Spec : Prop :=
  ∀ n, (P7872907755915425886.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P14820287411895511511

`∑[gcd(n-1, 2*n)²*lcm(2, n)]`
-/

namespace A394829.P14820287411895511511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) ^ 2 * Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P14820287411895511511

namespace A394829

/-- `∑[gcd(n-1, 2*n)²*lcm(2, n)]` -/
def P14820287411895511511.Spec : Prop :=
  ∀ n, (P14820287411895511511.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P16242999794481704395

`∑[n*A010689(n)]`
-/

namespace A394829.P16242999794481704395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P16242999794481704395

namespace A394829

/-- `∑[n*A010689(n)]` -/
def P16242999794481704395.Spec : Prop :=
  ∀ n, P16242999794481704395.a n = A394829 n

end A394829

/-! ## A394829.P13379189463242759730

`∑[n*A040019(n+1)]`
-/

namespace A394829.P13379189463242759730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P13379189463242759730

namespace A394829

/-- `∑[n*A040019(n+1)]` -/
def P13379189463242759730.Spec : Prop :=
  ∀ n, P13379189463242759730.a n = A394829 n

end A394829

/-! ## A394829.P5307785155631349442

`A056020(n+1)*A110654(n)`
-/

namespace A394829.P5307785155631349442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1) * A110654 n

end

end A394829.P5307785155631349442

namespace A394829

/-- `A056020(n+1)*A110654(n)` -/
def P5307785155631349442.Spec : Prop :=
  ∀ n, P5307785155631349442.a n = A394829 n

end A394829

/-! ## A394829.P15435533058725205391

`lcm(A001057(n), A056020(n+1))`
-/

namespace A394829.P15435533058725205391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001057 n) (A056020 (n + 1))

end

end A394829.P15435533058725205391

namespace A394829

/-- `lcm(A001057(n), A056020(n+1))` -/
def P15435533058725205391.Spec : Prop :=
  ∀ n, (P15435533058725205391.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P3843949889740320757

`(A007310(n+1)-A047209(n+1))*A056020(n+1)`
-/

namespace A394829.P3843949889740320757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007310 (n + 1) - A047209 (n + 1)) * A056020 (n + 1)

end

end A394829.P3843949889740320757

namespace A394829

/-- `(A007310(n+1)-A047209(n+1))*A056020(n+1)` -/
def P3843949889740320757.Spec : Prop :=
  ∀ n, P3843949889740320757.a n = A394829 n

end A394829

/-! ## A394829.P5816659710787907264

`(A047336(n+1)-A007310(n+1))*A056020(n+1)`
-/

namespace A394829.P5816659710787907264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047336 (n + 1) - A007310 (n + 1)) * A056020 (n + 1)

end

end A394829.P5816659710787907264

namespace A394829

/-- `(A047336(n+1)-A007310(n+1))*A056020(n+1)` -/
def P5816659710787907264.Spec : Prop :=
  ∀ n, P5816659710787907264.a n = A394829 n

end A394829

/-! ## A394829.P7671881298467330572

`(A047522(n+1)-A047336(n+1))*A056020(n+1)`
-/

namespace A394829.P7671881298467330572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047522 (n + 1) - A047336 (n + 1)) * A056020 (n + 1)

end

end A394829.P7671881298467330572

namespace A394829

/-- `(A047522(n+1)-A047336(n+1))*A056020(n+1)` -/
def P7671881298467330572.Spec : Prop :=
  ∀ n, P7671881298467330572.a n = A394829 n

end A394829

/-! ## A394829.P13184539534163865036

`(A090771(n+1)-A056020(n+1))*A056020(n+1)`
-/

namespace A394829.P13184539534163865036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 1) - A056020 (n + 1)) * A056020 (n + 1)

end

end A394829.P13184539534163865036

namespace A394829

/-- `(A090771(n+1)-A056020(n+1))*A056020(n+1)` -/
def P13184539534163865036.Spec : Prop :=
  ∀ n, P13184539534163865036.a n = A394829 n

end A394829

/-! ## A394829.P4566789238059239113

`(A091998(n+1)-A175885(n+1))*A056020(n+1)`
-/

namespace A394829.P4566789238059239113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091998 (n + 1) - A175885 (n + 1)) * A056020 (n + 1)

end

end A394829.P4566789238059239113

namespace A394829

/-- `(A091998(n+1)-A175885(n+1))*A056020(n+1)` -/
def P4566789238059239113.Spec : Prop :=
  ∀ n, P4566789238059239113.a n = A394829 n

end A394829

/-! ## A394829.P7609964157525449296

`A011862(A090570(n+2))`
-/

namespace A394829.P7609964157525449296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 (A090570 (n + 2)).toNat

end

end A394829.P7609964157525449296

namespace A394829

/-- `A011862(A090570(n+2))` -/
def P7609964157525449296.Spec : Prop :=
  ∀ n, P7609964157525449296.a n = A394829 n

end A394829

/-! ## A394829.P12874490405888843780

`A014682(A219395(n+1))`
-/

namespace A394829.P12874490405888843780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A219395 (n + 1)).toNat

end

end A394829.P12874490405888843780

namespace A394829

/-- `A014682(A219395(n+1))` -/
def P12874490405888843780.Spec : Prop :=
  ∀ n, P12874490405888843780.a n = A394829 n

end A394829

/-! ## A394829.P17422099037644236742

`∑[n*A010127((n+1)²)]`
-/

namespace A394829.P17422099037644236742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010127 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P17422099037644236742

namespace A394829

/-- `∑[n*A010127((n+1)²)]` -/
def P17422099037644236742.Spec : Prop :=
  ∀ n, P17422099037644236742.a n = A394829 n

end A394829

/-! ## A394829.P11410024075876410460

`∑[n*dr(8^n)]`
-/

namespace A394829.P11410024075876410460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (8 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P11410024075876410460

namespace A394829

/-- `∑[n*dr(8^n)]` -/
def P11410024075876410460.Spec : Prop :=
  ∀ n, (P11410024075876410460.a n : ℤ) = A394829 n

end A394829

/-! ## A394829.P4763252952018723802

`∑[n*A143025(n²)]`
-/

namespace A394829.P4763252952018723802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A143025 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394829.P4763252952018723802

namespace A394829

/-- `∑[n*A143025(n²)]` -/
def P4763252952018723802.Spec : Prop :=
  ∀ n, P4763252952018723802.a n = A394829 n

end A394829

/-!
# A394830: Number of divisors d of n that do not divide n/d - 1.

The programs for A394830, there is no canonical definition to state claims against.
-/

/-! ## A394830.P2104029552581684256

`A000005(n+1)-A163671(n+1)`
-/

namespace A394830.P2104029552581684256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A163671 (n + 1)

end

end A394830.P2104029552581684256

/-! ## A394830.P9691099093436959445

`A318456(A025129(2*n+3))%A078899(n+1)`
-/

namespace A394830.P9691099093436959445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318456 (A025129 (2 * n + 3)).toNat) (A078899 (n + 1))

end

end A394830.P9691099093436959445

/-! ## A394830.P15154792682993042112

`A034836(n+1)-A254651(A270339(2*n+1))`
-/

namespace A394830.P15154792682993042112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A254651 (A270339 (2 * n + 1)).toNat

end

end A394830.P15154792682993042112

/-! ## A394830.P12753929071073210601

`A078899(n+1)-A124010(A078864(n+1))`
-/

namespace A394830.P12753929071073210601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (n + 1) - A124010 (A078864 (n + 1)).toNat

end

end A394830.P12753929071073210601

/-! ## A394830.P5253187049142039723

`A080328(A001055(2*(n+1))%A071370(n+1))`
-/

namespace A394830.P5253187049142039723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080328 (Int.tmod (A001055 (2 * (n + 1))) (A071370 (n + 1))).toNat

end

end A394830.P5253187049142039723

/-!
# A394841: A variant of Wallis sieve, read by antidiagonals.

The programs for A394841, there is no canonical definition to state claims against.
-/

/-! ## A394841.P7238916203028102013

`abs(A010892(A088699(n)))`
-/

namespace A394841.P7238916203028102013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 (A088699 n).toNat|

end

end A394841.P7238916203028102013

/-! ## A394841.P8039038376077467760

`A204112(n+1)%A376680(A329316(n+1))`
-/

namespace A394841.P8039038376077467760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204112 (n + 1)) (A376680 (A329316 (n + 1)).toNat)

end

end A394841.P8039038376077467760

/-! ## A394841.P10720234686183017218

`A195062(A143088(n))`
-/

namespace A394841.P10720234686183017218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195062 (A143088 n).toNat

end

end A394841.P10720234686183017218

/-! ## A394841.P1160721174832590712

`and(1, A175629(A250742(n+1)))`
-/

namespace A394841.P1160721174832590712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A175629 (A250742 (n + 1)).toNat)

end

end A394841.P1160721174832590712

/-! ## A394841.P4669886099847284266

`A011655(A104881(n)+1)`
-/

namespace A394841.P4669886099847284266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A104881 n + 1).toNat

end

end A394841.P4669886099847284266

/-! ## A394841.P5511241911986430762

`A011655(A104878(n)%(A174221(n+4)+1)²+1)`
-/

namespace A394841.P5511241911986430762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Int.tmod (A104878 n) ((A174221 (n + 4) + 1) ^ 2) + 1).toNat

end

end A394841.P5511241911986430762

/-! ## A394841.P11522459779803217030

`A011655(A104878(n)+1)`
-/

namespace A394841.P11522459779803217030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A104878 n + 1).toNat

end

end A394841.P11522459779803217030

/-! ## A394841.P15888349272961426565

`A011655(A067763(n))`
-/

namespace A394841.P15888349272961426565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A067763 n).toNat

end

end A394841.P15888349272961426565

/-! ## A394841.P277682958329021287

`A011655(A086620(n))`
-/

namespace A394841.P277682958329021287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A086620 n).toNat

end

end A394841.P277682958329021287

/-! ## A394841.P12354154656303623162

`A079978(A129533(n))`
-/

namespace A394841.P12354154656303623162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A129533 n).toNat

end

end A394841.P12354154656303623162

/-!
# A394843: G.f. A(x) satisfies A(x) = 1 / (1 - x/2 * d/dx log(1 + 2*x*A(x))).

The programs for A394843, there is no canonical definition to state claims against.
-/

/-! ## A394843.P6368931820973039966

`A184324(n*A393412(n))`
-/

namespace A394843.P6368931820973039966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184324 ((n : ℤ) * A393412 n).toNat

end

end A394843.P6368931820973039966

/-! ## A394843.P10724598947938145593

`ceil(A300163(record[A162246(n)])/5)`
-/

namespace A394843.P10724598947938145593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A300163 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 5⌉

end

end A394843.P10724598947938145593

/-!
# A394847: G.f. A(x) satisfies A(x) = 1 / (1 + x/2 * d/dx log(1 - 2*x*A(x))).

The programs for A394847, there is no canonical definition to state claims against.
-/

/-! ## A394847.P10325272913454091340

`A340038(a(n-1))+3` with `a(0)=1, a(1)=1`
-/

namespace A394847.P10325272913454091340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A340038 (a (n - 1)).toNat + 3

end

end A394847.P10325272913454091340

/-!
# A394852: Triangle read by rows: Expansion of the e.g.f. 1/( 1 + (1+y)*LambertW(-x) ).

The programs for A394852, there is no canonical definition to state claims against.
-/

/-! ## A394852.P12950944048251536632

`A008279(n)*A394824(n)`
-/

namespace A394852.P12950944048251536632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A394824 n

end

end A394852.P12950944048251536632

/-!
# A394854: Sequence where k is appended after every F(k+1) occurrences of 1, where F is the Fibonacci sequence (A000045), with multiple values following a 1 listed in order.

The programs for A394854, there is no canonical definition to state claims against.
-/

/-! ## A394854.P17200904806324928617

`A035612(A355758(n+1))`
-/

namespace A394854.P17200904806324928617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A355758 (n + 1)).toNat

end

end A394854.P17200904806324928617

/-! ## A394854.P14276791357243946473

`A005086(A236110(A355758(n+1))²)`
-/

namespace A394854.P14276791357243946473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A236110 (A355758 (n + 1)).toNat ^ 2).toNat

end

end A394854.P14276791357243946473

/-! ## A394854.P13552056140804530050

`A354009(A156830(n+2))`
-/

namespace A394854.P13552056140804530050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354009 (A156830 (n + 2)).toNat

end

end A394854.P13552056140804530050

/-! ## A394854.P10942505474980070506

`A001511(A008863(n)-n)`
-/

namespace A394854.P10942505474980070506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A008863 n - (n : ℤ)).toNat

end

end A394854.P10942505474980070506

/-! ## A394854.P1915678116516719472

`A244569(lt[A286409(n), A024770(n+1)])`
-/

namespace A394854.P1915678116516719472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286409 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394854.P1915678116516719472

/-!
# A394855: Numbers k such that prime tower factorizations of k and k+1 share some prime number.

The programs for A394855, there is no canonical definition to state claims against.
-/

/-! ## A394855.P14760079089901503621

`lt[1, A284761(n+1)]+1`
-/

namespace A394855.P14760079089901503621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A394855.P14760079089901503621

/-!
# A394856: a(n) is the largest integer k such that the k-th Bell number does not exceed 2^(n+k).

The programs for A394856, there is no canonical definition to state claims against.
-/

/-! ## A394856.P6168239052980207072

`A134914(A154517(n+2))`
-/

namespace A394856.P6168239052980207072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A154517 (n + 2)).toNat

end

end A394856.P6168239052980207072

/-! ## A394856.P9804295232388877353

`A048766(10*(n+3)²)`
-/

namespace A394856.P9804295232388877353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (10 * (n + 3) ^ 2)

end

end A394856.P9804295232388877353

/-! ## A394856.P10495112691924441842

`A239683(A248374(n+2))`
-/

namespace A394856.P10495112691924441842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239683 (A248374 (n + 2)).toNat

end

end A394856.P10495112691924441842

/-! ## A394856.P11936100816076889094

`A130233(A000041(n+3)+A000041(n))`
-/

namespace A394856.P11936100816076889094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A000041 (n + 3) + A000041 n).toNat

end

end A394856.P11936100816076889094

/-! ## A394856.P2398601762443074213

`A130242(A299732(n+1))`
-/

namespace A394856.P2398601762443074213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130242 (A299732 (n + 1)).toNat

end

end A394856.P2398601762443074213

/-!
# A394860: Numbers that are neither squarefree nor squareful, with exponents of prime power factors that are distinct.

The programs for A394860, the canonical program `A394860.P9530088317482289236` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394860 has offset 1).

The definition of A394860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394860.P10650046253602753616

`filter[A177425(n+1), A389905(#)]`
-/

namespace A394860.P10650046253602753616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A394860.P10650046253602753616

namespace A394860

/-- `filter[A177425(n+1), A389905(#)]` -/
def P10650046253602753616.Spec : Prop :=
  ∀ n, P10650046253602753616.a n = A394860 (n + 1)

end A394860

/-! ## A394860.P9530088317482289236

`filter[A130091(n+1), A389905(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A394860

/-- `filter[A130091(n+1), A389905(#)]` -/
def P9530088317482289236.Spec : Prop :=
  ∀ n, P9530088317482289236.a n = A394860 (n + 1)

theorem P9530088317482289236.correct : P9530088317482289236.Spec := by
  intro n
  simp only [A394860, Nat.add_sub_cancel]

end A394860

/-! ## A394860.P7911642202393078615

`∩[A119251(n+1), A177425(n+1)]`
-/

namespace A394860.P7911642202393078615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394860.P7911642202393078615

namespace A394860

/-- `∩[A119251(n+1), A177425(n+1)]` -/
def P7911642202393078615.Spec : Prop :=
  ∀ n, (P7911642202393078615.a n : ℤ) = A394860 (n + 1)

end A394860

/-! ## A394860.P14636379516346400120

`filter[A332785(n+1), A351564(#)]`
-/

namespace A394860.P14636379516346400120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A394860.P14636379516346400120

namespace A394860

/-- `filter[A332785(n+1), A351564(#)]` -/
def P14636379516346400120.Spec : Prop :=
  ∀ n, P14636379516346400120.a n = A394860 (n + 1)

end A394860

/-! ## A394860.P18370304323307954782

`filter[A389065(n+1), A351564(#)]`
-/

namespace A394860.P18370304323307954782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A394860.P18370304323307954782

namespace A394860

/-- `filter[A389065(n+1), A351564(#)]` -/
def P18370304323307954782.Spec : Prop :=
  ∀ n, P18370304323307954782.a n = A394860 (n + 1)

end A394860

/-! ## A394860.P9684086119677050274

`∩[A052485(n+1), A177425(n+1)]`
-/

namespace A394860.P9684086119677050274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394860.P9684086119677050274

namespace A394860

/-- `∩[A052485(n+1), A177425(n+1)]` -/
def P9684086119677050274.Spec : Prop :=
  ∀ n, (P9684086119677050274.a n : ℤ) = A394860 (n + 1)

end A394860

/-!
# A394862: Number of oriented polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,8}.

The programs for A394862, there is no canonical definition to state claims against.
-/

/-! ## A394862.P10761492135979701206

`A393744(n)+A394863(n)`
-/

namespace A394862.P10761492135979701206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n + A394863 n

end

end A394862.P10761492135979701206

/-! ## A394862.P14279640676659654518

`2*A394863(n)+A394864(n)`
-/

namespace A394862.P14279640676659654518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A394863 n + A394864 n

end

end A394862.P14279640676659654518

/-! ## A394862.P11959128749918323385

`2*A393744(n)-A394864(n)`
-/

namespace A394862.P11959128749918323385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A393744 n - A394864 n

end

end A394862.P11959128749918323385

/-! ## A394862.P16155579269162941566

`A389936(n)+A010815(A001550(n))`
-/

namespace A394862.P16155579269162941566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389936 n + A010815 (A001550 n).toNat

end

end A394862.P16155579269162941566

/-! ## A394862.P6342727264292989687

`A344616(A008776(n))*A389936(n)`
-/

namespace A394862.P6342727264292989687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A008776 n).toNat * A389936 n

end

end A394862.P6342727264292989687

/-!
# A394863: Number of chiral pairs of polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,8}.

The programs for A394863, there is no canonical definition to state claims against.
-/

/-! ## A394863.P9005981220594115208

`A393744(n)-A394864(n)`
-/

namespace A394863.P9005981220594115208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n - A394864 n

end

end A394863.P9005981220594115208

/-! ## A394863.P3063618182708421842

`A394862(n)-A393744(n)`
-/

namespace A394863.P3063618182708421842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 n - A393744 n

end

end A394863.P3063618182708421842

/-! ## A394863.P17590825322999533197

`(A394862(n)-A394864(n))/2`
-/

namespace A394863.P17590825322999533197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394862 n - A394864 n : ℚ) / 2

end

end A394863.P17590825322999533197

/-!
# A394864: Number of achiral polyominoes with n octagonal cells of the hyperbolic regular tiling with Schläfli symbol {8,8}.

The programs for A394864, there is no canonical definition to state claims against.
-/

/-! ## A394864.P5615382719877055564

`A393744(n)-A394863(n)`
-/

namespace A394864.P5615382719877055564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393744 n - A394863 n

end

end A394864.P5615382719877055564

/-! ## A394864.P14586238479993581803

`2*A393744(n)-A394862(n)`
-/

namespace A394864.P14586238479993581803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A393744 n - A394862 n

end

end A394864.P14586238479993581803

/-! ## A394864.P14024356651214955257

`A394862(n)-2*A394863(n)`
-/

namespace A394864.P14024356651214955257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 n - 2 * A394863 n

end

end A394864.P14024356651214955257

/-! ## A394864.P15608059284475202697

`A143547(n)+A010815(A363408(2*n+3))`
-/

namespace A394864.P15608059284475202697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 n + A010815 (A363408 (2 * n + 3)).toNat

end

end A394864.P15608059284475202697

/-!
# A394865: a(n) is the size of the largest subset A of {1, ..., n} such that x does not divide 2*y for each pair of distinct elements x, y in A.

The programs for A394865, the canonical program `A394865.P1928483704663461371` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394865 has offset 1).

The definition of A394865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394865.P1928483704663461371

`A050292(n+1)-A050292(floor((n+1)/3))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A394865

/-- `A050292(n+1)-A050292(floor((n+1)/3))` -/
def P1928483704663461371.Spec : Prop :=
  ∀ n, P1928483704663461371.a n = A394865 (n + 1)

theorem P1928483704663461371.correct : P1928483704663461371.Spec := by
  intro n
  simp only [A394865, Nat.add_sub_cancel]

end A394865

/-! ## A394865.P9137160498680794797

`∑[A373155(n+1)]`
-/

namespace A394865.P9137160498680794797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P9137160498680794797

namespace A394865

/-- `∑[A373155(n+1)]` -/
def P9137160498680794797.Spec : Prop :=
  ∀ n, P9137160498680794797.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P767896980406411626

`∑[abs(A084091(n+1))]`
-/

namespace A394865.P767896980406411626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084091 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P767896980406411626

namespace A394865

/-- `∑[abs(A084091(n+1))]` -/
def P767896980406411626.Spec : Prop :=
  ∀ n, P767896980406411626.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P3952479036083900718

`∑[A091519(n+1)%3]`
-/

namespace A394865.P3952479036083900718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091519 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P3952479036083900718

namespace A394865

/-- `∑[A091519(n+1)%3]` -/
def P3952479036083900718.Spec : Prop :=
  ∀ n, P3952479036083900718.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P17994046027537691520

`∑[and(1, A287896(n+1))]`
-/

namespace A394865.P17994046027537691520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A287896 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P17994046027537691520

namespace A394865

/-- `∑[and(1, A287896(n+1))]` -/
def P17994046027537691520.Spec : Prop :=
  ∀ n, P17994046027537691520.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P17631996114378296818

`∑[and(1, A349122(n+1))]`
-/

namespace A394865.P17631996114378296818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A349122 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P17631996114378296818

namespace A394865

/-- `∑[and(1, A349122(n+1))]` -/
def P17631996114378296818.Spec : Prop :=
  ∀ n, P17631996114378296818.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P11744148569124300156

`∑[A000035(A287896(n+1))]`
-/

namespace A394865.P11744148569124300156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A287896 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P11744148569124300156

namespace A394865

/-- `∑[A000035(A287896(n+1))]` -/
def P11744148569124300156.Spec : Prop :=
  ∀ n, P11744148569124300156.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P12669935770675097615

`∑[and(A035263(n+1), A064989(n+1))]`
-/

namespace A394865.P12669935770675097615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A064989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P12669935770675097615

namespace A394865

/-- `∑[and(A035263(n+1), A064989(n+1))]` -/
def P12669935770675097615.Spec : Prop :=
  ∀ n, P12669935770675097615.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P16217580873641575772

`∑[and(A007413(n+1), A088911(2*n))]`
-/

namespace A394865.P16217580873641575772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007413 (n + 1)) (A088911 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P16217580873641575772

namespace A394865

/-- `∑[and(A007413(n+1), A088911(2*n))]` -/
def P16217580873641575772.Spec : Prop :=
  ∀ n, P16217580873641575772.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P6479513665572823699

`∑[A259024(3*(n+1))²]`
-/

namespace A394865.P6479513665572823699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259024 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P6479513665572823699

namespace A394865

/-- `∑[A259024(3*(n+1))²]` -/
def P6479513665572823699.Spec : Prop :=
  ∀ n, P6479513665572823699.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P16926876292244877996

`∑[and(A035263(n+1), A077948(n))]`
-/

namespace A394865.P16926876292244877996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A077948 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P16926876292244877996

namespace A394865

/-- `∑[and(A035263(n+1), A077948(n))]` -/
def P16926876292244877996.Spec : Prop :=
  ∀ n, P16926876292244877996.a n = A394865 (n + 1)

end A394865

/-! ## A394865.P11921421901162610551

`∑[and(A023652(n+1), A035263(n+1))]`
-/

namespace A394865.P11921421901162610551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023652 (n + 1)) (A035263 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P11921421901162610551

namespace A394865

/-- `∑[and(A023652(n+1), A035263(n+1))]` -/
def P11921421901162610551.Spec : Prop :=
  ∀ n, P11921421901162610551.a n = A394865 (n + 1)

end A394865

/-!
# A394869: a(n) = floor(n*(sqrt(n - 1) + 2)/2).

The programs for A394869, there is no canonical definition to state claims against.
-/

/-! ## A394869.P3254486335566534733

`ceil(log2(A200403(n+1)))`
-/

namespace A394869.P3254486335566534733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A200403 (n + 1) : ℝ)⌉

end

end A394869.P3254486335566534733

/-! ## A394869.P10659165312316237657

`A273190(A349662((n+2)*2*n))`
-/

namespace A394869.P10659165312316237657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A349662 ((n + 2) * (2 * n))).toNat

end

end A394869.P10659165312316237657

/-! ## A394869.P7504285570692287937

`round(log(A339039(2*n)))`
-/

namespace A394869.P7504285570692287937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A339039 (2 * n) : ℝ))

end

end A394869.P7504285570692287937

/-!
# A394870: Primes p such that the number of quadratic residues in the Fibonacci sequence modulo p over a full Pisano period equals the number of nonresidues plus the number of terms divisible by p.

The programs for A394870, there is no canonical definition to state claims against.
-/

/-! ## A394870.P1881488724456753458

`∩[A177902(n+1), A227885(n+1)]`
-/

namespace A394870.P1881488724456753458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394870.P1881488724456753458

/-!
# A394872: Triangle read by rows: T(n, k) = binomial(n, k) * binomial(2*n + 2, k) * 2^k / (k + 1).

The programs for A394872, the canonical program `A394872.P15429205169785706846` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394872 has offset 0).

The definition of A394872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A394872.P15429205169785706846

`A059268(n)*A108767(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A394872

/-- `A059268(n)*A108767(n+1)` -/
def P15429205169785706846.Spec : Prop :=
  ∀ n, P15429205169785706846.a n = A394872 n

theorem P15429205169785706846.correct : P15429205169785706846.Spec := by
  intro n
  simp only [A394872]

end A394872

/-!
# A394873: Number of 1's in the partitions of n into exactly 5 parts.

The programs for A394873, there is no canonical definition to state claims against.
-/

/-! ## A394873.P5598767840213241692

`A394985(n+1)-A026811(n)`
-/

namespace A394873.P5598767840213241692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394985 (n + 1) - A026811 n

end

end A394873.P5598767840213241692

/-!
# A394874: G.f. A(x) satisfies A(x) = 1 - x - x * d/dx log(1 - x*A(x)).

The programs for A394874, there is no canonical definition to state claims against.
-/

/-! ## A394874.P7987064696693746419

`A156253(A179525(n))-A216501(n+1)`
-/

namespace A394874.P7987064696693746419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A179525 n).toNat - A216501 (n + 1)

end

end A394874.P7987064696693746419

/-! ## A394874.P7126437750241372167

`A358640(A294867(n))`
-/

namespace A394874.P7126437750241372167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358640 (A294867 n).toNat

end

end A394874.P7126437750241372167

/-!
# A394875: G.f. A(x) satisfies A(x) = 1 - x - x^2 - x * d/dx log(1 - x*A(x)).

The programs for A394875, there is no canonical definition to state claims against.
-/

/-! ## A394875.P4620076939963298311

`A335075(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=5`
-/

namespace A394875.P4620076939963298311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 5] fun n a =>
  A335075 (2 * a (n - 1) - a (n - 2)).toNat

end

end A394875.P4620076939963298311

/-! ## A394875.P9952215367983168124

`A358638(A256208(n)+A001222(n+1))`
-/

namespace A394875.P9952215367983168124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A256208 n + A001222 (n + 1)).toNat

end

end A394875.P9952215367983168124

/-! ## A394875.P9683484444670238801

`A322796(3*n+1)+A008615(A189780(n))`
-/

namespace A394875.P9683484444670238801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (3 * n + 1) + A008615 (A189780 n).toNat

end

end A394875.P9683484444670238801

/-!
# A394880: G.f. A(x) satisfies A(x) = 1 / (1 + x - x^2 + x^3 - x^4 - x * d/dx log(1 + x*A(x))).

The programs for A394880, there is no canonical definition to state claims against.
-/

/-! ## A394880.P16336917728644128737

`A232480(A329864(n)+3)`
-/

namespace A394880.P16336917728644128737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232480 (A329864 n + 3).toNat

end

end A394880.P16336917728644128737

/-!
# A394881: G.f. A(x) satisfies A(x) = -1 / (1 + x - x^2 + x^3 - x^4 + x^5 - x * d/dx log(1 - x*A(x))).

The programs for A394881, there is no canonical definition to state claims against.
-/

/-! ## A394881.P14793450022700715958

`A293607(A240309(n))-A054977(n)`
-/

namespace A394881.P14793450022700715958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293607 (A240309 n).toNat - A054977 n

end

end A394881.P14793450022700715958

/-!
# A394882: a(n) = 3*a(n-1) + (n mod 2)*floor(2^(n+1)/3) for n > 1, a(1) = 1.

The programs for A394882, there is no canonical definition to state claims against.
-/

/-! ## A394882.P404370011513418090

`A394582(A034856(n+2))`
-/

namespace A394882.P404370011513418090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (A034856 (n + 2)).toNat

end

end A394882.P404370011513418090

/-! ## A394882.P1571604905685249581

`A394582(lt[A106356(n+1), 1])`
-/

namespace A394882.P1571604905685249581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A394882.P1571604905685249581

/-! ## A394882.P12885199324534129161

`A394582(A000217(n+2)+n+1)`
-/

namespace A394882.P12885199324534129161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A394882.P12885199324534129161

/-! ## A394882.P187850347665997985

`A394582(eq[A244657(n+1), A348210(n+2)])`
-/

namespace A394882.P187850347665997985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348210 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A394882.P187850347665997985

/-!
# A394883: a(n) = n^2*(n + 1)*(n + 2)*(2*n + 1)*(2*n + 3)*(5*n - 1)/360.

The programs for A394883, the canonical program `A394883.P1645665538627354432` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394883 has offset 1).

The definition of A394883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394883.P10124739734711994868

`(n+1)²*(n+2)*(n+3)*(2*(n+1)+1)*(2*(n+1)+3)*(5*(n+1)-1)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394883.P10124739734711994868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 * (n + 2) * (n + 3) * (2 * (n + 1) + 1) * (2 * (n + 1) + 3) : ℤ) * ((5 * (n + 1) : ℤ) - 1) : ℚ) / 360

end

end A394883.P10124739734711994868

namespace A394883

/-- `(n+1)²*(n+2)*(n+3)*(2*(n+1)+1)*(2*(n+1)+3)*(5*(n+1)-1)/360` -/
def P10124739734711994868.Spec : Prop :=
  ∀ n, P10124739734711994868.a n = (A394883 (n + 1) : ℚ)

end A394883

/-! ## A394883.P1645665538627354432

`(n+1)*A060493(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A394883

/-- `(n+1)*A060493(n+1)` -/
def P1645665538627354432.Spec : Prop :=
  ∀ n, P1645665538627354432.a n = A394883 (n + 1)

theorem P1645665538627354432.correct : P1645665538627354432.Spec := by
  intro n
  simp only [A394883, Nat.add_sub_cancel]

end A394883

/-! ## A394883.P4967433164080828706

`(n+1)*∑[A373561(n+1)]`
-/

namespace A394883.P4967433164080828706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394883.P4967433164080828706

namespace A394883

/-- `(n+1)*∑[A373561(n+1)]` -/
def P4967433164080828706.Spec : Prop :=
  ∀ n, P4967433164080828706.a n = A394883 (n + 1)

end A394883

/-! ## A394883.P11294970845597473926

`A394813(A167614(n+1))`
-/

namespace A394883.P11294970845597473926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394813 (A167614 (n + 1)).toNat

end

end A394883.P11294970845597473926

namespace A394883

/-- `A394813(A167614(n+1))` -/
def P11294970845597473926.Spec : Prop :=
  ∀ n, P11294970845597473926.a n = A394883 (n + 1)

end A394883

/-!
# A394884: a(n) = A051903(A099308(n)), where A051903 is the maximum exponent in the prime factorization of n, and A099308 lists numbers m whose k-th arithmetic derivative is zero for some k.

The programs for A394884, there is no canonical definition to state claims against.
-/

/-! ## A394884.P4245370544128091885

`A051903(A099308(n+2))`
-/

namespace A394884.P4245370544128091885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A099308 (n + 2)).toNat

end

end A394884.P4245370544128091885

/-! ## A394884.P1603024760003664294

`A284259(A111471(n+1))`
-/

namespace A394884.P1603024760003664294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284259 (A111471 (n + 1)).toNat

end

end A394884.P1603024760003664294

/-! ## A394884.P15518197353572060746

`A376615(A072205(n+2))`
-/

namespace A394884.P15518197353572060746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376615 (A072205 (n + 2)).toNat

end

end A394884.P15518197353572060746

/-! ## A394884.P14712761929555020185

`A352823(A121615(n+1))`
-/

namespace A394884.P14712761929555020185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352823 (A121615 (n + 1)).toNat

end

end A394884.P14712761929555020185

/-!
# A394885: Terms of A099308 for which A051903 obtains value n for the first time.

The programs for A394885, there is no canonical definition to state claims against.
-/

/-! ## A394885.P11997421728390285123

`A117732(A083707(n+1))`
-/

namespace A394885.P11997421728390285123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117732 (A083707 (n + 1)).toNat

end

end A394885.P11997421728390285123

/-!
# A394886: a(n) = A051903(A328116(n)), where A051903 is the maximum exponent in the prime factorization of n, and A328116 lists numbers m such that the k-th arithmetic derivative of A276086(m) is zero for some k.

The programs for A394886, there is no canonical definition to state claims against.
-/

/-! ## A394886.P17944330344995626243

`A051903(A328116(n+2))`
-/

namespace A394886.P17944330344995626243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A328116 (n + 2)).toNat

end

end A394886.P17944330344995626243

/-! ## A394886.P15713964158811204052

`A328483(A106331(n+1))`
-/

namespace A394886.P15713964158811204052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328483 (A106331 (n + 1)).toNat

end

end A394886.P15713964158811204052

/-! ## A394886.P14066800002860398155

`A327164(A116082(n+1))`
-/

namespace A394886.P14066800002860398155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327164 (A116082 (n + 1)).toNat

end

end A394886.P14066800002860398155

/-! ## A394886.P5976448602269021464

`A081396(A389186(n+1))`
-/

namespace A394886.P5976448602269021464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081396 (A389186 (n + 1)).toNat

end

end A394886.P5976448602269021464

/-! ## A394886.P9094634025441558567

`A368712(A167304(n+1))`
-/

namespace A394886.P9094634025441558567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (A167304 (n + 1)).toNat

end

end A394886.P9094634025441558567

/-!
# A394887: Terms k in A328116 corresponding to records in A394886.

The programs for A394887, there is no canonical definition to state claims against.
-/

/-! ## A394887.P11387097347883967936

`A225878(A383471(n))`
-/

namespace A394887.P11387097347883967936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (A383471 n).toNat

end

end A394887.P11387097347883967936

/-! ## A394887.P17760810622607307773

`A384056(∏[A276588(n)])`
-/

namespace A394887.P17760810622607307773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384056 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394887.P17760810622607307773

/-!
# A394889: a(n) = A276086(A394888(n)).

The programs for A394889, there is no canonical definition to state claims against.
-/

/-! ## A394889.P9487726481094681524

`A276086(A394888(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394889.P9487726481094681524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A394888 (n + 1)).toNat

end

end A394889.P9487726481094681524

/-!
# A394891: Numbers k such that A143293(k) has no factor of the form p^p, where A143293 is the partial sums of the primorial numbers.

The programs for A394891, there is no canonical definition to state claims against.
-/

/-! ## A394891.P6194124844764505249

`comp[A394892(n+1)]`
-/

namespace A394891.P6194124844764505249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394891.P6194124844764505249

/-! ## A394891.P10313165884303367494

`lt[A360016(A026769(3*n+1)), A001285(n+3)]`
-/

namespace A394891.P10313165884303367494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360016 (A026769 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394891.P10313165884303367494

/-! ## A394891.P13463838357424275828

`lt[A177435(A004185(2*n+3)), A171696(n+5)]`
-/

namespace A394891.P13463838357424275828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177435 (A004185 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394891.P13463838357424275828

/-! ## A394891.P16960017464392494043

`lt[A000002(A000793(n)), A306323(n+1)]`
-/

namespace A394891.P16960017464392494043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A000793 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394891.P16960017464392494043

/-! ## A394891.P16101409348417874683

`lt[5, A002260(A164011(3*n+4))]`
-/

namespace A394891.P16101409348417874683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A164011 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A394891.P16101409348417874683

/-!
# A394892: Numbers k such that A143293(k) has a factor of the form p^p, where A143293 is the partial sums of the primorial numbers.

The programs for A394892, there is no canonical definition to state claims against.
-/

/-! ## A394892.P4913648567144519856

`comp[A394891(n+1)]`
-/

namespace A394892.P4913648567144519856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A394892.P4913648567144519856

/-!
# A394893: Number of integers x in range A002110(n-1) .. A002110(n)-1 such that the u-th arithmetic derivative of A276086(x) is zero for some u, and A328114(x) = prime(n-1), where A002110(n) is the n-th primorial, and A328114 gives the largest digit in the primorial base.

The programs for A394893, there is no canonical definition to state claims against.
-/

/-! ## A394893.P14688979647912358204

`A394890(A101301(n+1))`
-/

namespace A394893.P14688979647912358204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394890 (A101301 (n + 1)).toNat

end

end A394893.P14688979647912358204

/-!
# A394896: a(n) = n*n*(n+1)*(n+2)*(n+3)*(2n+1)*(2n+3)*(2n+5)*(35*n^2-21*n+4)/45360.

The programs for A394896, the canonical program `A394896.P2662756544387131280` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394896 has offset 1).

The definition of A394896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394896.P3538807003157499256

`(n+1)*C(2*(n+1)+6, 7)*(35*(n+1)²-21*(n+1)+4)/144`
-/

namespace A394896.P3538807003157499256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * Nat.choose (2 * (n + 1) + 6) 7 : ℤ) * ((35 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + 4) : ℚ) / 144

end

end A394896.P3538807003157499256

namespace A394896

/-- `(n+1)*C(2*(n+1)+6, 7)*(35*(n+1)²-21*(n+1)+4)/144` -/
def P3538807003157499256.Spec : Prop :=
  ∀ n, P3538807003157499256.a n = (A394896 (n + 1) : ℚ)

end A394896

/-! ## A394896.P1177109784360596825

`(n+1)*(7*(n+1)*(5*(n+1)-3)+4)*C(2*(n+1)+6, 7)/144`
-/

namespace A394896.P1177109784360596825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((7 * (n + 1) : ℤ) * ((5 * (n + 1) : ℤ) - 3) + 4) * (Nat.choose (2 * (n + 1) + 6) 7 : ℤ) : ℚ) / 144

end

end A394896.P1177109784360596825

namespace A394896

/-- `(n+1)*(7*(n+1)*(5*(n+1)-3)+4)*C(2*(n+1)+6, 7)/144` -/
def P1177109784360596825.Spec : Prop :=
  ∀ n, P1177109784360596825.a n = (A394896 (n + 1) : ℚ)

end A394896

/-! ## A394896.P2662756544387131280

`(n+1)*A351105(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A394896

/-- `(n+1)*A351105(n+1)` -/
def P2662756544387131280.Spec : Prop :=
  ∀ n, P2662756544387131280.a n = A394896 (n + 1)

theorem P2662756544387131280.correct : P2662756544387131280.Spec := by
  intro n
  simp only [A394896, Nat.add_sub_cancel]

end A394896

/-! ## A394896.P15443391294406472778

`Δ[A353021(n)]/(n+1)`
-/

namespace A394896.P15443391294406472778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353021 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A394896.P15443391294406472778

namespace A394896

/-- `Δ[A353021(n)]/(n+1)` -/
def P15443391294406472778.Spec : Prop :=
  ∀ n, P15443391294406472778.a n = (A394896 (n + 1) : ℚ)

end A394896

/-!
# A394898: Irregular triangle read by rows: T(n,k) = A027750(n,k) - 2*A027750(n,k-1) with 2 <= k <= A000005(n) and T(n,1) = 1.

The programs for A394898, there is no canonical definition to state claims against.
-/

/-! ## A394898.P14895765581218767147

`A132066(n+1)+A132066(n+1)-A027750(n+1)`
-/

namespace A394898.P14895765581218767147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132066 (n + 1) + (A132066 (n + 1) - A027750 (n + 1))

end

end A394898.P14895765581218767147

