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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.B012.C000
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
# A227100: Number of nX3 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X4 binary array having a sum of two, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227100, there is no canonical definition to state claims against.
-/

/-! ## A227100.P13472217664585090000

`A227103(∑[n+2]+4)`
-/

namespace A227100.P13472217664585090000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227100.P13472217664585090000

/-! ## A227100.P15338155501034563440

`record[A227103(n+4)/A051523(n)]`
-/

namespace A227100.P15338155501034563440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227103 (n + 4) : ℚ) / (A051523 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227100.P15338155501034563440

/-! ## A227100.P12815870660923564743

`record[root(A227103(n+4), A059298(n))]`
-/

namespace A227100.P12815870660923564743
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227103 (n + 4) : ℝ) ^ (1 / (A059298 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227100.P12815870660923564743

/-! ## A227100.P12391840283180642909

`record[root(A227103(n+4), A297395(n+1))]`
-/

namespace A227100.P12391840283180642909
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227103 (n + 4) : ℝ) ^ (1 / (A297395 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227100.P12391840283180642909

/-! ## A227100.P11335391853301172063

`record[gcd(A141169(n+1), A227103(n+4))]`
-/

namespace A227100.P11335391853301172063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 (n + 1)) (A227103 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227100.P11335391853301172063

/-!
# A227101: Number of nX4 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X5 binary array having a sum of two, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227101, there is no canonical definition to state claims against.
-/

/-! ## A227101.P15029114207011581001

`A227103(A374004(n+1))`
-/

namespace A227101.P15029114207011581001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A374004 (n + 1)).toNat

end

end A227101.P15029114207011581001

/-! ## A227101.P16550864746937196688

`A227103(A141214(n)+7)`
-/

namespace A227101.P16550864746937196688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A141214 n + 7).toNat

end

end A227101.P16550864746937196688

/-! ## A227101.P8346927912917031937

`A227103(A052905(n)+9)`
-/

namespace A227101.P8346927912917031937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A052905 n + 9).toNat

end

end A227101.P8346927912917031937

/-! ## A227101.P14206005188331450824

`A227103(A055999(n)+10)`
-/

namespace A227101.P14206005188331450824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A055999 n + 10).toNat

end

end A227101.P14206005188331450824

/-! ## A227101.P3784721068339747164

`A227103(eq[5, A066657(n)])`
-/

namespace A227101.P3784721068339747164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227101.P3784721068339747164

/-!
# A227102: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having a sum of two, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227102, there is no canonical definition to state claims against.
-/

/-! ## A227102.P11912815812680709578

`A227103(A374005(n+1))`
-/

namespace A227102.P11912815812680709578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A374005 (n + 1)).toNat

end

end A227102.P11912815812680709578

/-! ## A227102.P4953226443463556317

`A227103(A167499(n+3))`
-/

namespace A227102.P4953226443463556317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A167499 (n + 3)).toNat

end

end A227102.P4953226443463556317

/-! ## A227102.P2651235920459574765

`A227103(A155212(n)+13)`
-/

namespace A227102.P2651235920459574765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A155212 n + 13).toNat

end

end A227102.P2651235920459574765

/-! ## A227102.P15462377739338205753

`A227103(A056000(n)+15)`
-/

namespace A227102.P15462377739338205753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (A056000 n + 15).toNat

end

end A227102.P15462377739338205753

/-! ## A227102.P12718537280788235350

`A227103(eq[7, A066657(n)])`
-/

namespace A227102.P12718537280788235350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227102.P12718537280788235350

/-!
# A227103: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having a sum of two, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227103, there is no canonical definition to state claims against.
-/

/-! ## A227103.P16781371410391225459

`A240338(∑[A287378(n)])`
-/

namespace A227103.P16781371410391225459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227103.P16781371410391225459

/-! ## A227103.P5778885174443879127

`A240338(A001104(n+1))`
-/

namespace A227103.P5778885174443879127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A001104 (n + 1)).toNat

end

end A227103.P5778885174443879127

/-! ## A227103.P18033315360459898103

`A240338(A002998(n+1))`
-/

namespace A227103.P18033315360459898103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A002998 (n + 1)).toNat

end

end A227103.P18033315360459898103

/-! ## A227103.P11374983823179268895

`A240338(A032555(n+1))`
-/

namespace A227103.P11374983823179268895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A032555 (n + 1)).toNat

end

end A227103.P11374983823179268895

/-! ## A227103.P16542995998482810125

`A240338(A032557(n+1))`
-/

namespace A227103.P16542995998482810125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A032557 (n + 1)).toNat

end

end A227103.P16542995998482810125

/-!
# A227104: a(0)=-1, a(1)=3; a(n+2) = a(n+1) + a(n) + 2*A057078(n+1).

The programs for A227104, the canonical program `A227104.P16096106686444458049` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227104 has offset 0).

The definition of A227104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227104.P16096106686444458049

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=-1, a(1)=3, a(2)=2, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227104

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P16096106686444458049.Spec : Prop :=
  ∀ n, P16096106686444458049.a n = A227104 n

theorem P16096106686444458049.correct : P16096106686444458049.Spec := by
  intro n
  simp only [A227104]

end A227104

/-! ## A227104.P3237762945570672469

`A226328(n+1)+1`
-/

namespace A227104.P3237762945570672469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226328 (n + 1) + 1

end

end A227104.P3237762945570672469

namespace A227104

/-- `A226328(n+1)+1` -/
def P3237762945570672469.Spec : Prop :=
  ∀ n, P3237762945570672469.a n = A227104 n

end A227104

/-! ## A227104.P14222260892226485557

`A001588(n)-(n+2)%3`
-/

namespace A227104.P14222260892226485557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - (((n + 2) % 3 : ℕ) : ℤ)

end

end A227104.P14222260892226485557

namespace A227104

/-- `A001588(n)-(n+2)%3` -/
def P14222260892226485557.Spec : Prop :=
  ∀ n, P14222260892226485557.a n = A227104 n

end A227104

/-! ## A227104.P12148297689318132136

`2*A000045(n)-A049347(n)`
-/

namespace A227104.P12148297689318132136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A049347 n

end

end A227104.P12148297689318132136

namespace A227104

/-- `2*A000045(n)-A049347(n)` -/
def P12148297689318132136.Spec : Prop :=
  ∀ n, P12148297689318132136.a n = A227104 n

end A227104

/-! ## A227104.P6282443279381378471

`A006355(n+1)-A106510(n+1)`
-/

namespace A227104.P6282443279381378471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - A106510 (n + 1)

end

end A227104.P6282443279381378471

namespace A227104

/-- `A006355(n+1)-A106510(n+1)` -/
def P6282443279381378471.Spec : Prop :=
  ∀ n, P6282443279381378471.a n = A227104 n

end A227104

/-! ## A227104.P9430075373245901595

`A006355(n+1)-A010892(4*n)`
-/

namespace A227104.P9430075373245901595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - A010892 (4 * n)

end

end A227104.P9430075373245901595

namespace A227104

/-- `A006355(n+1)-A010892(4*n)` -/
def P9430075373245901595.Spec : Prop :=
  ∀ n, P9430075373245901595.a n = A227104 n

end A227104

/-! ## A227104.P10731087645055597495

`A006355(n+1)+∑[A099837(n+2)]`
-/

namespace A227104.P10731087645055597495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227104.P10731087645055597495

namespace A227104

/-- `A006355(n+1)+∑[A099837(n+2)]` -/
def P10731087645055597495.Spec : Prop :=
  ∀ n, P10731087645055597495.a n = A227104 n

end A227104

/-! ## A227104.P12289792131183615824

`A010872(2*n)+A118658(n+1)-1`
-/

namespace A227104.P12289792131183615824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * n) + (A118658 (n + 1) - 1)

end

end A227104.P12289792131183615824

namespace A227104

/-- `A010872(2*n)+A118658(n+1)-1` -/
def P12289792131183615824.Spec : Prop :=
  ∀ n, P12289792131183615824.a n = A227104 n

end A227104

/-! ## A227104.P11106335627336464254

`2*A212804(n+1)-A010892(4*n)`
-/

namespace A227104.P11106335627336464254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 (n + 1) - A010892 (4 * n)

end

end A227104.P11106335627336464254

namespace A227104

/-- `2*A212804(n+1)-A010892(4*n)` -/
def P11106335627336464254.Spec : Prop :=
  ∀ n, P11106335627336464254.a n = A227104 n

end A227104

/-! ## A227104.P16360132632071376014

`2*A103609(2*n)-A010892(4*n)`
-/

namespace A227104.P16360132632071376014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (2 * n) - A010892 (4 * n)

end

end A227104.P16360132632071376014

namespace A227104

/-- `2*A103609(2*n)-A010892(4*n)` -/
def P16360132632071376014.Spec : Prop :=
  ∀ n, P16360132632071376014.a n = A227104 n

end A227104

/-! ## A227104.P14390269707451073137

`A000045(n)+A000045(n)-A102283(n+1)`
-/

namespace A227104.P14390269707451073137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000045 n - A102283 (n + 1))

end

end A227104.P14390269707451073137

namespace A227104

/-- `A000045(n)+A000045(n)-A102283(n+1)` -/
def P14390269707451073137.Spec : Prop :=
  ∀ n, P14390269707451073137.a n = A227104 n

end A227104

/-! ## A227104.P7080480574429600517

`A000032(n+1)-A094686(n)-A094686(n)`
-/

namespace A227104.P7080480574429600517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A094686 n - A094686 n

end

end A227104.P7080480574429600517

namespace A227104

/-- `A000032(n+1)-A094686(n)-A094686(n)` -/
def P7080480574429600517.Spec : Prop :=
  ∀ n, P7080480574429600517.a n = A227104 n

end A227104

/-! ## A227104.P3468421220254623250

`Δ[a(n-1)+or(2, a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A227104.P3468421220254623250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + Nat.lor 2 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227104.P3468421220254623250

namespace A227104

/-- `Δ[a(n-1)+or(2, a(n-2))]` -/
def P3468421220254623250.Spec : Prop :=
  ∀ n, P3468421220254623250.a n = A227104 n

end A227104

/-!
# A227105: Smallest number k such that the n prime distinct divisors of k are also n consecutive divisors of k.

The programs for A227105, there is no canonical definition to state claims against.
-/

/-! ## A227105.P10269894155177228761

`A192366(A047223(n+1)+A000045(n+2))`
-/

namespace A227105.P10269894155177228761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 (A047223 (n + 1) + A000045 (n + 2)).toNat

end

end A227105.P10269894155177228761

/-! ## A227105.P8599772363738544497

`A192366(A363373(n)+A026741(2*(n+2)))`
-/

namespace A227105.P8599772363738544497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192366 (A363373 n + A026741 (2 * (n + 2))).toNat

end

end A227105.P8599772363738544497

/-!
# A227106: Numerators of harmonic mean H(n,3), n >= 0.

The programs for A227106, the canonical program `A227106.P15059650197525808097` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227106 has offset 0).

The definition of A227106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227106.P8195035452004150211

`lcm(n+3, 6*n)/(n+3)`
-/

namespace A227106.P8195035452004150211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (6 * n) : ℚ) / (n + 3 : ℚ)

end

end A227106.P8195035452004150211

namespace A227106

/-- `lcm(n+3, 6*n)/(n+3)` -/
def P8195035452004150211.Spec : Prop :=
  ∀ n, P8195035452004150211.a n = (A227106 n : ℚ)

end A227106

/-! ## A227106.P12556173488807256521

`6*n/gcd(n+3, 6*n)`
-/

namespace A227106.P12556173488807256521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n : ℚ) / (Nat.gcd (n + 3) (6 * n) : ℚ)

end

end A227106.P12556173488807256521

namespace A227106

/-- `6*n/gcd(n+3, 6*n)` -/
def P12556173488807256521.Spec : Prop :=
  ∀ n, P12556173488807256521.a n = (A227106 n : ℚ)

end A227106

/-! ## A227106.P3623371910844545497

`A165988(n)/A109012(n+3)`
-/

namespace A227106.P3623371910844545497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165988 n : ℚ) / (A109012 (n + 3) : ℚ)

end

end A227106.P3623371910844545497

namespace A227106

/-- `A165988(n)/A109012(n+3)` -/
def P3623371910844545497.Spec : Prop :=
  ∀ n, P3623371910844545497.a n = (A227106 n : ℚ)

end A227106

/-! ## A227106.P15059650197525808097

`lcm(A008588(n), A017017(n))%A017005(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227106

/-- `lcm(A008588(n), A017017(n))%A017005(n)` -/
def P15059650197525808097.Spec : Prop :=
  ∀ n, P15059650197525808097.a n = A227106 n

theorem P15059650197525808097.correct : P15059650197525808097.Spec := by
  intro n
  simp only [A227106]

end A227106

/-! ## A227106.P8090389771422729312

`A106619(A017017(n))-A106619(n+3)`
-/

namespace A227106.P8090389771422729312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A017017 n).toNat - A106619 (n + 3)

end

end A227106.P8090389771422729312

namespace A227106

/-- `A106619(A017017(n))-A106619(n+3)` -/
def P8090389771422729312.Spec : Prop :=
  ∀ n, P8090389771422729312.a n = A227106 n

end A227106

/-! ## A227106.P15768632593004287077

`A134451(n)*A257522(A034856(n+1))`
-/

namespace A227106.P15768632593004287077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A257522 (A034856 (n + 1)).toNat

end

end A227106.P15768632593004287077

namespace A227106

/-- `A134451(n)*A257522(A034856(n+1))` -/
def P15768632593004287077.Spec : Prop :=
  ∀ n, P15768632593004287077.a n = A227106 n

end A227106

/-!
# A227107: Numerators of harmonic mean H(n,4), n >= 0.

The programs for A227107, the canonical program `A227107.P3841865975492696678` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227107 has offset 0).

The definition of A227107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227107.P13231033054098857836

`8*n/gcd(32, n+4)`
-/

namespace A227107.P13231033054098857836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) / (Nat.gcd 32 (n + 4) : ℚ))

end

end A227107.P13231033054098857836

namespace A227107

/-- `8*n/gcd(32, n+4)` -/
def P13231033054098857836.Spec : Prop :=
  ∀ n, P13231033054098857836.a n = (A227107 n : ℚ)

end A227107

/-! ## A227107.P15497559722610043531

`lcm(n+4, 8*n)/(n+4)`
-/

namespace A227107.P15497559722610043531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 4) (8 * n) : ℚ) / (n + 4 : ℚ)

end

end A227107.P15497559722610043531

namespace A227107

/-- `lcm(n+4, 8*n)/(n+4)` -/
def P15497559722610043531.Spec : Prop :=
  ∀ n, P15497559722610043531.a n = (A227107 n : ℚ)

end A227107

/-! ## A227107.P6642899564905060590

`A008590(n)/gcd(32, A017209(n))`
-/

namespace A227107.P6642899564905060590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008590 n : ℚ) / (Int.gcd 32 (A017209 n) : ℚ)

end

end A227107.P6642899564905060590

namespace A227107

/-- `A008590(n)/gcd(32, A017209(n))` -/
def P6642899564905060590.Spec : Prop :=
  ∀ n, P6642899564905060590.a n = (A227107 n : ℚ)

end A227107

/-! ## A227107.P3841865975492696678

`lcm(A008590(n), A017209(n))%A017197(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227107

/-- `lcm(A008590(n), A017209(n))%A017197(n)` -/
def P3841865975492696678.Spec : Prop :=
  ∀ n, P3841865975492696678.a n = A227107 n

theorem P3841865975492696678.correct : P3841865975492696678.Spec := by
  intro n
  simp only [A227107]

end A227107

/-! ## A227107.P7787860298761615375

`A227140(A017209(n))-A227140(n+4)`
-/

namespace A227107.P7787860298761615375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (A017209 n).toNat - A227140 (n + 4)

end

end A227107.P7787860298761615375

namespace A227107

/-- `A227140(A017209(n))-A227140(n+4)` -/
def P7787860298761615375.Spec : Prop :=
  ∀ n, P7787860298761615375.a n = A227107 n

end A227107

/-!
# A227108: Denominators of harmonic mean H(n,5), n >= 0.

The programs for A227108, there is no canonical definition to state claims against.
-/

/-! ## A227108.P16530356285427461694

`lcm(50, n+5)/50`
-/

namespace A227108.P16530356285427461694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 50 (n + 5) : ℚ) / 50

end

end A227108.P16530356285427461694

/-! ## A227108.P2295564986071007516

`(n+5)/gcd(50, n+5)`
-/

namespace A227108.P2295564986071007516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℚ) / (Nat.gcd 50 (n + 5) : ℚ)

end

end A227108.P2295564986071007516

/-! ## A227108.P9974778761535229208

`A132739(A026741(n+5))`
-/

namespace A227108.P9974778761535229208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A026741 (n + 5)).toNat

end

end A227108.P9974778761535229208

/-! ## A227108.P12986631766780455112

`A106611(A060791(n+5))`
-/

namespace A227108.P12986631766780455112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A060791 (n + 5)).toNat

end

end A227108.P12986631766780455112

/-! ## A227108.P1546285553879921917

`A132739(A106611(n+5))`
-/

namespace A227108.P1546285553879921917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A106611 (n + 5)).toNat

end

end A227108.P1546285553879921917

/-! ## A227108.P7681500472016940774

`A106611(A283442(n+5))`
-/

namespace A227108.P7681500472016940774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A283442 (n + 5)).toNat

end

end A227108.P7681500472016940774

/-! ## A227108.P1596855564600632807

`A106621(A060791(2*(n+5)))`
-/

namespace A227108.P1596855564600632807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A060791 (2 * (n + 5))).toNat

end

end A227108.P1596855564600632807

/-! ## A227108.P2557703354603286860

`A106611(A106611(2*(n+5)))`
-/

namespace A227108.P2557703354603286860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A106611 (2 * (n + 5))).toNat

end

end A227108.P2557703354603286860

/-! ## A227108.P6080870733605039284

`A106621(A106621(8*(n+5)))`
-/

namespace A227108.P6080870733605039284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106621 (8 * (n + 5))).toNat

end

end A227108.P6080870733605039284

/-! ## A227108.P11723441715434152451

`A004526(lcm(2, A132739(n+5)))`
-/

namespace A227108.P11723441715434152451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A132739 (n + 5)))

end

end A227108.P11723441715434152451

/-!
# A227109: Numerators of harmonic mean H(n, 5), n >= 0.

The programs for A227109, the canonical program `A227109.P6114768292136038590` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227109 has offset 0).

The definition of A227109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227109.P17823651500122271036

`10*n/gcd(50, n+5)`
-/

namespace A227109.P17823651500122271036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((n : ℚ) / (Nat.gcd 50 (n + 5) : ℚ))

end

end A227109.P17823651500122271036

namespace A227109

/-- `10*n/gcd(50, n+5)` -/
def P17823651500122271036.Spec : Prop :=
  ∀ n, P17823651500122271036.a n = (A227109 n : ℚ)

end A227109

/-! ## A227109.P6196926917535926721

`lcm(n+5, 10*n)/(n+5)`
-/

namespace A227109.P6196926917535926721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 5) (10 * n) : ℚ) / (n + 5 : ℚ)

end

end A227109.P6196926917535926721

namespace A227109

/-- `lcm(n+5, 10*n)/(n+5)` -/
def P6196926917535926721.Spec : Prop :=
  ∀ n, P6196926917535926721.a n = (A227109 n : ℚ)

end A227109

/-! ## A227109.P6114768292136038590

`lcm(10*n, A017449(n))%A017437(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227109

/-- `lcm(10*n, A017449(n))%A017437(n)` -/
def P6114768292136038590.Spec : Prop :=
  ∀ n, P6114768292136038590.a n = A227109 n

theorem P6114768292136038590.correct : P6114768292136038590.Spec := by
  intro n
  simp only [A227109]

end A227109

/-! ## A227109.P1809880398158855270

`lcm(5, n)*A001468(A000071(n+1))`
-/

namespace A227109.P1809880398158855270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 n : ℤ) * A001468 (A000071 (n + 1)).toNat

end

end A227109.P1809880398158855270

namespace A227109

/-- `lcm(5, n)*A001468(A000071(n+1))` -/
def P1809880398158855270.Spec : Prop :=
  ∀ n, P1809880398158855270.a n = A227109 n

end A227109

/-! ## A227109.P4438611870484008429

`n*A154097(A000124(3*n+1))`
-/

namespace A227109.P4438611870484008429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A154097 (A000124 (3 * n + 1)).toNat

end

end A227109.P4438611870484008429

namespace A227109

/-- `n*A154097(A000124(3*n+1))` -/
def P4438611870484008429.Spec : Prop :=
  ∀ n, P4438611870484008429.a n = A227109 n

end A227109

/-!
# A227112: Numbers n such that there exist two primes p and q where the area A of the triangle of sides (n, p, q) is an integer.

The programs for A227112, there is no canonical definition to state claims against.
-/

/-! ## A227112.P6664599897201213879

`lt[A316586(A083254(2*n+5)), A083254(n+1)]`
-/

namespace A227112.P6664599897201213879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316586 (A083254 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227112.P6664599897201213879

/-! ## A227112.P7325933159251581402

`lt[A387384(A277579(n+3)), A098965(3*n+4)]`
-/

namespace A227112.P7325933159251581402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (A277579 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098965 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227112.P7325933159251581402

/-!
# A227116: Given an equilateral triangular grid with side n, containing n(n+1)/2 points, a(n) is the minimal number of points to be removed from the grid, so that, if 3 of the remaining points are chosen, they do not form an equilateral triangle with sides parallel to the grid.

The programs for A227116, there is no canonical definition to state claims against.
-/

/-! ## A227116.P11851158620318907307

`∑[n+1]-A227308(n+1)`
-/

namespace A227116.P11851158620318907307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A227308 (n + 1)

end

end A227116.P11851158620318907307

/-! ## A227116.P1461525816260489178

`A025747(n)-ceil(2*floor(3^log2(n+1))/3)`
-/

namespace A227116.P1461525816260489178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025747 n - ⌈2 * ((⌊(3 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))⌋ : ℚ) / 3)⌉

end

end A227116.P1461525816260489178

/-! ## A227116.P9522962819010362337

`A000217(n+1)-ceil(2*floor(3^log2(n+1))/3)`
-/

namespace A227116.P9522962819010362337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - ⌈2 * ((⌊(3 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))⌋ : ℚ) / 3)⌉

end

end A227116.P9522962819010362337

/-! ## A227116.P8586376217888243185

`A130053(n)-A183918(n+1)`
-/

namespace A227116.P8586376217888243185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130053 n - A183918 (n + 1)

end

end A227116.P8586376217888243185

/-! ## A227116.P10177273821351010998

`A130053(n)-A245811(n+1)`
-/

namespace A227116.P10177273821351010998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130053 n - A245811 (n + 1)

end

end A227116.P10177273821351010998

/-!
# A227117: Number of minimally rigid graphs in 2D on n vertices.

The programs for A227117, there is no canonical definition to state claims against.
-/

/-! ## A227117.P13011330008176472338

`A195174(A012258(n)+A000045(n))`
-/

namespace A227117.P13011330008176472338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A012258 n + A000045 n).toNat

end

end A227117.P13011330008176472338

/-! ## A227117.P8089664182443193791

`A195174(A012258(n)+A001590(n))`
-/

namespace A227117.P8089664182443193791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A012258 n + A001590 n).toNat

end

end A227117.P8089664182443193791

/-! ## A227117.P6548452134834471071

`A195174(A097592(n)+A012258(n))`
-/

namespace A227117.P6548452134834471071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A097592 n + A012258 n).toNat

end

end A227117.P6548452134834471071

/-! ## A227117.P17776374776064939880

`A195174(A208355(n)+A012258(n))`
-/

namespace A227117.P17776374776064939880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A208355 n + A012258 n).toNat

end

end A227117.P17776374776064939880

/-!
# A227119: Number of ways to select a set partition, P of {1,2,...,n} and then select a subset, S of {1,2,...,n} such that for all i in {1,2,...,n-1} if i and i+1 are in S then i and i+1 are in different blocks of P.

The programs for A227119, there is no canonical definition to state claims against.
-/

/-! ## A227119.P13181538235514632774

`A029922(A030800(n+1)+n)-n`
-/

namespace A227119.P13181538235514632774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A030800 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A227119.P13181538235514632774

/-! ## A227119.P10905390973158296526

`A198316(A067687(n))+A007446(n)`
-/

namespace A227119.P10905390973158296526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198316 (A067687 n).toNat + A007446 n

end

end A227119.P10905390973158296526

/-!
# A227120: Number of n X n 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(n+1) binary array having a sum of zero, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227120, there is no canonical definition to state claims against.
-/

/-! ## A227120.P16654949653622825969

`A227125(∑[4*n]+1)`
-/

namespace A227120.P16654949653622825969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227120.P16654949653622825969

/-! ## A227120.P16772443450586029668

`record[A227125(Δ[A235355(n)])]`
-/

namespace A227120.P16772443450586029668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227120.P16772443450586029668

/-! ## A227120.P11685593743410086895

`record[A227125(A330613(n+1))]`
-/

namespace A227120.P11685593743410086895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227120.P11685593743410086895

/-! ## A227120.P16603024320658046721

`record[A003982(n)*A227125(n+1)]`
-/

namespace A227120.P16603024320658046721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227120.P16603024320658046721

/-! ## A227120.P17461214569988751486

`record[A010052(2*n+1)*A227125(n+1)]`
-/

namespace A227120.P17461214569988751486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A227125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227120.P17461214569988751486

/-!
# A227121: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having a sum of zero, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227121, the canonical program `A227121.P701588669588976028` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227121 has offset 1).

The definition of A227121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227121.P701588669588976028

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=7, a(2)=13, a(3)=23, a(4)=40`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227121

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P701588669588976028.Spec : Prop :=
  ∀ n, P701588669588976028.a n = A227121 (n + 1)

theorem P701588669588976028.correct : P701588669588976028.Spec := by
  intro n
  simp only [A227121, Nat.add_sub_cancel]

end A227121

/-! ## A227121.P8513130783105422730

`∑[∑[C(n, 2)+1]+2]`
-/

namespace A227121.P8513130783105422730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227121.P8513130783105422730

namespace A227121

/-- `∑[∑[C(n, 2)+1]+2]` -/
def P8513130783105422730.Spec : Prop :=
  ∀ n, (P8513130783105422730.a n : ℤ) = A227121 (n + 1)

end A227121

/-! ## A227121.P12058655823481347729

`∑[∑[∑[abs(1-n)]]+2]`
-/

namespace A227121.P12058655823481347729
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227121.P12058655823481347729

namespace A227121

/-- `∑[∑[∑[abs(1-n)]]+2]` -/
def P12058655823481347729.Spec : Prop :=
  ∀ n, P12058655823481347729.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P16853032006010115336

`floor(∑[∑[n-(1-a(n-1))]])` with `a(0)=3, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A227121.P16853032006010115336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  (n : ℤ) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227121.P16853032006010115336

namespace A227121

/-- `floor(∑[∑[n-(1-a(n-1))]])` -/
def P16853032006010115336.Spec : Prop :=
  ∀ n, P16853032006010115336.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P1039363116618756772

`ceil(∑[∑[n-(1-a(n-1))]])` with `a(0)=3, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A227121.P1039363116618756772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  (n : ℤ) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227121.P1039363116618756772

namespace A227121

/-- `ceil(∑[∑[n-(1-a(n-1))]])` -/
def P1039363116618756772.Spec : Prop :=
  ∀ n, P1039363116618756772.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P10763703814787211673

`C(n+1, 3)+a(n-1)+n+3` with `a(0)=3`
-/

namespace A227121.P10763703814787211673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose (n + 1) 3 + (a (n - 1) + (n + 3))

end

end A227121.P10763703814787211673

namespace A227121

/-- `C(n+1, 3)+a(n-1)+n+3` -/
def P10763703814787211673.Spec : Prop :=
  ∀ n, (P10763703814787211673.a n : ℤ) = A227121 (n + 1)

end A227121

/-! ## A227121.P14034515299917369476

`A101338(n)+∑[n+2]`
-/

namespace A227121.P14034515299917369476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227121.P14034515299917369476

namespace A227121

/-- `A101338(n)+∑[n+2]` -/
def P14034515299917369476.Spec : Prop :=
  ∀ n, P14034515299917369476.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P13812078505080719408

`n+1+∑[A011826(n+1)]`
-/

namespace A227121.P13812078505080719408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227121.P13812078505080719408

namespace A227121

/-- `n+1+∑[A011826(n+1)]` -/
def P13812078505080719408.Spec : Prop :=
  ∀ n, P13812078505080719408.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P14126285637548370570

`A027927(n+2)+3*n+2`
-/

namespace A227121.P14126285637548370570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + (3 * n + 2 : ℤ)

end

end A227121.P14126285637548370570

namespace A227121

/-- `A027927(n+2)+3*n+2` -/
def P14126285637548370570.Spec : Prop :=
  ∀ n, P14126285637548370570.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P15724928420105050764

`a(n-1)+A004006(n)+3` with `a(0)=3`
-/

namespace A227121.P15724928420105050764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A004006 n + 3)

end

end A227121.P15724928420105050764

namespace A227121

/-- `a(n-1)+A004006(n)+3` -/
def P15724928420105050764.Spec : Prop :=
  ∀ n, P15724928420105050764.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P3394424372169900376

`A086274(n+1)+A058372(n)`
-/

namespace A227121.P3394424372169900376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) + A058372 n

end

end A227121.P3394424372169900376

namespace A227121

/-- `A086274(n+1)+A058372(n)` -/
def P3394424372169900376.Spec : Prop :=
  ∀ n, P3394424372169900376.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P7002733723731745933

`A063258(n)-A127736(n+1)`
-/

namespace A227121.P7002733723731745933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n - A127736 (n + 1)

end

end A227121.P7002733723731745933

namespace A227121

/-- `A063258(n)-A127736(n+1)` -/
def P7002733723731745933.Spec : Prop :=
  ∀ n, P7002733723731745933.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P16236958244693513592

`A227265(n+1)-A004006(n)`
-/

namespace A227121.P16236958244693513592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227265 (n + 1) - A004006 n

end

end A227121.P16236958244693513592

namespace A227121

/-- `A227265(n+1)-A004006(n)` -/
def P16236958244693513592.Spec : Prop :=
  ∀ n, P16236958244693513592.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P3236748722926877449

`A223718(n+1)-A101986(n)`
-/

namespace A227121.P3236748722926877449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) - A101986 n

end

end A227121.P3236748722926877449

namespace A227121

/-- `A223718(n+1)-A101986(n)` -/
def P3236748722926877449.Spec : Prop :=
  ∀ n, P3236748722926877449.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P9053261248245222645

`2*A063258(n)-A096942(n)`
-/

namespace A227121.P9053261248245222645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063258 n - A096942 n

end

end A227121.P9053261248245222645

namespace A227121

/-- `2*A063258(n)-A096942(n)` -/
def P9053261248245222645.Spec : Prop :=
  ∀ n, P9053261248245222645.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P4657299145708035623

`A027927(n+2)+A016777(n)+1`
-/

namespace A227121.P4657299145708035623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + A016777 n + 1

end

end A227121.P4657299145708035623

namespace A227121

/-- `A027927(n+2)+A016777(n)+1` -/
def P4657299145708035623.Spec : Prop :=
  ∀ n, P4657299145708035623.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P10854727997754922314

`A101854(n+1)-A144640(n+1)`
-/

namespace A227121.P10854727997754922314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) - A144640 (n + 1)

end

end A227121.P10854727997754922314

namespace A227121

/-- `A101854(n+1)-A144640(n+1)` -/
def P10854727997754922314.Spec : Prop :=
  ∀ n, P10854727997754922314.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P11208108494607232957

`A188555(n+1)-A152948(n+1)`
-/

namespace A227121.P11208108494607232957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 1) - A152948 (n + 1)

end

end A227121.P11208108494607232957

namespace A227121

/-- `A188555(n+1)-A152948(n+1)` -/
def P11208108494607232957.Spec : Prop :=
  ∀ n, P11208108494607232957.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P15467858571235997815

`A167541(n+6)+A116699(n+1)`
-/

namespace A227121.P15467858571235997815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167541 (n + 6) + A116699 (n + 1)

end

end A227121.P15467858571235997815

namespace A227121

/-- `A167541(n+6)+A116699(n+1)` -/
def P15467858571235997815.Spec : Prop :=
  ∀ n, P15467858571235997815.a n = A227121 (n + 1)

end A227121

/-! ## A227121.P1352727368659997935

`A055417(n+1)+n`
-/

namespace A227121.P1352727368659997935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 (n + 1) + (n : ℤ)

end

end A227121.P1352727368659997935

namespace A227121

/-- `A055417(n+1)+n` -/
def P1352727368659997935.Spec : Prop :=
  ∀ n, P1352727368659997935.a n = A227121 (n + 1)

end A227121

/-!
# A227122: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having a sum of zero, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227122, there is no canonical definition to state claims against.
-/

/-! ## A227122.P6473935446618613188

`A227125(∑[n+2]+4)`
-/

namespace A227122.P6473935446618613188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227122.P6473935446618613188

/-! ## A227122.P1647455297506700537

`A227125(A167614(n+1))+char[42]`
-/

namespace A227122.P1647455297506700537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227122.P1647455297506700537

/-! ## A227122.P8100993823867832340

`(A227125(A016028(n+5))^(1/2))²`
-/

namespace A227122.P8100993823867832340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A227125 (A016028 (n + 5)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A227122.P8100993823867832340

/-! ## A227122.P5061935161665606821

`A227125(A167614(n+1))*A262681(n)`
-/

namespace A227122.P5061935161665606821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A167614 (n + 1)).toNat * A262681 n

end

end A227122.P5061935161665606821

/-! ## A227122.P12879104402119368840

`gcd(A025469(n), A227125(A167614(n+1)))`
-/

namespace A227122.P12879104402119368840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A227125 (A167614 (n + 1)).toNat)

end

end A227122.P12879104402119368840

/-!
# A227123: Number of nX4 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X5 binary array having a sum of zero, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227123, there is no canonical definition to state claims against.
-/

/-! ## A227123.P14824332071545188515

`A227125(∑[n+3]+7)`
-/

namespace A227123.P14824332071545188515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227123.P14824332071545188515

/-! ## A227123.P16570675793219885132

`A227125(A000096(n+2)+5)+char[18]`
-/

namespace A227123.P16570675793219885132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227123.P16570675793219885132

/-! ## A227123.P11192319620848601588

`lcm((-1)^n, A227125(A052905(n)+9))`
-/

namespace A227123.P11192319620848601588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A227125 (A052905 n + 9).toNat)

end

end A227123.P11192319620848601588

/-! ## A227123.P5483609081208018691

`A007318(C(n, 2))*A227125(A052905(n)+9)`
-/

namespace A227123.P5483609081208018691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A227125 (A052905 n + 9).toNat

end

end A227123.P5483609081208018691

/-! ## A227123.P12469741677991559190

`A006530(gcd(n, n+1))*A227125(A052905(n)+9)`
-/

namespace A227123.P12469741677991559190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A227125 (A052905 n + 9).toNat

end

end A227123.P12469741677991559190

/-!
# A227124: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having a sum of zero, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227124, there is no canonical definition to state claims against.
-/

/-! ## A227124.P12940490800343493256

`A227125(A374005(n+1))`
-/

namespace A227124.P12940490800343493256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A374005 (n + 1)).toNat

end

end A227124.P12940490800343493256

/-! ## A227124.P6284141103258402688

`A227125(A155212(n)+13)`
-/

namespace A227124.P6284141103258402688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A155212 n + 13).toNat

end

end A227124.P6284141103258402688

/-! ## A227124.P6411911088463151036

`A227125(A056000(n)+15)`
-/

namespace A227124.P6411911088463151036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A056000 n + 15).toNat

end

end A227124.P6411911088463151036

/-! ## A227124.P4691383488313787987

`A227125(eq[7, A066657(n)])`
-/

namespace A227124.P4691383488313787987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227124.P4691383488313787987

/-! ## A227124.P3481287733448678859

`A227125(A167614(n+3)+2)`
-/

namespace A227124.P3481287733448678859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A167614 (n + 3) + 2).toNat

end

end A227124.P3481287733448678859

/-!
# A227125: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having a sum of zero, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227125, there is no canonical definition to state claims against.
-/

/-! ## A227125.P1769297000863570187

`A005136(A176151(n))+A003506(n+1)`
-/

namespace A227125.P1769297000863570187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A176151 n).toNat + A003506 (n + 1)

end

end A227125.P1769297000863570187

/-! ## A227125.P9454021089661792225

`A262681(A176151(n)²)+A003506(n+1)`
-/

namespace A227125.P9454021089661792225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A176151 n ^ 2).toNat + A003506 (n + 1)

end

end A227125.P9454021089661792225

/-! ## A227125.P1362601477154375179

`A262681(A222828(n+1))+A003506(n+1)`
-/

namespace A227125.P1362601477154375179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A222828 (n + 1)).toNat + A003506 (n + 1)

end

end A227125.P1362601477154375179

/-! ## A227125.P6432682742408980431

`A194884(A293100(n+1))+A003506(n+1)`
-/

namespace A227125.P6432682742408980431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194884 (A293100 (n + 1)).toNat + A003506 (n + 1)

end

end A227125.P6432682742408980431

/-! ## A227125.P12444979506640709472

`A235986(A003506(n+1)%A236010(n+1))`
-/

namespace A227125.P12444979506640709472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (Int.tmod (A003506 (n + 1)) (A236010 (n + 1))).toNat

end

end A227125.P12444979506640709472

/-!
# A227126: Primes prime(k) such that 2^(k+1) - prime(k) is also prime.

The programs for A227126, there is no canonical definition to state claims against.
-/

/-! ## A227126.P3154377857039016903

`A000040(∑[A137855(2^n-n)])`
-/

namespace A227126.P3154377857039016903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (2 ^ n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227126.P3154377857039016903

/-! ## A227126.P2536570877995275355

`p?[∑[A065666(A167656(n))]]`
-/

namespace A227126.P2536570877995275355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065666 (A167656 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227126.P2536570877995275355

/-! ## A227126.P17378082736815968608

`p?[∑[A328572(A326497(n))]]`
-/

namespace A227126.P17378082736815968608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 (A326497 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227126.P17378082736815968608

/-!
# A227127: The Akiyama-Tanigawa algorithm applied to 1/(1,2,3,5,... old prime numbers). Reduced numerators of the second row.

The programs for A227127, the canonical program `A227127.P510515048403085324` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227127 has offset 0).

The definition of A227127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227127.P510515048403085324

`gcd(n+1, C(5, n²))*Δ[A028815(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227127

/-- `gcd(n+1, C(5, n²))*Δ[A028815(n)]` -/
def P510515048403085324.Spec : Prop :=
  ∀ n, P510515048403085324.a n = A227127 n

theorem P510515048403085324.correct : P510515048403085324.Spec := by
  intro n
  simp only [A227127]

end A227127

/-! ## A227127.P12276667738240076616

`A075526(n)*A171526(n+1)`
-/

namespace A227127.P12276667738240076616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n * A171526 (n + 1)

end

end A227127.P12276667738240076616

namespace A227127

/-- `A075526(n)*A171526(n+1)` -/
def P12276667738240076616.Spec : Prop :=
  ∀ n, P12276667738240076616.a n = A227127 n

end A227127

/-! ## A227127.P1469559213578435615

`Δ[A008578(n+1)]*A171526(n+1)`
-/

namespace A227127.P1469559213578435615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A171526 (n + 1)

end

end A227127.P1469559213578435615

namespace A227127

/-- `Δ[A008578(n+1)]*A171526(n+1)` -/
def P1469559213578435615.Spec : Prop :=
  ∀ n, P1469559213578435615.a n = A227127 n

end A227127

/-! ## A227127.P8345516991541727059

`A004442(A090942(n+1))-A000010(A074845(n+1))`
-/

namespace A227127.P8345516991541727059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A090942 (n + 1)).toNat - A000010 (A074845 (n + 1)).toNat

end

end A227127.P8345516991541727059

namespace A227127

/-- `A004442(A090942(n+1))-A000010(A074845(n+1))` -/
def P8345516991541727059.Spec : Prop :=
  ∀ n, P8345516991541727059.a n = A227127 n

end A227127

/-! ## A227127.P4312912991537761173

`A029578((n+1)*Δ[A074845(n+1)])`
-/

namespace A227127.P4312912991537761173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A227127.P4312912991537761173

namespace A227127

/-- `A029578((n+1)*Δ[A074845(n+1)])` -/
def P4312912991537761173.Spec : Prop :=
  ∀ n, P4312912991537761173.a n = A227127 n

end A227127

/-! ## A227127.P13387201679777045260

`A060681((n+1)*Δ[A074845(n+1)])`
-/

namespace A227127.P13387201679777045260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A227127.P13387201679777045260

namespace A227127

/-- `A060681((n+1)*Δ[A074845(n+1)])` -/
def P13387201679777045260.Spec : Prop :=
  ∀ n, P13387201679777045260.a n = A227127 n

end A227127

/-! ## A227127.P16853721709529277309

`A110654((n+1)*Δ[A074845(n+1)])`
-/

namespace A227127.P16853721709529277309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A227127.P16853721709529277309

namespace A227127

/-- `A110654((n+1)*Δ[A074845(n+1)])` -/
def P16853721709529277309.Spec : Prop :=
  ∀ n, P16853721709529277309.a n = A227127 n

end A227127

/-! ## A227127.P17213373744528947954

`A300076((n+1)*Δ[A074845(n+1)])`
-/

namespace A227127.P17213373744528947954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A227127.P17213373744528947954

namespace A227127

/-- `A300076((n+1)*Δ[A074845(n+1)])` -/
def P17213373744528947954.Spec : Prop :=
  ∀ n, P17213373744528947954.a n = A227127 n

end A227127

/-! ## A227127.P2947589132306363700

`A110654((n+1)*Δ[eq[2, A011776(n+1)]])`
-/

namespace A227127.P2947589132306363700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A227127.P2947589132306363700

namespace A227127

/-- `A110654((n+1)*Δ[eq[2, A011776(n+1)]])` -/
def P2947589132306363700.Spec : Prop :=
  ∀ n, P2947589132306363700.a n = A227127 n

end A227127

/-! ## A227127.P9017137304782381937

`Δ[A068499(n+1)]*A134478(A238531(n))`
-/

namespace A227127.P9017137304782381937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A134478 (A238531 n).toNat

end

end A227127.P9017137304782381937

namespace A227127

/-- `Δ[A068499(n+1)]*A134478(A238531(n))` -/
def P9017137304782381937.Spec : Prop :=
  ∀ n, P9017137304782381937.a n = A227127 n

end A227127

/-! ## A227127.P3420072284782064939

`Δ[A068499(n+1)]*A026725(A000124(n))`
-/

namespace A227127.P3420072284782064939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A026725 (A000124 n).toNat

end

end A227127.P3420072284782064939

namespace A227127

/-- `Δ[A068499(n+1)]*A026725(A000124(n))` -/
def P3420072284782064939.Spec : Prop :=
  ∀ n, P3420072284782064939.a n = A227127 n

end A227127

/-!
# A227128: The twisted Euler phi-function for the non-principal Dirichlet character mod 3.

The programs for A227128, the canonical program `A227128.P9558132721139232292` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227128 has offset 1).

The definition of A227128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227128.P13772659641425100402

`A227501(n+1)/(n%3)!`
-/

namespace A227128.P13772659641425100402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227501 (n + 1) : ℚ) / (Nat.factorial (n % 3) : ℚ)

end

end A227128.P13772659641425100402

namespace A227128

/-- `A227501(n+1)/(n%3)!` -/
def P13772659641425100402.Spec : Prop :=
  ∀ n, P13772659641425100402.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P9558132721139232292

`∑{d}[n+1, #*A365428((n+1)/#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227128

/-- `∑{d}[n+1, #*A365428((n+1)/#)]` -/
def P9558132721139232292.Spec : Prop :=
  ∀ n, P9558132721139232292.a n = A227128 (n + 1)

theorem P9558132721139232292.correct : P9558132721139232292.Spec := by
  intro n
  simp only [A227128, Nat.add_sub_cancel]

end A227128

/-! ## A227128.P164221757361228636

`A227501(n+1)/A177702(n)`
-/

namespace A227128.P164221757361228636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227501 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A227128.P164221757361228636

namespace A227128

/-- `A227501(n+1)/A177702(n)` -/
def P164221757361228636.Spec : Prop :=
  ∀ n, P164221757361228636.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P14064236324827626961

`A319445(n+1)/Δ[A002088(n)]`
-/

namespace A227128.P14064236324827626961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A227128.P14064236324827626961

namespace A227128

/-- `A319445(n+1)/Δ[A002088(n)]` -/
def P14064236324827626961.Spec : Prop :=
  ∀ n, P14064236324827626961.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P17443659188519206963

`A319445(n+1)/Δ[A005728(n)]`
-/

namespace A227128.P17443659188519206963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A227128.P17443659188519206963

namespace A227128

/-- `A319445(n+1)/Δ[A005728(n)]` -/
def P17443659188519206963.Spec : Prop :=
  ∀ n, P17443659188519206963.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P13457500017017929560

`A319445(n+1)/A000010(n+1)`
-/

namespace A227128.P13457500017017929560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A227128.P13457500017017929560

namespace A227128

/-- `A319445(n+1)/A000010(n+1)` -/
def P13457500017017929560.Spec : Prop :=
  ∀ n, P13457500017017929560.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P10222570058655280701

`A319445(n+1)/(A109606(n+1)+1)`
-/

namespace A227128.P10222570058655280701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ)

end

end A227128.P10222570058655280701

namespace A227128

/-- `A319445(n+1)/(A109606(n+1)+1)` -/
def P10222570058655280701.Spec : Prop :=
  ∀ n, P10222570058655280701.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P2498928019767575459

`A319445(n+1)/(A039649(n+1)-1)`
-/

namespace A227128.P2498928019767575459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (A039649 (n + 1) - 1 : ℚ)

end

end A227128.P2498928019767575459

namespace A227128

/-- `A319445(n+1)/(A039649(n+1)-1)` -/
def P2498928019767575459.Spec : Prop :=
  ∀ n, P2498928019767575459.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P14190340632303996215

`A319445(n+1)/(n-A219428(n+1))`
-/

namespace A227128.P14190340632303996215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / ((n : ℤ) - A219428 (n + 1) : ℚ)

end

end A227128.P14190340632303996215

namespace A227128

/-- `A319445(n+1)/(n-A219428(n+1))` -/
def P14190340632303996215.Spec : Prop :=
  ∀ n, P14190340632303996215.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P2970396390779031733

`A319445(n+1)/∑{d}[n+1, (n+1)/#*A008683(#)]`
-/

namespace A227128.P2970396390779031733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))

end

end A227128.P2970396390779031733

namespace A227128

/-- `A319445(n+1)/∑{d}[n+1, (n+1)/#*A008683(#)]` -/
def P2970396390779031733.Spec : Prop :=
  ∀ n, P2970396390779031733.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P6338026109806929705

`A319445(n+1)/Δ[ceil(A210000(n)/8)]`
-/

namespace A227128.P6338026109806929705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210000 n : ℚ) / 8⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A227128.P6338026109806929705

namespace A227128

/-- `A319445(n+1)/Δ[ceil(A210000(n)/8)]` -/
def P6338026109806929705.Spec : Prop :=
  ∀ n, P6338026109806929705.a n = (A227128 (n + 1) : ℚ)

end A227128

/-! ## A227128.P4662432757075423618

`A319445(n+1)/A054523(A000124(n))`
-/

namespace A227128.P4662432757075423618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (A054523 (A000124 n).toNat : ℚ)

end

end A227128.P4662432757075423618

namespace A227128

/-- `A319445(n+1)/A054523(A000124(n))` -/
def P4662432757075423618.Spec : Prop :=
  ∀ n, P4662432757075423618.a n = (A227128 (n + 1) : ℚ)

end A227128

/-!
# A227129: Semiprimes n = p*q, p

The programs for A227129, there is no canonical definition to state claims against.
-/

/-! ## A227129.P519885080153218362

`eq[2, A226770(n+1)]+2`
-/

namespace A227129.P519885080153218362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A227129.P519885080153218362

/-! ## A227129.P14514464889751622117

`A009056(eq[2, A226770(n+1)])`
-/

namespace A227129.P14514464889751622117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227129.P14514464889751622117

/-! ## A227129.P9708172017546288694

`A340631(eq[2, A226770(n+1)])`
-/

namespace A227129.P9708172017546288694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227129.P9708172017546288694

/-!
# A227130: Numbers k for which there is an even number of nonzero digits when k is written in the factorial base (A007623).

The programs for A227130, the canonical program `A227130.P3624731333316804244` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227130 has offset 1).

The definition of A227130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227130.P16601746107431093259

`lt[0, A320655(A275735(n))]`
-/

namespace A227130.P16601746107431093259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227130.P16601746107431093259

namespace A227130

/-- `lt[0, A320655(A275735(n))]` -/
def P16601746107431093259.Spec : Prop :=
  ∀ n, (P16601746107431093259.a n : ℤ) = A227130 (n + 1)

end A227130

/-! ## A227130.P3624731333316804244

`lt[0, A010673(A131421(n+1)-A060130(n))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A227130

/-- `lt[0, A010673(A131421(n+1)-A060130(n))]` -/
def P3624731333316804244.Spec : Prop :=
  ∀ n, (P3624731333316804244.a n : ℤ) = A227130 (n + 1)

theorem P3624731333316804244.correct : P3624731333316804244.Spec := by
  intro n
  simp only [A227130, Nat.add_sub_cancel]

end A227130

/-! ## A227130.P9032548895658429695

`eq[1, 1-a(A257687(n))]` with `a(0)=1`
-/

namespace A227130.P9032548895658429695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (A257687 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227130.P9032548895658429695

namespace A227130

/-- `eq[1, 1-a(A257687(n))]` -/
def P9032548895658429695.Spec : Prop :=
  ∀ n, (P9032548895658429695.a n : ℤ) = A227130 (n + 1)

end A227130

/-! ## A227130.P1404187488041526711

`eq[1, A008683(A275733(n))]`
-/

namespace A227130.P1404187488041526711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A275733 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227130.P1404187488041526711

namespace A227130

/-- `eq[1, A008683(A275733(n))]` -/
def P1404187488041526711.Spec : Prop :=
  ∀ n, (P1404187488041526711.a n : ℤ) = A227130 (n + 1)

end A227130

/-! ## A227130.P7675047514662502624

`xor(1, A227132(n+1))`
-/

namespace A227130.P7675047514662502624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A227132 (n + 1))

end

end A227130.P7675047514662502624

namespace A227130

/-- `xor(1, A227132(n+1))` -/
def P7675047514662502624.Spec : Prop :=
  ∀ n, P7675047514662502624.a n = A227130 (n + 1)

end A227130

/-! ## A227130.P8440703494884432719

`A004442(A227132(n+1))`
-/

namespace A227130.P8440703494884432719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A227132 (n + 1)).toNat

end

end A227130.P8440703494884432719

namespace A227130

/-- `A004442(A227132(n+1))` -/
def P8440703494884432719.Spec : Prop :=
  ∀ n, P8440703494884432719.a n = A227130 (n + 1)

end A227130

/-! ## A227130.P1311189371343036811

`A016813(n)-A227132(n+1)`
-/

namespace A227130.P1311189371343036811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A227132 (n + 1)

end

end A227130.P1311189371343036811

namespace A227130

/-- `A016813(n)-A227132(n+1)` -/
def P1311189371343036811.Spec : Prop :=
  ∀ n, P1311189371343036811.a n = A227130 (n + 1)

end A227130

/-! ## A227130.P3587798982524212225

`A002943(n)/A227132(n+1)`
-/

namespace A227130.P3587798982524212225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A227132 (n + 1) : ℚ)

end

end A227130.P3587798982524212225

namespace A227130

/-- `A002943(n)/A227132(n+1)` -/
def P3587798982524212225.Spec : Prop :=
  ∀ n, P3587798982524212225.a n = (A227130 (n + 1) : ℚ)

end A227130

/-! ## A227130.P11663777558476850178

`A227148(n+1)+A227149(n+1)-A227132(n+1)`
-/

namespace A227130.P11663777558476850178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227148 (n + 1) + (A227149 (n + 1) - A227132 (n + 1))

end

end A227130.P11663777558476850178

namespace A227130

/-- `A227148(n+1)+A227149(n+1)-A227132(n+1)` -/
def P11663777558476850178.Spec : Prop :=
  ∀ n, P11663777558476850178.a n = A227130 (n + 1)

end A227130

/-! ## A227130.P2580296296708208248

`eq[2, gcd(2, A069010(A277012(n)))]`
-/

namespace A227130.P2580296296708208248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A069010 (A277012 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227130.P2580296296708208248

namespace A227130

/-- `eq[2, gcd(2, A069010(A277012(n)))]` -/
def P2580296296708208248.Spec : Prop :=
  ∀ n, (P2580296296708208248.a n : ℤ) = A227130 (n + 1)

end A227130

/-! ## A227130.P15473994202848006330

`A268411(A277012(2*n))+2*n`
-/

namespace A227130.P15473994202848006330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 (A277012 (2 * n)).toNat + (2 * n : ℤ)

end

end A227130.P15473994202848006330

namespace A227130

/-- `A268411(A277012(2*n))+2*n` -/
def P15473994202848006330.Spec : Prop :=
  ∀ n, P15473994202848006330.a n = A227130 (n + 1)

end A227130

/-!
# A227131: Sum of divisors of n that are not divisible by 25. a(0) = 1.

The programs for A227131, the canonical program `A227131.P12309905687250345847` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227131 has offset 0).

The definition of A227131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227131.P12309905687250345847

`gcd(∑{d}[A091703(n), #], A028887(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227131

/-- `gcd(∑{d}[A091703(n), #], A028887(n))` -/
def P12309905687250345847.Spec : Prop :=
  ∀ n, (P12309905687250345847.a n : ℤ) = A227131 n

theorem P12309905687250345847.correct : P12309905687250345847.Spec := by
  intro n
  simp only [A227131]

end A227131

/-! ## A227131.P17365370865807232498

`A028887(n)%A274535(A028310(n))`
-/

namespace A227131.P17365370865807232498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028887 n) (A274535 (A028310 n).toNat)

end

end A227131.P17365370865807232498

namespace A227131

/-- `A028887(n)%A274535(A028310(n))` -/
def P17365370865807232498.Spec : Prop :=
  ∀ n, P17365370865807232498.a n = A227131 n

end A227131

/-! ## A227131.P5402706647773695086

`A000203(A028310(n))%Δ[A144268(n+1)]`
-/

namespace A227131.P5402706647773695086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A028310 n).toNat) (f1 (n + 1) - f1 n)

end

end A227131.P5402706647773695086

namespace A227131

/-- `A000203(A028310(n))%Δ[A144268(n+1)]` -/
def P5402706647773695086.Spec : Prop :=
  ∀ n, P5402706647773695086.a n = A227131 n

end A227131

/-! ## A227131.P13235450002751065593

`A000203(A028310(n)%A177268(n+7))`
-/

namespace A227131.P13235450002751065593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A028310 n) (A177268 (n + 7))).toNat

end

end A227131.P13235450002751065593

namespace A227131

/-- `A000203(A028310(n)%A177268(n+7))` -/
def P13235450002751065593.Spec : Prop :=
  ∀ n, P13235450002751065593.a n = A227131 n

end A227131

/-! ## A227131.P5628645978705506217

`A000203(gcd(A008486(n), A351831(n+1)))`
-/

namespace A227131.P5628645978705506217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (A008486 n) (A351831 (n + 1)))

end

end A227131.P5628645978705506217

namespace A227131

/-- `A000203(gcd(A008486(n), A351831(n+1)))` -/
def P5628645978705506217.Spec : Prop :=
  ∀ n, P5628645978705506217.a n = A227131 n

end A227131

/-!
# A227132: Numbers k for which there is an odd number of nonzero digits when k is written in the factorial base (A007623).

The programs for A227132, the canonical program `A227132.P9151109300955143811` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227132 has offset 1).

The definition of A227132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227132.P11531316403501399359

`comp[A227130(n+1)]`
-/

namespace A227132.P11531316403501399359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227132.P11531316403501399359

namespace A227132

/-- `comp[A227130(n+1)]` -/
def P11531316403501399359.Spec : Prop :=
  ∀ n, (P11531316403501399359.a n : ℤ) = A227132 (n + 1)

end A227132

/-! ## A227132.P9151109300955143811

`eq[4, 4/a(A257687(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A227132

/-- `eq[4, 4/a(A257687(n))]` -/
def P9151109300955143811.Spec : Prop :=
  ∀ n, (P9151109300955143811.a n : ℤ) = A227132 (n + 1)

theorem P9151109300955143811.correct : P9151109300955143811.Spec := by
  intro n
  simp only [A227132, Nat.add_sub_cancel]

end A227132

/-! ## A227132.P12967676985171389032

`record[(n+1)/gcd(2, A060130(n+1))]`
-/

namespace A227132.P12967676985171389032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A060130 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227132.P12967676985171389032

namespace A227132

/-- `record[(n+1)/gcd(2, A060130(n+1))]` -/
def P12967676985171389032.Spec : Prop :=
  ∀ n, P12967676985171389032.a n = (A227132 (n + 1) : ℚ)

end A227132

/-! ## A227132.P2703123369133972279

`eq[0, A320655(A275735(n))]`
-/

namespace A227132.P2703123369133972279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227132.P2703123369133972279

namespace A227132

/-- `eq[0, A320655(A275735(n))]` -/
def P2703123369133972279.Spec : Prop :=
  ∀ n, (P2703123369133972279.a n : ℤ) = A227132 (n + 1)

end A227132

/-! ## A227132.P1957850843838858265

`A016813(n)-A227130(n+1)`
-/

namespace A227132.P1957850843838858265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A227130 (n + 1)

end

end A227132.P1957850843838858265

namespace A227132

/-- `A016813(n)-A227130(n+1)` -/
def P1957850843838858265.Spec : Prop :=
  ∀ n, P1957850843838858265.a n = A227132 (n + 1)

end A227132

/-! ## A227132.P16129623211893642957

`A016777(n)-A227130(n+1)+n`
-/

namespace A227132.P16129623211893642957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A227130 (n + 1) + (n : ℤ)

end

end A227132.P16129623211893642957

namespace A227132

/-- `A016777(n)-A227130(n+1)+n` -/
def P16129623211893642957.Spec : Prop :=
  ∀ n, P16129623211893642957.a n = A227132 (n + 1)

end A227132

/-! ## A227132.P18015280450889366196

`lt[A010673(A131421(n+1)+A060130(n)), 1]`
-/

namespace A227132.P18015280450889366196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A131421 (n + 1) + A060130 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227132.P18015280450889366196

namespace A227132

/-- `lt[A010673(A131421(n+1)+A060130(n)), 1]` -/
def P18015280450889366196.Spec : Prop :=
  ∀ n, (P18015280450889366196.a n : ℤ) = A227132 (n + 1)

end A227132

/-! ## A227132.P9297927226392175210

`A227148(n+1)+A227149(n+1)-A227130(n+1)`
-/

namespace A227132.P9297927226392175210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227148 (n + 1) + (A227149 (n + 1) - A227130 (n + 1))

end

end A227132.P9297927226392175210

namespace A227132

/-- `A227148(n+1)+A227149(n+1)-A227130(n+1)` -/
def P9297927226392175210.Spec : Prop :=
  ∀ n, P9297927226392175210.a n = A227132 (n + 1)

end A227132

/-! ## A227132.P15907881361121568646

`eq[1, gcd(2, A069010(A277012(n)))]`
-/

namespace A227132.P15907881361121568646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A069010 (A277012 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227132.P15907881361121568646

namespace A227132

/-- `eq[1, gcd(2, A069010(A277012(n)))]` -/
def P15907881361121568646.Spec : Prop :=
  ∀ n, (P15907881361121568646.a n : ℤ) = A227132 (n + 1)

end A227132

/-! ## A227132.P16719865827604900882

`A268411(A277012(2*n+1))+2*n`
-/

namespace A227132.P16719865827604900882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 (A277012 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A227132.P16719865827604900882

namespace A227132

/-- `A268411(A277012(2*n+1))+2*n` -/
def P16719865827604900882.Spec : Prop :=
  ∀ n, P16719865827604900882.a n = A227132 (n + 1)

end A227132

/-!
# A227133: Given a square grid with side n consisting of n^2 cells (or points), a(n) is the maximum number of points that can be painted so that no four of the painted ones form a square with sides parallel to the grid.

The programs for A227133, there is no canonical definition to state claims against.
-/

/-! ## A227133.P2453503659680479046

`floor(∑[∑[(30-n)/24]])`
-/

namespace A227133.P2453503659680479046
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 - (n : ℤ) : ℚ) / 24

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A227133.P2453503659680479046

/-! ## A227133.P4862160262778184519

`∑[round(((n+6)²+n)/70)+floor(10*root(n+1, 4))%10]`
-/

namespace A227133.P4862160262778184519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 6) ^ 2 + n : ℚ) / 70) + Int.tmod ⌊10 * (n + 1 : ℝ) ^ (1 / (4 : ℝ))⌋ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227133.P4862160262778184519

/-! ## A227133.P3484513782773093080

`∑[n+2]-1-(floor(sqrt(n))+n%10*dr(n%10-n))`
-/

namespace A227133.P3484513782773093080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ((Nat.sqrt n + n % 10 * SequenceMachineLib.digitalRoot (((n % 10 : ℕ) : ℤ) - (n : ℤ)) : ℕ) : ℤ)

end

end A227133.P3484513782773093080

/-! ## A227133.P9366601810518426077

`(n+1)²-A152125(n+1)`
-/

namespace A227133.P9366601810518426077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A152125 (n + 1)

end

end A227133.P9366601810518426077

/-! ## A227133.P15016645378451471115

`∑[A370559(2*n+3)+n]`
-/

namespace A227133.P15016645378451471115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370559 (2 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227133.P15016645378451471115

/-!
# A227134: Partitions with parts repeated at most twice and repetition only allowed if first part has an odd index (first index = 1).

The programs for A227134, there is no canonical definition to state claims against.
-/

/-! ## A227134.P2069191389589392601

`A122129(n)+A122135(n)-A227135(n)`
-/

namespace A227134.P2069191389589392601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122129 n + (A122135 n - A227135 n)

end

end A227134.P2069191389589392601

/-! ## A227134.P6873765736630473065

`A137676(4*n)+A122135(n)-A227135(n)`
-/

namespace A227134.P6873765736630473065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n) + A122135 n - A227135 n

end

end A227134.P6873765736630473065

/-! ## A227134.P1410967378083753657

`A137676(4*n+1)+A122129(n)-A227135(n)`
-/

namespace A227134.P1410967378083753657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n + 1) + A122129 n - A227135 n

end

end A227134.P1410967378083753657

/-! ## A227134.P17977955334512835922

`A137676(4*n+1)+A137676(4*n)-A227135(n)`
-/

namespace A227134.P17977955334512835922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n + 1) + A137676 (4 * n) - A227135 n

end

end A227134.P17977955334512835922

/-! ## A227134.P5168840726900917520

`A182372(n)-A227135(n)`
-/

namespace A227134.P5168840726900917520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182372 n - A227135 n

end

end A227134.P5168840726900917520

/-! ## A227134.P8988700530440558505

`A122129(n)+A122134(n)-A351008(n)`
-/

namespace A227134.P8988700530440558505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122129 n + (A122134 n - A351008 n)

end

end A227134.P8988700530440558505

/-!
# A227135: Partitions with parts repeated at most twice and repetition only allowed if first part has an even index (first index = 1).

The programs for A227135, there is no canonical definition to state claims against.
-/

/-! ## A227135.P11930621423355156999

`A122129(n)+A122135(n)-A227134(n)`
-/

namespace A227135.P11930621423355156999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122129 n + (A122135 n - A227134 n)

end

end A227135.P11930621423355156999

/-! ## A227135.P15396353925064558113

`A182372(n)-A227134(n)`
-/

namespace A227135.P15396353925064558113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182372 n - A227134 n

end

end A227135.P15396353925064558113

/-! ## A227135.P16735985959938579771

`A351595(n)+A351008(n)`
-/

namespace A227135.P16735985959938579771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 n + A351008 n

end

end A227135.P16735985959938579771

/-!
# A227139: Chebyshev S-polynomial evaluated at x = 48.

The programs for A227139, the canonical program `A227139.P12461900785849079902` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227139 has offset 0).

The definition of A227139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227139.P12461900785849079902

`48*a(n-1)-a(n-2)` with `a(0)=1, a(1)=48`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227139

/-- `48*a(n-1)-a(n-2)` -/
def P12461900785849079902.Spec : Prop :=
  ∀ n, P12461900785849079902.a n = A227139 n

theorem P12461900785849079902.correct : P12461900785849079902.Spec := by
  intro n
  simp only [A227139]

end A227139

/-! ## A227139.P2180327098785053311

`A174767(n+2)/5`
-/

namespace A227139.P2180327098785053311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174767 (n + 2) : ℚ) / 5

end

end A227139.P2180327098785053311

namespace A227139

/-- `A174767(n+2)/5` -/
def P2180327098785053311.Spec : Prop :=
  ∀ n, P2180327098785053311.a n = (A227139 n : ℚ)

end A227139

/-! ## A227139.P7434314984962853852

`A042103(Δ[n²])`
-/

namespace A227139.P7434314984962853852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042103 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A227139.P7434314984962853852

namespace A227139

/-- `A042103(Δ[n²])` -/
def P7434314984962853852.Spec : Prop :=
  ∀ n, P7434314984962853852.a n = A227139 n

end A227139

/-! ## A227139.P6797059387344006493

`∑[A042103(2*n)]`
-/

namespace A227139.P6797059387344006493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042103 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227139.P6797059387344006493

namespace A227139

/-- `∑[A042103(2*n)]` -/
def P6797059387344006493.Spec : Prop :=
  ∀ n, P6797059387344006493.a n = A227139 n

end A227139

/-! ## A227139.P18162785463143107604

`A114051(n)+24*a(n-1)` with `a(0)=1`
-/

namespace A227139.P18162785463143107604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114051 n + 24 * a (n - 1)

end

end A227139.P18162785463143107604

namespace A227139

/-- `A114051(n)+24*a(n-1)` -/
def P18162785463143107604.Spec : Prop :=
  ∀ n, P18162785463143107604.a n = A227139 n

end A227139

/-! ## A227139.P13670236681452081226

`record[A042103(A063195(n+1))]`
-/

namespace A227139.P13670236681452081226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042103 (A063195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227139.P13670236681452081226

namespace A227139

/-- `record[A042103(A063195(n+1))]` -/
def P13670236681452081226.Spec : Prop :=
  ∀ n, P13670236681452081226.a n = A227139 n

end A227139

/-! ## A227139.P6823913424557277438

`A040001(2*n+1)*A042103(2*n+1)`
-/

namespace A227139.P6823913424557277438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A042103 (2 * n + 1)

end

end A227139.P6823913424557277438

namespace A227139

/-- `A040001(2*n+1)*A042103(2*n+1)` -/
def P6823913424557277438.Spec : Prop :=
  ∀ n, P6823913424557277438.a n = A227139 n

end A227139

/-! ## A227139.P8032206280167062250

`A042103(2*n+1)*A134451(2*n+1)`
-/

namespace A227139.P8032206280167062250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042103 (2 * n + 1) * A134451 (2 * n + 1)

end

end A227139.P8032206280167062250

namespace A227139

/-- `A042103(2*n+1)*A134451(2*n+1)` -/
def P8032206280167062250.Spec : Prop :=
  ∀ n, P8032206280167062250.a n = A227139 n

end A227139

/-! ## A227139.P12097367494406316299

`A042103(2*n+3)-A042103(2*(n+1))`
-/

namespace A227139.P12097367494406316299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042103 (2 * n + 3) - A042103 (2 * (n + 1))

end

end A227139.P12097367494406316299

namespace A227139

/-- `A042103(2*n+3)-A042103(2*(n+1))` -/
def P12097367494406316299.Spec : Prop :=
  ∀ n, P12097367494406316299.a n = A227139 n

end A227139

/-!
# A227140: a(n) = n/gcd(n,2^5), n >= 0.

The programs for A227140, the canonical program `A227140.P606836370575662025` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227140 has offset 0).

The definition of A227140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227140.P7401577086069451262

`lcm(32, n)/32`
-/

namespace A227140.P7401577086069451262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℚ) / 32

end

end A227140.P7401577086069451262

namespace A227140

/-- `lcm(32, n)/32` -/
def P7401577086069451262.Spec : Prop :=
  ∀ n, P7401577086069451262.a n = (A227140 n : ℚ)

end A227140

/-! ## A227140.P6791213641980428256

`n/gcd(32, n)`
-/

namespace A227140.P6791213641980428256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 32 n : ℚ)

end

end A227140.P6791213641980428256

namespace A227140

/-- `n/gcd(32, n)` -/
def P6791213641980428256.Spec : Prop :=
  ∀ n, P6791213641980428256.a n = (A227140 n : ℚ)

end A227140

/-! ## A227140.P7601965741805779728

`gcd(n, A300296(n))`
-/

namespace A227140.P7601965741805779728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A300296 n)

end

end A227140.P7601965741805779728

namespace A227140

/-- `gcd(n, A300296(n))` -/
def P7601965741805779728.Spec : Prop :=
  ∀ n, (P7601965741805779728.a n : ℤ) = A227140 n

end A227140

/-! ## A227140.P606836370575662025

`A106617(A026741(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227140

/-- `A106617(A026741(n))` -/
def P606836370575662025.Spec : Prop :=
  ∀ n, P606836370575662025.a n = A227140 n

theorem P606836370575662025.correct : P606836370575662025.Spec := by
  intro n
  simp only [A227140]

end A227140

/-! ## A227140.P4344979634893571771

`A106609(A214392(n))`
-/

namespace A227140.P4344979634893571771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A214392 n).toNat

end

end A227140.P4344979634893571771

namespace A227140

/-- `A106609(A214392(n))` -/
def P4344979634893571771.Spec : Prop :=
  ∀ n, P4344979634893571771.a n = A227140 n

end A227140

/-! ## A227140.P7922218718822161282

`A106617(sqrt(A168077(n)))`
-/

namespace A227140.P7922218718822161282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (SequenceMachineLib.roundAway (Real.sqrt (A168077 n : ℝ))).toNat

end

end A227140.P7922218718822161282

namespace A227140

/-- `A106617(sqrt(A168077(n)))` -/
def P7922218718822161282.Spec : Prop :=
  ∀ n, P7922218718822161282.a n = A227140 n

end A227140

/-! ## A227140.P8898315028696171304

`A106617(n/2*A000034(n))`
-/

namespace A227140.P8898315028696171304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A000034 n : ℚ))).toNat

end

end A227140.P8898315028696171304

namespace A227140

/-- `A106617(n/2*A000034(n))` -/
def P8898315028696171304.Spec : Prop :=
  ∀ n, P8898315028696171304.a n = A227140 n

end A227140

/-! ## A227140.P15182305824748643206

`A026741(A026741(n/A109011(n)))`
-/

namespace A227140.P15182305824748643206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109011 n : ℚ))).toNat).toNat

end

end A227140.P15182305824748643206

namespace A227140

/-- `A026741(A026741(n/A109011(n)))` -/
def P15182305824748643206.Spec : Prop :=
  ∀ n, P15182305824748643206.a n = A227140 n

end A227140

/-! ## A227140.P8939982995409395298

`A106617(n/A000034(n+1))`
-/

namespace A227140.P8939982995409395298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

end

end A227140.P8939982995409395298

namespace A227140

/-- `A106617(n/A000034(n+1))` -/
def P8939982995409395298.Spec : Prop :=
  ∀ n, P8939982995409395298.a n = A227140 n

end A227140

/-! ## A227140.P17739632577581255978

`A106617(A064680(n))`
-/

namespace A227140.P17739632577581255978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A064680 n).toNat

end

end A227140.P17739632577581255978

namespace A227140

/-- `A106617(A064680(n))` -/
def P17739632577581255978.Spec : Prop :=
  ∀ n, P17739632577581255978.a n = A227140 n

end A227140

/-! ## A227140.P6553181960538530222

`A106617(A225975(n))`
-/

namespace A227140.P6553181960538530222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A225975 n).toNat

end

end A227140.P6553181960538530222

namespace A227140

/-- `A106617(A225975(n))` -/
def P6553181960538530222.Spec : Prop :=
  ∀ n, P6553181960538530222.a n = A227140 n

end A227140

/-! ## A227140.P11775992871849288316

`A106609(A106609(2*n))`
-/

namespace A227140.P11775992871849288316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A106609 (2 * n)).toNat

end

end A227140.P11775992871849288316

namespace A227140

/-- `A106609(A106609(2*n))` -/
def P11775992871849288316.Spec : Prop :=
  ∀ n, P11775992871849288316.a n = A227140 n

end A227140

/-! ## A227140.P13055688401764879734

`A025480(lcm(2, A106617(n)))`
-/

namespace A227140.P13055688401764879734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lcm 2 (A106617 n))

end

end A227140.P13055688401764879734

namespace A227140

/-- `A025480(lcm(2, A106617(n)))` -/
def P13055688401764879734.Spec : Prop :=
  ∀ n, P13055688401764879734.a n = A227140 n

end A227140

/-! ## A227140.P11920073336199050681

`A026741(A026741(A026741(A188134(n))))`
-/

namespace A227140.P11920073336199050681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A026741 (A188134 n).toNat).toNat).toNat

end

end A227140.P11920073336199050681

namespace A227140

/-- `A026741(A026741(A026741(A188134(n))))` -/
def P11920073336199050681.Spec : Prop :=
  ∀ n, P11920073336199050681.a n = A227140 n

end A227140

/-!
# A227143: Hankel determinants of order n of A225439(n): a(n)=det[A225439(i+j-2)], i,j=0..n, n>=0.

The programs for A227143, there is no canonical definition to state claims against.
-/

/-! ## A227143.P16426855343256115882

`A028310(n)*A059491(n)`
-/

namespace A227143.P16426855343256115882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A059491 n

end

end A227143.P16426855343256115882

/-! ## A227143.P1573243894563982213

`(n*A059491(n))^A178334(n)`
-/

namespace A227143.P1573243894563982213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A059491 n : ℚ) ^ (A178334 n : ℤ)

end

end A227143.P1573243894563982213

/-! ## A227143.P8344671372181913727

`A007318(∑[n]+1)*A059491(n)`
-/

namespace A227143.P8344671372181913727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A059491 n

end

end A227143.P8344671372181913727

/-! ## A227143.P14236874877313090542

`A000005(A011782(n))*A059491(n)`
-/

namespace A227143.P14236874877313090542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A059491 n

end

end A227143.P14236874877313090542

/-! ## A227143.P15657849816734449183

`A008619(A004273(n))*A059491(n)`
-/

namespace A227143.P15657849816734449183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat * A059491 n

end

end A227143.P15657849816734449183

/-!
# A227144: Numbers that are congruent to {1, 2, 7, 17, 23} modulo 24.

The programs for A227144, the canonical program `A227144.P16854350335752723226` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227144 has offset 1).

The definition of A227144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227144.P16854350335752723226

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=17, a(4)=23, a(5)=25`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227144

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P16854350335752723226.Spec : Prop :=
  ∀ n, P16854350335752723226.a n = A227144 (n + 1)

theorem P16854350335752723226.correct : P16854350335752723226.Spec := by
  intro n
  simp only [A227144, Nat.add_sub_cancel]

end A227144

/-! ## A227144.P2689497771625354412

`∩[A047268(n+1), A047526(n+1)]`
-/

namespace A227144.P2689497771625354412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227144.P2689497771625354412

namespace A227144

/-- `∩[A047268(n+1), A047526(n+1)]` -/
def P2689497771625354412.Spec : Prop :=
  ∀ n, (P2689497771625354412.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P9911829970376234071

`eq[n+1, A089911(n)+n]`
-/

namespace A227144.P9911829970376234071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227144.P9911829970376234071

namespace A227144

/-- `eq[n+1, A089911(n)+n]` -/
def P9911829970376234071.Spec : Prop :=
  ∀ n, (P9911829970376234071.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P15381818082750854367

`eq[A058306(n), A089911(n)]`
-/

namespace A227144.P15381818082750854367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P15381818082750854367

namespace A227144

/-- `eq[A058306(n), A089911(n)]` -/
def P15381818082750854367.Spec : Prop :=
  ∀ n, (P15381818082750854367.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P2515298453778398843

`eq[A089911(n), A101443(n)]`
-/

namespace A227144.P2515298453778398843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P2515298453778398843

namespace A227144

/-- `eq[A089911(n), A101443(n)]` -/
def P2515298453778398843.Spec : Prop :=
  ∀ n, (P2515298453778398843.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P9605997341445940292

`eq[A089911(n), A267871(n)]`
-/

namespace A227144.P9605997341445940292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P9605997341445940292

namespace A227144

/-- `eq[A089911(n), A267871(n)]` -/
def P9605997341445940292.Spec : Prop :=
  ∀ n, (P9605997341445940292.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P3990836011316116625

`eq[cosh(A003982(n)), A089911(n)]`
-/

namespace A227144.P3990836011316116625
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A003982 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A227144.P3990836011316116625

namespace A227144

/-- `eq[cosh(A003982(n)), A089911(n)]` -/
def P3990836011316116625.Spec : Prop :=
  ∀ n, (P3990836011316116625.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P384596375193784641

`eq[A004013(n)+1, A089911(n)]`
-/

namespace A227144.P384596375193784641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P384596375193784641

namespace A227144

/-- `eq[A004013(n)+1, A089911(n)]` -/
def P384596375193784641.Spec : Prop :=
  ∀ n, (P384596375193784641.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P5064605236811171675

`eq[A005925(n)+1, A089911(n)]`
-/

namespace A227144.P5064605236811171675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P5064605236811171675

namespace A227144

/-- `eq[A005925(n)+1, A089911(n)]` -/
def P5064605236811171675.Spec : Prop :=
  ∀ n, (P5064605236811171675.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P3677247938000249320

`eq[A089911(n), A204120(n+1)]`
-/

namespace A227144.P3677247938000249320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P3677247938000249320

namespace A227144

/-- `eq[A089911(n), A204120(n+1)]` -/
def P3677247938000249320.Spec : Prop :=
  ∀ n, (P3677247938000249320.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P9213805267223326600

`eq[A089911(n), A204125(n+1)]`
-/

namespace A227144.P9213805267223326600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P9213805267223326600

namespace A227144

/-- `eq[A089911(n), A204125(n+1)]` -/
def P9213805267223326600.Spec : Prop :=
  ∀ n, (P9213805267223326600.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P17852742133183338223

`eq[A089911(n), A204127(n+1)]`
-/

namespace A227144.P17852742133183338223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P17852742133183338223

namespace A227144

/-- `eq[A089911(n), A204127(n+1)]` -/
def P17852742133183338223.Spec : Prop :=
  ∀ n, (P17852742133183338223.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P16478003986050411415

`eq[A089911(n), A204133(n+1)]`
-/

namespace A227144.P16478003986050411415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P16478003986050411415

namespace A227144

/-- `eq[A089911(n), A204133(n+1)]` -/
def P16478003986050411415.Spec : Prop :=
  ∀ n, (P16478003986050411415.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P16283950805740047775

`eq[A089911(n), A204160(n+1)]`
-/

namespace A227144.P16283950805740047775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P16283950805740047775

namespace A227144

/-- `eq[A089911(n), A204160(n+1)]` -/
def P16283950805740047775.Spec : Prop :=
  ∀ n, (P16283950805740047775.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P11754289892256645072

`eq[A089911(n), A367623(n+1)]`
-/

namespace A227144.P11754289892256645072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367623 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P11754289892256645072

namespace A227144

/-- `eq[A089911(n), A367623(n+1)]` -/
def P11754289892256645072.Spec : Prop :=
  ∀ n, (P11754289892256645072.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P1187620222280367188

`eq[A000041(A004013(n)), A089911(n)]`
-/

namespace A227144.P1187620222280367188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004013 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P1187620222280367188

namespace A227144

/-- `eq[A000041(A004013(n)), A089911(n)]` -/
def P1187620222280367188.Spec : Prop :=
  ∀ n, (P1187620222280367188.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P16484706920215420813

`eq[A000041(A005925(n)), A089911(n)]`
-/

namespace A227144.P16484706920215420813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A005925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P16484706920215420813

namespace A227144

/-- `eq[A000041(A005925(n)), A089911(n)]` -/
def P16484706920215420813.Spec : Prop :=
  ∀ n, (P16484706920215420813.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P7563124789371829759

`eq[A000041(A008437(n)), A089911(n)]`
-/

namespace A227144.P7563124789371829759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P7563124789371829759

namespace A227144

/-- `eq[A000041(A008437(n)), A089911(n)]` -/
def P7563124789371829759.Spec : Prop :=
  ∀ n, (P7563124789371829759.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P6602255248264645253

`eq[A004538(n)*A089911(n), A004538(n)]`
-/

namespace A227144.P6602255248264645253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n * A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P6602255248264645253

namespace A227144

/-- `eq[A004538(n)*A089911(n), A004538(n)]` -/
def P6602255248264645253.Spec : Prop :=
  ∀ n, (P6602255248264645253.a n : ℤ) = A227144 (n + 1)

end A227144

/-! ## A227144.P18323446207048075140

`eq[A008706(n)*A089911(n), A008706(n)]`
-/

namespace A227144.P18323446207048075140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n * A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227144.P18323446207048075140

namespace A227144

/-- `eq[A008706(n)*A089911(n), A008706(n)]` -/
def P18323446207048075140.Spec : Prop :=
  ∀ n, (P18323446207048075140.a n : ℤ) = A227144 (n + 1)

end A227144

/-!
# A227145: Numbers satisfying an infinite nested recurrence relation.

The programs for A227145, there is no canonical definition to state claims against.
-/

/-! ## A227145.P4292021361047133481

`∑[61%(A112378(A280513(n+1)-1)+1)]`
-/

namespace A227145.P4292021361047133481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 61 (A112378 (A280513 (n + 1) - 1).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P4292021361047133481

/-! ## A227145.P1840925260889348051

`∑[61%A112377(A280513(n+2))]`
-/

namespace A227145.P1840925260889348051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 61 (A112377 (A280513 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P1840925260889348051

/-! ## A227145.P14171218735694096127

`∑[61%A087157(n+1)]`
-/

namespace A227145.P14171218735694096127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 61 (A087157 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P14171218735694096127

/-! ## A227145.P15683146813787319110

`∑[A339382(A178334(n)+A087157(n+1))]`
-/

namespace A227145.P15683146813787319110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 (A178334 n + A087157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P15683146813787319110

/-! ## A227145.P2225635056086286075

`∑[A000195(Δ[A087158(n+2)])]`
-/

namespace A227145.P2225635056086286075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P2225635056086286075

/-! ## A227145.P11815255033800184668

`∑[A000700(Δ[A087158(n+2)])]`
-/

namespace A227145.P11815255033800184668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P11815255033800184668

/-! ## A227145.P498182404770195156

`∑[A032243(Δ[A087158(n+2)])]`
-/

namespace A227145.P498182404770195156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032243 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P498182404770195156

/-! ## A227145.P11815101790159900968

`∑[A081753(Δ[A087158(n+2)])]`
-/

namespace A227145.P11815101790159900968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P11815101790159900968

/-! ## A227145.P11940411256507486990

`∑[A127254(Δ[A087158(n+2)])]`
-/

namespace A227145.P11940411256507486990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P11940411256507486990

/-! ## A227145.P12649778684357597296

`∑[A100073(Δ[A087158(n+2)]²)]`
-/

namespace A227145.P12649778684357597296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227145.P12649778684357597296

/-!
# A227146: Numbers that are congruent to {5, 11, 13, 14, 19} modulo 24.

The programs for A227146, the canonical program `A227146.P7191999084070203408` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227146 has offset 1).

The definition of A227146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227146.P7191999084070203408

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=5, a(1)=11, a(2)=13, a(3)=14, a(4)=19, a(5)=29`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227146

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P7191999084070203408.Spec : Prop :=
  ∀ n, P7191999084070203408.a n = A227146 (n + 1)

theorem P7191999084070203408.correct : P7191999084070203408.Spec := by
  intro n
  simp only [A227146, Nat.add_sub_cancel]

end A227146

/-! ## A227146.P6725844730934373214

`∪[A269819(n+1), A142241(n)]`
-/

namespace A227146.P6725844730934373214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227146.P6725844730934373214

namespace A227146

/-- `∪[A269819(n+1), A142241(n)]` -/
def P6725844730934373214.Spec : Prop :=
  ∀ n, (P6725844730934373214.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P12009099315719619613

`∩[A047268(n+1), A047443(n+1)]`
-/

namespace A227146.P12009099315719619613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227146.P12009099315719619613

namespace A227146

/-- `∩[A047268(n+1), A047443(n+1)]` -/
def P12009099315719619613.Spec : Prop :=
  ∀ n, (P12009099315719619613.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P13418791315655776130

`eq[2-A089911(n)+n, n-3]`
-/

namespace A227146.P13418791315655776130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A089911 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P13418791315655776130

namespace A227146

/-- `eq[2-A089911(n)+n, n-3]` -/
def P13418791315655776130.Spec : Prop :=
  ∀ n, (P13418791315655776130.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P13510236755114181254

`eq[A040880(n), A260397(n+1)]`
-/

namespace A227146.P13510236755114181254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P13510236755114181254

namespace A227146

/-- `eq[A040880(n), A260397(n+1)]` -/
def P13510236755114181254.Spec : Prop :=
  ∀ n, (P13510236755114181254.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P16065870527926641158

`eq[A089911(n), A350362(n+3)]`
-/

namespace A227146.P16065870527926641158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350362 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P16065870527926641158

namespace A227146

/-- `eq[A089911(n), A350362(n+3)]` -/
def P16065870527926641158.Spec : Prop :=
  ∀ n, (P16065870527926641158.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P6684833617364381992

`eq[n*A089911(n), A008706(n)]`
-/

namespace A227146.P6684833617364381992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A089911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P6684833617364381992

namespace A227146

/-- `eq[n*A089911(n), A008706(n)]` -/
def P6684833617364381992.Spec : Prop :=
  ∀ n, (P6684833617364381992.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P5100321266388178180

`eq[A175307(n+1)², A040880(n)]`
-/

namespace A227146.P5100321266388178180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P5100321266388178180

namespace A227146

/-- `eq[A175307(n+1)², A040880(n)]` -/
def P5100321266388178180.Spec : Prop :=
  ∀ n, (P5100321266388178180.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P7891140590092774019

`eq[A016969(A037213(n)), A089911(n)]`
-/

namespace A227146.P7891140590092774019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A037213 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P7891140590092774019

namespace A227146

/-- `eq[A016969(A037213(n)), A089911(n)]` -/
def P7891140590092774019.Spec : Prop :=
  ∀ n, (P7891140590092774019.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P8372118103551353458

`eq[A004538(A056926(n)), A089911(n)]`
-/

namespace A227146.P8372118103551353458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (A056926 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P8372118103551353458

namespace A227146

/-- `eq[A004538(A056926(n)), A089911(n)]` -/
def P8372118103551353458.Spec : Prop :=
  ∀ n, (P8372118103551353458.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P11673573596587899152

`eq[A004538(A058306(n)), A089911(n)]`
-/

namespace A227146.P11673573596587899152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (A058306 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P11673573596587899152

namespace A227146

/-- `eq[A004538(A058306(n)), A089911(n)]` -/
def P11673573596587899152.Spec : Prop :=
  ∀ n, (P11673573596587899152.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P11932840344306409429

`eq[A016969(A048298(n)), A089911(n)]`
-/

namespace A227146.P11932840344306409429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A048298 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P11932840344306409429

namespace A227146

/-- `eq[A016969(A048298(n)), A089911(n)]` -/
def P11932840344306409429.Spec : Prop :=
  ∀ n, (P11932840344306409429.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P14844729346241396344

`eq[A016813(A014963(n+1)), A089911(n)]`
-/

namespace A227146.P14844729346241396344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P14844729346241396344

namespace A227146

/-- `eq[A016813(A014963(n+1)), A089911(n)]` -/
def P14844729346241396344.Spec : Prop :=
  ∀ n, (P14844729346241396344.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P377459922406559026

`eq[A016969(A029832(n+1)), A089911(n)]`
-/

namespace A227146.P377459922406559026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A029832 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P377459922406559026

namespace A227146

/-- `eq[A016969(A029832(n+1)), A089911(n)]` -/
def P377459922406559026.Spec : Prop :=
  ∀ n, (P377459922406559026.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P3594378272367044946

`eq[A089911(n)+A008588(n), A016969(n)]`
-/

namespace A227146.P3594378272367044946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n + A008588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P3594378272367044946

namespace A227146

/-- `eq[A089911(n)+A008588(n), A016969(n)]` -/
def P3594378272367044946.Spec : Prop :=
  ∀ n, (P3594378272367044946.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P14034958436865118347

`eq[A004538(A276330(n)), A089911(n)]`
-/

namespace A227146.P14034958436865118347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 (A276330 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P14034958436865118347

namespace A227146

/-- `eq[A004538(A276330(n)), A089911(n)]` -/
def P14034958436865118347.Spec : Prop :=
  ∀ n, (P14034958436865118347.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P10090030392810025322

`eq[A010130(A265260(n)), A089911(n)]`
-/

namespace A227146.P10090030392810025322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 (A265260 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P10090030392810025322

namespace A227146

/-- `eq[A010130(A265260(n)), A089911(n)]` -/
def P10090030392810025322.Spec : Prop :=
  ∀ n, (P10090030392810025322.a n : ℤ) = A227146 (n + 1)

end A227146

/-! ## A227146.P11376605534297683489

`eq[1, val(A000045(n)+1, 6)]`
-/

namespace A227146.P11376605534297683489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000045 n + 1).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227146.P11376605534297683489

namespace A227146

/-- `eq[1, val(A000045(n)+1, 6)]` -/
def P11376605534297683489.Spec : Prop :=
  ∀ n, (P11376605534297683489.a n : ℤ) = A227146 (n + 1)

end A227146

/-!
# A227147: Irregular table: palindromic subsections from the rows of array A227141 related to main trunks of game trees drawn for Bulgarian solitaire.

The programs for A227147, there is no canonical definition to state claims against.
-/

/-! ## A227147.P2612724207577941182

`A088748(A227452(n^floor(atan(n))))-1`
-/

namespace A227147.P2612724207577941182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat).toNat - 1

end

end A227147.P2612724207577941182

/-! ## A227147.P1564573961392703422

`A088748(A227452(n))+A057428(n)`
-/

namespace A227147.P1564573961392703422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat + A057428 n

end

end A227147.P1564573961392703422

/-! ## A227147.P15472367293146072650

`A088748(A227452(n))-A057427(n)`
-/

namespace A227147.P15472367293146072650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - A057427 n

end

end A227147.P15472367293146072650

/-! ## A227147.P16128557519624996015

`A088748(A227452(n))-A178334(n)`
-/

namespace A227147.P16128557519624996015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - A178334 n

end

end A227147.P16128557519624996015

/-! ## A227147.P11573203880853740331

`A088748(A227452(n))-A062157(n)²`
-/

namespace A227147.P11573203880853740331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - A062157 n ^ 2

end

end A227147.P11573203880853740331

/-! ## A227147.P7762019189298240348

`A088748(A227452(n))-char[A348268(n)]`
-/

namespace A227147.P7762019189298240348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A227147.P7762019189298240348

/-! ## A227147.P13396992729514322680

`A088748(A227452(n))+A062157(2*n)`
-/

namespace A227147.P13396992729514322680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat + A062157 (2 * n)

end

end A227147.P13396992729514322680

/-! ## A227147.P13839005985559380791

`A088748(A227452(n))-A019426(2*n)`
-/

namespace A227147.P13839005985559380791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - A019426 (2 * n)

end

end A227147.P13839005985559380791

/-! ## A227147.P1149652663164948580

`floor(A088748(A227452(n))-n/A000041(n))`
-/

namespace A227147.P1149652663164948580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088748 (A227452 n).toNat : ℚ) - (n : ℚ) / (A000041 n : ℚ)⌋

end

end A227147.P1149652663164948580

/-! ## A227147.P14285149838717287569

`A088748(A227452(n))-A000040(n+1)%2`
-/

namespace A227147.P14285149838717287569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - Int.tmod (A000040 (n + 1)) 2

end

end A227147.P14285149838717287569

/-! ## A227147.P4874538216238347523

`A088748(A227452(n))-2*n/A004277(n)`
-/

namespace A227147.P4874538216238347523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088748 (A227452 n).toNat : ℚ) - 2 * ((n : ℚ) / (A004277 n : ℚ))

end

end A227147.P4874538216238347523

/-! ## A227147.P791665515412060263

`A088748(A227452(n))-A001221(A001316(n))`
-/

namespace A227147.P791665515412060263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - A001221 (A001316 n).toNat

end

end A227147.P791665515412060263

/-! ## A227147.P2841794275143153549

`A088748(A227452(n))-A001221(A000961(n+1))`
-/

namespace A227147.P2841794275143153549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - A001221 (A000961 (n + 1)).toNat

end

end A227147.P2841794275143153549

/-! ## A227147.P9825610179561663805

`A088748(A227452(n))-(A020639(A008458(n))-1)`
-/

namespace A227147.P9825610179561663805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A227452 n).toNat - (A020639 (A008458 n).toNat - 1)

end

end A227147.P9825610179561663805

/-!
# A227148: Numbers k for which the sum of digits is even when k is written in the factorial base (A007623).

The programs for A227148, the canonical program `A227148.P3238414022105672298` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227148 has offset 1).

The definition of A227148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227148.P13977103470210507471

`A374468(2*n)+2*n`
-/

namespace A227148.P13977103470210507471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374468 (2 * n) + (2 * n : ℤ)

end

end A227148.P13977103470210507471

namespace A227148

/-- `A374468(2*n)+2*n` -/
def P13977103470210507471.Spec : Prop :=
  ∀ n, P13977103470210507471.a n = A227148 (n + 1)

end A227148

/-! ## A227148.P4403630930015985718

`and(1, A219650(n))+2*n`
-/

namespace A227148.P4403630930015985718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A219650 n) + (2 * n : ℤ)

end

end A227148.P4403630930015985718

namespace A227148

/-- `and(1, A219650(n))+2*n` -/
def P4403630930015985718.Spec : Prop :=
  ∀ n, P4403630930015985718.a n = A227148 (n + 1)

end A227148

/-! ## A227148.P1910436407430973656

`eq[n, n*A262725(n+1)]`
-/

namespace A227148.P1910436407430973656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A262725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227148.P1910436407430973656

namespace A227148

/-- `eq[n, n*A262725(n+1)]` -/
def P1910436407430973656.Spec : Prop :=
  ∀ n, (P1910436407430973656.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P3238414022105672298

`A000035(A034968(2*n))+2*n`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A227148

/-- `A000035(A034968(2*n))+2*n` -/
def P3238414022105672298.Spec : Prop :=
  ∀ n, P3238414022105672298.a n = A227148 (n + 1)

theorem P3238414022105672298.correct : P3238414022105672298.Spec := by
  intro n
  simp only [A227148, Nat.add_sub_cancel]

end A227148

/-! ## A227148.P13313500866263296718

`eq[1, A028920(A034968(n))]`
-/

namespace A227148.P13313500866263296718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A034968 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227148.P13313500866263296718

namespace A227148

/-- `eq[1, A028920(A034968(n))]` -/
def P13313500866263296718.Spec : Prop :=
  ∀ n, (P13313500866263296718.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P4136682364601801375

`eq[1, A257261(A034968(n)+1)]`
-/

namespace A227148.P4136682364601801375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 (A034968 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227148.P4136682364601801375

namespace A227148

/-- `eq[1, A257261(A034968(n)+1)]` -/
def P4136682364601801375.Spec : Prop :=
  ∀ n, (P4136682364601801375.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P3774854730202223094

`eq[1, A019426(A034968(n)+2)]`
-/

namespace A227148.P3774854730202223094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A034968 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227148.P3774854730202223094

namespace A227148

/-- `eq[1, A019426(A034968(n)+2)]` -/
def P3774854730202223094.Spec : Prop :=
  ∀ n, (P3774854730202223094.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P18170245798118657392

`eq[2, A316828(A034968(n)+1)]`
-/

namespace A227148.P18170245798118657392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A034968 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227148.P18170245798118657392

namespace A227148

/-- `eq[2, A316828(A034968(n)+1)]` -/
def P18170245798118657392.Spec : Prop :=
  ∀ n, (P18170245798118657392.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P6277005372504680218

`eq[2, A020639(A034968(n)+2)]`
-/

namespace A227148.P6277005372504680218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034968 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227148.P6277005372504680218

namespace A227148

/-- `eq[2, A020639(A034968(n)+2)]` -/
def P6277005372504680218.Spec : Prop :=
  ∀ n, (P6277005372504680218.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P12586050463836298827

`eq[A060576(n), A262725(n+1)]`
-/

namespace A227148.P12586050463836298827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227148.P12586050463836298827

namespace A227148

/-- `eq[A060576(n), A262725(n+1)]` -/
def P12586050463836298827.Spec : Prop :=
  ∀ n, (P12586050463836298827.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P18329704663032586103

`eq[A179184(n), A262725(n+1)]`
-/

namespace A227148.P18329704663032586103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227148.P18329704663032586103

namespace A227148

/-- `eq[A179184(n), A262725(n+1)]` -/
def P18329704663032586103.Spec : Prop :=
  ∀ n, (P18329704663032586103.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P7084615385456278083

`eq[A262725(n+1), A267927(n)]`
-/

namespace A227148.P7084615385456278083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227148.P7084615385456278083

namespace A227148

/-- `eq[A262725(n+1), A267927(n)]` -/
def P7084615385456278083.Spec : Prop :=
  ∀ n, (P7084615385456278083.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P2428332593613600332

`eq[A181405(n+1), A374468(n)]`
-/

namespace A227148.P2428332593613600332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227148.P2428332593613600332

namespace A227148

/-- `eq[A181405(n+1), A374468(n)]` -/
def P2428332593613600332.Spec : Prop :=
  ∀ n, (P2428332593613600332.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P15444082383910374197

`eq[A262725(n+1), A329684(n)]`
-/

namespace A227148.P15444082383910374197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227148.P15444082383910374197

namespace A227148

/-- `eq[A262725(n+1), A329684(n)]` -/
def P15444082383910374197.Spec : Prop :=
  ∀ n, (P15444082383910374197.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P13398614283717038911

`eq[A262725(n+1), A373565(n)]`
-/

namespace A227148.P13398614283717038911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227148.P13398614283717038911

namespace A227148

/-- `eq[A262725(n+1), A373565(n)]` -/
def P13398614283717038911.Spec : Prop :=
  ∀ n, (P13398614283717038911.a n : ℤ) = A227148 (n + 1)

end A227148

/-! ## A227148.P3970051851761593421

`xor(1, A227149(n+1))`
-/

namespace A227148.P3970051851761593421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A227149 (n + 1))

end

end A227148.P3970051851761593421

namespace A227148

/-- `xor(1, A227149(n+1))` -/
def P3970051851761593421.Spec : Prop :=
  ∀ n, P3970051851761593421.a n = A227148 (n + 1)

end A227148

/-! ## A227148.P1265920298616261292

`A004442(A227149(n+1))`
-/

namespace A227148.P1265920298616261292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A227149 (n + 1)).toNat

end

end A227148.P1265920298616261292

namespace A227148

/-- `A004442(A227149(n+1))` -/
def P1265920298616261292.Spec : Prop :=
  ∀ n, P1265920298616261292.a n = A227148 (n + 1)

end A227148

/-! ## A227148.P15329370110676090021

`A016813(n)-A227149(n+1)`
-/

namespace A227148.P15329370110676090021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A227149 (n + 1)

end

end A227148.P15329370110676090021

namespace A227148

/-- `A016813(n)-A227149(n+1)` -/
def P15329370110676090021.Spec : Prop :=
  ∀ n, P15329370110676090021.a n = A227148 (n + 1)

end A227148

/-! ## A227148.P12439073481569886780

`A002943(n)/A227149(n+1)`
-/

namespace A227148.P12439073481569886780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A227149 (n + 1) : ℚ)

end

end A227148.P12439073481569886780

namespace A227148

/-- `A002943(n)/A227149(n+1)` -/
def P12439073481569886780.Spec : Prop :=
  ∀ n, P12439073481569886780.a n = (A227148 (n + 1) : ℚ)

end A227148

/-!
# A227149: Numbers k for which the sum of digits is odd when k is written in the factorial base (A007623).

The programs for A227149, the canonical program `A227149.P2907852417723426036` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227149 has offset 1).

The definition of A227149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227149.P4045178116180823056

`comp[A227148(n+1)]`
-/

namespace A227149.P4045178116180823056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227149.P4045178116180823056

namespace A227149

/-- `comp[A227148(n+1)]` -/
def P4045178116180823056.Spec : Prop :=
  ∀ n, (P4045178116180823056.a n : ℤ) = A227149 (n + 1)

end A227149

/-! ## A227149.P18289178394921725201

`comp[A280318(2*n)]`
-/

namespace A227149.P18289178394921725201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280318 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227149.P18289178394921725201

namespace A227149

/-- `comp[A280318(2*n)]` -/
def P18289178394921725201.Spec : Prop :=
  ∀ n, (P18289178394921725201.a n : ℤ) = A227149 (n + 1)

end A227149

/-! ## A227149.P3921069414042144152

`filter[n+1, A374468(#)]`
-/

namespace A227149.P3921069414042144152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374468 (f1 j) = 1) n)

end

end A227149.P3921069414042144152

namespace A227149

/-- `filter[n+1, A374468(#)]` -/
def P3921069414042144152.Spec : Prop :=
  ∀ n, (P3921069414042144152.a n : ℤ) = A227149 (n + 1)

end A227149

/-! ## A227149.P15837514469564382676

`comp[A280319(2*n+1)]`
-/

namespace A227149.P15837514469564382676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280319 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227149.P15837514469564382676

namespace A227149

/-- `comp[A280319(2*n+1)]` -/
def P15837514469564382676.Spec : Prop :=
  ∀ n, (P15837514469564382676.a n : ℤ) = A227149 (n + 1)

end A227149

/-! ## A227149.P16097538130685874598

`A374468(2*n+1)+2*n`
-/

namespace A227149.P16097538130685874598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374468 (2 * n + 1) + (2 * n : ℤ)

end

end A227149.P16097538130685874598

namespace A227149

/-- `A374468(2*n+1)+2*n` -/
def P16097538130685874598.Spec : Prop :=
  ∀ n, P16097538130685874598.a n = A227149 (n + 1)

end A227149

/-! ## A227149.P11326551027484091971

`eq[n+1, (n+1)*gcd(2, A055091(n))]`
-/

namespace A227149.P11326551027484091971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A055091 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227149.P11326551027484091971

namespace A227149

/-- `eq[n+1, (n+1)*gcd(2, A055091(n))]` -/
def P11326551027484091971.Spec : Prop :=
  ∀ n, (P11326551027484091971.a n : ℤ) = A227149 (n + 1)

end A227149

/-! ## A227149.P13961845269477401285

`eq[1, A257261(A034968(n))]`
-/

namespace A227149.P13961845269477401285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 (A034968 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227149.P13961845269477401285

namespace A227149

/-- `eq[1, A257261(A034968(n))]` -/
def P13961845269477401285.Spec : Prop :=
  ∀ n, (P13961845269477401285.a n : ℤ) = A227149 (n + 1)

end A227149

/-! ## A227149.P2907852417723426036

`eq[1, A019426(A034968(n)+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A227149

/-- `eq[1, A019426(A034968(n)+1)]` -/
def P2907852417723426036.Spec : Prop :=
  ∀ n, (P2907852417723426036.a n : ℤ) = A227149 (n + 1)

theorem P2907852417723426036.correct : P2907852417723426036.Spec := by
  intro n
  simp only [A227149, Nat.add_sub_cancel]

end A227149

/-! ## A227149.P10075122421651994883

`eq[2, A020639(A034968(n)+1)]`
-/

namespace A227149.P10075122421651994883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034968 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227149.P10075122421651994883

namespace A227149

/-- `eq[2, A020639(A034968(n)+1)]` -/
def P10075122421651994883.Spec : Prop :=
  ∀ n, (P10075122421651994883.a n : ℤ) = A227149 (n + 1)

end A227149

/-! ## A227149.P8656197110569071142

`A016813(n)-A227148(n+1)`
-/

namespace A227149.P8656197110569071142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A227148 (n + 1)

end

end A227149.P8656197110569071142

namespace A227149

/-- `A016813(n)-A227148(n+1)` -/
def P8656197110569071142.Spec : Prop :=
  ∀ n, P8656197110569071142.a n = A227149 (n + 1)

end A227149

/-! ## A227149.P8756825299743697081

`xor(A093719(3*n), A227148(n+1))`
-/

namespace A227149.P8756825299743697081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A093719 (3 * n)) (A227148 (n + 1))

end

end A227149.P8756825299743697081

namespace A227149

/-- `xor(A093719(3*n), A227148(n+1))` -/
def P8756825299743697081.Spec : Prop :=
  ∀ n, P8756825299743697081.a n = A227149 (n + 1)

end A227149

/-! ## A227149.P15078608362651922447

`A262725(2*n+1)+A227148(n+1)`
-/

namespace A227149.P15078608362651922447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262725 (2 * n + 1) + A227148 (n + 1)

end

end A227149.P15078608362651922447

namespace A227149

/-- `A262725(2*n+1)+A227148(n+1)` -/
def P15078608362651922447.Spec : Prop :=
  ∀ n, P15078608362651922447.a n = A227149 (n + 1)

end A227149

/-! ## A227149.P12360063539602849627

`A000035(A034968(2*n+1))+2*n`
-/

namespace A227149.P12360063539602849627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A034968 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A227149.P12360063539602849627

namespace A227149

/-- `A000035(A034968(2*n+1))+2*n` -/
def P12360063539602849627.Spec : Prop :=
  ∀ n, P12360063539602849627.a n = A227149 (n + 1)

end A227149

/-! ## A227149.P7210680539149609475

`A227130(n+1)+A227132(n+1)-A227148(n+1)`
-/

namespace A227149.P7210680539149609475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227130 (n + 1) + (A227132 (n + 1) - A227148 (n + 1))

end

end A227149.P7210680539149609475

namespace A227149

/-- `A227130(n+1)+A227132(n+1)-A227148(n+1)` -/
def P7210680539149609475.Spec : Prop :=
  ∀ n, P7210680539149609475.a n = A227149 (n + 1)

end A227149

/-! ## A227149.P7766712882038467633

`A010060(A277012(2*n+1))+2*n`
-/

namespace A227149.P7766712882038467633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A277012 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A227149.P7766712882038467633

namespace A227149

/-- `A010060(A277012(2*n+1))+2*n` -/
def P7766712882038467633.Spec : Prop :=
  ∀ n, P7766712882038467633.a n = A227149 (n + 1)

end A227149

/-!
# A227152: Nonnegative solutions of the Pell equation x^2 - 101*y^2 = +1. Solutions x = a(n).

The programs for A227152, the canonical program `A227152.P5836718578147343986` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227152 has offset 0).

The definition of A227152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227152.P5836718578147343986

`2*201*a(n-1)-a(n-2)` with `a(0)=1, a(1)=201`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227152

/-- `2*201*a(n-1)-a(n-2)` -/
def P5836718578147343986.Spec : Prop :=
  ∀ n, P5836718578147343986.a n = A227152 n

theorem P5836718578147343986.correct : P5836718578147343986.Spec := by
  intro n
  simp only [A227152]

end A227152

/-! ## A227152.P11440012098564828159

`A090309(2*n)/2`
-/

namespace A227152.P11440012098564828159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090309 (2 * n) : ℚ) / 2

end

end A227152.P11440012098564828159

namespace A227152

/-- `A090309(2*n)/2` -/
def P11440012098564828159.Spec : Prop :=
  ∀ n, P11440012098564828159.a n = (A227152 n : ℚ)

end A227152

/-! ## A227152.P11850926666227336521

`record[ratio[A090309(A237420(n))]]`
-/

namespace A227152.P11850926666227336521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090309 (A237420 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227152.P11850926666227336521

namespace A227152

/-- `record[ratio[A090309(A237420(n))]]` -/
def P11850926666227336521.Spec : Prop :=
  ∀ n, P11850926666227336521.a n = (A227152 n : ℚ)

end A227152

/-! ## A227152.P14178569465061690499

`record[gcd(A035363(n), A041180(n))]`
-/

namespace A227152.P14178569465061690499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A041180 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227152.P14178569465061690499

namespace A227152

/-- `record[gcd(A035363(n), A041180(n))]` -/
def P14178569465061690499.Spec : Prop :=
  ∀ n, (P14178569465061690499.a n : ℤ) = A227152 n

end A227152

/-! ## A227152.P8392322831282814037

`record[A041180(n)^A007814(A081346(n))]`
-/

namespace A227152.P8392322831282814037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041180 n : ℚ) ^ (A007814 (A081346 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227152.P8392322831282814037

namespace A227152

/-- `record[A041180(n)^A007814(A081346(n))]` -/
def P8392322831282814037.Spec : Prop :=
  ∀ n, P8392322831282814037.a n = (A227152 n : ℚ)

end A227152

/-!
# A227153: Product of nonzero digits of n in factorial base.

The programs for A227153, the canonical program `A227153.P14249677092312730531` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227153 has offset 0).

The definition of A227153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227153.P9975728603438760847

`A227154(A257684(n))`
-/

namespace A227153.P9975728603438760847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227154 (A257684 n).toNat

end

end A227153.P9975728603438760847

namespace A227153

/-- `A227154(A257684(n))` -/
def P9975728603438760847.Spec : Prop :=
  ∀ n, P9975728603438760847.a n = A227153 n

end A227153

/-! ## A227153.P15284965981015186348

`A227154(A276009(n))`
-/

namespace A227153.P15284965981015186348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227154 (A276009 n).toNat

end

end A227153.P15284965981015186348

namespace A227153

/-- `A227154(A276009(n))` -/
def P15284965981015186348.Spec : Prop :=
  ∀ n, P15284965981015186348.a n = A227153 n

end A227153

/-! ## A227153.P14249677092312730531

`a(A257687(n))*A099563(n)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A227153

/-- `a(A257687(n))*A099563(n)` -/
def P14249677092312730531.Spec : Prop :=
  ∀ n, P14249677092312730531.a n = A227153 n

theorem P14249677092312730531.correct : P14249677092312730531.Spec := by
  intro n
  simp only [A227153]

end A227153

/-! ## A227153.P8247093459095339741

`A109613(n)-A227191(A109613(n))`
-/

namespace A227153.P8247093459095339741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A227191 (A109613 n).toNat

end

end A227153.P8247093459095339741

namespace A227153

/-- `A109613(n)-A227191(A109613(n))` -/
def P8247093459095339741.Spec : Prop :=
  ∀ n, P8247093459095339741.a n = A227153 n

end A227153

/-! ## A227153.P4890338948139741931

`A328581(A351576(n))`
-/

namespace A227153.P4890338948139741931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328581 (A351576 n).toNat

end

end A227153.P4890338948139741931

namespace A227153

/-- `A328581(A351576(n))` -/
def P4890338948139741931.Spec : Prop :=
  ∀ n, P4890338948139741931.a n = A227153 n

end A227153

/-! ## A227153.P1737930510293382569

`A003963(A275735(n))`
-/

namespace A227153.P1737930510293382569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A275735 n).toNat

end

end A227153.P1737930510293382569

namespace A227153

/-- `A003963(A275735(n))` -/
def P1737930510293382569.Spec : Prop :=
  ∀ n, P1737930510293382569.a n = A227153 n

end A227153

/-! ## A227153.P17272867237414584433

`A000005(A351577(n))`
-/

namespace A227153.P17272867237414584433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A351577 n).toNat

end

end A227153.P17272867237414584433

namespace A227153

/-- `A000005(A351577(n))` -/
def P17272867237414584433.Spec : Prop :=
  ∀ n, P17272867237414584433.a n = A227153 n

end A227153

/-! ## A227153.P8876115239036986676

`A000005(A276076(n)/A275733(n))`
-/

namespace A227153.P8876115239036986676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A276076 n : ℚ) / (A275733 n : ℚ))).toNat

end

end A227153.P8876115239036986676

namespace A227153

/-- `A000005(A276076(n)/A275733(n))` -/
def P8876115239036986676.Spec : Prop :=
  ∀ n, P8876115239036986676.a n = A227153 n

end A227153

/-! ## A227153.P6119405714811037781

`∏{e}[A278236(n), #]`
-/

namespace A227153.P6119405714811037781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227153.P6119405714811037781

namespace A227153

/-- `∏{e}[A278236(n), #]` -/
def P6119405714811037781.Spec : Prop :=
  ∀ n, (P6119405714811037781.a n : ℤ) = A227153 n

end A227153

/-! ## A227153.P15568421589042719100

`A227349(A277012(n))`
-/

namespace A227153.P15568421589042719100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A277012 n).toNat

end

end A227153.P15568421589042719100

namespace A227153

/-- `A227349(A277012(n))` -/
def P15568421589042719100.Spec : Prop :=
  ∀ n, P15568421589042719100.a n = A227153 n

end A227153

/-! ## A227153.P1405441128444241287

`A051801(A007623(n))`
-/

namespace A227153.P1405441128444241287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A007623 n).toNat

end

end A227153.P1405441128444241287

namespace A227153

/-- `A051801(A007623(n))` -/
def P1405441128444241287.Spec : Prop :=
  ∀ n, P1405441128444241287.a n = A227153 n

end A227153

/-! ## A227153.P12107387030112435553

`∏{e}[A276076(n), #]`
-/

namespace A227153.P12107387030112435553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227153.P12107387030112435553

namespace A227153

/-- `∏{e}[A276076(n), #]` -/
def P12107387030112435553.Spec : Prop :=
  ∀ n, (P12107387030112435553.a n : ℤ) = A227153 n

end A227153

/-!
# A227154: Product of digits+1 of n in factorial base.

The programs for A227154, there is no canonical definition to state claims against.
-/

/-! ## A227154.P10969468073983367068

`∏{digits}[A007623(n), #+1]`
-/

namespace A227154.P10969468073983367068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A227154.P10969468073983367068

/-! ## A227154.P17057399509953880083

`A324655(A351576(n))`
-/

namespace A227154.P17057399509953880083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324655 (A351576 n).toNat

end

end A227154.P17057399509953880083

/-! ## A227154.P17671723869456715283

`A064553(A275735(n))`
-/

namespace A227154.P17671723869456715283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A275735 n).toNat

end

end A227154.P17671723869456715283

/-! ## A227154.P1171907104989463086

`A208575(A231720(n))`
-/

namespace A227154.P1171907104989463086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (A231720 n).toNat

end

end A227154.P1171907104989463086

/-! ## A227154.P17585225898205299504

`A227153(A255411(n))`
-/

namespace A227154.P17585225898205299504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227153 (A255411 n).toNat

end

end A227154.P17585225898205299504

/-! ## A227154.P16862530427369134264

`∏{e}[A278236(n), #+1]`
-/

namespace A227154.P16862530427369134264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A227154.P16862530427369134264

/-! ## A227154.P1305299837665428365

`A106737(A277012(n))`
-/

namespace A227154.P1305299837665428365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A277012 n).toNat

end

end A227154.P1305299837665428365

/-! ## A227154.P14272155673771392847

`A000005(A278236(n))`
-/

namespace A227154.P14272155673771392847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278236 n).toNat

end

end A227154.P14272155673771392847

/-! ## A227154.P15854479101750211938

`A089898(A007623(n))`
-/

namespace A227154.P15854479101750211938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A007623 n).toNat

end

end A227154.P15854479101750211938

/-! ## A227154.P5646091257627626788

`∏{e}[A276076(n), #+1]`
-/

namespace A227154.P5646091257627626788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A227154.P5646091257627626788

/-!
# A227156: Number of ways to write n as a sum of a square and half of a term of the sequence A008407.

The programs for A227156, there is no canonical definition to state claims against.
-/

/-! ## A227156.P3156310010508850572

`A001221(A377048(n+1)-A006464(n))`
-/

namespace A227156.P3156310010508850572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A377048 (n + 1) - A006464 n).toNat

end

end A227156.P3156310010508850572

/-!
# A227157: Numbers k whose factorial base representation A007623(k) does not contain any nonleading zeros.

The programs for A227157, there is no canonical definition to state claims against.
-/

/-! ## A227157.P12356317952575022669

`eq[A060129(n), A275726(n)]`
-/

namespace A227157.P12356317952575022669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P12356317952575022669

/-! ## A227157.P11902494304994393618

`eq[log2(A275725(n)), A060129(n)]`
-/

namespace A227157.P11902494304994393618
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A275725 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A227157.P11902494304994393618

/-! ## A227157.P17965725073028035795

`eq[2, A080100(2*A275727(n))]`
-/

namespace A227157.P17965725073028035795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (2 * A275727 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227157.P17965725073028035795

/-! ## A227157.P10864082228883850882

`lt[0, A208575(n)]`
-/

namespace A227157.P10864082228883850882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227157.P10864082228883850882

/-! ## A227157.P6102562238153620230

`lt[A257260(n+1), 1]+1`
-/

namespace A227157.P6102562238153620230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257260 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227157.P6102562238153620230

/-! ## A227157.P153578334618535556

`lt[A275725(n), A339013(n+1)!]`
-/

namespace A227157.P153578334618535556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275725 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339013 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227157.P153578334618535556

/-! ## A227157.P10447278076059851247

`eq[1, A304036(n+1)]+1`
-/

namespace A227157.P10447278076059851247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227157.P10447278076059851247

/-! ## A227157.P6870052587950181788

`eq[A000035(n), A304036(n)]`
-/

namespace A227157.P6870052587950181788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P6870052587950181788

/-! ## A227157.P14208300828108103481

`eq[A010194(n), A304036(n)]`
-/

namespace A227157.P14208300828108103481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P14208300828108103481

/-! ## A227157.P2653054230490026202

`eq[A010195(n), A304036(n)]`
-/

namespace A227157.P2653054230490026202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P2653054230490026202

/-! ## A227157.P7360550961037580859

`eq[A010209(n), A304036(n)]`
-/

namespace A227157.P7360550961037580859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P7360550961037580859

/-! ## A227157.P1888350172246750580

`eq[A040109(n), A304036(n)]`
-/

namespace A227157.P1888350172246750580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P1888350172246750580

/-! ## A227157.P10847494282591964934

`eq[A040131(n), A304036(n)]`
-/

namespace A227157.P10847494282591964934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P10847494282591964934

/-! ## A227157.P5055733382501110372

`eq[A040155(n), A304036(n)]`
-/

namespace A227157.P5055733382501110372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P5055733382501110372

/-! ## A227157.P6829294363105675740

`eq[A040181(n), A304036(n)]`
-/

namespace A227157.P6829294363105675740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P6829294363105675740

/-! ## A227157.P5098544235191010050

`eq[A208575(n), A227153(n)]`
-/

namespace A227157.P5098544235191010050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P5098544235191010050

/-! ## A227157.P11735573897172949872

`eq[A010130(n)², A304036(n)]`
-/

namespace A227157.P11735573897172949872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P11735573897172949872

/-! ## A227157.P7974329899818179746

`eq[A010153(n)², A304036(n)]`
-/

namespace A227157.P7974329899818179746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P7974329899818179746

/-! ## A227157.P983391425471113390

`eq[A010170(n)², A304036(n)]`
-/

namespace A227157.P983391425471113390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P983391425471113390

/-! ## A227157.P16766671584875813131

`eq[A010184(n)², A304036(n)]`
-/

namespace A227157.P16766671584875813131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010184 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227157.P16766671584875813131

/-!
# A227160: Number of n X n 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X (n+1) binary array having a sum of one or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227160, there is no canonical definition to state claims against.
-/

/-! ## A227160.P14169381636071777306

`A227165(∑[4*n]+1)`
-/

namespace A227160.P14169381636071777306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227160.P14169381636071777306

/-! ## A227160.P6952657257906275086

`lcm(2-char[xor(n, 2*n)], A227165(n²+(n+1)²))`
-/

namespace A227160.P6952657257906275086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A227165 (n ^ 2 + (n + 1) ^ 2))

end

end A227160.P6952657257906275086

/-! ## A227160.P665224416390022378

`record[A227165(Δ[A235355(n)])]`
-/

namespace A227160.P665224416390022378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227160.P665224416390022378

/-! ## A227160.P5332180609391984943

`record[A227165(A330613(n+1))]`
-/

namespace A227160.P5332180609391984943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227160.P5332180609391984943

/-!
# A227161: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having a sum of one or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227161, the canonical program `A227161.P17151481992064365047` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227161 has offset 0).

The definition of A227161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227161.P17151481992064365047

`∑[n²+1]+C(n, 4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227161

/-- `∑[n²+1]+C(n, 4)` -/
def P17151481992064365047.Spec : Prop :=
  ∀ n, (P17151481992064365047.a n : ℤ) = A227161 n

theorem P17151481992064365047.correct : P17151481992064365047.Spec := by
  intro n
  simp only [A227161]

end A227161

/-! ## A227161.P8044521715435637241

`∑[∑[∑[abs(1-(char[2]+n))]]]`
-/

namespace A227161.P8044521715435637241
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f4 j = n then 1 else 0) + n : ℕ) : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227161.P8044521715435637241

namespace A227161

/-- `∑[∑[∑[abs(1-(char[2]+n))]]]` -/
def P8044521715435637241.Spec : Prop :=
  ∀ n, P8044521715435637241.a n = A227161 n

end A227161

/-! ## A227161.P3330590119246107790

`∑[∑[C(n, 2)+2]-2]+1`
-/

namespace A227161.P3330590119246107790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227161.P3330590119246107790

namespace A227161

/-- `∑[∑[C(n, 2)+2]-2]+1` -/
def P3330590119246107790.Spec : Prop :=
  ∀ n, P3330590119246107790.a n = A227161 n

end A227161

/-! ## A227161.P16198959999651305745

`∑[∑[C(n, 2)]+2*n]+1`
-/

namespace A227161.P16198959999651305745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227161.P16198959999651305745

namespace A227161

/-- `∑[∑[C(n, 2)]+2*n]+1` -/
def P16198959999651305745.Spec : Prop :=
  ∀ n, (P16198959999651305745.a n : ℤ) = A227161 n

end A227161

/-! ## A227161.P9534637890206850214

`∑[n]+C(∑[n]+3, 2)/3`
-/

namespace A227161.P9534637890206850214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 3) 2 : ℚ) / 3

end

end A227161.P9534637890206850214

namespace A227161

/-- `∑[n]+C(∑[n]+3, 2)/3` -/
def P9534637890206850214.Spec : Prop :=
  ∀ n, P9534637890206850214.a n = (A227161 n : ℚ)

end A227161

/-! ## A227161.P17208835206595080082

`n+1+C(n+2, 4)+n²`
-/

namespace A227161.P17208835206595080082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (Nat.choose (n + 2) 4 + n ^ 2)

end

end A227161.P17208835206595080082

namespace A227161

/-- `n+1+C(n+2, 4)+n²` -/
def P17208835206595080082.Spec : Prop :=
  ∀ n, (P17208835206595080082.a n : ℤ) = A227161 n

end A227161

/-! ## A227161.P15741613840138599963

`∑[∑[a(n-1)+n-1]]+1` with `a(0)=0, a(1)=2`
-/

namespace A227161.P15741613840138599963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227161.P15741613840138599963

namespace A227161

/-- `∑[∑[a(n-1)+n-1]]+1` -/
def P15741613840138599963.Spec : Prop :=
  ∀ n, P15741613840138599963.a n = A227161 n

end A227161

/-! ## A227161.P6764762285488975513

`2*n+a(n-1)+C(n+1, 3)` with `a(0)=1`
-/

namespace A227161.P6764762285488975513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + Nat.choose (n + 1) 3)

end

end A227161.P6764762285488975513

namespace A227161

/-- `2*n+a(n-1)+C(n+1, 3)` -/
def P6764762285488975513.Spec : Prop :=
  ∀ n, (P6764762285488975513.a n : ℤ) = A227161 n

end A227161

/-! ## A227161.P4068814579866525398

`A318054(n)+1`
-/

namespace A227161.P4068814579866525398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n + 1

end

end A227161.P4068814579866525398

namespace A227161

/-- `A318054(n)+1` -/
def P4068814579866525398.Spec : Prop :=
  ∀ n, P4068814579866525398.a n = A227161 n

end A227161

/-! ## A227161.P10439576707748720682

`A101338(n)+n²`
-/

namespace A227161.P10439576707748720682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + (n ^ 2 : ℤ)

end

end A227161.P10439576707748720682

namespace A227161

/-- `A101338(n)+n²` -/
def P10439576707748720682.Spec : Prop :=
  ∀ n, P10439576707748720682.a n = A227161 n

end A227161

/-! ## A227161.P563098691685749103

`A363256(n)-∑[n²]`
-/

namespace A227161.P563098691685749103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227161.P563098691685749103

namespace A227161

/-- `A363256(n)-∑[n²]` -/
def P563098691685749103.Spec : Prop :=
  ∀ n, P563098691685749103.a n = A227161 n

end A227161

/-! ## A227161.P18382527742204548872

`(∑[A140226(n)]+1)/2`
-/

namespace A227161.P18382527742204548872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140226 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A227161.P18382527742204548872

namespace A227161

/-- `(∑[A140226(n)]+1)/2` -/
def P18382527742204548872.Spec : Prop :=
  ∀ n, P18382527742204548872.a n = (A227161 n : ℚ)

end A227161

/-! ## A227161.P12694369925317801208

`∑[A004006(n)+n]+1`
-/

namespace A227161.P12694369925317801208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227161.P12694369925317801208

namespace A227161

/-- `∑[A004006(n)+n]+1` -/
def P12694369925317801208.Spec : Prop :=
  ∀ n, P12694369925317801208.a n = A227161 n

end A227161

/-! ## A227161.P5531772410418063993

`A027927(n+2)+∑[n]`
-/

namespace A227161.P5531772410418063993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227161.P5531772410418063993

namespace A227161

/-- `A027927(n+2)+∑[n]` -/
def P5531772410418063993.Spec : Prop :=
  ∀ n, P5531772410418063993.a n = A227161 n

end A227161

/-! ## A227161.P15725628601479243826

`∑[A180415(n+1)]-n`
-/

namespace A227161.P15725628601479243826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A227161.P15725628601479243826

namespace A227161

/-- `∑[A180415(n+1)]-n` -/
def P15725628601479243826.Spec : Prop :=
  ∀ n, P15725628601479243826.a n = A227161 n

end A227161

/-! ## A227161.P9832963728236400318

`∑[A000125(n)+n]-n`
-/

namespace A227161.P9832963728236400318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A227161.P9832963728236400318

namespace A227161

/-- `∑[A000125(n)+n]-n` -/
def P9832963728236400318.Spec : Prop :=
  ∀ n, P9832963728236400318.a n = A227161 n

end A227161

/-! ## A227161.P11205547938471716278

`A177787(n)+a(n-1)` with `a(0)=1`
-/

namespace A227161.P11205547938471716278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177787 n + a (n - 1)

end

end A227161.P11205547938471716278

namespace A227161

/-- `A177787(n)+a(n-1)` -/
def P11205547938471716278.Spec : Prop :=
  ∀ n, P11205547938471716278.a n = A227161 n

end A227161

/-! ## A227161.P18201453491982878857

`A000127(n+1)+∑[∑[n]]`
-/

namespace A227161.P18201453491982878857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227161.P18201453491982878857

namespace A227161

/-- `A000127(n+1)+∑[∑[n]]` -/
def P18201453491982878857.Spec : Prop :=
  ∀ n, P18201453491982878857.a n = A227161 n

end A227161

/-! ## A227161.P4693638850295667666

`∑[∑[A089071(n+1)]]-n`
-/

namespace A227161.P4693638850295667666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A227161.P4693638850295667666

namespace A227161

/-- `∑[∑[A089071(n+1)]]-n` -/
def P4693638850295667666.Spec : Prop :=
  ∀ n, P4693638850295667666.a n = A227161 n

end A227161

/-! ## A227161.P2840184733664133658

`A188555(n+1)-2*(n+2)`
-/

namespace A227161.P2840184733664133658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 1) - (2 * (n + 2) : ℤ)

end

end A227161.P2840184733664133658

namespace A227161

/-- `A188555(n+1)-2*(n+2)` -/
def P2840184733664133658.Spec : Prop :=
  ∀ n, P2840184733664133658.a n = A227161 n

end A227161

/-!
# A227162: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having a sum of one or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227162, there is no canonical definition to state claims against.
-/

/-! ## A227162.P9320724523076664520

`A227165(∑[n+2]+4)`
-/

namespace A227162.P9320724523076664520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227162.P9320724523076664520

/-! ## A227162.P9467189034496027334

`A227165(A167614(n+1))+A011745(n)`
-/

namespace A227162.P9467189034496027334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A167614 (n + 1)).toNat + A011745 n

end

end A227162.P9467189034496027334

/-! ## A227162.P6506899082742788412

`A227165(A167614(n+1))+A025438(n)`
-/

namespace A227162.P6506899082742788412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A167614 (n + 1)).toNat + A025438 n

end

end A227162.P6506899082742788412

/-! ## A227162.P12906332751170432210

`A227165(A167614(n+1))+A025444(n)`
-/

namespace A227162.P12906332751170432210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A167614 (n + 1)).toNat + A025444 n

end

end A227162.P12906332751170432210

/-! ## A227162.P8467131878664280325

`A227165(A167614(n+1))+A061858(n)`
-/

namespace A227162.P8467131878664280325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A167614 (n + 1)).toNat + A061858 n

end

end A227162.P8467131878664280325

/-!
# A227163: Number of nX4 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X5 binary array having a sum of one or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227163, there is no canonical definition to state claims against.
-/

/-! ## A227163.P8227158814481726949

`A227165(A141214(n)+7)`
-/

namespace A227163.P8227158814481726949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A141214 n + 7).toNat

end

end A227163.P8227158814481726949

/-! ## A227163.P6757451836434778489

`A227165(A052905(n)+9)`
-/

namespace A227163.P6757451836434778489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A052905 n + 9).toNat

end

end A227163.P6757451836434778489

/-! ## A227163.P5260054765583342693

`A227165(A055999(n)+10)`
-/

namespace A227163.P5260054765583342693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (A055999 n + 10).toNat

end

end A227163.P5260054765583342693

/-! ## A227163.P12744472440069789900

`A227165(eq[5, A066657(n)])`
-/

namespace A227163.P12744472440069789900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227163.P12744472440069789900

/-! ## A227163.P348804279047056379

`A227165(Δ[A062748(n)]+4)`
-/

namespace A227163.P348804279047056379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (f1 (n + 1) - f1 n + 4).toNat

end

end A227163.P348804279047056379

/-!
# A227164: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having a sum of one or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227164, there is no canonical definition to state claims against.
-/

/-! ## A227164.P9297288189972105117

`A227165(∑[n+4]+11)`
-/

namespace A227164.P9297288189972105117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227165 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A227164.P9297288189972105117

/-!
# A227165: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having a sum of one or less, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227165, there is no canonical definition to state claims against.
-/

/-! ## A227165.P12807609555527482637

`A206495(A381888(n))`
-/

namespace A227165.P12807609555527482637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206495 (A381888 n).toNat

end

end A227165.P12807609555527482637

/-! ## A227165.P17068892084992493537

`A051882(A123934(n+1))`
-/

namespace A227165.P17068892084992493537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051882 (A123934 (n + 1)).toNat

end

end A227165.P17068892084992493537

/-! ## A227165.P8773127673573786889

`A057810(A203330(n+1))`
-/

namespace A227165.P8773127673573786889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057810 (A203330 (n + 1)).toNat

end

end A227165.P8773127673573786889

/-! ## A227165.P4583197783471789311

`A380573(A156353(n+1))`
-/

namespace A227165.P4583197783471789311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A156353 (n + 1)).toNat

end

end A227165.P4583197783471789311

/-! ## A227165.P6725137917040175337

`A299703(A239849(n+1))`
-/

namespace A227165.P6725137917040175337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299703 (A239849 (n + 1)).toNat

end

end A227165.P6725137917040175337

/-!
# A227166: Areas of indecomposable non-Pythagorean primitive integer Heronian triangles, sorted increasingly.

The programs for A227166, there is no canonical definition to state claims against.
-/

/-! ## A227166.P7268172887500840395

`A261991(2*A070528(n+1))`
-/

namespace A227166.P7268172887500840395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261991 (2 * A070528 (n + 1)).toNat

end

end A227166.P7268172887500840395

/-!
# A227167: The number of meandering curves of order n.

The programs for A227167, there is no canonical definition to state claims against.
-/

/-! ## A227167.P11401656094234395297

`(floor(n/(n%2+1))+1)*A000682(n+1)`
-/

namespace A227167.P11401656094234395297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1) * A000682 (n + 1)

end

end A227167.P11401656094234395297

/-! ## A227167.P6531088171430558696

`A000136(n+1)/A000034(n)`
-/

namespace A227167.P6531088171430558696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A227167.P6531088171430558696

/-! ## A227167.P4791526353953169168

`A000136(n+1)/sqrt(A010685(n))`
-/

namespace A227167.P4791526353953169168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 1) : ℝ) / Real.sqrt (A010685 n : ℝ)

end

end A227167.P4791526353953169168

/-! ## A227167.P11591684297078519395

`A000136(n+1)/(A000035(n)+1)`
-/

namespace A227167.P11591684297078519395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A227167.P11591684297078519395

/-! ## A227167.P3157528964887529863

`A000136(n+1)/A020639(A266303(n))`
-/

namespace A227167.P3157528964887529863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (n + 1) : ℚ) / (A020639 (A266303 n).toNat : ℚ)

end

end A227167.P3157528964887529863

/-!
# A227168: a(n) = gcd(2*n, n*(n+1)/2)^2.

The programs for A227168, the canonical program `A227168.P16341637054509734106` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227168 has offset 1).

The definition of A227168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227168.P16341637054509734106

`A062828(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227168

/-- `A062828(n+1)²` -/
def P16341637054509734106.Spec : Prop :=
  ∀ n, P16341637054509734106.a n = A227168 (n + 1)

theorem P16341637054509734106.correct : P16341637054509734106.Spec := by
  intro n
  simp only [A227168, Nat.add_sub_cancel]

end A227168

/-! ## A227168.P4510870134761804257

`gcd(C(n², 2), ∑[1-n])²`
-/

namespace A227168.P4510870134761804257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n ^ 2) 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A227168.P4510870134761804257

namespace A227168

/-- `gcd(C(n², 2), ∑[1-n])²` -/
def P4510870134761804257.Spec : Prop :=
  ∀ n, (P4510870134761804257.a n : ℤ) = A227168 (n + 1)

end A227168

/-! ## A227168.P10934164212918935544

`gcd(∑[n+1], ∑[n+3])²`
-/

namespace A227168.P10934164212918935544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A227168.P10934164212918935544

namespace A227168

/-- `gcd(∑[n+1], ∑[n+3])²` -/
def P10934164212918935544.Spec : Prop :=
  ∀ n, (P10934164212918935544.a n : ℤ) = A227168 (n + 1)

end A227168

/-! ## A227168.P16852520667433765961

`((n+1)/2*gcd(4, n+2))²`
-/

namespace A227168.P16852520667433765961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2 * (Nat.gcd 4 (n + 2) : ℚ)) ^ 2

end

end A227168.P16852520667433765961

namespace A227168

/-- `((n+1)/2*gcd(4, n+2))²` -/
def P16852520667433765961.Spec : Prop :=
  ∀ n, P16852520667433765961.a n = (A227168 (n + 1) : ℚ)

end A227168

/-! ## A227168.P17291225724631031649

`(lcm(4, n+1)/4*and(2, n)!)²`
-/

namespace A227168.P17291225724631031649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℚ) / 4 * (Nat.factorial (Nat.land 2 n) : ℚ)) ^ 2

end

end A227168.P17291225724631031649

namespace A227168

/-- `(lcm(4, n+1)/4*and(2, n)!)²` -/
def P17291225724631031649.Spec : Prop :=
  ∀ n, P17291225724631031649.a n = (A227168 (n + 1) : ℚ)

end A227168

/-! ## A227168.P12398126494095236764

`gcd(A099762(n), A126274(n))`
-/

namespace A227168.P12398126494095236764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099762 n) (A126274 n)

end

end A227168.P12398126494095236764

namespace A227168

/-- `gcd(A099762(n), A126274(n))` -/
def P12398126494095236764.Spec : Prop :=
  ∀ n, (P12398126494095236764.a n : ℤ) = A227168 (n + 1)

end A227168

/-! ## A227168.P9010204790276352937

`(A257942(n)/A176743(n))²`
-/

namespace A227168.P9010204790276352937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A257942 n : ℚ) / (A176743 n : ℚ)) ^ 2

end

end A227168.P9010204790276352937

namespace A227168

/-- `(A257942(n)/A176743(n))²` -/
def P9010204790276352937.Spec : Prop :=
  ∀ n, P9010204790276352937.a n = (A227168 (n + 1) : ℚ)

end A227168

/-! ## A227168.P15503356396742112867

`lcm(A030640(n), A130658(n))²`
-/

namespace A227168.P15503356396742112867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030640 n) (A130658 n) ^ 2

end

end A227168.P15503356396742112867

namespace A227168

/-- `lcm(A030640(n), A130658(n))²` -/
def P15503356396742112867.Spec : Prop :=
  ∀ n, (P15503356396742112867.a n : ℤ) = A227168 (n + 1)

end A227168

/-! ## A227168.P10609972733315676315

`(A060819(n+1)*A130658(n))²`
-/

namespace A227168.P10609972733315676315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060819 (n + 1) * A130658 n) ^ 2

end

end A227168.P10609972733315676315

namespace A227168

/-- `(A060819(n+1)*A130658(n))²` -/
def P10609972733315676315.Spec : Prop :=
  ∀ n, P10609972733315676315.a n = A227168 (n + 1)

end A227168

/-! ## A227168.P1731112703820709516

`(A051724(n+1)*A306764(n))²`
-/

namespace A227168.P1731112703820709516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051724 (n + 1) * A306764 n) ^ 2

end

end A227168.P1731112703820709516

namespace A227168

/-- `(A051724(n+1)*A306764(n))²` -/
def P1731112703820709516.Spec : Prop :=
  ∀ n, P1731112703820709516.a n = A227168 (n + 1)

end A227168

/-! ## A227168.P8151712869947059360

`gcd(A184635(n+1), A208138(n+1))`
-/

namespace A227168.P8151712869947059360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184635 (n + 1)) (A208138 (n + 1))

end

end A227168.P8151712869947059360

namespace A227168

/-- `gcd(A184635(n+1), A208138(n+1))` -/
def P8151712869947059360.Spec : Prop :=
  ∀ n, (P8151712869947059360.a n : ℤ) = A227168 (n + 1)

end A227168

/-! ## A227168.P4863027428230044789

`(A060819(n+1)*A176895(A052928(n)))²`
-/

namespace A227168.P4863027428230044789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060819 (n + 1) * A176895 (A052928 n).toNat) ^ 2

end

end A227168.P4863027428230044789

namespace A227168

/-- `(A060819(n+1)*A176895(A052928(n)))²` -/
def P4863027428230044789.Spec : Prop :=
  ∀ n, P4863027428230044789.a n = A227168 (n + 1)

end A227168

/-! ## A227168.P8910677501267619818

`(∑[n+1]/A060819(n+2))²`
-/

namespace A227168.P8910677501267619818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A060819 (n + 2) : ℚ)) ^ 2

end

end A227168.P8910677501267619818

namespace A227168

/-- `(∑[n+1]/A060819(n+2))²` -/
def P8910677501267619818.Spec : Prop :=
  ∀ n, P8910677501267619818.a n = (A227168 (n + 1) : ℚ)

end A227168

/-! ## A227168.P13651427298195131117

`∑[n+1]²/A181318(n+2)`
-/

namespace A227168.P13651427298195131117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (A181318 (n + 2) : ℚ)

end

end A227168.P13651427298195131117

namespace A227168

/-- `∑[n+1]²/A181318(n+2)` -/
def P13651427298195131117.Spec : Prop :=
  ∀ n, P13651427298195131117.a n = (A227168 (n + 1) : ℚ)

end A227168

/-! ## A227168.P10616098941588746083

`(A026741(n+1)*A177704(n+1))²`
-/

namespace A227168.P10616098941588746083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) * A177704 (n + 1)) ^ 2

end

end A227168.P10616098941588746083

namespace A227168

/-- `(A026741(n+1)*A177704(n+1))²` -/
def P10616098941588746083.Spec : Prop :=
  ∀ n, P10616098941588746083.a n = A227168 (n + 1)

end A227168

/-! ## A227168.P18040404446960135618

`(2*(n+1)/A176895(n+2))²`
-/

namespace A227168.P18040404446960135618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 1 : ℚ) / (A176895 (n + 2) : ℚ))) ^ 2

end

end A227168.P18040404446960135618

namespace A227168

/-- `(2*(n+1)/A176895(n+2))²` -/
def P18040404446960135618.Spec : Prop :=
  ∀ n, P18040404446960135618.a n = (A227168 (n + 1) : ℚ)

end A227168

/-! ## A227168.P12767072933357221409

`(2*(n+1))²/A177499(n+2)`
-/

namespace A227168.P12767072933357221409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℚ) / (A177499 (n + 2) : ℚ)

end

end A227168.P12767072933357221409

namespace A227168

/-- `(2*(n+1))²/A177499(n+2)` -/
def P12767072933357221409.Spec : Prop :=
  ∀ n, P12767072933357221409.a n = (A227168 (n + 1) : ℚ)

end A227168

/-! ## A227168.P14282844387799893768

`(A014695(n+3)*A060819(n+1))²`
-/

namespace A227168.P14282844387799893768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014695 (n + 3) * A060819 (n + 1)) ^ 2

end

end A227168.P14282844387799893768

namespace A227168

/-- `(A014695(n+3)*A060819(n+1))²` -/
def P14282844387799893768.Spec : Prop :=
  ∀ n, P14282844387799893768.a n = A227168 (n + 1)

end A227168

/-! ## A227168.P8733735762039965757

`A014695(n+3)²*A181318(n+1)`
-/

namespace A227168.P8733735762039965757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (n + 3) ^ 2 * A181318 (n + 1)

end

end A227168.P8733735762039965757

namespace A227168

/-- `A014695(n+3)²*A181318(n+1)` -/
def P8733735762039965757.Spec : Prop :=
  ∀ n, P8733735762039965757.a n = A227168 (n + 1)

end A227168

/-! ## A227168.P8991322208360894302

`A062828(n+1)+A002378(A062828(n+1)-1)`
-/

namespace A227168.P8991322208360894302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1) + A002378 (A062828 (n + 1) - 1).toNat

end

end A227168.P8991322208360894302

namespace A227168

/-- `A062828(n+1)+A002378(A062828(n+1)-1)` -/
def P8991322208360894302.Spec : Prop :=
  ∀ n, P8991322208360894302.a n = A227168 (n + 1)

end A227168

/-!
# A227169: a(n) = 3*((2*n+2)!)^2 / (n!*(n+1)!*(n+2)!*(n+3)!).

The programs for A227169, the canonical program `A227169.P12999617952910354842` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227169 has offset 0).

The definition of A227169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227169.P17985786651610039256

`3*A145600(n+1)/(n+3)`
-/

namespace A227169.P17985786651610039256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A145600 (n + 1) : ℚ) / (n + 3 : ℚ)

end

end A227169.P17985786651610039256

namespace A227169

/-- `3*A145600(n+1)/(n+3)` -/
def P17985786651610039256.Spec : Prop :=
  ∀ n, P17985786651610039256.a n = (A227169 n : ℚ)

end A227169

/-! ## A227169.P12999617952910354842

`3*A135389(n)/((n+2)*(n+3))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227169

/-- `3*A135389(n)/((n+2)*(n+3))` -/
def P12999617952910354842.Spec : Prop :=
  ∀ n, P12999617952910354842.a n = (A227169 n : ℚ)

end A227169

/-! ## A227169.P3261656264540774754

`3*(2*n+2)!²/(n!*(n+1)!*(n+2)!*(n+3)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A227169.P3261656264540774754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.factorial (2 * n + 2) ^ 2 : ℚ) / (Nat.factorial n * Nat.factorial (n + 1) * Nat.factorial (n + 2) * Nat.factorial (n + 3) : ℚ)

end

end A227169.P3261656264540774754

namespace A227169

/-- `3*(2*n+2)!²/(n!*(n+1)!*(n+2)!*(n+3)!)` -/
def P3261656264540774754.Spec : Prop :=
  ∀ n, P3261656264540774754.a n = (A227169 n : ℚ)

end A227169

/-! ## A227169.P15424247949831972740

`(n+1)*A186264(n)`
-/

namespace A227169.P15424247949831972740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186264 n

end

end A227169.P15424247949831972740

namespace A227169

/-- `(n+1)*A186264(n)` -/
def P15424247949831972740.Spec : Prop :=
  ∀ n, P15424247949831972740.a n = A227169 n

end A227169

/-! ## A227169.P7548477005439298813

`(2*n+1)*A186262(n)`
-/

namespace A227169.P7548477005439298813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A186262 n

end

end A227169.P7548477005439298813

namespace A227169

/-- `(2*n+1)*A186262(n)` -/
def P7548477005439298813.Spec : Prop :=
  ∀ n, P7548477005439298813.a n = A227169 n

end A227169

/-! ## A227169.P581074054705665123

`lcm(A186262(n), A186264(n))`
-/

namespace A227169.P581074054705665123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186262 n) (A186264 n)

end

end A227169.P581074054705665123

namespace A227169

/-- `lcm(A186262(n), A186264(n))` -/
def P581074054705665123.Spec : Prop :=
  ∀ n, (P581074054705665123.a n : ℤ) = A227169 n

end A227169

/-! ## A227169.P8861730232859662855

`∑[A016813(n)]*A005700(n)`
-/

namespace A227169.P8861730232859662855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005700 n

end

end A227169.P8861730232859662855

namespace A227169

/-- `∑[A016813(n)]*A005700(n)` -/
def P8861730232859662855.Spec : Prop :=
  ∀ n, P8861730232859662855.a n = A227169 n

end A227169

/-! ## A227169.P3703684072344867238

`ratio[A000108(n)]*A186266(n)`
-/

namespace A227169.P3703684072344867238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A186266 n : ℚ)

end

end A227169.P3703684072344867238

namespace A227169

/-- `ratio[A000108(n)]*A186266(n)` -/
def P3703684072344867238.Spec : Prop :=
  ∀ n, P3703684072344867238.a n = (A227169 n : ℚ)

end A227169

/-! ## A227169.P13245617005362880373

`∑[A026012(n)]*∑[A071724(n)]`
-/

namespace A227169.P13245617005362880373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A227169.P13245617005362880373

namespace A227169

/-- `∑[A026012(n)]*∑[A071724(n)]` -/
def P13245617005362880373.Spec : Prop :=
  ∀ n, P13245617005362880373.a n = A227169 n

end A227169

/-! ## A227169.P10335102977764240785

`∑[A026012(n)]*A000108(n+1)`
-/

namespace A227169.P10335102977764240785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 (n + 1)

end

end A227169.P10335102977764240785

namespace A227169

/-- `∑[A026012(n)]*A000108(n+1)` -/
def P10335102977764240785.Spec : Prop :=
  ∀ n, P10335102977764240785.a n = A227169 n

end A227169

/-!
# A227176: E.g.f.: LambertW(LambertW(-x)) / LambertW(-x).

The programs for A227176, there is no canonical definition to state claims against.
-/

/-! ## A227176.P18150937967558733248

`A274391(∑[n+3])`
-/

namespace A227176.P18150937967558733248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227176.P18150937967558733248

/-! ## A227176.P3058583353543751635

`∏{e}[A122391(n+3), A274391(A141214(#))]`
-/

namespace A227176.P3058583353543751635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A274391 (A141214 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A227176.P3058583353543751635

/-! ## A227176.P10215294733409159874

`A274741(∑[n+2]+3)`
-/

namespace A227176.P10215294733409159874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A227176.P10215294733409159874

/-!
# A227177: n occurs n^2 - n + 1 times.

The programs for A227177, the canonical program `A227177.P15413206856521023278` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227177 has offset 0).

The definition of A227177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227177.P15413206856521023278

`∑[char[∑[(1-n)²+n]]]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227177

/-- `∑[char[∑[(1-n)²+n]]]` -/
def P15413206856521023278.Spec : Prop :=
  ∀ n, (P15413206856521023278.a n : ℤ) = A227177 n

theorem P15413206856521023278.correct : P15413206856521023278.Spec := by
  intro n
  simp only [A227177]

end A227177

/-! ## A227177.P16064410204007515572

`∑[char[2*C(n, 3)+n]]-1`
-/

namespace A227177.P16064410204007515572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 3 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A227177.P16064410204007515572

namespace A227177

/-- `∑[char[2*C(n, 3)+n]]-1` -/
def P16064410204007515572.Spec : Prop :=
  ∀ n, P16064410204007515572.a n = A227177 n

end A227177

/-! ## A227177.P5133902600931312072

`comp[∑[2*(C(n, 2)+1)]-1]-n`
-/

namespace A227177.P5133902600931312072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose n 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A227177.P5133902600931312072

namespace A227177

/-- `comp[∑[2*(C(n, 2)+1)]-1]-n` -/
def P5133902600931312072.Spec : Prop :=
  ∀ n, P5133902600931312072.a n = A227177 n

end A227177

/-! ## A227177.P8191202513412200939

`∑[char[A007290(n)+n]]-1`
-/

namespace A227177.P8191202513412200939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A227177.P8191202513412200939

namespace A227177

/-- `∑[char[A007290(n)+n]]-1` -/
def P8191202513412200939.Spec : Prop :=
  ∀ n, P8191202513412200939.a n = A227177 n

end A227177

/-! ## A227177.P15342047306378789320

`comp[∑[A002061(n)]+n]-n`
-/

namespace A227177.P15342047306378789320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A227177.P15342047306378789320

namespace A227177

/-- `comp[∑[A002061(n)]+n]-n` -/
def P15342047306378789320.Spec : Prop :=
  ∀ n, P15342047306378789320.a n = A227177 n

end A227177

/-! ## A227177.P13946757117175338988

`comp[∑[A087156(n²+1)-n+1]]-n`
-/

namespace A227177.P13946757117175338988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n ^ 2 + 1) - (n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A227177.P13946757117175338988

namespace A227177

/-- `comp[∑[A087156(n²+1)-n+1]]-n` -/
def P13946757117175338988.Spec : Prop :=
  ∀ n, P13946757117175338988.a n = A227177 n

end A227177

/-! ## A227177.P4906450253502107031

`A227181(n-A227179(n))`
-/

namespace A227177.P4906450253502107031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 ((n : ℤ) - A227179 n).toNat

end

end A227177.P4906450253502107031

namespace A227177

/-- `A227181(n-A227179(n))` -/
def P4906450253502107031.Spec : Prop :=
  ∀ n, P4906450253502107031.a n = A227177 n

end A227177

/-! ## A227177.P10716678919260270157

`A227179(A227181(n)+A227182(n)+1)`
-/

namespace A227177.P10716678919260270157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227179 (A227181 n + (A227182 n + 1)).toNat

end

end A227177.P10716678919260270157

namespace A227177

/-- `A227179(A227181(n)+A227182(n)+1)` -/
def P10716678919260270157.Spec : Prop :=
  ∀ n, P10716678919260270157.a n = A227177 n

end A227177

/-! ## A227177.P14794562090888219138

`A227181(A227182(n)+A227181(n))/2`
-/

namespace A227177.P14794562090888219138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227181 (A227182 n + A227181 n).toNat : ℚ) / 2

end

end A227177.P14794562090888219138

namespace A227177

/-- `A227181(A227182(n)+A227181(n))/2` -/
def P14794562090888219138.Spec : Prop :=
  ∀ n, P14794562090888219138.a n = (A227177 n : ℚ)

end A227177

/-! ## A227177.P1353590320389438029

`A382397(A076946(n+1))`
-/

namespace A227177.P1353590320389438029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A076946 (n + 1)).toNat

end

end A227177.P1353590320389438029

namespace A227177

/-- `A382397(A076946(n+1))` -/
def P1353590320389438029.Spec : Prop :=
  ∀ n, P1353590320389438029.a n = A227177 n

end A227177

/-!
# A227178: Numbers k such that p = k^2 + 1 is prime, as are p-6 and p+6.

The programs for A227178, there is no canonical definition to state claims against.
-/

/-! ## A227178.P1636853683680804997

`A054409(A216144(n+1))+2`
-/

namespace A227178.P1636853683680804997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054409 (A216144 (n + 1)).toNat + 2

end

end A227178.P1636853683680804997

/-! ## A227178.P17498574590387256310

`A321679(A333217(n+1))+A001359(n+1)`
-/

namespace A227178.P17498574590387256310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321679 (A333217 (n + 1)).toNat + A001359 (n + 1)

end

end A227178.P17498574590387256310

/-!
# A227179: After initial 0, integers from 0 to n(n-1) followed by integers from 0 to n(n+1) and so on.

The programs for A227179, the canonical program `A227179.P15689747325054342099` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227179 has offset 0).

The definition of A227179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227179.P15689747325054342099

`A227181(n)-A227177(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227179

/-- `A227181(n)-A227177(n)` -/
def P15689747325054342099.Spec : Prop :=
  ∀ n, P15689747325054342099.a n = A227179 n

theorem P15689747325054342099.correct : P15689747325054342099.Spec := by
  intro n
  simp only [A227179]

end A227179

/-! ## A227179.P7161359909605294909

`A227181(n)-∑[char[A116731(n+1)]]`
-/

namespace A227179.P7161359909605294909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227179.P7161359909605294909

namespace A227179

/-- `A227181(n)-∑[char[A116731(n+1)]]` -/
def P7161359909605294909.Spec : Prop :=
  ∀ n, P7161359909605294909.a n = A227179 n

end A227179

/-! ## A227179.P860044854953031833

`A227181(n)-(∑[char[A007290(n)+n]]-1)`
-/

namespace A227179.P860044854953031833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A227179.P860044854953031833

namespace A227179

/-- `A227181(n)-(∑[char[A007290(n)+n]]-1)` -/
def P860044854953031833.Spec : Prop :=
  ∀ n, P860044854953031833.a n = A227179 n

end A227179

/-! ## A227179.P17535389317164654524

`A006527(A227177(n))-A227182(n)`
-/

namespace A227179.P17535389317164654524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (A227177 n).toNat - A227182 n

end

end A227179.P17535389317164654524

namespace A227179

/-- `A006527(A227177(n))-A227182(n)` -/
def P17535389317164654524.Spec : Prop :=
  ∀ n, P17535389317164654524.a n = A227179 n

end A227179

/-! ## A227179.P16231354379073586146

`A227181(n)-A227181(A227182(n)+A227181(n))/2`
-/

namespace A227179.P16231354379073586146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227181 n : ℚ) - (A227181 (A227182 n + A227181 n).toNat : ℚ) / 2

end

end A227179.P16231354379073586146

namespace A227179

/-- `A227181(n)-A227181(A227182(n)+A227181(n))/2` -/
def P16231354379073586146.Spec : Prop :=
  ∀ n, P16231354379073586146.a n = (A227179 n : ℚ)

end A227179

/-! ## A227179.P13823096204691137751

`A227181(n)-A276611(A353024(n+1))`
-/

namespace A227179.P13823096204691137751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 n - A276611 (A353024 (n + 1)).toNat

end

end A227179.P13823096204691137751

namespace A227179

/-- `A227181(n)-A276611(A353024(n+1))` -/
def P13823096204691137751.Spec : Prop :=
  ∀ n, P13823096204691137751.a n = A227179 n

end A227179

/-!
# A227180: Composite numbers n such that b^(n-1) == 1 (mod n) implies b == -1 or +1 (mod n).

The programs for A227180, there is no canonical definition to state claims against.
-/

/-! ## A227180.P15972230959387183417

`A280196(n+4)`
-/

namespace A227180.P15972230959387183417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280196 (n + 4)

end

end A227180.P15972230959387183417

/-! ## A227180.P2679347982027187198

`record[xor(1, A242742(n+1))]`
-/

namespace A227180.P2679347982027187198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A242742 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227180.P2679347982027187198

/-! ## A227180.P3423747404383024084

`record[xor(1, A105222(n+4))]`
-/

namespace A227180.P3423747404383024084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A105222 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227180.P3423747404383024084

/-! ## A227180.P3587619962101329150

`record[round(sqrt(A256517(n+1)))]`
-/

namespace A227180.P3587619962101329150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A256517 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227180.P3587619962101329150

/-! ## A227180.P13905546315902193100

`record[round(sqrt(A185103(n+4)))]`
-/

namespace A227180.P13905546315902193100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A185103 (n + 4) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227180.P13905546315902193100

/-! ## A227180.P17850938231512255399

`record[A004442(A242742(n+1))]`
-/

namespace A227180.P17850938231512255399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A242742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227180.P17850938231512255399

/-! ## A227180.P18383713775665569294

`eq[1, A003056(A063994(n+4))]+4`
-/

namespace A227180.P18383713775665569294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A063994 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A227180.P18383713775665569294

/-! ## A227180.P16020406669326627568

`record[round(A256517(n+1)/A002808(n+1))]`
-/

namespace A227180.P16020406669326627568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A256517 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227180.P16020406669326627568

/-!
# A227181: Irregular table: integers from n to n^2 followed by integers from (n+1) to (n+1)^2.

The programs for A227181, the canonical program `A227181.P11061588089310331075` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227181 has offset 0).

The definition of A227181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227181.P15644494844549163922

`A227177(n)+A227179(n)`
-/

namespace A227181.P15644494844549163922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 n + A227179 n

end

end A227181.P15644494844549163922

namespace A227181

/-- `A227177(n)+A227179(n)` -/
def P15644494844549163922.Spec : Prop :=
  ∀ n, P15644494844549163922.a n = A227181 n

end A227181

/-! ## A227181.P11061588089310331075

`n-A007290(∑[char[∑[(1-n)²+n]]])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227181

/-- `n-A007290(∑[char[∑[(1-n)²+n]]])` -/
def P11061588089310331075.Spec : Prop :=
  ∀ n, P11061588089310331075.a n = A227181 n

theorem P11061588089310331075.correct : P11061588089310331075.Spec := by
  intro n
  simp only [A227181]

end A227181

/-! ## A227181.P9735074637442991044

`A227179(n)+∑[char[A116731(n+1)]]`
-/

namespace A227181.P9735074637442991044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227179 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227181.P9735074637442991044

namespace A227181

/-- `A227179(n)+∑[char[A116731(n+1)]]` -/
def P9735074637442991044.Spec : Prop :=
  ∀ n, P9735074637442991044.a n = A227181 n

end A227181

/-! ## A227181.P18241126493973045444

`A227179(n)+∑[char[A007290(n)+n]]-1`
-/

namespace A227181.P18241126493973045444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227179 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A227181.P18241126493973045444

namespace A227181

/-- `A227179(n)+∑[char[A007290(n)+n]]-1` -/
def P18241126493973045444.Spec : Prop :=
  ∀ n, P18241126493973045444.a n = A227181 n

end A227181

/-! ## A227181.P8103130436831894430

`A227177(n)²-A227179(A227182(n))`
-/

namespace A227181.P8103130436831894430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 n ^ 2 - A227179 (A227182 n).toNat

end

end A227181.P8103130436831894430

namespace A227181

/-- `A227177(n)²-A227179(A227182(n))` -/
def P8103130436831894430.Spec : Prop :=
  ∀ n, P8103130436831894430.a n = A227181 n

end A227181

/-! ## A227181.P4579633708411689310

`A008683(A002148(n))*A007290(A227177(n))+n`
-/

namespace A227181.P4579633708411689310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat * A007290 (A227177 n).toNat + (n : ℤ)

end

end A227181.P4579633708411689310

namespace A227181

/-- `A008683(A002148(n))*A007290(A227177(n))+n` -/
def P4579633708411689310.Spec : Prop :=
  ∀ n, P4579633708411689310.a n = A227181 n

end A227181

/-! ## A227181.P16457995143072120785

`A276611(A353024(n+1))+A227179(n)`
-/

namespace A227181.P16457995143072120785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A353024 (n + 1)).toNat + A227179 n

end

end A227181.P16457995143072120785

namespace A227181

/-- `A276611(A353024(n+1))+A227179(n)` -/
def P16457995143072120785.Spec : Prop :=
  ∀ n, P16457995143072120785.a n = A227181 n

end A227181

/-!
# A227182: Simple self-inverse permutation of natural numbers: List each block of n^2 - n + 1 numbers from ((n-1)^3 + 2*(n-1))/3 + 1 to (n^3 + 2*n)/3 in reverse order.

The programs for A227182, the canonical program `A227182.P3655183784156601540` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227182 has offset 0).

The definition of A227182 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227177, A227179, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227182.P3655183784156601540

`A006527(A227177(n))-A227179(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227182

/-- `A006527(A227177(n))-A227179(n)` -/
def P3655183784156601540.Spec : Prop :=
  ∀ n, P3655183784156601540.a n = A227182 n

theorem P3655183784156601540.correct : P3655183784156601540.Spec := by
  intro n
  simp only [A227182]

end A227182

/-! ## A227182.P1210961159385674652

`A227177(n)+A006527(A227177(n))-A227181(n)`
-/

namespace A227182.P1210961159385674652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 n + (A006527 (A227177 n).toNat - A227181 n)

end

end A227182.P1210961159385674652

namespace A227182

/-- `A227177(n)+A006527(A227177(n))-A227181(n)` -/
def P1210961159385674652.Spec : Prop :=
  ∀ n, P1210961159385674652.a n = A227182 n

end A227182

/-!
# A227183: a(n) is the sum of parts of the unique unordered partition encoded in the run lengths of the binary expansion of n; row sums of A227739 for n >= 1.

The programs for A227183, the canonical program `A227183.P15762183493579328757` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227183 has offset 0).

The definition of A227183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227183.P15762183493579328757

`A161511(A003188(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227183

/-- `A161511(A003188(n))` -/
def P15762183493579328757.Spec : Prop :=
  ∀ n, P15762183493579328757.a n = A227183 n

theorem P15762183493579328757.correct : P15762183493579328757.Spec := by
  intro n
  simp only [A227183]

end A227183

/-! ## A227183.P4104440341291576368

`A243503(1+A075157(n))`
-/

namespace A227183.P4104440341291576368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (1 + A075157 n).toNat

end

end A227183.P4104440341291576368

namespace A227183

/-- `A243503(1+A075157(n))` -/
def P4104440341291576368.Spec : Prop :=
  ∀ n, P4104440341291576368.a n = A227183 n

end A227183

/-! ## A227183.P4596826996012751157

`A056239(A243353(n))`
-/

namespace A227183.P4596826996012751157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A243353 n).toNat

end

end A227183.P4596826996012751157

namespace A227183

/-- `A056239(A243353(n))` -/
def P4596826996012751157.Spec : Prop :=
  ∀ n, P4596826996012751157.a n = A227183 n

end A227183

/-! ## A227183.P4432229305014693501

`A161511(xor(n, floor(n/2)))`
-/

namespace A227183.P4432229305014693501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A227183.P4432229305014693501

namespace A227183

/-- `A161511(xor(n, floor(n/2)))` -/
def P4432229305014693501.Spec : Prop :=
  ∀ n, P4432229305014693501.a n = A227183 n

end A227183

/-! ## A227183.P15399346849908947651

`A161511(A286548(n)+n)`
-/

namespace A227183.P15399346849908947651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A286548 n + (n : ℤ)).toNat

end

end A227183.P15399346849908947651

namespace A227183

/-- `A161511(A286548(n)+n)` -/
def P15399346849908947651.Spec : Prop :=
  ∀ n, P15399346849908947651.a n = A227183 n

end A227183

/-! ## A227183.P2390149563627161787

`A302039(A286555(n))`
-/

namespace A227183.P2390149563627161787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A286555 n).toNat

end

end A227183.P2390149563627161787

namespace A227183

/-- `A302039(A286555(n))` -/
def P2390149563627161787.Spec : Prop :=
  ∀ n, P2390149563627161787.a n = A227183 n

end A227183

/-! ## A227183.P6184090687592043921

`A055941(2*A003188(n))`
-/

namespace A227183.P6184090687592043921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * A003188 n).toNat

end

end A227183.P6184090687592043921

namespace A227183

/-- `A055941(2*A003188(n))` -/
def P6184090687592043921.Spec : Prop :=
  ∀ n, P6184090687592043921.a n = A227183 n

end A227183

/-! ## A227183.P17601537253016618169

`A055941(xor(n, A014601(n)))`
-/

namespace A227183.P17601537253016618169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (Int.xor (n : ℤ) (A014601 n)).toNat

end

end A227183.P17601537253016618169

namespace A227183

/-- `A055941(xor(n, A014601(n)))` -/
def P17601537253016618169.Spec : Prop :=
  ∀ n, P17601537253016618169.a n = A227183 n

end A227183

/-! ## A227183.P12980020123134967297

`A055941(A048724(n)-A000035(n))`
-/

namespace A227183.P12980020123134967297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A048724 n - A000035 n).toNat

end

end A227183.P12980020123134967297

namespace A227183

/-- `A055941(A048724(n)-A000035(n))` -/
def P12980020123134967297.Spec : Prop :=
  ∀ n, P12980020123134967297.a n = A227183 n

end A227183

/-! ## A227183.P3549983841478914296

`A055941(A048724(2*n+1)+A048724(2*n))`
-/

namespace A227183.P3549983841478914296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A048724 (2 * n + 1) + A048724 (2 * n)).toNat

end

end A227183.P3549983841478914296

namespace A227183

/-- `A055941(A048724(2*n+1)+A048724(2*n))` -/
def P3549983841478914296.Spec : Prop :=
  ∀ n, P3549983841478914296.a n = A227183 n

end A227183

/-! ## A227183.P433756264399560487

`A243503(A075159(n+1))`
-/

namespace A227183.P433756264399560487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A075159 (n + 1)).toNat

end

end A227183.P433756264399560487

namespace A227183

/-- `A243503(A075159(n+1))` -/
def P433756264399560487.Spec : Prop :=
  ∀ n, P433756264399560487.a n = A227183 n

end A227183

/-!
# A227184: a(n) = product of parts of the unordered partition encoded with the runlengths of binary expansion of n.

The programs for A227184, the canonical program `A227184.P3484603111831403944` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227184 has offset 0).

The definition of A227184 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243499, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227184.P3484603111831403944

`A243499(A003188(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227184

/-- `A243499(A003188(n))` -/
def P3484603111831403944.Spec : Prop :=
  ∀ n, P3484603111831403944.a n = A227184 n

theorem P3484603111831403944.correct : P3484603111831403944.Spec := by
  intro n
  simp only [A227184]

end A227184

/-! ## A227184.P17263246545144702989

`A003963(A243353(n))`
-/

namespace A227184.P17263246545144702989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A243353 n).toNat

end

end A227184.P17263246545144702989

namespace A227184

/-- `A003963(A243353(n))` -/
def P17263246545144702989.Spec : Prop :=
  ∀ n, P17263246545144702989.a n = A227184 n

end A227184

/-! ## A227184.P5162181146967961660

`A243504(1+A075157(n))`
-/

namespace A227184.P5162181146967961660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243504 (1 + A075157 n).toNat

end

end A227184.P5162181146967961660

namespace A227184

/-- `A243504(1+A075157(n))` -/
def P5162181146967961660.Spec : Prop :=
  ∀ n, P5162181146967961660.a n = A227184 n

end A227184

/-! ## A227184.P11364281678864656632

`A341392(A281499(n))`
-/

namespace A227184.P11364281678864656632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A281499 n).toNat

end

end A227184.P11364281678864656632

namespace A227184

/-- `A341392(A281499(n))` -/
def P11364281678864656632.Spec : Prop :=
  ∀ n, P11364281678864656632.a n = A227184 n

end A227184

/-! ## A227184.P12728060673450750095

`a(A035327(n))*A227185(n)` with `a(0)=1`
-/

namespace A227184.P12728060673450750095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A035327 n).toNat * A227185 n

end

end A227184.P12728060673450750095

namespace A227184

/-- `a(A035327(n))*A227185(n)` -/
def P12728060673450750095.Spec : Prop :=
  ∀ n, P12728060673450750095.a n = A227184 n

end A227184

/-! ## A227184.P3248448228519682201

`A243499(xor(n, floor(n/2)))`
-/

namespace A227184.P3248448228519682201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A227184.P3248448228519682201

namespace A227184

/-- `A243499(xor(n, floor(n/2)))` -/
def P3248448228519682201.Spec : Prop :=
  ∀ n, P3248448228519682201.a n = A227184 n

end A227184

/-! ## A227184.P12157692633267001218

`A243499(A286548(n)+n)`
-/

namespace A227184.P12157692633267001218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A286548 n + (n : ℤ)).toNat

end

end A227184.P12157692633267001218

namespace A227184

/-- `A243499(A286548(n)+n)` -/
def P12157692633267001218.Spec : Prop :=
  ∀ n, P12157692633267001218.a n = A227184 n

end A227184

/-! ## A227184.P9182765124453799161

`A243499(A105081(n+1)-1)`
-/

namespace A227184.P9182765124453799161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A105081 (n + 1) - 1).toNat

end

end A227184.P9182765124453799161

namespace A227184

/-- `A243499(A105081(n+1)-1)` -/
def P9182765124453799161.Spec : Prop :=
  ∀ n, P9182765124453799161.a n = A227184 n

end A227184

/-! ## A227184.P1771499782148954553

`A243499(A048724(n)/(A059841(n)+1))`
-/

namespace A227184.P1771499782148954553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (SequenceMachineLib.roundAway ((A048724 n : ℚ) / (A059841 n + 1 : ℚ))).toNat

end

end A227184.P1771499782148954553

namespace A227184

/-- `A243499(A048724(n)/(A059841(n)+1))` -/
def P1771499782148954553.Spec : Prop :=
  ∀ n, P1771499782148954553.a n = A227184 n

end A227184

/-! ## A227184.P5803432390845094266

`A243499(or(1, A048724(n)))`
-/

namespace A227184.P5803432390845094266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (Int.lor 1 (A048724 n)).toNat

end

end A227184.P5803432390845094266

namespace A227184

/-- `A243499(or(1, A048724(n)))` -/
def P5803432390845094266.Spec : Prop :=
  ∀ n, P5803432390845094266.a n = A227184 n

end A227184

/-! ## A227184.P9357583857665842131

`A243499(A059841(n)+A048724(n))`
-/

namespace A227184.P9357583857665842131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A059841 n + A048724 n).toNat

end

end A227184.P9357583857665842131

namespace A227184

/-- `A243499(A059841(n)+A048724(n))` -/
def P9357583857665842131.Spec : Prop :=
  ∀ n, P9357583857665842131.a n = A227184 n

end A227184

/-! ## A227184.P554837511985860719

`A243499(A268820((n+1)*2*n))`
-/

namespace A227184.P554837511985860719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A268820 ((n + 1) * (2 * n))).toNat

end

end A227184.P554837511985860719

namespace A227184

/-- `A243499(A268820((n+1)*2*n))` -/
def P554837511985860719.Spec : Prop :=
  ∀ n, P554837511985860719.a n = A227184 n

end A227184

/-! ## A227184.P3938803375806000844

`A243504(A075159(n+1))`
-/

namespace A227184.P3938803375806000844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243504 (A075159 (n + 1)).toNat

end

end A227184.P3938803375806000844

namespace A227184

/-- `A243504(A075159(n+1))` -/
def P3938803375806000844.Spec : Prop :=
  ∀ n, P3938803375806000844.a n = A227184 n

end A227184

/-!
# A227185: The largest part in the unordered partition encoded in the runlengths of the binary expansion of n.

The programs for A227185, the canonical program `A227185.P8894517369224633042` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227185 has offset 0).

The definition of A227185 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129594, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227185.P8894517369224633042

`A005811(A129594(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A227185

/-- `A005811(A129594(n))` -/
def P8894517369224633042.Spec : Prop :=
  ∀ n, P8894517369224633042.a n = A227185 n

theorem P8894517369224633042.correct : P8894517369224633042.Spec := by
  intro n
  simp only [A227185]

end A227185

/-! ## A227185.P14270600014927484776

`val(A322827(n), 2)`
-/

namespace A227185.P14270600014927484776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322827 n).toNat 2

end

end A227185.P14270600014927484776

namespace A227185

/-- `val(A322827(n), 2)` -/
def P14270600014927484776.Spec : Prop :=
  ∀ n, (P14270600014927484776.a n : ℤ) = A227185 n

end A227185

/-! ## A227185.P4093611371334982053

`a(floor(n/2))+A021913(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A227185.P4093611371334982053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + A021913 (n - 1)

end

end A227185.P4093611371334982053

namespace A227185

/-- `a(floor(n/2))+A021913(n-1)` -/
def P4093611371334982053.Spec : Prop :=
  ∀ n, P4093611371334982053.a n = A227185 n

end A227185

/-! ## A227185.P5754531915547938405

`A290251(A003188(n))`
-/

namespace A227185.P5754531915547938405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A003188 n).toNat

end

end A227185.P5754531915547938405

namespace A227185

/-- `A290251(A003188(n))` -/
def P5754531915547938405.Spec : Prop :=
  ∀ n, P5754531915547938405.a n = A227185 n

end A227185

/-! ## A227185.P10707876307221835871

`A290251(A341915(n))`
-/

namespace A227185.P10707876307221835871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A341915 n).toNat

end

end A227185.P10707876307221835871

namespace A227185

/-- `A290251(A341915(n))` -/
def P10707876307221835871.Spec : Prop :=
  ∀ n, P10707876307221835871.a n = A227185 n

end A227185

/-! ## A227185.P6069242269958966859

`A092339(n)+A057427(n)`
-/

namespace A227185.P6069242269958966859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n + A057427 n

end

end A227185.P6069242269958966859

namespace A227185

/-- `A092339(n)+A057427(n)` -/
def P6069242269958966859.Spec : Prop :=
  ∀ n, P6069242269958966859.a n = A227185 n

end A227185

/-! ## A227185.P7843542847472990080

`A092339(n)-A057428(n)`
-/

namespace A227185.P7843542847472990080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n - A057428 n

end

end A227185.P7843542847472990080

namespace A227185

/-- `A092339(n)-A057428(n)` -/
def P7843542847472990080.Spec : Prop :=
  ∀ n, P7843542847472990080.a n = A227185 n

end A227185

/-! ## A227185.P9365739386935259969

`A033265(2*n+1)-A037800(n)`
-/

namespace A227185.P9365739386935259969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (2 * n + 1) - A037800 n

end

end A227185.P9365739386935259969

namespace A227185

/-- `A033265(2*n+1)-A037800(n)` -/
def P9365739386935259969.Spec : Prop :=
  ∀ n, P9365739386935259969.a n = A227185 n

end A227185

/-! ## A227185.P9202696815725912373

`∑{e}[A278217(n), #]`
-/

namespace A227185.P9202696815725912373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227185.P9202696815725912373

namespace A227185

/-- `∑{e}[A278217(n), #]` -/
def P9202696815725912373.Spec : Prop :=
  ∀ n, (P9202696815725912373.a n : ℤ) = A227185 n

end A227185

/-! ## A227185.P15103892355806254169

`A000120(A180201(n))`
-/

namespace A227185.P15103892355806254169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A180201 n).toNat

end

end A227185.P15103892355806254169

namespace A227185

/-- `A000120(A180201(n))` -/
def P15103892355806254169.Spec : Prop :=
  ∀ n, P15103892355806254169.a n = A227185 n

end A227185

/-! ## A227185.P13686367142571745193

`A274009(A281499(n))`
-/

namespace A227185.P13686367142571745193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A281499 n).toNat

end

end A227185.P13686367142571745193

namespace A227185

/-- `A274009(A281499(n))` -/
def P13686367142571745193.Spec : Prop :=
  ∀ n, P13686367142571745193.a n = A227185 n

end A227185

/-! ## A227185.P15907160960613666483

`A290251(A341910(n))`
-/

namespace A227185.P15907160960613666483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A341910 n).toNat

end

end A227185.P15907160960613666483

namespace A227185

/-- `A290251(A341910(n))` -/
def P15907160960613666483.Spec : Prop :=
  ∀ n, P15907160960613666483.a n = A227185 n

end A227185

/-! ## A227185.P6325795903851178410

`A256478(A233276(A233280(A233277(A233276(n)))))`
-/

namespace A227185.P6325795903851178410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A233276 (A233280 (A233277 (A233276 n).toNat).toNat).toNat).toNat

end

end A227185.P6325795903851178410

namespace A227185

/-- `A256478(A233276(A233280(A233277(A233276(n)))))` -/
def P6325795903851178410.Spec : Prop :=
  ∀ n, P6325795903851178410.a n = A227185 n

end A227185

/-! ## A227185.P7917750638688564299

`A256478(A233276(A233280(A233275(A233278(n)))))`
-/

namespace A227185.P7917750638688564299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A233276 (A233280 (A233275 (A233278 n).toNat).toNat).toNat).toNat

end

end A227185.P7917750638688564299

namespace A227185

/-- `A256478(A233276(A233280(A233275(A233278(n)))))` -/
def P7917750638688564299.Spec : Prop :=
  ∀ n, P7917750638688564299.a n = A227185 n

end A227185

/-! ## A227185.P7406011767854781251

`A092339(A014601(n))`
-/

namespace A227185.P7406011767854781251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A014601 n).toNat

end

end A227185.P7406011767854781251

namespace A227185

/-- `A092339(A014601(n))` -/
def P7406011767854781251.Spec : Prop :=
  ∀ n, P7406011767854781251.a n = A227185 n

end A227185

/-! ## A227185.P16192305559492452310

`A092339(A047557(n+1))`
-/

namespace A227185.P16192305559492452310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A047557 (n + 1)).toNat

end

end A227185.P16192305559492452310

namespace A227185

/-- `A092339(A047557(n+1))` -/
def P16192305559492452310.Spec : Prop :=
  ∀ n, P16192305559492452310.a n = A227185 n

end A227185

/-! ## A227185.P9052884998662704206

`A070941(2*n)-A088748(n)`
-/

namespace A227185.P9052884998662704206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (2 * n) - A088748 n

end

end A227185.P9052884998662704206

namespace A227185

/-- `A070941(2*n)-A088748(n)` -/
def P9052884998662704206.Spec : Prop :=
  ∀ n, P9052884998662704206.a n = A227185 n

end A227185

/-! ## A227185.P16741142455190846959

`A029837(2*n+1)-A005811(n)`
-/

namespace A227185.P16741142455190846959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (2 * n + 1) - A005811 n

end

end A227185.P16741142455190846959

namespace A227185

/-- `A029837(2*n+1)-A005811(n)` -/
def P16741142455190846959.Spec : Prop :=
  ∀ n, P16741142455190846959.a n = A227185 n

end A227185

/-! ## A227185.P14036709526269802578

`A037809(2*n+1)-A037800(n)`
-/

namespace A227185.P14036709526269802578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (2 * n + 1) - A037800 n

end

end A227185.P14036709526269802578

namespace A227185

/-- `A037809(2*n+1)-A037800(n)` -/
def P14036709526269802578.Spec : Prop :=
  ∀ n, P14036709526269802578.a n = A227185 n

end A227185

/-!
# A227186: Array A(n,k) read by antidiagonals: the length of the (k+1)-th run (k>=0) of binary digits of n, first run starting from the least significant bit of n.

The programs for A227186, the canonical program `A227186.P1221522202037710042` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227186 has offset 0).

The definition of A227186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227186.P1221522202037710042

`val(A163755(A002262(n)), A104887(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A227186

/-- `val(A163755(A002262(n)), A104887(n+1))` -/
def P1221522202037710042.Spec : Prop :=
  ∀ n, (P1221522202037710042.a n : ℤ) = A227186 n

theorem P1221522202037710042.correct : P1221522202037710042.Spec := by
  intro n
  simp only [A227186]

end A227186

/-! ## A227186.P18086867794844737970

`ceil(A227189(n)/A126760(A095185(n+1)))`
-/

namespace A227186.P18086867794844737970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A227189 n : ℚ) / (A126760 (A095185 (n + 1)).toNat : ℚ)⌉

end

end A227186.P18086867794844737970

namespace A227186

/-- `ceil(A227189(n)/A126760(A095185(n+1)))` -/
def P18086867794844737970.Spec : Prop :=
  ∀ n, P18086867794844737970.a n = A227186 n

end A227186

/-! ## A227186.P9796950743092172405

`A227189(n)/A299807(A299807(n+1))`
-/

namespace A227186.P9796950743092172405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227189 n : ℚ) / (A299807 (A299807 (n + 1)).toNat : ℚ)

end

end A227186.P9796950743092172405

namespace A227186

/-- `A227189(n)/A299807(A299807(n+1))` -/
def P9796950743092172405.Spec : Prop :=
  ∀ n, P9796950743092172405.a n = (A227186 n : ℚ)

end A227186

/-! ## A227186.P16274548141638198995

`A227189(n)/A007318(A106566(n))`
-/

namespace A227186.P16274548141638198995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227189 n : ℚ) / (A007318 (A106566 n).toNat : ℚ)

end

end A227186.P16274548141638198995

namespace A227186

/-- `A227189(n)/A007318(A106566(n))` -/
def P16274548141638198995.Spec : Prop :=
  ∀ n, P16274548141638198995.a n = (A227186 n : ℚ)

end A227186

/-! ## A227186.P15499209520731965478

`gcd(A227188(n)*A264614(n+1), A227189(n))`
-/

namespace A227186.P15499209520731965478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227188 n * A264614 (n + 1)) (A227189 n)

end

end A227186.P15499209520731965478

namespace A227186

/-- `gcd(A227188(n)*A264614(n+1), A227189(n))` -/
def P15499209520731965478.Spec : Prop :=
  ∀ n, (P15499209520731965478.a n : ℤ) = A227186 n

end A227186

/-! ## A227186.P7245998820217898507

`A227189(n)/A062378(A098446(n))`
-/

namespace A227186.P7245998820217898507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227189 n : ℚ) / (A062378 (A098446 n).toNat : ℚ)

end

end A227186.P7245998820217898507

namespace A227186

/-- `A227189(n)/A062378(A098446(n))` -/
def P7245998820217898507.Spec : Prop :=
  ∀ n, P7245998820217898507.a n = (A227186 n : ℚ)

end A227186

/-! ## A227186.P5153382925371444312

`lcm(A128592(n), A227189(n))/A128592(n)`
-/

namespace A227186.P5153382925371444312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A128592 n) (A227189 n) : ℚ) / (A128592 n : ℚ)

end

end A227186.P5153382925371444312

namespace A227186

/-- `lcm(A128592(n), A227189(n))/A128592(n)` -/
def P5153382925371444312.Spec : Prop :=
  ∀ n, P5153382925371444312.a n = (A227186 n : ℚ)

end A227186

/-! ## A227186.P3345302610893644443

`A227189(n)/A077481(A254761(n+1))`
-/

namespace A227186.P3345302610893644443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227189 n : ℚ) / (A077481 (A254761 (n + 1)).toNat : ℚ)

end

end A227186.P3345302610893644443

namespace A227186

/-- `A227189(n)/A077481(A254761(n+1))` -/
def P3345302610893644443.Spec : Prop :=
  ∀ n, P3345302610893644443.a n = (A227186 n : ℚ)

end A227186

/-!
# A227187: Numbers n whose factorial base representation A007623(n) contains at least one nonleading zero. (Zero is also included as a(0)).

The programs for A227187, there is no canonical definition to state claims against.
-/

/-! ## A227187.P14622181696740052544

`comp[A227157(n+1)]`
-/

namespace A227187.P14622181696740052544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227187.P14622181696740052544

/-! ## A227187.P10106428865398415531

`lt[A060129(n), log2(A275725(n))]`
-/

namespace A227187.P10106428865398415531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A275725 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A227187.P10106428865398415531

/-! ## A227187.P4407262605569631243

`eq[0, A208575(n)]`
-/

namespace A227187.P4407262605569631243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227187.P4407262605569631243

/-! ## A227187.P9481620273025955816

`record[1-A208575(n+1)+n]`
-/

namespace A227187.P9481620273025955816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A208575 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P9481620273025955816

/-! ## A227187.P17930012832473165788

`record[n-A168324(A208575(n)+1)]`
-/

namespace A227187.P17930012832473165788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168324 (A208575 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P17930012832473165788

/-! ## A227187.P13491983355628243558

`record[(n+1)%(A304036(n+1)+n)]`
-/

namespace A227187.P13491983355628243558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A304036 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P13491983355628243558

/-! ## A227187.P11342355034732246648

`record[n-A053735(n)*A208575(n)]`
-/

namespace A227187.P11342355034732246648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053735 n * A208575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P11342355034732246648

/-! ## A227187.P17229741046831837800

`record[n-∏{digits}[A007623(n), #]]`
-/

namespace A227187.P17229741046831837800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P17229741046831837800

/-! ## A227187.P13185146157093337593

`lt[2, A304036(n)+A010194(n)]`
-/

namespace A227187.P13185146157093337593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n + A010194 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227187.P13185146157093337593

/-! ## A227187.P12868573302830837802

`lt[2, A304036(n)+A010195(n)]`
-/

namespace A227187.P12868573302830837802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n + A010195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227187.P12868573302830837802

/-! ## A227187.P18246332175481797864

`lt[2, A304036(n)+A040155(n)]`
-/

namespace A227187.P18246332175481797864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 n + A040155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227187.P18246332175481797864

/-! ## A227187.P16218711640670028695

`eq[1, A231715(A093178(n))+A000035(n)]`
-/

namespace A227187.P16218711640670028695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231715 (A093178 n).toNat + A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227187.P16218711640670028695

/-! ## A227187.P14834222173462418595

`eq[2, A020639(A351988(n)+2)]`
-/

namespace A227187.P14834222173462418595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A351988 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227187.P14834222173462418595

/-! ## A227187.P6535990484660779758

`record[A026741(2*n)-A208575(n)]`
-/

namespace A227187.P6535990484660779758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * n) - A208575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P6535990484660779758

/-! ## A227187.P11478338241198995270

`record[n-A208575(A026741(n+n))]`
-/

namespace A227187.P11478338241198995270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A208575 (A026741 (n + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P11478338241198995270

/-! ## A227187.P17427946454814147433

`record[n-A026741(A208575(n)²)]`
-/

namespace A227187.P17427946454814147433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 (A208575 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P17427946454814147433

/-! ## A227187.P4055880239670806766

`record[n-A053735(A208575(n)²)]`
-/

namespace A227187.P4055880239670806766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053735 (A208575 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227187.P4055880239670806766

/-!
# A227188: Square array A(n,k) read by antidiagonals: the one-based bit-index where the (k+1)-st run in the binary expansion of n ends, as read from the least significant end.

The programs for A227188, there is no canonical definition to state claims against.
-/

/-! ## A227188.P13480080683358974884

`A243503(A104887(n+1)^A227189(n))`
-/

namespace A227188.P13480080683358974884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (SequenceMachineLib.roundAway ((A104887 (n + 1) : ℚ) ^ (A227189 n : ℤ))).toNat

end

end A227188.P13480080683358974884

/-! ## A227188.P4192689233321046433

`A025581(A002262(A000217(n)-A227189(n)))`
-/

namespace A227188.P4192689233321046433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A002262 (A000217 n - A227189 n).toNat).toNat

end

end A227188.P4192689233321046433

/-! ## A227188.P12158830917892692430

`A003056(A227189(n)*A227925(n))`
-/

namespace A227188.P12158830917892692430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A227189 n * A227925 n).toNat

end

end A227188.P12158830917892692430

/-! ## A227188.P4841996704191379613

`A227186(n)*A344961(A104559(n))`
-/

namespace A227188.P4841996704191379613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227186 n * A344961 (A104559 n).toNat

end

end A227188.P4841996704191379613

/-! ## A227188.P11496284198773513532

`A227186(n)*A241299(A008277(n+1))`
-/

namespace A227188.P11496284198773513532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227186 n * A241299 (A008277 (n + 1)).toNat

end

end A227188.P11496284198773513532

/-!
# A227189: Square array A(n>=0,k>=0) where A(n,k) gives the (k+1)-th part of the unordered partition which has been encoded in the binary expansion of n, as explained in A227183. The array is scanned antidiagonally as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), etc.

The programs for A227189, there is no canonical definition to state claims against.
-/

/-! ## A227189.P3242223504949266953

`A136480(A322403(n))*A227186(n)`
-/

namespace A227189.P3242223504949266953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A322403 n).toNat * A227186 n

end

end A227189.P3242223504949266953

/-! ## A227189.P4894340139029564498

`A225641(A055378(n))*A227186(n)`
-/

namespace A227189.P4894340139029564498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (A055378 n).toNat * A227186 n

end

end A227189.P4894340139029564498

/-! ## A227189.P15414598224013906603

`A136480(A004248(n))*A227186(n)`
-/

namespace A227189.P15414598224013906603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A004248 n).toNat * A227186 n

end

end A227189.P15414598224013906603

/-! ## A227189.P5189021626880538721

`A007318(A106566(n))*A227186(n)`
-/

namespace A227189.P5189021626880538721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A106566 n).toNat * A227186 n

end

end A227189.P5189021626880538721

/-! ## A227189.P4799361445422882377

`A227186(n)*A248601(A248601(n+1))`
-/

namespace A227189.P4799361445422882377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227186 n * A248601 (A248601 (n + 1)).toNat

end

end A227189.P4799361445422882377

/-! ## A227189.P3105175477698095708

`A077481(A254761(n+1))*A227186(n)`
-/

namespace A227189.P3105175477698095708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077481 (A254761 (n + 1)).toNat * A227186 n

end

end A227189.P3105175477698095708

/-!
# A227190: a(n) = n minus (product of run lengths in binary representation of n).

The programs for A227190, the canonical program `A227190.P2803063268480571177` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227190 has offset 1).

The definition of A227190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227190.P2803063268480571177

`1-A167489(n+1)+n`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A227190

/-- `1-A167489(n+1)+n` -/
def P2803063268480571177.Spec : Prop :=
  ∀ n, P2803063268480571177.a n = A227190 (n + 1)

theorem P2803063268480571177.correct : P2803063268480571177.Spec := by
  intro n
  simp only [A227190, Nat.add_sub_cancel]

end A227190

/-! ## A227190.P292336078884786723

`∑[1-Δ[A167489(n)]]-1`
-/

namespace A227190.P292336078884786723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A227190.P292336078884786723

namespace A227190

/-- `∑[1-Δ[A167489(n)]]-1` -/
def P292336078884786723.Spec : Prop :=
  ∀ n, P292336078884786723.a n = A227190 (n + 1)

end A227190

/-! ## A227190.P17427293245900560160

`n+1-A227349(n+1)*A227350(n+1)`
-/

namespace A227190.P17427293245900560160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A227349 (n + 1) * A227350 (n + 1)

end

end A227190.P17427293245900560160

namespace A227190

/-- `n+1-A227349(n+1)*A227350(n+1)` -/
def P17427293245900560160.Spec : Prop :=
  ∀ n, P17427293245900560160.a n = A227190 (n + 1)

end A227190

/-! ## A227190.P6753262882921096796

`n+1-A284582(n+1)*A284583(n+1)`
-/

namespace A227190.P6753262882921096796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A284582 (n + 1) * A284583 (n + 1)

end

end A227190.P6753262882921096796

namespace A227190

/-- `n+1-A284582(n+1)*A284583(n+1)` -/
def P6753262882921096796.Spec : Prop :=
  ∀ n, P6753262882921096796.a n = A227190 (n + 1)

end A227190

/-! ## A227190.P306702233679846230

`1-A000005(A286468(n+1))+n`
-/

namespace A227190.P306702233679846230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (A286468 (n + 1)).toNat + (n : ℤ)

end

end A227190.P306702233679846230

namespace A227190

/-- `1-A000005(A286468(n+1))+n` -/
def P306702233679846230.Spec : Prop :=
  ∀ n, P306702233679846230.a n = A227190 (n + 1)

end A227190

/-!
# A227191: a(n) = n minus (product of nonzero digits in factorial base representation of n).

The programs for A227191, the canonical program `A227191.P10726689018283546420` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227191 has offset 1).

The definition of A227191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227191.P10726689018283546420

`Δ[∑[n]-∑[A227153(n)]]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A227191

/-- `Δ[∑[n]-∑[A227153(n)]]` -/
def P10726689018283546420.Spec : Prop :=
  ∀ n, P10726689018283546420.a n = A227191 (n + 1)

theorem P10726689018283546420.correct : P10726689018283546420.Spec := by
  intro n
  simp only [A227191, Nat.add_sub_cancel]

end A227191

/-! ## A227191.P9329151213396166310

`1-A227153(n+1)+n`
-/

namespace A227191.P9329151213396166310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A227153 (n + 1) + (n : ℤ)

end

end A227191.P9329151213396166310

namespace A227191

/-- `1-A227153(n+1)+n` -/
def P9329151213396166310.Spec : Prop :=
  ∀ n, P9329151213396166310.a n = A227191 (n + 1)

end A227191

/-! ## A227191.P5139982219452434457

`Δ[n²]-n-A227153(Δ[n²]-n)`
-/

namespace A227191.P5139982219452434457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A227153 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A227191.P5139982219452434457

namespace A227191

/-- `Δ[n²]-n-A227153(Δ[n²]-n)` -/
def P5139982219452434457.Spec : Prop :=
  ∀ n, P5139982219452434457.a n = A227191 (n + 1)

end A227191

/-! ## A227191.P18191032649568305827

`-A227153(n+1)%A158403(n+1)+n+1`
-/

namespace A227191.P18191032649568305827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A227153 (n + 1)) (A158403 (n + 1)) + (n + 1 : ℤ)

end

end A227191.P18191032649568305827

namespace A227191

/-- `-A227153(n+1)%A158403(n+1)+n+1` -/
def P18191032649568305827.Spec : Prop :=
  ∀ n, P18191032649568305827.a n = A227191 (n + 1)

end A227191

/-! ## A227191.P17484381353128001667

`1-(A227153(A008619(2*n))-n)`
-/

namespace A227191.P17484381353128001667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A227153 (A008619 (2 * n)).toNat - (n : ℤ))

end

end A227191.P17484381353128001667

namespace A227191

/-- `1-(A227153(A008619(2*n))-n)` -/
def P17484381353128001667.Spec : Prop :=
  ∀ n, P17484381353128001667.a n = A227191 (n + 1)

end A227191

/-! ## A227191.P2020306835271493660

`n+1-A051801(A007623(n+1))`
-/

namespace A227191.P2020306835271493660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051801 (A007623 (n + 1)).toNat

end

end A227191.P2020306835271493660

namespace A227191

/-- `n+1-A051801(A007623(n+1))` -/
def P2020306835271493660.Spec : Prop :=
  ∀ n, P2020306835271493660.a n = A227191 (n + 1)

end A227191

/-! ## A227191.P4930664834298972244

`(A156552(A005940(n+1))*A227153(n+1))%(n+1)`
-/

namespace A227191.P4930664834298972244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (A005940 (n + 1)).toNat * A227153 (n + 1)) (n + 1 : ℤ)

end

end A227191.P4930664834298972244

namespace A227191

/-- `(A156552(A005940(n+1))*A227153(n+1))%(n+1)` -/
def P4930664834298972244.Spec : Prop :=
  ∀ n, P4930664834298972244.a n = A227191 (n + 1)

end A227191

/-! ## A227191.P12660001898521008959

`n+1-A295879(A276076(n+1))`
-/

namespace A227191.P12660001898521008959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A295879 (A276076 (n + 1)).toNat

end

end A227191.P12660001898521008959

namespace A227191

/-- `n+1-A295879(A276076(n+1))` -/
def P12660001898521008959.Spec : Prop :=
  ∀ n, P12660001898521008959.a n = A227191 (n + 1)

end A227191

/-!
# A227192: Sum of the partial sums of the run lengths of binary expansion of n, when starting scanning from the least significant end; Row sums of A227188 and A227738.

The programs for A227192, the canonical program `A227192.P4510299005117886323` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227192 has offset 1).

The definition of A227192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227192.P4510299005117886323

`∑[(val(n+1, 2)+1)*Δ[xor(n, 2*n)]%2]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227192

/-- `∑[(val(n+1, 2)+1)*Δ[xor(n, 2*n)]%2]` -/
def P4510299005117886323.Spec : Prop :=
  ∀ n, P4510299005117886323.a n = A227192 (n + 1)

theorem P4510299005117886323.correct : P4510299005117886323.Spec := by
  intro n
  simp only [A227192, Nat.add_sub_cancel]

end A227192

/-! ## A227192.P11402913956459219494

`∑[A164677(n+1)]`
-/

namespace A227192.P11402913956459219494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227192.P11402913956459219494

namespace A227192

/-- `∑[A164677(n+1)]` -/
def P11402913956459219494.Spec : Prop :=
  ∀ n, P11402913956459219494.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P11903696217312684808

`∑[Δ[xor(n, 2*n)]%2*A001511(n+1)]`
-/

namespace A227192.P11903696217312684808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2 * A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227192.P11903696217312684808

namespace A227192

/-- `∑[Δ[xor(n, 2*n)]%2*A001511(n+1)]` -/
def P11903696217312684808.Spec : Prop :=
  ∀ n, P11903696217312684808.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P10488946020497526813

`∑[A001511(n+1)*A034947(n+1)]`
-/

namespace A227192.P10488946020497526813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227192.P10488946020497526813

namespace A227192

/-- `∑[A001511(n+1)*A034947(n+1)]` -/
def P10488946020497526813.Spec : Prop :=
  ∀ n, P10488946020497526813.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P7557617161272068330

`∑[(A007814(n+1)+1)*A034947(n+1)]`
-/

namespace A227192.P7557617161272068330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227192.P7557617161272068330

namespace A227192

/-- `∑[(A007814(n+1)+1)*A034947(n+1)]` -/
def P7557617161272068330.Spec : Prop :=
  ∀ n, P7557617161272068330.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P14830876815190914763

`∑[A089309(2*n+1)*A134824(A089309(n+1))]`
-/

namespace A227192.P14830876815190914763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (2 * n + 1) * A134824 (A089309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227192.P14830876815190914763

namespace A227192

/-- `∑[A089309(2*n+1)*A134824(A089309(n+1))]` -/
def P14830876815190914763.Spec : Prop :=
  ∀ n, P14830876815190914763.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P15863379981208077208

`A378784(n+2)-1`
-/

namespace A227192.P15863379981208077208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378784 (n + 2) - 1

end

end A227192.P15863379981208077208

namespace A227192

/-- `A378784(n+2)-1` -/
def P15863379981208077208.Spec : Prop :=
  ∀ n, P15863379981208077208.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P18317821447688847583

`A029931(A003188(n+1))`
-/

namespace A227192.P18317821447688847583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A003188 (n + 1)).toNat

end

end A227192.P18317821447688847583

namespace A227192

/-- `A029931(A003188(n+1))` -/
def P18317821447688847583.Spec : Prop :=
  ∀ n, P18317821447688847583.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P9443681217405335432

`A359042(A341915(n+1))`
-/

namespace A227192.P9443681217405335432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 (A341915 (n + 1)).toNat

end

end A227192.P9443681217405335432

namespace A227192

/-- `A359042(A341915(n+1))` -/
def P9443681217405335432.Spec : Prop :=
  ∀ n, P9443681217405335432.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P13459932385013170283

`A073642(A048724(n+1))`
-/

namespace A227192.P13459932385013170283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A048724 (n + 1)).toNat

end

end A227192.P13459932385013170283

namespace A227192

/-- `A073642(A048724(n+1))` -/
def P13459932385013170283.Spec : Prop :=
  ∀ n, P13459932385013170283.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P6572625646085881505

`A073642(A065621(n+2))`
-/

namespace A227192.P6572625646085881505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A065621 (n + 2)).toNat

end

end A227192.P6572625646085881505

namespace A227192

/-- `A073642(A065621(n+2))` -/
def P6572625646085881505.Spec : Prop :=
  ∀ n, P6572625646085881505.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P11666849238120493976

`A266475(A243353(n+1))`
-/

namespace A227192.P11666849238120493976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266475 (A243353 (n + 1)).toNat

end

end A227192.P11666849238120493976

namespace A227192

/-- `A266475(A243353(n+1))` -/
def P11666849238120493976.Spec : Prop :=
  ∀ n, P11666849238120493976.a n = A227192 (n + 1)

end A227192

/-! ## A227192.P9591290691552746143

`A227183(A320038(n+1))`
-/

namespace A227192.P9591290691552746143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A320038 (n + 1)).toNat

end

end A227192.P9591290691552746143

namespace A227192

/-- `A227183(A320038(n+1))` -/
def P9591290691552746143.Spec : Prop :=
  ∀ n, P9591290691552746143.a n = A227192 (n + 1)

end A227192

/-!
# A227193: Difference of (product of runlengths of 1-bits) and (product of runlengths of 0-bits) in binary representation of n.

The programs for A227193, the canonical program `A227193.P11723890042645240906` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227193 has offset 0).

The definition of A227193 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A227350, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227193.P11723890042645240906

`A227349(n)-A227350(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A227193

/-- `A227349(n)-A227350(n)` -/
def P11723890042645240906.Spec : Prop :=
  ∀ n, P11723890042645240906.a n = A227193 n

theorem P11723890042645240906.correct : P11723890042645240906.Spec := by
  intro n
  simp only [A227193]

end A227193

/-! ## A227193.P96578374293889490

`A227349(n)-A227349(A035327(n))`
-/

namespace A227193.P96578374293889490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n - A227349 (A035327 n).toNat

end

end A227193.P96578374293889490

namespace A227193

/-- `A227349(n)-A227349(A035327(n))` -/
def P96578374293889490.Spec : Prop :=
  ∀ n, P96578374293889490.a n = A227193 n

end A227193

/-! ## A227193.P4788879488279295633

`A227349(n)-A227349(A080079(n+1))`
-/

namespace A227193.P4788879488279295633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n - A227349 (A080079 (n + 1)).toNat

end

end A227193.P4788879488279295633

namespace A227193

/-- `A227349(n)-A227349(A080079(n+1))` -/
def P4788879488279295633.Spec : Prop :=
  ∀ n, P4788879488279295633.a n = A227193 n

end A227193

/-! ## A227193.P7184672927072070103

`A167489(n)/A227350(n)-A227350(n)`
-/

namespace A227193.P7184672927072070103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A227350 n : ℚ) - (A227350 n : ℚ)

end

end A227193.P7184672927072070103

namespace A227193

/-- `A167489(n)/A227350(n)-A227350(n)` -/
def P7184672927072070103.Spec : Prop :=
  ∀ n, P7184672927072070103.a n = (A227193 n : ℚ)

end A227193

/-! ## A227193.P12106859770842208036

`A227349(n)-A167489(n)/A227349(n)`
-/

namespace A227193.P12106859770842208036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n : ℚ) - (A167489 n : ℚ) / (A227349 n : ℚ)

end

end A227193.P12106859770842208036

namespace A227193

/-- `A227349(n)-A167489(n)/A227349(n)` -/
def P12106859770842208036.Spec : Prop :=
  ∀ n, P12106859770842208036.a n = (A227193 n : ℚ)

end A227193

/-! ## A227193.P1442345101758511553

`A227349(n)-A227349(A036044(n))`
-/

namespace A227193.P1442345101758511553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n - A227349 (A036044 n).toNat

end

end A227193.P1442345101758511553

namespace A227193

/-- `A227349(n)-A227349(A036044(n))` -/
def P1442345101758511553.Spec : Prop :=
  ∀ n, P1442345101758511553.a n = A227193 n

end A227193

/-! ## A227193.P2183640018578142755

`A227350(A010078(n+1))-A227350(n)`
-/

namespace A227193.P2183640018578142755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A010078 (n + 1)).toNat - A227350 n

end

end A227193.P2183640018578142755

namespace A227193

/-- `A227350(A010078(n+1))-A227350(n)` -/
def P2183640018578142755.Spec : Prop :=
  ∀ n, P2183640018578142755.a n = A227193 n

end A227193

/-! ## A227193.P4253709938015644485

`A227349(n)-A227349(A010078(n+1))`
-/

namespace A227193.P4253709938015644485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n - A227349 (A010078 (n + 1)).toNat

end

end A227193.P4253709938015644485

namespace A227193

/-- `A227349(n)-A227349(A010078(n+1))` -/
def P4253709938015644485.Spec : Prop :=
  ∀ n, P4253709938015644485.a n = A227193 n

end A227193

/-! ## A227193.P7176360451771476615

`A227349(n)-A227349(A335587(n))`
-/

namespace A227193.P7176360451771476615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n - A227349 (A335587 n).toNat

end

end A227193.P7176360451771476615

namespace A227193

/-- `A227349(n)-A227349(A335587(n))` -/
def P7176360451771476615.Spec : Prop :=
  ∀ n, P7176360451771476615.a n = A227193 n

end A227193

/-! ## A227193.P11495199268347577355

`A227349(n)-A227349(A290254(n+1))/A227349(n)`
-/

namespace A227193.P11495199268347577355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 n : ℚ) - (A227349 (A290254 (n + 1)).toNat : ℚ) / (A227349 n : ℚ)

end

end A227193.P11495199268347577355

namespace A227193

/-- `A227349(n)-A227349(A290254(n+1))/A227349(n)` -/
def P11495199268347577355.Spec : Prop :=
  ∀ n, P11495199268347577355.a n = (A227193 n : ℚ)

end A227193

/-!
# A227195: a(n) = one less than the first i >= 1 for which the Kronecker symbol K(i,n) is either 0 or -1. Or the maximal value u such that all K(1,n), K(2,n), ... up to K(u,n) have +1 as their values.

The programs for A227195, there is no canonical definition to state claims against.
-/

/-! ## A227195.P8857089824537634305

`A227196(n+2)-1`
-/

namespace A227195.P8857089824537634305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 2) - 1

end

end A227195.P8857089824537634305

/-! ## A227195.P9249128103881034236

`A000010(A227196(n+2))`
-/

namespace A227195.P9249128103881034236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A227196 (n + 2)).toNat

end

end A227195.P9249128103881034236

/-! ## A227195.P6876396469124066099

`A016035(A227196(n+2)²)`
-/

namespace A227195.P6876396469124066099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A227196 (n + 2) ^ 2).toNat

end

end A227195.P6876396469124066099

/-! ## A227195.P17489281910053891116

`A057237(A227196(n+2)²)`
-/

namespace A227195.P17489281910053891116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A227196 (n + 2) ^ 2).toNat

end

end A227195.P17489281910053891116

/-! ## A227195.P1240808551734589403

`A251758(A227196(n+2)²)`
-/

namespace A227195.P1240808551734589403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251758 (A227196 (n + 2) ^ 2).toNat

end

end A227195.P1240808551734589403

/-! ## A227195.P5247448880942893076

`A033879(p?[A227196(n+1)])`
-/

namespace A227195.P5247448880942893076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227195.P5247448880942893076

/-! ## A227195.P2456194803952768532

`A057237(p?[A227196(n+1)])`
-/

namespace A227195.P2456194803952768532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227195.P2456194803952768532

/-! ## A227195.P18123230750123901303

`-A024000(p?[A227196(n+1)])`
-/

namespace A227195.P18123230750123901303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227195.P18123230750123901303

/-! ## A227195.P1296635305706125516

`A016035(A227196(n+2)*A227196(n+2))`
-/

namespace A227195.P1296635305706125516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A227196 (n + 2) * A227196 (n + 2)).toNat

end

end A227195.P1296635305706125516

/-! ## A227195.P7376143878495780157

`A057237(A057237(2*(n+1))*A227196(n+2))`
-/

namespace A227195.P7376143878495780157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A057237 (2 * (n + 1)) * A227196 (n + 2)).toNat

end

end A227195.P7376143878495780157

/-! ## A227195.P10036646136844308995

`A057237(A057237(n+2))*A057237(A227196(n+2))`
-/

namespace A227195.P10036646136844308995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A057237 (n + 2)).toNat * A057237 (A227196 (n + 2)).toNat

end

end A227195.P10036646136844308995

/-! ## A227195.P17869655424161058787

`A251758((n+2)*A227196(n+2))`
-/

namespace A227195.P17869655424161058787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251758 ((n + 2 : ℤ) * A227196 (n + 2)).toNat

end

end A227195.P17869655424161058787

/-! ## A227195.P8175002230215569580

`A112050(A152271(n))`
-/

namespace A227195.P8175002230215569580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A152271 n).toNat

end

end A227195.P8175002230215569580

/-! ## A227195.P434176494652032026

`A112050(A057979(n)+1)`
-/

namespace A227195.P434176494652032026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A057979 n + 1).toNat

end

end A227195.P434176494652032026

/-! ## A227195.P14919850007916322109

`A112050((A093178(n)+1)/2)`
-/

namespace A227195.P14919850007916322109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (SequenceMachineLib.roundAway ((A093178 n + 1 : ℚ) / 2)).toNat

end

end A227195.P14919850007916322109

/-! ## A227195.P1732547012274823231

`A112050(gcd(n+1, A008619(n)))`
-/

namespace A227195.P1732547012274823231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A227195.P1732547012274823231

/-! ## A227195.P6501907775696690229

`A112050(A008619(n*and(1, n)))`
-/

namespace A227195.P6501907775696690229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A008619 (n * Nat.land 1 n)).toNat

end

end A227195.P6501907775696690229

/-! ## A227195.P1614548082671161174

`A112050(A065033(n*and(1, n)))`
-/

namespace A227195.P1614548082671161174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A065033 (n * Nat.land 1 n)).toNat

end

end A227195.P1614548082671161174

/-! ## A227195.P18145961112026181024

`A112050(A008619(n)^and(1, n))`
-/

namespace A227195.P18145961112026181024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A008619 n ^ Nat.land 1 n).toNat

end

end A227195.P18145961112026181024

/-! ## A227195.P9855600473487517796

`A112050(A065033(n)^and(1, n))`
-/

namespace A227195.P9855600473487517796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (A065033 n ^ Nat.land 1 n).toNat

end

end A227195.P9855600473487517796

/-!
# A227196: a(n) = first i >= 1 for which the Kronecker symbol K(i,n) is not +1 (i.e., is either 0 or -1), 0 if no such i exists.

The programs for A227196, there is no canonical definition to state claims against.
-/

/-! ## A227196.P5924993823382536714

`A358379(A005351(n)+n+1)`
-/

namespace A227196.P5924993823382536714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A005351 n + (n + 1 : ℤ)).toNat

end

end A227196.P5924993823382536714

/-! ## A227196.P11765683924174557360

`A158478(A251710(abs(1-n))+6*n)`
-/

namespace A227196.P11765683924174557360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A251710 |1 - (n : ℤ)|.toNat + (6 * n : ℤ)).toNat

end

end A227196.P11765683924174557360

/-! ## A227196.P1842351698976747810

`A067694(A001590(n)+A001504(n))`
-/

namespace A227196.P1842351698976747810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (A001590 n + A001504 n).toNat

end

end A227196.P1842351698976747810

/-! ## A227196.P3040601187359545818

`A108053(A024000(n)+A007569(n+3))`
-/

namespace A227196.P3040601187359545818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108053 (A024000 n + A007569 (n + 3)).toNat

end

end A227196.P3040601187359545818

/-! ## A227196.P6445102388952618750

`A158478(lcm(A014681(n), A231396(n+1)))`
-/

namespace A227196.P6445102388952618750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (Int.lcm (A014681 n) (A231396 (n + 1)))

end

end A227196.P6445102388952618750

/-!
# A227197: Integers k for which the first non-one value of Kronecker symbols K(1,k), K(2,k), ..., K(u,k) is 0, not -1.

The programs for A227197, there is no canonical definition to state claims against.
-/

/-! ## A227197.P13812626821993938277

`∪[2*(n+1), A227198(n+1)]`
-/

namespace A227197.P13812626821993938277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227197.P13812626821993938277

/-! ## A227197.P446268362767690265

`∪[A227198(n+1), A119432(n+1)]`
-/

namespace A227197.P446268362767690265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227197.P446268362767690265

/-! ## A227197.P2603588929083001816

`∪[A227198(n+1), A122080(n+1)]`
-/

namespace A227197.P2603588929083001816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227197.P2603588929083001816

/-! ## A227197.P7793530541966619701

`record[A032742(n+2)*A227196(n+2)]`
-/

namespace A227197.P7793530541966619701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 2) * A227196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227197.P7793530541966619701

/-! ## A227197.P8495627962146152731

`eq[A020639(n+1), A227196(n+1)]+1`
-/

namespace A227197.P8495627962146152731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227197.P8495627962146152731

/-! ## A227197.P9744350526859005107

`eq[A227196(n+1)², A088377(n+1)]+1`
-/

namespace A227197.P9744350526859005107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227197.P9744350526859005107

/-! ## A227197.P18110284007766478991

`eq[A223490(∏{p}[n+1, #]), A227196(n+1)]+1`
-/

namespace A227197.P18110284007766478991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A227197.P18110284007766478991

/-! ## A227197.P6931121312120863533

`eq[A061228(n+1)-(n+1), A227196(n+1)]+1`
-/

namespace A227197.P6931121312120863533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227197.P6931121312120863533

/-!
# A227198: Odd terms in A227197.

The programs for A227198, there is no canonical definition to state claims against.
-/

/-! ## A227198.P3197980423893072171

`eq[A078701(n+1), A227196(n+1)]+1`
-/

namespace A227198.P3197980423893072171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227198.P3197980423893072171

/-! ## A227198.P17807673929312126445

`A004442(eq[A078701(n+1), A227196(n+1)])`
-/

namespace A227198.P17807673929312126445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227198.P17807673929312126445

/-! ## A227198.P4252811673984109137

`A079097(eq[A078701(n+1), A227196(n+1)])`
-/

namespace A227198.P4252811673984109137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227198.P4252811673984109137

/-! ## A227198.P17718719835867276731

`A131738(eq[A078701(n+1), A227196(n+1)])`
-/

namespace A227198.P17718719835867276731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227198.P17718719835867276731

/-! ## A227198.P14942116579721130435

`A141310(eq[A078701(n+1), A227196(n+1)])`
-/

namespace A227198.P14942116579721130435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227198.P14942116579721130435

/-! ## A227198.P14388125145855439186

`A153152(eq[A078701(n+1), A227196(n+1)])`
-/

namespace A227198.P14388125145855439186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227198.P14388125145855439186

/-!
# A227199: Primes that divide some term of A006720.

The programs for A227199, there is no canonical definition to state claims against.
-/

/-! ## A227199.P6754508842543097860

`p?[A090104(3*n+2)-n%6]`
-/

namespace A227199.P6754508842543097860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090104 (3 * n + 2) - ((n % 6 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227199.P6754508842543097860

/-! ## A227199.P10555288647566792388

`p?[∑[A257023(A157170(n))]]`
-/

namespace A227199.P10555288647566792388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 (A157170 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227199.P10555288647566792388

/-! ## A227199.P3594093229182358556

`p?[comp[A196252(A016825(n))+1]]`
-/

namespace A227199.P3594093229182358556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (A016825 n).toNat + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A227199.P3594093229182358556

/-! ## A227199.P15238723201652083216

`p?[A011590(n)*A293754(n+1)]`
-/

namespace A227199.P15238723201652083216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n * A293754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227199.P15238723201652083216

