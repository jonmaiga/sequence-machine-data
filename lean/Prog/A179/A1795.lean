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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
# A179500: G.f.: A(x) = exp( Sum_{n>=1} [Sum_{k>=0} a(k)^n* x^k]^n* x^n/n ).

The programs for A179500, there is no canonical definition to state claims against.
-/

/-! ## A179500.P11706242744753667067

`A324328(n)+A177257(n)`
-/

namespace A179500.P11706242744753667067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324328 n + A177257 n

end

end A179500.P11706242744753667067

/-! ## A179500.P12288380406105875668

`A061091(A245502(n)-(and(1, n)-n)²/4)`
-/

namespace A179500.P12288380406105875668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061091 (SequenceMachineLib.roundAway ((A245502 n : ℚ) - (((Nat.land 1 n : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 4)).toNat

end

end A179500.P12288380406105875668

/-!
# A179501: Logarithmic derivative of A179500.

The programs for A179501, there is no canonical definition to state claims against.
-/

/-! ## A179501.P10473797676118482108

`or(n, record[A319566(2*n)])`
-/

namespace A179501.P10473797676118482108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319566 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179501.P10473797676118482108

/-!
# A179502: Numbers k with the property that k^2, k^2+1 and k^2+2 are all semiprimes.

The programs for A179502, there is no canonical definition to state claims against.
-/

/-! ## A179502.P4644660221497297409

`∩[A048161(n+1), A240878(n+1)]`
-/

namespace A179502.P4644660221497297409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P4644660221497297409

/-! ## A179502.P17408976876927968434

`∩[A048161(n+1), A109953(n+1)]`
-/

namespace A179502.P17408976876927968434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P17408976876927968434

/-! ## A179502.P18022371361980705958

`∩[A109953(n+1), A172438(n+1)]`
-/

namespace A179502.P18022371361980705958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P18022371361980705958

/-! ## A179502.P16755838611052380358

`∩[A109953(n+1), A281575(n+1)]`
-/

namespace A179502.P16755838611052380358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P16755838611052380358

/-! ## A179502.P12743472392729482321

`∩[A002731(n+1), A109953(n+1)]`
-/

namespace A179502.P12743472392729482321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P12743472392729482321

/-! ## A179502.P17185411503625248176

`∩[A048161(n+1), A242330(n+1)]`
-/

namespace A179502.P17185411503625248176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P17185411503625248176

/-! ## A179502.P5126377001987399937

`∩[A109953(n+1), A281505(n+1)]`
-/

namespace A179502.P5126377001987399937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P5126377001987399937

/-! ## A179502.P17466092040829969647

`∩[A085722(n+1), A109953(n+1)]`
-/

namespace A179502.P17466092040829969647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P17466092040829969647

/-! ## A179502.P9502055836628129480

`∩[A109953(n+1), A376428(n+1)]`
-/

namespace A179502.P9502055836628129480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179502.P9502055836628129480

/-! ## A179502.P9882626065533789163

`p?[ceil(sqrt(A173149(n+7)))]`
-/

namespace A179502.P9882626065533789163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A173149 (n + 7) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179502.P9882626065533789163

/-!
# A179504: a(n) = sigma(2n,n) for n>0 with a(0)=1.

The programs for A179504, there is no canonical definition to state claims against.
-/

/-! ## A179504.P5408777633036707199

`∑{d}[A004277(n), #^n]`
-/

namespace A179504.P5408777633036707199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A179504.P5408777633036707199

/-! ## A179504.P15810165460854304740

`∑{d}[A004275(n+1), #^n]`
-/

namespace A179504.P15810165460854304740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A179504.P15810165460854304740

/-! ## A179504.P13186681937436234678

`∑{d}[A123108(4*n), #^n]`
-/

namespace A179504.P13186681937436234678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A179504.P13186681937436234678

/-! ## A179504.P14612230933925675805

`∑{d}[gcd(2*n, (2*n+1)!), #^n]`
-/

namespace A179504.P14612230933925675805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.factorial (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ n

end

end A179504.P14612230933925675805

/-! ## A179504.P5914036131630915209

`A109974(A022266(n))`
-/

namespace A179504.P5914036131630915209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A022266 n).toNat

end

end A179504.P5914036131630915209

/-!
# A179505: n-th derivative of x^(x^(x^(x^x))) at x=1.

The programs for A179505, there is no canonical definition to state claims against.
-/

/-! ## A179505.P18113582948675372637

`A277537(A055999(n+3))`
-/

namespace A179505.P18113582948675372637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A055999 (n + 3)).toNat

end

end A179505.P18113582948675372637

/-! ## A179505.P3626284471210904378

`A277537(eq[5, A025581(n)])`
-/

namespace A179505.P3626284471210904378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179505.P3626284471210904378

/-! ## A179505.P5485181024623884991

`A277537(eq[5, A129713(n)])`
-/

namespace A179505.P5485181024623884991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179505.P5485181024623884991

/-! ## A179505.P1615192147694722190

`A277537(2*n+A000124(n+4)+4)`
-/

namespace A179505.P1615192147694722190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A179505.P1615192147694722190

/-! ## A179505.P14526130957833787757

`A028310(n)*A295105(A028310(n))`
-/

namespace A179505.P14526130957833787757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A295105 (A028310 n).toNat

end

end A179505.P14526130957833787757

/-! ## A179505.P16912234103319793070

`A277537(A016885(n+2)+A000124(n+1))`
-/

namespace A179505.P16912234103319793070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A016885 (n + 2) + A000124 (n + 1)).toNat

end

end A179505.P16912234103319793070

/-!
# A179506: Semiprimes in carryless digital root arithmetic in base 10.

The programs for A179506, there is no canonical definition to state claims against.
-/

/-! ## A179506.P7053303816057309424

`eq[n, A059626(A072912(n))]`
-/

namespace A179506.P7053303816057309424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A072912 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179506.P7053303816057309424

/-! ## A179506.P594317096454232932

`eq[A059630(n), A072912(n)]`
-/

namespace A179506.P594317096454232932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179506.P594317096454232932

/-! ## A179506.P15493561885499869152

`record[A059626(A106501(n+1))]`
-/

namespace A179506.P15493561885499869152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A106501 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179506.P15493561885499869152

/-! ## A179506.P17005994044968120413

`A007090(n+3)*A010674(A001790(n))`
-/

namespace A179506.P17005994044968120413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 3) * A010674 (A001790 n).toNat

end

end A179506.P17005994044968120413

/-! ## A179506.P17085204513147010077

`A007090(n+3)*A258091(A034472(n))`
-/

namespace A179506.P17085204513147010077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 3) * A258091 (A034472 n).toNat

end

end A179506.P17085204513147010077

/-!
# A179508: a(n) is the unique integer such that Sum_{k=0..p-1} b(k)/(-n)^k == a(n) (mod p) for any prime p not dividing n, where b(0), b(1), b(2), ... are Bell numbers given by A000110.

The programs for A179508, the canonical program `A179508.P3515673412264989575` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179508 has offset 1).

The definition of A179508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179508.P3515673412264989575

`a(n-1)*(1-(n+1))+n+1+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179508

/-- `a(n-1)*(1-(n+1))+n+1+1` -/
def P3515673412264989575.Spec : Prop :=
  ∀ n, P3515673412264989575.a n = A179508 (n + 1)

theorem P3515673412264989575.correct : P3515673412264989575.Spec := by
  intro n
  simp only [A179508, Nat.add_sub_cancel]

end A179508

/-! ## A179508.P1046469420287622996

`n*(1-a(n-1))+2` with `a(0)=2`
-/

namespace A179508.P1046469420287622996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * (1 - a (n - 1)) + 2

end

end A179508.P1046469420287622996

namespace A179508

/-- `n*(1-a(n-1))+2` -/
def P1046469420287622996.Spec : Prop :=
  ∀ n, P1046469420287622996.a n = A179508 (n + 1)

end A179508

/-! ## A179508.P11314877433180093495

`2-n*(a(n-1)-1)` with `a(0)=2`
-/

namespace A179508.P11314877433180093495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (n : ℤ) * (a (n - 1) - 1)

end

end A179508.P11314877433180093495

namespace A179508

/-- `2-n*(a(n-1)-1)` -/
def P11314877433180093495.Spec : Prop :=
  ∀ n, P11314877433180093495.a n = A179508 (n + 1)

end A179508

/-! ## A179508.P1698524227625553975

`2-a(n-1)/tan(acot(n))+n` with `a(0)=2`
-/

namespace A179508.P1698524227625553975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  2 - a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) + (n : ℝ)

end

end A179508.P1698524227625553975

namespace A179508

/-- `2-a(n-1)/tan(acot(n))+n` -/
def P1698524227625553975.Spec : Prop :=
  ∀ n, P1698524227625553975.a n = (A179508 (n + 1) : ℝ)

end A179508

/-! ## A179508.P10178091106167862831

`n-(a(n-1)/tan(acot(n))-2)` with `a(0)=2`
-/

namespace A179508.P10178091106167862831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℝ) - (a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)) - 2)

end

end A179508.P10178091106167862831

namespace A179508

/-- `n-(a(n-1)/tan(acot(n))-2)` -/
def P10178091106167862831.Spec : Prop :=
  ∀ n, P10178091106167862831.a n = (A179508 (n + 1) : ℝ)

end A179508

/-! ## A179508.P17061481347300289145

`n+2-a(n-1)/cot(atan(n))` with `a(0)=2`
-/

namespace A179508.P17061481347300289145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2 : ℝ) - a (n - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A179508.P17061481347300289145

namespace A179508

/-- `n+2-a(n-1)/cot(atan(n))` -/
def P17061481347300289145.Spec : Prop :=
  ∀ n, P17061481347300289145.a n = (A179508 (n + 1) : ℝ)

end A179508

/-! ## A179508.P2993843150878939164

`(1-a(n-1))/n^(-1)+2` with `a(0)=2`
-/

namespace A179508.P2993843150878939164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (1 - a (n - 1)) / (n : ℚ) ^ (-1 : ℤ) + 2

end

end A179508.P2993843150878939164

namespace A179508

/-- `(1-a(n-1))/n^(-1)+2` -/
def P2993843150878939164.Spec : Prop :=
  ∀ n, P2993843150878939164.a n = (A179508 (n + 1) : ℚ)

end A179508

/-! ## A179508.P6536462361767019281

`2-(a(n-1)-1)/n^(-1)` with `a(0)=2`
-/

namespace A179508.P6536462361767019281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A179508.P6536462361767019281

namespace A179508

/-- `2-(a(n-1)-1)/n^(-1)` -/
def P6536462361767019281.Spec : Prop :=
  ∀ n, P6536462361767019281.a n = (A179508 (n + 1) : ℚ)

end A179508

/-! ## A179508.P14264185972727241093

`A182386(n)+1`
-/

namespace A179508.P14264185972727241093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n + 1

end

end A179508.P14264185972727241093

namespace A179508

/-- `A182386(n)+1` -/
def P14264185972727241093.Spec : Prop :=
  ∀ n, P14264185972727241093.a n = A179508 (n + 1)

end A179508

/-! ## A179508.P8521608787843785396

`2*A009281(n)-n`
-/

namespace A179508.P8521608787843785396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009281 n - (n : ℤ)

end

end A179508.P8521608787843785396

namespace A179508

/-- `2*A009281(n)-n` -/
def P8521608787843785396.Spec : Prop :=
  ∀ n, P8521608787843785396.a n = A179508 (n + 1)

end A179508

/-!
# A179509: Numbers that can be written uniquely as sum of a square and a nonnegative cube.

The programs for A179509, there is no canonical definition to state claims against.
-/

/-! ## A179509.P16896683843632351093

`eq[1, A045634(n)]`
-/

namespace A179509.P16896683843632351093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179509.P16896683843632351093

/-! ## A179509.P17494887200292899487

`record[(n*A045634(n))%A164028(n+1)]`
-/

namespace A179509.P17494887200292899487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A045634 n) (A164028 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179509.P17494887200292899487

/-! ## A179509.P17621727693626787279

`lt[xor(n+1, n*A045634(n)+1), A210445(n+1)]`
-/

namespace A179509.P17621727693626787279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((n : ℤ) * A045634 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179509.P17621727693626787279

/-! ## A179509.P10914358148105229692

`A257541(p?[A000040(n+1)*A045634(n)])`
-/

namespace A179509.P10914358148105229692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A179509.P10914358148105229692

/-! ## A179509.P15361458930763396703

`A318995(p?[A000040(n+1)*A045634(n)])`
-/

namespace A179509.P15361458930763396703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A179509.P15361458930763396703

/-!
# A179510: Number of equally-spaced triples (x,y,z) of preceding terms with x+y=z.

The programs for A179510, there is no canonical definition to state claims against.
-/

/-! ## A179510.P5647436112453500075

`A002264(eq[A008611(n), A024366(n+1)])`
-/

namespace A179510.P5647436112453500075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179510.P5647436112453500075

/-! ## A179510.P7759070255104084413

`A156253(n+1)-A082070(A138879(n+1))`
-/

namespace A179510.P7759070255104084413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1) - A082070 (A138879 (n + 1)).toNat

end

end A179510.P7759070255104084413

/-! ## A179510.P14382264535287833204

`A294930(A138859(n+3)-1)+A065855(n+1)`
-/

namespace A179510.P14382264535287833204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A138859 (n + 3) - 1).toNat + A065855 (n + 1)

end

end A179510.P14382264535287833204

/-! ## A179510.P11532394490377929608

`A294930(A138859(n+3)-1)-A000720(n+1)+n`
-/

namespace A179510.P11532394490377929608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A138859 (n + 3) - 1).toNat - A000720 (n + 1) + (n : ℤ)

end

end A179510.P11532394490377929608

/-! ## A179510.P15328275396293889838

`∑[A000035(∑[A101155(n+1)])]`
-/

namespace A179510.P15328275396293889838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101155 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179510.P15328275396293889838

/-!
# A179511: a(1) = 1, a(n) = prime(a(n-1)) + 2*a(n-1).

The programs for A179511, the canonical program `A179511.P14669137859667798361` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179511 has offset 1).

The definition of A179511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+2*a(n-1)` (program `A179511.P14669137859667798361`, by `A179511.P14669137859667798361.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179511.P14669137859667798361

`A000040(a(n-1))+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179511

/-- `A000040(a(n-1))+2*a(n-1)` -/
def P14669137859667798361.Spec : Prop :=
  ∀ n, P14669137859667798361.a n = A179511 (n + 1)

theorem P14669137859667798361.correct : P14669137859667798361.Spec := by
  intro n
  simp only [A179511, Nat.add_sub_cancel]

end A179511

/-! ## A179511.P6631486074960562892

`A078916(a(n-1))` with `a(0)=1`
-/

namespace A179511.P6631486074960562892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078916 (a (n - 1)).toNat

end

end A179511.P6631486074960562892

namespace A179511

/-- `A078916(a(n-1))` -/
def P6631486074960562892.Spec : Prop :=
  ∀ n, P6631486074960562892.a n = A179511 (n + 1)

end A179511

/-! ## A179511.P3567766612241822552

`A174008(a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A179511.P3567766612241822552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A174008 (a (n - 1)).toNat

end

end A179511.P3567766612241822552

namespace A179511

/-- `A174008(a(n-1))` -/
def P3567766612241822552.Spec : Prop :=
  ∀ n, P3567766612241822552.a n = A179511 (n + 1)

end A179511

/-!
# A179512: a(1) = 12, a(n) = prime(a(n-1)) - 2a(n-1).

The programs for A179512, the canonical program `A179512.P18096480632788451021` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179512 has offset 1).

The definition of A179512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))-2*a(n-1)` (program `A179512.P18096480632788451021`, by `A179512.P18096480632788451021.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179512.P18096480632788451021

`A000040(a(n-1))-2*a(n-1)` with `a(0)=12`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179512

/-- `A000040(a(n-1))-2*a(n-1)` -/
def P18096480632788451021.Spec : Prop :=
  ∀ n, P18096480632788451021.a n = A179512 (n + 1)

theorem P18096480632788451021.correct : P18096480632788451021.Spec := by
  intro n
  simp only [A179512, Nat.add_sub_cancel]

end A179512

/-! ## A179512.P10386169068020424273

`A179437(a(n-1))` with `a(0)=12`
-/

namespace A179512.P10386169068020424273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A179437 (a (n - 1)).toNat

end

end A179512.P10386169068020424273

namespace A179512

/-- `A179437(a(n-1))` -/
def P10386169068020424273.Spec : Prop :=
  ∀ n, P10386169068020424273.a n = A179512 (n + 1)

end A179512

/-! ## A179512.P13049545500034590922

`A023443(A131733(a(n-1)))` with `a(0)=12`
-/

namespace A179512.P13049545500034590922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A023443 (A131733 (a (n - 1)).toNat).toNat

end

end A179512.P13049545500034590922

namespace A179512

/-- `A023443(A131733(a(n-1)))` -/
def P13049545500034590922.Spec : Prop :=
  ∀ n, P13049545500034590922.a n = A179512 (n + 1)

end A179512

/-! ## A179512.P6428167417579871212

`A105811(A173072(a(n-1)))` with `a(0)=12`
-/

namespace A179512.P6428167417579871212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  A105811 (A173072 (a (n - 1)).toNat).toNat

end

end A179512.P6428167417579871212

namespace A179512

/-- `A105811(A173072(a(n-1)))` -/
def P6428167417579871212.Spec : Prop :=
  ∀ n, P6428167417579871212.a n = A179512 (n + 1)

end A179512

/-!
# A179513: a(1) = 1, a(n) = prime(a(n-1)) + 3*a(n-1).

The programs for A179513, the canonical program `A179513.P11489710474986315873` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179513 has offset 1).

The definition of A179513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+3*a(n-1)` (program `A179513.P11489710474986315873`, by `A179513.P11489710474986315873.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179513.P11489710474986315873

`A000040(a(n-1))+3*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179513

/-- `A000040(a(n-1))+3*a(n-1)` -/
def P11489710474986315873.Spec : Prop :=
  ∀ n, P11489710474986315873.a n = A179513 (n + 1)

theorem P11489710474986315873.correct : P11489710474986315873.Spec := by
  intro n
  simp only [A179513, Nat.add_sub_cancel]

end A179513

/-! ## A179513.P10594151961339371372

`A078916(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A179513.P10594151961339371372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078916 (a (n - 1)).toNat + a (n - 1)

end

end A179513.P10594151961339371372

namespace A179513

/-- `A078916(a(n-1))+a(n-1)` -/
def P10594151961339371372.Spec : Prop :=
  ∀ n, P10594151961339371372.a n = A179513 (n + 1)

end A179513

/-!
# A179514: a(1) = 31, a(n) = prime(a(n-1)) - 3a(n-1).

The programs for A179514, the canonical program `A179514.P17898797579125482334` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179514 has offset 1).

The definition of A179514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))-3*a(n-1)` (program `A179514.P17898797579125482334`, by `A179514.P17898797579125482334.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179514.P17898797579125482334

`A000040(a(n-1))-3*a(n-1)` with `a(0)=31`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179514

/-- `A000040(a(n-1))-3*a(n-1)` -/
def P17898797579125482334.Spec : Prop :=
  ∀ n, P17898797579125482334.a n = A179514 (n + 1)

theorem P17898797579125482334.correct : P17898797579125482334.Spec := by
  intro n
  simp only [A179514, Nat.add_sub_cancel]

end A179514

/-!
# A179515: a(1) = 1, a( n) = prime(a(n-1)) + 4a(n-1).

The programs for A179515, the canonical program `A179515.P7120390499158257888` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179515 has offset 1).

The definition of A179515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+4*a(n-1)` (program `A179515.P7120390499158257888`, by `A179515.P7120390499158257888.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179515.P7120390499158257888

`A000040(a(n-1))+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179515

/-- `A000040(a(n-1))+4*a(n-1)` -/
def P7120390499158257888.Spec : Prop :=
  ∀ n, P7120390499158257888.a n = A179515 (n + 1)

theorem P7120390499158257888.correct : P7120390499158257888.Spec := by
  intro n
  simp only [A179515, Nat.add_sub_cancel]

end A179515

/-!
# A179516: a(1) = 73, a(n) = prime(a(n-1)) - 4*a(n-1).

The programs for A179516, the canonical program `A179516.P199136128710072502` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179516 has offset 1).

The definition of A179516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))-4*a(n-1)` (program `A179516.P199136128710072502`, by `A179516.P199136128710072502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179516.P199136128710072502

`A000040(a(n-1))-4*a(n-1)` with `a(0)=73`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179516

/-- `A000040(a(n-1))-4*a(n-1)` -/
def P199136128710072502.Spec : Prop :=
  ∀ n, P199136128710072502.a n = A179516 (n + 1)

theorem P199136128710072502.correct : P199136128710072502.Spec := by
  intro n
  simp only [A179516, Nat.add_sub_cancel]

end A179516

/-!
# A179517: a(1) = 1, a( n) = prime(a(n-1)) + 5a(n-1).

The programs for A179517, the canonical program `A179517.P16605520665345733768` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179517 has offset 1).

The definition of A179517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+5*a(n-1)` (program `A179517.P16605520665345733768`, by `A179517.P16605520665345733768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179517.P16605520665345733768

`A000040(a(n-1))+5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179517

/-- `A000040(a(n-1))+5*a(n-1)` -/
def P16605520665345733768.Spec : Prop :=
  ∀ n, P16605520665345733768.a n = A179517 (n + 1)

theorem P16605520665345733768.correct : P16605520665345733768.Spec := by
  intro n
  simp only [A179517, Nat.add_sub_cancel]

end A179517

/-! ## A179517.P16843588947168469600

`A283442(a(n-1))+A000040(a(n-1))` with `a(0)=1`
-/

namespace A179517.P16843588947168469600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283442 (a (n - 1)).toNat + A000040 (a (n - 1)).toNat

end

end A179517.P16843588947168469600

namespace A179517

/-- `A283442(a(n-1))+A000040(a(n-1))` -/
def P16843588947168469600.Spec : Prop :=
  ∀ n, P16843588947168469600.a n = A179517 (n + 1)

end A179517

/-!
# A179518: a(1) = 190, a(n) = prime(a(n-1)) - 5a(n-1).

The programs for A179518, the canonical program `A179518.P3302817981136130063` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179518 has offset 1).

The definition of A179518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))-5*a(n-1)` (program `A179518.P3302817981136130063`, by `A179518.P3302817981136130063.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179518.P3302817981136130063

`A000040(a(n-1))-5*a(n-1)` with `a(0)=190`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179518

/-- `A000040(a(n-1))-5*a(n-1)` -/
def P3302817981136130063.Spec : Prop :=
  ∀ n, P3302817981136130063.a n = A179518 (n + 1)

theorem P3302817981136130063.correct : P3302817981136130063.Spec := by
  intro n
  simp only [A179518, Nat.add_sub_cancel]

end A179518

/-!
# A179519: 'AP(n,k)' triangle read by rows. AP(n,k) is the number of aperiodic k-palindromes of n.

The programs for A179519, there is no canonical definition to state claims against.
-/

/-! ## A179519.P14195392511279670230

`A180279(n+1)-A181111(n+1)`
-/

namespace A179519.P14195392511279670230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180279 (n + 1) - A181111 (n + 1)

end

end A179519.P14195392511279670230

/-! ## A179519.P9717976645317196507

`A171712(n+1)*A179317(n+1)`
-/

namespace A179519.P9717976645317196507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171712 (n + 1) * A179317 (n + 1)

end

end A179519.P9717976645317196507

/-! ## A179519.P13648487377754610389

`A040001(A002260(n+1))*A179317(n+1)`
-/

namespace A179519.P13648487377754610389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A002260 (n + 1)).toNat * A179317 (n + 1)

end

end A179519.P13648487377754610389

/-! ## A179519.P2917733089649144454

`A040001(A050873(n+1))*A179317(n+1)`
-/

namespace A179519.P2917733089649144454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A050873 (n + 1)).toNat * A179317 (n + 1)

end

end A179519.P2917733089649144454

/-! ## A179519.P12465110370098348952

`A180424(n+1)*A193738(n)-A181111(n+1)`
-/

namespace A179519.P12465110370098348952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180424 (n + 1) * A193738 n - A181111 (n + 1)

end

end A179519.P12465110370098348952

/-! ## A179519.P13069927231415722223

`A080511(n+1)*A180424(n+1)-A181111(n+1)`
-/

namespace A179519.P13069927231415722223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A180424 (n + 1) - A181111 (n + 1)

end

end A179519.P13069927231415722223

/-! ## A179519.P3576664090720358698

`A180171(n+1)-A180653(n+1)`
-/

namespace A179519.P3576664090720358698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180171 (n + 1) - A180653 (n + 1)

end

end A179519.P3576664090720358698

/-! ## A179519.P9280459667054783401

`A007913(A059268(n))*A179317(n+1)`
-/

namespace A179519.P9280459667054783401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A059268 n).toNat * A179317 (n + 1)

end

end A179519.P9280459667054783401

/-!
# A179520: Primes p containing no zero digits and such that p+1 is divisible by every digit of p.

The programs for A179520, there is no canonical definition to state claims against.
-/

/-! ## A179520.P15914016794716176892

`∩[A038618(n+1), A081981(n+1)]`
-/

namespace A179520.P15914016794716176892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179520.P15914016794716176892

/-! ## A179520.P8743455048097457297

`∩[A081981(n+1), A195943(n+1)]`
-/

namespace A179520.P8743455048097457297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179520.P8743455048097457297

/-! ## A179520.P1739723011703738377

`∩[A081981(n+1), A392375(n+1)]`
-/

namespace A179520.P1739723011703738377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179520.P1739723011703738377

/-! ## A179520.P16572162156439863420

`∩[A061116(n+1), A081981(n+1)]`
-/

namespace A179520.P16572162156439863420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179520.P16572162156439863420

/-! ## A179520.P13093324951058565007

`filter[A081981(n+1), A209929(#)]`
-/

namespace A179520.P13093324951058565007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A179520.P13093324951058565007

/-! ## A179520.P11972968407945414515

`∩[A052382(n+1), A081981(n+1)]`
-/

namespace A179520.P11972968407945414515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179520.P11972968407945414515

/-! ## A179520.P10964667734473084693

`record[A004719(A081981(n+1))]`
-/

namespace A179520.P10964667734473084693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A081981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179520.P10964667734473084693

/-! ## A179520.P14662594518455546755

`filter[A081981(n+1), A168046(#)]`
-/

namespace A179520.P14662594518455546755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A179520.P14662594518455546755

/-!
# A179521: The number of (nontrivial) cycles in the symmetric group S_2n that involve equally many elements in {1,...,n} and {n+1,...,2n}.

The programs for A179521, there is no canonical definition to state claims against.
-/

/-! ## A179521.P17123601491802331383

`n*A304442(A014062(n))`
-/

namespace A179521.P17123601491802331383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A304442 (A014062 n).toNat

end

end A179521.P17123601491802331383

/-!
# A179522: Prime numbers (A000040) which are also primes in carryless digital root arithmetic in base 10 (A169911).

The programs for A179522, there is no canonical definition to state claims against.
-/

/-! ## A179522.P18116277628397508253

`p?[A169911(n+1)]`
-/

namespace A179522.P18116277628397508253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179522.P18116277628397508253

/-! ## A179522.P9856097988688299255

`filter[A169911(n+1), A010051(#)]`
-/

namespace A179522.P9856097988688299255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A179522.P9856097988688299255

/-! ## A179522.P7728933581155630597

`filter[A169911(n+1), A080339(#)]`
-/

namespace A179522.P7728933581155630597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A179522.P7728933581155630597

/-! ## A179522.P2199380338720884759

`filter[A169911(n+1), A080545(#)]`
-/

namespace A179522.P2199380338720884759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A179522.P2199380338720884759

/-! ## A179522.P11106065231293559355

`filter[A169911(n+1), A257531(#)]`
-/

namespace A179522.P11106065231293559355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A179522.P11106065231293559355

/-! ## A179522.P4091678379884563489

`record[A014963(A169911(ceil(n/2)+1))]`
-/

namespace A179522.P4091678379884563489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A169911 (⌈(n : ℚ) / 2⌉ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179522.P4091678379884563489

/-! ## A179522.P10409849863164658340

`∩[A000040(n+1), A169911(n+1)]`
-/

namespace A179522.P10409849863164658340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179522.P10409849863164658340

/-! ## A179522.P16115998320524957055

`∩[A004139(n+1), A169911(n+1)]`
-/

namespace A179522.P16115998320524957055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179522.P16115998320524957055

/-! ## A179522.P9525943968823570639

`∩[A005180(n+1), A169911(n+1)]`
-/

namespace A179522.P9525943968823570639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179522.P9525943968823570639

/-! ## A179522.P13412342349024746277

`∩[A006005(n+1), A169911(n+1)]`
-/

namespace A179522.P13412342349024746277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179522.P13412342349024746277

/-!
# A179523: Round (3/2)^n.

The programs for A179523, there is no canonical definition to state claims against.
-/

/-! ## A179523.P738558725892267173

`round((3/2)^(n-2))`
-/

namespace A179523.P738558725892267173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 2) ^ ((n : ℤ) - 2 : ℤ))

end

end A179523.P738558725892267173

/-! ## A179523.P662728194393892224

`ceil((3^n-2^n)/A312883(ceil(2^(n-1))))`
-/

namespace A179523.P662728194393892224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / (A312883 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℚ)⌉

end

end A179523.P662728194393892224

/-! ## A179523.P5782303970581452787

`A000196(A259805(n+2)%A259803(2*n+1))`
-/

namespace A179523.P5782303970581452787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A259805 (n + 2)) (A259803 (2 * n + 1))).toNat

end

end A179523.P5782303970581452787

/-! ## A179523.P2843773688677282322

`floor((A331678(n+1)/A331684(n+1)+1)/3)`
-/

namespace A179523.P2843773688677282322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A331678 (n + 1) : ℚ) / (A331684 (n + 1) : ℚ) + 1) / 3⌋

end

end A179523.P2843773688677282322

/-!
# A179525: G.f.: A(x) = Sum_{n>=0} Product_{k=1..n} ((1+x)^k - 1).

The programs for A179525, there is no canonical definition to state claims against.
-/

/-! ## A179525.P15591751692326247834

`A182319(∑[n]+1)`
-/

namespace A179525.P15591751692326247834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A179525.P15591751692326247834

/-! ## A179525.P15241996311060600274

`A182319(A000124(n))+A025439(n)`
-/

namespace A179525.P15241996311060600274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182319 (A000124 n).toNat + A025439 n

end

end A179525.P15241996311060600274

/-! ## A179525.P10063664315565668945

`lcm(A033999(n), A182319(A000124(n)))`
-/

namespace A179525.P10063664315565668945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A182319 (A000124 n).toNat)

end

end A179525.P10063664315565668945

/-! ## A179525.P15883006665325625097

`A000034(2*n)*A182319(A000124(n))`
-/

namespace A179525.P15883006665325625097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A182319 (A000124 n).toNat

end

end A179525.P15883006665325625097

/-! ## A179525.P9434075837031965079

`A182319(A000124(n))%A233015(n+1)`
-/

namespace A179525.P9434075837031965079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182319 (A000124 n).toNat) (A233015 (n + 1))

end

end A179525.P9434075837031965079

/-! ## A179525.P6463273902752023712

`gcd(A073097(2*n)², A182319(A000124(n)))`
-/

namespace A179525.P6463273902752023712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073097 (2 * n) ^ 2) (A182319 (A000124 n).toNat)

end

end A179525.P6463273902752023712

/-!
# A179526: (3^k - 1)/2 appears 3^(k-1) times, k>0.

The programs for A179526, the canonical program `A179526.P1182690166902263083` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179526 has offset 0).

The definition of A179526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179526.P2984783777225917594

`∑{d}[3^∑[char[∑[3^n]]], #]`
-/

namespace A179526.P2984783777225917594
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A179526.P2984783777225917594

namespace A179526

/-- `∑{d}[3^∑[char[∑[3^n]]], #]` -/
def P2984783777225917594.Spec : Prop :=
  ∀ n, (P2984783777225917594.a n : ℤ) = A179526 n

end A179526

/-! ## A179526.P1182690166902263083

`lcm(3, a(floor((n-1)/3)))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179526

/-- `lcm(3, a(floor((n-1)/3)))+1` -/
def P1182690166902263083.Spec : Prop :=
  ∀ n, (P1182690166902263083.a n : ℤ) = A179526 n

theorem P1182690166902263083.correct : P1182690166902263083.Spec := by
  intro n
  simp only [A179526]

end A179526

/-! ## A179526.P18400120424858148605

`∑[Δ[n²]*char[floor(3^n/2)]]`
-/

namespace A179526.P18400120424858148605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179526.P18400120424858148605

namespace A179526

/-- `∑[Δ[n²]*char[floor(3^n/2)]]` -/
def P18400120424858148605.Spec : Prop :=
  ∀ n, P18400120424858148605.a n = A179526 n

end A179526

/-! ## A179526.P17007425762141421594

`a(n-1)+C(2*n+1, 2*a(n-1))` with `a(0)=1`
-/

namespace A179526.P17007425762141421594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (2 * n + 1) (2 * a (n - 1))

end

end A179526.P17007425762141421594

namespace A179526

/-- `a(n-1)+C(2*n+1, 2*a(n-1))` -/
def P17007425762141421594.Spec : Prop :=
  ∀ n, (P17007425762141421594.a n : ℤ) = A179526 n

end A179526

/-! ## A179526.P7968958207910753153

`a(n-1)+(2*n+1)*floor(n/a(n-1))` with `a(0)=1`
-/

namespace A179526.P7968958207910753153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1 : ℤ) * ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A179526.P7968958207910753153

namespace A179526

/-- `a(n-1)+(2*n+1)*floor(n/a(n-1))` -/
def P7968958207910753153.Spec : Prop :=
  ∀ n, P7968958207910753153.a n = A179526 n

end A179526

/-! ## A179526.P15248815884824353649

`A157671(n+1)-(n+1)`
-/

namespace A179526.P15248815884824353649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 1) - (n + 1 : ℤ)

end

end A179526.P15248815884824353649

namespace A179526

/-- `A157671(n+1)-(n+1)` -/
def P15248815884824353649.Spec : Prop :=
  ∀ n, P15248815884824353649.a n = A179526 n

end A179526

/-! ## A179526.P12487939507615838765

`A000203(A132171(n))`
-/

namespace A179526.P12487939507615838765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A132171 n).toNat

end

end A179526.P12487939507615838765

namespace A179526

/-- `A000203(A132171(n))` -/
def P12487939507615838765.Spec : Prop :=
  ∀ n, P12487939507615838765.a n = A179526 n

end A179526

/-! ## A179526.P8962648545346370720

`A003462(∑[char[A003462(n)]])`
-/

namespace A179526.P8962648545346370720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179526.P8962648545346370720

namespace A179526

/-- `A003462(∑[char[A003462(n)]])` -/
def P8962648545346370720.Spec : Prop :=
  ∀ n, P8962648545346370720.a n = A179526 n

end A179526

/-! ## A179526.P13914815292466267951

`A274601(A117966(A274601(n+1)+n))`
-/

namespace A179526.P13914815292466267951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274601 (A117966 (A274601 (n + 1) + (n : ℤ)).toNat).toNat

end

end A179526.P13914815292466267951

namespace A179526

/-- `A274601(A117966(A274601(n+1)+n))` -/
def P13914815292466267951.Spec : Prop :=
  ∀ n, P13914815292466267951.a n = A179526 n

end A179526

/-! ## A179526.P17726150043172372015

`A000203(A132141(A132141(n+1)-n))`
-/

namespace A179526.P17726150043172372015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A132141 (A132141 (n + 1) - (n : ℤ)).toNat).toNat

end

end A179526.P17726150043172372015

namespace A179526

/-- `A000203(A132141(A132141(n+1)-n))` -/
def P17726150043172372015.Spec : Prop :=
  ∀ n, P17726150043172372015.a n = A179526 n

end A179526

/-! ## A179526.P12861511517453199895

`A004128(A365458(2*n+1))`
-/

namespace A179526.P12861511517453199895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A365458 (2 * n + 1)).toNat

end

end A179526.P12861511517453199895

namespace A179526

/-- `A004128(A365458(2*n+1))` -/
def P12861511517453199895.Spec : Prop :=
  ∀ n, P12861511517453199895.a n = A179526 n

end A179526

/-! ## A179526.P171594441889004359

`A338247(A132141(n+1)-n)`
-/

namespace A179526.P171594441889004359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 (A132141 (n + 1) - (n : ℤ)).toNat

end

end A179526.P171594441889004359

namespace A179526

/-- `A338247(A132141(n+1)-n)` -/
def P171594441889004359.Spec : Prop :=
  ∀ n, P171594441889004359.a n = A179526 n

end A179526

/-! ## A179526.P8209657659616143473

`A060374(n+1)+A060373(A338247(n+1))`
-/

namespace A179526.P8209657659616143473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (n + 1) + A060373 (A338247 (n + 1)).toNat

end

end A179526.P8209657659616143473

namespace A179526

/-- `A060374(n+1)+A060373(A338247(n+1))` -/
def P8209657659616143473.Spec : Prop :=
  ∀ n, P8209657659616143473.a n = A179526 n

end A179526

/-! ## A179526.P2621596554309472796

`A004488(A117967(n+1))-A338246(n+1)`
-/

namespace A179526.P2621596554309472796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A117967 (n + 1)).toNat - A338246 (n + 1)

end

end A179526.P2621596554309472796

namespace A179526

/-- `A004488(A117967(n+1))-A338246(n+1)` -/
def P2621596554309472796.Spec : Prop :=
  ∀ n, P2621596554309472796.a n = A179526 n

end A179526

/-! ## A179526.P12441460453150795308

`A060374(A343317(n+1))`
-/

namespace A179526.P12441460453150795308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (A343317 (n + 1)).toNat

end

end A179526.P12441460453150795308

namespace A179526

/-- `A060374(A343317(n+1))` -/
def P12441460453150795308.Spec : Prop :=
  ∀ n, P12441460453150795308.a n = A179526 n

end A179526

/-! ## A179526.P16228671434098148758

`A076217(Δ[n²])+n`
-/

namespace A179526.P16228671434098148758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A179526.P16228671434098148758

namespace A179526

/-- `A076217(Δ[n²])+n` -/
def P16228671434098148758.Spec : Prop :=
  ∀ n, P16228671434098148758.a n = A179526 n

end A179526

/-! ## A179526.P9118595240051539077

`A004488(A171960(2*n+1)+2*n+1)`
-/

namespace A179526.P9118595240051539077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A171960 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A179526.P9118595240051539077

namespace A179526

/-- `A004488(A171960(2*n+1)+2*n+1)` -/
def P9118595240051539077.Spec : Prop :=
  ∀ n, P9118595240051539077.a n = A179526 n

end A179526

/-! ## A179526.P14618762661341390763

`A132141(A132141(2*(n+1)))-A132141(2*(n+1))`
-/

namespace A179526.P14618762661341390763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (A132141 (2 * (n + 1))).toNat - A132141 (2 * (n + 1))

end

end A179526.P14618762661341390763

namespace A179526

/-- `A132141(A132141(2*(n+1)))-A132141(2*(n+1))` -/
def P14618762661341390763.Spec : Prop :=
  ∀ n, P14618762661341390763.a n = A179526 n

end A179526

/-! ## A179526.P3159225342360353483

`A132141(A016789(n))-A016789(n)`
-/

namespace A179526.P3159225342360353483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (A016789 n).toNat - A016789 n

end

end A179526.P3159225342360353483

namespace A179526

/-- `A132141(A016789(n))-A016789(n)` -/
def P3159225342360353483.Spec : Prop :=
  ∀ n, P3159225342360353483.a n = A179526 n

end A179526

/-! ## A179526.P1130055660721176397

`A004526(A064235(2*(n+1)))`
-/

namespace A179526.P1130055660721176397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A064235 (2 * (n + 1))).toNat

end

end A179526.P1130055660721176397

namespace A179526

/-- `A004526(A064235(2*(n+1)))` -/
def P1130055660721176397.Spec : Prop :=
  ∀ n, P1130055660721176397.a n = A179526 n

end A179526

/-!
# A179527: Characteristic function of Zumkeller numbers (A083207).

The programs for A179527, there is no canonical definition to state claims against.
-/

/-! ## A179527.P7103597718387487142

`A057427(A083206(n+1))`
-/

namespace A179527.P7103597718387487142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A083206 (n + 1)).toNat

end

end A179527.P7103597718387487142

/-! ## A179527.P14884206629977148223

`A308605(n+1)%2`
-/

namespace A179527.P14884206629977148223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308605 (n + 1)) 2

end

end A179527.P14884206629977148223

/-! ## A179527.P17414588859333127738

`log2(gcd(2, A119347(n+1)))`
-/

namespace A179527.P17414588859333127738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A119347 (n + 1)) : ℝ)

end

end A179527.P17414588859333127738

/-! ## A179527.P15518966807792922795

`char[A083207(n+1)-1]`
-/

namespace A179527.P15518966807792922795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179527.P15518966807792922795

/-! ## A179527.P1035399580004980883

`val(n+1, A360561(n+1))`
-/

namespace A179527.P1035399580004980883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A360561 (n + 1)).toNat

end

end A179527.P1035399580004980883

/-! ## A179527.P14674666086579962429

`A000007(A103977(n+1))`
-/

namespace A179527.P14674666086579962429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A103977 (n + 1)).toNat

end

end A179527.P14674666086579962429

/-! ## A179527.P18010164835383763053

`A294936(n+1)-A378661(n+1)`
-/

namespace A179527.P18010164835383763053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1) - A378661 (n + 1)

end

end A179527.P18010164835383763053

/-! ## A179527.P14956940452865011953

`and(A119347(n+1)+1, A060576(n))`
-/

namespace A179527.P14956940452865011953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119347 (n + 1) + 1) (A060576 n)

end

end A179527.P14956940452865011953

/-! ## A179527.P2942256951787978790

`A020639(A020639(A119347(n+1))+1)-2`
-/

namespace A179527.P2942256951787978790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (A119347 (n + 1)).toNat + 1).toNat - 2

end

end A179527.P2942256951787978790

/-! ## A179527.P18423876670137270446

`A062110(A013322(n+1))^A103977(n+1)`
-/

namespace A179527.P18423876670137270446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062110 (A013322 (n + 1)).toNat : ℚ) ^ (A103977 (n + 1) : ℤ)

end

end A179527.P18423876670137270446

/-! ## A179527.P11549472692940924298

`3-A020639(3*A119347(n+1))`
-/

namespace A179527.P11549472692940924298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A020639 (3 * A119347 (n + 1)).toNat

end

end A179527.P11549472692940924298

/-! ## A179527.P3379822039759783906

`A353494(gcd(A040976(n+1)+2, A083206(n+1)))`
-/

namespace A179527.P3379822039759783906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (Int.gcd (A040976 (n + 1) + 2) (A083206 (n + 1)))

end

end A179527.P3379822039759783906

/-! ## A179527.P9196385870035764583

`and(A060576(n), A141310(A119347(n+1)))`
-/

namespace A179527.P9196385870035764583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A141310 (A119347 (n + 1)).toNat)

end

end A179527.P9196385870035764583

/-! ## A179527.P125247107463810407

`A059841(A119347(n+1))`
-/

namespace A179527.P125247107463810407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A119347 (n + 1)).toNat

end

end A179527.P125247107463810407

/-! ## A179527.P4905204171091389862

`A000035(A308605(n+1))`
-/

namespace A179527.P4905204171091389862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A308605 (n + 1)).toNat

end

end A179527.P4905204171091389862

/-! ## A179527.P15543205919902550015

`ceil(A083206(n+1)/A180000(n))`
-/

namespace A179527.P15543205919902550015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083206 (n + 1) : ℚ) / (A180000 n : ℚ)⌉

end

end A179527.P15543205919902550015

/-! ## A179527.P8988137538689232609

`A359196(A369873(n+1)+1)`
-/

namespace A179527.P8988137538689232609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359196 (A369873 (n + 1) + 1).toNat

end

end A179527.P8988137538689232609

/-! ## A179527.P2568745943075375360

`and(A115618(n), A308605(n+1))`
-/

namespace A179527.P2568745943075375360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115618 n) (A308605 (n + 1))

end

end A179527.P2568745943075375360

/-!
# A179528: Number of terms of A083207 that are not greater than n.

The programs for A179528, there is no canonical definition to state claims against.
-/

/-! ## A179528.P6807801433998635480

`∑[A179527(n+1)]`
-/

namespace A179528.P6807801433998635480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179528.P6807801433998635480

/-! ## A179528.P12391788727522381483

`∑[char[A083207(n+1)-1]]`
-/

namespace A179528.P12391788727522381483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179528.P12391788727522381483

/-! ## A179528.P7618617923006560869

`∑[and(1, A119347(n+1)+1)]`
-/

namespace A179528.P7618617923006560869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A119347 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179528.P7618617923006560869

/-! ## A179528.P11739409835945004983

`∑[A000007(A103977(n+1))]`
-/

namespace A179528.P11739409835945004983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A103977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179528.P11739409835945004983

/-! ## A179528.P15381401299559301758

`∑[3-A020639(3*A119347(n+1))]`
-/

namespace A179528.P15381401299559301758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A020639 (3 * A119347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179528.P15381401299559301758

/-! ## A179528.P10656417449416815115

`∑[A056594(A119347(n+1))²]`
-/

namespace A179528.P10656417449416815115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A119347 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179528.P10656417449416815115

/-!
# A179530: Smallest of 12 consecutive numbers containing exactly n terms of A083207.

The programs for A179530, there is no canonical definition to state claims against.
-/

/-! ## A179530.P16846334081027895429

`A008996(A001117(n)+A001065(n+4))`
-/

namespace A179530.P16846334081027895429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008996 (A001117 n + A001065 (n + 4)).toNat

end

end A179530.P16846334081027895429

/-!
# A179532: a(n) = 2^ceiling(n*(n+1)/3).

The programs for A179532, the canonical program `A179532.P6622477383663518370` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179532 has offset 0).

The definition of A179532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179532.P6622477383663518370

`2^ceil(n*(n+1)/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179532

/-- `2^ceil(n*(n+1)/3)` -/
def P6622477383663518370.Spec : Prop :=
  ∀ n, P6622477383663518370.a n = (A179532 n : ℚ)

end A179532

/-! ## A179532.P12056172712927688405

`∏[4*a(n-3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A179532.P12056172712927688405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  4 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179532.P12056172712927688405

namespace A179532

/-- `∏[4*a(n-3)]` -/
def P12056172712927688405.Spec : Prop :=
  ∀ n, (P12056172712927688405.a n : ℤ) = A179532 n

end A179532

/-! ## A179532.P7488682351565666253

`record[gcd(2, n+1)^round(n²/12)]`
-/

namespace A179532.P7488682351565666253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179532.P7488682351565666253

namespace A179532

/-- `record[gcd(2, n+1)^round(n²/12)]` -/
def P7488682351565666253.Spec : Prop :=
  ∀ n, P7488682351565666253.a n = (A179532 n : ℚ)

end A179532

/-! ## A179532.P8955445523998766511

`4^(n-1)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A179532.P8955445523998766511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 3)

end

end A179532.P8955445523998766511

namespace A179532

/-- `4^(n-1)*a(n-3)` -/
def P8955445523998766511.Spec : Prop :=
  ∀ n, P8955445523998766511.a n = (A179532 n : ℚ)

end A179532

/-! ## A179532.P302087479094350814

`a(n-3)/4^(1-n)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A179532.P302087479094350814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) / (4 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A179532.P302087479094350814

namespace A179532

/-- `a(n-3)/4^(1-n)` -/
def P302087479094350814.Spec : Prop :=
  ∀ n, P302087479094350814.a n = (A179532 n : ℚ)

end A179532

/-!
# A179533: Expansion of (1/(1-x-2x^2))*c(x/(1-x-2x^2)), c(x) the g.f. of A000108.

The programs for A179533, there is no canonical definition to state claims against.
-/

/-! ## A179533.P6263818253415061435

`A088305(n)+A004526(A150771(n))`
-/

namespace A179533.P6263818253415061435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n + A004526 (A150771 n).toNat

end

end A179533.P6263818253415061435

/-! ## A179533.P4298515192135134849

`A126566(n)+A002264(A126568(n))`
-/

namespace A179533.P4298515192135134849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126566 n + A002264 (A126568 n).toNat

end

end A179533.P4298515192135134849

/-!
# A179534: Number of labeled split graphs on n vertices.

The programs for A179534, there is no canonical definition to state claims against.
-/

/-! ## A179534.P15234343843689519142

`A047863(n+1)-(n+1)*A047863(n)`
-/

namespace A179534.P15234343843689519142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047863 (n + 1) - (n + 1 : ℤ) * A047863 n

end

end A179534.P15234343843689519142

/-! ## A179534.P14571751542543054929

`Δ[A047863(n)]-n*A047863(n)`
-/

namespace A179534.P14571751542543054929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A047863 n

end

end A179534.P14571751542543054929

/-!
# A179538: Numbers 2n+1 for which A003558(n), n>=1, are record values of A003558.

The programs for A179538, there is no canonical definition to state claims against.
-/

/-! ## A179538.P18172790432804278702

`A051445(record[A003558(n)])`
-/

namespace A179538.P18172790432804278702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P18172790432804278702

/-! ## A179538.P5360291664151418196

`A051445(record[A053447(n)])`
-/

namespace A179538.P5360291664151418196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P5360291664151418196

/-! ## A179538.P4389269342565702468

`A307437(record[A003558(n)])`
-/

namespace A179538.P4389269342565702468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307437 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P4389269342565702468

/-! ## A179538.P18331384804085835757

`A341845(record[A003558(n)])`
-/

namespace A179538.P18331384804085835757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P18331384804085835757

/-! ## A179538.P9991422339852580603

`A341845(record[A053447(n)])`
-/

namespace A179538.P9991422339852580603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P9991422339852580603

/-! ## A179538.P16253526148997001461

`A051445(record[A055388(n+1)/2])`
-/

namespace A179538.P16253526148997001461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A179538.P16253526148997001461

/-! ## A179538.P617644050685783530

`A049283(record[A055388(n+1)])`
-/

namespace A179538.P617644050685783530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P617644050685783530

/-! ## A179538.P7525843543651955002

`A061026(record[A055388(n+1)])`
-/

namespace A179538.P7525843543651955002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P7525843543651955002

/-! ## A179538.P3715598165576698487

`A307437(record[A007735(n+1)])`
-/

namespace A179538.P3715598165576698487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307437 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P3715598165576698487

/-! ## A179538.P10224465827373166323

`A049283(record[2*A003558(n)])`
-/

namespace A179538.P10224465827373166323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P10224465827373166323

/-! ## A179538.P7477955862316956965

`A061026(record[2*A003558(n)])`
-/

namespace A179538.P7477955862316956965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P7477955862316956965

/-! ## A179538.P14475407530045319473

`A061026(record[2*A053447(n)])`
-/

namespace A179538.P14475407530045319473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P14475407530045319473

/-! ## A179538.P3441424679367291466

`A049283(record[lcm(2, A002326(n))])`
-/

namespace A179538.P3441424679367291466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002326 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179538.P3441424679367291466

/-! ## A179538.P8149287575827363790

`A049283(A005843(record[A003558(n)]))`
-/

namespace A179538.P8149287575827363790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A179538.P8149287575827363790

/-! ## A179538.P11769118442456531871

`A061026(record[A005843(A003558(n))])`
-/

namespace A179538.P11769118442456531871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003558 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179538.P11769118442456531871

/-!
# A179539: a(0) = 1, a(1) = 0, a(n) = 2*n*(a(n-1) + a(n-2)), n > 1.

The programs for A179539, the canonical program `A179539.P17410157123244790231` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179539 has offset 0).

The definition of A179539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(a(n-1)+a(n-2))` (program `A179539.P17410157123244790231`, by `A179539.P17410157123244790231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179539.P17410157123244790231

`2*n*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179539

/-- `2*n*(a(n-1)+a(n-2))` -/
def P17410157123244790231.Spec : Prop :=
  ∀ n, (P17410157123244790231.a n : ℤ) = A179539 n

theorem P17410157123244790231.correct : P17410157123244790231.Spec := by
  intro n
  simp only [A179539]

end A179539

/-! ## A179539.P5396828982191304872

`n*2*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A179539.P5396828982191304872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (2 * (a (n - 1) - (-a (n - 2))))

end

end A179539.P5396828982191304872

namespace A179539

/-- `n*2*(a(n-1)-floor(-a(n-2)))` -/
def P5396828982191304872.Spec : Prop :=
  ∀ n, P5396828982191304872.a n = A179539 n

end A179539

/-! ## A179539.P592790449292962288

`n*2*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A179539.P592790449292962288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (2 * (a (n - 1) - (-a (n - 2))))

end

end A179539.P592790449292962288

namespace A179539

/-- `n*2*(a(n-1)-round(-a(n-2)))` -/
def P592790449292962288.Spec : Prop :=
  ∀ n, P592790449292962288.a n = A179539 n

end A179539

/-! ## A179539.P4737712083120094797

`n*2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=0, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A179539.P4737712083120094797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  (n : ℤ) * (2 * (a (n - 1) - (-a (n - 2))))

end

end A179539.P4737712083120094797

namespace A179539

/-- `n*2*(a(n-1)-ceil(-a(n-2)))` -/
def P4737712083120094797.Spec : Prop :=
  ∀ n, P4737712083120094797.a n = A179539 n

end A179539

/-! ## A179539.P10394239926060971330

`A142703(n+1)-A179540(n)`
-/

namespace A179539.P10394239926060971330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142703 (n + 1) - A179540 n

end

end A179539.P10394239926060971330

namespace A179539

/-- `A142703(n+1)-A179540(n)` -/
def P10394239926060971330.Spec : Prop :=
  ∀ n, P10394239926060971330.a n = A179539 n

end A179539

/-!
# A179540: a(0)=0, a(1)=1, a(n)=2*n*(a(n-1)+a(n-2)), n>1.

The programs for A179540, the canonical program `A179540.P4432817418704398923` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179540 has offset 0).

The definition of A179540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(a(n-1)+a(n-2))` (program `A179540.P4432817418704398923`, by `A179540.P4432817418704398923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179540.P4432817418704398923

`2*n*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179540

/-- `2*n*(a(n-1)+a(n-2))` -/
def P4432817418704398923.Spec : Prop :=
  ∀ n, (P4432817418704398923.a n : ℤ) = A179540 n

theorem P4432817418704398923.correct : P4432817418704398923.Spec := by
  intro n
  simp only [A179540]

end A179540

/-! ## A179540.P6514868976072278977

`(a(n-1)-floor(-a(n-2)))*2*n` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A179540.P6514868976072278977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * (2 * n : ℤ)

end

end A179540.P6514868976072278977

namespace A179540

/-- `(a(n-1)-floor(-a(n-2)))*2*n` -/
def P6514868976072278977.Spec : Prop :=
  ∀ n, P6514868976072278977.a n = A179540 n

end A179540

/-! ## A179540.P3077190171698986262

`(a(n-1)-round(-a(n-2)))*2*n` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A179540.P3077190171698986262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * (2 * n : ℤ)

end

end A179540.P3077190171698986262

namespace A179540

/-- `(a(n-1)-round(-a(n-2)))*2*n` -/
def P3077190171698986262.Spec : Prop :=
  ∀ n, P3077190171698986262.a n = A179540 n

end A179540

/-! ## A179540.P18258190161458793140

`(2-(4/2-a(n-1)-a(n-2)))*2*n` with `a(0)=0, a(1)=1`
-/

namespace A179540.P18258190161458793140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))) * (2 * n : ℚ)

end

end A179540.P18258190161458793140

namespace A179540

/-- `(2-(4/2-a(n-1)-a(n-2)))*2*n` -/
def P18258190161458793140.Spec : Prop :=
  ∀ n, P18258190161458793140.a n = (A179540 n : ℚ)

end A179540

/-! ## A179540.P6686364785233150194

`A053871(n+1)/2`
-/

namespace A179540.P6686364785233150194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053871 (n + 1) : ℚ) / 2

end

end A179540.P6686364785233150194

namespace A179540

/-- `A053871(n+1)/2` -/
def P6686364785233150194.Spec : Prop :=
  ∀ n, P6686364785233150194.a n = (A179540 n : ℚ)

end A179540

/-! ## A179540.P16098339064503667033

`n*A165968(n+1)`
-/

namespace A179540.P16098339064503667033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A165968 (n + 1)

end

end A179540.P16098339064503667033

namespace A179540

/-- `n*A165968(n+1)` -/
def P16098339064503667033.Spec : Prop :=
  ∀ n, P16098339064503667033.a n = A179540 n

end A179540

/-! ## A179540.P16209907544240074072

`A055140(∑[n+1])/2`
-/

namespace A179540.P16209907544240074072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055140 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A179540.P16209907544240074072

namespace A179540

/-- `A055140(∑[n+1])/2` -/
def P16209907544240074072.Spec : Prop :=
  ∀ n, P16209907544240074072.a n = (A179540 n : ℚ)

end A179540

/-! ## A179540.P604967374233049641

`(a(n-1)+a(n-2))*A004277(n)` with `a(0)=0, a(1)=1`
-/

namespace A179540.P604967374233049641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * A004277 n

end

end A179540.P604967374233049641

namespace A179540

/-- `(a(n-1)+a(n-2))*A004277(n)` -/
def P604967374233049641.Spec : Prop :=
  ∀ n, P604967374233049641.a n = A179540 n

end A179540

/-!
# A179542: Trajectory of 1 under the morphism 1->(1,2,3), 2->(1,2), 3->(1) related to the heptagon and A006356.

The programs for A179542, there is no canonical definition to state claims against.
-/

/-! ## A179542.P5331753947522836820

`gcd(A040008(A000211(n)), A339277(n))`
-/

namespace A179542.P5331753947522836820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040008 (A000211 n).toNat) (A339277 n)

end

end A179542.P5331753947522836820

/-! ## A179542.P14669496080774796203

`gcd(A064550(A160536(n)), A192953(n))`
-/

namespace A179542.P14669496080774796203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064550 (A160536 n).toNat) (A192953 n)

end

end A179542.P14669496080774796203

/-! ## A179542.P2067756811451427934

`gcd(4-A130784(n), A204898(A286231(n+1)))`
-/

namespace A179542.P2067756811451427934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 - A130784 n) (A204898 (A286231 (n + 1)).toNat)

end

end A179542.P2067756811451427934

/-! ## A179542.P12700474258540721295

`gcd(A131756(2*(n+1)), A131770(A131782(n+1)))`
-/

namespace A179542.P12700474258540721295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131756 (2 * (n + 1))) (A131770 (A131782 (n + 1)).toNat)

end

end A179542.P12700474258540721295

/-! ## A179542.P14131669842856427267

`gcd(A007094(A000045(n+1)), A040436(n))`
-/

namespace A179542.P14131669842856427267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007094 (A000045 (n + 1)).toNat) (A040436 n)

end

end A179542.P14131669842856427267

/-!
# A179543: Small values of the index immediately eliminated by a lemma arising in well-rounded sublattices of the hexagonal lattice.

The programs for A179543, there is no canonical definition to state claims against.
-/

/-! ## A179543.P13522260130334581252

`lt[A049242(A049257(2*n+3)), A049237(2*(n+2))]`
-/

namespace A179543.P13522260130334581252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049242 (A049257 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179543.P13522260130334581252

/-! ## A179543.P12792653066140474891

`lt[A049220(A049257(2*n+3)), A049256(2*n+3)]`
-/

namespace A179543.P12792653066140474891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049220 (A049257 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049256 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A179543.P12792653066140474891

/-!
# A179544: Number of Dyck paths of semilength n for which the multiset of ascent lengths and the multiset of descent lengths are the same partition of n.

The programs for A179544, there is no canonical definition to state claims against.
-/

/-! ## A179544.P2525997797627361500

`A033270(A006189(n))+1`
-/

namespace A179544.P2525997797627361500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A006189 n).toNat + 1

end

end A179544.P2525997797627361500

/-! ## A179544.P10623177711289116168

`A194640(A105696(n)-n)+n`
-/

namespace A179544.P10623177711289116168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A105696 n - (n : ℤ)).toNat + (n : ℤ)

end

end A179544.P10623177711289116168

/-! ## A179544.P11573221536039277065

`A230980(A036987(n)+A006189(n))`
-/

namespace A179544.P11573221536039277065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A036987 n + A006189 n).toNat

end

end A179544.P11573221536039277065

/-! ## A179544.P7877167738276299442

`A230980(A092303(n)+A006189(n))`
-/

namespace A179544.P7877167738276299442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A092303 n + A006189 n).toNat

end

end A179544.P7877167738276299442

/-! ## A179544.P12211314113483482573

`A230980(A210391(n)+A006189(n))`
-/

namespace A179544.P12211314113483482573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A210391 n + A006189 n).toNat

end

end A179544.P12211314113483482573

/-!
# A179545: The sum of the elements within a jump in a Sieve of Eratosthenes table.

The programs for A179545, the canonical program `A179545.P8571900986108654706` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179545 has offset 1).

The definition of A179545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179545.P8571900986108654706

`3*C(A000040(n+1), 2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179545

/-- `3*C(A000040(n+1), 2)` -/
def P8571900986108654706.Spec : Prop :=
  ∀ n, (P8571900986108654706.a n : ℤ) = A179545 (n + 1)

theorem P8571900986108654706.correct : P8571900986108654706.Spec := by
  intro n
  simp only [A179545, Nat.add_sub_cancel]

end A179545

/-! ## A179545.P12026034491258049243

`A179628(n)+A108313(n+1)`
-/

namespace A179545.P12026034491258049243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179628 n + A108313 (n + 1)

end

end A179545.P12026034491258049243

namespace A179545

/-- `A179628(n)+A108313(n+1)` -/
def P12026034491258049243.Spec : Prop :=
  ∀ n, P12026034491258049243.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P38773540569525457

`∑[3*A371201(n)]`
-/

namespace A179545.P38773540569525457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A371201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179545.P38773540569525457

namespace A179545

/-- `∑[3*A371201(n)]` -/
def P38773540569525457.Spec : Prop :=
  ∀ n, P38773540569525457.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P3086544702966521888

`3*A008837(n+1)`
-/

namespace A179545.P3086544702966521888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008837 (n + 1)

end

end A179545.P3086544702966521888

namespace A179545

/-- `3*A008837(n+1)` -/
def P3086544702966521888.Spec : Prop :=
  ∀ n, P3086544702966521888.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P6604010626207676764

`3*(A072205(n+1)-1)`
-/

namespace A179545.P6604010626207676764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A072205 (n + 1) - 1)

end

end A179545.P6604010626207676764

namespace A179545

/-- `3*(A072205(n+1)-1)` -/
def P6604010626207676764.Spec : Prop :=
  ∀ n, P6604010626207676764.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P13590090360291412675

`3/2*A036689(n+1)`
-/

namespace A179545.P13590090360291412675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A036689 (n + 1) : ℚ)

end

end A179545.P13590090360291412675

namespace A179545

/-- `3/2*A036689(n+1)` -/
def P13590090360291412675.Spec : Prop :=
  ∀ n, P13590090360291412675.a n = (A179545 (n + 1) : ℚ)

end A179545

/-! ## A179545.P7376176137122124459

`3*C(A006093(n+1)+1, 2)`
-/

namespace A179545.P7376176137122124459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A006093 (n + 1) + 1).toNat 2

end

end A179545.P7376176137122124459

namespace A179545

/-- `3*C(A006093(n+1)+1, 2)` -/
def P7376176137122124459.Spec : Prop :=
  ∀ n, (P7376176137122124459.a n : ℤ) = A179545 (n + 1)

theorem P7376176137122124459.correct : P7376176137122124459.Spec := by
  intro n
  simp only [A179545, Nat.add_sub_cancel, A179545.P7376176137122124459.a, A179545.P8571900986108654706.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179545

/-! ## A179545.P6231457646651010366

`3*C(A014692(n+1)+n, 2)`
-/

namespace A179545.P6231457646651010366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A014692 (n + 1) + (n : ℤ)).toNat 2

end

end A179545.P6231457646651010366

namespace A179545

/-- `3*C(A014692(n+1)+n, 2)` -/
def P6231457646651010366.Spec : Prop :=
  ∀ n, (P6231457646651010366.a n : ℤ) = A179545 (n + 1)

theorem P6231457646651010366.correct : P6231457646651010366.Spec := by
  intro n
  simp only [A179545, Nat.add_sub_cancel, A179545.P6231457646651010366.a, A179545.P8571900986108654706.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179545

/-! ## A179545.P1961630458182823644

`A116995(n+1)-Δ[A007504(n)]`
-/

namespace A179545.P1961630458182823644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116995 (n + 1) - (f1 (n + 1) - f1 n)

end

end A179545.P1961630458182823644

namespace A179545

/-- `A116995(n+1)-Δ[A007504(n)]` -/
def P1961630458182823644.Spec : Prop :=
  ∀ n, P1961630458182823644.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P6784232431805080759

`A036689(n+1)+A008837(n+1)`
-/

namespace A179545.P6784232431805080759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A008837 (n + 1)

end

end A179545.P6784232431805080759

namespace A179545

/-- `A036689(n+1)+A008837(n+1)` -/
def P6784232431805080759.Spec : Prop :=
  ∀ n, P6784232431805080759.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P2245798787728474896

`A306190(n+1)+A072205(n+1)`
-/

namespace A179545.P2245798787728474896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + A072205 (n + 1)

end

end A179545.P2245798787728474896

namespace A179545

/-- `A306190(n+1)+A072205(n+1)` -/
def P2245798787728474896.Spec : Prop :=
  ∀ n, P2245798787728474896.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P6825268219230209878

`A116995(n+1)-A000040(n+1)`
-/

namespace A179545.P6825268219230209878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116995 (n + 1) - A000040 (n + 1)

end

end A179545.P6825268219230209878

namespace A179545

/-- `A116995(n+1)-A000040(n+1)` -/
def P6825268219230209878.Spec : Prop :=
  ∀ n, P6825268219230209878.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P11538400153025563926

`A117961(n+1)-A034953(n+1)`
-/

namespace A179545.P11538400153025563926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) - A034953 (n + 1)

end

end A179545.P11538400153025563926

namespace A179545

/-- `A117961(n+1)-A034953(n+1)` -/
def P11538400153025563926.Spec : Prop :=
  ∀ n, P11538400153025563926.a n = A179545 (n + 1)

theorem P11538400153025563926.correct : P11538400153025563926.Spec := by
  intro n
  simp only [A179545, Nat.add_sub_cancel, A179545.P11538400153025563926.a, A179545.P8571900986108654706.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034953, A034953.P12568728140146877898.a, A117961, A117961.P13445040666802526157.a, A000217, A000217.P10269402890581615239.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179545

/-! ## A179545.P3816290587695939336

`A267144(n+1)-A116995(n+1)`
-/

namespace A179545.P3816290587695939336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267144 (n + 1) - A116995 (n + 1)

end

end A179545.P3816290587695939336

namespace A179545

/-- `A267144(n+1)-A116995(n+1)` -/
def P3816290587695939336.Spec : Prop :=
  ∀ n, P3816290587695939336.a n = A179545 (n + 1)

theorem P3816290587695939336.correct : P3816290587695939336.Spec := by
  intro n
  simp only [A179545, Nat.add_sub_cancel, A179545.P3816290587695939336.a, A179545.P8571900986108654706.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A116995, A116995.P12832703324765891542.a, A267144, A267144.P16510657683815295351.a, A000326, A000326.P15785277619453972366.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A179545

/-! ## A179545.P13840072398895055758

`A005722(n+1)+A034953(n+1)-1`
-/

namespace A179545.P13840072398895055758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1) + (A034953 (n + 1) - 1)

end

end A179545.P13840072398895055758

namespace A179545

/-- `A005722(n+1)+A034953(n+1)-1` -/
def P13840072398895055758.Spec : Prop :=
  ∀ n, P13840072398895055758.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P8626024700584558202

`3*(A034953(n+1)-A000040(n+1))`
-/

namespace A179545.P8626024700584558202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A034953 (n + 1) - A000040 (n + 1))

end

end A179545.P8626024700584558202

namespace A179545

/-- `3*(A034953(n+1)-A000040(n+1))` -/
def P8626024700584558202.Spec : Prop :=
  ∀ n, P8626024700584558202.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P17503215685022487874

`3*(A001248(n+1)-A034953(n+1))`
-/

namespace A179545.P17503215685022487874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A001248 (n + 1) - A034953 (n + 1))

end

end A179545.P17503215685022487874

namespace A179545

/-- `3*(A001248(n+1)-A034953(n+1))` -/
def P17503215685022487874.Spec : Prop :=
  ∀ n, P17503215685022487874.a n = A179545 (n + 1)

end A179545

/-! ## A179545.P5185181894402078967

`(A267144(n+1)-A000040(n+1))/2`
-/

namespace A179545.P5185181894402078967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267144 (n + 1) - A000040 (n + 1) : ℚ) / 2

end

end A179545.P5185181894402078967

namespace A179545

/-- `(A267144(n+1)-A000040(n+1))/2` -/
def P5185181894402078967.Spec : Prop :=
  ∀ n, P5185181894402078967.a n = (A179545 (n + 1) : ℚ)

end A179545

/-! ## A179545.P10482408306524677132

`A001748(n+1)/2*A006093(n+1)`
-/

namespace A179545.P10482408306524677132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 2 * (A006093 (n + 1) : ℚ)

end

end A179545.P10482408306524677132

namespace A179545

/-- `A001748(n+1)/2*A006093(n+1)` -/
def P10482408306524677132.Spec : Prop :=
  ∀ n, P10482408306524677132.a n = (A179545 (n + 1) : ℚ)

end A179545

/-!
# A179546: a(n) = p^2*(p + 3)/2, where p = prime(n).

The programs for A179546, the canonical program `A179546.P2172342132831048249` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179546 has offset 1).

The definition of A179546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179546.P2172342132831048249

`A000040(n+1)²*(A000040(n+1)+3)/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179546

/-- `A000040(n+1)²*(A000040(n+1)+3)/2` -/
def P2172342132831048249.Spec : Prop :=
  ∀ n, P2172342132831048249.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P7657866437763579752

`A116995(n+1)+A066886(n+1)`
-/

namespace A179546.P7657866437763579752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116995 (n + 1) + A066886 (n + 1)

end

end A179546.P7657866437763579752

namespace A179546

/-- `A116995(n+1)+A066886(n+1)` -/
def P7657866437763579752.Spec : Prop :=
  ∀ n, P7657866437763579752.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P4255107128031221534

`A138416(n+1)+A079704(n+1)`
-/

namespace A179546.P4255107128031221534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) + A079704 (n + 1)

end

end A179546.P4255107128031221534

namespace A179546

/-- `A138416(n+1)+A079704(n+1)` -/
def P4255107128031221534.Spec : Prop :=
  ∀ n, P4255107128031221534.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P15880425656451435355

`A135178(n+1)-A138416(n+1)`
-/

namespace A179546.P15880425656451435355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A138416 (n + 1)

end

end A179546.P15880425656451435355

namespace A179546

/-- `A135178(n+1)-A138416(n+1)` -/
def P15880425656451435355.Spec : Prop :=
  ∀ n, P15880425656451435355.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P776861495325027869

`A138416(n+1)+2*A001248(n+1)`
-/

namespace A179546.P776861495325027869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) + 2 * A001248 (n + 1)

end

end A179546.P776861495325027869

namespace A179546

/-- `A138416(n+1)+2*A001248(n+1)` -/
def P776861495325027869.Spec : Prop :=
  ∀ n, P776861495325027869.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P8958716413956052948

`(A271511(n+1)-1)*A000040(n+1)`
-/

namespace A179546.P8958716413956052948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271511 (n + 1) - 1) * A000040 (n + 1)

end

end A179546.P8958716413956052948

namespace A179546

/-- `(A271511(n+1)-1)*A000040(n+1)` -/
def P8958716413956052948.Spec : Prop :=
  ∀ n, P8958716413956052948.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P10760899765146254339

`A001248(n+1)+A135178(n+1)/2`
-/

namespace A179546.P10760899765146254339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) : ℚ) + (A135178 (n + 1) : ℚ) / 2

end

end A179546.P10760899765146254339

namespace A179546

/-- `A001248(n+1)+A135178(n+1)/2` -/
def P10760899765146254339.Spec : Prop :=
  ∀ n, P10760899765146254339.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P6007651405697821450

`A079704(n+1)+A135177(n+1)/2`
-/

namespace A179546.P6007651405697821450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) + (A135177 (n + 1) : ℚ) / 2

end

end A179546.P6007651405697821450

namespace A179546

/-- `A079704(n+1)+A135177(n+1)/2` -/
def P6007651405697821450.Spec : Prop :=
  ∀ n, P6007651405697821450.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P17757243874067824590

`(A135178(n+1)+A079704(n+1))/2`
-/

namespace A179546.P17757243874067824590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135178 (n + 1) + A079704 (n + 1) : ℚ) / 2

end

end A179546.P17757243874067824590

namespace A179546

/-- `(A135178(n+1)+A079704(n+1))/2` -/
def P17757243874067824590.Spec : Prop :=
  ∀ n, P17757243874067824590.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P15655370373216198933

`A135178(n+1)-A135177(n+1)/2`
-/

namespace A179546.P15655370373216198933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135178 (n + 1) : ℚ) - (A135177 (n + 1) : ℚ) / 2

end

end A179546.P15655370373216198933

namespace A179546

/-- `A135178(n+1)-A135177(n+1)/2` -/
def P15655370373216198933.Spec : Prop :=
  ∀ n, P15655370373216198933.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P12834671815113259106

`A138416(n+1)+2*A000040(n+1)²`
-/

namespace A179546.P12834671815113259106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) + 2 * A000040 (n + 1) ^ 2

end

end A179546.P12834671815113259106

namespace A179546

/-- `A138416(n+1)+2*A000040(n+1)²` -/
def P12834671815113259106.Spec : Prop :=
  ∀ n, P12834671815113259106.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P5550227492769867559

`A000040(n+1)²+A135178(n+1)/2`
-/

namespace A179546.P5550227492769867559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2 : ℚ) + (A135178 (n + 1) : ℚ) / 2

end

end A179546.P5550227492769867559

namespace A179546

/-- `A000040(n+1)²+A135178(n+1)/2` -/
def P5550227492769867559.Spec : Prop :=
  ∀ n, P5550227492769867559.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P14749312422584825380

`A000040(n+1)²/2*A113935(n+1)`
-/

namespace A179546.P14749312422584825380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2 : ℚ) / 2 * (A113935 (n + 1) : ℚ)

end

end A179546.P14749312422584825380

namespace A179546

/-- `A000040(n+1)²/2*A113935(n+1)` -/
def P14749312422584825380.Spec : Prop :=
  ∀ n, P14749312422584825380.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P12468598899384089615

`A036689(n+1)+A138416(n+1)+A036690(n+1)`
-/

namespace A179546.P12468598899384089615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + (A138416 (n + 1) + A036690 (n + 1))

end

end A179546.P12468598899384089615

namespace A179546

/-- `A036689(n+1)+A138416(n+1)+A036690(n+1)` -/
def P12468598899384089615.Spec : Prop :=
  ∀ n, P12468598899384089615.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P15500344755919198072

`(A034953(n+1)+A000040(n+1))*A000040(n+1)`
-/

namespace A179546.P15500344755919198072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034953 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A179546.P15500344755919198072

namespace A179546

/-- `(A034953(n+1)+A000040(n+1))*A000040(n+1)` -/
def P15500344755919198072.Spec : Prop :=
  ∀ n, P15500344755919198072.a n = A179546 (n + 1)

end A179546

/-! ## A179546.P8975730840613500677

`A079704(n+1)+A138407(n+1)/A079704(n+1)`
-/

namespace A179546.P8975730840613500677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) + (A138407 (n + 1) : ℚ) / (A079704 (n + 1) : ℚ)

end

end A179546.P8975730840613500677

namespace A179546

/-- `A079704(n+1)+A138407(n+1)/A079704(n+1)` -/
def P8975730840613500677.Spec : Prop :=
  ∀ n, P8975730840613500677.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P9737147011155415011

`(A138459(n+1)+A138434(n+1))/A127920(n+1)`
-/

namespace A179546.P9737147011155415011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 1) + A138434 (n + 1) : ℚ) / (A127920 (n + 1) : ℚ)

end

end A179546.P9737147011155415011

namespace A179546

/-- `(A138459(n+1)+A138434(n+1))/A127920(n+1)` -/
def P9737147011155415011.Spec : Prop :=
  ∀ n, P9737147011155415011.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P6596931314155834890

`A138416(n+1)+A138407(n+1)/A138416(n+1)`
-/

namespace A179546.P6596931314155834890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138416 (n + 1) : ℚ) + (A138407 (n + 1) : ℚ) / (A138416 (n + 1) : ℚ)

end

end A179546.P6596931314155834890

namespace A179546

/-- `A138416(n+1)+A138407(n+1)/A138416(n+1)` -/
def P6596931314155834890.Spec : Prop :=
  ∀ n, P6596931314155834890.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P17628777119822366791

`A138416(n+1)+A138412(n+1)/A138423(n+1)`
-/

namespace A179546.P17628777119822366791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138416 (n + 1) : ℚ) + (A138412 (n + 1) : ℚ) / (A138423 (n + 1) : ℚ)

end

end A179546.P17628777119822366791

namespace A179546

/-- `A138416(n+1)+A138412(n+1)/A138423(n+1)` -/
def P17628777119822366791.Spec : Prop :=
  ∀ n, P17628777119822366791.a n = (A179546 (n + 1) : ℚ)

end A179546

/-! ## A179546.P11634935243266012497

`A138416(n+1)+A138456(n+1)/A138422(n+1)`
-/

namespace A179546.P11634935243266012497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138416 (n + 1) : ℚ) + (A138456 (n + 1) : ℚ) / (A138422 (n + 1) : ℚ)

end

end A179546.P11634935243266012497

namespace A179546

/-- `A138416(n+1)+A138456(n+1)/A138422(n+1)` -/
def P11634935243266012497.Spec : Prop :=
  ∀ n, P11634935243266012497.a n = (A179546 (n + 1) : ℚ)

end A179546

/-!
# A179547: Transcendental signature sequence of Pi.

The programs for A179547, there is no canonical definition to state claims against.
-/

/-! ## A179547.P4694806217614092423

`A023133((n+1)%A080558(n))`
-/

namespace A179547.P4694806217614092423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (Int.tmod (n + 1 : ℤ) (A080558 n)).toNat

end

end A179547.P4694806217614092423

/-! ## A179547.P15570507216804698108

`A023133(n+1)^A059341(A025747(n))`
-/

namespace A179547.P15570507216804698108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023133 (n + 1) : ℚ) ^ (A059341 (A025747 n).toNat : ℤ)

end

end A179547.P15570507216804698108

/-! ## A179547.P4711925496698957645

`A023133(n+1)^A341219(A210391(n))`
-/

namespace A179547.P4711925496698957645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023133 (n + 1) : ℚ) ^ (A341219 (A210391 n).toNat : ℤ)

end

end A179547.P4711925496698957645

/-! ## A179547.P13271814698093861543

`A023133(n+1)%A004396(A080557(n))`
-/

namespace A179547.P13271814698093861543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023133 (n + 1)) (A004396 (A080557 n).toNat)

end

end A179547.P13271814698093861543

/-!
# A179548: Transcendental signature sequence of e.

The programs for A179548, there is no canonical definition to state claims against.
-/

/-! ## A179548.P2682199221784779930

`dr(A023119(n+1)-A184955(n))`
-/

namespace A179548.P2682199221784779930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A023119 (n + 1) - A184955 n)

end

end A179548.P2682199221784779930

/-! ## A179548.P14477985202732980768

`dr(A023131(n+1)-A184955(n))`
-/

namespace A179548.P14477985202732980768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A023131 (n + 1) - A184955 n)

end

end A179548.P14477985202732980768

/-! ## A179548.P15873347495792479444

`dr(A118276(n+1)-A184955(n))`
-/

namespace A179548.P15873347495792479444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A118276 (n + 1) - A184955 n)

end

end A179548.P15873347495792479444

/-! ## A179548.P14174897219259141690

`dr(A118276(A246337(n+1)))`
-/

namespace A179548.P14174897219259141690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A118276 (A246337 (n + 1)).toNat)

end

end A179548.P14174897219259141690

/-! ## A179548.P418778748610858505

`A118276(n+1)^A127187(A205295(n))`
-/

namespace A179548.P418778748610858505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118276 (n + 1) : ℚ) ^ (A127187 (A205295 n).toNat : ℤ)

end

end A179548.P418778748610858505

/-!
# A179549: Primes p such that p minus the sum of the square of its digits yields a prime.

The programs for A179549, there is no canonical definition to state claims against.
-/

/-! ## A179549.P3407141533554209724

`A076163(A293754(n+2))`
-/

namespace A179549.P3407141533554209724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076163 (A293754 (n + 2)).toNat

end

end A179549.P3407141533554209724

/-! ## A179549.P16032115119123490136

`∩[A076163(n+1), A356833(n+1)]`
-/

namespace A179549.P16032115119123490136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179549.P16032115119123490136

/-!
# A179550: Primes p such that p plus or minus the sum of its digits squared yields a prime in both cases.

The programs for A179550, there is no canonical definition to state claims against.
-/

/-! ## A179550.P3833105881026001383

`∩[A076162(n+1), A076163(n+1)]`
-/

namespace A179550.P3833105881026001383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179550.P3833105881026001383

/-! ## A179550.P8264474629893839020

`∩[A076162(n+1), A179549(n+1)]`
-/

namespace A179550.P8264474629893839020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179550.P8264474629893839020

/-! ## A179550.P7719832335823616844

`∩[A076161(n+1), A076163(n+1)]`
-/

namespace A179550.P7719832335823616844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179550.P7719832335823616844

/-! ## A179550.P16665328179394770721

`∩[A076161(n+1), A179549(n+1)]`
-/

namespace A179550.P16665328179394770721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179550.P16665328179394770721

/-!
# A179551: Primes p such that p plus the sum of cubes of its digits yields a prime.

The programs for A179551, there is no canonical definition to state claims against.
-/

/-! ## A179551.P1186860244401702621

`∩[A166561(n+1), A244644(n)]`
-/

namespace A179551.P1186860244401702621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179551.P1186860244401702621

/-! ## A179551.P12579125673516198035

`∩[A023209(n+1), A260647(n+1)]`
-/

namespace A179551.P12579125673516198035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179551.P12579125673516198035

/-!
# A179554: a(n) = ( ( a(n-1) * a(n-5) )^2 + ( a(n-2) * a(n-3)^2 * a(n-4) )^2 ) / a(n-6), a(1) = ... = a(6) = 1.

The programs for A179554, the canonical program `A179554.P7172784091587430456` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179554 has offset 1).

The definition of A179554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179554.P7172784091587430456

`((a(n-1)*a(n-5))²+(a(n-2)*a(n-3)²*a(n-4))²)/a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179554

/-- `((a(n-1)*a(n-5))²+(a(n-2)*a(n-3)²*a(n-4))²)/a(n-6)` -/
def P7172784091587430456.Spec : Prop :=
  ∀ n, P7172784091587430456.a n = (A179554 (n + 1) : ℚ)

end A179554

/-!
# A179555: a(1)=10; a(n) = a(n-1)*10 - 1.

The programs for A179555, the canonical program `A179555.P5934856347835489996` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179555 has offset 1).

The definition of A179555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*10-1` (program `A179555.P5934856347835489996`, by `A179555.P5934856347835489996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179555.P9838167202721443345

`10*a(n-1)-1` with `a(0)=10`
-/

namespace A179555.P9838167202721443345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  10 * a (n - 1) - 1

end

end A179555.P9838167202721443345

namespace A179555

/-- `10*a(n-1)-1` -/
def P9838167202721443345.Spec : Prop :=
  ∀ n, P9838167202721443345.a n = A179555 (n + 1)

theorem P9838167202721443345.correct : P9838167202721443345.Spec := by
  intro n
  simp only [A179555, Nat.add_sub_cancel, A179555.P9838167202721443345.a, A179555.P5934856347835489996.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179555

/-! ## A179555.P5934856347835489996

`a(n-1)*10-1` with `a(0)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179555

/-- `a(n-1)*10-1` -/
def P5934856347835489996.Spec : Prop :=
  ∀ n, P5934856347835489996.a n = A179555 (n + 1)

theorem P5934856347835489996.correct : P5934856347835489996.Spec := by
  intro n
  simp only [A179555, Nat.add_sub_cancel]

end A179555

/-! ## A179555.P2584447707875591959

`ogf((10-11x)/(1-11x+10x^2))`
-/

namespace A179555.P2584447707875591959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -11] [1, -11, 10] n

end

end A179555.P2584447707875591959

namespace A179555

/-- `ogf((10-11x)/(1-11x+10x^2))` -/
def P2584447707875591959.Spec : Prop :=
  ∀ n, P2584447707875591959.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P8899390844576249901

`ceil(abs(10^(n+1)-10^n/9))`
-/

namespace A179555.P8899390844576249901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(10 ^ (n + 1) : ℚ) - (10 ^ n : ℚ) / 9|⌉

end

end A179555.P8899390844576249901

namespace A179555

/-- `ceil(abs(10^(n+1)-10^n/9))` -/
def P8899390844576249901.Spec : Prop :=
  ∀ n, P8899390844576249901.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P14482978789750295817

`A363377(Δ[n²])+1`
-/

namespace A179555.P14482978789750295817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A179555.P14482978789750295817

namespace A179555

/-- `A363377(Δ[n²])+1` -/
def P14482978789750295817.Spec : Prop :=
  ∀ n, P14482978789750295817.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P3416996728505102560

`A011557(n+1)-round(or(1, 10^n)/9)`
-/

namespace A179555.P3416996728505102560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9)

end

end A179555.P3416996728505102560

namespace A179555

/-- `A011557(n+1)-round(or(1, 10^n)/9)` -/
def P3416996728505102560.Spec : Prop :=
  ∀ n, P3416996728505102560.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P15555023871061763632

`A002283(n+1)+1-∑[round(10^(n-1))]`
-/

namespace A179555.P15555023871061763632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) + 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179555.P15555023871061763632

namespace A179555

/-- `A002283(n+1)+1-∑[round(10^(n-1))]` -/
def P15555023871061763632.Spec : Prop :=
  ∀ n, P15555023871061763632.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P14549051915535546734

`A062397(n)+A002282(n+1)`
-/

namespace A179555.P14549051915535546734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n + A002282 (n + 1)

end

end A179555.P14549051915535546734

namespace A179555

/-- `A062397(n)+A002282(n+1)` -/
def P14549051915535546734.Spec : Prop :=
  ∀ n, P14549051915535546734.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P4397298006636161707

`A011557(n+1)-A002275(n)`
-/

namespace A179555.P4397298006636161707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A002275 n

end

end A179555.P4397298006636161707

namespace A179555

/-- `A011557(n+1)-A002275(n)` -/
def P4397298006636161707.Spec : Prop :=
  ∀ n, P4397298006636161707.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P15497067492031467784

`A178500(n+1)-A002275(n)`
-/

namespace A179555.P15497067492031467784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) - A002275 n

end

end A179555.P15497067492031467784

namespace A179555

/-- `A178500(n+1)-A002275(n)` -/
def P15497067492031467784.Spec : Prop :=
  ∀ n, P15497067492031467784.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P10932523180711058653

`A178501(n+2)-A002275(n)`
-/

namespace A179555.P10932523180711058653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 2) - A002275 n

end

end A179555.P10932523180711058653

namespace A179555

/-- `A178501(n+2)-A002275(n)` -/
def P10932523180711058653.Spec : Prop :=
  ∀ n, P10932523180711058653.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P5576222748570822963

`∑[A063945(n+1)-A178501(n)]`
-/

namespace A179555.P5576222748570822963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063945 (n + 1) - A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179555.P5576222748570822963

namespace A179555

/-- `∑[A063945(n+1)-A178501(n)]` -/
def P5576222748570822963.Spec : Prop :=
  ∀ n, P5576222748570822963.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P13012912434406502276

`A011557(n+1)-A002276(n)/2`
-/

namespace A179555.P13012912434406502276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) - (A002276 n : ℚ) / 2

end

end A179555.P13012912434406502276

namespace A179555

/-- `A011557(n+1)-A002276(n)/2` -/
def P13012912434406502276.Spec : Prop :=
  ∀ n, P13012912434406502276.a n = (A179555 (n + 1) : ℚ)

end A179555

/-! ## A179555.P5745532939188978782

`A011557(n+1)-A002277(n)/3`
-/

namespace A179555.P5745532939188978782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) - (A002277 n : ℚ) / 3

end

end A179555.P5745532939188978782

namespace A179555

/-- `A011557(n+1)-A002277(n)/3` -/
def P5745532939188978782.Spec : Prop :=
  ∀ n, P5745532939188978782.a n = (A179555 (n + 1) : ℚ)

end A179555

/-! ## A179555.P5595737794259178277

`A011557(n+1)-A105279(n)/10`
-/

namespace A179555.P5595737794259178277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) - (A105279 n : ℚ) / 10

end

end A179555.P5595737794259178277

namespace A179555

/-- `A011557(n+1)-A105279(n)/10` -/
def P5595737794259178277.Spec : Prop :=
  ∀ n, P5595737794259178277.a n = (A179555 (n + 1) : ℚ)

end A179555

/-! ## A179555.P11282756930357474347

`A328333(2*n)+A050683(2*n+1)`
-/

namespace A179555.P11282756930357474347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 (2 * n) + A050683 (2 * n + 1)

end

end A179555.P11282756930357474347

namespace A179555

/-- `A328333(2*n)+A050683(2*n+1)` -/
def P11282756930357474347.Spec : Prop :=
  ∀ n, P11282756930357474347.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P907808104633240555

`A328333(2*n)+A070252(2*(n+1))`
-/

namespace A179555.P907808104633240555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 (2 * n) + A070252 (2 * (n + 1))

end

end A179555.P907808104633240555

namespace A179555

/-- `A328333(2*n)+A070252(2*(n+1))` -/
def P907808104633240555.Spec : Prop :=
  ∀ n, P907808104633240555.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P4411685835409463084

`A059482(n+1)+A059482(n)+A002275(n)`
-/

namespace A179555.P4411685835409463084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (n + 1) + (A059482 n + A002275 n)

end

end A179555.P4411685835409463084

namespace A179555

/-- `A059482(n+1)+A059482(n)+A002275(n)` -/
def P4411685835409463084.Spec : Prop :=
  ∀ n, P4411685835409463084.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P18434954025388296026

`A011557(n+1)+A011557(n)-A000042(n+1)`
-/

namespace A179555.P18434954025388296026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) + (A011557 n - A000042 (n + 1))

end

end A179555.P18434954025388296026

namespace A179555

/-- `A011557(n+1)+A011557(n)-A000042(n+1)` -/
def P18434954025388296026.Spec : Prop :=
  ∀ n, P18434954025388296026.a n = A179555 (n + 1)

end A179555

/-! ## A179555.P15100177906225471720

`A093143(n+1)+A093143(n+1)-A002275(n)`
-/

namespace A179555.P15100177906225471720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 1) + (A093143 (n + 1) - A002275 n)

end

end A179555.P15100177906225471720

namespace A179555

/-- `A093143(n+1)+A093143(n+1)-A002275(n)` -/
def P15100177906225471720.Spec : Prop :=
  ∀ n, P15100177906225471720.a n = A179555 (n + 1)

end A179555

/-!
# A179556: a(1) = 10; a(n) = a(n-1)*10 - 2^(n-2).

The programs for A179556, the canonical program `A179556.P5598439080363120753` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179556 has offset 1).

The definition of A179556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179556.P5598439080363120753

`10*a(n-1)-2^(n-1)` with `a(0)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179556

/-- `10*a(n-1)-2^(n-1)` -/
def P5598439080363120753.Spec : Prop :=
  ∀ n, P5598439080363120753.a n = (A179556 (n + 1) : ℚ)

end A179556

/-! ## A179556.P12197297569356423846

`a(n-1)*10-2^(n-1)` with `a(0)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179556.P12197297569356423846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) * 10 - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A179556.P12197297569356423846

namespace A179556

/-- `a(n-1)*10-2^(n-1)` -/
def P12197297569356423846.Spec : Prop :=
  ∀ n, P12197297569356423846.a n = (A179556 (n + 1) : ℚ)

end A179556

/-! ## A179556.P4870855094073806866

`ogf((10-21x)/(1-12x+20x^2))`
-/

namespace A179556.P4870855094073806866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -21] [1, -12, 20] n

end

end A179556.P4870855094073806866

namespace A179556

/-- `ogf((10-21x)/(1-12x+20x^2))` -/
def P4870855094073806866.Spec : Prop :=
  ∀ n, P4870855094073806866.a n = A179556 (n + 1)

end A179556

/-! ## A179556.P3948758413063036021

`abs(10*a(n-1)-A011782(n))` with `a(0)=10`
-/

namespace A179556.P3948758413063036021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |10 * a (n - 1) - A011782 n|

end

end A179556.P3948758413063036021

namespace A179556

/-- `abs(10*a(n-1)-A011782(n))` -/
def P3948758413063036021.Spec : Prop :=
  ∀ n, P3948758413063036021.a n = A179556 (n + 1)

end A179556

/-! ## A179556.P14254076727150179202

`abs(10*a(n-1)-A000079(n)/2)` with `a(0)=10`
-/

namespace A179556.P14254076727150179202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  |10 * a (n - 1) - (A000079 n : ℚ) / 2|

end

end A179556.P14254076727150179202

namespace A179556

/-- `abs(10*a(n-1)-A000079(n)/2)` -/
def P14254076727150179202.Spec : Prop :=
  ∀ n, P14254076727150179202.a n = (A179556 (n + 1) : ℚ)

end A179556

/-! ## A179556.P14129079494955287237

`10*ceil(a(n-1))-A166444(n+1)` with `a(0)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A179556.P14129079494955287237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  10 * a (n - 1) - A166444 (n + 1)

end

end A179556.P14129079494955287237

namespace A179556

/-- `10*ceil(a(n-1))-A166444(n+1)` -/
def P14129079494955287237.Spec : Prop :=
  ∀ n, P14129079494955287237.a n = A179556 (n + 1)

end A179556

/-! ## A179556.P14934032978757672232

`1/8*(2^n+79*10^n)`
-/

namespace A179556.P14934032978757672232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (2 ^ n + 79 * 10 ^ n : ℚ)

end

end A179556.P14934032978757672232

namespace A179556

/-- `1/8*(2^n+79*10^n)` -/
def P14934032978757672232.Spec : Prop :=
  ∀ n, P14934032978757672232.a n = (A179556 (n + 1) : ℚ)

end A179556

/-!
# A179557: a(1)=10; a(n) = a(n-1)*10 - (-1)^n.

The programs for A179557, the canonical program `A179557.P454823114462519614` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179557 has offset 1).

The definition of A179557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*10-(-1)^(n+1)` (program `A179557.P454823114462519614`, by `A179557.P454823114462519614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179557.P454823114462519614

`a(n-1)*10-(-1)^(n+1)` with `a(0)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179557

/-- `a(n-1)*10-(-1)^(n+1)` -/
def P454823114462519614.Spec : Prop :=
  ∀ n, P454823114462519614.a n = A179557 (n + 1)

theorem P454823114462519614.correct : P454823114462519614.Spec := by
  intro n
  simp only [A179557, Nat.add_sub_cancel]

end A179557

/-! ## A179557.P13177627225392217632

`9*a(n-1)+10*a(n-2)` with `a(0)=10, a(1)=99`
-/

namespace A179557.P13177627225392217632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 99] fun n a =>
  9 * a (n - 1) + 10 * a (n - 2)

end

end A179557.P13177627225392217632

namespace A179557

/-- `9*a(n-1)+10*a(n-2)` -/
def P13177627225392217632.Spec : Prop :=
  ∀ n, (P13177627225392217632.a n : ℤ) = A179557 (n + 1)

end A179557

/-! ## A179557.P5357504021644373595

`1/11*((-1)^n+109*10^n)`
-/

namespace A179557.P5357504021644373595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 11 * ((-1) ^ n + (109 * 10 ^ n : ℤ) : ℚ)

end

end A179557.P5357504021644373595

namespace A179557

/-- `1/11*((-1)^n+109*10^n)` -/
def P5357504021644373595.Spec : Prop :=
  ∀ n, P5357504021644373595.a n = (A179557 (n + 1) : ℚ)

theorem P5357504021644373595.correct : P5357504021644373595.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A179557, Nat.add_sub_cancel, A179557.P5357504021644373595.a, A179557.P454823114462519614.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A179557, Nat.add_sub_cancel, A179557.P5357504021644373595.a, A179557.P454823114462519614.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A179557

/-! ## A179557.P6505568382858038072

`ogf((10+9x)/(1-9x-10x^2))`
-/

namespace A179557.P6505568382858038072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 9] [1, -9, -10] n

end

end A179557.P6505568382858038072

namespace A179557

/-- `ogf((10+9x)/(1-9x-10x^2))` -/
def P6505568382858038072.Spec : Prop :=
  ∀ n, P6505568382858038072.a n = A179557 (n + 1)

end A179557

/-! ## A179557.P8901857492736996100

`(-1)^n+10*a(n-1)` with `a(0)=10`
-/

namespace A179557.P8901857492736996100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (-1) ^ n + 10 * a (n - 1)

end

end A179557.P8901857492736996100

namespace A179557

/-- `(-1)^n+10*a(n-1)` -/
def P8901857492736996100.Spec : Prop :=
  ∀ n, P8901857492736996100.a n = A179557 (n + 1)

theorem P8901857492736996100.correct : P8901857492736996100.Spec := by
  intro n
  simp only [A179557, Nat.add_sub_cancel, A179557.P8901857492736996100.a, A179557.P454823114462519614.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179557

/-! ## A179557.P9970245631191045824

`Δ[A002283(n)]+Δ[A056830(n)]`
-/

namespace A179557.P9970245631191045824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A179557.P9970245631191045824

namespace A179557

/-- `Δ[A002283(n)]+Δ[A056830(n)]` -/
def P9970245631191045824.Spec : Prop :=
  ∀ n, P9970245631191045824.a n = A179557 (n + 1)

end A179557

/-! ## A179557.P3251965078617477454

`Δ[A011557(n)]+Δ[A056830(n)]`
-/

namespace A179557.P3251965078617477454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A179557.P3251965078617477454

namespace A179557

/-- `Δ[A011557(n)]+Δ[A056830(n)]` -/
def P3251965078617477454.Spec : Prop :=
  ∀ n, P3251965078617477454.a n = A179557 (n + 1)

end A179557

/-! ## A179557.P15824221732794492026

`A015585(n+2)+Δ[A015585(n)]`
-/

namespace A179557.P15824221732794492026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 (n + 2) + (f1 (n + 1) - f1 n)

end

end A179557.P15824221732794492026

namespace A179557

/-- `A015585(n+2)+Δ[A015585(n)]` -/
def P15824221732794492026.Spec : Prop :=
  ∀ n, P15824221732794492026.a n = A179557 (n + 1)

end A179557

/-! ## A179557.P15829076610131962663

`Δ[xor(10*a(n-1), n%2)]` with `a(0)=1`
-/

namespace A179557.P15829076610131962663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (10 * f1 (n - 1)) (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179557.P15829076610131962663

namespace A179557

/-- `Δ[xor(10*a(n-1), n%2)]` -/
def P15829076610131962663.Spec : Prop :=
  ∀ n, P15829076610131962663.a n = A179557 (n + 1)

end A179557

/-! ## A179557.P4044564642964545118

`Δ[A266219(n)]`
-/

namespace A179557.P4044564642964545118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179557.P4044564642964545118

namespace A179557

/-- `Δ[A266219(n)]` -/
def P4044564642964545118.Spec : Prop :=
  ∀ n, P4044564642964545118.a n = A179557 (n + 1)

end A179557

/-!
# A179558: a(1)=10; a(n) = a(n-1)*10 - 5^(n-2).

The programs for A179558, the canonical program `A179558.P7573338265771787108` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179558 has offset 1).

The definition of A179558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179558.P7573338265771787108

`10*a(n-1)-5^(n-1)` with `a(0)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179558

/-- `10*a(n-1)-5^(n-1)` -/
def P7573338265771787108.Spec : Prop :=
  ∀ n, P7573338265771787108.a n = (A179558 (n + 1) : ℚ)

end A179558

/-! ## A179558.P5971372594345530139

`a(n-1)*10-5^(n-1)` with `a(0)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179558.P5971372594345530139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) * 10 - (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A179558.P5971372594345530139

namespace A179558

/-- `a(n-1)*10-5^(n-1)` -/
def P5971372594345530139.Spec : Prop :=
  ∀ n, P5971372594345530139.a n = (A179558 (n + 1) : ℚ)

end A179558

/-! ## A179558.P16758560582646246462

`1/5*(49*10^n+5^n)`
-/

namespace A179558.P16758560582646246462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (49 * 10 ^ n + 5 ^ n : ℚ)

end

end A179558.P16758560582646246462

namespace A179558

/-- `1/5*(49*10^n+5^n)` -/
def P16758560582646246462.Spec : Prop :=
  ∀ n, P16758560582646246462.a n = (A179558 (n + 1) : ℚ)

end A179558

/-!
# A179560: Number whose continued fraction is a run-length encoding of its own binary representation (in binary).

The programs for A179560, there is no canonical definition to state claims against.
-/

/-! ## A179560.P3824987518490992238

`A288220(A116942(2*n+5)*A162966(2*n+7))`
-/

namespace A179560.P3824987518490992238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (A116942 (2 * n + 5) * A162966 (2 * n + 7)).toNat

end

end A179560.P3824987518490992238

/-! ## A179560.P7491207591499070711

`A166141(xor(45, A023717(n)))`
-/

namespace A179560.P7491207591499070711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166141 (Int.xor 45 (A023717 n)).toNat

end

end A179560.P7491207591499070711

/-! ## A179560.P439710445232351540

`A174206(or(A002262(n), A284470(n+1)))`
-/

namespace A179560.P439710445232351540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174206 (Int.lor (A002262 n) (A284470 (n + 1))).toNat

end

end A179560.P439710445232351540

/-! ## A179560.P3511229905833289859

`A010060(A357627(2*n+3)-A002448(2*(n+2)))`
-/

namespace A179560.P3511229905833289859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A357627 (2 * n + 3) - A002448 (2 * (n + 2))).toNat

end

end A179560.P3511229905833289859

/-! ## A179560.P15524437177124582412

`A285136(A246274(n+1)^A138902(n))`
-/

namespace A179560.P15524437177124582412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (SequenceMachineLib.roundAway ((A246274 (n + 1) : ℚ) ^ (A138902 n : ℤ))).toNat

end

end A179560.P15524437177124582412

/-!
# A179561: Number whose continued fraction is a run-length encoding of its own binary representation (as the continued fraction).

The programs for A179561, there is no canonical definition to state claims against.
-/

/-! ## A179561.P13905942931995989273

`gcd(A001065(A164228(n)), A180446(n))`
-/

namespace A179561.P13905942931995989273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (A164228 n).toNat) (A180446 n)

end

end A179561.P13905942931995989273

/-!
# A179562: Number of permutations of [n] with the number moved left exceeding the number moved right by 1.

The programs for A179562, there is no canonical definition to state claims against.
-/

/-! ## A179562.P8005464225601407399

`A062866(A002061(n))-A122698(A002522(n))`
-/

namespace A179562.P8005464225601407399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062866 (A002061 n).toNat - A122698 (A002522 n).toNat

end

end A179562.P8005464225601407399

/-! ## A179562.P8353856128226060060

`A057427(A028391(n))*A062866(A002061(n))`
-/

namespace A179562.P8353856128226060060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028391 n).toNat * A062866 (A002061 n).toNat

end

end A179562.P8353856128226060060

/-! ## A179562.P1080131174697535765

`A062866(A002061(n))-A122698(A271293(n))`
-/

namespace A179562.P1080131174697535765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062866 (A002061 n).toNat - A122698 (A271293 n).toNat

end

end A179562.P1080131174697535765

/-! ## A179562.P2592759606009210472

`A179567(n+1)-A179568(n+1)`
-/

namespace A179562.P2592759606009210472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (n + 1) - A179568 (n + 1)

end

end A179562.P2592759606009210472

/-! ## A179562.P4946037790427576855

`A263764((n+1)²+n²)`
-/

namespace A179562.P4946037790427576855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263764 ((n + 1) ^ 2 + n ^ 2)

end

end A179562.P4946037790427576855

/-!
# A179563: Products of the first n highly composite numbers.

The programs for A179563, there is no canonical definition to state claims against.
-/

/-! ## A179563.P9409819180478563154

`∏[A002182(n+1)]`
-/

namespace A179563.P9409819180478563154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179563.P9409819180478563154

/-! ## A179563.P9408438520786350377

`∏[sqrt(A046952(n+1))]`
-/

namespace A179563.P9408438520786350377
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179563.P9408438520786350377

/-! ## A179563.P1205694124392144093

`∏[record[A365901(n+1)]]`
-/

namespace A179563.P1205694124392144093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365901 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179563.P1205694124392144093

/-! ## A179563.P14732584424684724425

`∏[A135372(n+1)-1]`
-/

namespace A179563.P14732584424684724425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179563.P14732584424684724425

/-!
# A179564: Number of permutations of [n] with the number moved left exceeding the number moved right by 3.

The programs for A179564, there is no canonical definition to state claims against.
-/

/-! ## A179564.P2842387798369256184

`A179569(n+1)-A179570(n+1)`
-/

namespace A179564.P2842387798369256184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179569 (n + 1) - A179570 (n + 1)

end

end A179564.P2842387798369256184

/-! ## A179564.P2864477804585051855

`A179568(n+1)-(A179570(n+1)+A169934(n+1))`
-/

namespace A179564.P2864477804585051855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179568 (n + 1) - (A179570 (n + 1) + A169934 (n + 1))

end

end A179564.P2864477804585051855

/-! ## A179564.P14405845136007643988

`A179567(n+1)-(A179562(n+1)+A169934(n+1))-A179570(n+1)`
-/

namespace A179564.P14405845136007643988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (n + 1) - (A179562 (n + 1) + A169934 (n + 1)) - A179570 (n + 1)

end

end A179564.P14405845136007643988

/-!
# A179565: Number of permutations of [n] with the number moved left exceeding the number moved right by 4.

The programs for A179565, there is no canonical definition to state claims against.
-/

/-! ## A179565.P11869073984833088743

`∑[ceil(n!/exp(n))*A273923(n+1)]`
-/

namespace A179565.P11869073984833088743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) / Real.exp (n : ℝ)⌉ * A273923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179565.P11869073984833088743

/-! ## A179565.P12640247892953672202

`A096874(A192678(n))`
-/

namespace A179565.P12640247892953672202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096874 (A192678 n).toNat

end

end A179565.P12640247892953672202

/-! ## A179565.P12666204684315821709

`A241314(A074083(n))`
-/

namespace A179565.P12666204684315821709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (A074083 n).toNat

end

end A179565.P12666204684315821709

/-! ## A179565.P12482903444985072194

`A361854(A110138(n))`
-/

namespace A179565.P12482903444985072194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361854 (A110138 n).toNat

end

end A179565.P12482903444985072194

/-!
# A179566: Number of permutations of [n] with the number moved left exceeding the number moved right by 0 or more.

The programs for A179566, there is no canonical definition to state claims against.
-/

/-! ## A179566.P1636863617002718643

`A179567(round(acot(n)+n))+A062868(n)`
-/

namespace A179566.P1636863617002718643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A062868 n

end

end A179566.P1636863617002718643

/-! ## A179566.P7768378648493256073

`A179567(round(sqrt(n²+1)))+A062868(n)`
-/

namespace A179566.P7768378648493256073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A062868 n

end

end A179566.P7768378648493256073

/-! ## A179566.P7866056873901703674

`(A062868(n)+A000142(n))/2`
-/

namespace A179566.P7866056873901703674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062868 n + A000142 n : ℚ) / 2

end

end A179566.P7866056873901703674

/-! ## A179566.P2371157468878412150

`(A062868(n)+abs(A133942(n)))/2`
-/

namespace A179566.P2371157468878412150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062868 n + |A133942 n| : ℚ) / 2

end

end A179566.P2371157468878412150

/-!
# A179567: Number of permutations of [n] with the number moved left exceeding the number moved right by 1 or more.

The programs for A179567, there is no canonical definition to state claims against.
-/

/-! ## A179567.P15797890860335784375

`((n+1)!-A062868(n+1))/2`
-/

namespace A179567.P15797890860335784375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) - A062868 (n + 1) : ℚ) / 2

end

end A179567.P15797890860335784375

/-! ## A179567.P9105921502320722191

`A179566(n+1)-A062868(n+1)`
-/

namespace A179567.P9105921502320722191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179566 (n + 1) - A062868 (n + 1)

end

end A179567.P9105921502320722191

/-! ## A179567.P10958903097334257563

`record[A047922(n)]-A179566(n+1)`
-/

namespace A179567.P10958903097334257563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A179566 (n + 1)

end

end A179567.P10958903097334257563

/-! ## A179567.P10713619063665528601

`record[A094587(n)]-A179566(n+1)`
-/

namespace A179567.P10713619063665528601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A179566 (n + 1)

end

end A179567.P10713619063665528601

/-! ## A179567.P3601707837965173745

`A000142(n+1)-A179566(n+1)`
-/

namespace A179567.P3601707837965173745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A179566 (n + 1)

end

end A179567.P3601707837965173745

/-!
# A179568: Number of permutations of 1..n with the number moved left exceeding the number moved right by 2 or more.

The programs for A179568, there is no canonical definition to state claims against.
-/

/-! ## A179568.P2835537419208574753

`A179569(n+1)+A169934(n+1)`
-/

namespace A179568.P2835537419208574753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179569 (n + 1) + A169934 (n + 1)

end

end A179568.P2835537419208574753

/-! ## A179568.P11016247697671463838

`A179567(n+1)-A179562(n+1)`
-/

namespace A179568.P11016247697671463838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (n + 1) - A179562 (n + 1)

end

end A179568.P11016247697671463838

/-! ## A179568.P888178864971510284

`(n+1)!-A179566(n+1)-A179562(n+1)`
-/

namespace A179568.P888178864971510284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A179566 (n + 1) - A179562 (n + 1)

end

end A179568.P888178864971510284

/-! ## A179568.P12216491835744557372

`record[A094587(n)]-A179566(n+1)-A179562(n+1)`
-/

namespace A179568.P12216491835744557372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A179566 (n + 1) - A179562 (n + 1)

end

end A179568.P12216491835744557372

/-! ## A179568.P16139808845389848705

`A169934(n+1)+A179570(n+1)+A179564(n+1)`
-/

namespace A179568.P16139808845389848705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169934 (n + 1) + (A179570 (n + 1) + A179564 (n + 1))

end

end A179568.P16139808845389848705

/-!
# A179569: Number of permutations of 1..n with the number moved left exceeding the number moved right by 3 or more.

The programs for A179569, there is no canonical definition to state claims against.
-/

/-! ## A179569.P2766960583918727373

`A179570(n+1)+A179564(n+1)`
-/

namespace A179569.P2766960583918727373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179570 (n + 1) + A179564 (n + 1)

end

end A179569.P2766960583918727373

/-! ## A179569.P12159197702957263340

`A179568(n+1)-A169934(n+1)`
-/

namespace A179569.P12159197702957263340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179568 (n + 1) - A169934 (n + 1)

end

end A179569.P12159197702957263340

/-! ## A179569.P14719402243180025240

`A179567(n+1)-(A179562(n+1)+A169934(n+1))`
-/

namespace A179569.P14719402243180025240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (n + 1) - (A179562 (n + 1) + A169934 (n + 1))

end

end A179569.P14719402243180025240

/-! ## A179569.P11401065258822375309

`A179568(n+1)-A062866(A103505(n))%A062871(n)`
-/

namespace A179569.P11401065258822375309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179568 (n + 1) - Int.tmod (A062866 (A103505 n).toNat) (A062871 n)

end

end A179569.P11401065258822375309

/-!
# A179570: Number of permutations of 1..n with the number moved left exceeding the number moved right by 4 or more.

The programs for A179570, there is no canonical definition to state claims against.
-/

/-! ## A179570.P9853346993063035221

`A179569(n+1)-A179564(n+1)`
-/

namespace A179570.P9853346993063035221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179569 (n + 1) - A179564 (n + 1)

end

end A179570.P9853346993063035221

/-! ## A179570.P266297697047339346

`A179568(n+1)-(A179564(n+1)+A169934(n+1))`
-/

namespace A179570.P266297697047339346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179568 (n + 1) - (A179564 (n + 1) + A169934 (n + 1))

end

end A179570.P266297697047339346

/-! ## A179570.P5911833236932648908

`A179567(n+1)-(A179562(n+1)+A169934(n+1))-A179564(n+1)`
-/

namespace A179570.P5911833236932648908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179567 (n + 1) - (A179562 (n + 1) + A169934 (n + 1)) - A179564 (n + 1)

end

end A179570.P5911833236932648908

/-! ## A179570.P9760797743768614977

`A177739(A171367(n))`
-/

namespace A179570.P9760797743768614977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177739 (A171367 n).toNat

end

end A179570.P9760797743768614977

/-!
# A179571: Number of permutations of 1..n+4 with the number moved left exceeding the number moved right by n.

The programs for A179571, the canonical program `A179571.P12330536610019077264` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179571 has offset 1).

The definition of A179571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179571.P12330536610019077264

`((n+1)²+3*(n+1)-6)/2+2^(n+5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179571

/-- `((n+1)²+3*(n+1)-6)/2+2^(n+5)` -/
def P12330536610019077264.Spec : Prop :=
  ∀ n, P12330536610019077264.a n = (A179571 (n + 1) : ℚ)

end A179571

/-! ## A179571.P7794573985487499897

`A062866((n+3)²+4)`
-/

namespace A179571.P7794573985487499897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062866 ((n + 3) ^ 2 + 4)

end

end A179571.P7794573985487499897

namespace A179571

/-- `A062866((n+3)²+4)` -/
def P7794573985487499897.Spec : Prop :=
  ∀ n, P7794573985487499897.a n = A179571 (n + 1)

end A179571

/-! ## A179571.P3082970315486996182

`A083058(A179579(n+1))`
-/

namespace A179571.P3082970315486996182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (A179579 (n + 1)).toNat

end

end A179571.P3082970315486996182

namespace A179571

/-- `A083058(A179579(n+1))` -/
def P3082970315486996182.Spec : Prop :=
  ∀ n, P3082970315486996182.a n = A179571 (n + 1)

end A179571

/-!
# A179572: Number of permutations of 1..n+5 with the number moved left exceeding the number moved right by n.

The programs for A179572, the canonical program `A179572.P5525781082746236246` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179572 has offset 1).

The definition of A179572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179572.P5525781082746236246

`(n+6)*2^(n+5)+(n+6)*((n+1)²-5*(n+1)-42)/6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179572

/-- `(n+6)*2^(n+5)+(n+6)*((n+1)²-5*(n+1)-42)/6` -/
def P5525781082746236246.Spec : Prop :=
  ∀ n, P5525781082746236246.a n = (A179572 (n + 1) : ℚ)

end A179572

/-! ## A179572.P7620238875182473420

`A062866((n+5)²-2)`
-/

namespace A179572.P7620238875182473420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062866 ((n + 5) ^ 2 - 2)

end

end A179572.P7620238875182473420

namespace A179572

/-- `A062866((n+5)²-2)` -/
def P7620238875182473420.Spec : Prop :=
  ∀ n, P7620238875182473420.a n = A179572 (n + 1)

end A179572

/-!
# A179573: Number of permutations of 1..n+6 with the number moved left exceeding the number moved right by n.

The programs for A179573, there is no canonical definition to state claims against.
-/

/-! ## A179573.P3610863223770633300

`A179581(n+1)-A179580(n+2)`
-/

namespace A179573.P3610863223770633300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179581 (n + 1) - A179580 (n + 2)

end

end A179573.P3610863223770633300

/-!
# A179574: Number of permutations of 1..n+7 with the number moved left exceeding the number moved right by n.

The programs for A179574, there is no canonical definition to state claims against.
-/

/-! ## A179574.P12614101989317533329

`A179582(n+1)-A179581(n+2)`
-/

namespace A179574.P12614101989317533329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179582 (n + 1) - A179581 (n + 2)

end

end A179574.P12614101989317533329

/-!
# A179575: Number of permutations of 1..n+8 with the number moved left exceeding the number moved right by n.

The programs for A179575, there is no canonical definition to state claims against.
-/

/-! ## A179575.P11073869227497392550

`A179583(n+1)-A179582(n+2)`
-/

namespace A179575.P11073869227497392550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179583 (n + 1) - A179582 (n + 2)

end

end A179575.P11073869227497392550

/-!
# A179576: Number of permutations of 1..n+9 with the number moved left exceeding the number moved right by n.

The programs for A179576, there is no canonical definition to state claims against.
-/

/-! ## A179576.P1601673373072662015

`A179584(n+1)-A179583(n+2)`
-/

namespace A179576.P1601673373072662015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179584 (n + 1) - A179583 (n + 2)

end

end A179576.P1601673373072662015

/-!
# A179577: Number of permutations of 1..n+10 with the number moved left exceeding the number moved right by n.

The programs for A179577, there is no canonical definition to state claims against.
-/

/-! ## A179577.P1367286415147355539

`A179585(n+1)-A179584(n+2)`
-/

namespace A179577.P1367286415147355539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179585 (n + 1) - A179584 (n + 2)

end

end A179577.P1367286415147355539

/-!
# A179578: Number of permutations of 1..n+11 with the number moved left exceeding the number moved right by n.

The programs for A179578, there is no canonical definition to state claims against.
-/

/-! ## A179578.P5347059235901338314

`A179586(n+1)-A179585(n+2)`
-/

namespace A179578.P5347059235901338314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179586 (n + 1) - A179585 (n + 2)

end

end A179578.P5347059235901338314

/-!
# A179579: Number of permutations of {1, ..., n+4} with p(i) < i at least n times more often than p(i) > i.

The programs for A179579, the canonical program `A179579.P2328120383544938976` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179579 has offset 1).

The definition of A179579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179579.P2328120383544938976

`(n+5)*(n+2)/2+2^(n+5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179579

/-- `(n+5)*(n+2)/2+2^(n+5)` -/
def P2328120383544938976.Spec : Prop :=
  ∀ n, P2328120383544938976.a n = (A179579 (n + 1) : ℚ)

end A179579

/-! ## A179579.P385139445574138280

`abs(2^(n+5)+A000124(n+3)-2)`
-/

namespace A179579.P385139445574138280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (n + 5) : ℤ) + (A000124 (n + 3) - 2)|

end

end A179579.P385139445574138280

namespace A179579

/-- `abs(2^(n+5)+A000124(n+3)-2)` -/
def P385139445574138280.Spec : Prop :=
  ∀ n, P385139445574138280.a n = A179579 (n + 1)

end A179579

/-! ## A179579.P14400641102922171195

`xor(A000079(n+5), A000096(n+2))`
-/

namespace A179579.P14400641102922171195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (n + 5)) (A000096 (n + 2))

end

end A179579.P14400641102922171195

namespace A179579

/-- `xor(A000079(n+5), A000096(n+2))` -/
def P14400641102922171195.Spec : Prop :=
  ∀ n, P14400641102922171195.a n = A179579 (n + 1)

end A179579

/-! ## A179579.P11450255487146625570

`abs(A000217(n+4)-A290707(n+4))`
-/

namespace A179579.P11450255487146625570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 4) - A290707 (n + 4)|

end

end A179579.P11450255487146625570

namespace A179579

/-- `abs(A000217(n+4)-A290707(n+4))` -/
def P11450255487146625570.Spec : Prop :=
  ∀ n, P11450255487146625570.a n = A179579 (n + 1)

end A179579

/-! ## A179579.P3615063206357472148

`Δ[A175165(n)+A005286(n)]`
-/

namespace A179579.P3615063206357472148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175165 n + A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179579.P3615063206357472148

namespace A179579

/-- `Δ[A175165(n)+A005286(n)]` -/
def P3615063206357472148.Spec : Prop :=
  ∀ n, P3615063206357472148.a n = A179579 (n + 1)

end A179579

/-! ## A179579.P17971474983953552130

`Δ[A175165(n)+A005586(n)]`
-/

namespace A179579.P17971474983953552130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175165 n + A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179579.P17971474983953552130

namespace A179579

/-- `Δ[A175165(n)+A005586(n)]` -/
def P17971474983953552130.Spec : Prop :=
  ∀ n, P17971474983953552130.a n = A179579 (n + 1)

end A179579

/-!
# A179580: Number of permutations of {1, ..., n+5} with deficiencies #{i : p(i) < i} exceeding the exceedances #{i : p(i) > i} by n or more.

The programs for A179580, the canonical program `A179580.P6420792542076241752` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179580 has offset 0).

The definition of A179580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179580.P6420792542076241752

`(n+5)*(n²-2*n-36)/6+(n+7)*2^(n+4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179580

/-- `(n+5)*(n²-2*n-36)/6+(n+7)*2^(n+4)` -/
def P6420792542076241752.Spec : Prop :=
  ∀ n, P6420792542076241752.a n = (A179580 n : ℚ)

end A179580

/-!
# A179596: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + x)/(1 - 2*x - 11*x^2 - 6*x^3).

The programs for A179596, the canonical program `A179596.P2058852302260466822` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179596 has offset 0).

The definition of A179596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179596.P2058852302260466822

`2*a(n-1)+11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=17`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179596

/-- `2*a(n-1)+11*a(n-2)+6*a(n-3)` -/
def P2058852302260466822.Spec : Prop :=
  ∀ n, (P2058852302260466822.a n : ℤ) = A179596 n

theorem P2058852302260466822.correct : P2058852302260466822.Spec := by
  intro n
  simp only [A179596]

end A179596

/-! ## A179596.P11929405913162005892

`ogf((1+x)/(1-2x-11x^2-6x^3))`
-/

namespace A179596.P11929405913162005892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -11, -6] n

end

end A179596.P11929405913162005892

namespace A179596

/-- `ogf((1+x)/(1-2x-11x^2-6x^3))` -/
def P11929405913162005892.Spec : Prop :=
  ∀ n, P11929405913162005892.a n = A179596 n

end A179596

/-! ## A179596.P8389801566499211475

`A126473(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A179596.P8389801566499211475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126473 n - 2 * a (n - 1)

end

end A179596.P8389801566499211475

namespace A179596

/-- `A126473(n)-2*a(n-1)` -/
def P8389801566499211475.Spec : Prop :=
  ∀ n, P8389801566499211475.a n = A179596 n

end A179596

/-! ## A179596.P18023705190825060229

`A108851(n)+A106570(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A179596.P18023705190825060229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108851 n + A106570 n - 2 * a (n - 1)

end

end A179596.P18023705190825060229

namespace A179596

/-- `A108851(n)+A106570(n)-2*a(n-1)` -/
def P18023705190825060229.Spec : Prop :=
  ∀ n, P18023705190825060229.a n = A179596 n

end A179596

/-! ## A179596.P17842186504343540853

`Δ[A106570(n)]-A080042(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A179596.P17842186504343540853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106570 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - A080042 n - 2 * a (n - 1)

end

end A179596.P17842186504343540853

namespace A179596

/-- `Δ[A106570(n)]-A080042(n)-2*a(n-1)` -/
def P17842186504343540853.Spec : Prop :=
  ∀ n, P17842186504343540853.a n = A179596 n

end A179596

/-! ## A179596.P7166968129549579184

`A015530(n+1)+A015530(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A179596.P7166968129549579184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015530 (n + 1) + A015530 n - 2 * a (n - 1)

end

end A179596.P7166968129549579184

namespace A179596

/-- `A015530(n+1)+A015530(n)-2*a(n-1)` -/
def P7166968129549579184.Spec : Prop :=
  ∀ n, P7166968129549579184.a n = A179596 n

end A179596

/-!
# A179597: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + 5*x + 2*x^2)/(1 - 2*x - 11*x^2 - 6*x^3).

The programs for A179597, the canonical program `A179597.P17494280136900851433` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179597 has offset 0).

The definition of A179597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179597.P17494280136900851433

`2*a(n-1)+11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=7, a(2)=27`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179597

/-- `2*a(n-1)+11*a(n-2)+6*a(n-3)` -/
def P17494280136900851433.Spec : Prop :=
  ∀ n, (P17494280136900851433.a n : ℤ) = A179597 n

theorem P17494280136900851433.correct : P17494280136900851433.Spec := by
  intro n
  simp only [A179597]

end A179597

/-! ## A179597.P2395813950938682840

`A179596(n+1)-2*A126473(n)`
-/

namespace A179597.P2395813950938682840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179596 (n + 1) - 2 * A126473 n

end

end A179597.P2395813950938682840

namespace A179597

/-- `A179596(n+1)-2*A126473(n)` -/
def P2395813950938682840.Spec : Prop :=
  ∀ n, P2395813950938682840.a n = A179597 n

end A179597

/-! ## A179597.P15053810850776421163

`A179596(ceil(sin(n)²)+n)%(2*A126473(n))`
-/

namespace A179597.P15053810850776421163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179596 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n : ℤ)).toNat) (2 * A126473 n)

end

end A179597.P15053810850776421163

namespace A179597

/-- `A179596(ceil(sin(n)²)+n)%(2*A126473(n))` -/
def P15053810850776421163.Spec : Prop :=
  ∀ n, P15053810850776421163.a n = A179597 n

end A179597

/-! ## A179597.P4227888149544160758

`A179596(n+1)+A015530(n)-A108851(n+1)`
-/

namespace A179597.P4227888149544160758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179596 (n + 1) + (A015530 n - A108851 (n + 1))

end

end A179597.P4227888149544160758

namespace A179597

/-- `A179596(n+1)+A015530(n)-A108851(n+1)` -/
def P4227888149544160758.Spec : Prop :=
  ∀ n, P4227888149544160758.a n = A179597 n

end A179597

/-! ## A179597.P10573465466333678712

`A179596(n+1)+A108851(n)-A106570(n+1)`
-/

namespace A179597.P10573465466333678712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179596 (n + 1) + (A108851 n - A106570 (n + 1))

end

end A179597.P10573465466333678712

namespace A179597

/-- `A179596(n+1)+A108851(n)-A106570(n+1)` -/
def P10573465466333678712.Spec : Prop :=
  ∀ n, P10573465466333678712.a n = A179597 n

end A179597

/-! ## A179597.P13830349164007287050

`A179596(A000038(n)+1+n)%(2*A126473(n))`
-/

namespace A179597.P13830349164007287050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179596 (A000038 n + 1 + (n : ℤ)).toNat) (2 * A126473 n)

end

end A179597.P13830349164007287050

namespace A179597

/-- `A179596(A000038(n)+1+n)%(2*A126473(n))` -/
def P13830349164007287050.Spec : Prop :=
  ∀ n, P13830349164007287050.a n = A179597 n

end A179597

/-!
# A179598: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + 2*x)/(1 - 3*x - 8*x^2).

The programs for A179598, the canonical program `A179598.P17609749237831087231` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179598 has offset 0).

The definition of A179598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179598.P17609749237831087231

`3*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179598

/-- `3*a(n-1)+8*a(n-2)` -/
def P17609749237831087231.Spec : Prop :=
  ∀ n, (P17609749237831087231.a n : ℤ) = A179598 n

theorem P17609749237831087231.correct : P17609749237831087231.Spec := by
  intro n
  simp only [A179598]

end A179598

/-! ## A179598.P14400066029170164610

`ogf((1+2x)/(1-3x-8x^2))`
-/

namespace A179598.P14400066029170164610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -8] n

end

end A179598.P14400066029170164610

namespace A179598

/-- `ogf((1+2x)/(1-3x-8x^2))` -/
def P14400066029170164610.Spec : Prop :=
  ∀ n, P14400066029170164610.a n = A179598 n

end A179598

/-! ## A179598.P6156677193354606903

`A179599(n)-2*A015525(n)`
-/

namespace A179598.P6156677193354606903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179599 n - 2 * A015525 n

end

end A179598.P6156677193354606903

namespace A179598

/-- `A179599(n)-2*A015525(n)` -/
def P6156677193354606903.Spec : Prop :=
  ∀ n, P6156677193354606903.a n = A179598 n

end A179598

/-! ## A179598.P5295353989445047897

`A015525(n+1)+2*A015525(n)`
-/

namespace A179598.P5295353989445047897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015525 (n + 1) + 2 * A015525 n

end

end A179598.P5295353989445047897

namespace A179598

/-- `A015525(n+1)+2*A015525(n)` -/
def P5295353989445047897.Spec : Prop :=
  ∀ n, P5295353989445047897.a n = A179598 n

end A179598

/-! ## A179598.P15460553628113428678

`A323232(n)+Δ[A015525(A028310(n))]`
-/

namespace A179598.P15460553628113428678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015525 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323232 n + (f1 (n + 1) - f1 n)

end

end A179598.P15460553628113428678

namespace A179598

/-- `A323232(n)+Δ[A015525(A028310(n))]` -/
def P15460553628113428678.Spec : Prop :=
  ∀ n, P15460553628113428678.a n = A179598 n

end A179598

/-! ## A179598.P4817805138280662700

`A015525(n+1)+A015525(n)+(A323232(n)-A000007(n))/3`
-/

namespace A179598.P4817805138280662700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015525 (n + 1) : ℚ) + ((A015525 n : ℚ) + (A323232 n - A000007 n : ℚ) / 3)

end

end A179598.P4817805138280662700

namespace A179598

/-- `A015525(n+1)+A015525(n)+(A323232(n)-A000007(n))/3` -/
def P4817805138280662700.Spec : Prop :=
  ∀ n, P4817805138280662700.a n = (A179598 n : ℚ)

end A179598

/-!
# A179599: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + 4*x)/(1 - 3*x - 8*x^2).

The programs for A179599, the canonical program `A179599.P12146748807504918680` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179599 has offset 0).

The definition of A179599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179599.P12146748807504918680

`3*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179599

/-- `3*a(n-1)+8*a(n-2)` -/
def P12146748807504918680.Spec : Prop :=
  ∀ n, (P12146748807504918680.a n : ℤ) = A179599 n

theorem P12146748807504918680.correct : P12146748807504918680.Spec := by
  intro n
  simp only [A179599]

end A179599

/-! ## A179599.P5402103578671267292

`ogf((1+4x)/(1-3x-8x^2))`
-/

namespace A179599.P5402103578671267292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -3, -8] n

end

end A179599.P5402103578671267292

namespace A179599

/-- `ogf((1+4x)/(1-3x-8x^2))` -/
def P5402103578671267292.Spec : Prop :=
  ∀ n, P5402103578671267292.a n = A179599 n

end A179599

/-! ## A179599.P3493178451484601726

`A179598(n)+2*A015525(n)`
-/

namespace A179599.P3493178451484601726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179598 n + 2 * A015525 n

end

end A179599.P3493178451484601726

namespace A179599

/-- `A179598(n)+2*A015525(n)` -/
def P3493178451484601726.Spec : Prop :=
  ∀ n, P3493178451484601726.a n = A179599 n

end A179599

/-! ## A179599.P17566916040560402842

`A015525(n+1)+4*A015525(n)`
-/

namespace A179599.P17566916040560402842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015525 (n + 1) + 4 * A015525 n

end

end A179599.P17566916040560402842

namespace A179599

/-- `A015525(n+1)+4*A015525(n)` -/
def P17566916040560402842.Spec : Prop :=
  ∀ n, P17566916040560402842.a n = A179599 n

end A179599

/-! ## A179599.P10199370946015545518

`Δ[A015525(n+1)/2]`
-/

namespace A179599.P10199370946015545518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015525 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179599.P10199370946015545518

namespace A179599

/-- `Δ[A015525(n+1)/2]` -/
def P10199370946015545518.Spec : Prop :=
  ∀ n, P10199370946015545518.a n = (A179599 n : ℚ)

end A179599

/-! ## A179599.P1073024574234011181

`Δ[A323232(n+1)/6]`
-/

namespace A179599.P1073024574234011181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323232 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179599.P1073024574234011181

namespace A179599

/-- `Δ[A323232(n+1)/6]` -/
def P1073024574234011181.Spec : Prop :=
  ∀ n, P1073024574234011181.a n = (A179599 n : ℚ)

end A179599

