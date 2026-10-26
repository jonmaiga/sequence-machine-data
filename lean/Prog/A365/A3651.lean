import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A365101: Number of distinct residues of x^n (mod n^4), x=0..n^4-1.

The programs for A365101, there is no canonical definition to state claims against.
-/

/-! ## A365101.P1506425267969594425

`A274773(A274772(3*n+1))+n`
-/

namespace A365101.P1506425267969594425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (A274772 (3 * n + 1)).toNat + (n : ℤ)

end

end A365101.P1506425267969594425

/-!
# A365102: Number of distinct residues of x^n (mod n^5), x=0..n^5-1.

The programs for A365102, there is no canonical definition to state claims against.
-/

/-! ## A365102.P16569914767712438725

`A049988(A354532(n+1)+A049263(n+1))`
-/

namespace A365102.P16569914767712438725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (A354532 (n + 1) + A049263 (n + 1)).toNat

end

end A365102.P16569914767712438725

/-!
# A365103: Number of distinct quartic residues x^4 (mod 4^n), x=0..4^n-1.

The programs for A365103, the canonical program `A365103.P6583469951374325111` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365103 has offset 0).

The definition of A365103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365103.P6583469951374325111

`ceil(4^n/15)+n%2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A365103

/-- `ceil(4^n/15)+n%2` -/
def P6583469951374325111.Spec : Prop :=
  ∀ n, P6583469951374325111.a n = A365103 n

theorem P6583469951374325111.correct : P6583469951374325111.Spec := by
  intro n
  simp only [A365103]

end A365103

/-! ## A365103.P11137728384398948323

`∑[ogf((-1+2x+7x^2)/(-1+3x+4x^2))]`
-/

namespace A365103.P11137728384398948323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -7] [1, -3, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365103.P11137728384398948323

namespace A365103

/-- `∑[ogf((-1+2x+7x^2)/(-1+3x+4x^2))]` -/
def P11137728384398948323.Spec : Prop :=
  ∀ n, P11137728384398948323.a n = A365103 n

end A365103

/-! ## A365103.P3154473952659816987

`ogf((-1+2x+7x^2)/(-1+4x+x^2-4x^3))`
-/

namespace A365103.P3154473952659816987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -7] [1, -4, -1, 4] n

end

end A365103.P3154473952659816987

namespace A365103

/-- `ogf((-1+2x+7x^2)/(-1+4x+x^2-4x^3))` -/
def P3154473952659816987.Spec : Prop :=
  ∀ n, P3154473952659816987.a n = A365103 n

end A365103

/-! ## A365103.P5382901088693955547

`a(n-2)+4^(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A365103.P5382901088693955547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A365103.P5382901088693955547

namespace A365103

/-- `a(n-2)+4^(n-2)` -/
def P5382901088693955547.Spec : Prop :=
  ∀ n, P5382901088693955547.a n = (A365103 n : ℚ)

end A365103

/-! ## A365103.P18282221558471976797

`4*(a(n-1)-gcd(2, n))+2` with `a(0)=1`
-/

namespace A365103.P18282221558471976797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) - (Nat.gcd 2 n : ℤ)) + 2

end

end A365103.P18282221558471976797

namespace A365103

/-- `4*(a(n-1)-gcd(2, n))+2` -/
def P18282221558471976797.Spec : Prop :=
  ∀ n, P18282221558471976797.a n = A365103 n

end A365103

/-! ## A365103.P2457677115886241421

`∑[4^(n-2)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A365103.P2457677115886241421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365103.P2457677115886241421

namespace A365103

/-- `∑[4^(n-2)-a(n-1)]` -/
def P2457677115886241421.Spec : Prop :=
  ∀ n, P2457677115886241421.a n = (A365103 n : ℚ)

end A365103

/-! ## A365103.P309919744333353052

`3*a(n-1)+4*(a(n-2)-2)` with `a(0)=1, a(1)=2`
-/

namespace A365103.P309919744333353052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) + 4 * (a (n - 2) - 2)

end

end A365103.P309919744333353052

namespace A365103

/-- `3*a(n-1)+4*(a(n-2)-2)` -/
def P309919744333353052.Spec : Prop :=
  ∀ n, P309919744333353052.a n = A365103 n

end A365103

/-! ## A365103.P5210497173801237493

`3*a(n-1)-4*(2-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A365103.P5210497173801237493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - 4 * (2 - a (n - 2))

end

end A365103.P5210497173801237493

namespace A365103

/-- `3*a(n-1)-4*(2-a(n-2))` -/
def P5210497173801237493.Spec : Prop :=
  ∀ n, P5210497173801237493.a n = A365103 n

end A365103

/-! ## A365103.P9447343285689599856

`A115851(2*n)+1`
-/

namespace A365103.P9447343285689599856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 (2 * n) + 1

end

end A365103.P9447343285689599856

namespace A365103

/-- `A115851(2*n)+1` -/
def P9447343285689599856.Spec : Prop :=
  ∀ n, P9447343285689599856.a n = A365103 n

end A365103

/-! ## A365103.P3513292787198238922

`A181586(2*n)+1`
-/

namespace A365103.P3513292787198238922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (2 * n) + 1

end

end A365103.P3513292787198238922

namespace A365103

/-- `A181586(2*n)+1` -/
def P3513292787198238922.Spec : Prop :=
  ∀ n, P3513292787198238922.a n = A365103 n

end A365103

/-! ## A365103.P13123857465925931770

`A180343(2*n)+5`
-/

namespace A365103.P13123857465925931770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180343 (2 * n) + 5

end

end A365103.P13123857465925931770

namespace A365103

/-- `A180343(2*n)+5` -/
def P13123857465925931770.Spec : Prop :=
  ∀ n, P13123857465925931770.a n = A365103 n

end A365103

/-! ## A365103.P18066764651400361210

`floor(∑[4*a(n-1)]/5)` with `a(0)=5, a(1)=5, a(2)=4`
-/

namespace A365103.P18066764651400361210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 5, 4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A365103.P18066764651400361210

namespace A365103

/-- `floor(∑[4*a(n-1)]/5)` -/
def P18066764651400361210.Spec : Prop :=
  ∀ n, P18066764651400361210.a n = A365103 n

end A365103

/-! ## A365103.P9063821988443269199

`and(A047849(n), A122117(n))`
-/

namespace A365103.P9063821988443269199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047849 n) (A122117 n)

end

end A365103.P9063821988443269199

namespace A365103

/-- `and(A047849(n), A122117(n))` -/
def P9063821988443269199.Spec : Prop :=
  ∀ n, P9063821988443269199.a n = A365103 n

end A365103

/-! ## A365103.P13165628055345301087

`A084247(2*n+1)-A122117(n)`
-/

namespace A365103.P13165628055345301087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (2 * n + 1) - A122117 n

end

end A365103.P13165628055345301087

namespace A365103

/-- `A084247(2*n+1)-A122117(n)` -/
def P13165628055345301087.Spec : Prop :=
  ∀ n, P13165628055345301087.a n = A365103 n

end A365103

/-! ## A365103.P10373081904500056000

`A255465(n)-A080674(n)`
-/

namespace A365103.P10373081904500056000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255465 n - A080674 n

end

end A365103.P10373081904500056000

namespace A365103

/-- `A255465(n)-A080674(n)` -/
def P10373081904500056000.Spec : Prop :=
  ∀ n, P10373081904500056000.a n = A365103 n

end A365103

/-! ## A365103.P3137843991798342623

`and(A122117(n), A308124(n))`
-/

namespace A365103.P3137843991798342623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122117 n) (A308124 n)

end

end A365103.P3137843991798342623

namespace A365103

/-- `and(A122117(n), A308124(n))` -/
def P3137843991798342623.Spec : Prop :=
  ∀ n, P3137843991798342623.a n = A365103 n

end A365103

/-! ## A365103.P9077321990752087414

`A002042(n)%A037583(n+1)`
-/

namespace A365103.P9077321990752087414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002042 n) (A037583 (n + 1))

end

end A365103.P9077321990752087414

namespace A365103

/-- `A002042(n)%A037583(n+1)` -/
def P9077321990752087414.Spec : Prop :=
  ∀ n, P9077321990752087414.a n = A365103 n

end A365103

/-! ## A365103.P2612160570943676142

`and(A122117(n), A335077(n+1))`
-/

namespace A365103.P2612160570943676142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122117 n) (A335077 (n + 1))

end

end A365103.P2612160570943676142

namespace A365103

/-- `and(A122117(n), A335077(n+1))` -/
def P2612160570943676142.Spec : Prop :=
  ∀ n, P2612160570943676142.a n = A365103 n

end A365103

/-!
# A365104: Number of distinct quintic residues x^5 (mod 5^n), x=0..5^n-1.

The programs for A365104, the canonical program `A365104.P14677472583380719763` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365104 has offset 0).

The definition of A365104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365104.P16769278711432208520

`4*5^(n-2)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=5, a(3)=21, a(4)=101`
-/

namespace A365104.P16769278711432208520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 5, 21, 101] fun n a =>
  4 * (5 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + a (n - 5)

end

end A365104.P16769278711432208520

namespace A365104

/-- `4*5^(n-2)+a(n-5)` -/
def P16769278711432208520.Spec : Prop :=
  ∀ n, P16769278711432208520.a n = (A365104 n : ℚ)

end A365104

/-! ## A365104.P14677472583380719763

`5*a(n-1)+a(n-5)-5*a(n-6)` with `a(0)=1, a(1)=5, a(2)=5, a(3)=21, a(4)=101, a(5)=501`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A365104

/-- `5*a(n-1)+a(n-5)-5*a(n-6)` -/
def P14677472583380719763.Spec : Prop :=
  ∀ n, P14677472583380719763.a n = A365104 n

theorem P14677472583380719763.correct : P14677472583380719763.Spec := by
  intro n
  simp only [A365104]

end A365104

/-!
# A365106: Sum_{n>=0} a(n) * x^n / n!^2 = exp( Sum_{n>=1} prime(n) * x^n / n!^2 ).

The programs for A365106, there is no canonical definition to state claims against.
-/

/-! ## A365106.P7465785577469813517

`A355098(n)+A079099(A355098(n))`
-/

namespace A365106.P7465785577469813517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355098 n + A079099 (A355098 n).toNat

end

end A365106.P7465785577469813517

/-!
# A365107: Sum_{n>=0} a(n) * x^n / n!^2 = exp( Sum_{n>=1} x^prime(n) / prime(n)!^2 ).

The programs for A365107, there is no canonical definition to state claims against.
-/

/-! ## A365107.P8507015128828727622

`A350889(A150298(n))`
-/

namespace A365107.P8507015128828727622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350889 (A150298 n).toNat

end

end A365107.P8507015128828727622

/-! ## A365107.P17660803503093041362

`A271775(A010844(n))-1`
-/

namespace A365107.P17660803503093041362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271775 (A010844 n).toNat - 1

end

end A365107.P17660803503093041362

/-!
# A365113: G.f. satisfies A(x) = 1 + x / (1 - x*A(x))^3.

The programs for A365113, there is no canonical definition to state claims against.
-/

/-! ## A365113.P14984792687726075499

`A378291(eq[2, A008284(n+2)])`
-/

namespace A365113.P14984792687726075499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A365113.P14984792687726075499

/-! ## A365113.P12840488013834008132

`A127757(A278391(n))`
-/

namespace A365113.P12840488013834008132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A278391 n).toNat

end

end A365113.P12840488013834008132

/-! ## A365113.P12558124455046108411

`A261585(A151285(n+1))`
-/

namespace A365113.P12558124455046108411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A151285 (n + 1)).toNat

end

end A365113.P12558124455046108411

/-!
# A365114: G.f. satisfies A(x) = 1 + x / (1 - x*A(x))^4.

The programs for A365114, there is no canonical definition to state claims against.
-/

/-! ## A365114.P1554556778319247322

`A195072(A150797(n))`
-/

namespace A365114.P1554556778319247322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A150797 n).toNat

end

end A365114.P1554556778319247322

/-! ## A365114.P14013742880880066178

`A157271(A150614(n))`
-/

namespace A365114.P14013742880880066178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150614 n).toNat

end

end A365114.P14013742880880066178

/-!
# A365115: G.f. satisfies A(x) = 1 + x / (1 - x*A(x))^5.

The programs for A365115, there is no canonical definition to state claims against.
-/

/-! ## A365115.P1997594507475833530

`ceil(A241317((n+2)²+1)/6)`
-/

namespace A365115.P1997594507475833530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241317 ((n + 2) ^ 2 + 1) : ℚ) / 6⌉

end

end A365115.P1997594507475833530

/-! ## A365115.P8804577608240120007

`A381128(A148386(n))`
-/

namespace A365115.P8804577608240120007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381128 (A148386 n).toNat

end

end A365115.P8804577608240120007

/-!
# A365118: G.f. satisfies A(x) = (1 + x / (1 - x*A(x)))^2.

The programs for A365118, there is no canonical definition to state claims against.
-/

/-! ## A365118.P6606779439410104000

`A247908(A048116(n+1))`
-/

namespace A365118.P6606779439410104000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A048116 (n + 1)).toNat

end

end A365118.P6606779439410104000

/-! ## A365118.P753285833563506269

`A210357(A148170(n+1))`
-/

namespace A365118.P753285833563506269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A148170 (n + 1)).toNat

end

end A365118.P753285833563506269

/-! ## A365118.P11357108827718721887

`A230418(A357791(n+1))`
-/

namespace A365118.P11357108827718721887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A357791 (n + 1)).toNat

end

end A365118.P11357108827718721887

/-!
# A365119: G.f. satisfies A(x) = (1 + x / (1 - x*A(x)))^3.

The programs for A365119, there is no canonical definition to state claims against.
-/

/-! ## A365119.P14215007402984632474

`A324475(A151052(n))`
-/

namespace A365119.P14215007402984632474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324475 (A151052 n).toNat

end

end A365119.P14215007402984632474

/-! ## A365119.P7871068080302918224

`A331266(A062324(a(n-1)))` with `a(0)=1`
-/

namespace A365119.P7871068080302918224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331266 (A062324 (a (n - 1)).toNat).toNat

end

end A365119.P7871068080302918224

/-!
# A365120: G.f. A(x) satisfies A(x) = (1 + x / (1 - x*A(x))^2)^2.

The programs for A365120, there is no canonical definition to state claims against.
-/

/-! ## A365120.P13906889551726859220

`A340261(A000079(n))+A073157(n)`
-/

namespace A365120.P13906889551726859220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340261 (A000079 n).toNat + A073157 n

end

end A365120.P13906889551726859220

/-! ## A365120.P17844698529423605742

`A070965(A000073(2*(n+2)))+A001076(n)`
-/

namespace A365120.P17844698529423605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070965 (A000073 (2 * (n + 2))).toNat + A001076 n

end

end A365120.P17844698529423605742

/-!
# A365121: G.f. A(x) satisfies A(x) = (1 + x / (1 - x*A(x))^2)^3.

The programs for A365121, there is no canonical definition to state claims against.
-/

/-! ## A365121.P17116472281751825487

`∑[∑[A320924(n!)]]`
-/

namespace A365121.P17116472281751825487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365121.P17116472281751825487

/-!
# A365122: G.f. A(x) satisfies A(x) = (1 + x / (1 - x*A(x))^3)^3.

The programs for A365122, there is no canonical definition to state claims against.
-/

/-! ## A365122.P6757509397396594728

`A156562(C(3*n, n))`
-/

namespace A365122.P6757509397396594728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (Nat.choose (3 * n) n)

end

end A365122.P6757509397396594728

/-!
# A365123: G.f. satisfies A(x) = (1 + x / (1 - x*A(x))^4)^2.

The programs for A365123, there is no canonical definition to state claims against.
-/

/-! ## A365123.P12781460381095208953

`A283877(∑[ceil(sqrt(n))!!])`
-/

namespace A365123.P12781460381095208953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365123.P12781460381095208953

/-!
# A365124: G.f. satisfies A(x) = (1 + x / (1 - x*A(x))^4)^4.

The programs for A365124, there is no canonical definition to state claims against.
-/

/-! ## A365124.P5666807740914193382

`A156077(xor(n, A073507(n+1)))`
-/

namespace A365124.P5666807740914193382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (Int.xor (n : ℤ) (A073507 (n + 1))).toNat

end

end A365124.P5666807740914193382

/-!
# A365126: Number of representations of n as the sum of a prime number and a fourth power of a nonnegative integer.

The programs for A365126, there is no canonical definition to state claims against.
-/

/-! ## A365126.P8792996412336420904

`A365167(n+1)+char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A365126.P8792996412336420904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365167 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A365126.P8792996412336420904

/-! ## A365126.P15433823774536407937

`A365167(n+1)+A010051(n+1)`
-/

namespace A365126.P15433823774536407937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365167 (n + 1) + A010051 (n + 1)

end

end A365126.P15433823774536407937

/-! ## A365126.P9420270311320617133

`A365167(n+1)+A064911(2*(n+1))`
-/

namespace A365126.P9420270311320617133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365167 (n + 1) + A064911 (2 * (n + 1))

end

end A365126.P9420270311320617133

/-! ## A365126.P17776237125878592039

`A365167(n+1)+A063524(∑{e}[n+1, #])`
-/

namespace A365126.P17776237125878592039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365167 (n + 1) + A063524 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A365126.P17776237125878592039

/-! ## A365126.P16527977761980242356

`A365167(n+1)+A240465(A000005(n+1))`
-/

namespace A365126.P16527977761980242356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365167 (n + 1) + A240465 (A000005 (n + 1)).toNat

end

end A365126.P16527977761980242356

/-!
# A365127: Numbers that are the sum of a prime number and a fourth power of a nonnegative integer.

The programs for A365127, there is no canonical definition to state claims against.
-/

/-! ## A365127.P2572416884370208087

`∪[A000040(n+1), A365168(n+1)]`
-/

namespace A365127.P2572416884370208087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P2572416884370208087

/-! ## A365127.P5090749063046727169

`∪[A030291(n+1), A365168(n+1)]`
-/

namespace A365127.P5090749063046727169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P5090749063046727169

/-! ## A365127.P7359016957466253007

`∪[A030475(n+1), A365168(n+1)]`
-/

namespace A365127.P7359016957466253007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P7359016957466253007

/-! ## A365127.P13960848514485770060

`∪[A038616(n+1), A365168(n+1)]`
-/

namespace A365127.P13960848514485770060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P13960848514485770060

/-! ## A365127.P14909721303876615548

`∪[A038618(n+1), A365168(n+1)]`
-/

namespace A365127.P14909721303876615548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P14909721303876615548

/-! ## A365127.P4046462414252354079

`∪[A045344(n+1), A365168(n+1)]`
-/

namespace A365127.P4046462414252354079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P4046462414252354079

/-! ## A365127.P7540209127409519553

`∪[A049549(n+1), A365168(n+1)]`
-/

namespace A365127.P7540209127409519553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P7540209127409519553

/-! ## A365127.P18403383450932615025

`∪[A049551(n+1), A365168(n+1)]`
-/

namespace A365127.P18403383450932615025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P18403383450932615025

/-! ## A365127.P7095492912793567365

`∪[A049555(n+1), A365168(n+1)]`
-/

namespace A365127.P7095492912793567365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P7095492912793567365

/-! ## A365127.P16551033632812715811

`∪[A049561(n+1), A365168(n+1)]`
-/

namespace A365127.P16551033632812715811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365127.P16551033632812715811

/-!
# A365128: G.f. A(x) satisfies A(x) = (1 + x*A(x)*(1 + x*A(x)))^3.

The programs for A365128, there is no canonical definition to state claims against.
-/

/-! ## A365128.P17967627109432537426

`∑[A233583(A334785(n)+1)-1]`
-/

namespace A365128.P17967627109432537426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A334785 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365128.P17967627109432537426

/-!
# A365129: G.f. A(x) satisfies A(x) = (1 + x*A(x)*(1 + x*A(x))^2)^2.

The programs for A365129, there is no canonical definition to state claims against.
-/

/-! ## A365129.P10504803821201661005

`A371576(n)-A220663(A371576(n))`
-/

namespace A365129.P10504803821201661005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371576 n - A220663 (A371576 n).toNat

end

end A365129.P10504803821201661005

/-! ## A365129.P10625430941390481046

`A022290(A060639(n))*A215366(n)`
-/

namespace A365129.P10625430941390481046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A060639 n).toNat * A215366 n

end

end A365129.P10625430941390481046

/-!
# A365130: G.f. A(x) satisfies A(x) = (1 + x*A(x)*(1 + x*A(x))^2)^3.

The programs for A365130, there is no canonical definition to state claims against.
-/

/-! ## A365130.P9148673677297220679

`A269366(A385617(n))+n`
-/

namespace A365130.P9148673677297220679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269366 (A385617 n).toNat + (n : ℤ)

end

end A365130.P9148673677297220679

/-!
# A365131: G.f. A(x) satisfies A(x) = (1 + x*A(x)*(1 + x*A(x))^3)^2.

The programs for A365131, there is no canonical definition to state claims against.
-/

/-! ## A365131.P17139505283624357952

`A196228(A004981(n))+A004981(n)`
-/

namespace A365131.P17139505283624357952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (A004981 n).toNat + A004981 n

end

end A365131.P17139505283624357952

/-! ## A365131.P14815993737726957628

`A254926(A004981(n))+A001629(n)`
-/

namespace A365131.P14815993737726957628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254926 (A004981 n).toNat + A001629 n

end

end A365131.P14815993737726957628

/-!
# A365132: G.f. A(x) satisfies A(x) = (1 + x*A(x)*(1 + x*A(x))^3)^3.

The programs for A365132, there is no canonical definition to state claims against.
-/

/-! ## A365132.P8906785563355356240

`A228723(∑[A226733(n)])`
-/

namespace A365132.P8906785563355356240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365132.P8906785563355356240

/-!
# A365133: G.f. A(x) satisfies A(x) = (1 + x*A(x)/(1 - x*A(x))^2)^2.

The programs for A365133, there is no canonical definition to state claims against.
-/

/-! ## A365133.P5632479154106459770

`A225819(A192417(n))`
-/

namespace A365133.P5632479154106459770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A192417 n).toNat

end

end A365133.P5632479154106459770

/-! ## A365133.P9982235517119913912

`and(A000081(2*n+1), A341676(A279812(n+1)))`
-/

namespace A365133.P9982235517119913912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000081 (2 * n + 1)) (A341676 (A279812 (n + 1)).toNat)

end

end A365133.P9982235517119913912

/-!
# A365134: G.f. A(x) satisfies A(x) = (1 + x*A(x)/(1 - x*A(x))^2)^3.

The programs for A365134, there is no canonical definition to state claims against.
-/

/-! ## A365134.P6590859064996753781

`A333256(∑[(n+1)*floor(∑[2^n]/(n+1))])+1`
-/

namespace A365134.P6590859064996753781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A365134.P6590859064996753781

/-!
# A365135: G.f. A(x) satisfies A(x) = (1 + x*A(x)/(1 - x*A(x))^3)^2.

The programs for A365135, there is no canonical definition to state claims against.
-/

/-! ## A365135.P15731987539187847998

`A189671(A090139(n)+2)`
-/

namespace A365135.P15731987539187847998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A090139 n + 2).toNat

end

end A365135.P15731987539187847998

/-!
# A365136: G.f. satisfies A(x) = (1 + x*A(x)/(1 - x*A(x))^3)^3.

The programs for A365136, there is no canonical definition to state claims against.
-/

/-! ## A365136.P8352471412502580329

`A184484(A015448(n)+A002275(n))`
-/

namespace A365136.P8352471412502580329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (A015448 n + A002275 n).toNat

end

end A365136.P8352471412502580329

/-!
# A365137: a(n) is the number of n-digit numbers that contain '22' in their decimal representation.

The programs for A365137, the canonical program `A365137.P18302955210679602195` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365137 has offset 0).

The definition of A365137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365137.P18302955210679602195

`19*a(n-1)-81*a(n-2)-90*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=18`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A365137

/-- `19*a(n-1)-81*a(n-2)-90*a(n-3)` -/
def P18302955210679602195.Spec : Prop :=
  ∀ n, P18302955210679602195.a n = A365137 n

theorem P18302955210679602195.correct : P18302955210679602195.Spec := by
  intro n
  simp only [A365137]

end A365137

/-! ## A365137.P5126241174247428696

`∑[A255372(n)-A106612(A255374(n+1))]`
-/

namespace A365137.P5126241174247428696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255372 n - A106612 (A255374 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365137.P5126241174247428696

namespace A365137

/-- `∑[A255372(n)-A106612(A255374(n+1))]` -/
def P5126241174247428696.Spec : Prop :=
  ∀ n, P5126241174247428696.a n = A365137 n

end A365137

/-!
# A365138: Genus of the quotient of the modular curve X_1(n) by the Fricke involution.

The programs for A365138, there is no canonical definition to state claims against.
-/

/-! ## A365138.P2375613265580866207

`(A029937(n+1)-A001617(n+1))/2+A276183(n+1)`
-/

namespace A365138.P2375613265580866207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029937 (n + 1) - A001617 (n + 1) : ℚ) / 2 + (A276183 (n + 1) : ℚ)

end

end A365138.P2375613265580866207

/-!
# A365142: List of free polyominoes in arbitrary dimension given by an integer code (see comments), ordered first by the number of cells, then by the value of the code.

The programs for A365142, there is no canonical definition to state claims against.
-/

/-! ## A365142.P7720644050528766819

`or(A220524(A243507(n+1)), A280210(n))`
-/

namespace A365142.P7720644050528766819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220524 (A243507 (n + 1)).toNat) (A280210 n)

end

end A365142.P7720644050528766819

/-! ## A365142.P3409943102591524262

`A359908(A109492(n+1))-A335898(n+1)`
-/

namespace A365142.P3409943102591524262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (A109492 (n + 1)).toNat - A335898 (n + 1)

end

end A365142.P3409943102591524262

/-!
# A365143: Proper dimension of the polyomino with code A365142(n).

The programs for A365143, there is no canonical definition to state claims against.
-/

/-! ## A365143.P162142758671082838

`A001221((n+1)*A006530(A058254(n)))`
-/

namespace A365143.P162142758671082838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) * A006530 (A058254 n).toNat).toNat

end

end A365143.P162142758671082838

/-! ## A365143.P16657468338384464472

`A257990(A000961(n+1)*A299291(n))`
-/

namespace A365143.P16657468338384464472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A000961 (n + 1) * A299291 n).toNat

end

end A365143.P16657468338384464472

/-! ## A365143.P2540478578706092488

`A124767(n)+A088592(A238873(n+4))`
-/

namespace A365143.P2540478578706092488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n + A088592 (A238873 (n + 4)).toNat

end

end A365143.P2540478578706092488

/-! ## A365143.P3421654156485179141

`C(A381205(n+1), A071625(A052950(n)))`
-/

namespace A365143.P3421654156485179141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A381205 (n + 1)).toNat (A071625 (A052950 n).toNat).toNat

end

end A365143.P3421654156485179141

/-! ## A365143.P6355514168544925150

`A005087(A176995(n+1)*A283980(n+1))`
-/

namespace A365143.P6355514168544925150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A176995 (n + 1) * A283980 (n + 1)).toNat

end

end A365143.P6355514168544925150

/-!
# A365144: Numbers having each digit once and whose 4th power has each digit four times.

The programs for A365144, there is no canonical definition to state claims against.
-/

/-! ## A365144.P7017648767252936159

`A114260(n+1)+char[15]`
-/

namespace A365144.P7017648767252936159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114260 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A365144.P7017648767252936159

/-! ## A365144.P15212434772557974388

`A114260(comp[n²²-(n%2)^n])`
-/

namespace A365144.P15212434772557974388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (((n % 2) ^ n : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A365144.P15212434772557974388

/-! ## A365144.P12004608865906709912

`A114260(record[floor((n²+19*n+217+7*(n+9)*(-1)^n)/280)])`
-/

namespace A365144.P12004608865906709912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 19 * n : ℤ) + (217 + 7 * ((n + 9 : ℤ) * (-1) ^ n)) : ℚ) / 280⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A365144.P12004608865906709912

/-! ## A365144.P14903951078126581170

`A114260(A005496(n))`
-/

namespace A365144.P14903951078126581170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114260 (A005496 n).toNat

end

end A365144.P14903951078126581170

/-! ## A365144.P13015286066211871017

`A114260(A005555(n))`
-/

namespace A365144.P13015286066211871017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114260 (A005555 n).toNat

end

end A365144.P13015286066211871017

/-!
# A365145: Lexicographically least increasing sequence of triprimes (A014612) whose first differences are triprimes.

The programs for A365145, there is no canonical definition to state claims against.
-/

/-! ## A365145.P7355414831590155903

`A049298(A246491(n+1))*A175588(n+1)`
-/

namespace A365145.P7355414831590155903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049298 (A246491 (n + 1)).toNat * A175588 (n + 1)

end

end A365145.P7355414831590155903

/-! ## A365145.P1888899737597620093

`A175588(n+1)*A290110(A107689(n+1))`
-/

namespace A365145.P1888899737597620093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175588 (n + 1) * A290110 (A107689 (n + 1)).toNat

end

end A365145.P1888899737597620093

/-! ## A365145.P2674942052032833752

`A000005(A181056(2*n+5))*A175588(n+1)`
-/

namespace A365145.P2674942052032833752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181056 (2 * n + 5)).toNat * A175588 (n + 1)

end

end A365145.P2674942052032833752

/-! ## A365145.P13989148621451148448

`A049298(A128354(n+1))*A175588(n+1)`
-/

namespace A365145.P13989148621451148448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049298 (A128354 (n + 1)).toNat * A175588 (n + 1)

end

end A365145.P13989148621451148448

/-!
# A365146: G.f. satisfies A(x) = ( 1 + x*A(x)^2 / (1 - x*A(x)) )^2.

The programs for A365146, there is no canonical definition to state claims against.
-/

/-! ## A365146.P16046547658660629888

`A299478(A262592(n))-n`
-/

namespace A365146.P16046547658660629888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299478 (A262592 n).toNat - (n : ℤ)

end

end A365146.P16046547658660629888

/-!
# A365148: G.f. satisfies A(x) = ( 1 + x*A(x)^2 / (1 - x*A(x))^2 )^2.

The programs for A365148, there is no canonical definition to state claims against.
-/

/-! ## A365148.P17982272250748285321

`A187187(4*A191094(n+1))`
-/

namespace A365148.P17982272250748285321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (4 * A191094 (n + 1)).toNat

end

end A365148.P17982272250748285321

/-!
# A365149: G.f. satisfies A(x) = ( 1 + x*A(x)^2 / (1 - x*A(x))^2 )^3.

The programs for A365149, there is no canonical definition to state claims against.
-/

/-! ## A365149.P10793864920941165576

`xor(A046726(n+1), A202115(A321587(n+1)))`
-/

namespace A365149.P10793864920941165576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046726 (n + 1)) (A202115 (A321587 (n + 1)).toNat)

end

end A365149.P10793864920941165576

/-!
# A365150: G.f. satisfies A(x) = 1 + x*A(x)^2 / (1 - x*A(x))^3.

The programs for A365150, there is no canonical definition to state claims against.
-/

/-! ## A365150.P7081888029721978867

`A004526(A118341(n))+A000166(n)`
-/

namespace A365150.P7081888029721978867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A118341 n).toNat + A000166 n

end

end A365150.P7081888029721978867

/-! ## A365150.P3260034230262941476

`A369327(n)+A067029(A001927(n))`
-/

namespace A365150.P3260034230262941476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369327 n + A067029 (A001927 n).toNat

end

end A365150.P3260034230262941476

/-!
# A365151: G.f. satisfies A(x) = ( 1 + x*A(x)^2 / (1 - x*A(x))^3 )^2.

The programs for A365151, there is no canonical definition to state claims against.
-/

/-! ## A365151.P12341102161261869250

`A028310(A371585(n))`
-/

namespace A365151.P12341102161261869250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A371585 n).toNat

end

end A365151.P12341102161261869250

/-!
# A365153: G.f. satisfies A(x) = ( 1 + x*A(x)^2*(1 + x*A(x)) )^2.

The programs for A365153, there is no canonical definition to state claims against.
-/

/-! ## A365153.P15318885473771135653

`A071943(A000217(3*n+1)+n)/(n+1)`
-/

namespace A365153.P15318885473771135653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071943 (A000217 (3 * n + 1) + (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A365153.P15318885473771135653

/-! ## A365153.P15855661218142322869

`A285416(A276358(n+1)+A011897(n))`
-/

namespace A365153.P15855661218142322869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285416 (A276358 (n + 1) + A011897 n).toNat

end

end A365153.P15855661218142322869

/-!
# A365154: G.f. satisfies A(x) = ( 1 + x*A(x)^2*(1 + x*A(x)) )^3.

The programs for A365154, there is no canonical definition to state claims against.
-/

/-! ## A365154.P3414946889079984936

`A060683(A002845(3*n+1))+n`
-/

namespace A365154.P3414946889079984936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (A002845 (3 * n + 1)).toNat + (n : ℤ)

end

end A365154.P3414946889079984936

/-!
# A365155: G.f. satisfies A(x) = ( 1 + x*A(x)^2*(1 + x*A(x))^2 )^2.

The programs for A365155, there is no canonical definition to state claims against.
-/

/-! ## A365155.P16484340067182686299

`A074286(A007051(n)²+1)`
-/

namespace A365155.P16484340067182686299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A007051 n ^ 2 + 1).toNat

end

end A365155.P16484340067182686299

/-!
# A365157: G.f. satisfies A(x) = ( 1 + x*A(x)^2*(1 + x*A(x))^3 )^2.

The programs for A365157, there is no canonical definition to state claims against.
-/

/-! ## A365157.P14718017829254344287

`A000210(A306045(n))-n`
-/

namespace A365157.P14718017829254344287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (A306045 n).toNat - (n : ℤ)

end

end A365157.P14718017829254344287

/-!
# A365158: G.f. satisfies A(x) = ( 1 + x*A(x)^2*(1 + x*A(x))^3 )^3.

The programs for A365158, there is no canonical definition to state claims against.
-/

/-! ## A365158.P8087899785324047325

`A052419(A006134(n)*A088218(n)+1)`
-/

namespace A365158.P8087899785324047325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A006134 n * A088218 n + 1).toNat

end

end A365158.P8087899785324047325

/-!
# A365160: Least k such that A000668(n) + k is prime, where A000668(n) is the n-th Mersenne prime.

The programs for A365160, there is no canonical definition to state claims against.
-/

/-! ## A365160.P3446946068053748097

`A058249(A000043(n+1))`
-/

namespace A365160.P3446946068053748097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (A000043 (n + 1)).toNat

end

end A365160.P3446946068053748097

/-! ## A365160.P12525577469443808267

`A058249(A090748(n+1)+1)`
-/

namespace A365160.P12525577469443808267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058249 (A090748 (n + 1) + 1).toNat

end

end A365160.P12525577469443808267

/-! ## A365160.P12729566448868886957

`∑{d}[A000043(n+1), A013597(#)]`
-/

namespace A365160.P12729566448868886957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A013597 d

end

end A365160.P12729566448868886957

/-! ## A365160.P8538391245055547372

`A330098(n+1)+A013597(A000043(n+1))`
-/

namespace A365160.P8538391245055547372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (n + 1) + A013597 (A000043 (n + 1)).toNat

end

end A365160.P8538391245055547372

/-! ## A365160.P12679001045000427890

`A092131(A000043(n+1))+A057427(n+4)`
-/

namespace A365160.P12679001045000427890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (A000043 (n + 1)).toNat + A057427 (n + 4)

end

end A365160.P12679001045000427890

/-!
# A365161: Least k such that A000668(n) - k is prime, where A000668(n) is the n-th Mersenne prime.

The programs for A365161, there is no canonical definition to state claims against.
-/

/-! ## A365161.P16312122025081080006

`A268607(A000043(n+1))-1`
-/

namespace A365161.P16312122025081080006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268607 (A000043 (n + 1)).toNat - 1

end

end A365161.P16312122025081080006

/-!
# A365162: a(n) = A269795(n)/2.

The programs for A365162, there is no canonical definition to state claims against.
-/

/-! ## A365162.P787088830200321741

`A269795(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365162.P787088830200321741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269795 (n + 1) : ℚ) / 2

end

end A365162.P787088830200321741

/-! ## A365162.P16461423352928176500

`A000265(n+1)*A051841(n+1)`
-/

namespace A365162.P16461423352928176500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A051841 (n + 1)

end

end A365162.P16461423352928176500

/-! ## A365162.P16532273348567655868

`∑{d}[n+1, A008683(#)*A084623((n+1)/#)]`
-/

namespace A365162.P16532273348567655868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A084623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365162.P16532273348567655868

/-! ## A365162.P9076842719139689152

`∑{d}[n+1, A008683(#)*A075101((n+1)/#)]/2`
-/

namespace A365162.P9076842719139689152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A075101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / 2

end

end A365162.P9076842719139689152

/-!
# A365166: Numbers that are not the sum of a prime number and a fourth power of a nonnegative integer.

The programs for A365166, there is no canonical definition to state claims against.
-/

/-! ## A365166.P17814536025151086353

`filter[A365169(n+1), A005171(#)]`
-/

namespace A365166.P17814536025151086353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A365166.P17814536025151086353

/-! ## A365166.P1660656143679654370

`filter[A365169(n+1), A292438(#)]`
-/

namespace A365166.P1660656143679654370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A365166.P1660656143679654370

/-! ## A365166.P10741580226686258926

`∩[A018252(n+1), A365169(n+1)]`
-/

namespace A365166.P10741580226686258926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365166.P10741580226686258926

/-! ## A365166.P6590390745262152550

`∩[A056653(n+1), A365169(n+1)]`
-/

namespace A365166.P6590390745262152550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365166.P6590390745262152550

/-! ## A365166.P882447483869126817

`∩[A141468(n+1), A365169(n+1)]`
-/

namespace A365166.P882447483869126817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365166.P882447483869126817

/-! ## A365166.P10036910260064952644

`∩[A164276(n+1), A365169(n+1)]`
-/

namespace A365166.P10036910260064952644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365166.P10036910260064952644

/-!
# A365167: Number of representations of n as the sum of a prime number and a fourth power of a positive integer.

The programs for A365167, there is no canonical definition to state claims against.
-/

/-! ## A365167.P5334438909690832734

`A365126(n+1)-A010051(n+1)`
-/

namespace A365167.P5334438909690832734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365126 (n + 1) - A010051 (n + 1)

end

end A365167.P5334438909690832734

/-! ## A365167.P6277087810339657870

`A365126(n+1)-char[A006093(n+1)]`
-/

namespace A365167.P6277087810339657870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365126 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A365167.P6277087810339657870

/-! ## A365167.P472663739101321189

`A365126(n+1)-A098108(A001222(n+1))`
-/

namespace A365167.P472663739101321189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365126 (n + 1) - A098108 (A001222 (n + 1)).toNat

end

end A365167.P472663739101321189

/-! ## A365167.P7218363787763310283

`A365126(n+1)-A117944(A061142(n+1))`
-/

namespace A365167.P7218363787763310283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365126 (n + 1) - A117944 (A061142 (n + 1)).toNat

end

end A365167.P7218363787763310283

/-! ## A365167.P12337373851155620065

`A365126(n+1)-A185012(A275870(n+1))`
-/

namespace A365167.P12337373851155620065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365126 (n + 1) - A185012 (A275870 (n + 1)).toNat

end

end A365167.P12337373851155620065

/-!
# A365168: Numbers that are the sum of a prime number and a fourth power of a positive integer.

The programs for A365168, there is no canonical definition to state claims against.
-/

/-! ## A365168.P3725572731451464420

`lt[0, A365167(n+1)]+1`
-/

namespace A365168.P3725572731451464420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A365168.P3725572731451464420

/-!
# A365169: Numbers that are not the sum of a prime number and a fourth power of a positive integer.

The programs for A365169, there is no canonical definition to state claims against.
-/

/-! ## A365169.P8598628559974594426

`eq[char[A365168(n+1)], A000007(n)]`
-/

namespace A365169.P8598628559974594426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A365169.P8598628559974594426

/-! ## A365169.P5704893359786252750

`eq[char[A365168(n+1)], A049084(2*(n+1))]`
-/

namespace A365169.P5704893359786252750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365168 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A365169.P5704893359786252750

/-! ## A365169.P9869291539718329518

`eq[0, A365167(n+1)]+1`
-/

namespace A365169.P9869291539718329518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A365169.P9869291539718329518

/-!
# A365170: The sum of divisors d of n such that gcd(d, n/d) is squarefree.

The programs for A365170, the canonical program `A365170.P4762611898248662452` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365170 has offset 1).

The definition of A365170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365170.P4762611898248662452

`∑{d}[n+1, A254503(#)*A295295((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A365170

/-- `∑{d}[n+1, A254503(#)*A295295((n+1)/#)]` -/
def P4762611898248662452.Spec : Prop :=
  ∀ n, P4762611898248662452.a n = A365170 (n + 1)

theorem P4762611898248662452.correct : P4762611898248662452.Spec := by
  intro n
  simp only [A365170, Nat.add_sub_cancel]

end A365170

/-!
# A365171: The number of divisors d of n such that gcd(d, n/d) is a square.

The programs for A365171, the canonical program `A365171.P15755108315260376590` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365171 has offset 1).

The definition of A365171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365171.P15755108315260376590

`∑{d}[n+1, A353519(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A365171

/-- `∑{d}[n+1, A353519(#)]` -/
def P15755108315260376590.Spec : Prop :=
  ∀ n, P15755108315260376590.a n = A365171 (n + 1)

theorem P15755108315260376590.correct : P15755108315260376590.Spec := by
  intro n
  simp only [A365171, Nat.add_sub_cancel]

end A365171

/-! ## A365171.P17153310824055220539

`∑{d}[n+1, A008966(#)*A063775((n+1)/#)]`
-/

namespace A365171.P17153310824055220539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A063775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365171.P17153310824055220539

namespace A365171

/-- `∑{d}[n+1, A008966(#)*A063775((n+1)/#)]` -/
def P17153310824055220539.Spec : Prop :=
  ∀ n, P17153310824055220539.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P12770437462082884910

`∑{d}[n+1, A048691(#)*A219009((n+1)/#)]`
-/

namespace A365171.P12770437462082884910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A219009 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365171.P12770437462082884910

namespace A365171

/-- `∑{d}[n+1, A048691(#)*A219009((n+1)/#)]` -/
def P12770437462082884910.Spec : Prop :=
  ∀ n, P12770437462082884910.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P3030011780029080694

`∑{d}[n+1, A007426(#)*A355837((n+1)/#)]`
-/

namespace A365171.P3030011780029080694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A355837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365171.P3030011780029080694

namespace A365171

/-- `∑{d}[n+1, A007426(#)*A355837((n+1)/#)]` -/
def P3030011780029080694.Spec : Prop :=
  ∀ n, P3030011780029080694.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P947335098127477933

`A000005(A053164(n+1)*A053166(n+1))`
-/

namespace A365171.P947335098127477933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053164 (n + 1) * A053166 (n + 1)).toNat

end

end A365171.P947335098127477933

namespace A365171

/-- `A000005(A053164(n+1)*A053166(n+1))` -/
def P947335098127477933.Spec : Prop :=
  ∀ n, P947335098127477933.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P4021223722461841783

`A000005(A053166((n+1)*A008835(n+1)))`
-/

namespace A365171.P4021223722461841783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053166 ((n + 1 : ℤ) * A008835 (n + 1)).toNat).toNat

end

end A365171.P4021223722461841783

namespace A365171

/-- `A000005(A053166((n+1)*A008835(n+1)))` -/
def P4021223722461841783.Spec : Prop :=
  ∀ n, P4021223722461841783.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P17487260952366558548

`A365491((n+1)*A053167(A062379(n+1)))`
-/

namespace A365171.P17487260952366558548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365491 ((n + 1 : ℤ) * A053167 (A062379 (n + 1)).toNat).toNat

end

end A365171.P17487260952366558548

namespace A365171

/-- `A365491((n+1)*A053167(A062379(n+1)))` -/
def P17487260952366558548.Spec : Prop :=
  ∀ n, P17487260952366558548.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P9163352936199140504

`A368978(A064549(n+1))`
-/

namespace A365171.P9163352936199140504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A064549 (n + 1)).toNat

end

end A365171.P9163352936199140504

namespace A365171

/-- `A368978(A064549(n+1))` -/
def P9163352936199140504.Spec : Prop :=
  ∀ n, P9163352936199140504.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P4689322061951345245

`A386470(A350390((n+1)*A386469(n+1)))`
-/

namespace A365171.P4689322061951345245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386470 (A350390 ((n + 1 : ℤ) * A386469 (n + 1)).toNat).toNat

end

end A365171.P4689322061951345245

namespace A365171

/-- `A386470(A350390((n+1)*A386469(n+1)))` -/
def P4689322061951345245.Spec : Prop :=
  ∀ n, P4689322061951345245.a n = A365171 (n + 1)

end A365171

/-! ## A365171.P395614453932531011

`A046951(A053166(n+1)²*A000188(n+1))`
-/

namespace A365171.P395614453932531011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A053166 (n + 1) ^ 2 * A000188 (n + 1)).toNat

end

end A365171.P395614453932531011

namespace A365171

/-- `A046951(A053166(n+1)²*A000188(n+1))` -/
def P395614453932531011.Spec : Prop :=
  ∀ n, P395614453932531011.a n = A365171 (n + 1)

end A365171

/-!
# A365172: The sum of divisors d of n such that gcd(d, n/d) is a square.

The programs for A365172, there is no canonical definition to state claims against.
-/

/-! ## A365172.P2121076647375043545

`A268689((n+1)/∏{p}[n+1, gcd(n+1, #²)])+A034448(n+1)`
-/

namespace A365172.P2121076647375043545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat + A034448 (n + 1)

end

end A365172.P2121076647375043545

/-! ## A365172.P5867662858381960466

`or(A034448(n+1), A361430(A123500(3*n+1)))`
-/

namespace A365172.P5867662858381960466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034448 (n + 1)) (A361430 (A123500 (3 * n + 1)).toNat)

end

end A365172.P5867662858381960466

/-! ## A365172.P6420420703743213496

`or(A010879(A218392(n+1)), A034448(n+1))`
-/

namespace A365172.P6420420703743213496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010879 (A218392 (n + 1)).toNat) (A034448 (n + 1))

end

end A365172.P6420420703743213496

/-! ## A365172.P17649300437216361040

`A318984(A054272(3*n+2))+A034448(n+1)`
-/

namespace A365172.P17649300437216361040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 (A054272 (3 * n + 2)).toNat + A034448 (n + 1)

end

end A365172.P17649300437216361040

/-! ## A365172.P17132987755741903349

`or(A034448(n+1), A324684(A140994(2*n+3)))`
-/

namespace A365172.P17132987755741903349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034448 (n + 1)) (A324684 (A140994 (2 * n + 3)).toNat)

end

end A365172.P17132987755741903349

/-!
# A365173: The number of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

The programs for A365173, the canonical program `A365173.P512538171508930422` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365173 has offset 1).

The definition of A365173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365173.P512538171508930422

`∏{e}[n+1, A073425(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365173

/-- `∏{e}[n+1, A073425(#)]` -/
def P512538171508930422.Spec : Prop :=
  ∀ n, P512538171508930422.a n = A365173 (n + 1)

theorem P512538171508930422.correct : P512538171508930422.Spec := by
  intro n
  simp only [A365173, Nat.add_sub_cancel]

end A365173

/-! ## A365173.P13122032665412184427

`∑{d}[n+1, A008966(#)*A365549((n+1)/#)]`
-/

namespace A365173.P13122032665412184427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A365549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365173.P13122032665412184427

namespace A365173

/-- `∑{d}[n+1, A008966(#)*A365549((n+1)/#)]` -/
def P13122032665412184427.Spec : Prop :=
  ∀ n, P13122032665412184427.a n = A365173 (n + 1)

end A365173

/-! ## A365173.P15059415953249746941

`A366901(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*∏{p}[n+1, #])`
-/

namespace A365173.P15059415953249746941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A365173.P15059415953249746941

namespace A365173

/-- `A366901(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*∏{p}[n+1, #])` -/
def P15059415953249746941.Spec : Prop :=
  ∀ n, P15059415953249746941.a n = A365173 (n + 1)

end A365173

/-! ## A365173.P15538712742190903901

`∏{e}[(n+1)^3, A029837(#)]`
-/

namespace A365173.P15538712742190903901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A029837 (Nat.factorization (f1 n) p)

end

end A365173.P15538712742190903901

namespace A365173

/-- `∏{e}[(n+1)^3, A029837(#)]` -/
def P15538712742190903901.Spec : Prop :=
  ∀ n, P15538712742190903901.a n = A365173 (n + 1)

end A365173

/-! ## A365173.P5683413732066144510

`∏{e}[floor(sqrt((n+1)^6+3)), A070939(#)]`
-/

namespace A365173.P5683413732066144510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 1) ^ 6 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A070939 (Nat.factorization (f1 n) p)

end

end A365173.P5683413732066144510

namespace A365173

/-- `∏{e}[floor(sqrt((n+1)^6+3)), A070939(#)]` -/
def P5683413732066144510.Spec : Prop :=
  ∀ n, P5683413732066144510.a n = A365173 (n + 1)

end A365173

/-!
# A365174: The sum of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

The programs for A365174, the canonical program `A365174.P1377516069112288599` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365174 has offset 1).

The definition of A365174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365174.P1377516069112288599

`∑{d}[n+1, A254503(#)*A365336((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A365174

/-- `∑{d}[n+1, A254503(#)*A365336((n+1)/#)]` -/
def P1377516069112288599.Spec : Prop :=
  ∀ n, P1377516069112288599.a n = A365174 (n + 1)

theorem P1377516069112288599.correct : P1377516069112288599.Spec := by
  intro n
  simp only [A365174, Nat.add_sub_cancel]

end A365174

/-! ## A365174.P3025227894366473187

`A365170(n+1)%A027887(n+1)`
-/

namespace A365174.P3025227894366473187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365170 (n + 1)) (A027887 (n + 1))

end

end A365174.P3025227894366473187

namespace A365174

/-- `A365170(n+1)%A027887(n+1)` -/
def P3025227894366473187.Spec : Prop :=
  ∀ n, P3025227894366473187.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P8279875955343080650

`A365170(n+1)+A329678(A365217(n+1))`
-/

namespace A365174.P8279875955343080650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365170 (n + 1) + A329678 (A365217 (n + 1)).toNat

end

end A365174.P8279875955343080650

namespace A365174

/-- `A365170(n+1)+A329678(A365217(n+1))` -/
def P8279875955343080650.Spec : Prop :=
  ∀ n, P8279875955343080650.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P17372332360081048588

`A365170(n+1)+A335446(A034684(2*(n+1)))`
-/

namespace A365174.P17372332360081048588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365170 (n + 1) + A335446 (A034684 (2 * (n + 1))).toNat

end

end A365174.P17372332360081048588

namespace A365174

/-- `A365170(n+1)+A335446(A034684(2*(n+1)))` -/
def P17372332360081048588.Spec : Prop :=
  ∀ n, P17372332360081048588.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P12447489291951265472

`A057427(A365166(n+1))*A365170(n+1)`
-/

namespace A365174.P12447489291951265472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A365166 (n + 1)).toNat * A365170 (n + 1)

end

end A365174.P12447489291951265472

namespace A365174

/-- `A057427(A365166(n+1))*A365170(n+1)` -/
def P12447489291951265472.Spec : Prop :=
  ∀ n, P12447489291951265472.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P16661301851709230609

`A365170(n+1)%A004433(A000009(n))`
-/

namespace A365174.P16661301851709230609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365170 (n + 1)) (A004433 (A000009 n).toNat)

end

end A365174.P16661301851709230609

namespace A365174

/-- `A365170(n+1)%A004433(A000009(n))` -/
def P16661301851709230609.Spec : Prop :=
  ∀ n, P16661301851709230609.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P1181222863311561080

`A093148(A000567(n))*A365170(n+1)`
-/

namespace A365174.P1181222863311561080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093148 (A000567 n).toNat * A365170 (n + 1)

end

end A365174.P1181222863311561080

namespace A365174

/-- `A093148(A000567(n))*A365170(n+1)` -/
def P1181222863311561080.Spec : Prop :=
  ∀ n, P1181222863311561080.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P7032669786836932851

`A365170(n+1)+A068346(A007641(n+1))`
-/

namespace A365174.P7032669786836932851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365170 (n + 1) + A068346 (A007641 (n + 1)).toNat

end

end A365174.P7032669786836932851

namespace A365174

/-- `A365170(n+1)+A068346(A007641(n+1))` -/
def P7032669786836932851.Spec : Prop :=
  ∀ n, P7032669786836932851.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P18372911789092506855

`A365170(n+1)+A344584(A142117(n+1))`
-/

namespace A365174.P18372911789092506855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365170 (n + 1) + A344584 (A142117 (n + 1)).toNat

end

end A365174.P18372911789092506855

namespace A365174

/-- `A365170(n+1)+A344584(A142117(n+1))` -/
def P18372911789092506855.Spec : Prop :=
  ∀ n, P18372911789092506855.a n = A365174 (n + 1)

end A365174

/-! ## A365174.P874742404458855327

`A061019(A365170(n+1)²)/A365170(n+1)`
-/

namespace A365174.P874742404458855327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061019 (A365170 (n + 1) ^ 2).toNat : ℚ) / (A365170 (n + 1) : ℚ)

end

end A365174.P874742404458855327

namespace A365174

/-- `A061019(A365170(n+1)²)/A365170(n+1)` -/
def P874742404458855327.Spec : Prop :=
  ∀ n, P874742404458855327.a n = (A365174 (n + 1) : ℚ)

end A365174

/-!
# A365175: E.g.f. satisfies A(x) = 1 + x*A(x)^4*exp(x*A(x)).

The programs for A365175, there is no canonical definition to state claims against.
-/

/-! ## A365175.P13073037714125161780

`A000040(A301655(n))-A360911(n+1)`
-/

namespace A365175.P13073037714125161780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A301655 n).toNat - A360911 (n + 1)

end

end A365175.P13073037714125161780

/-!
# A365176: E.g.f. satisfies A(x) = 1 + x*A(x)^4*exp(x*A(x)^2).

The programs for A365176, there is no canonical definition to state claims against.
-/

/-! ## A365176.P8052507009001165347

`A367747(n)+A059325(A318697(n+1))`
-/

namespace A365176.P8052507009001165347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367747 n + A059325 (A318697 (n + 1)).toNat

end

end A365176.P8052507009001165347

/-!
# A365177: E.g.f. satisfies A(x) = 1 + x*A(x)^4*exp(x*A(x)^3).

The programs for A365177, there is no canonical definition to state claims against.
-/

/-! ## A365177.P839705159599350242

`A367200(n)+A060564(A367157(n))`
-/

namespace A365177.P839705159599350242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367200 n + A060564 (A367157 n).toNat

end

end A365177.P839705159599350242

/-!
# A365178: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 + x).

The programs for A365178, there is no canonical definition to state claims against.
-/

/-! ## A365178.P5156609859396579288

`A381937(n)-a(n-1)` with `a(0)=1`
-/

namespace A365178.P5156609859396579288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A381937 n - a (n - 1)

end

end A365178.P5156609859396579288

/-! ## A365178.P5915776664655160856

`A092695(xor(n, A246542(n+1)))`
-/

namespace A365178.P5915776664655160856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (Int.xor (n : ℤ) (A246542 (n + 1))).toNat

end

end A365178.P5915776664655160856

/-!
# A365179: a(1) = 2; for n >= 2, a(n) = p^6 if p == 2 (mod 3), p^7 if p = 3 or p == 1 (mod 3), where p = prime(n).

The programs for A365179, there is no canonical definition to state claims against.
-/

/-! ## A365179.P14263845105959686335

`A000040(n+1)^A361351(∏{p}[n+1, #+1])`
-/

namespace A365179.P14263845105959686335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A361351 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) : ℤ)

end

end A365179.P14263845105959686335

/-!
# A365180: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 + x*A(x)).

The programs for A365180, there is no canonical definition to state claims against.
-/

/-! ## A365180.P11120051417591773767

`A087834((2*n)^n)`
-/

namespace A365180.P11120051417591773767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 ((2 * n) ^ n)

end

end A365180.P11120051417591773767

/-!
# A365181: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 + x*A(x)^2).

The programs for A365181, there is no canonical definition to state claims against.
-/

/-! ## A365181.P6326690115154804180

`A083058(A367281(n)+2*n)`
-/

namespace A365181.P6326690115154804180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083058 (A367281 n + (2 * n : ℤ)).toNat

end

end A365181.P6326690115154804180

/-! ## A365181.P10388802415568019071

`A065719(A024053(n))+A052773(n)`
-/

namespace A365181.P10388802415568019071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A024053 n).toNat + A052773 n

end

end A365181.P10388802415568019071

/-!
# A365182: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 + x*A(x)^3).

The programs for A365182, there is no canonical definition to state claims against.
-/

/-! ## A365182.P14477181578513815617

`A156253(A366432(n))`
-/

namespace A365182.P14477181578513815617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A366432 n).toNat

end

end A365182.P14477181578513815617

/-! ## A365182.P12302390222282650820

`A028310(A171804(n)+A008382(n))`
-/

namespace A365182.P12302390222282650820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A171804 n + A008382 n).toNat

end

end A365182.P12302390222282650820

/-!
# A365183: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 + x*A(x)^4).

The programs for A365183, there is no canonical definition to state claims against.
-/

/-! ## A365183.P5909346487610300469

`A261440(A261422(n+3)+n)`
-/

namespace A365183.P5909346487610300469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261440 (A261422 (n + 3) + (n : ℤ)).toNat

end

end A365183.P5909346487610300469

/-! ## A365183.P15131169037749300359

`A261440(A000217(n+4)+n)`
-/

namespace A365183.P15131169037749300359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261440 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A365183.P15131169037749300359

/-!
# A365184: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 + x).

The programs for A365184, there is no canonical definition to state claims against.
-/

/-! ## A365184.P13449378857926221305

`A381940(n)-a(n-1)` with `a(0)=1`
-/

namespace A365184.P13449378857926221305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A381940 n - a (n - 1)

end

end A365184.P13449378857926221305

/-!
# A365185: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 + x*A(x)).

The programs for A365185, there is no canonical definition to state claims against.
-/

/-! ## A365185.P7802091781070527735

`A008621(A054879(n))`
-/

namespace A365185.P7802091781070527735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A054879 n).toNat

end

end A365185.P7802091781070527735

/-!
# A365186: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 + x*A(x)^2).

The programs for A365186, there is no canonical definition to state claims against.
-/

/-! ## A365186.P4455388908806056367

`or(n, A350041(3*n+4))`
-/

namespace A365186.P4455388908806056367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A350041 (3 * n + 4))

end

end A365186.P4455388908806056367

/-!
# A365187: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 + x*A(x)^3).

The programs for A365187, there is no canonical definition to state claims against.
-/

/-! ## A365187.P14808310832845212679

`A276871(a(n-1))` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A365187.P14808310832845212679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A276871 (a (n - 1)).toNat

end

end A365187.P14808310832845212679

/-!
# A365188: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 + x*A(x)^4).

The programs for A365188, there is no canonical definition to state claims against.
-/

/-! ## A365188.P13106851591731279109

`A387141(A000048(2*(n+1))²)`
-/

namespace A365188.P13106851591731279109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A000048 (2 * (n + 1)) ^ 2).toNat

end

end A365188.P13106851591731279109

/-!
# A365189: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 + x*A(x)^5).

The programs for A365189, there is no canonical definition to state claims against.
-/

/-! ## A365189.P3700154386300682436

`A341144(A179903(n))`
-/

namespace A365189.P3700154386300682436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341144 ((A179903 n).toNat + 30)

end

end A365189.P3700154386300682436

/-!
# A365190: The weak Schur numbers for 2-coloring.

The programs for A365190, there is no canonical definition to state claims against.
-/

/-! ## A365190.P9903948353608898729

`∑[∑[A220053(A049195(2*n+5))]]`
-/

namespace A365190.P9903948353608898729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (A049195 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365190.P9903948353608898729

/-!
# A365192: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5 / (1 - x*A(x)^2).

The programs for A365192, there is no canonical definition to state claims against.
-/

/-! ## A365192.P11835307887456470661

`A182669(A374680(∑[n]))`
-/

namespace A365192.P11835307887456470661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182669 (A374680 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A365192.P11835307887456470661

/-!
# A365193: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5 / (1 - x*A(x)^3).

The programs for A365193, there is no canonical definition to state claims against.
-/

/-! ## A365193.P14241298110720627595

`A057508(A058927(n))`
-/

namespace A365193.P14241298110720627595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A058927 n).toNat

end

end A365193.P14241298110720627595

/-!
# A365194: G.f. A(x) satisfies A(x) = 1 + x*A(x)^5 / (1 - x*A(x)^6).

The programs for A365194, there is no canonical definition to state claims against.
-/

/-! ## A365194.P15267852159880879419

`∑[A286762(a(n-1))]` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A365194.P15267852159880879419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n f1 =>
  A286762 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365194.P15267852159880879419

/-!
# A365195: Height of the first staircase of the ziggurat of order n described in A347186.

The programs for A365195, there is no canonical definition to state claims against.
-/

/-! ## A365195.P14557756375989548613

`A365433(n+1)-A000122(A000009(3*n+4))`
-/

namespace A365195.P14557756375989548613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365433 (n + 1) - A000122 (A000009 (3 * n + 4)).toNat

end

end A365195.P14557756375989548613

/-! ## A365195.P8182634569002463503

`A365433(A077168(n))`
-/

namespace A365195.P8182634569002463503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365433 (A077168 n).toNat

end

end A365195.P8182634569002463503

/-! ## A365195.P733264021794938334

`A365433(A043319(n+1))`
-/

namespace A365195.P733264021794938334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365433 (A043319 (n + 1)).toNat

end

end A365195.P733264021794938334

/-! ## A365195.P7553119727696492521

`A365433(A044916(n+1))`
-/

namespace A365195.P7553119727696492521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365433 (A044916 (n + 1)).toNat

end

end A365195.P7553119727696492521

/-! ## A365195.P17613230689928615749

`A365433(A055646(n+1))`
-/

namespace A365195.P17613230689928615749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365433 (A055646 (n + 1)).toNat

end

end A365195.P17613230689928615749

/-!
# A365196: a(n) is the least k such that 2^k + n is not squarefree.

The programs for A365196, there is no canonical definition to state claims against.
-/

/-! ## A365196.P17297843780878015503

`A335489(n+1)*A374629(A001481(3*n+4))`
-/

namespace A365196.P17297843780878015503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (n + 1) * A374629 (A001481 (3 * n + 4)).toNat

end

end A365196.P17297843780878015503

/-!
# A365197: a(n) and a(n+1) have k distinct digits in common. The successive ks are the successive digits of the sequence itself.

The programs for A365197, there is no canonical definition to state claims against.
-/

/-! ## A365197.P15482791201409170306

`filter[A086068(n+2), A108882(#)]`
-/

namespace A365197.P15482791201409170306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108882 (f1 j).toNat = 1) n)

end

end A365197.P15482791201409170306

/-!
# A365199: a(n) is the index of the n-th occurrence of 1 in A365203.

The programs for A365199, there is no canonical definition to state claims against.
-/

/-! ## A365199.P997469020933201551

`eq[1, A365203(n+1)]+1`
-/

namespace A365199.P997469020933201551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A365199.P997469020933201551

