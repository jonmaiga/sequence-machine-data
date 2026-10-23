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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A152000: a(n) is squarefree and such that for every prime p|a(n) and every prime q|p-1 then q|a(n) holds.

The programs for A152000, there is no canonical definition to state claims against.
-/

/-! ## A152000.P6962920137404387368

`record[A007947(A151999(n+2))]`
-/

namespace A152000.P6962920137404387368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A151999 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152000.P6962920137404387368

/-! ## A152000.P15312400716001935133

`filter[A151999(n+2), A008966(#)]`
-/

namespace A152000.P15312400716001935133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A152000.P15312400716001935133

/-! ## A152000.P3291377710636899914

`∩[A005117(n+2), A151999(n+1)]`
-/

namespace A152000.P3291377710636899914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152000.P3291377710636899914

/-! ## A152000.P13757204339034152519

`filter[A151999(n+1), A379966(#)]`
-/

namespace A152000.P13757204339034152519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A152000.P13757204339034152519

/-! ## A152000.P5589257407046358794

`∩[A039956(n+1), A151999(n+1)]`
-/

namespace A152000.P5589257407046358794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152000.P5589257407046358794

/-! ## A152000.P8805448135956958034

`∩[A144338(n+1), A151999(n+1)]`
-/

namespace A152000.P8805448135956958034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152000.P8805448135956958034

/-!
# A152001: This is a sequence from 5 X n Chomp. Values of p for which there is a P-position (p,r,r,r,r).

The programs for A152001, there is no canonical definition to state claims against.
-/

/-! ## A152001.P14280425005219947526

`or(A053150(A164218(n)), A175088(n+1))`
-/

namespace A152001.P14280425005219947526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053150 (A164218 n).toNat) (A175088 (n + 1))

end

end A152001.P14280425005219947526

/-! ## A152001.P18291025543171687822

`A022842(n+1)-A071005(A071014(n+1))`
-/

namespace A152001.P18291025543171687822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) - A071005 (A071014 (n + 1)).toNat

end

end A152001.P18291025543171687822

/-! ## A152001.P7050437936964844414

`A241833(A353850(n+4))+A008486(n)`
-/

namespace A152001.P7050437936964844414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241833 (A353850 (n + 4)).toNat + A008486 n

end

end A152001.P7050437936964844414

/-! ## A152001.P5300145618211606328

`A047408(n+1)+A001221(A342533(n+3))`
-/

namespace A152001.P5300145618211606328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1) + A001221 (A342533 (n + 3)).toNat

end

end A152001.P5300145618211606328

/-! ## A152001.P16191275953208531438

`A287528(A112798(n+2)+A042589(n))+3*n`
-/

namespace A152001.P16191275953208531438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (A112798 (n + 2) + A042589 n).toNat + (3 * n : ℤ)

end

end A152001.P16191275953208531438

/-!
# A152003: This is a sequence from 5 X n Chomp. Values of r where there exists a P-position (p,p,p,r,r).

The programs for A152003, there is no canonical definition to state claims against.
-/

/-! ## A152003.P6835908370136304064

`A000037(A030051(n+4)%A267698(3*n+1))+n`
-/

namespace A152003.P6835908370136304064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (Int.tmod (A030051 (n + 4)) (A267698 (3 * n + 1))).toNat + (n : ℤ)

end

end A152003.P6835908370136304064

/-!
# A152007: a(n) = (2^phi(3^n)-1)/3^n.

The programs for A152007, there is no canonical definition to state claims against.
-/

/-! ## A152007.P11325837294085464866

`A204984(3^n)`
-/

namespace A152007.P11325837294085464866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (3 ^ n)

end

end A152007.P11325837294085464866

/-!
# A152008: Primes which are divisors of numbers of the form (2^phi(3^k) - 1)/3^k.

The programs for A152008, there is no canonical definition to state claims against.
-/

/-! ## A152008.P15578465525984785667

`∩[A058383(n+1), A385221(n+1)]`
-/

namespace A152008.P15578465525984785667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152008.P15578465525984785667

/-! ## A152008.P13386227539172893618

`∩[A110074(n+1), A385221(n+1)]`
-/

namespace A152008.P13386227539172893618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152008.P13386227539172893618

/-! ## A152008.P7572224844882234312

`∩[A125866(n+1), A385221(n+1)]`
-/

namespace A152008.P7572224844882234312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152008.P7572224844882234312

/-! ## A152008.P2891635790232567111

`∩[A266268(n+1), A385221(n+1)]`
-/

namespace A152008.P2891635790232567111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152008.P2891635790232567111

/-!
# A152009: (L)-sieve transform of {1,4,7,10,...,3n-2,...} (A016777).

The programs for A152009, the canonical program `A152009.P18364011868043101405` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152009 has offset 1).

The definition of A152009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152009.P18364011868043101405

`floor((3*a(n-1)+3)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152009

/-- `floor((3*a(n-1)+3)/2)` -/
def P18364011868043101405.Spec : Prop :=
  ∀ n, P18364011868043101405.a n = A152009 (n + 1)

theorem P18364011868043101405.correct : P18364011868043101405.Spec := by
  intro n
  simp only [A152009, Nat.add_sub_cancel]

end A152009

/-! ## A152009.P4207876497177835745

`ceil(3/2*a(n-1))+1` with `a(0)=1`
-/

namespace A152009.P4207876497177835745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌉ + 1

end

end A152009.P4207876497177835745

namespace A152009

/-- `ceil(3/2*a(n-1))+1` -/
def P4207876497177835745.Spec : Prop :=
  ∀ n, P4207876497177835745.a n = A152009 (n + 1)

end A152009

/-! ## A152009.P10619443268169687287

`round(3/2*a(n-1))+1` with `a(0)=1`
-/

namespace A152009.P10619443268169687287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (a (n - 1) : ℚ)) + 1

end

end A152009.P10619443268169687287

namespace A152009

/-- `round(3/2*a(n-1))+1` -/
def P10619443268169687287.Spec : Prop :=
  ∀ n, P10619443268169687287.a n = A152009 (n + 1)

end A152009

/-! ## A152009.P18345520302802473606

`floor(lcm(3, a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A152009.P18345520302802473606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Int.lcm 3 (a (n - 1) + 1) : ℚ) / 2⌋

end

end A152009.P18345520302802473606

namespace A152009

/-- `floor(lcm(3, a(n-1)+1)/2)` -/
def P18345520302802473606.Spec : Prop :=
  ∀ n, P18345520302802473606.a n = A152009 (n + 1)

end A152009

/-! ## A152009.P2761893432903118681

`floor(cosh(log(3*(a(n-1)+1))))` with `a(0)=1`
-/

namespace A152009.P2761893432903118681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.cosh (Real.log (3 * (a (n - 1) + 1) : ℝ))⌋

end

end A152009.P2761893432903118681

namespace A152009

/-- `floor(cosh(log(3*(a(n-1)+1))))` -/
def P2761893432903118681.Spec : Prop :=
  ∀ n, P2761893432903118681.a n = A152009 (n + 1)

end A152009

/-!
# A152010: Sum of digits of A127335(n).

The programs for A152010, the canonical program `A152010.P5083475496821367649` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152010 has offset 1).

The definition of A152010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A127335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152010.P5083475496821367649

`A007953(A127335(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A152010

/-- `A007953(A127335(n+1))` -/
def P5083475496821367649.Spec : Prop :=
  ∀ n, P5083475496821367649.a n = A152010 (n + 1)

theorem P5083475496821367649.correct : P5083475496821367649.Spec := by
  intro n
  simp only [A152010, Nat.add_sub_cancel]

end A152010

/-! ## A152010.P3320421316688033329

`∑{digits}[A007504(n+8)-A007504(n), #]`
-/

namespace A152010.P3320421316688033329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 8) - A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152010.P3320421316688033329

namespace A152010

/-- `∑{digits}[A007504(n+8)-A007504(n), #]` -/
def P3320421316688033329.Spec : Prop :=
  ∀ n, (P3320421316688033329.a n : ℤ) = A152010 (n + 1)

end A152010

/-! ## A152010.P9326432441630937074

`∑{digits}[A127334(n+2)+A000040(n+1), #]`
-/

namespace A152010.P9326432441630937074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) + A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152010.P9326432441630937074

namespace A152010

/-- `∑{digits}[A127334(n+2)+A000040(n+1), #]` -/
def P9326432441630937074.Spec : Prop :=
  ∀ n, (P9326432441630937074.a n : ℤ) = A152010 (n + 1)

end A152010

/-! ## A152010.P2404558849894526204

`∑{digits}[A127334(n+2)+A008578(n+2), #]`
-/

namespace A152010.P2404558849894526204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) + A008578 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152010.P2404558849894526204

namespace A152010

/-- `∑{digits}[A127334(n+2)+A008578(n+2), #]` -/
def P2404558849894526204.Spec : Prop :=
  ∀ n, (P2404558849894526204.a n : ℤ) = A152010 (n + 1)

end A152010

/-! ## A152010.P4619115774047662674

`∑{digits}[A127334(n+2)+p?[A015919(n+1)], #]`
-/

namespace A152010.P4619115774047662674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152010.P4619115774047662674

namespace A152010

/-- `∑{digits}[A127334(n+2)+p?[A015919(n+1)], #]` -/
def P4619115774047662674.Spec : Prop :=
  ∀ n, (P4619115774047662674.a n : ℤ) = A152010 (n + 1)

end A152010

/-! ## A152010.P3254373566244129202

`∑{digits}[A127333(n+1)+A127334(n+2)-A034964(n+2), #]`
-/

namespace A152010.P3254373566244129202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1) + (A127334 (n + 2) - A034964 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152010.P3254373566244129202

namespace A152010

/-- `∑{digits}[A127333(n+1)+A127334(n+2)-A034964(n+2), #]` -/
def P3254373566244129202.Spec : Prop :=
  ∀ n, (P3254373566244129202.a n : ℤ) = A152010 (n + 1)

end A152010

/-! ## A152010.P15857214784919515491

`∑{digits}[A127333(n+3)+A001043(n+1), #]`
-/

namespace A152010.P15857214784919515491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 3) + A001043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152010.P15857214784919515491

namespace A152010

/-- `∑{digits}[A127333(n+3)+A001043(n+1), #]` -/
def P15857214784919515491.Spec : Prop :=
  ∀ n, (P15857214784919515491.a n : ℤ) = A152010 (n + 1)

end A152010

/-! ## A152010.P7394678935731177372

`∑{digits}[A127333(n+3)+A011974(n+2), #]`
-/

namespace A152010.P7394678935731177372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 3) + A011974 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A152010.P7394678935731177372

namespace A152010

/-- `∑{digits}[A127333(n+3)+A011974(n+2), #]` -/
def P7394678935731177372.Spec : Prop :=
  ∀ n, (P7394678935731177372.a n : ℤ) = A152010 (n + 1)

end A152010

/-! ## A152010.P9943095901601885551

`A007953(A127334(n+2)+A000040(n+1))`
-/

namespace A152010.P9943095901601885551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A127334 (n + 2) + A000040 (n + 1)).toNat

end

end A152010.P9943095901601885551

namespace A152010

/-- `A007953(A127334(n+2)+A000040(n+1))` -/
def P9943095901601885551.Spec : Prop :=
  ∀ n, P9943095901601885551.a n = A152010 (n + 1)

end A152010

/-!
# A152011: a(0) = 1 and a(n) = (3^n - (-1)^n)/2 for n >= 1.

The programs for A152011, the canonical program `A152011.P9746076011406795181` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152011 has offset 0).

The definition of A152011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152011.P9746076011406795181

`2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152011

/-- `2*a(n-1)+3*a(n-2)` -/
def P9746076011406795181.Spec : Prop :=
  ∀ n, (P9746076011406795181.a n : ℤ) = A152011 n

theorem P9746076011406795181.correct : P9746076011406795181.Spec := by
  intro n
  simp only [A152011]

end A152011

/-! ## A152011.P5427387030549052669

`ogf((-1+3x^2)/(-1+2x+3x^2))`
-/

namespace A152011.P5427387030549052669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -2, -3] n

end

end A152011.P5427387030549052669

namespace A152011

/-- `ogf((-1+3x^2)/(-1+2x+3x^2))` -/
def P5427387030549052669.Spec : Prop :=
  ∀ n, P5427387030549052669.a n = A152011 n

end A152011

/-! ## A152011.P12782648444836212990

`xor(2, 3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A152011.P12782648444836212990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 2 (3 * a (n - 1))

end

end A152011.P12782648444836212990

namespace A152011

/-- `xor(2, 3*a(n-1))` -/
def P12782648444836212990.Spec : Prop :=
  ∀ n, (P12782648444836212990.a n : ℤ) = A152011 n

end A152011

/-! ## A152011.P3748115388776962237

`xor(2, lcm(3, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A152011.P3748115388776962237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 2 (Nat.lcm 3 (a (n - 1)))

end

end A152011.P3748115388776962237

namespace A152011

/-- `xor(2, lcm(3, a(n-1)))` -/
def P3748115388776962237.Spec : Prop :=
  ∀ n, (P3748115388776962237.a n : ℤ) = A152011 n

end A152011

/-! ## A152011.P2103470542178732764

`xor(2, a(n-1)/cot(atan(3)))` with `a(0)=1, a(1)=2`
-/

namespace A152011.P2103470542178732764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 2 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (3 : ℝ))))

end

end A152011.P2103470542178732764

namespace A152011

/-- `xor(2, a(n-1)/cot(atan(3)))` -/
def P2103470542178732764.Spec : Prop :=
  ∀ n, P2103470542178732764.a n = A152011 n

end A152011

/-! ## A152011.P8544923377953487479

`xor(2, a(n-1)/sqrt(1/9))` with `a(0)=1, a(1)=2`
-/

namespace A152011.P8544923377953487479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 2 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 9 : ℝ)))

end

end A152011.P8544923377953487479

namespace A152011

/-- `xor(2, a(n-1)/sqrt(1/9))` -/
def P8544923377953487479.Spec : Prop :=
  ∀ n, P8544923377953487479.a n = A152011 n

end A152011

/-! ## A152011.P11519969172693250763

`3*a(n-1)-2*(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A152011.P11519969172693250763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - 2 * (-1) ^ n

end

end A152011.P11519969172693250763

namespace A152011

/-- `3*a(n-1)-2*(-1)^n` -/
def P11519969172693250763.Spec : Prop :=
  ∀ n, P11519969172693250763.a n = A152011 n

end A152011

/-! ## A152011.P9229541758845718609

`char[comp[2*(n+1)]]+∑[floor(3^(n-1))]`
-/

namespace A152011.P9229541758845718609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A152011.P9229541758845718609

namespace A152011

/-- `char[comp[2*(n+1)]]+∑[floor(3^(n-1))]` -/
def P9229541758845718609.Spec : Prop :=
  ∀ n, P9229541758845718609.a n = A152011 n

end A152011

/-! ## A152011.P12812400448811452687

`xor(A010684(n), A080925(n))`
-/

namespace A152011.P12812400448811452687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A080925 n)

end

end A152011.P12812400448811452687

namespace A152011

/-- `xor(A010684(n), A080925(n))` -/
def P12812400448811452687.Spec : Prop :=
  ∀ n, P12812400448811452687.a n = A152011 n

end A152011

/-! ## A152011.P5179556726996218117

`xor(A057427(n), A103425(n))`
-/

namespace A152011.P5179556726996218117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A103425 n)

end

end A152011.P5179556726996218117

namespace A152011

/-- `xor(A057427(n), A103425(n))` -/
def P5179556726996218117.Spec : Prop :=
  ∀ n, P5179556726996218117.a n = A152011 n

end A152011

/-! ## A152011.P15930176692502553535

`xor(A010674(n), A261547(n))`
-/

namespace A152011.P15930176692502553535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A261547 n)

end

end A152011.P15930176692502553535

namespace A152011

/-- `xor(A010674(n), A261547(n))` -/
def P15930176692502553535.Spec : Prop :=
  ∀ n, P15930176692502553535.a n = A152011 n

end A152011

/-! ## A152011.P5799436486066362837

`record[A087432(n)-A001045(n)]`
-/

namespace A152011.P5799436486066362837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 n - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152011.P5799436486066362837

namespace A152011

/-- `record[A087432(n)-A001045(n)]` -/
def P5799436486066362837.Spec : Prop :=
  ∀ n, P5799436486066362837.a n = A152011 n

end A152011

/-! ## A152011.P4001376764415698568

`record[A124302(n)-A000035(n)]`
-/

namespace A152011.P4001376764415698568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152011.P4001376764415698568

namespace A152011

/-- `record[A124302(n)-A000035(n)]` -/
def P4001376764415698568.Spec : Prop :=
  ∀ n, P4001376764415698568.a n = A152011 n

end A152011

/-! ## A152011.P6562600776254564532

`∏{e}[A006530(n+1)², #*A015518(n)]`
-/

namespace A152011.P6562600776254564532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A015518 n

end

end A152011.P6562600776254564532

namespace A152011

/-- `∏{e}[A006530(n+1)², #*A015518(n)]` -/
def P6562600776254564532.Spec : Prop :=
  ∀ n, P6562600776254564532.a n = A152011 n

end A152011

/-! ## A152011.P18011645553479571579

`Δ[or(1, 3^(n-1)-a(n-1))]` with `a(0)=0`
-/

namespace A152011.P18011645553479571579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor 1 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (f1 (n - 1) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152011.P18011645553479571579

namespace A152011

/-- `Δ[or(1, 3^(n-1)-a(n-1))]` -/
def P18011645553479571579.Spec : Prop :=
  ∀ n, P18011645553479571579.a n = A152011 n

end A152011

/-! ## A152011.P16493877607378450333

`(A165326(n)+A000244(n))/2`
-/

namespace A152011.P16493877607378450333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165326 n + A000244 n : ℚ) / 2

end

end A152011.P16493877607378450333

namespace A152011

/-- `(A165326(n)+A000244(n))/2` -/
def P16493877607378450333.Spec : Prop :=
  ∀ n, P16493877607378450333.a n = (A152011 n : ℚ)

end A152011

/-! ## A152011.P11738485532447325183

`Δ[A122983(n)%A122983(n+1)]`
-/

namespace A152011.P11738485532447325183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122983 n) (A122983 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152011.P11738485532447325183

namespace A152011

/-- `Δ[A122983(n)%A122983(n+1)]` -/
def P11738485532447325183.Spec : Prop :=
  ∀ n, P11738485532447325183.a n = A152011 n

end A152011

/-! ## A152011.P5412584595388693284

`(A084182(n+1)-A084182(n))/A123932(n)`
-/

namespace A152011.P5412584595388693284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084182 (n + 1) - A084182 n : ℚ) / (A123932 n : ℚ)

end

end A152011.P5412584595388693284

namespace A152011

/-- `(A084182(n+1)-A084182(n))/A123932(n)` -/
def P5412584595388693284.Spec : Prop :=
  ∀ n, P5412584595388693284.a n = (A152011 n : ℚ)

end A152011

/-! ## A152011.P258834914393441296

`and(A007051(n), A096045(n))`
-/

namespace A152011.P258834914393441296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007051 n) (A096045 n)

end

end A152011.P258834914393441296

namespace A152011

/-- `and(A007051(n), A096045(n))` -/
def P258834914393441296.Spec : Prop :=
  ∀ n, P258834914393441296.a n = A152011 n

end A152011

/-! ## A152011.P3118902456033955649

`and(A096045(n), A103425(n))`
-/

namespace A152011.P3118902456033955649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096045 n) (A103425 n)

end

end A152011.P3118902456033955649

namespace A152011

/-- `and(A096045(n), A103425(n))` -/
def P3118902456033955649.Spec : Prop :=
  ∀ n, P3118902456033955649.a n = A152011 n

end A152011

/-!
# A152012: Indices of Fibonacci numbers having exactly one primitive prime factor.

The programs for A152012, there is no canonical definition to state claims against.
-/

/-! ## A152012.P8263355068936491890

`eq[1, A086597(n+1)]+1`
-/

namespace A152012.P8263355068936491890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A152012.P8263355068936491890

/-! ## A152012.P8576890071097458928

`eq[1, log2(a(A086597(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A152012.P8576890071097458928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  Real.logb 2 (f2 (A086597 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A152012.P8576890071097458928

/-! ## A152012.P15321175279308450209

`eq[1, A086597(A028310(n))]`
-/

namespace A152012.P15321175279308450209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P15321175279308450209

/-! ## A152012.P16176830763453068028

`A020725(eq[1, A086597(n+1)])`
-/

namespace A152012.P16176830763453068028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152012.P16176830763453068028

/-! ## A152012.P3297146076344267297

`eq[1, A086597(A233583(n+1))]`
-/

namespace A152012.P3297146076344267297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P3297146076344267297

/-! ## A152012.P12217754908270952686

`eq[1, A086597(A065033(2*n))]`
-/

namespace A152012.P12217754908270952686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P12217754908270952686

/-! ## A152012.P5860095478313454515

`eq[1, A086597(A000007(n)+n)]`
-/

namespace A152012.P5860095478313454515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P5860095478313454515

/-! ## A152012.P15823523028041736429

`eq[1, A000065(a(A086597(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A152012.P15823523028041736429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A000065 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P15823523028041736429

/-! ## A152012.P9197998788850306345

`eq[1, A272911(a(A086597(n)))]` with `a(0)=3, a(1)=2`
-/

namespace A152012.P9197998788850306345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f2 =>
  A272911 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P9197998788850306345

/-! ## A152012.P16805467185147583554

`eq[1, A003415(a(A086597(n)))]` with `a(0)=4, a(1)=2`
-/

namespace A152012.P16805467185147583554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  A003415 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P16805467185147583554

/-! ## A152012.P18279384369168885575

`eq[1, A000720(a(A086597(n)))]` with `a(0)=5, a(1)=2`
-/

namespace A152012.P18279384369168885575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  A000720 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P18279384369168885575

/-! ## A152012.P11056948919331593613

`eq[1, A300480(a(A086597(n)))]` with `a(0)=5, a(1)=2`
-/

namespace A152012.P11056948919331593613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  A300480 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P11056948919331593613

/-! ## A152012.P385202633830392388

`eq[2, A001222(a(A086597(n)))]` with `a(0)=3, a(1)=4`
-/

namespace A152012.P385202633830392388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  A001222 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P385202633830392388

/-! ## A152012.P5744939764509069381

`eq[4, A000010(a(A086597(n)))]` with `a(0)=1, a(1)=5`
-/

namespace A152012.P5744939764509069381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  A000010 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P5744939764509069381

/-! ## A152012.P14126512643019076717

`eq[3, A007318(a(A086597(n)))]` with `a(0)=0, a(1)=8`
-/

namespace A152012.P14126512643019076717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f2 =>
  A007318 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P14126512643019076717

/-! ## A152012.P16881531779817229709

`eq[1, A000122(a(A086597(n)))]` with `a(0)=16, a(1)=0`
-/

namespace A152012.P16881531779817229709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [16, 0] fun n f2 =>
  A000122 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P16881531779817229709

/-! ## A152012.P5847672227128410901

`eq[1, A113520(a(A086597(n)))]` with `a(0)=48, a(1)=2`
-/

namespace A152012.P5847672227128410901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [48, 2] fun n f2 =>
  A113520 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P5847672227128410901

/-! ## A152012.P643610934217953832

`eq[1, A004526(a(A086597(n)²))]` with `a(0)=4`
-/

namespace A152012.P643610934217953832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A004526 (f2 (A086597 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P643610934217953832

/-! ## A152012.P6336017425337099489

`eq[1, A001221(a(A086597(n))!)]` with `a(0)=0, a(1)=2`
-/

namespace A152012.P6336017425337099489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A001221 (Nat.factorial (f2 (A086597 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152012.P6336017425337099489

/-! ## A152012.P1538900367217733373

`lt[2, A006530(a(A086597(n))+1)]` with `a(0)=0, a(1)=2`
-/

namespace A152012.P1538900367217733373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A006530 (f2 (A086597 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152012.P1538900367217733373

/-!
# A152013: Indices of Fibonacci numbers having at least two distinct primitive prime factors.

The programs for A152013, there is no canonical definition to state claims against.
-/

/-! ## A152013.P8029550249466235919

`lt[1, A086597(n+1)]+1`
-/

namespace A152013.P8029550249466235919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152013.P8029550249466235919

/-! ## A152013.P17132322055281735603

`eq[0, log2(a(A086597(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A152013.P17132322055281735603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  Real.logb 2 (f2 (A086597 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A152013.P17132322055281735603

/-! ## A152013.P6665928828688299127

`lt[1, A086597(A028310(n))]`
-/

namespace A152013.P6665928828688299127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152013.P6665928828688299127

/-! ## A152013.P2814032485718556988

`lt[1, A086597(A233583(n+1))]`
-/

namespace A152013.P2814032485718556988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152013.P2814032485718556988

/-! ## A152013.P15724868668188957894

`eq[1, A300480(a(A086597(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A152013.P15724868668188957894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A300480 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152013.P15724868668188957894

/-! ## A152013.P6594376435886379744

`eq[0, A001222(a(A086597(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A152013.P6594376435886379744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A001222 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152013.P6594376435886379744

/-! ## A152013.P18296610420837868892

`eq[1, A000007(a(A086597(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A152013.P18296610420837868892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000007 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152013.P18296610420837868892

/-! ## A152013.P11454283784476832961

`eq[1, A000010(a(A086597(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A152013.P11454283784476832961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152013.P11454283784476832961

/-! ## A152013.P8607734711862423557

`eq[1, A007318(a(A086597(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A152013.P8607734711862423557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A007318 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152013.P8607734711862423557

/-! ## A152013.P3047279724192839194

`eq[2, A000005(a(A086597(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A152013.P3047279724192839194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A000005 (f2 (A086597 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152013.P3047279724192839194

/-!
# A152014: Number of n-digit primes whose reversal is a different prime.

The programs for A152014, there is no canonical definition to state claims against.
-/

/-! ## A152014.P1431023016486244734

`A048054(n+1)-Δ[A050251(n)]`
-/

namespace A152014.P1431023016486244734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048054 (n + 1) - (f1 (n + 1) - f1 n)

end

end A152014.P1431023016486244734

/-! ## A152014.P5913124778245426348

`A048054(n+1)-A016115(n+1)`
-/

namespace A152014.P5913124778245426348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048054 (n + 1) - A016115 (n + 1)

end

end A152014.P5913124778245426348

/-! ## A152014.P14656378052004331416

`2*(A256623(n+1)-Δ[A050251(n)])`
-/

namespace A152014.P14656378052004331416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256623 (n + 1) - (f1 (n + 1) - f1 n))

end

end A152014.P14656378052004331416

/-! ## A152014.P9472460899361303005

`2*(A256623(n+1)-A016115(n+1))`
-/

namespace A152014.P9472460899361303005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256623 (n + 1) - A016115 (n + 1))

end

end A152014.P9472460899361303005

/-! ## A152014.P1222332004450131849

`2*(A048054(n+1)-A256623(n+1))`
-/

namespace A152014.P1222332004450131849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048054 (n + 1) - A256623 (n + 1))

end

end A152014.P1222332004450131849

/-!
# A152015: a(n) = n^3 - n^2 - n.

The programs for A152015, the canonical program `A152015.P10693124433547333661` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152015 has offset 0).

The definition of A152015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²-n` (program `A152015.P10693124433547333661`, by `A152015.P10693124433547333661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152015.P10693124433547333661

`n^3-n²-n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152015

/-- `n^3-n²-n` -/
def P10693124433547333661.Spec : Prop :=
  ∀ n, P10693124433547333661.a n = A152015 n

theorem P10693124433547333661.correct : P10693124433547333661.Spec := by
  intro n
  simp only [A152015]

end A152015

/-! ## A152015.P4181986530169314037

`n*(2*C(n, 2)-1)`
-/

namespace A152015.P4181986530169314037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * Nat.choose n 2 : ℤ) - 1)

end

end A152015.P4181986530169314037

namespace A152015

/-- `n*(2*C(n, 2)-1)` -/
def P4181986530169314037.Spec : Prop :=
  ∀ n, P4181986530169314037.a n = A152015 n

end A152015

/-! ## A152015.P4100548971932448039

`n*(lcm(n, 1-n)-1)`
-/

namespace A152015.P4100548971932448039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Int.lcm (n : ℤ) (1 - (n : ℤ)) : ℤ) - 1)

end

end A152015.P4100548971932448039

namespace A152015

/-- `n*(lcm(n, 1-n)-1)` -/
def P4100548971932448039.Spec : Prop :=
  ∀ n, P4100548971932448039.a n = A152015 n

end A152015

/-! ## A152015.P3882968339537563815

`n*(xor(n, -1)+n²)`
-/

namespace A152015.P3882968339537563815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.xor (n : ℤ) (-1) + (n ^ 2 : ℤ))

end

end A152015.P3882968339537563815

namespace A152015

/-- `n*(xor(n, -1)+n²)` -/
def P3882968339537563815.Spec : Prop :=
  ∀ n, P3882968339537563815.a n = A152015 n

end A152015

/-! ## A152015.P9548890097848810014

`n*or(1, ∑[2*(n-1)])`
-/

namespace A152015.P9548890097848810014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152015.P9548890097848810014

namespace A152015

/-- `n*or(1, ∑[2*(n-1)])` -/
def P9548890097848810014.Spec : Prop :=
  ∀ n, P9548890097848810014.a n = A152015 n

end A152015

/-! ## A152015.P17274428543124376875

`n*xor(1, ∑[2*(n-1)])`
-/

namespace A152015.P17274428543124376875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152015.P17274428543124376875

namespace A152015

/-- `n*xor(1, ∑[2*(n-1)])` -/
def P17274428543124376875.Spec : Prop :=
  ∀ n, P17274428543124376875.a n = A152015 n

end A152015

/-! ## A152015.P3536862992417762655

`n*(or(2, n²)-(n+3))`
-/

namespace A152015.P3536862992417762655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lor 2 (n ^ 2) : ℤ) - (n + 3 : ℤ))

end

end A152015.P3536862992417762655

namespace A152015

/-- `n*(or(2, n²)-(n+3))` -/
def P3536862992417762655.Spec : Prop :=
  ∀ n, P3536862992417762655.a n = A152015 n

end A152015

/-! ## A152015.P9268400298607333705

`n/tan(acot(n²-(n+1)))`
-/

namespace A152015.P9268400298607333705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((n ^ 2 : ℤ) - (n + 1 : ℤ) : ℝ))

end

end A152015.P9268400298607333705

namespace A152015

/-- `n/tan(acot(n²-(n+1)))` -/
def P9268400298607333705.Spec : Prop :=
  ∀ n, P9268400298607333705.a n = (A152015 n : ℝ)

end A152015

/-! ## A152015.P17374522415208621512

`n*∑[a(n-1)+2]` with `a(0)=-1, a(1)=0`
-/

namespace A152015.P17374522415208621512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152015.P17374522415208621512

namespace A152015

/-- `n*∑[a(n-1)+2]` -/
def P17374522415208621512.Spec : Prop :=
  ∀ n, P17374522415208621512.a n = A152015 n

end A152015

/-! ## A152015.P12666761217022150521

`n*(1-∑[a(n-1)-2])` with `a(0)=2`
-/

namespace A152015.P12666761217022150521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152015.P12666761217022150521

namespace A152015

/-- `n*(1-∑[a(n-1)-2])` -/
def P12666761217022150521.Spec : Prop :=
  ∀ n, P12666761217022150521.a n = A152015 n

end A152015

/-! ## A152015.P9161804308887190409

`n*((n%(n+1))²-(n+1))`
-/

namespace A152015.P9161804308887190409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((((n % (n + 1)) ^ 2 : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A152015.P9161804308887190409

namespace A152015

/-- `n*((n%(n+1))²-(n+1))` -/
def P9161804308887190409.Spec : Prop :=
  ∀ n, P9161804308887190409.a n = A152015 n

theorem P9161804308887190409.correct : P9161804308887190409.Spec := by
  intro n
  simp only [A152015, Nat.add_sub_cancel, A152015.P9161804308887190409.a, A152015.P10693124433547333661.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A152015

/-! ## A152015.P10909268488024728286

`n*(gcd(n, 2*n)²-(n+1))`
-/

namespace A152015.P10909268488024728286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.gcd n (2 * n) ^ 2 : ℤ) - (n + 1 : ℤ))

end

end A152015.P10909268488024728286

namespace A152015

/-- `n*(gcd(n, 2*n)²-(n+1))` -/
def P10909268488024728286.Spec : Prop :=
  ∀ n, P10909268488024728286.a n = A152015 n

theorem P10909268488024728286.correct : P10909268488024728286.Spec := by
  intro n
  simp only [A152015, Nat.add_sub_cancel, A152015.P10909268488024728286.a, A152015.P10693124433547333661.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A152015

/-! ## A152015.P7497041167441792119

`floor(∑[a(n-1)-2]+n^3)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A152015.P7497041167441792119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 3 : ℤ)

end

end A152015.P7497041167441792119

namespace A152015

/-- `floor(∑[a(n-1)-2]+n^3)` -/
def P7497041167441792119.Spec : Prop :=
  ∀ n, P7497041167441792119.a n = A152015 n

end A152015

/-! ## A152015.P12009229139743650601

`n*(n^(2%(n+1))-(n+1))`
-/

namespace A152015.P12009229139743650601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ (2 % (n + 1)) : ℤ) - (n + 1 : ℤ))

end

end A152015.P12009229139743650601

namespace A152015

/-- `n*(n^(2%(n+1))-(n+1))` -/
def P12009229139743650601.Spec : Prop :=
  ∀ n, P12009229139743650601.a n = A152015 n

end A152015

/-! ## A152015.P464367693430932683

`floor(lcm(n-1, n²)+ϕ-(n+1))`
-/

namespace A152015.P464367693430932683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℝ) + (Real.goldenRatio - (n + 1 : ℝ))⌋

end

end A152015.P464367693430932683

namespace A152015

/-- `floor(lcm(n-1, n²)+ϕ-(n+1))` -/
def P464367693430932683.Spec : Prop :=
  ∀ n, P464367693430932683.a n = A152015 n

end A152015

/-! ## A152015.P2913065948630752574

`n/∑[a(n-1)+2]^(-1)` with `a(0)=-1, a(1)=0`
-/

namespace A152015.P2913065948630752574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A152015.P2913065948630752574

namespace A152015

/-- `n/∑[a(n-1)+2]^(-1)` -/
def P2913065948630752574.Spec : Prop :=
  ∀ n, P2913065948630752574.a n = (A152015 n : ℚ)

end A152015

/-! ## A152015.P1418211114725848027

`n*(n²-n-and(1, 2*n+1))`
-/

namespace A152015.P1418211114725848027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) - (Nat.land 1 (2 * n + 1) : ℤ))

end

end A152015.P1418211114725848027

namespace A152015

/-- `n*(n²-n-and(1, 2*n+1))` -/
def P1418211114725848027.Spec : Prop :=
  ∀ n, P1418211114725848027.a n = A152015 n

theorem P1418211114725848027.correct : P1418211114725848027.Spec := by
  intro n
  simp only [A152015, Nat.add_sub_cancel, A152015.P1418211114725848027.a, A152015.P10693124433547333661.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A152015

/-! ## A152015.P12278620301960874894

`n*∑[(n-1)%(n+1)+n-1]`
-/

namespace A152015.P12278620301960874894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152015.P12278620301960874894

namespace A152015

/-- `n*∑[(n-1)%(n+1)+n-1]` -/
def P12278620301960874894.Spec : Prop :=
  ∀ n, P12278620301960874894.a n = A152015 n

end A152015

/-! ## A152015.P1391362619216580335

`n*(n*(n-1)-gcd(2, 2*n+1))`
-/

namespace A152015.P1391362619216580335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * ((n : ℤ) - 1) - (Nat.gcd 2 (2 * n + 1) : ℤ))

end

end A152015.P1391362619216580335

namespace A152015

/-- `n*(n*(n-1)-gcd(2, 2*n+1))` -/
def P1391362619216580335.Spec : Prop :=
  ∀ n, P1391362619216580335.a n = A152015 n

theorem P1391362619216580335.correct : P1391362619216580335.Spec := by
  intro n
  simp only [A152015, Nat.add_sub_cancel, A152015.P1391362619216580335.a, A152015.P10693124433547333661.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A152015

/-! ## A152015.P10151760958304476488

`n*(n*gcd(1-n, a(n-1))-1)` with `a(0)=0`
-/

namespace A152015.P10151760958304476488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((n * Int.gcd (1 - (n : ℤ)) (a (n - 1)) : ℤ) - 1)

end

end A152015.P10151760958304476488

namespace A152015

/-- `n*(n*gcd(1-n, a(n-1))-1)` -/
def P10151760958304476488.Spec : Prop :=
  ∀ n, P10151760958304476488.a n = A152015 n

end A152015

/-!
# A152016: a(n) = n^4 - n^3 - n^2 - n.

The programs for A152016, the canonical program `A152016.P12945735254171868270` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152016 has offset 0).

The definition of A152016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-n^3-n²-n` (program `A152016.P12945735254171868270`, by `A152016.P12945735254171868270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152016.P12945735254171868270

`n^4-n^3-n²-n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152016

/-- `n^4-n^3-n²-n` -/
def P12945735254171868270.Spec : Prop :=
  ∀ n, P12945735254171868270.a n = A152016 n

theorem P12945735254171868270.correct : P12945735254171868270.Spec := by
  intro n
  simp only [A152016]

end A152016

/-! ## A152016.P5461412839444413478

`round(n²²-n/Δ[atan(n)])`
-/

namespace A152016.P5461412839444413478
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2) ^ 2 : ℝ) - (n : ℝ) / (f1 (n + 1) - f1 n))

end

end A152016.P5461412839444413478

namespace A152016

/-- `round(n²²-n/Δ[atan(n)])` -/
def P5461412839444413478.Spec : Prop :=
  ∀ n, P5461412839444413478.a n = A152016 n

end A152016

/-! ## A152016.P16567010558201620178

`2*A171129(n)`
-/

namespace A152016.P16567010558201620178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171129 n

end

end A152016.P16567010558201620178

namespace A152016

/-- `2*A171129(n)` -/
def P16567010558201620178.Spec : Prop :=
  ∀ n, P16567010558201620178.a n = A152016 n

end A152016

/-! ## A152016.P6466776600738745311

`n*A083074(n)`
-/

namespace A152016.P6466776600738745311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A083074 n

end

end A152016.P6466776600738745311

namespace A152016

/-- `n*A083074(n)` -/
def P6466776600738745311.Spec : Prop :=
  ∀ n, P6466776600738745311.a n = A152016 n

end A152016

/-! ## A152016.P1408362699219313964

`n*(A152015(n)-1)`
-/

namespace A152016.P1408362699219313964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152015 n - 1)

end

end A152016.P1408362699219313964

namespace A152016

/-- `n*(A152015(n)-1)` -/
def P1408362699219313964.Spec : Prop :=
  ∀ n, P1408362699219313964.a n = A152016 n

end A152016

/-! ## A152016.P15801980171765996591

`n*(A152618(n)-2)`
-/

namespace A152016.P15801980171765996591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152618 n - 2)

end

end A152016.P15801980171765996591

namespace A152016

/-- `n*(A152618(n)-2)` -/
def P15801980171765996591.Spec : Prop :=
  ∀ n, P15801980171765996591.a n = A152016 n

end A152016

/-! ## A152016.P781105812606584021

`n*(A153257(n)+n)`
-/

namespace A152016.P781105812606584021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A153257 n + (n : ℤ))

end

end A152016.P781105812606584021

namespace A152016

/-- `n*(A153257(n)+n)` -/
def P781105812606584021.Spec : Prop :=
  ∀ n, P781105812606584021.a n = A152016 n

end A152016

/-! ## A152016.P6789547584852394169

`n*(A045991(n)-(n+1))`
-/

namespace A152016.P6789547584852394169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A045991 n - (n + 1 : ℤ))

end

end A152016.P6789547584852394169

namespace A152016

/-- `n*(A045991(n)-(n+1))` -/
def P6789547584852394169.Spec : Prop :=
  ∀ n, P6789547584852394169.a n = A152016 n

end A152016

/-!
# A152017: a(n) = n^5-n^4-n^3-n^2-n.

The programs for A152017, the canonical program `A152017.P13729736122009059544` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152017 has offset 0).

The definition of A152017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^4-n^3-n²-n` (program `A152017.P13729736122009059544`, by `A152017.P13729736122009059544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152017.P13729736122009059544

`n^5-n^4-n^3-n²-n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152017

/-- `n^5-n^4-n^3-n²-n` -/
def P13729736122009059544.Spec : Prop :=
  ∀ n, P13729736122009059544.a n = A152017 n

theorem P13729736122009059544.correct : P13729736122009059544.Spec := by
  intro n
  simp only [A152017]

end A152017

/-! ## A152017.P2747364851351590367

`n*A125082(n)`
-/

namespace A152017.P2747364851351590367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125082 n

end

end A152017.P2747364851351590367

namespace A152017

/-- `n*A125082(n)` -/
def P2747364851351590367.Spec : Prop :=
  ∀ n, P2747364851351590367.a n = A152017 n

end A152017

/-! ## A152017.P901460439923168798

`n*(A152016(n)-1)`
-/

namespace A152017.P901460439923168798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152016 n - 1)

end

end A152017.P901460439923168798

namespace A152017

/-- `n*(A152016(n)-1)` -/
def P901460439923168798.Spec : Prop :=
  ∀ n, P901460439923168798.a n = A152017 n

end A152017

/-! ## A152017.P10442193353814593625

`n*(A132998(n)-(n+1))`
-/

namespace A152017.P10442193353814593625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A132998 n - (n + 1 : ℤ))

end

end A152017.P10442193353814593625

namespace A152017

/-- `n*(A132998(n)-(n+1))` -/
def P10442193353814593625.Spec : Prop :=
  ∀ n, P10442193353814593625.a n = A152017 n

end A152017

/-! ## A152017.P17039698677460081351

`n*(n²²-A053698(n))`
-/

namespace A152017.P17039698677460081351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n ^ 2) ^ 2 : ℤ) - A053698 n)

end

end A152017.P17039698677460081351

namespace A152017

/-- `n*(n²²-A053698(n))` -/
def P17039698677460081351.Spec : Prop :=
  ∀ n, P17039698677460081351.a n = A152017 n

end A152017

/-! ## A152017.P10233980149947345100

`n*(A058895(n)-A098547(n))`
-/

namespace A152017.P10233980149947345100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A058895 n - A098547 n)

end

end A152017.P10233980149947345100

namespace A152017

/-- `n*(A058895(n)-A098547(n))` -/
def P10233980149947345100.Spec : Prop :=
  ∀ n, P10233980149947345100.a n = A152017 n

end A152017

/-! ## A152017.P11934906096388938231

`n*(A091940(n+1)-A100705(n))`
-/

namespace A152017.P11934906096388938231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A091940 (n + 1) - A100705 n)

end

end A152017.P11934906096388938231

namespace A152017

/-- `n*(A091940(n+1)-A100705(n))` -/
def P11934906096388938231.Spec : Prop :=
  ∀ n, P11934906096388938231.a n = A152017 n

end A152017

/-! ## A152017.P7456731599830324014

`round(sqrt((n-1)*A240932(n))-A027444(n))`
-/

namespace A152017.P7456731599830324014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n : ℤ) - 1) * A240932 n : ℝ) - (A027444 n : ℝ))

end

end A152017.P7456731599830324014

namespace A152017

/-- `round(sqrt((n-1)*A240932(n))-A027444(n))` -/
def P7456731599830324014.Spec : Prop :=
  ∀ n, P7456731599830324014.a n = A152017 n

end A152017

/-! ## A152017.P4571913887792835468

`((A027445(n)+A024003(n))*A321800(A001316(n))+1)%(6^n)`
-/

namespace A152017.P4571913887792835468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A027445 n + A024003 n) * A321800 (A001316 n).toNat + 1) (6 ^ n : ℤ)

end

end A152017.P4571913887792835468

namespace A152017

/-- `((A027445(n)+A024003(n))*A321800(A001316(n))+1)%(6^n)` -/
def P4571913887792835468.Spec : Prop :=
  ∀ n, P4571913887792835468.a n = A152017 n

end A152017

/-!
# A152018: Denominator of 1/n^2 - 1/(3*n)^2 or of 8/(9*n^2).

The programs for A152018, the canonical program `A152018.P4193007003713492745` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152018 has offset 1).

The definition of A152018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152018.P4193007003713492745

`9*A152020(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152018

/-- `9*A152020(n+1)` -/
def P4193007003713492745.Spec : Prop :=
  ∀ n, P4193007003713492745.a n = A152018 (n + 1)

theorem P4193007003713492745.correct : P4193007003713492745.Spec := by
  intro n
  simp only [A152018, Nat.add_sub_cancel]

end A152018

/-! ## A152018.P4647391046731663041

`lcm(8, (3*(n+1))²)/8`
-/

namespace A152018.P4647391046731663041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 ((3 * (n + 1)) ^ 2) : ℚ) / 8

end

end A152018.P4647391046731663041

namespace A152018

/-- `lcm(8, (3*(n+1))²)/8` -/
def P4647391046731663041.Spec : Prop :=
  ∀ n, P4647391046731663041.a n = (A152018 (n + 1) : ℚ)

end A152018

/-! ## A152018.P17790878654450950400

`(3*(n+1))²/gcd(8, (n+1)²)`
-/

namespace A152018.P17790878654450950400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1)) ^ 2 : ℚ) / (Nat.gcd 8 ((n + 1) ^ 2) : ℚ)

end

end A152018.P17790878654450950400

namespace A152018

/-- `(3*(n+1))²/gcd(8, (n+1)²)` -/
def P17790878654450950400.Spec : Prop :=
  ∀ n, P17790878654450950400.a n = (A152018 (n + 1) : ℚ)

end A152018

/-! ## A152018.P9731793129134637394

`3*lcm(4, n+1)/4*lcm(3*lcm(4, n+1)/4, (n+1)/∏{p}[n+1, #])`
-/

namespace A152018.P9731793129134637394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.lcm 4 (n + 1) : ℚ) / 4) * (Int.lcm (SequenceMachineLib.roundAway (3 * ((Nat.lcm 4 (n + 1) : ℚ) / 4))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) : ℚ)

end

end A152018.P9731793129134637394

namespace A152018

/-- `3*lcm(4, n+1)/4*lcm(3*lcm(4, n+1)/4, (n+1)/∏{p}[n+1, #])` -/
def P9731793129134637394.Spec : Prop :=
  ∀ n, P9731793129134637394.a n = (A152018 (n + 1) : ℚ)

end A152018

/-! ## A152018.P11009511921699369304

`A068219(2*(n+1))*A068219(n+1)`
-/

namespace A152018.P11009511921699369304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068219 (2 * (n + 1)) * A068219 (n + 1)

end

end A152018.P11009511921699369304

namespace A152018

/-- `A068219(2*(n+1))*A068219(n+1)` -/
def P11009511921699369304.Spec : Prop :=
  ∀ n, P11009511921699369304.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P8510145431909757489

`A129194(A165351(n+1))`
-/

namespace A152018.P8510145431909757489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A165351 (n + 1)).toNat

end

end A152018.P8510145431909757489

namespace A152018

/-- `A129194(A165351(n+1))` -/
def P8510145431909757489.Spec : Prop :=
  ∀ n, P8510145431909757489.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P14649997356334796579

`A129194(A064680(n+1)+n+1)`
-/

namespace A152018.P14649997356334796579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A064680 (n + 1) + (n + 1 : ℤ)).toNat

end

end A152018.P14649997356334796579

namespace A152018

/-- `A129194(A064680(n+1)+n+1)` -/
def P14649997356334796579.Spec : Prop :=
  ∀ n, P14649997356334796579.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P7273839117359977100

`A152020(A008486(n+1))`
-/

namespace A152018.P7273839117359977100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (A008486 (n + 1)).toNat

end

end A152018.P7273839117359977100

namespace A152018

/-- `A152020(A008486(n+1))` -/
def P7273839117359977100.Spec : Prop :=
  ∀ n, P7273839117359977100.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P480149442259127317

`A152020(A008585(n+1))`
-/

namespace A152018.P480149442259127317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (A008585 (n + 1)).toNat

end

end A152018.P480149442259127317

namespace A152018

/-- `A152020(A008585(n+1))` -/
def P480149442259127317.Spec : Prop :=
  ∀ n, P480149442259127317.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P4418012203806623305

`A129194(A145051(2*n+n+2))`
-/

namespace A152018.P4418012203806623305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A145051 (2 * n + (n + 2))).toNat

end

end A152018.P4418012203806623305

namespace A152018

/-- `A129194(A145051(2*n+n+2))` -/
def P4418012203806623305.Spec : Prop :=
  ∀ n, P4418012203806623305.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P12739834096842502290

`A152020(A298026(n+1))`
-/

namespace A152018.P12739834096842502290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (A298026 (n + 1)).toNat

end

end A152018.P12739834096842502290

namespace A152018

/-- `A152020(A298026(n+1))` -/
def P12739834096842502290.Spec : Prop :=
  ∀ n, P12739834096842502290.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P11594071174087761096

`9*A106609((n+1)²)`
-/

namespace A152018.P11594071174087761096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A106609 ((n + 1) ^ 2)

end

end A152018.P11594071174087761096

namespace A152018

/-- `9*A106609((n+1)²)` -/
def P11594071174087761096.Spec : Prop :=
  ∀ n, P11594071174087761096.a n = A152018 (n + 1)

end A152018

/-! ## A152018.P4074661817725203022

`A008591(A152020(n+1))`
-/

namespace A152018.P4074661817725203022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A152020 (n + 1)).toNat

end

end A152018.P4074661817725203022

namespace A152018

/-- `A008591(A152020(n+1))` -/
def P4074661817725203022.Spec : Prop :=
  ∀ n, P4074661817725203022.a n = A152018 (n + 1)

end A152018

/-!
# A152020: Denominator of 8/(9*n^2) divided by 9.

The programs for A152020, the canonical program `A152020.P1852837482238371667` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152020 has offset 1).

The definition of A152020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152020.P1852837482238371667

`(n+1)²/gcd((n+1)², 8)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152020

/-- `(n+1)²/gcd((n+1)², 8)` -/
def P1852837482238371667.Spec : Prop :=
  ∀ n, P1852837482238371667.a n = (A152020 (n + 1) : ℚ)

end A152020

/-! ## A152020.P7273756259651054825

`A152018(n+1)/9`
-/

namespace A152020.P7273756259651054825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152018 (n + 1) : ℚ) / 9

end

end A152020.P7273756259651054825

namespace A152020

/-- `A152018(n+1)/9` -/
def P7273756259651054825.Spec : Prop :=
  ∀ n, P7273756259651054825.a n = (A152020 (n + 1) : ℚ)

end A152020

/-! ## A152020.P15550799147282052816

`lcm(8, (n+1)²)/8`
-/

namespace A152020.P15550799147282052816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 ((n + 1) ^ 2) : ℚ) / 8

end

end A152020.P15550799147282052816

namespace A152020

/-- `lcm(8, (n+1)²)/8` -/
def P15550799147282052816.Spec : Prop :=
  ∀ n, P15550799147282052816.a n = (A152020 (n + 1) : ℚ)

end A152020

/-! ## A152020.P9457888445381269935

`A129194(lcm(2, n+1)/2)`
-/

namespace A152020.P9457888445381269935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A152020.P9457888445381269935

namespace A152020

/-- `A129194(lcm(2, n+1)/2)` -/
def P9457888445381269935.Spec : Prop :=
  ∀ n, P9457888445381269935.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P4150063567924959138

`A129194(gcd(n+1, ∑[n+1]))`
-/

namespace A152020.P4150063567924959138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A152020.P4150063567924959138

namespace A152020

/-- `A129194(gcd(n+1, ∑[n+1]))` -/
def P4150063567924959138.Spec : Prop :=
  ∀ n, P4150063567924959138.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P16856675482704529799

`gcd(∑[n]², ∑[A190636(n+1)])`
-/

namespace A152020.P16856675482704529799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A152020.P16856675482704529799

namespace A152020

/-- `gcd(∑[n]², ∑[A190636(n+1)])` -/
def P16856675482704529799.Spec : Prop :=
  ∀ n, (P16856675482704529799.a n : ℤ) = A152020 (n + 1)

end A152020

/-! ## A152020.P11589869267848982776

`A129194(A026741(n+1))`
-/

namespace A152020.P11589869267848982776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A026741 (n + 1)).toNat

end

end A152020.P11589869267848982776

namespace A152020

/-- `A129194(A026741(n+1))` -/
def P11589869267848982776.Spec : Prop :=
  ∀ n, P11589869267848982776.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P8722895440293630687

`A129194((n+1)/A000034(n))`
-/

namespace A152020.P8722895440293630687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A152020.P8722895440293630687

namespace A152020

/-- `A129194((n+1)/A000034(n))` -/
def P8722895440293630687.Spec : Prop :=
  ∀ n, P8722895440293630687.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P4742298727378552226

`gcd(A050509(n), A152018(n+1))`
-/

namespace A152020.P4742298727378552226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050509 n) (A152018 (n + 1))

end

end A152020.P4742298727378552226

namespace A152020

/-- `gcd(A050509(n), A152018(n+1))` -/
def P4742298727378552226.Spec : Prop :=
  ∀ n, (P4742298727378552226.a n : ℤ) = A152020 (n + 1)

end A152020

/-! ## A152020.P3383278824676110004

`gcd(A277542(n+1), A329754(n))`
-/

namespace A152020.P3383278824676110004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277542 (n + 1)) (A329754 n)

end

end A152020.P3383278824676110004

namespace A152020

/-- `gcd(A277542(n+1), A329754(n))` -/
def P3383278824676110004.Spec : Prop :=
  ∀ n, (P3383278824676110004.a n : ℤ) = A152020 (n + 1)

end A152020

/-! ## A152020.P15681841841555370247

`A129194((n+1)/A040001(n+1))`
-/

namespace A152020.P15681841841555370247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A040001 (n + 1) : ℚ))).toNat

end

end A152020.P15681841841555370247

namespace A152020

/-- `A129194((n+1)/A040001(n+1))` -/
def P15681841841555370247.Spec : Prop :=
  ∀ n, P15681841841555370247.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P11414493188017054092

`A152018(n+1)%A137933(n+1)`
-/

namespace A152020.P11414493188017054092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152018 (n + 1)) (A137933 (n + 1))

end

end A152020.P11414493188017054092

namespace A152020

/-- `A152018(n+1)%A137933(n+1)` -/
def P11414493188017054092.Spec : Prop :=
  ∀ n, P11414493188017054092.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P2339538869006499511

`A129194(A129194(n+1)/(n+1))`
-/

namespace A152020.P2339538869006499511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (SequenceMachineLib.roundAway ((A129194 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A152020.P2339538869006499511

namespace A152020

/-- `A129194(A129194(n+1)/(n+1))` -/
def P2339538869006499511.Spec : Prop :=
  ∀ n, P2339538869006499511.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P198660024290715283

`A129194(A060819(2*(n+1)))`
-/

namespace A152020.P198660024290715283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A060819 (2 * (n + 1))).toNat

end

end A152020.P198660024290715283

namespace A152020

/-- `A129194(A060819(2*(n+1)))` -/
def P198660024290715283.Spec : Prop :=
  ∀ n, P198660024290715283.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P18321381583332358884

`A060819(2*(n+1))*A060819(n+1)`
-/

namespace A152020.P18321381583332358884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * (n + 1)) * A060819 (n + 1)

end

end A152020.P18321381583332358884

namespace A152020

/-- `A060819(2*(n+1))*A060819(n+1)` -/
def P18321381583332358884.Spec : Prop :=
  ∀ n, P18321381583332358884.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P16090177529317004195

`A026741(n+1)*A026741(A225975(n+1))`
-/

namespace A152020.P16090177529317004195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A026741 (A225975 (n + 1)).toNat

end

end A152020.P16090177529317004195

namespace A152020

/-- `A026741(n+1)*A026741(A225975(n+1))` -/
def P16090177529317004195.Spec : Prop :=
  ∀ n, P16090177529317004195.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P2471379843391706697

`A106609((n+1)²)`
-/

namespace A152020.P2471379843391706697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 ((n + 1) ^ 2)

end

end A152020.P2471379843391706697

namespace A152020

/-- `A106609((n+1)²)` -/
def P2471379843391706697.Spec : Prop :=
  ∀ n, P2471379843391706697.a n = A152020 (n + 1)

end A152020

/-! ## A152020.P7387446154869701616

`A232625((n+1)²)/2`
-/

namespace A152020.P7387446154869701616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232625 ((n + 1) ^ 2) : ℚ) / 2

end

end A152020.P7387446154869701616

namespace A152020

/-- `A232625((n+1)²)/2` -/
def P7387446154869701616.Spec : Prop :=
  ∀ n, P7387446154869701616.a n = (A152020 (n + 1) : ℚ)

end A152020

/-! ## A152020.P14306602049094813379

`(n+1)²/A101412((n+1)²)`
-/

namespace A152020.P14306602049094813379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A101412 ((n + 1) ^ 2) : ℚ)

end

end A152020.P14306602049094813379

namespace A152020

/-- `(n+1)²/A101412((n+1)²)` -/
def P14306602049094813379.Spec : Prop :=
  ∀ n, P14306602049094813379.a n = (A152020 (n + 1) : ℚ)

end A152020

/-! ## A152020.P11249963109512563724

`A026741(A030640(n)²)`
-/

namespace A152020.P11249963109512563724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A030640 n ^ 2).toNat

end

end A152020.P11249963109512563724

namespace A152020

/-- `A026741(A030640(n)²)` -/
def P11249963109512563724.Spec : Prop :=
  ∀ n, P11249963109512563724.a n = A152020 (n + 1)

end A152020

/-!
# A152021: Numbers a(n) are obtained by the direct application of sieve of Eratosthenes for A000695: retaining A000695(2)=4, we delete all multiples of 4, which are more than 4; retaining A000695(3)=5, we delete all multiples of 5, which are more than 5, etc.

The programs for A152021, there is no canonical definition to state claims against.
-/

/-! ## A152021.P3623452374708220500

`A000695(A206074(n+1))`
-/

namespace A152021.P3623452374708220500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A206074 (n + 1)).toNat

end

end A152021.P3623452374708220500

/-! ## A152021.P10916583764197889704

`A000695(lt[0, A257000(n)])`
-/

namespace A152021.P10916583764197889704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A152021.P10916583764197889704

/-! ## A152021.P3433786786199346322

`A000695(eq[1, A257000(n)])`
-/

namespace A152021.P3433786786199346322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152021.P3433786786199346322

/-! ## A152021.P14152265310535515584

`A000695(record[A325643(n+2)])`
-/

namespace A152021.P14152265310535515584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325643 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152021.P14152265310535515584

/-!
# A152022: Numbers > 1 in A000695 which are not in A152021.

The programs for A152022, there is no canonical definition to state claims against.
-/

/-! ## A152022.P5917704795469266062

`A000695(A091212(n+1))`
-/

namespace A152022.P5917704795469266062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A091212 (n + 1)).toNat

end

end A152022.P5917704795469266062

/-! ## A152022.P17558780808517921674

`A000695(A205783(n+2))`
-/

namespace A152022.P17558780808517921674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A205783 (n + 2)).toNat

end

end A152022.P17558780808517921674

/-! ## A152022.P5006903191922567568

`A000695(lt[A257000(n), A107393(n)])`
-/

namespace A152022.P5006903191922567568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152022.P5006903191922567568

/-! ## A152022.P4751094799864754810

`A000695(eq[A019590(n+1), A257000(n)])`
-/

namespace A152022.P4751094799864754810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152022.P4751094799864754810

/-! ## A152022.P12986130951840806002

`A000695(lt[A296150(3*n+1), A003415(n)])`
-/

namespace A152022.P12986130951840806002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152022.P12986130951840806002

/-!
# A152023: Numbers in A152022 which are not products of terms of A152021.

The programs for A152023, there is no canonical definition to state claims against.
-/

/-! ## A152023.P2866198108132185768

`A000695(A208135(n+1))`
-/

namespace A152023.P2866198108132185768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A208135 (n + 1)).toNat

end

end A152023.P2866198108132185768

/-!
# A152024: Largest prime factor in the subfactorial of n.

The programs for A152024, the canonical program `A152024.P13674499214346546468` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152024 has offset 3).

The definition of A152024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152024.P13674499214346546468

`A006530(A000166(n+3))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A152024

/-- `A006530(A000166(n+3))` -/
def P13674499214346546468.Spec : Prop :=
  ∀ n, P13674499214346546468.a n = A152024 (n + 3)

theorem P13674499214346546468.correct : P13674499214346546468.Spec := by
  intro n
  simp only [A152024, Nat.add_sub_cancel]

end A152024

/-! ## A152024.P14091522910127113512

`A006530(2*A053557(n+3))`
-/

namespace A152024.P14091522910127113512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A053557 (n + 3)).toNat

end

end A152024.P14091522910127113512

namespace A152024

/-- `A006530(2*A053557(n+3))` -/
def P14091522910127113512.Spec : Prop :=
  ∀ n, P14091522910127113512.a n = A152024 (n + 3)

end A152024

/-! ## A152024.P7226591383679949304

`A006530(A053557(n+3)+C(2, n+2))`
-/

namespace A152024.P7226591383679949304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053557 (n + 3) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A152024.P7226591383679949304

namespace A152024

/-- `A006530(A053557(n+3)+C(2, n+2))` -/
def P7226591383679949304.Spec : Prop :=
  ∀ n, P7226591383679949304.a n = A152024 (n + 3)

end A152024

/-!
# A152029: a(n) = 2^n*(2*n)!/((n+1)!).

The programs for A152029, the canonical program `A152029.P2042950158805901060` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152029 has offset 0).

The definition of A152029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152029.P2042950158805901060

`2^n*A001761(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A152029

/-- `2^n*A001761(n)` -/
def P2042950158805901060.Spec : Prop :=
  ∀ n, P2042950158805901060.a n = A152029 n

theorem P2042950158805901060.correct : P2042950158805901060.Spec := by
  intro n
  simp only [A152029]

end A152029

/-! ## A152029.P15103840590265565453

`2^n*(2*n)!/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152029.P15103840590265565453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A152029.P15103840590265565453

namespace A152029

/-- `2^n*(2*n)!/(n+1)!` -/
def P15103840590265565453.Spec : Prop :=
  ∀ n, P15103840590265565453.a n = (A152029 n : ℚ)

end A152029

/-! ## A152029.P6831353468603461387

`A065140(n)/(n+1)!`
-/

namespace A152029.P6831353468603461387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065140 n : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A152029.P6831353468603461387

namespace A152029

/-- `A065140(n)/(n+1)!` -/
def P6831353468603461387.Spec : Prop :=
  ∀ n, P6831353468603461387.a n = (A152029 n : ℚ)

end A152029

/-! ## A152029.P14757737102389455784

`n*(2-3/(n+1))*4*a(n-1)` with `a(0)=1`
-/

namespace A152029.P14757737102389455784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((2 - 3 / (n + 1 : ℚ)) * (4 * a (n - 1)))

end

end A152029.P14757737102389455784

namespace A152029

/-- `n*(2-3/(n+1))*4*a(n-1)` -/
def P14757737102389455784.Spec : Prop :=
  ∀ n, P14757737102389455784.a n = (A152029 n : ℚ)

end A152029

/-! ## A152029.P4730022161805711540

`C(2*n, n)/(n+1)*2^n*∏[round(1/acot(n))]`
-/

namespace A152029.P4730022161805711540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A152029.P4730022161805711540

namespace A152029

/-- `C(2*n, n)/(n+1)*2^n*∏[round(1/acot(n))]` -/
def P4730022161805711540.Spec : Prop :=
  ∀ n, P4730022161805711540.a n = (A152029 n : ℚ)

end A152029

/-!
# A152030: a(n)=n^6-n^5-n^4-n^3-n^2-n.

The programs for A152030, the canonical program `A152030.P1095115438305785916` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152030 has offset 1).

The definition of A152030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-n^5-n^4-n^3-n²-n` (program `A152030.P1095115438305785916`, by `A152030.P1095115438305785916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152030.P1095115438305785916

`n^6-n^5-n^4-n^3-n²-n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152030

/-- `n^6-n^5-n^4-n^3-n²-n` -/
def P1095115438305785916.Spec : Prop :=
  ∀ n, P1095115438305785916.a n = A152030 (n + 1)

theorem P1095115438305785916.correct : P1095115438305785916.Spec := by
  intro n
  simp only [A152030, Nat.add_sub_cancel]

end A152030

/-! ## A152030.P4427980549728822989

`n*A125083(n)`
-/

namespace A152030.P4427980549728822989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125083 n

end

end A152030.P4427980549728822989

namespace A152030

/-- `n*A125083(n)` -/
def P4427980549728822989.Spec : Prop :=
  ∀ n, P4427980549728822989.a n = A152030 (n + 1)

end A152030

/-! ## A152030.P18032791082672802900

`n*(A152017(n)-1)`
-/

namespace A152030.P18032791082672802900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152017 n - 1)

end

end A152030.P18032791082672802900

namespace A152030

/-- `n*(A152017(n)-1)` -/
def P18032791082672802900.Spec : Prop :=
  ∀ n, P18032791082672802900.a n = A152030 (n + 1)

end A152030

/-! ## A152030.P2913615764343293966

`-(n*(A027445(n)+A024003(n)))`
-/

namespace A152030.P2913615764343293966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (A027445 n + A024003 n))

end

end A152030.P2913615764343293966

namespace A152030

/-- `-(n*(A027445(n)+A024003(n)))` -/
def P2913615764343293966.Spec : Prop :=
  ∀ n, P2913615764343293966.a n = A152030 (n + 1)

end A152030

/-! ## A152030.P1629570992942512913

`n*(A027445(n)+A024003(n))*A321800(A001316(n))`
-/

namespace A152030.P1629570992942512913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((A027445 n + A024003 n) * A321800 (A001316 n).toNat)

end

end A152030.P1629570992942512913

namespace A152030

/-- `n*(A027445(n)+A024003(n))*A321800(A001316(n))` -/
def P1629570992942512913.Spec : Prop :=
  ∀ n, P1629570992942512913.a n = A152030 (n + 1)

end A152030

/-! ## A152030.P936238025559573968

`n*(A027445(n)+A024003(n))*A008683(A306787(n+1))`
-/

namespace A152030.P936238025559573968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((A027445 n + A024003 n) * A008683 (A306787 (n + 1)).toNat)

end

end A152030.P936238025559573968

namespace A152030

/-- `n*(A027445(n)+A024003(n))*A008683(A306787(n+1))` -/
def P936238025559573968.Spec : Prop :=
  ∀ n, P936238025559573968.a n = A152030 (n + 1)

end A152030

/-!
# A152031: a(n) = n^5 + n^4 + n^3 + n^2 + n.

The programs for A152031, the canonical program `A152031.P4813536305443447541` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152031 has offset 0).

The definition of A152031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n^4+n^3+n²+n` (program `A152031.P4813536305443447541`, by `A152031.P4813536305443447541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152031.P4813536305443447541

`n^5+n^4+n^3+n²+n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A152031

/-- `n^5+n^4+n^3+n²+n` -/
def P4813536305443447541.Spec : Prop :=
  ∀ n, (P4813536305443447541.a n : ℤ) = A152031 n

theorem P4813536305443447541.correct : P4813536305443447541.Spec := by
  intro n
  simp only [A152031]

end A152031

/-! ## A152031.P11503939434393474037

`n*A053699(n)`
-/

namespace A152031.P11503939434393474037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053699 n

end

end A152031.P11503939434393474037

namespace A152031

/-- `n*A053699(n)` -/
def P11503939434393474037.Spec : Prop :=
  ∀ n, P11503939434393474037.a n = A152031 n

end A152031

/-! ## A152031.P13698113769793675245

`n*ceil((n+1)/acot(n)^3)`
-/

namespace A152031.P13698113769793675245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A152031.P13698113769793675245

namespace A152031

/-- `n*ceil((n+1)/acot(n)^3)` -/
def P13698113769793675245.Spec : Prop :=
  ∀ n, P13698113769793675245.a n = A152031 n

end A152031

/-! ## A152031.P1408769068265385626

`lcm(n, ceil((n+1)/acot(n)^3))`
-/

namespace A152031.P1408769068265385626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A152031.P1408769068265385626

namespace A152031

/-- `lcm(n, ceil((n+1)/acot(n)^3))` -/
def P1408769068265385626.Spec : Prop :=
  ∀ n, (P1408769068265385626.a n : ℤ) = A152031 n

end A152031

/-! ## A152031.P8108810516528505819

`n*(A027445(n)+1)`
-/

namespace A152031.P8108810516528505819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027445 n + 1)

end

end A152031.P8108810516528505819

namespace A152031

/-- `n*(A027445(n)+1)` -/
def P8108810516528505819.Spec : Prop :=
  ∀ n, P8108810516528505819.a n = A152031 n

end A152031

/-! ## A152031.P7857402712570795111

`n*(A100019(n)+1+n)`
-/

namespace A152031.P7857402712570795111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100019 n + 1 + (n : ℤ))

end

end A152031.P7857402712570795111

namespace A152031

/-- `n*(A100019(n)+1+n)` -/
def P7857402712570795111.Spec : Prop :=
  ∀ n, P7857402712570795111.a n = A152031 n

end A152031

/-! ## A152031.P3341903721823975227

`lcm(A038608(n), A053699(n))`
-/

namespace A152031.P3341903721823975227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038608 n) (A053699 n)

end

end A152031.P3341903721823975227

namespace A152031

/-- `lcm(A038608(n), A053699(n))` -/
def P3341903721823975227.Spec : Prop :=
  ∀ n, (P3341903721823975227.a n : ℤ) = A152031 n

end A152031

/-! ## A152031.P3787175556129946496

`n*(A027444(n)+A002523(n))`
-/

namespace A152031.P3787175556129946496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027444 n + A002523 n)

end

end A152031.P3787175556129946496

namespace A152031

/-- `n*(A027444(n)+A002523(n))` -/
def P3787175556129946496.Spec : Prop :=
  ∀ n, P3787175556129946496.a n = A152031 n

end A152031

/-! ## A152031.P7077752074502587579

`n*(A053698(n)+A000583(n))`
-/

namespace A152031.P7077752074502587579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A053698 n + A000583 n)

end

end A152031.P7077752074502587579

namespace A152031

/-- `n*(A053698(n)+A000583(n))` -/
def P7077752074502587579.Spec : Prop :=
  ∀ n, P7077752074502587579.a n = A152031 n

end A152031

/-! ## A152031.P12323407767869852379

`n*(A059826(n)+A034262(n))`
-/

namespace A152031.P12323407767869852379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A059826 n + A034262 n)

end

end A152031.P12323407767869852379

namespace A152031

/-- `n*(A059826(n)+A034262(n))` -/
def P12323407767869852379.Spec : Prop :=
  ∀ n, P12323407767869852379.a n = A152031 n

end A152031

/-! ## A152031.P7879909466969918233

`n*A059839(n)/A060884(n)`
-/

namespace A152031.P7879909466969918233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A059839 n : ℚ) / (A060884 n : ℚ))

end

end A152031.P7879909466969918233

namespace A152031

/-- `n*A059839(n)/A060884(n)` -/
def P7879909466969918233.Spec : Prop :=
  ∀ n, P7879909466969918233.a n = (A152031 n : ℚ)

end A152031

/-! ## A152031.P9803391156318009128

`n/A069779(n)*A218503(n)`
-/

namespace A152031.P9803391156318009128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A069779 n : ℚ) * (A218503 n : ℚ)

end

end A152031.P9803391156318009128

namespace A152031

/-- `n/A069779(n)*A218503(n)` -/
def P9803391156318009128.Spec : Prop :=
  ∀ n, P9803391156318009128.a n = (A152031 n : ℚ)

end A152031

/-! ## A152031.P2144865694818854308

`n*gcd(A024003(n), A059839(n))`
-/

namespace A152031.P2144865694818854308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A024003 n) (A059839 n)

end

end A152031.P2144865694818854308

namespace A152031

/-- `n*gcd(A024003(n), A059839(n))` -/
def P2144865694818854308.Spec : Prop :=
  ∀ n, (P2144865694818854308.a n : ℤ) = A152031 n

end A152031

/-!
# A152032: a(n) = 3/8 + (3/8)*(-1)^n + ((n+1)/4)*(-1)^(n+1) + ((n+2)*(n+1)/4)*(-1)^(n+2).

The programs for A152032, the canonical program `A152032.P16894089615779645451` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152032 has offset 0).

The definition of A152032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152032.P16894089615779645451

`∑[(∑[n]+1)*(-1)^n]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152032

/-- `∑[(∑[n]+1)*(-1)^n]` -/
def P16894089615779645451.Spec : Prop :=
  ∀ n, P16894089615779645451.a n = A152032 n

theorem P16894089615779645451.correct : P16894089615779645451.Spec := by
  intro n
  simp only [A152032]

end A152032

/-! ## A152032.P14529411956258590444

`ogf((1+x+x^2)/(1+2x-2x^3-x^4))`
-/

namespace A152032.P14529411956258590444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 2, 0, -2, -1] n

end

end A152032.P14529411956258590444

namespace A152032

/-- `ogf((1+x+x^2)/(1+2x-2x^3-x^4))` -/
def P14529411956258590444.Spec : Prop :=
  ∀ n, P14529411956258590444.a n = A152032 n

end A152032

/-! ## A152032.P16949303602468987355

`(-1)^n*∑[ceil(xor(1, n)/2)]`
-/

namespace A152032.P16949303602468987355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152032.P16949303602468987355

namespace A152032

/-- `(-1)^n*∑[ceil(xor(1, n)/2)]` -/
def P16949303602468987355.Spec : Prop :=
  ∀ n, P16949303602468987355.a n = A152032 n

end A152032

/-! ## A152032.P2526316184900886478

`∑[ceil(xor(1, n)/2)]/(-1)^n`
-/

namespace A152032.P2526316184900886478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A152032.P2526316184900886478

namespace A152032

/-- `∑[ceil(xor(1, n)/2)]/(-1)^n` -/
def P2526316184900886478.Spec : Prop :=
  ∀ n, P2526316184900886478.a n = (A152032 n : ℚ)

end A152032

/-! ## A152032.P17961791611359404338

`Δ[lcm(2, n)/2-a(n-1)]` with `a(0)=0`
-/

namespace A152032.P17961791611359404338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.lcm 2 n : ℚ) / 2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152032.P17961791611359404338

namespace A152032

/-- `Δ[lcm(2, n)/2-a(n-1)]` -/
def P17961791611359404338.Spec : Prop :=
  ∀ n, P17961791611359404338.a n = (A152032 n : ℚ)

end A152032

/-! ## A152032.P8307975094066829511

`Δ[n/gcd(2, n)-a(n-1)]` with `a(0)=0`
-/

namespace A152032.P8307975094066829511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℚ) / (Nat.gcd 2 n : ℚ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152032.P8307975094066829511

namespace A152032

/-- `Δ[n/gcd(2, n)-a(n-1)]` -/
def P8307975094066829511.Spec : Prop :=
  ∀ n, P8307975094066829511.a n = (A152032 n : ℚ)

end A152032

/-! ## A152032.P17109950498210503717

`(-1)^n*∑[n-a(n-1)]` with `a(0)=1`
-/

namespace A152032.P17109950498210503717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152032.P17109950498210503717

namespace A152032

/-- `(-1)^n*∑[n-a(n-1)]` -/
def P17109950498210503717.Spec : Prop :=
  ∀ n, P17109950498210503717.a n = A152032 n

end A152032

/-! ## A152032.P14245121164716515644

`∑[n-a(n-1)]/(-1)^n` with `a(0)=1`
-/

namespace A152032.P14245121164716515644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A152032.P14245121164716515644

namespace A152032

/-- `∑[n-a(n-1)]/(-1)^n` -/
def P14245121164716515644.Spec : Prop :=
  ∀ n, P14245121164716515644.a n = (A152032 n : ℚ)

end A152032

/-! ## A152032.P1699185726122562464

`a(n-2)+n*(-1)^n` with `a(0)=1, a(1)=-1`
-/

namespace A152032.P1699185726122562464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) + (n : ℤ) * (-1) ^ n

end

end A152032.P1699185726122562464

namespace A152032

/-- `a(n-2)+n*(-1)^n` -/
def P1699185726122562464.Spec : Prop :=
  ∀ n, P1699185726122562464.a n = A152032 n

end A152032

/-! ## A152032.P5721680831915531589

`floor(a(n-2)+n/(-1)^n)` with `a(0)=1, a(1)=-1`
-/

namespace A152032.P5721680831915531589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (n : ℚ) / ((-1) ^ n : ℚ)⌋

end

end A152032.P5721680831915531589

namespace A152032

/-- `floor(a(n-2)+n/(-1)^n)` -/
def P5721680831915531589.Spec : Prop :=
  ∀ n, P5721680831915531589.a n = A152032 n

end A152032

/-! ## A152032.P3303865376919742239

`ceil((2-(n+2)*a(n-1))/n)` with `a(0)=1`
-/

namespace A152032.P3303865376919742239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(2 - (n + 2 : ℤ) * a (n - 1) : ℚ) / (n : ℚ)⌉

end

end A152032.P3303865376919742239

namespace A152032

/-- `ceil((2-(n+2)*a(n-1))/n)` -/
def P3303865376919742239.Spec : Prop :=
  ∀ n, P3303865376919742239.a n = A152032 n

end A152032

/-! ## A152032.P1506568289466678201

`floor((1-(n+2)*a(n-1))/n)+1` with `a(0)=1`
-/

namespace A152032.P1506568289466678201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 - (n + 2 : ℤ) * a (n - 1) : ℚ) / (n : ℚ)⌋ + 1

end

end A152032.P1506568289466678201

namespace A152032

/-- `floor((1-(n+2)*a(n-1))/n)+1` -/
def P1506568289466678201.Spec : Prop :=
  ∀ n, P1506568289466678201.a n = A152032 n

end A152032

/-! ## A152032.P15335644239361485315

`∑[(-1)^n-a(n-1)]-a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A152032.P15335644239361485315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (-1) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A152032.P15335644239361485315

namespace A152032

/-- `∑[(-1)^n-a(n-1)]-a(n-1)` -/
def P15335644239361485315.Spec : Prop :=
  ∀ n, P15335644239361485315.a n = A152032 n

end A152032

/-! ## A152032.P14861372291040856412

`floor(1-(2*a(n-1)-1)/n-a(n-1))` with `a(0)=1`
-/

namespace A152032.P14861372291040856412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊1 - (2 * a (n - 1) - 1 : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A152032.P14861372291040856412

namespace A152032

/-- `floor(1-(2*a(n-1)-1)/n-a(n-1))` -/
def P14861372291040856412.Spec : Prop :=
  ∀ n, P14861372291040856412.a n = A152032 n

end A152032

/-! ## A152032.P13271919454875171348

`floor(1-(a(n-1)+a(n-1)-1)/n-a(n-1))` with `a(0)=1`
-/

namespace A152032.P13271919454875171348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊1 - (a (n - 1) + (a (n - 1) - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A152032.P13271919454875171348

namespace A152032

/-- `floor(1-(a(n-1)+a(n-1)-1)/n-a(n-1))` -/
def P13271919454875171348.Spec : Prop :=
  ∀ n, P13271919454875171348.a n = A152032 n

end A152032

/-! ## A152032.P10443601126448950949

`1-(a(n-1)-floor((1-a(n-1)-a(n-1))/n))` with `a(0)=1`
-/

namespace A152032.P10443601126448950949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - ⌊(1 - a (n - 1) - a (n - 1) : ℚ) / (n : ℚ)⌋)

end

end A152032.P10443601126448950949

namespace A152032

/-- `1-(a(n-1)-floor((1-a(n-1)-a(n-1))/n))` -/
def P10443601126448950949.Spec : Prop :=
  ∀ n, P10443601126448950949.a n = A152032 n

end A152032

/-! ## A152032.P12124046844140652037

`ceil(A162395(n+1)/4)`
-/

namespace A152032.P12124046844140652037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162395 (n + 1) : ℚ) / 4⌉

end

end A152032.P12124046844140652037

namespace A152032

/-- `ceil(A162395(n+1)/4)` -/
def P12124046844140652037.Spec : Prop :=
  ∀ n, P12124046844140652037.a n = A152032 n

end A152032

/-! ## A152032.P8787291427797529285

`A083392(n)+char[2*n]`
-/

namespace A152032.P8787291427797529285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152032.P8787291427797529285

namespace A152032

/-- `A083392(n)+char[2*n]` -/
def P8787291427797529285.Spec : Prop :=
  ∀ n, P8787291427797529285.a n = A152032 n

end A152032

/-! ## A152032.P3560161176877038076

`A051494(n)-A129889(n)`
-/

namespace A152032.P3560161176877038076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 n - A129889 n

end

end A152032.P3560161176877038076

namespace A152032

/-- `A051494(n)-A129889(n)` -/
def P3560161176877038076.Spec : Prop :=
  ∀ n, P3560161176877038076.a n = A152032 n

end A152032

/-! ## A152032.P16386277063902266661

`xor(A059841(n), A083392(n))`
-/

namespace A152032.P16386277063902266661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A083392 n)

end

end A152032.P16386277063902266661

namespace A152032

/-- `xor(A059841(n), A083392(n))` -/
def P16386277063902266661.Spec : Prop :=
  ∀ n, P16386277063902266661.a n = A152032 n

end A152032

/-!
# A152035: Expansion of g.f. (1-2*x^2)/(1-2*x-2*x^2).

The programs for A152035, the canonical program `A152035.P4361442551587740597` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152035 has offset 0).

The definition of A152035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1-2x-2x^2))` (program `A152035.P4361442551587740597`, by `A152035.P4361442551587740597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152035.P4361442551587740597

`ogf((1-2x^2)/(1-2x-2x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152035

/-- `ogf((1-2x^2)/(1-2x-2x^2))` -/
def P4361442551587740597.Spec : Prop :=
  ∀ n, P4361442551587740597.a n = A152035 n

theorem P4361442551587740597.correct : P4361442551587740597.Spec := by
  intro n
  simp only [A152035]

end A152035

/-! ## A152035.P16477769356536500940

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A152035.P16477769356536500940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A152035.P16477769356536500940

namespace A152035

/-- `2*(a(n-1)+a(n-2))` -/
def P16477769356536500940.Spec : Prop :=
  ∀ n, (P16477769356536500940.a n : ℤ) = A152035 n

end A152035

/-! ## A152035.P919867680564227293

`round((sqrt(3)+1)^n/sqrt(3))`
-/

namespace A152035.P919867680564227293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) ^ n / Real.sqrt (3 : ℝ))

end

end A152035.P919867680564227293

namespace A152035

/-- `round((sqrt(3)+1)^n/sqrt(3))` -/
def P919867680564227293.Spec : Prop :=
  ∀ n, P919867680564227293.a n = A152035 n

end A152035

/-! ## A152035.P11880045271561642004

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A152035.P11880045271561642004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A152035.P11880045271561642004

namespace A152035

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P11880045271561642004.Spec : Prop :=
  ∀ n, P11880045271561642004.a n = A152035 n

end A152035

/-! ## A152035.P5538045367872732508

`lcm(2, 1-(a(n-1)+a(n-2)))+2` with `a(0)=1, a(1)=2`
-/

namespace A152035.P5538045367872732508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm 2 (1 - (a (n - 1) + a (n - 2) : ℤ)) + 2

end

end A152035.P5538045367872732508

namespace A152035

/-- `lcm(2, 1-(a(n-1)+a(n-2)))+2` -/
def P5538045367872732508.Spec : Prop :=
  ∀ n, (P5538045367872732508.a n : ℤ) = A152035 n

end A152035

/-! ## A152035.P15244456949896973868

`2*(or(1, a(n-2))-(1-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A152035.P15244456949896973868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (Int.lor 1 (a (n - 2)) - (1 - a (n - 1)))

end

end A152035.P15244456949896973868

namespace A152035

/-- `2*(or(1, a(n-2))-(1-a(n-1)))` -/
def P15244456949896973868.Spec : Prop :=
  ∀ n, P15244456949896973868.a n = A152035 n

end A152035

/-! ## A152035.P15838953856606447895

`2*a(n-1)--2%n*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A152035.P15838953856606447895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - Int.tmod (-2) (n : ℤ) * a (n - 2)

end

end A152035.P15838953856606447895

namespace A152035

/-- `2*a(n-1)--2%n*a(n-2)` -/
def P15838953856606447895.Spec : Prop :=
  ∀ n, P15838953856606447895.a n = A152035 n

end A152035

/-! ## A152035.P13649880909279560805

`2*(a(n-1)-(a(n-2)%2-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A152035.P13649880909279560805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - (Int.tmod (a (n - 2)) 2 - a (n - 2)))

end

end A152035.P13649880909279560805

namespace A152035

/-- `2*(a(n-1)-(a(n-2)%2-a(n-2)))` -/
def P13649880909279560805.Spec : Prop :=
  ∀ n, P13649880909279560805.a n = A152035 n

end A152035

/-! ## A152035.P11527232904872821926

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A152035.P11527232904872821926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A152035.P11527232904872821926

namespace A152035

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P11527232904872821926.Spec : Prop :=
  ∀ n, (P11527232904872821926.a n : ℤ) = A152035 n

end A152035

/-! ## A152035.P8007968766131386975

`record[abs(A028860(n))]`
-/

namespace A152035.P8007968766131386975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028860 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152035.P8007968766131386975

namespace A152035

/-- `record[abs(A028860(n))]` -/
def P8007968766131386975.Spec : Prop :=
  ∀ n, P8007968766131386975.a n = A152035 n

end A152035

/-! ## A152035.P14903711173070597478

`record[A028860(n+1)]`
-/

namespace A152035.P14903711173070597478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152035.P14903711173070597478

namespace A152035

/-- `record[A028860(n+1)]` -/
def P14903711173070597478.Spec : Prop :=
  ∀ n, P14903711173070597478.a n = A152035 n

end A152035

/-! ## A152035.P13720052570114800382

`A002605(n+1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A152035.P13720052570114800382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002605 (n + 1) - a (n - 1)

end

end A152035.P13720052570114800382

namespace A152035

/-- `A002605(n+1)-a(n-1)` -/
def P13720052570114800382.Spec : Prop :=
  ∀ n, P13720052570114800382.a n = A152035 n

end A152035

/-! ## A152035.P16744739523904983663

`A080040(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A152035.P16744739523904983663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A080040 (n - 1) + a (n - 1)

end

end A152035.P16744739523904983663

namespace A152035

/-- `A080040(n-1)+a(n-1)` -/
def P16744739523904983663.Spec : Prop :=
  ∀ n, P16744739523904983663.a n = A152035 n

end A152035

/-! ## A152035.P17979560708037706792

`A028860(A065475(n+1))`
-/

namespace A152035.P17979560708037706792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (A065475 (n + 1)).toNat

end

end A152035.P17979560708037706792

namespace A152035

/-- `A028860(A065475(n+1))` -/
def P17979560708037706792.Spec : Prop :=
  ∀ n, P17979560708037706792.a n = A152035 n

end A152035

/-! ## A152035.P5861030239371238718

`A028860(A181440(n+2))`
-/

namespace A152035.P5861030239371238718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (A181440 (n + 2)).toNat

end

end A152035.P5861030239371238718

namespace A152035

/-- `A028860(A181440(n+2))` -/
def P5861030239371238718.Spec : Prop :=
  ∀ n, P5861030239371238718.a n = A152035 n

end A152035

/-! ## A152035.P5082200010207658285

`A028860(A184985(n+2))`
-/

namespace A152035.P5082200010207658285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (A184985 (n + 2)).toNat

end

end A152035.P5082200010207658285

namespace A152035

/-- `A028860(A184985(n+2))` -/
def P5082200010207658285.Spec : Prop :=
  ∀ n, P5082200010207658285.a n = A152035 n

end A152035

/-! ## A152035.P7424812173146735205

`A108898(n)+A054977(n)`
-/

namespace A152035.P7424812173146735205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n + A054977 n

end

end A152035.P7424812173146735205

namespace A152035

/-- `A108898(n)+A054977(n)` -/
def P7424812173146735205.Spec : Prop :=
  ∀ n, P7424812173146735205.a n = A152035 n

end A152035

/-! ## A152035.P1752110234656490439

`A127864(n)+A062157(n)`
-/

namespace A152035.P1752110234656490439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127864 n + A062157 n

end

end A152035.P1752110234656490439

namespace A152035

/-- `A127864(n)+A062157(n)` -/
def P1752110234656490439.Spec : Prop :=
  ∀ n, P1752110234656490439.a n = A152035 n

end A152035

/-! ## A152035.P253975494924981142

`A293007(n+1)+A000007(n)`
-/

namespace A152035.P253975494924981142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 1) + A000007 n

end

end A152035.P253975494924981142

namespace A152035

/-- `A293007(n+1)+A000007(n)` -/
def P253975494924981142.Spec : Prop :=
  ∀ n, P253975494924981142.a n = A152035 n

end A152035

/-! ## A152035.P861580167885036497

`A028860(n+2)+A000007(n)`
-/

namespace A152035.P861580167885036497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 2) + A000007 n

end

end A152035.P861580167885036497

namespace A152035

/-- `A028860(n+2)+A000007(n)` -/
def P861580167885036497.Spec : Prop :=
  ∀ n, P861580167885036497.a n = A152035 n

end A152035

/-!
# A152036: Triangular product sequence based 2^n times the Fibonacci version and 4 replaced with m: t(m,n)=2^n*Product[(1 + m*Cos[k*Pi/n]^2), {k, 1, Floor[(n - 1)/2]}].

The programs for A152036, there is no canonical definition to state claims against.
-/

/-! ## A152036.P7167963342536444799

`A236919(A083861(n)+1)`
-/

namespace A152036.P7167963342536444799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236919 (A083861 n + 1).toNat

end

end A152036.P7167963342536444799

/-! ## A152036.P14986927019578111713

`∑{d}[A217891(n+1), A124389(#)]`
-/

namespace A152036.P14986927019578111713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A124389 d

end

end A152036.P14986927019578111713

/-! ## A152036.P8304025884470856457

`A194970(A276999(n)+A194965(n+1))`
-/

namespace A152036.P8304025884470856457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194970 (A276999 n + A194965 (n + 1)).toNat

end

end A152036.P8304025884470856457

/-! ## A152036.P5397614424333111185

`A194974(A276999(n)+A194965(n+1))`
-/

namespace A152036.P5397614424333111185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194974 (A276999 n + A194965 (n + 1)).toNat

end

end A152036.P5397614424333111185

/-! ## A152036.P4322233411581468574

`∑{e}[A066117(n+1), #!]`
-/

namespace A152036.P4322233411581468574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A152036.P4322233411581468574

/-!
# A152041: a(n) = A008893(n)/2.

The programs for A152041, the canonical program `A152041.P8938049667314349633` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152041 has offset 0).

The definition of A152041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152041.P11285875373732922188

`n*(n+1)*(7*n²+7*n+2)/8`
-/

namespace A152041.P11285875373732922188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (7 * n ^ 2 + 7 * n + 2) : ℚ) / 8

end

end A152041.P11285875373732922188

namespace A152041

/-- `n*(n+1)*(7*n²+7*n+2)/8` -/
def P11285875373732922188.Spec : Prop :=
  ∀ n, P11285875373732922188.a n = (A152041 n : ℚ)

theorem P11285875373732922188.correct : P11285875373732922188.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A152041, Nat.add_sub_cancel, A152041.P11285875373732922188.a, A152041.P8938049667314349633.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A152041, Nat.add_sub_cancel, A152041.P11285875373732922188.a, A152041.P8938049667314349633.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152041

/-! ## A152041.P8938049667314349633

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=33, a(3)=129, a(4)=355`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152041

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8938049667314349633.Spec : Prop :=
  ∀ n, P8938049667314349633.a n = A152041 n

theorem P8938049667314349633.correct : P8938049667314349633.Spec := by
  intro n
  simp only [A152041]

end A152041

/-! ## A152041.P3292485867187856715

`A008893(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152041.P3292485867187856715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008893 n : ℚ) / 2

end

end A152041.P3292485867187856715

namespace A152041

/-- `A008893(n)/2` -/
def P3292485867187856715.Spec : Prop :=
  ∀ n, P3292485867187856715.a n = (A152041 n : ℚ)

end A152041

/-! ## A152041.P9769926723921543589

`∑[2*n]²-C(∑[n], 2)`
-/

namespace A152041.P9769926723921543589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

end

end A152041.P9769926723921543589

namespace A152041

/-- `∑[2*n]²-C(∑[n], 2)` -/
def P9769926723921543589.Spec : Prop :=
  ∀ n, P9769926723921543589.a n = A152041 n

end A152041

/-! ## A152041.P7385571450751256881

`∑[(A244727(n)+n)/2]`
-/

namespace A152041.P7385571450751256881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244727 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152041.P7385571450751256881

namespace A152041

/-- `∑[(A244727(n)+n)/2]` -/
def P7385571450751256881.Spec : Prop :=
  ∀ n, P7385571450751256881.a n = (A152041 n : ℚ)

end A152041

/-! ## A152041.P3560674492529369441

`∑[n/2*A247541(n)]`
-/

namespace A152041.P3560674492529369441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A247541 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152041.P3560674492529369441

namespace A152041

/-- `∑[n/2*A247541(n)]` -/
def P3560674492529369441.Spec : Prop :=
  ∀ n, P3560674492529369441.a n = (A152041 n : ℚ)

end A152041

/-! ## A152041.P10254154526438564126

`(n²+n)²-A050534(n+1)`
-/

namespace A152041.P10254154526438564126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n) ^ 2 : ℤ) - A050534 (n + 1)

end

end A152041.P10254154526438564126

namespace A152041

/-- `(n²+n)²-A050534(n+1)` -/
def P10254154526438564126.Spec : Prop :=
  ∀ n, P10254154526438564126.a n = A152041 n

end A152041

/-! ## A152041.P10697380338228473445

`A236770(n)+A110450(n)`
-/

namespace A152041.P10697380338228473445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236770 n + A110450 n

end

end A152041.P10697380338228473445

namespace A152041

/-- `A236770(n)+A110450(n)` -/
def P10697380338228473445.Spec : Prop :=
  ∀ n, P10697380338228473445.a n = A152041 n

end A152041

/-! ## A152041.P12483705203426462508

`A219086(n)-A002817(n)`
-/

namespace A152041.P12483705203426462508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - A002817 n

end

end A152041.P12483705203426462508

namespace A152041

/-- `A219086(n)-A002817(n)` -/
def P12483705203426462508.Spec : Prop :=
  ∀ n, P12483705203426462508.a n = A152041 n

end A152041

/-! ## A152041.P12221210194927549152

`A297662(n+1)+A002817(n)`
-/

namespace A152041.P12221210194927549152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) + A002817 n

end

end A152041.P12221210194927549152

namespace A152041

/-- `A297662(n+1)+A002817(n)` -/
def P12221210194927549152.Spec : Prop :=
  ∀ n, P12221210194927549152.a n = A152041 n

end A152041

/-! ## A152041.P10981592455150846080

`A035288(n+1)-A215862(n)`
-/

namespace A152041.P10981592455150846080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035288 (n + 1) - A215862 n

end

end A152041.P10981592455150846080

namespace A152041

/-- `A035288(n+1)-A215862(n)` -/
def P10981592455150846080.Spec : Prop :=
  ∀ n, P10981592455150846080.a n = A152041 n

end A152041

/-! ## A152041.P3954805052299125709

`A002817(n)+3*A000217(n)²`
-/

namespace A152041.P3954805052299125709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + 3 * A000217 n ^ 2

end

end A152041.P3954805052299125709

namespace A152041

/-- `A002817(n)+3*A000217(n)²` -/
def P3954805052299125709.Spec : Prop :=
  ∀ n, P3954805052299125709.a n = A152041 n

end A152041

/-! ## A152041.P152483256300568658

`A002817(n)+A000217(n)*A045943(n)`
-/

namespace A152041.P152483256300568658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + A000217 n * A045943 n

end

end A152041.P152483256300568658

namespace A152041

/-- `A002817(n)+A000217(n)*A045943(n)` -/
def P152483256300568658.Spec : Prop :=
  ∀ n, P152483256300568658.a n = A152041 n

end A152041

/-! ## A152041.P12332558590887995060

`A000217(n)*A001844(n)-A002817(n)`
-/

namespace A152041.P12332558590887995060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A001844 n - A002817 n

end

end A152041.P12332558590887995060

namespace A152041

/-- `A000217(n)*A001844(n)-A002817(n)` -/
def P12332558590887995060.Spec : Prop :=
  ∀ n, P12332558590887995060.a n = A152041 n

end A152041

/-! ## A152041.P6321566015513665879

`A219086(n)-(A011863(n+1)+A011863(n))`
-/

namespace A152041.P6321566015513665879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - (A011863 (n + 1) + A011863 n)

end

end A152041.P6321566015513665879

namespace A152041

/-- `A219086(n)-(A011863(n+1)+A011863(n))` -/
def P6321566015513665879.Spec : Prop :=
  ∀ n, P6321566015513665879.a n = A152041 n

end A152041

/-! ## A152041.P9405136937935771959

`∑[A006003(2*n)-A006003(n)]`
-/

namespace A152041.P9405136937935771959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n) - A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152041.P9405136937935771959

namespace A152041

/-- `∑[A006003(2*n)-A006003(n)]` -/
def P9405136937935771959.Spec : Prop :=
  ∀ n, P9405136937935771959.a n = A152041 n

end A152041

/-! ## A152041.P9608054886977044170

`A011863(2*n+1)-A002817(n)`
-/

namespace A152041.P9608054886977044170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * n + 1) - A002817 n

end

end A152041.P9608054886977044170

namespace A152041

/-- `A011863(2*n+1)-A002817(n)` -/
def P9608054886977044170.Spec : Prop :=
  ∀ n, P9608054886977044170.a n = A152041 n

end A152041

/-! ## A152041.P16599786236300551153

`∑[A060354(2*n+1)-A060354(n+1)]`
-/

namespace A152041.P16599786236300551153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (2 * n + 1) - A060354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152041.P16599786236300551153

namespace A152041

/-- `∑[A060354(2*n+1)-A060354(n+1)]` -/
def P16599786236300551153.Spec : Prop :=
  ∀ n, P16599786236300551153.a n = A152041 n

end A152041

/-! ## A152041.P3908678837568633598

`A292057(n+1)-A000914(n)`
-/

namespace A152041.P3908678837568633598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292057 (n + 1) - A000914 n

end

end A152041.P3908678837568633598

namespace A152041

/-- `A292057(n+1)-A000914(n)` -/
def P3908678837568633598.Spec : Prop :=
  ∀ n, P3908678837568633598.a n = A152041 n

end A152041

/-! ## A152041.P9588797699668624808

`A219086(n)-A000217(A000217(n))`
-/

namespace A152041.P9588797699668624808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - A000217 (A000217 n).toNat

end

end A152041.P9588797699668624808

namespace A152041

/-- `A219086(n)-A000217(A000217(n))` -/
def P9588797699668624808.Spec : Prop :=
  ∀ n, P9588797699668624808.a n = A152041 n

end A152041

/-!
# A152043: Numbers expressible as the difference of two nonnegative cubes.

The programs for A152043, there is no canonical definition to state claims against.
-/

/-! ## A152043.P581184751408721427

`∪[A038593(n+1), n^3]`
-/

namespace A152043.P581184751408721427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152043.P581184751408721427

/-! ## A152043.P14048406296219346774

`∪[A181123(n+1), n^3]`
-/

namespace A152043.P14048406296219346774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152043.P14048406296219346774

/-! ## A152043.P468493411718945547

`∪[A000578(n), A038593(n+1)]`
-/

namespace A152043.P468493411718945547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152043.P468493411718945547

/-! ## A152043.P1679072248509515308

`∪[A000578(n), A181123(n+1)]`
-/

namespace A152043.P1679072248509515308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152043.P1679072248509515308

/-! ## A152043.P10997494573383447257

`∪[∑[A003215(n)], A181123(n+1)]`
-/

namespace A152043.P10997494573383447257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A152043.P10997494573383447257

/-! ## A152043.P1824673498372729820

`∪[n*A000290(n), A038593(n+1)]`
-/

namespace A152043.P1824673498372729820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152043.P1824673498372729820

/-!
# A152044: Numbers expressible as the difference of two nonnegative fourth powers.

The programs for A152044, there is no canonical definition to state claims against.
-/

/-! ## A152044.P6414439432187296607

`∪[A147857(n+1), n²²]`
-/

namespace A152044.P6414439432187296607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147857 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152044.P6414439432187296607

/-! ## A152044.P10953179110827311558

`∪[A000583(n), A147857(n+1)]`
-/

namespace A152044.P10953179110827311558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152044.P10953179110827311558

/-! ## A152044.P8467246604356715858

`∪[∑[A005917(n+1)], A147857(n+1)]`
-/

namespace A152044.P8467246604356715858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A152044.P8467246604356715858

/-! ## A152044.P8291045980757273706

`eq[1, A228760(A028310(n))]`
-/

namespace A152044.P8291045980757273706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228760 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152044.P8291045980757273706

/-! ## A152044.P6455844104509570586

`lt[A228760(A028310(n)), A147848(2*n+3)]`
-/

namespace A152044.P6455844104509570586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228760 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147848 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152044.P6455844104509570586

/-!
# A152045: Numbers expressible as the difference of two nonnegative fifth powers.

The programs for A152045, there is no canonical definition to state claims against.
-/

/-! ## A152045.P9965777498867337329

`∪[A181124(n+1), n^5]`
-/

namespace A152045.P9965777498867337329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181124 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A152045.P9965777498867337329

/-! ## A152045.P3210413885956994054

`∪[A000584(n), A181124(n+1)]`
-/

namespace A152045.P3210413885956994054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152045.P3210413885956994054

/-! ## A152045.P6358844724411170321

`∪[∑[A022521(n)], A181124(n+1)]`
-/

namespace A152045.P6358844724411170321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A152045.P6358844724411170321

/-! ## A152045.P14419327660273897533

`∪[n*A000583(n), A181124(n+1)]`
-/

namespace A152045.P14419327660273897533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152045.P14419327660273897533

/-! ## A152045.P11910683183495716631

`record[Δ[A276007(n)^5]]`
-/

namespace A152045.P11910683183495716631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276007 n ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152045.P11910683183495716631

/-!
# A152046: a(n) = Product_{k=1..floor((n-1)/2)} (1 + 8*cos(k*Pi/n)^2) for n >= 0.

The programs for A152046, the canonical program `A152046.P13952024652910597718` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152046 has offset 0).

The definition of A152046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152046.P13952024652910597718

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152046

/-- `a(n-1)+2*a(n-2)` -/
def P13952024652910597718.Spec : Prop :=
  ∀ n, (P13952024652910597718.a n : ℤ) = A152046 n

theorem P13952024652910597718.correct : P13952024652910597718.Spec := by
  intro n
  simp only [A152046]

end A152046

/-! ## A152046.P11408796686369857499

`ogf((-1+2x^2)/(-1+x+2x^2))`
-/

namespace A152046.P11408796686369857499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -1, -2] n

end

end A152046.P11408796686369857499

namespace A152046

/-- `ogf((-1+2x^2)/(-1+x+2x^2))` -/
def P11408796686369857499.Spec : Prop :=
  ∀ n, P11408796686369857499.a n = A152046 n

end A152046

/-! ## A152046.P8926245712330983252

`2*ceil(2^(n-log2(6)))-1`
-/

namespace A152046.P8926245712330983252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(2 : ℝ) ^ ((n : ℝ) - Real.logb 2 (6 : ℝ))⌉ - 1

end

end A152046.P8926245712330983252

namespace A152046

/-- `2*ceil(2^(n-log2(6)))-1` -/
def P8926245712330983252.Spec : Prop :=
  ∀ n, P8926245712330983252.a n = A152046 n

end A152046

/-! ## A152046.P16923410240036219049

`abs(A167167(n))`
-/

namespace A152046.P16923410240036219049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167167 n|

end

end A152046.P16923410240036219049

namespace A152046

/-- `abs(A167167(n))` -/
def P16923410240036219049.Spec : Prop :=
  ∀ n, P16923410240036219049.a n = A152046 n

end A152046

/-! ## A152046.P6448518581374498006

`or(1, A001045(n))`
-/

namespace A152046.P6448518581374498006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001045 n)

end

end A152046.P6448518581374498006

namespace A152046

/-- `or(1, A001045(n))` -/
def P6448518581374498006.Spec : Prop :=
  ∀ n, P6448518581374498006.a n = A152046 n

end A152046

/-! ## A152046.P15520419775892880308

`∏{d}[n, A105603(#)]`
-/

namespace A152046.P15520419775892880308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A105603 d

end

end A152046.P15520419775892880308

namespace A152046

/-- `∏{d}[n, A105603(#)]` -/
def P15520419775892880308.Spec : Prop :=
  ∀ n, P15520419775892880308.a n = A152046 n

end A152046

/-! ## A152046.P749059580127468170

`or(1, A167030(n)+1)`
-/

namespace A152046.P749059580127468170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A167030 n + 1)

end

end A152046.P749059580127468170

namespace A152046

/-- `or(1, A167030(n)+1)` -/
def P749059580127468170.Spec : Prop :=
  ∀ n, P749059580127468170.a n = A152046 n

end A152046

/-! ## A152046.P12129311716919567238

`or(1, A128209(n)-1)`
-/

namespace A152046.P12129311716919567238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A128209 n - 1)

end

end A152046.P12129311716919567238

namespace A152046

/-- `or(1, A128209(n)-1)` -/
def P12129311716919567238.Spec : Prop :=
  ∀ n, P12129311716919567238.a n = A152046 n

end A152046

/-! ## A152046.P12082103088433195470

`or(1, A328284(n+3))`
-/

namespace A152046.P12082103088433195470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A328284 (n + 3))

end

end A152046.P12082103088433195470

namespace A152046

/-- `or(1, A328284(n+3))` -/
def P12082103088433195470.Spec : Prop :=
  ∀ n, P12082103088433195470.a n = A152046 n

end A152046

/-! ## A152046.P6388032800085976321

`or(1, A133684(2*n))`
-/

namespace A152046.P6388032800085976321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133684 (2 * n))

end

end A152046.P6388032800085976321

namespace A152046

/-- `or(1, A133684(2*n))` -/
def P6388032800085976321.Spec : Prop :=
  ∀ n, P6388032800085976321.a n = A152046 n

end A152046

/-! ## A152046.P3476221278803083026

`abs(A077925(abs(1-n)))`
-/

namespace A152046.P3476221278803083026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A077925 |1 - (n : ℤ)|.toNat)|

end

end A152046.P3476221278803083026

namespace A152046

/-- `abs(A077925(abs(1-n)))` -/
def P3476221278803083026.Spec : Prop :=
  ∀ n, P3476221278803083026.a n = A152046 n

end A152046

/-! ## A152046.P13940100857938594887

`or(1, A023105(n+1)-2)`
-/

namespace A152046.P13940100857938594887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A023105 (n + 1) - 2)

end

end A152046.P13940100857938594887

namespace A152046

/-- `or(1, A023105(n+1)-2)` -/
def P13940100857938594887.Spec : Prop :=
  ∀ n, P13940100857938594887.a n = A152046 n

end A152046

/-! ## A152046.P16412216174075409838

`or(1, A133730(2*n+1))`
-/

namespace A152046.P16412216174075409838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133730 (2 * n + 1))

end

end A152046.P16412216174075409838

namespace A152046

/-- `or(1, A133730(2*n+1))` -/
def P16412216174075409838.Spec : Prop :=
  ∀ n, P16412216174075409838.a n = A152046 n

end A152046

/-! ## A152046.P17983863713500903429

`A001045(A028310(n))`
-/

namespace A152046.P17983863713500903429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A028310 n).toNat

end

end A152046.P17983863713500903429

namespace A152046

/-- `A001045(A028310(n))` -/
def P17983863713500903429.Spec : Prop :=
  ∀ n, P17983863713500903429.a n = A152046 n

end A152046

/-! ## A152046.P3160224622012894261

`A112387(A004273(n))`
-/

namespace A152046.P3160224622012894261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (A004273 n).toNat

end

end A152046.P3160224622012894261

namespace A152046

/-- `A112387(A004273(n))` -/
def P3160224622012894261.Spec : Prop :=
  ∀ n, P3160224622012894261.a n = A152046 n

end A152046

/-! ## A152046.P84013994790023751

`A133684(A004277(n))`
-/

namespace A152046.P84013994790023751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A004277 n).toNat

end

end A152046.P84013994790023751

namespace A152046

/-- `A133684(A004277(n))` -/
def P84013994790023751.Spec : Prop :=
  ∀ n, P84013994790023751.a n = A152046 n

end A152046

/-! ## A152046.P10893629387577444249

`A135318(A004275(n))`
-/

namespace A152046.P10893629387577444249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (A004275 n).toNat

end

end A152046.P10893629387577444249

namespace A152046

/-- `A135318(A004275(n))` -/
def P10893629387577444249.Spec : Prop :=
  ∀ n, P10893629387577444249.a n = A152046 n

end A152046

/-! ## A152046.P8293985062722548188

`A283642(A289207(n))`
-/

namespace A152046.P8293985062722548188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (A289207 n).toNat

end

end A152046.P8293985062722548188

namespace A152046

/-- `A283642(A289207(n))` -/
def P8293985062722548188.Spec : Prop :=
  ∀ n, P8293985062722548188.a n = A152046 n

end A152046

/-! ## A152046.P15381859656329504602

`A133684(A004275(n+1))`
-/

namespace A152046.P15381859656329504602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A004275 (n + 1)).toNat

end

end A152046.P15381859656329504602

namespace A152046

/-- `A133684(A004275(n+1))` -/
def P15381859656329504602.Spec : Prop :=
  ∀ n, P15381859656329504602.a n = A152046 n

end A152046

/-! ## A152046.P16877892300159414900

`A001045(A233583(n+1))`
-/

namespace A152046.P16877892300159414900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A233583 (n + 1)).toNat

end

end A152046.P16877892300159414900

namespace A152046

/-- `A001045(A233583(n+1))` -/
def P16877892300159414900.Spec : Prop :=
  ∀ n, P16877892300159414900.a n = A152046 n

end A152046

/-!
# A152047: Largest divisor of A002182(n) <= sqrt(A002182(n)).

The programs for A152047, there is no canonical definition to state claims against.
-/

/-! ## A152047.P5073695793815420227

`A002182(n+1)/A152048(n+1)`
-/

namespace A152047.P5073695793815420227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A152048 (n + 1) : ℚ)

end

end A152047.P5073695793815420227

/-! ## A152047.P8701802460362081378

`A033676(A002182(n+1))`
-/

namespace A152047.P8701802460362081378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A002182 (n + 1)).toNat

end

end A152047.P8701802460362081378

/-! ## A152047.P14087004988129070535

`sqrt(A046952(n+1))/A152048(n+1)`
-/

namespace A152047.P14087004988129070535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ) / (A152048 (n + 1) : ℝ)

end

end A152047.P14087004988129070535

/-! ## A152047.P10746716716322087195

`(A135372(n+1)-1)/A152048(n+1)`
-/

namespace A152047.P10746716716322087195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1 : ℚ) / (A152048 (n + 1) : ℚ)

end

end A152047.P10746716716322087195

/-! ## A152047.P11103743026628923484

`∑[A262501(A028310(n))]/A152048(n+1)`
-/

namespace A152047.P11103743026628923484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A152048 (n + 1) : ℚ)

end

end A152047.P11103743026628923484

/-! ## A152047.P17929378143839239459

`(A063072(n+1)-A072824(n+1))/A152048(n+1)`
-/

namespace A152047.P17929378143839239459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063072 (n + 1) - A072824 (n + 1) : ℚ) / (A152048 (n + 1) : ℚ)

end

end A152047.P17929378143839239459

/-! ## A152047.P3236680872198211953

`A054481(n+2)/A152048(n+1)*A054482(n+2)`
-/

namespace A152047.P3236680872198211953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054481 (n + 2) : ℚ) / (A152048 (n + 1) : ℚ) * (A054482 (n + 2) : ℚ)

end

end A152047.P3236680872198211953

/-! ## A152047.P4467229585333811642

`(A167373(A016885(3*n+4))+A135372(n+1))/A152048(n+1)`
-/

namespace A152047.P4467229585333811642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167373 (A016885 (3 * n + 4)).toNat + A135372 (n + 1) : ℚ) / (A152048 (n + 1) : ℚ)

end

end A152047.P4467229585333811642

/-! ## A152047.P2216226257613369651

`A025487(A306802(n+1))/A152048(n+1)`
-/

namespace A152047.P2216226257613369651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (A306802 (n + 1)).toNat : ℚ) / (A152048 (n + 1) : ℚ)

end

end A152047.P2216226257613369651

/-! ## A152047.P18171079656509839229

`A061799(A002183(n+1))/A152048(n+1)`
-/

namespace A152047.P18171079656509839229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (A002183 (n + 1)).toNat : ℚ) / (A152048 (n + 1) : ℚ)

end

end A152047.P18171079656509839229

/-!
# A152048: Smallest divisor of A002182(n) >= sqrt(A002182(n)).

The programs for A152048, there is no canonical definition to state claims against.
-/

/-! ## A152048.P17006132415966756716

`A002182(n+1)/A152047(n+1)`
-/

namespace A152048.P17006132415966756716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) / (A152047 (n + 1) : ℚ)

end

end A152048.P17006132415966756716

/-! ## A152048.P14595108529628525302

`A033677(A002182(n+1))`
-/

namespace A152048.P14595108529628525302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A002182 (n + 1)).toNat

end

end A152048.P14595108529628525302

/-! ## A152048.P16081881819754531123

`sqrt(A046952(n+1))/A152047(n+1)`
-/

namespace A152048.P16081881819754531123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ) / (A152047 (n + 1) : ℝ)

end

end A152048.P16081881819754531123

/-! ## A152048.P4842740685567023006

`(A135372(n+1)-1)/A152047(n+1)`
-/

namespace A152048.P4842740685567023006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1 : ℚ) / (A152047 (n + 1) : ℚ)

end

end A152048.P4842740685567023006

/-! ## A152048.P8480154921878891399

`∑[A262501(A028310(n))]/A152047(n+1)`
-/

namespace A152048.P8480154921878891399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A152047 (n + 1) : ℚ)

end

end A152048.P8480154921878891399

/-! ## A152048.P5057653771624807859

`(A063072(n+1)-A072824(n+1))/A152047(n+1)`
-/

namespace A152048.P5057653771624807859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063072 (n + 1) - A072824 (n + 1) : ℚ) / (A152047 (n + 1) : ℚ)

end

end A152048.P5057653771624807859

/-! ## A152048.P18400925886955976392

`(A167373(A016885(3*n+4))+A135372(n+1))/A152047(n+1)`
-/

namespace A152048.P18400925886955976392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167373 (A016885 (3 * n + 4)).toNat + A135372 (n + 1) : ℚ) / (A152047 (n + 1) : ℚ)

end

end A152048.P18400925886955976392

/-! ## A152048.P16993908647312227486

`A025487(A306802(n+1))/A152047(n+1)`
-/

namespace A152048.P16993908647312227486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (A306802 (n + 1)).toNat : ℚ) / (A152047 (n + 1) : ℚ)

end

end A152048.P16993908647312227486

/-! ## A152048.P15005696004859368107

`A061799(A002183(n+1))/A152047(n+1)`
-/

namespace A152048.P15005696004859368107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (A002183 (n + 1)).toNat : ℚ) / (A152047 (n + 1) : ℚ)

end

end A152048.P15005696004859368107

/-!
# A152049: Number of conjugacy classes of primitive elements in GF(2^n) which have trace 0.

The programs for A152049, there is no canonical definition to state claims against.
-/

/-! ## A152049.P15988183326785523611

`A192211(n+1)/(n+1)`
-/

namespace A152049.P15988183326785523611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192211 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A152049.P15988183326785523611

/-! ## A152049.P9468423084607904935

`-(A192211(A028242(2*n))/xor(n, -1))`
-/

namespace A152049.P9468423084607904935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A192211 (A028242 (2 * n)).toNat : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ))

end

end A152049.P9468423084607904935

/-!
# A152050: Smallest lower twin prime tp such that p + tp + 1 is prime. p ranges over the prime numbers.

The programs for A152050, there is no canonical definition to state claims against.
-/

/-! ## A152050.P2832282778011314156

`A222819(A179295(n+2)²)`
-/

namespace A152050.P2832282778011314156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222819 (A179295 (n + 2) ^ 2).toNat

end

end A152050.P2832282778011314156

/-! ## A152050.P15926400510290729190

`A179295(3^A179295(n+2))`
-/

namespace A152050.P15926400510290729190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179295 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A179295 (n + 2) : ℤ))).toNat

end

end A152050.P15926400510290729190

/-! ## A152050.P6759302643959116385

`A079369(A114228(n+2))+A028963((4*n+1)²)`
-/

namespace A152050.P6759302643959116385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079369 (A114228 (n + 2)).toNat + A028963 ((4 * n + 1) ^ 2)

end

end A152050.P6759302643959116385

/-! ## A152050.P4603842474328785274

`A277437(2^A114228(n+2))`
-/

namespace A152050.P4603842474328785274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277437 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A114228 (n + 2) : ℤ))).toNat

end

end A152050.P4603842474328785274

/-! ## A152050.P8815151753779557852

`A334041(A114228(n+2)^A220054(n))`
-/

namespace A152050.P8815151753779557852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334041 (SequenceMachineLib.roundAway ((A114228 (n + 2) : ℚ) ^ (A220054 n : ℤ))).toNat

end

end A152050.P8815151753779557852

/-!
# A152051: Hardy-Littlewood approximation to the number of twin primes less than 10^n.

The programs for A152051, there is no canonical definition to state claims against.
-/

/-! ## A152051.P1021315567782219763

`A337618(A027651(n))+A032275(n+1)`
-/

namespace A152051.P1021315567782219763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337618 (A027651 n).toNat + A032275 (n + 1)

end

end A152051.P1021315567782219763

/-!
# A152052: Number of cousin primes < 10^n, such that only the lower member of each prime cousin pair is counted.

The programs for A152052, there is no canonical definition to state claims against.
-/

/-! ## A152052.P137936163236836930

`A093737(n+1)+ceil(∏[acot(n)])`
-/

namespace A152052.P137936163236836930
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093737 (n + 1) + ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A152052.P137936163236836930

/-! ## A152052.P5076393143650362744

`A141044(n)+A093737(n+1)`
-/

namespace A152052.P5076393143650362744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + A093737 (n + 1)

end

end A152052.P5076393143650362744

/-! ## A152052.P9765365677420990868

`A353846(A033442(n))+A080840(n+1)`
-/

namespace A152052.P9765365677420990868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A033442 n).toNat + A080840 (n + 1)

end

end A152052.P9765365677420990868

/-! ## A152052.P14554884711138036798

`A080840(n+1)+A000035(A077552(n))`
-/

namespace A152052.P14554884711138036798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080840 (n + 1) + A000035 (A077552 n).toNat

end

end A152052.P14554884711138036798

/-! ## A152052.P5584989622767597688

`A080843(A034386(n))+A080840(n+1)`
-/

namespace A152052.P5584989622767597688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A034386 n).toNat + A080840 (n + 1)

end

end A152052.P5584989622767597688

/-!
# A152053: a(n) = A144433(3n+1) + A144433(3n+2) + A144433(3n+3).

The programs for A152053, the canonical program `A152053.P8816888282701470973` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152053 has offset 0).

The definition of A152053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152053.P14562433589332357363

`9/2*(5+(-1)^n)*(n+1)`
-/

namespace A152053.P14562433589332357363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * (5 + (-1) ^ n : ℚ) * (n + 1 : ℚ)

end

end A152053.P14562433589332357363

namespace A152053

/-- `9/2*(5+(-1)^n)*(n+1)` -/
def P14562433589332357363.Spec : Prop :=
  ∀ n, P14562433589332357363.a n = (A152053 n : ℚ)

end A152053

/-! ## A152053.P8816888282701470973

`A144433(3*n+1)+A144433(3*n+2)+A144433(3*n+3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152053

/-- `A144433(3*n+1)+A144433(3*n+2)+A144433(3*n+3)` -/
def P8816888282701470973.Spec : Prop :=
  ∀ n, P8816888282701470973.a n = A152053 n

theorem P8816888282701470973.correct : P8816888282701470973.Spec := by
  intro n
  simp only [A152053]

end A152053

/-! ## A152053.P14838621916041563061

`A144433(3*n+1+1)+A144433(3*n+2+1)+A144433(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152053.P14838621916041563061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (3 * n + 1 + 1) + A144433 (3 * n + 2 + 1) + A144433 (3 * n + 1)

end

end A152053.P14838621916041563061

namespace A152053

/-- `A144433(3*n+1+1)+A144433(3*n+2+1)+A144433(3*n+1)` -/
def P14838621916041563061.Spec : Prop :=
  ∀ n, P14838621916041563061.a n = A152053 n

theorem P14838621916041563061.correct : P14838621916041563061.Spec := by
  intro n
  simp only [A152053, Nat.add_sub_cancel, A152053.P14838621916041563061.a, A152053.P8816888282701470973.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152053

/-! ## A152053.P14293402144367506594

`∑[9*(Δ[lcm(2, n)]+1)]`
-/

namespace A152053.P14293402144367506594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152053.P14293402144367506594

namespace A152053

/-- `∑[9*(Δ[lcm(2, n)]+1)]` -/
def P14293402144367506594.Spec : Prop :=
  ∀ n, P14293402144367506594.a n = A152053 n

end A152053

/-! ## A152053.P5001797341962000381

`∑[9*(2*(A130472(n)+1)+1)]`
-/

namespace A152053.P5001797341962000381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (2 * (A130472 n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152053.P5001797341962000381

namespace A152053

/-- `∑[9*(2*(A130472(n)+1)+1)]` -/
def P5001797341962000381.Spec : Prop :=
  ∀ n, P5001797341962000381.a n = A152053 n

end A152053

/-! ## A152053.P3440287273714703325

`A298028(n+1)+2*A298036(n+1)`
-/

namespace A152053.P3440287273714703325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (n + 1) + 2 * A298036 (n + 1)

end

end A152053.P3440287273714703325

namespace A152053

/-- `A298028(n+1)+2*A298036(n+1)` -/
def P3440287273714703325.Spec : Prop :=
  ∀ n, P3440287273714703325.a n = A152053 n

end A152053

/-! ## A152053.P9015096792605283324

`A008591(A106833(n+1))`
-/

namespace A152053.P9015096792605283324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A106833 (n + 1)).toNat

end

end A152053.P9015096792605283324

namespace A152053

/-- `A008591(A106833(n+1))` -/
def P9015096792605283324.Spec : Prop :=
  ∀ n, P9015096792605283324.a n = A152053 n

end A152053

/-! ## A152053.P12905488179253213001

`A008591(1-A215898(2*n+1))`
-/

namespace A152053.P12905488179253213001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (1 - A215898 (2 * n + 1)).toNat

end

end A152053.P12905488179253213001

namespace A152053

/-- `A008591(1-A215898(2*n+1))` -/
def P12905488179253213001.Spec : Prop :=
  ∀ n, P12905488179253213001.a n = A152053 n

end A152053

/-! ## A152053.P12289877538908922780

`A008591((n+1)*A010693(n+1))`
-/

namespace A152053.P12289877538908922780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 ((n + 1 : ℤ) * A010693 (n + 1)).toNat

end

end A152053.P12289877538908922780

namespace A152053

/-- `A008591((n+1)*A010693(n+1))` -/
def P12289877538908922780.Spec : Prop :=
  ∀ n, P12289877538908922780.a n = A152053 n

end A152053

/-! ## A152053.P9562816742466633187

`A008591(4*n+3-A059029(n))`
-/

namespace A152053.P9562816742466633187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 ((4 * n + 3 : ℤ) - A059029 n).toNat

end

end A152053.P9562816742466633187

namespace A152053

/-- `A008591(4*n+3-A059029(n))` -/
def P9562816742466633187.Spec : Prop :=
  ∀ n, P9562816742466633187.a n = A152053 n

end A152053

/-! ## A152053.P3592248813924800877

`Δ[A195162(3*n+1)]`
-/

namespace A152053.P3592248813924800877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152053.P3592248813924800877

namespace A152053

/-- `Δ[A195162(3*n+1)]` -/
def P3592248813924800877.Spec : Prop :=
  ∀ n, P3592248813924800877.a n = A152053 n

end A152053

/-! ## A152053.P6504449981568717216

`9*(n+1)+A298026(A008486(n+1))`
-/

namespace A152053.P6504449981568717216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) + A298026 (A008486 (n + 1)).toNat

end

end A152053.P6504449981568717216

namespace A152053

/-- `9*(n+1)+A298026(A008486(n+1))` -/
def P6504449981568717216.Spec : Prop :=
  ∀ n, P6504449981568717216.a n = A152053 n

end A152053

/-! ## A152053.P2856823738925468406

`A298036(A298028(n+1))-A298028(A008486(n+1))`
-/

namespace A152053.P2856823738925468406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (A298028 (n + 1)).toNat - A298028 (A008486 (n + 1)).toNat

end

end A152053.P2856823738925468406

namespace A152053

/-- `A298036(A298028(n+1))-A298028(A008486(n+1))` -/
def P2856823738925468406.Spec : Prop :=
  ∀ n, P2856823738925468406.a n = A152053 n

end A152053

/-! ## A152053.P8822320129148053944

`A174029(A016789(n+1))-A174029(n+3)`
-/

namespace A152053.P8822320129148053944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 (A016789 (n + 1)).toNat - A174029 (n + 3)

end

end A152053.P8822320129148053944

namespace A152053

/-- `A174029(A016789(n+1))-A174029(n+3)` -/
def P8822320129148053944.Spec : Prop :=
  ∀ n, P8822320129148053944.a n = A152053 n

end A152053

/-! ## A152053.P15604187292234809172

`A168419(A340519(n+1))`
-/

namespace A152053.P15604187292234809172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (A340519 (n + 1)).toNat

end

end A152053.P15604187292234809172

namespace A152053

/-- `A168419(A340519(n+1))` -/
def P15604187292234809172.Spec : Prop :=
  ∀ n, P15604187292234809172.a n = A152053 n

end A152053

/-! ## A152053.P12199962461472851092

`A340519(A340519(n+1))+A106833(n+1)`
-/

namespace A152053.P12199962461472851092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340519 (A340519 (n + 1)).toNat + A106833 (n + 1)

end

end A152053.P12199962461472851092

namespace A152053

/-- `A340519(A340519(n+1))+A106833(n+1)` -/
def P12199962461472851092.Spec : Prop :=
  ∀ n, P12199962461472851092.a n = A152053 n

end A152053

/-! ## A152053.P402655216372542499

`A008486(A008486(n+1))+A008486(A298026(n+1))`
-/

namespace A152053.P402655216372542499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008486 (n + 1)).toNat + A008486 (A298026 (n + 1)).toNat

end

end A152053.P402655216372542499

namespace A152053

/-- `A008486(A008486(n+1))+A008486(A298026(n+1))` -/
def P402655216372542499.Spec : Prop :=
  ∀ n, P402655216372542499.a n = A152053 n

end A152053

/-! ## A152053.P5745186962497957909

`A008458(A008458(n+1))-A298028(A008486(n+1))`
-/

namespace A152053.P5745186962497957909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 (n + 1)).toNat - A298028 (A008486 (n + 1)).toNat

end

end A152053.P5745186962497957909

namespace A152053

/-- `A008458(A008458(n+1))-A298028(A008486(n+1))` -/
def P5745186962497957909.Spec : Prop :=
  ∀ n, P5745186962497957909.a n = A152053 n

end A152053

/-! ## A152053.P11412833064527331129

`A008585(A008585(A109043(n+1)+n+1))`
-/

namespace A152053.P11412833064527331129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008585 (A109043 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A152053.P11412833064527331129

namespace A152053

/-- `A008585(A008585(A109043(n+1)+n+1))` -/
def P11412833064527331129.Spec : Prop :=
  ∀ n, P11412833064527331129.a n = A152053 n

end A152053

/-! ## A152053.P13583056238677146172

`A008486(A298026(n+1)+A008486(n+1))`
-/

namespace A152053.P13583056238677146172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A298026 (n + 1) + A008486 (n + 1)).toNat

end

end A152053.P13583056238677146172

namespace A152053

/-- `A008486(A298026(n+1)+A008486(n+1))` -/
def P13583056238677146172.Spec : Prop :=
  ∀ n, P13583056238677146172.a n = A152053 n

end A152053

/-!
# A152054: Bouncy numbers (numbers whose digits are in neither increasing nor decreasing order).

The programs for A152054, there is no canonical definition to state claims against.
-/

/-! ## A152054.P9366370131554227435

`comp[∪[A009994(n+1), A009996(n+1)]]`
-/

namespace A152054.P9366370131554227435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A152054.P9366370131554227435

/-! ## A152054.P1935004491965149256

`lt[abs(A056965(n)), A151949(n)]`
-/

namespace A152054.P1935004491965149256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152054.P1935004491965149256

/-! ## A152054.P15746894617754414299

`lt[1, A108782(n)*A193581(n)]`
-/

namespace A152054.P15746894617754414299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n * A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152054.P15746894617754414299

/-! ## A152054.P12794434622725607531

`lt[abs(A056965(n)), 9*A151950(n)]`
-/

namespace A152054.P12794434622725607531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152054.P12794434622725607531

/-! ## A152054.P5018496091574145380

`lt[A108782(n)², A108782(n)*A151949(n)]`
-/

namespace A152054.P5018496091574145380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n * A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152054.P5018496091574145380

/-! ## A152054.P4013495015211924354

`lt[A064834(n), A037904(A233583(n+1))]`
-/

namespace A152054.P4013495015211924354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152054.P4013495015211924354

/-!
# A152055: a(n) = ((8 + sqrt(3))^n + (8 - sqrt(3))^n)/2.

The programs for A152055, the canonical program `A152055.P3230418354831069794` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152055 has offset 0).

The definition of A152055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152055.P3230418354831069794

`16*a(n-1)-61*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152055

/-- `16*a(n-1)-61*a(n-2)` -/
def P3230418354831069794.Spec : Prop :=
  ∀ n, P3230418354831069794.a n = A152055 n

theorem P3230418354831069794.correct : P3230418354831069794.Spec := by
  intro n
  simp only [A152055]

end A152055

/-!
# A152056: a(n) = ((9+sqrt(3))^n + (9-sqrt(3))^n)/2.

The programs for A152056, the canonical program `A152056.P7619741161251331427` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152056 has offset 0).

The definition of A152056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152056.P7619741161251331427

`18*a(n-1)-78*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152056

/-- `18*a(n-1)-78*a(n-2)` -/
def P7619741161251331427.Spec : Prop :=
  ∀ n, P7619741161251331427.a n = A152056 n

theorem P7619741161251331427.correct : P7619741161251331427.Spec := by
  intro n
  simp only [A152056]

end A152056

/-! ## A152056.P4834042382580643908

`((sqrt(3)+9)^n+(9-sqrt(3))^n)/2`
-/

namespace A152056.P4834042382580643908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (3 : ℝ) + 9) ^ n + (9 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A152056.P4834042382580643908

namespace A152056

/-- `((sqrt(3)+9)^n+(9-sqrt(3))^n)/2` -/
def P4834042382580643908.Spec : Prop :=
  ∀ n, P4834042382580643908.a n = (A152056 n : ℝ)

end A152056

/-!
# A152057: Sum of the distinct prime factors of 2^n-1.

The programs for A152057, there is no canonical definition to state claims against.
-/

/-! ## A152057.P7531324729512574302

`∑{p}[A090633(A028310(n)), #]`
-/

namespace A152057.P7531324729512574302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090633 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152057.P7531324729512574302

/-! ## A152057.P17223952672552897497

`∑{p}[1-2^n, #]`
-/

namespace A152057.P17223952672552897497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A152057.P17223952672552897497

/-! ## A152057.P3739559286364934462

`and(∑{p}[A000225(n), #], -1)`
-/

namespace A152057.P3739559286364934462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (-1)

end

end A152057.P3739559286364934462

/-! ## A152057.P3199318762247121951

`A178798(n)+∑{p}[A000225(n), #]`
-/

namespace A152057.P3199318762247121951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A152057.P3199318762247121951

/-! ## A152057.P1082085794979521979

`A243835(n)+∑{p}[A000225(n), #]`
-/

namespace A152057.P1082085794979521979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243835 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A152057.P1082085794979521979

/-!
# A152058: Primes in A152057 in the order of their appearance.

The programs for A152058, there is no canonical definition to state claims against.
-/

/-! ## A152058.P8432059823206766231

`p?[∑{p}[∑[2^n], #]]`
-/

namespace A152058.P8432059823206766231
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152058.P8432059823206766231

/-! ## A152058.P4913259065047200147

`p?[A152057(n)]`
-/

namespace A152058.P4913259065047200147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152058.P4913259065047200147

/-!
# A152059: a(n) is the number of ways 2n-1 seats can be occupied by at most n people for n>=1, with a(0)=1.

The programs for A152059, there is no canonical definition to state claims against.
-/

/-! ## A152059.P14625086513349419472

`A176120(2*n²)`
-/

namespace A152059.P14625086513349419472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (2 * n ^ 2)

end

end A152059.P14625086513349419472

/-! ## A152059.P11430950991718397990

`A293985(∑[4*n])`
-/

namespace A152059.P11430950991718397990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152059.P11430950991718397990

/-! ## A152059.P1446564745748734398

`record[A176120(∑[A014682(n)])]`
-/

namespace A152059.P1446564745748734398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152059.P1446564745748734398

/-! ## A152059.P271538183012038193

`record[A003982(n)*A293985(n)]`
-/

namespace A152059.P271538183012038193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A293985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152059.P271538183012038193

/-! ## A152059.P17412397537536175889

`record[root(A293985(n), A331886(n))]`
-/

namespace A152059.P17412397537536175889
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A293985 n : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152059.P17412397537536175889

/-!
# A152060: Triangle read by rows, characteristic polynomials of Cartan ring matrices.

The programs for A152060, there is no canonical definition to state claims against.
-/

/-! ## A152060.P10478364189154785723

`A053123(n)-A025426(A189052(n))`
-/

namespace A152060.P10478364189154785723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n - A025426 (A189052 n).toNat

end

end A152060.P10478364189154785723

/-! ## A152060.P17722649596046368206

`A078926(A148538(n))+A059370(n)`
-/

namespace A152060.P17722649596046368206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078926 (A148538 n).toNat + A059370 n

end

end A152060.P17722649596046368206

/-! ## A152060.P16882328844356316559

`A140756(A110450(n)+A103406(n))`
-/

namespace A152060.P16882328844356316559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (A110450 n + A103406 n).toNat

end

end A152060.P16882328844356316559

/-! ## A152060.P11351167598199826452

`A053123(n)-A112765(A034691(n))`
-/

namespace A152060.P11351167598199826452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n - A112765 (A034691 n).toNat

end

end A152060.P11351167598199826452

/-!
# A152061: Counts of unique periodic binary strings of length n.

The programs for A152061, the canonical program `A152061.P18211087173108762366` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152061 has offset 0).

The definition of A152061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152061.P18211087173108762366

`2*A178472((2*n)%(n+1)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A152061

/-- `2*A178472((2*n)%(n+1)+1)` -/
def P18211087173108762366.Spec : Prop :=
  ∀ n, P18211087173108762366.a n = A152061 n

theorem P18211087173108762366.correct : P18211087173108762366.Spec := by
  intro n
  simp only [A152061]

end A152061

/-! ## A152061.P8021222559263316741

`2*A178472(A028310(n))`
-/

namespace A152061.P8021222559263316741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A028310 n).toNat

end

end A152061.P8021222559263316741

namespace A152061

/-- `2*A178472(A028310(n))` -/
def P8021222559263316741.Spec : Prop :=
  ∀ n, P8021222559263316741.a n = A152061 n

end A152061

/-! ## A152061.P7128012295224156865

`2*A178472(A123108(2*n))`
-/

namespace A152061.P7128012295224156865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A123108 (2 * n)).toNat

end

end A152061.P7128012295224156865

namespace A152061

/-- `2*A178472(A123108(2*n))` -/
def P7128012295224156865.Spec : Prop :=
  ∀ n, P7128012295224156865.a n = A152061 n

end A152061

/-! ## A152061.P16166943555816365210

`2*A178472(A004277(n)-n)`
-/

namespace A152061.P16166943555816365210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (A004277 n - (n : ℤ)).toNat

end

end A152061.P16166943555816365210

namespace A152061

/-- `2*A178472(A004277(n)-n)` -/
def P16166943555816365210.Spec : Prop :=
  ∀ n, P16166943555816365210.a n = A152061 n

end A152061

/-! ## A152061.P2005044959547935315

`A155559(n)-A027375(n)`
-/

namespace A152061.P2005044959547935315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - A027375 n

end

end A152061.P2005044959547935315

namespace A152061

/-- `A155559(n)-A027375(n)` -/
def P2005044959547935315.Spec : Prop :=
  ∀ n, P2005044959547935315.a n = A152061 n

end A152061

/-! ## A152061.P9619210461877702773

`2*A131577(n)-A027375(n)`
-/

namespace A152061.P9619210461877702773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131577 n - A027375 n

end

end A152061.P9619210461877702773

namespace A152061

/-- `2*A131577(n)-A027375(n)` -/
def P9619210461877702773.Spec : Prop :=
  ∀ n, P9619210461877702773.a n = A152061 n

end A152061

/-! ## A152061.P15109760138885127434

`∑{d}[n, A027375(#)]-A027375(n)`
-/

namespace A152061.P15109760138885127434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027375 d - A027375 n

end

end A152061.P15109760138885127434

namespace A152061

/-- `∑{d}[n, A027375(#)]-A027375(n)` -/
def P15109760138885127434.Spec : Prop :=
  ∀ n, P15109760138885127434.a n = A152061 n

end A152061

/-! ## A152061.P6929305564040127302

`2*Δ[A011782(n)]-A027375(n)`
-/

namespace A152061.P6929305564040127302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A027375 n

end

end A152061.P6929305564040127302

namespace A152061

/-- `2*Δ[A011782(n)]-A027375(n)` -/
def P6929305564040127302.Spec : Prop :=
  ∀ n, P6929305564040127302.a n = A152061 n

end A152061

/-! ## A152061.P233631187925699509

`and(-(n*A001037(n)), A000225(n))`
-/

namespace A152061.P233631187925699509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((n : ℤ) * A001037 n)) (A000225 n)

end

end A152061.P233631187925699509

namespace A152061

/-- `and(-(n*A001037(n)), A000225(n))` -/
def P233631187925699509.Spec : Prop :=
  ∀ n, P233631187925699509.a n = A152061 n

end A152061

/-! ## A152061.P3092476655540557409

`A000079(n)-(A027375(n)+A000007(n))`
-/

namespace A152061.P3092476655540557409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A027375 n + A000007 n)

end

end A152061.P3092476655540557409

namespace A152061

/-- `A000079(n)-(A027375(n)+A000007(n))` -/
def P3092476655540557409.Spec : Prop :=
  ∀ n, P3092476655540557409.a n = A152061 n

end A152061

/-! ## A152061.P6351511793376950456

`Δ[A255047(n)]-A027375(n)`
-/

namespace A152061.P6351511793376950456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027375 n

end

end A152061.P6351511793376950456

namespace A152061

/-- `Δ[A255047(n)]-A027375(n)` -/
def P6351511793376950456.Spec : Prop :=
  ∀ n, P6351511793376950456.a n = A152061 n

end A152061

/-!
# A152063: Triangle read by rows. Coefficients of the Fibonacci product polynomials F(n) = Product_{k=1..(n - 1)/2} (1 + 4*cos^2(k*Pi/n)).

The programs for A152063, there is no canonical definition to state claims against.
-/

/-! ## A152063.P14827256837102160655

`A125076(A056536(n+1))`
-/

namespace A152063.P14827256837102160655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125076 (A056536 (n + 1)).toNat

end

end A152063.P14827256837102160655

/-! ## A152063.P12640092261945897707

`A125076(A091018(n)+1)`
-/

namespace A152063.P12640092261945897707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125076 (A091018 n + 1).toNat

end

end A152063.P12640092261945897707

/-! ## A152063.P925475658651640004

`A366136(A264617(n+2))`
-/

namespace A152063.P925475658651640004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366136 (A264617 (n + 2)).toNat

end

end A152063.P925475658651640004

/-! ## A152063.P603479660897769854

`Δ[eq[A246051(n), A246588(n)]]`
-/

namespace A152063.P603479660897769854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246051 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246588 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152063.P603479660897769854

/-! ## A152063.P8134118457050496677

`Δ[eq[A246588(n), A296548(n)]]`
-/

namespace A152063.P8134118457050496677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246588 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296548 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152063.P8134118457050496677

/-!
# A152064: a(n) = 2*n^3 - 3*n^2 + 5.

The programs for A152064, the canonical program `A152064.P7157481000966837633` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152064 has offset 0).

The definition of A152064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3-3*n²+5` (program `A152064.P7157481000966837633`, by `A152064.P7157481000966837633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152064.P7157481000966837633

`2*n^3-3*n²+5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152064

/-- `2*n^3-3*n²+5` -/
def P7157481000966837633.Spec : Prop :=
  ∀ n, P7157481000966837633.a n = A152064 n

theorem P7157481000966837633.correct : P7157481000966837633.Spec := by
  intro n
  simp only [A152064]

end A152064

/-! ## A152064.P4360082137846074654

`lcm((2*n+1)*(1-n)²+4, n+1)`
-/

namespace A152064.P4360082137846074654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n + 1 : ℤ) * (1 - (n : ℤ)) ^ 2 + 4) (n + 1 : ℤ)

end

end A152064.P4360082137846074654

namespace A152064

/-- `lcm((2*n+1)*(1-n)²+4, n+1)` -/
def P4360082137846074654.Spec : Prop :=
  ∀ n, (P4360082137846074654.a n : ℤ) = A152064 n

end A152064

/-! ## A152064.P12783003744311104667

`((n*(n+5)+5)*(n+1)^3)%(n^3+(n+2)^3)`
-/

namespace A152064.P12783003744311104667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) + 5) * (n + 1) ^ 3 % (n ^ 3 + (n + 2) ^ 3)

end

end A152064.P12783003744311104667

namespace A152064

/-- `((n*(n+5)+5)*(n+1)^3)%(n^3+(n+2)^3)` -/
def P12783003744311104667.Spec : Prop :=
  ∀ n, (P12783003744311104667.a n : ℤ) = A152064 n

end A152064

/-! ## A152064.P15373387954235096213

`abs(A015238(n)+5)`
-/

namespace A152064.P15373387954235096213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015238 n + 5|

end

end A152064.P15373387954235096213

namespace A152064

/-- `abs(A015238(n)+5)` -/
def P15373387954235096213.Spec : Prop :=
  ∀ n, P15373387954235096213.a n = A152064 n

end A152064

/-! ## A152064.P11828008450141258568

`∑[A140811(abs(1-n))]`
-/

namespace A152064.P11828008450141258568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152064.P11828008450141258568

namespace A152064

/-- `∑[A140811(abs(1-n))]` -/
def P11828008450141258568.Spec : Prop :=
  ∀ n, P11828008450141258568.a n = A152064 n

end A152064

/-!
# A152065: A triangular sequence of polynomial coefficients: p(x,n)=If[n == 0, x^n - x^Floor[(n - 1)/2]*Sum[x^m, {m, 0, n - Floor[(n - 1)/2] - 1}] + 1/x, x^n - x^Floor[(n - 1)/2]*Sum[x^m, {m, 0, n - Floor[(n - 1)/2] - 1}] + 1].

The programs for A152065, there is no canonical definition to state claims against.
-/

/-! ## A152065.P15352422618292117565

`A103451(n)-A101688(n+1)`
-/

namespace A152065.P15352422618292117565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n - A101688 (n + 1)

end

end A152065.P15352422618292117565

/-! ## A152065.P17969106339650727962

`A103452(n)²-A101688(n+1)`
-/

namespace A152065.P17969106339650727962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 - A101688 (n + 1)

end

end A152065.P17969106339650727962

/-! ## A152065.P7411306503031839188

`floor(1/A007318(n)-A101688(n+1))`
-/

namespace A152065.P7411306503031839188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A007318 n : ℚ) - (A101688 (n + 1) : ℚ)⌋

end

end A152065.P7411306503031839188

/-! ## A152065.P5350096691529429903

`A000007(A004197(n))-A101688(n+1)`
-/

namespace A152065.P5350096691529429903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004197 n).toNat - A101688 (n + 1)

end

end A152065.P5350096691529429903

/-! ## A152065.P15691848046234235773

`A000007(A004247(n))-A101688(n+1)`
-/

namespace A152065.P15691848046234235773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004247 n).toNat - A101688 (n + 1)

end

end A152065.P15691848046234235773

/-! ## A152065.P8653692108683433547

`A036987(A128899(n))-A101688(n+1)`
-/

namespace A152065.P8653692108683433547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A128899 n).toNat - A101688 (n + 1)

end

end A152065.P8653692108683433547

/-! ## A152065.P13742416518627487592

`A000007(A228250(n))-A101688(n+1)`
-/

namespace A152065.P13742416518627487592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A228250 n).toNat - A101688 (n + 1)

end

end A152065.P13742416518627487592

/-!
# A152066: Irregular triangle of polynomial coefficients: p(x,n)=If[n == 0, x^n - x^Floor[(n - 1)/ 2]*Sum[x^m, {m, 0, n - 2*Floor[(n - 1)/ 2]}] + 1/x, x^n - x^Floor[(n - 1)/2]*Sum[x^m, {m, 0, n - 2*Floor[(n - 1)/2]}] + 1].

The programs for A152066, there is no canonical definition to state claims against.
-/

/-! ## A152066.P7080861731708379472

`A340507(n+5)-A340507(A080036(n+7))`
-/

namespace A152066.P7080861731708379472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 (n + 5) - A340507 (A080036 (n + 7)).toNat

end

end A152066.P7080861731708379472

/-! ## A152066.P3510995610564525850

`A330025(∑[A337265(A285564(n+1))])`
-/

namespace A152066.P3510995610564525850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337265 (A285564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152066.P3510995610564525850

/-! ## A152066.P14336597507229000549

`round(tan(acot(A098593(n+6))))`
-/

namespace A152066.P14336597507229000549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (SequenceMachineLib.acot (A098593 (n + 6) : ℝ)))

end

end A152066.P14336597507229000549

/-! ## A152066.P2083750789596967182

`A008683(∏{d}[A316123(n+7), #])`
-/

namespace A152066.P2083750789596967182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A152066.P2083750789596967182

/-! ## A152066.P4311493540484590292

`A056594(lcm(A048331(n), A287354(n+1)))`
-/

namespace A152066.P4311493540484590292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.lcm (A048331 n) (A287354 (n + 1)))

end

end A152066.P4311493540484590292

/-!
# A152067: Expansion of 1 / ((1 - x + x^2)*(1 + x - x^3 - x^4 - x^5 - x^6 - x^7 + x^9 + x^10)).

The programs for A152067, the canonical program `A152067.P12464097843098900823` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152067 has offset 0).

The definition of A152067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7+x^12))` (program `A152067.P12464097843098900823`, by `A152067.P12464097843098900823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152067.P12464097843098900823

`ogf(1/(1-x^5-x^6-x^7+x^12))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152067

/-- `ogf(1/(1-x^5-x^6-x^7+x^12))` -/
def P12464097843098900823.Spec : Prop :=
  ∀ n, P12464097843098900823.a n = A152067 n

theorem P12464097843098900823.correct : P12464097843098900823.Spec := by
  intro n
  simp only [A152067]

end A152067

/-!
# A152068: Exceptional Ucycles on 2n+1 nodes.

The programs for A152068, there is no canonical definition to state claims against.
-/

/-! ## A152068.P9743913825883716471

`A152069(n+1)-A152029(n+1)`
-/

namespace A152068.P9743913825883716471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152069 (n + 1) - A152029 (n + 1)

end

end A152068.P9743913825883716471

/-!
# A152069: Total number of Ucycles on 2n+1 nodes.

The programs for A152069, there is no canonical definition to state claims against.
-/

/-! ## A152069.P11227527648230612518

`A152029(n+1)+A152068(n+1)`
-/

namespace A152069.P11227527648230612518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152029 (n + 1) + A152068 (n + 1)

end

end A152069.P11227527648230612518

/-!
# A152072: Triangle read by rows: T(n, k) is the largest product of a partition of n into k positive integers.

The programs for A152072, there is no canonical definition to state claims against.
-/

/-! ## A152072.P6008958039621546999

`A118851(∑[A008284(n+1)])`
-/

namespace A152072.P6008958039621546999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152072.P6008958039621546999

/-! ## A152072.P9797635442328888126

`A124758(record[A161821(n+1)])`
-/

namespace A152072.P9797635442328888126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A152072.P9797635442328888126

/-! ## A152072.P7129258325338601759

`∏{e}[A036035(∑[A008284(n+1)]), #]`
-/

namespace A152072.P7129258325338601759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A152072.P7129258325338601759

/-!
# A152073: a(n) = largest prime < prime(n) such that prime(n) - a(n) is a power of 2, where prime(n) is the n-th prime; a(n) = 0 if no such prime exists.

The programs for A152073, there is no canonical definition to state claims against.
-/

/-! ## A152073.P4583321000072448840

`A008864(n+1)-A165430(A239197(2*n+5))`
-/

namespace A152073.P4583321000072448840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A165430 (A239197 (2 * n + 5)).toNat

end

end A152073.P4583321000072448840

/-! ## A152073.P9716058969877050807

`A000040(n+1)-A067169(A127824(n))`
-/

namespace A152073.P9716058969877050807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A067169 ((A127824 n).toNat + 11)

end

end A152073.P9716058969877050807

/-!
# A152074: Rows sums of triangle A152072.

The programs for A152074, there is no canonical definition to state claims against.
-/

/-! ## A152074.P9986838587356192199

`eq[A054977(n), A327656(A100290(n+1))]`
-/

namespace A152074.P9986838587356192199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A100290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152074.P9986838587356192199

/-! ## A152074.P1700200288495096353

`eq[2, A014963(A100290(n+1))]`
-/

namespace A152074.P1700200288495096353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A100290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152074.P1700200288495096353

/-! ## A152074.P16028776019173924252

`eq[A000007(n), A001842(A100290(n+1))]`
-/

namespace A152074.P16028776019173924252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A100290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152074.P16028776019173924252

/-! ## A152074.P15635608036253191883

`eq[A000038(n), A001842(A100290(n+1))]`
-/

namespace A152074.P15635608036253191883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A100290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152074.P15635608036253191883

/-!
# A152075: a(n) = the smallest prime p > prime(n) such that p - prime(n) is squarefree, where prime(n) is the n-th prime.

The programs for A152075, there is no canonical definition to state claims against.
-/

/-! ## A152075.P331140530823166530

`A006530(A182076(p?[A001057(n)]))`
-/

namespace A152075.P331140530823166530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A152075.P331140530823166530

/-! ## A152075.P5078756028534973443

`A006530(A182076(A000040(n+1)))`
-/

namespace A152075.P5078756028534973443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182076 (A000040 (n + 1)).toNat).toNat

end

end A152075.P5078756028534973443

/-! ## A152075.P12593930580133157498

`A006530(A182076(p?[A045965(n+1)]))`
-/

namespace A152075.P12593930580133157498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A152075.P12593930580133157498

/-! ## A152075.P17755687213111460992

`A006530(A182076(p?[A051772(n+1)]))`
-/

namespace A152075.P17755687213111460992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A152075.P17755687213111460992

/-! ## A152075.P4472749814169647132

`A006530(A182076(p?[A132999(n+1)]))`
-/

namespace A152075.P4472749814169647132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A152075.P4472749814169647132

/-! ## A152075.P17298163263532026354

`A006530(A182076(p?[A182076(n+1)]))`
-/

namespace A152075.P17298163263532026354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A182076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A152075.P17298163263532026354

/-!
# A152076: a(n) = the largest prime p < prime(n) such that prime(n) - p is squarefree, where prime(n) is the n-th prime. a(n) = 0 if no such prime p exists.

The programs for A152076, there is no canonical definition to state claims against.
-/

/-! ## A152076.P15664292217920163084

`A335285(A078444(n+1))+A058348(A058360(n+1))`
-/

namespace A152076.P15664292217920163084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A078444 (n + 1)).toNat + A058348 (A058360 (n + 1)).toNat

end

end A152076.P15664292217920163084

/-! ## A152076.P2299114794738091379

`A057427(A265466(n+1))*A335285(A078444(n+1))`
-/

namespace A152076.P2299114794738091379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A265466 (n + 1)).toNat * A335285 (A078444 (n + 1)).toNat

end

end A152076.P2299114794738091379

/-! ## A152076.P16488217679728171814

`A335285(A078444(n+1))^A349933(A349923(n+1))`
-/

namespace A152076.P16488217679728171814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335285 (A078444 (n + 1)).toNat : ℚ) ^ (A349933 (A349923 (n + 1)).toNat : ℤ)

end

end A152076.P16488217679728171814

/-! ## A152076.P5940338325829831252

`A335285(A078444(n+1))+A050605(A116613(n+1)²)`
-/

namespace A152076.P5940338325829831252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A078444 (n + 1)).toNat + A050605 (A116613 (n + 1) ^ 2).toNat

end

end A152076.P5940338325829831252

/-! ## A152076.P2723720390151896709

`A332825(A274224(n)*A329312(n+1))`
-/

namespace A152076.P2723720390151896709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332825 (A274224 n * A329312 (n + 1)).toNat

end

end A152076.P2723720390151896709

/-!
# A152077: Length of the trajectory of the map x->A003132(x) started at x=n^2 up to the end of its first period.

The programs for A152077, there is no canonical definition to state claims against.
-/

/-! ## A152077.P11493337598686403078

`A099645((n+1)²)+A031176((n+1)²)`
-/

namespace A152077.P11493337598686403078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 ((n + 1) ^ 2) + A031176 ((n + 1) ^ 2)

end

end A152077.P11493337598686403078

/-! ## A152077.P9023255826188257795

`A193995((n+1)²)`
-/

namespace A152077.P9023255826188257795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 ((n + 1) ^ 2)

end

end A152077.P9023255826188257795

/-! ## A152077.P4057274369178803911

`A193995(∑[2*n+1])%20`
-/

namespace A152077.P4057274369178803911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193995 (∑ j ∈ Finset.range (n + 1), f1 j)) 20

end

end A152077.P4057274369178803911

/-! ## A152077.P5962828539725796245

`and(-1, A193995(∑[n+1+n]))`
-/

namespace A152077.P5962828539725796245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A193995 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A152077.P5962828539725796245

/-! ## A152077.P3838669543261115289

`A000027(A193995((n+1)^2))`
-/

namespace A152077.P3838669543261115289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A193995 ((n + 1) ^ 2)).toNat

end

end A152077.P3838669543261115289

/-! ## A152077.P16435247531451076154

`A132263(A193995(∑[2*n+1]))`
-/

namespace A152077.P16435247531451076154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132263 (A193995 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A152077.P16435247531451076154

/-! ## A152077.P10238705596403070699

`A193995(∑[2*n+1])*A361338(n)`
-/

namespace A152077.P10238705596403070699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (∑ j ∈ Finset.range (n + 1), f1 j) * A361338 n

end

end A152077.P10238705596403070699

/-! ## A152077.P4430458220425703950

`∑{d}[A193995(∑[2*n+1]), A000010(#)]`
-/

namespace A152077.P4430458220425703950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A152077.P4430458220425703950

/-! ## A152077.P324462174343582755

`∏{d}[A193995(∑[2*n+1]), A014963(#)]`
-/

namespace A152077.P324462174343582755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A152077.P324462174343582755

/-! ## A152077.P10933087467997933587

`A007318(C(2, n))*A193995(∑[2*n+1])`
-/

namespace A152077.P10933087467997933587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A193995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152077.P10933087467997933587

/-!
# A152078: Numbers a(n) for which A000695(a(n)) = A077718(n).

The programs for A152078, there is no canonical definition to state claims against.
-/

/-! ## A152078.P394986120797345252

`eq[2, A077462(A000695(n))]`
-/

namespace A152078.P394986120797345252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A000695 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152078.P394986120797345252

/-! ## A152078.P11978759189482149382

`eq[1, A001222(A000695(n+1))]+1`
-/

namespace A152078.P11978759189482149382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000695 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A152078.P11978759189482149382

/-! ## A152078.P4765191398424883799

`∪[A152079(n+1), A152080(n+1)]`
-/

namespace A152078.P4765191398424883799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152078.P4765191398424883799

/-! ## A152078.P4482232229320053849

`record[n+4-A305801(A000695(n)+1)]`
-/

namespace A152078.P4482232229320053849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A305801 (A000695 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152078.P4482232229320053849

/-! ## A152078.P344291669339988756

`eq[A000010(A000695(n+1)), A000695(n)]+1`
-/

namespace A152078.P344291669339988756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000695 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A152078.P344291669339988756

/-!
# A152079: Primes p such that A000695(p) are also prime.

The programs for A152079, there is no canonical definition to state claims against.
-/

/-! ## A152079.P7391686633406754166

`A000040(lt[1, A064892(n+1)]+1)`
-/

namespace A152079.P7391686633406754166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A152079.P7391686633406754166

/-! ## A152079.P14629441892457887564

`lt[1, A064891(n+1)]+1`
-/

namespace A152079.P14629441892457887564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152079.P14629441892457887564

/-! ## A152079.P5815065251669960298

`A000040(A152863(n+1))`
-/

namespace A152079.P5815065251669960298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A152863 (n + 1)).toNat

end

end A152079.P5815065251669960298

/-! ## A152079.P3698350663197768080

`A008578(A152863(n+1)+1)`
-/

namespace A152079.P3698350663197768080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A152863 (n + 1) + 1).toNat

end

end A152079.P3698350663197768080

/-! ## A152079.P12518480875413095357

`A065091(A152863(n+1)-1)`
-/

namespace A152079.P12518480875413095357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A152863 (n + 1) - 1).toNat

end

end A152079.P12518480875413095357

/-! ## A152079.P14219649335158518486

`A158611(A152863(n+1)+2)`
-/

namespace A152079.P14219649335158518486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A152863 (n + 1) + 2).toNat

end

end A152079.P14219649335158518486

/-! ## A152079.P6345958599738546453

`A073846(2*A152863(n+1))`
-/

namespace A152079.P6345958599738546453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A152863 (n + 1)).toNat

end

end A152079.P6345958599738546453

/-! ## A152079.P14303830266535058120

`A207790(2*A152863(n+1))`
-/

namespace A152079.P14303830266535058120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A152863 (n + 1)).toNat

end

end A152079.P14303830266535058120

/-! ## A152079.P7358481874849231349

`A006005(lcm((-1)^∑[n+1], A152863(n+1)))`
-/

namespace A152079.P7358481874849231349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lcm ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (A152863 (n + 1)))

end

end A152079.P7358481874849231349

/-!
# A152080: Composite numbers c for which A000695(c) is prime.

The programs for A152080, there is no canonical definition to state claims against.
-/

/-! ## A152080.P8982810196462420937

`filter[A152078(n+1), A005171(#)]`
-/

namespace A152080.P8982810196462420937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A152080.P8982810196462420937

/-! ## A152080.P6058571712587700196

`filter[A152078(n+1), A066247(#)]`
-/

namespace A152080.P6058571712587700196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A152080.P6058571712587700196

/-! ## A152080.P15418282841007184898

`filter[A152078(n+1), A174898(#)]`
-/

namespace A152080.P15418282841007184898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A152080.P15418282841007184898

/-! ## A152080.P2218364365775351594

`filter[A152078(n+1), A202238(#)]`
-/

namespace A152080.P2218364365775351594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A152080.P2218364365775351594

/-! ## A152080.P11207001553423169219

`filter[A152078(n+1), A292438(#)]`
-/

namespace A152080.P11207001553423169219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A152080.P11207001553423169219

/-!
# A152081: Least prime divisor of terms of A152080.

The programs for A152081, there is no canonical definition to state claims against.
-/

/-! ## A152081.P15234719018995911916

`A020639(A152080(n+1))`
-/

namespace A152081.P15234719018995911916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A152080 (n + 1)).toNat

end

end A152081.P15234719018995911916

/-! ## A152081.P17521201241337380169

`A063918(or(1, A152080(n+1)))`
-/

namespace A152081.P17521201241337380169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (Int.lor 1 (A152080 (n + 1))).toNat

end

end A152081.P17521201241337380169

/-! ## A152081.P11958999192530501682

`lcm(A033999(n), A063918(A152080(n+1)))`
-/

namespace A152081.P11958999192530501682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A063918 (A152080 (n + 1)).toNat)

end

end A152081.P11958999192530501682

/-! ## A152081.P3782366520769064853

`A063918(A152080(n+1))%A200256(n+1)`
-/

namespace A152081.P3782366520769064853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063918 (A152080 (n + 1)).toNat) (A200256 (n + 1))

end

end A152081.P3782366520769064853

/-! ## A152081.P17430123747761387249

`A014673(2*A152080(n+1))`
-/

namespace A152081.P17430123747761387249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A152080 (n + 1)).toNat

end

end A152081.P17430123747761387249

/-! ## A152081.P1590052866587011413

`A292269(2*A152080(n+1))`
-/

namespace A152081.P1590052866587011413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * A152080 (n + 1)).toNat

end

end A152081.P1590052866587011413

/-! ## A152081.P5957271744611958296

`A014673(lcm(2, A152080(n+1)))`
-/

namespace A152081.P5957271744611958296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (Int.lcm 2 (A152080 (n + 1)))

end

end A152081.P5957271744611958296

/-! ## A152081.P7115677124023252578

`A063918(A152080(n+1)%A237850(n+1))`
-/

namespace A152081.P7115677124023252578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (Int.tmod (A152080 (n + 1)) (A237850 (n + 1))).toNat

end

end A152081.P7115677124023252578

/-!
# A152082: Largest prime divisors of the terms of A152080.

The programs for A152082, there is no canonical definition to state claims against.
-/

/-! ## A152082.P7180987561352725885

`A006530(A152080(n+1))`
-/

namespace A152082.P7180987561352725885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152080 (n + 1)).toNat

end

end A152082.P7180987561352725885

/-! ## A152082.P702390691386191235

`A076566(A152080(n+1)-1)`
-/

namespace A152082.P702390691386191235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A152080 (n + 1) - 1).toNat

end

end A152082.P702390691386191235

/-! ## A152082.P7649476810498859952

`A085392(or(1, A152080(n+1)))`
-/

namespace A152082.P7649476810498859952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Int.lor 1 (A152080 (n + 1))).toNat

end

end A152082.P7649476810498859952

/-! ## A152082.P9919879072977393036

`A299766(or(1, A152080(n+1)))`
-/

namespace A152082.P9919879072977393036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (Int.lor 1 (A152080 (n + 1))).toNat

end

end A152082.P9919879072977393036

/-! ## A152082.P14751799473506304589

`A076566(xor(1, A152080(n+1)))`
-/

namespace A152082.P14751799473506304589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (Int.xor 1 (A152080 (n + 1))).toNat

end

end A152082.P14751799473506304589

/-! ## A152082.P1952251218830655223

`A139171(∏{p}[A152080(n+1), #])`
-/

namespace A152082.P1952251218830655223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A152082.P1952251218830655223

/-! ## A152082.P5469596066750906271

`A085392(2*A152080(n+1))`
-/

namespace A152082.P5469596066750906271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A152080 (n + 1)).toNat

end

end A152082.P5469596066750906271

/-! ## A152082.P2398955558742428801

`A111089(2*A152080(n+1))`
-/

namespace A152082.P2398955558742428801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (2 * A152080 (n + 1)).toNat

end

end A152082.P2398955558742428801

/-! ## A152082.P15397686295819363261

`A299766(2*A152080(n+1))`
-/

namespace A152082.P15397686295819363261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (2 * A152080 (n + 1)).toNat

end

end A152082.P15397686295819363261

/-! ## A152082.P6127352066491830610

`A085392(lcm(2, A152080(n+1)))`
-/

namespace A152082.P6127352066491830610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Int.lcm 2 (A152080 (n + 1)))

end

end A152082.P6127352066491830610

/-!
# A152083: Number of occurrences of "I" in all Roman numerals of numbers from 1 to n.

The programs for A152083, the canonical program `A152083.P17011425644703404573` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152083 has offset 1).

The definition of A152083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152083.P17011425644703404573

`∑[abs(1-(n+2)%5)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152083

/-- `∑[abs(1-(n+2)%5)]` -/
def P17011425644703404573.Spec : Prop :=
  ∀ n, P17011425644703404573.a n = A152083 (n + 1)

theorem P17011425644703404573.correct : P17011425644703404573.Spec := by
  intro n
  simp only [A152083, Nat.add_sub_cancel]

end A152083

/-! ## A152083.P4079798292732783340

`∑[7%(7-(n+1)%5)]`
-/

namespace A152083.P4079798292732783340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (7 - (((n + 1) % 5 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P4079798292732783340

namespace A152083

/-- `∑[7%(7-(n+1)%5)]` -/
def P4079798292732783340.Spec : Prop :=
  ∀ n, P4079798292732783340.a n = A152083 (n + 1)

end A152083

/-! ## A152083.P13345565361818592903

`a(n-5)+7` with `a(0)=1, a(1)=3, a(2)=6, a(3)=7, a(4)=7`
-/

namespace A152083.P13345565361818592903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 7, 7] fun n a =>
  a (n - 5) + 7

end

end A152083.P13345565361818592903

namespace A152083

/-- `a(n-5)+7` -/
def P13345565361818592903.Spec : Prop :=
  ∀ n, (P13345565361818592903.a n : ℤ) = A152083 (n + 1)

end A152083

/-! ## A152083.P11232768479201827448

`∑[abs(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1, a(4)=0`
-/

namespace A152083.P11232768479201827448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P11232768479201827448

namespace A152083

/-- `∑[abs(a(n-5))]` -/
def P11232768479201827448.Spec : Prop :=
  ∀ n, (P11232768479201827448.a n : ℤ) = A152083 (n + 1)

end A152083

/-! ## A152083.P10614425658186382181

`∑[dr(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1, a(4)=0`
-/

namespace A152083.P10614425658186382181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 1, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 5) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P10614425658186382181

namespace A152083

/-- `∑[dr(a(n-5))]` -/
def P10614425658186382181.Spec : Prop :=
  ∀ n, (P10614425658186382181.a n : ℤ) = A152083 (n + 1)

end A152083

/-! ## A152083.P10935287788906185803

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A152083.P10935287788906185803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P10935287788906185803

namespace A152083

/-- `∑[floor(a(n-5))]` -/
def P10935287788906185803.Spec : Prop :=
  ∀ n, (P10935287788906185803.a n : ℤ) = A152083 (n + 1)

end A152083

/-! ## A152083.P6883139419281769412

`∑[ceil(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1, a(4)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A152083.P6883139419281769412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P6883139419281769412

namespace A152083

/-- `∑[ceil(a(n-5))]` -/
def P6883139419281769412.Spec : Prop :=
  ∀ n, (P6883139419281769412.a n : ℤ) = A152083 (n + 1)

end A152083

/-! ## A152083.P14644481890925210718

`∑[round(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1, a(4)=0`

`round` is left out, it is the identity on integers.
-/

namespace A152083.P14644481890925210718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P14644481890925210718

namespace A152083

/-- `∑[round(a(n-5))]` -/
def P14644481890925210718.Spec : Prop :=
  ∀ n, (P14644481890925210718.a n : ℤ) = A152083 (n + 1)

end A152083

/-! ## A152083.P8953435109174217919

`∑[∑[∑[(n+1)²]+n]%5]`
-/

namespace A152083.P8953435109174217919
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P8953435109174217919

namespace A152083

/-- `∑[∑[∑[(n+1)²]+n]%5]` -/
def P8953435109174217919.Spec : Prop :=
  ∀ n, (P8953435109174217919.a n : ℤ) = A152083 (n + 1)

end A152083

/-! ## A152083.P12422315821509878731

`∑[∑[a(n-5)^a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-2, a(4)=-1`
-/

namespace A152083.P12422315821509878731
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 1, -2, -1] fun n f2 =>
  f2 (n - 5) ^ (f2 (n - 2))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P12422315821509878731

namespace A152083

/-- `∑[∑[a(n-5)^a(n-2)]]` -/
def P12422315821509878731.Spec : Prop :=
  ∀ n, P12422315821509878731.a n = (A152083 (n + 1) : ℝ)

end A152083

/-! ## A152083.P12279552475656042919

`∑[A278313(n+1)]`
-/

namespace A152083.P12279552475656042919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P12279552475656042919

namespace A152083

/-- `∑[A278313(n+1)]` -/
def P12279552475656042919.Spec : Prop :=
  ∀ n, P12279552475656042919.a n = A152083 (n + 1)

end A152083

/-! ## A152083.P17910659445015483962

`∑[abs(A065186(n+1)-n)]`
-/

namespace A152083.P17910659445015483962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065186 (n + 1) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152083.P17910659445015483962

namespace A152083

/-- `∑[abs(A065186(n+1)-n)]` -/
def P17910659445015483962.Spec : Prop :=
  ∀ n, P17910659445015483962.a n = A152083 (n + 1)

end A152083

/-! ## A152083.P1713538344309337346

`A081598(A130483(n+1))`
-/

namespace A152083.P1713538344309337346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 (A130483 (n + 1)).toNat

end

end A152083.P1713538344309337346

namespace A152083

/-- `A081598(A130483(n+1))` -/
def P1713538344309337346.Spec : Prop :=
  ∀ n, P1713538344309337346.a n = A152083 (n + 1)

end A152083

/-!
# A152084: Primes p such that p + 2^floor(log_2(p)) is prime.

The programs for A152084, the canonical program `A152084.P18358934088096042135` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152084 has offset 1).

The definition of A152084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152084.P13116393010577306156

`p?[record[A316472(A005097(n+1))]]`
-/

namespace A152084.P13116393010577306156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316472 (A005097 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P13116393010577306156

namespace A152084

/-- `p?[record[A316472(A005097(n+1))]]` -/
def P13116393010577306156.Spec : Prop :=
  ∀ n, P13116393010577306156.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P139976331392920330

`p?[A065278(p?[2*n+1])]`
-/

namespace A152084.P139976331392920330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065278 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P139976331392920330

namespace A152084

/-- `p?[A065278(p?[2*n+1])]` -/
def P139976331392920330.Spec : Prop :=
  ∀ n, P139976331392920330.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P8565132573916644446

`p?[A379719(p?[2*n+1])]`
-/

namespace A152084.P8565132573916644446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379719 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P8565132573916644446

namespace A152084

/-- `p?[A379719(p?[2*n+1])]` -/
def P8565132573916644446.Spec : Prop :=
  ∀ n, P8565132573916644446.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P13460548067585867833

`A006165(A152085(n+1))`
-/

namespace A152084.P13460548067585867833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A152085 (n + 1)).toNat

end

end A152084.P13460548067585867833

namespace A152084

/-- `A006165(A152085(n+1))` -/
def P13460548067585867833.Spec : Prop :=
  ∀ n, P13460548067585867833.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P18358934088096042135

`p?[A006165(A045344(n+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A152084

/-- `p?[A006165(A045344(n+1))]` -/
def P18358934088096042135.Spec : Prop :=
  ∀ n, P18358934088096042135.a n = A152084 (n + 1)

theorem P18358934088096042135.correct : P18358934088096042135.Spec := by
  intro n
  simp only [A152084, Nat.add_sub_cancel]

end A152084

/-! ## A152084.P17655245844405439013

`p?[A006165(A080165(n+1))]`
-/

namespace A152084.P17655245844405439013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A080165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P17655245844405439013

namespace A152084

/-- `p?[A006165(A080165(n+1))]` -/
def P17655245844405439013.Spec : Prop :=
  ∀ n, P17655245844405439013.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P13039346615267117703

`p?[A006165(A215848(n+1))]`
-/

namespace A152084.P13039346615267117703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A215848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P13039346615267117703

namespace A152084

/-- `p?[A006165(A215848(n+1))]` -/
def P13039346615267117703.Spec : Prop :=
  ∀ n, P13039346615267117703.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P1293574721772113047

`p?[A006165(A065091(n+2))]`
-/

namespace A152084.P1293574721772113047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A065091 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P1293574721772113047

namespace A152084

/-- `p?[A006165(A065091(n+2))]` -/
def P1293574721772113047.Spec : Prop :=
  ∀ n, P1293574721772113047.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P5876880148380359201

`p?[A006165(A000040(n+3))]`
-/

namespace A152084.P5876880148380359201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A000040 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P5876880148380359201

namespace A152084

/-- `p?[A006165(A000040(n+3))]` -/
def P5876880148380359201.Spec : Prop :=
  ∀ n, P5876880148380359201.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P10845787329784524571

`p?[A006165(p?[A006165(n+1)+n])]`
-/

namespace A152084.P10845787329784524571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152084.P10845787329784524571

namespace A152084

/-- `p?[A006165(p?[A006165(n+1)+n])]` -/
def P10845787329784524571.Spec : Prop :=
  ∀ n, P10845787329784524571.a n = A152084 (n + 1)

end A152084

/-! ## A152084.P6817759573991377118

`record[A006530(A279521(A008578(n+4)))]`
-/

namespace A152084.P6817759573991377118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A279521 (A008578 (n + 4)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152084.P6817759573991377118

namespace A152084

/-- `record[A006530(A279521(A008578(n+4)))]` -/
def P6817759573991377118.Spec : Prop :=
  ∀ n, P6817759573991377118.a n = A152084 (n + 1)

end A152084

/-!
# A152085: a(n) = A152084(n) + 2^floor(log_2(A152084(n))).

The programs for A152085, the canonical program `A152085.P13875307143407310086` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152085 has offset 1).

The definition of A152085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152084, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152085.P13875307143407310086

`A152084(n+1)+2^floor(log2(A152084(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152085

/-- `A152084(n+1)+2^floor(log2(A152084(n+1)))` -/
def P13875307143407310086.Spec : Prop :=
  ∀ n, P13875307143407310086.a n = A152085 (n + 1)

theorem P13875307143407310086.correct : P13875307143407310086.Spec := by
  intro n
  simp only [A152085, Nat.add_sub_cancel]

end A152085

/-! ## A152085.P10868793298210310051

`p?[A004754(p?[2*n+1])]`
-/

namespace A152085.P10868793298210310051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152085.P10868793298210310051

namespace A152085

/-- `p?[A004754(p?[2*n+1])]` -/
def P10868793298210310051.Spec : Prop :=
  ∀ n, P10868793298210310051.a n = A152085 (n + 1)

end A152085

/-! ## A152085.P483817265740904936

`p?[A065271(p?[2*n+1])]`
-/

namespace A152085.P483817265740904936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065271 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152085.P483817265740904936

namespace A152085

/-- `p?[A065271(p?[2*n+1])]` -/
def P483817265740904936.Spec : Prop :=
  ∀ n, P483817265740904936.a n = A152085 (n + 1)

end A152085

/-! ## A152085.P15052840566933385271

`p?[A065277(p?[2*n+1])]`
-/

namespace A152085.P15052840566933385271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065277 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152085.P15052840566933385271

namespace A152085

/-- `p?[A065277(p?[2*n+1])]` -/
def P15052840566933385271.Spec : Prop :=
  ∀ n, P15052840566933385271.a n = A152085 (n + 1)

end A152085

/-! ## A152085.P6002222538766437030

`p?[A053644(p?[2*n+1])+p?[2*n+1]]`
-/

namespace A152085.P6002222538766437030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) + (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152085.P6002222538766437030

namespace A152085

/-- `p?[A053644(p?[2*n+1])+p?[2*n+1]]` -/
def P6002222538766437030.Spec : Prop :=
  ∀ n, P6002222538766437030.a n = A152085 (n + 1)

end A152085

/-! ## A152085.P1119148074583240388

`A004754(A152084(n+1))`
-/

namespace A152085.P1119148074583240388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A152084 (n + 1)).toNat

end

end A152085.P1119148074583240388

namespace A152085

/-- `A004754(A152084(n+1))` -/
def P1119148074583240388.Spec : Prop :=
  ∀ n, P1119148074583240388.a n = A152085 (n + 1)

end A152085

/-! ## A152085.P2194951316160291405

`∩[A000040(n+1), A004754(A000040(n+1))]`
-/

namespace A152085.P2194951316160291405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152085.P2194951316160291405

namespace A152085

/-- `∩[A000040(n+1), A004754(A000040(n+1))]` -/
def P2194951316160291405.Spec : Prop :=
  ∀ n, (P2194951316160291405.a n : ℤ) = A152085 (n + 1)

end A152085

/-! ## A152085.P11876585692137799208

`∩[A053813(n+1), A004754(A053813(n+1))]`
-/

namespace A152085.P11876585692137799208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A053813 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152085.P11876585692137799208

namespace A152085

/-- `∩[A053813(n+1), A004754(A053813(n+1))]` -/
def P11876585692137799208.Spec : Prop :=
  ∀ n, (P11876585692137799208.a n : ℤ) = A152085 (n + 1)

end A152085

/-! ## A152085.P9075662192639909747

`∩[A116974(n+1), A004754(A116974(n+1))]`
-/

namespace A152085.P9075662192639909747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A116974 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152085.P9075662192639909747

namespace A152085

/-- `∩[A116974(n+1), A004754(A116974(n+1))]` -/
def P9075662192639909747.Spec : Prop :=
  ∀ n, (P9075662192639909747.a n : ℤ) = A152085 (n + 1)

end A152085

/-! ## A152085.P8924236154239194097

`∩[A008578(n+2), A004754(A008578(n+2))]`
-/

namespace A152085.P8924236154239194097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A008578 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152085.P8924236154239194097

namespace A152085

/-- `∩[A008578(n+2), A004754(A008578(n+2))]` -/
def P8924236154239194097.Spec : Prop :=
  ∀ n, (P8924236154239194097.a n : ℤ) = A152085 (n + 1)

end A152085

/-! ## A152085.P10252386541696133960

`∩[A182986(n+2), A004754(A182986(n+2))]`
-/

namespace A152085.P10252386541696133960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A182986 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152085.P10252386541696133960

namespace A152085

/-- `∩[A182986(n+2), A004754(A182986(n+2))]` -/
def P10252386541696133960.Spec : Prop :=
  ∀ n, (P10252386541696133960.a n : ℤ) = A152085 (n + 1)

end A152085

/-! ## A152085.P15628849405295372615

`∩[A326715(n+2), A004754(A326715(n+2))]`
-/

namespace A152085.P15628849405295372615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A326715 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152085.P15628849405295372615

namespace A152085

/-- `∩[A326715(n+2), A004754(A326715(n+2))]` -/
def P15628849405295372615.Spec : Prop :=
  ∀ n, (P15628849405295372615.a n : ℤ) = A152085 (n + 1)

end A152085

/-!
# A152086: a(n) = Sum_{k=1..n-1} k*A110971(n,k).

The programs for A152086, the canonical program `A152086.P7459043147608244788` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152086 has offset 2).

The definition of A152086 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102699, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152086.P7459043147608244788

`A102699(n+2)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A152086

/-- `A102699(n+2)/2` -/
def P7459043147608244788.Spec : Prop :=
  ∀ n, P7459043147608244788.a n = (A152086 (n + 2) : ℚ)

end A152086

/-! ## A152086.P468076761829832890

`A206603(n+1)+2^n`
-/

namespace A152086.P468076761829832890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (n + 1) + (2 ^ n : ℤ)

end

end A152086.P468076761829832890

namespace A152086

/-- `A206603(n+1)+2^n` -/
def P468076761829832890.Spec : Prop :=
  ∀ n, P468076761829832890.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P4935002698900428942

`A182555(n+1)-2^n`
-/

namespace A152086.P4935002698900428942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 (n + 1) - (2 ^ n : ℤ)

end

end A152086.P4935002698900428942

namespace A152086

/-- `A182555(n+1)-2^n` -/
def P4935002698900428942.Spec : Prop :=
  ∀ n, P4935002698900428942.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P4543152558937724488

`A001792(n)+A001792(n)-A189391(n+1)`
-/

namespace A152086.P4543152558937724488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A001792 n - A189391 (n + 1))

end

end A152086.P4543152558937724488

namespace A152086

/-- `A001792(n)+A001792(n)-A189391(n+1)` -/
def P4543152558937724488.Spec : Prop :=
  ∀ n, P4543152558937724488.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P11731701708221220393

`A189162(n+1)+A099325(n)-A189391(n+1)`
-/

namespace A152086.P11731701708221220393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) + (A099325 n - A189391 (n + 1))

end

end A152086.P11731701708221220393

namespace A152086

/-- `A189162(n+1)+A099325(n)-A189391(n+1)` -/
def P11731701708221220393.Spec : Prop :=
  ∀ n, P11731701708221220393.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P10227368190141614874

`A189162(n+1)+A206603(n+1)-A189390(n)`
-/

namespace A152086.P10227368190141614874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) + (A206603 (n + 1) - A189390 n)

end

end A152086.P10227368190141614874

namespace A152086

/-- `A189162(n+1)+A206603(n+1)-A189390(n)` -/
def P10227368190141614874.Spec : Prop :=
  ∀ n, P10227368190141614874.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P4211249356126693741

`A189390(n+1)-A036289(n)`
-/

namespace A152086.P4211249356126693741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189390 (n + 1) - A036289 n

end

end A152086.P4211249356126693741

namespace A152086

/-- `A189390(n+1)-A036289(n)` -/
def P4211249356126693741.Spec : Prop :=
  ∀ n, P4211249356126693741.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P8784074239337992200

`A189390(n+1)-2*A001787(n)`
-/

namespace A152086.P8784074239337992200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189390 (n + 1) - 2 * A001787 n

end

end A152086.P8784074239337992200

namespace A152086

/-- `A189390(n+1)-2*A001787(n)` -/
def P8784074239337992200.Spec : Prop :=
  ∀ n, P8784074239337992200.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P1467130694382280727

`A189390(n+1)-(A189391(n)+A189390(n))`
-/

namespace A152086.P1467130694382280727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189390 (n + 1) - (A189391 n + A189390 n)

end

end A152086.P1467130694382280727

namespace A152086

/-- `A189390(n+1)-(A189391(n)+A189390(n))` -/
def P1467130694382280727.Spec : Prop :=
  ∀ n, P1467130694382280727.a n = A152086 (n + 2)

end A152086

/-! ## A152086.P16262526152993299085

`A189162(n+2)-(A189162(n+1)+A099325(n))`
-/

namespace A152086.P16262526152993299085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 2) - (A189162 (n + 1) + A099325 n)

end

end A152086.P16262526152993299085

namespace A152086

/-- `A189162(n+2)-(A189162(n+1)+A099325(n))` -/
def P16262526152993299085.Spec : Prop :=
  ∀ n, P16262526152993299085.a n = A152086 (n + 2)

end A152086

/-!
# A152087: Primes p such that q - p is not squarefree, where q is the next prime immediately following p.

The programs for A152087, there is no canonical definition to state claims against.
-/

/-! ## A152087.P11239639289984437622

`∪[A031936(n+1), A098059(n+1)]`
-/

namespace A152087.P11239639289984437622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P11239639289984437622

/-! ## A152087.P2348549893644073114

`∪[A066540(n+1), A098059(n+1)]`
-/

namespace A152087.P2348549893644073114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P2348549893644073114

/-! ## A152087.P3794082152388440711

`∪[A095651(n+1), A098059(n+1)]`
-/

namespace A152087.P3794082152388440711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P3794082152388440711

/-! ## A152087.P11298128926594682533

`∪[A098059(n+1), A106975(n+1)]`
-/

namespace A152087.P11298128926594682533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P11298128926594682533

/-! ## A152087.P14768065617517752676

`∪[A098059(n+1), A117838(n+1)]`
-/

namespace A152087.P14768065617517752676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P14768065617517752676

/-! ## A152087.P16892485335727590973

`∪[A098059(n+1), A124587(n+1)]`
-/

namespace A152087.P16892485335727590973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P16892485335727590973

/-! ## A152087.P11211749810582254462

`∪[A098059(n+1), A165811(n+1)]`
-/

namespace A152087.P11211749810582254462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P11211749810582254462

/-! ## A152087.P12974993378807904261

`∪[A098059(n+1), A209875(n+1)]`
-/

namespace A152087.P12974993378807904261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P12974993378807904261

/-! ## A152087.P18072183768732724623

`∪[A098059(n+1), A234842(n+1)]`
-/

namespace A152087.P18072183768732724623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P18072183768732724623

/-! ## A152087.P18096582930069475001

`∪[A098059(n+1), A332675(n+1)]`
-/

namespace A152087.P18096582930069475001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A152087.P18096582930069475001

/-!
# A152088: Positive integers k that when written in binary have exactly the same number of (non-leading) 0's as the number of divisors of k.

The programs for A152088, the canonical program `A152088.P16024274241794701574` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152088 has offset 1).

The definition of A152088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152088.P16024274241794701574

`eq[A032741(n)+1, A080791(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A152088

/-- `eq[A032741(n)+1, A080791(n)]` -/
def P16024274241794701574.Spec : Prop :=
  ∀ n, (P16024274241794701574.a n : ℤ) = A152088 (n + 1)

theorem P16024274241794701574.correct : P16024274241794701574.Spec := by
  intro n
  simp only [A152088, Nat.add_sub_cancel]

end A152088

/-! ## A152088.P6367241962380208430

`eq[4*A080791(n), A145154(n)]`
-/

namespace A152088.P6367241962380208430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P6367241962380208430

namespace A152088

/-- `eq[4*A080791(n), A145154(n)]` -/
def P6367241962380208430.Spec : Prop :=
  ∀ n, (P6367241962380208430.a n : ℤ) = A152088 (n + 1)

end A152088

/-! ## A152088.P15660387202068454879

`eq[A000005(A028310(n)), A080791(n)]`
-/

namespace A152088.P15660387202068454879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P15660387202068454879

namespace A152088

/-- `eq[A000005(A028310(n)), A080791(n)]` -/
def P15660387202068454879.Spec : Prop :=
  ∀ n, (P15660387202068454879.a n : ℤ) = A152088 (n + 1)

end A152088

/-! ## A152088.P14583875177473209318

`eq[A000005(A060000(n+1)), A080791(n)]`
-/

namespace A152088.P14583875177473209318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P14583875177473209318

namespace A152088

/-- `eq[A000005(A060000(n+1)), A080791(n)]` -/
def P14583875177473209318.Spec : Prop :=
  ∀ n, (P14583875177473209318.a n : ℤ) = A152088 (n + 1)

end A152088

/-! ## A152088.P14128206356813434485

`eq[A000005(A000038(n)+n), A023416(n)]`
-/

namespace A152088.P14128206356813434485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P14128206356813434485

namespace A152088

/-- `eq[A000005(A000038(n)+n), A023416(n)]` -/
def P14128206356813434485.Spec : Prop :=
  ∀ n, (P14128206356813434485.a n : ℤ) = A152088 (n + 1)

end A152088

/-! ## A152088.P11713221707629894211

`eq[A000005(A233583(n+1)), A023416(n)]`
-/

namespace A152088.P11713221707629894211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P11713221707629894211

namespace A152088

/-- `eq[A000005(A233583(n+1)), A023416(n)]` -/
def P11713221707629894211.Spec : Prop :=
  ∀ n, (P11713221707629894211.a n : ℤ) = A152088 (n + 1)

end A152088

/-! ## A152088.P6087443585025299889

`eq[A000005(A233583(n+1)), A080791(n)]`
-/

namespace A152088.P6087443585025299889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152088.P6087443585025299889

namespace A152088

/-- `eq[A000005(A233583(n+1)), A080791(n)]` -/
def P6087443585025299889.Spec : Prop :=
  ∀ n, (P6087443585025299889.a n : ℤ) = A152088 (n + 1)

end A152088

/-!
# A152089: Numbers k such that k! is not the sum of two nonnegative triangular numbers.

The programs for A152089, there is no canonical definition to state claims against.
-/

/-! ## A152089.P11634980363186850242

`comp[A180590(n+1)]`
-/

namespace A152089.P11634980363186850242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A152089.P11634980363186850242

/-! ## A152089.P12116009223614409731

`comp[record[A180590(A152271(n))]]`
-/

namespace A152089.P12116009223614409731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180590 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A152089.P12116009223614409731

/-! ## A152089.P11871387121799201474

`comp[record[A180590(A193592(n))]]`
-/

namespace A152089.P11871387121799201474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180590 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A152089.P11871387121799201474

/-! ## A152089.P5426247460975933025

`eq[0, A171099(n)]`
-/

namespace A152089.P5426247460975933025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152089.P5426247460975933025

/-! ## A152089.P17150772420717876118

`A000027(lt[A171099(n), 1])`
-/

namespace A152089.P17150772420717876118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A152089.P17150772420717876118

/-! ## A152089.P14992836313250595354

`lt[A171099(A028310(n)), 1]`
-/

namespace A152089.P14992836313250595354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152089.P14992836313250595354

/-! ## A152089.P3809505271680937728

`lt[A171099(n), A057427(n)]`
-/

namespace A152089.P3809505271680937728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152089.P3809505271680937728

/-! ## A152089.P3751923164629653772

`lt[A171099(n), A266678(n)]`
-/

namespace A152089.P3751923164629653772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152089.P3751923164629653772

/-! ## A152089.P12158422574562359314

`lt[A000203(A171099(n)+1), 2]`
-/

namespace A152089.P12158422574562359314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A171099 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152089.P12158422574562359314

/-!
# A152090: a(n) = 2^n*Product_{k=1..floor((n-1)/2)} (1 + 2*cos(k*Pi/n)^2 + 4*cos(k*Pi/n)^4).

The programs for A152090, the canonical program `A152090.P18326710871337896512` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152090 has offset 0).

The definition of A152090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152090.P18326710871337896512

`a(n-1)+3*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152090

/-- `a(n-1)+3*a(n-2)+a(n-3)-a(n-4)` -/
def P18326710871337896512.Spec : Prop :=
  ∀ n, P18326710871337896512.a n = A152090 n

theorem P18326710871337896512.correct : P18326710871337896512.Spec := by
  intro n
  simp only [A152090]

end A152090

/-! ## A152090.P706631894342665659

`A054404(A036355(n)+A034691(n))`
-/

namespace A152090.P706631894342665659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A036355 n + A034691 n).toNat

end

end A152090.P706631894342665659

namespace A152090

/-- `A054404(A036355(n)+A034691(n))` -/
def P706631894342665659.Spec : Prop :=
  ∀ n, P706631894342665659.a n = A152090 n

end A152090

/-!
# A152091: Primes which are the sum of cousin prime pairs + 1.

The programs for A152091, there is no canonical definition to state claims against.
-/

/-! ## A152091.P15393231541234219646

`p?[A165986(n+1)+5]`
-/

namespace A152091.P15393231541234219646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165986 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P15393231541234219646

/-! ## A152091.P14617061083859982240

`p?[2*A087679(n+1)+1]`
-/

namespace A152091.P14617061083859982240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087679 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P14617061083859982240

/-! ## A152091.P10589843444006801709

`p?[2*A046132(n+1)-3]`
-/

namespace A152091.P10589843444006801709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046132 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P10589843444006801709

/-! ## A152091.P6209208153522727112

`p?[A046132(n+1)+A087679(n+1)-1]`
-/

namespace A152091.P6209208153522727112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) + (A087679 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P6209208153522727112

/-! ## A152091.P8599289524484525456

`p?[A072541(2*n+1)+A046132(n+1)]`
-/

namespace A152091.P8599289524484525456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (2 * n + 1) + A046132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P8599289524484525456

/-! ## A152091.P18036536382324919897

`p?[A167607(n+1)+1]`
-/

namespace A152091.P18036536382324919897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P18036536382324919897

/-! ## A152091.P14830263879576071981

`record[A006530(A167607(n+1)+1)]`
-/

namespace A152091.P14830263879576071981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A167607 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152091.P14830263879576071981

/-! ## A152091.P16182901146652773185

`p?[A005408(A072541(2*n+1)+1)]`
-/

namespace A152091.P16182901146652773185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A072541 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P16182901146652773185

/-! ## A152091.P16829518565601599669

`p?[A256382(n+1)+1]`
-/

namespace A152091.P16829518565601599669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256382 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152091.P16829518565601599669

/-! ## A152091.P16792645052133510718

`record[A006530(A256382(n+1)+1)]`
-/

namespace A152091.P16792645052133510718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256382 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152091.P16792645052133510718

/-!
# A152094: Quartic product sequence: a(n) = Product_{k=1..floor((n-1)/2)} (1 + m*cos(k*Pi/n)^2 + q*cos(k*Pi/n)^4 ), with m = 2*4, q=2*4^3.

The programs for A152094, there is no canonical definition to state claims against.
-/

/-! ## A152094.P8906032429485780087

`A290507(A394940(n))`
-/

namespace A152094.P8906032429485780087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290507 (A394940 n).toNat

end

end A152094.P8906032429485780087

/-! ## A152094.P9018571929084255299

`A007775(A076269(n²))`
-/

namespace A152094.P9018571929084255299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A076269 (n ^ 2)).toNat

end

end A152094.P9018571929084255299

/-!
# A152096: Quartic product sequence: a(n) = Product_{k=1..(n-1)/2} (1 + m*cos(k*Pi/n)^2 + q*cos(k*Pi/n)^4), with m=12 and q = 3*4^3.

The programs for A152096, there is no canonical definition to state claims against.
-/

/-! ## A152096.P6178375974954939010

`p?[A173323(n)]-A080100(n)²`
-/

namespace A152096.P6178375974954939010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A080100 n ^ 2

end

end A152096.P6178375974954939010

/-! ## A152096.P2284856775812729616

`A167865(xor(4, A219754(3*n+1)))`
-/

namespace A152096.P2284856775812729616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (Int.xor 4 (A219754 (3 * n + 1))).toNat

end

end A152096.P2284856775812729616

/-!
# A152098: Quartic product sequence: m = 4; p = 4^3; a(n) = Product_{k=1..(n-1)/2} ( 1 + m*cos(k*Pi/n)^2 + p*cos(k*Pi/n)^4 ).

The programs for A152098, the canonical program `A152098.P18296594240542556869` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152098 has offset 0).

The definition of A152098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152098.P18296594240542556869

`a(n-1)+9*a(n-2)+4*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=6, a(4)=19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152098

/-- `a(n-1)+9*a(n-2)+4*a(n-3)-16*a(n-4)` -/
def P18296594240542556869.Spec : Prop :=
  ∀ n, P18296594240542556869.a n = A152098 n

theorem P18296594240542556869.correct : P18296594240542556869.Spec := by
  intro n
  simp only [A152098]

end A152098

/-! ## A152098.P9847850987325446502

`A332809(A224792(n+1)-n)`
-/

namespace A152098.P9847850987325446502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (A224792 (n + 1) - (n : ℤ)).toNat

end

end A152098.P9847850987325446502

namespace A152098

/-- `A332809(A224792(n+1)-n)` -/
def P9847850987325446502.Spec : Prop :=
  ∀ n, P9847850987325446502.a n = A152098 n

end A152098

/-! ## A152098.P13408224926034199067

`A332809(A280012(n+1)-n)`
-/

namespace A152098.P13408224926034199067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (A280012 (n + 1) - (n : ℤ)).toNat

end

end A152098.P13408224926034199067

namespace A152098

/-- `A332809(A280012(n+1)-n)` -/
def P13408224926034199067.Spec : Prop :=
  ∀ n, P13408224926034199067.a n = A152098 n

end A152098

/-!
# A152099: a(n) = (2^prime(n) - 1)*(2^prime(n) + 1) = 2^(2*prime(n)) - 1.

The programs for A152099, the canonical program `A152099.P15152217081351497144` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152099 has offset 1).

The definition of A152099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152099.P15152217081351497144

`A034785(n+1)²-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A152099

/-- `A034785(n+1)²-1` -/
def P15152217081351497144.Spec : Prop :=
  ∀ n, P15152217081351497144.a n = A152099 (n + 1)

theorem P15152217081351497144.correct : P15152217081351497144.Spec := by
  intro n
  simp only [A152099, Nat.add_sub_cancel]

end A152099

/-! ## A152099.P14499586971567577492

`A000302(A000040(n+1))-1`
-/

namespace A152099.P14499586971567577492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A000040 (n + 1)).toNat - 1

end

end A152099.P14499586971567577492

namespace A152099

/-- `A000302(A000040(n+1))-1` -/
def P14499586971567577492.Spec : Prop :=
  ∀ n, P14499586971567577492.a n = A152099 (n + 1)

end A152099

/-! ## A152099.P15659971898579674030

`A001348(n+1)*A098640(n+1)`
-/

namespace A152099.P15659971898579674030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) * A098640 (n + 1)

end

end A152099.P15659971898579674030

namespace A152099

/-- `A001348(n+1)*A098640(n+1)` -/
def P15659971898579674030.Spec : Prop :=
  ∀ n, P15659971898579674030.a n = A152099 (n + 1)

end A152099

/-! ## A152099.P18355525430815628582

`4^p?[comp[n²]]-1`
-/

namespace A152099.P18355525430815628582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A152099.P18355525430815628582

namespace A152099

/-- `4^p?[comp[n²]]-1` -/
def P18355525430815628582.Spec : Prop :=
  ∀ n, P18355525430815628582.a n = A152099 (n + 1)

end A152099

/-! ## A152099.P15908545304050659477

`4^eq[1, ∑{e}[n, #]]-1`
-/

namespace A152099.P15908545304050659477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A152099.P15908545304050659477

namespace A152099

/-- `4^eq[1, ∑{e}[n, #]]-1` -/
def P15908545304050659477.Spec : Prop :=
  ∀ n, P15908545304050659477.a n = A152099 (n + 1)

end A152099

