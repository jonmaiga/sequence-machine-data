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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A155801: Nontrivial "Strobogrammatic" primes, the same "upside-down" in at least one base b with 2 <= b <= 10.

The programs for A155801, there is no canonical definition to state claims against.
-/

/-! ## A155801.P12289149105301153052

`p?[lt[A059739(n)+1, n]]`
-/

namespace A155801.P12289149105301153052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059739 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155801.P12289149105301153052

/-! ## A155801.P13832510889892230313

`p?[lt[A059739(n), A093411(n)]]`
-/

namespace A155801.P13832510889892230313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059739 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155801.P13832510889892230313

/-! ## A155801.P1648352300672052534

`filter[A206864(n+1), A089829(#)]`
-/

namespace A155801.P1648352300672052534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A155801.P1648352300672052534

/-! ## A155801.P1028963424473282217

`∩[A206864(n+1), A110882(n)]`
-/

namespace A155801.P1028963424473282217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110882 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155801.P1028963424473282217

/-! ## A155801.P5174246701665992653

`p?[A194061(A194031(n+1))+2]`
-/

namespace A155801.P5174246701665992653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194061 (A194031 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155801.P5174246701665992653

/-!
# A155802: Numbers k such that (5^k + 2^k - 1)/12 is prime.

The programs for A155802, there is no canonical definition to state claims against.
-/

/-! ## A155802.P12795849391675523736

`A179460(A344347(n+1))`
-/

namespace A155802.P12795849391675523736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179460 (A344347 (n + 1)).toNat

end

end A155802.P12795849391675523736

/-! ## A155802.P14968957035372105821

`record[A099375(A163938(n+1))]`
-/

namespace A155802.P14968957035372105821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A163938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155802.P14968957035372105821

/-!
# A155803: A023001 interleaved with 2*A023001 and 4*A023001.

The programs for A155803, the canonical program `A155803.P2682710491917119782` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155803 has offset 0).

The definition of A155803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155803.P9358729082740435272

`a(n-3)+2^(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A155803.P9358729082740435272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A155803.P9358729082740435272

namespace A155803

/-- `a(n-3)+2^(n-3)` -/
def P9358729082740435272.Spec : Prop :=
  ∀ n, P9358729082740435272.a n = (A155803 n : ℚ)

end A155803

/-! ## A155803.P2682710491917119782

`2*a(n-1)+a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155803

/-- `2*a(n-1)+a(n-3)-2*a(n-4)` -/
def P2682710491917119782.Spec : Prop :=
  ∀ n, P2682710491917119782.a n = A155803 n

theorem P2682710491917119782.correct : P2682710491917119782.Spec := by
  intro n
  simp only [A155803]

end A155803

/-! ## A155803.P836436743747140070

`floor(2^n/7)`
-/

namespace A155803.P836436743747140070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 7⌋

end

end A155803.P836436743747140070

namespace A155803

/-- `floor(2^n/7)` -/
def P836436743747140070.Spec : Prop :=
  ∀ n, P836436743747140070.a n = A155803 n

end A155803

/-! ## A155803.P6348024783913309046

`ogf(x^3/(1-2x-x^3+2x^4))`
-/

namespace A155803.P6348024783913309046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -2, 0, -1, 2] n

end

end A155803.P6348024783913309046

namespace A155803

/-- `ogf(x^3/(1-2x-x^3+2x^4))` -/
def P6348024783913309046.Spec : Prop :=
  ∀ n, P6348024783913309046.a n = A155803 n

end A155803

/-! ## A155803.P12705815059323357794

`or(2^(n-3), a(n-3))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A155803.P12705815059323357794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) (a (n - 3))

end

end A155803.P12705815059323357794

namespace A155803

/-- `or(2^(n-3), a(n-3))` -/
def P12705815059323357794.Spec : Prop :=
  ∀ n, P12705815059323357794.a n = A155803 n

end A155803

/-! ## A155803.P11616577854368470465

`xor(2^(n-3), a(n-3))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A155803.P11616577854368470465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) (a (n - 3))

end

end A155803.P11616577854368470465

namespace A155803

/-- `xor(2^(n-3), a(n-3))` -/
def P11616577854368470465.Spec : Prop :=
  ∀ n, P11616577854368470465.a n = A155803 n

end A155803

/-! ## A155803.P6900304479614527725

`4%gcd(3, n)+2*a(n-1)` with `a(0)=0`
-/

namespace A155803.P6900304479614527725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 % Nat.gcd 3 n + 2 * a (n - 1)

end

end A155803.P6900304479614527725

namespace A155803

/-- `4%gcd(3, n)+2*a(n-1)` -/
def P6900304479614527725.Spec : Prop :=
  ∀ n, (P6900304479614527725.a n : ℤ) = A155803 n

end A155803

/-! ## A155803.P7873220783652279597

`(n+1)%3+4*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A155803.P7873220783652279597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n + 1) % 3 + 4 * a (n - 2)

end

end A155803.P7873220783652279597

namespace A155803

/-- `(n+1)%3+4*a(n-2)` -/
def P7873220783652279597.Spec : Prop :=
  ∀ n, (P7873220783652279597.a n : ℤ) = A155803 n

end A155803

/-! ## A155803.P8808185800397037279

`4*a(n-2)-(2-n)%3` with `a(0)=0, a(1)=0`
-/

namespace A155803.P8808185800397037279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 * a (n - 2) - Int.tmod (2 - (n : ℤ)) 3

end

end A155803.P8808185800397037279

namespace A155803

/-- `4*a(n-2)-(2-n)%3` -/
def P8808185800397037279.Spec : Prop :=
  ∀ n, P8808185800397037279.a n = A155803 n

end A155803

/-! ## A155803.P11664975320393565864

`1-(and(1, A000045(n))-2*a(n-1))` with `a(0)=0`
-/

namespace A155803.P11664975320393565864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (Int.land 1 (A000045 n) - 2 * a (n - 1))

end

end A155803.P11664975320393565864

namespace A155803

/-- `1-(and(1, A000045(n))-2*a(n-1))` -/
def P11664975320393565864.Spec : Prop :=
  ∀ n, P11664975320393565864.a n = A155803 n

end A155803

/-! ## A155803.P14812104481526107436

`A063823(n)-A130196(n)`
-/

namespace A155803.P14812104481526107436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063823 n - A130196 n

end

end A155803.P14812104481526107436

namespace A155803

/-- `A063823(n)-A130196(n)` -/
def P14812104481526107436.Spec : Prop :=
  ∀ n, P14812104481526107436.a n = A155803 n

end A155803

/-! ## A155803.P9223122334207234435

`A166578(n)-A131534(n)`
-/

namespace A155803.P9223122334207234435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166578 n - A131534 n

end

end A155803.P9223122334207234435

namespace A155803

/-- `A166578(n)-A131534(n)` -/
def P9223122334207234435.Spec : Prop :=
  ∀ n, P9223122334207234435.a n = A155803 n

end A155803

/-! ## A155803.P13136035040777049847

`Δ[A178455(abs(1-n))]`
-/

namespace A155803.P13136035040777049847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178455 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155803.P13136035040777049847

namespace A155803

/-- `Δ[A178455(abs(1-n))]` -/
def P13136035040777049847.Spec : Prop :=
  ∀ n, P13136035040777049847.a n = A155803 n

end A155803

/-! ## A155803.P11703285126479348994

`A063823(n+1)/2-1`
-/

namespace A155803.P11703285126479348994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063823 (n + 1) : ℚ) / 2 - 1

end

end A155803.P11703285126479348994

namespace A155803

/-- `A063823(n+1)/2-1` -/
def P11703285126479348994.Spec : Prop :=
  ∀ n, P11703285126479348994.a n = (A155803 n : ℚ)

end A155803

/-! ## A155803.P16377781138644104727

`A357292(n+2)-A357292(n)`
-/

namespace A155803.P16377781138644104727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357292 (n + 2) - A357292 n

end

end A155803.P16377781138644104727

namespace A155803

/-- `A357292(n+2)-A357292(n)` -/
def P16377781138644104727.Spec : Prop :=
  ∀ n, P16377781138644104727.a n = A155803 n

end A155803

/-! ## A155803.P5831498395536273848

`(A178455(n)+A002264(n))/2`
-/

namespace A155803.P5831498395536273848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178455 n + A002264 n : ℚ) / 2

end

end A155803.P5831498395536273848

namespace A155803

/-- `(A178455(n)+A002264(n))/2` -/
def P5831498395536273848.Spec : Prop :=
  ∀ n, P5831498395536273848.a n = (A155803 n : ℚ)

end A155803

/-! ## A155803.P4133051035667706061

`xor(A153234(n+1), A153234(n))`
-/

namespace A155803.P4133051035667706061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153234 (n + 1)) (A153234 n)

end

end A155803.P4133051035667706061

namespace A155803

/-- `xor(A153234(n+1), A153234(n))` -/
def P4133051035667706061.Spec : Prop :=
  ∀ n, P4133051035667706061.a n = A155803 n

end A155803

/-! ## A155803.P7468420942498957411

`(A078010(n)-A057078(n)²)/2`
-/

namespace A155803.P7468420942498957411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078010 n - A057078 n ^ 2 : ℚ) / 2

end

end A155803.P7468420942498957411

namespace A155803

/-- `(A078010(n)-A057078(n)²)/2` -/
def P7468420942498957411.Spec : Prop :=
  ∀ n, P7468420942498957411.a n = (A155803 n : ℚ)

end A155803

/-! ## A155803.P15473718799512581384

`(A122552(n)-1)/3`
-/

namespace A155803.P15473718799512581384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122552 n - 1 : ℚ) / 3

end

end A155803.P15473718799512581384

namespace A155803

/-- `(A122552(n)-1)/3` -/
def P15473718799512581384.Spec : Prop :=
  ∀ n, P15473718799512581384.a n = (A155803 n : ℚ)

end A155803

/-!
# A155804: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * A(x)^(n(n-1)/2).

The programs for A155804, there is no canonical definition to state claims against.
-/

/-! ## A155804.P2551552233927880284

`A054861(A162653(n)+3)`
-/

namespace A155804.P2551552233927880284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A162653 n + 3).toNat

end

end A155804.P2551552233927880284

/-! ## A155804.P12918396776267483771

`A341379(n)+A085393(A219358(n))`
-/

namespace A155804.P12918396776267483771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341379 n + A085393 (A219358 n).toNat

end

end A155804.P12918396776267483771

/-! ## A155804.P2877211026424564176

`A008619(A162653(n)-A003415(n))`
-/

namespace A155804.P2877211026424564176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A162653 n - A003415 n).toNat

end

end A155804.P2877211026424564176

/-!
# A155805: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * A(x)^(n(n+1)/2).

The programs for A155805, there is no canonical definition to state claims against.
-/

/-! ## A155805.P2116933843939816509

`A336344(A020091(n))+A141623(n)`
-/

namespace A155805.P2116933843939816509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336344 (A020091 n).toNat + A141623 n

end

end A155805.P2116933843939816509

/-!
# A155806: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * A(x)^(n^2).

The programs for A155806, there is no canonical definition to state claims against.
-/

/-! ## A155806.P14432560788075509207

`A361540(∑[n])`
-/

namespace A155806.P14432560788075509207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155806.P14432560788075509207

/-! ## A155806.P12167275871480539140

`or(A010057(n), A361540(A000217(n)))`
-/

namespace A155806.P12167275871480539140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010057 n) (A361540 (A000217 n).toNat)

end

end A155806.P12167275871480539140

/-! ## A155806.P6743792721964557637

`A091247(2*(n+2))*A361540(A000217(n))`
-/

namespace A155806.P6743792721964557637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * (n + 2)) * A361540 (A000217 n).toNat

end

end A155806.P6743792721964557637

/-! ## A155806.P17696532634016432460

`A361540(A000217(n))+A010057(3*n+4)`
-/

namespace A155806.P17696532634016432460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (A000217 n).toNat + A010057 (3 * n + 4)

end

end A155806.P17696532634016432460

/-! ## A155806.P8674888943513048785

`A361540(A000217(n))%A214049(3*n+4)`
-/

namespace A155806.P8674888943513048785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361540 (A000217 n).toNat) (A214049 (3 * n + 4))

end

end A155806.P8674888943513048785

/-!
# A155807: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * A(x)^(n(n+1)).

The programs for A155807, there is no canonical definition to state claims against.
-/

/-! ## A155807.P5388671708271873752

`A135861(n)-A184955(A022340(n))`
-/

namespace A155807.P5388671708271873752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135861 n - A184955 (A022340 n).toNat

end

end A155807.P5388671708271873752

/-!
# A155809: Numbers k such that 64*k^6 + 1091 is prime.

The programs for A155809, there is no canonical definition to state claims against.
-/

/-! ## A155809.P15468743279996891557

`A066386(n+1)/2`
-/

namespace A155809.P15468743279996891557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066386 (n + 1) : ℚ) / 2

end

end A155809.P15468743279996891557

/-! ## A155809.P13383049487217509048

`A273943(A066386(n+1))`
-/

namespace A155809.P13383049487217509048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A066386 (n + 1)).toNat

end

end A155809.P13383049487217509048

/-! ## A155809.P2301291773708448798

`A014682(lcm(2, A066386(n+1)))`
-/

namespace A155809.P2301291773708448798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A066386 (n + 1)))

end

end A155809.P2301291773708448798

/-! ## A155809.P13901021945161544930

`A014682(A066386(C(n+1, n)))`
-/

namespace A155809.P13901021945161544930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A066386 (Nat.choose (n + 1) n)).toNat

end

end A155809.P13901021945161544930

/-! ## A155809.P16538255707037026808

`A014682(A066386(n+1)+2)-1`
-/

namespace A155809.P16538255707037026808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A066386 (n + 1) + 2).toNat - 1

end

end A155809.P16538255707037026808

/-! ## A155809.P4307201576581863544

`A014682(ceil(sin(n)²)*A066386(n+1))`
-/

namespace A155809.P4307201576581863544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (⌈Real.sin (n : ℝ) ^ 2⌉ * A066386 (n + 1)).toNat

end

end A155809.P4307201576581863544

/-! ## A155809.P2663435082673984654

`A014682(A066386(n+1))*A057427(n)`
-/

namespace A155809.P2663435082673984654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A066386 (n + 1)).toNat * A057427 n

end

end A155809.P2663435082673984654

/-! ## A155809.P11421010360334331296

`and(A014682(A066386(n+1)), A057428(n))`
-/

namespace A155809.P11421010360334331296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014682 (A066386 (n + 1)).toNat) (A057428 n)

end

end A155809.P11421010360334331296

/-! ## A155809.P8984883326696885788

`A014682(A066386(n+1)%A347906(n+1))`
-/

namespace A155809.P8984883326696885788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A066386 (n + 1)) (A347906 (n + 1))).toNat

end

end A155809.P8984883326696885788

/-! ## A155809.P9158626393805469120

`A057428(n+1)+A014682(A066386(n+1)+2)`
-/

namespace A155809.P9158626393805469120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A014682 (A066386 (n + 1) + 2).toNat

end

end A155809.P9158626393805469120

/-!
# A155810: Triangle, read by rows, where g.f.: A(x,y) = exp( Sum_{n>=1} (2^n + y)^n * x^n/n ) is a power series in x and y with integer coefficients.

The programs for A155810, there is no canonical definition to state claims against.
-/

/-! ## A155810.P17357707660841691923

`A056538(A286508(n)+A164528(n+1))`
-/

namespace A155810.P17357707660841691923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A286508 n + A164528 (n + 1)).toNat

end

end A155810.P17357707660841691923

/-! ## A155810.P9816602062136240144

`A046486(n+1)-A291564(A342139(n))`
-/

namespace A155810.P9816602062136240144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046486 (n + 1) - A291564 (A342139 n).toNat

end

end A155810.P9816602062136240144

/-!
# A155811: a(n) = [x^(n+1)*y] exp( Sum_{m>=1} (2^m + y)^m * x^m/m ), in which the coefficients of x^n*y^k are integer for n>=k>=0.

The programs for A155811, there is no canonical definition to state claims against.
-/

/-! ## A155811.P4573931001741186708

`A155810(∑[n+1]+1)`
-/

namespace A155811.P4573931001741186708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155810 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A155811.P4573931001741186708

/-! ## A155811.P5332921626111388180

`record[A155810(A014132(n+1))]`
-/

namespace A155811.P5332921626111388180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155810 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155811.P5332921626111388180

/-! ## A155811.P1103794153057405086

`record[lcm(A155810(n), A244118(n))]`
-/

namespace A155811.P1103794153057405086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155810 n) (A244118 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155811.P1103794153057405086

/-! ## A155811.P7775776470458834129

`record[and(A155810(n), A287325(n))]`
-/

namespace A155811.P7775776470458834129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155810 n) (A287325 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155811.P7775776470458834129

/-! ## A155811.P15176147243295839373

`record[or(A103452(n), A155810(n))]`
-/

namespace A155811.P15176147243295839373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A155810 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155811.P15176147243295839373

/-!
# A155813: a(n) = [x^(n+1)*y] exp( Sum_{m>=1} (3^m + y)^m * x^m/m ), in which the coefficients of x^n*y^k are integer for n>=k>=0.

The programs for A155813, there is no canonical definition to state claims against.
-/

/-! ## A155813.P9017785094828051837

`A155812(∑[n+1]+1)`
-/

namespace A155813.P9017785094828051837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155812 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A155813.P9017785094828051837

/-!
# A155814: Numbers n with the property that all four polynomials mentioned in A139414 evaluate at n to composite numbers.

The programs for A155814, there is no canonical definition to state claims against.
-/

/-! ## A155814.P11514482806091841936

`eq[0, A155925(n)]`
-/

namespace A155814.P11514482806091841936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155814.P11514482806091841936

/-! ## A155814.P14148285496709953426

`lt[A155925(n), A002265(n)]`
-/

namespace A155814.P14148285496709953426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155814.P14148285496709953426

/-! ## A155814.P13464444155521675193

`lt[A155925(n), A029265(n)]`
-/

namespace A155814.P13464444155521675193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155814.P13464444155521675193

/-! ## A155814.P10673407201767055457

`lt[A155925(n)², A000124(n)]`
-/

namespace A155814.P10673407201767055457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155814.P10673407201767055457

/-! ## A155814.P14608172603056513011

`lt[A155925(n)², A008486(n)]`
-/

namespace A155814.P14608172603056513011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155814.P14608172603056513011

/-! ## A155814.P15501111915494023340

`lt[A155925(n), A001651(n+1)]`
-/

namespace A155814.P15501111915494023340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155814.P15501111915494023340

/-! ## A155814.P9911938864501442342

`lt[A155925(n), A019554(n+1)]`
-/

namespace A155814.P9911938864501442342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155814.P9911938864501442342

/-!
# A155816: First nonzero digit in the decimal expansion of (cos Pi/4)^n.

The programs for A155816, there is no canonical definition to state claims against.
-/

/-! ## A155816.P17862183710520958016

`A052038(A063920(n+1))`
-/

namespace A155816.P17862183710520958016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A063920 (n + 1)).toNat

end

end A155816.P17862183710520958016

/-!
# A155817: Sequence having the property that a(n) is the sum of the first a(n) digits of the sequence.

The programs for A155817, there is no canonical definition to state claims against.
-/

/-! ## A155817.P9511944496664959056

`A161995(A113019(2*n+3)+n)`
-/

namespace A155817.P9511944496664959056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161995 (A113019 (2 * n + 3) + (n : ℤ)).toNat

end

end A155817.P9511944496664959056

/-! ## A155817.P9959651247659095872

`A348870(∑[A045891(n)])+A124767(n)`
-/

namespace A155817.P9959651247659095872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348870 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A124767 n

end

end A155817.P9959651247659095872

/-!
# A155819: a(n) = p(n+1)^2 + 2*p(n) + 1; p(n) is the n-th prime number and n >= 1.

The programs for A155819, there is no canonical definition to state claims against.
-/

/-! ## A155819.P8301363448431169782

`A069482(n+1)+(p?[round(8*n/7)]+1)²`
-/

namespace A155819.P8301363448431169782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 2

end

end A155819.P8301363448431169782

/-! ## A155819.P11707531758199569604

`A001157(p?[2*n+1])+2*p?[xor(1, n)+1]`
-/

namespace A155819.P11707531758199569604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + (2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A155819.P11707531758199569604

/-! ## A155819.P6284069101814408787

`A110833(n+1)+A069482(n+1)`
-/

namespace A155819.P6284069101814408787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) + A069482 (n + 1)

end

end A155819.P6284069101814408787

/-! ## A155819.P3023647591711754212

`A349660(n+1)+A008864(n+1)`
-/

namespace A155819.P3023647591711754212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) + A008864 (n + 1)

end

end A155819.P3023647591711754212

/-! ## A155819.P11433510473775868115

`A072055(n+1)+A001248(n+2)`
-/

namespace A155819.P11433510473775868115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A001248 (n + 2)

end

end A155819.P11433510473775868115

/-!
# A155820: Primes of the form prime(k)^2 + 2*prime(k-1) where prime(k) is the k-th prime number.

The programs for A155820, there is no canonical definition to state claims against.
-/

/-! ## A155820.P9495014013059272786

`p?[A001747(n+1)+A001248(n+1)]`
-/

namespace A155820.P9495014013059272786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155820.P9495014013059272786

/-! ## A155820.P18253062768893153324

`p?[A349660(n+1)+A000040(n+1)]`
-/

namespace A155820.P18253062768893153324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155820.P18253062768893153324

/-! ## A155820.P9940503400888463278

`p?[A001747(n+1)+A000040(n+1)²]`
-/

namespace A155820.P9940503400888463278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155820.P9940503400888463278

/-! ## A155820.P2139463489032520115

`p?[A100484(n+1)+A065091(n+1)²]`
-/

namespace A155820.P2139463489032520115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A065091 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155820.P2139463489032520115

/-! ## A155820.P17572489823514605022

`p?[A100484(n+1)+A000040(n+2)²]`
-/

namespace A155820.P17572489823514605022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A000040 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155820.P17572489823514605022

/-!
# A155822: Number of compositions of n with no part greater than 3 such that no two adjacent parts are equal.

The programs for A155822, the canonical program `A155822.P2411130379838946447` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155822 has offset 0).

The definition of A155822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155822.P2411130379838946447

`a(n-3)+a(n-4)+a(n-5)+2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=4, a(6)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155822

/-- `a(n-3)+a(n-4)+a(n-5)+2*a(n-6)` -/
def P2411130379838946447.Spec : Prop :=
  ∀ n, (P2411130379838946447.a n : ℤ) = A155822 n

theorem P2411130379838946447.correct : P2411130379838946447.Spec := by
  intro n
  simp only [A155822]

end A155822

/-!
# A155825: Triangle T(n, k) = (-1)^n * n! * StirlingS1(n, k)*StirlingS1(n, n-k)/binomial(n, k), read by rows.

The programs for A155825, there is no canonical definition to state claims against.
-/

/-! ## A155825.P7344650631331625546

`A098361(n)*A155742(n)`
-/

namespace A155825.P7344650631331625546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A155742 n

end

end A155825.P7344650631331625546

/-! ## A155825.P2845057832399259022

`A225479(A061579(n))*A225479(n)`
-/

namespace A155825.P2845057832399259022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A061579 n).toNat * A225479 n

end

end A155825.P2845057832399259022

/-! ## A155825.P8022106712473121920

`A055349(n+1)/A135278(n)*A225479(n)`
-/

namespace A155825.P8022106712473121920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055349 (n + 1) : ℚ) / (A135278 n : ℚ) * (A225479 n : ℚ)

end

end A155825.P8022106712473121920

/-! ## A155825.P9801476704069602384

`A225479(A056943(n)+A003056(n))*A225479(n)`
-/

namespace A155825.P9801476704069602384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A056943 n + A003056 n).toNat * A225479 n

end

end A155825.P9801476704069602384

/-! ## A155825.P17016341107295610689

`A225479(A057944(n)+A025581(n))*A225479(n)`
-/

namespace A155825.P17016341107295610689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (A057944 n + A025581 n).toNat * A225479 n

end

end A155825.P17016341107295610689

/-!
# A155826: Triangle T(n, k) = binomial(n, k) + binomial(k*(n-k), n) + 2*(-1)^n*StirlingS1(n, k)*StirlingS1(n, n-k), read by rows.

The programs for A155826, there is no canonical definition to state claims against.
-/

/-! ## A155826.P9065841637278000591

`A155798(n)+2*A155742(n)`
-/

namespace A155826.P9065841637278000591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155798 n + 2 * A155742 n

end

end A155826.P9065841637278000591

/-! ## A155826.P11108000900796938750

`A356431(A155744(n))`
-/

namespace A155826.P11108000900796938750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356431 (A155744 n).toNat

end

end A155826.P11108000900796938750

/-! ## A155826.P8717227549601375822

`A274231(A155744(n)+1)`
-/

namespace A155826.P8717227549601375822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274231 (A155744 n + 1).toNat

end

end A155826.P8717227549601375822

/-! ## A155826.P977124228270280153

`A304731(5^A062275(n))`
-/

namespace A155826.P977124228270280153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304731 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A062275 n : ℤ))).toNat

end

end A155826.P977124228270280153

/-!
# A155828: Number of integers k in {1,2,3,..,n} such that kn+1 is a square.

The programs for A155828, the canonical program `A155828.P14308889291480101554` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155828 has offset 1).

The definition of A155828 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155828.P14308889291480101554

`A060594(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A155828

/-- `A060594(n+1)-1` -/
def P14308889291480101554.Spec : Prop :=
  ∀ n, P14308889291480101554.a n = A155828 (n + 1)

theorem P14308889291480101554.correct : P14308889291480101554.Spec := by
  intro n
  simp only [A155828, Nat.add_sub_cancel]

end A155828

/-! ## A155828.P839284767935228805

`∑{d}[A157230(n+1), #]`
-/

namespace A155828.P839284767935228805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A155828.P839284767935228805

namespace A155828

/-- `∑{d}[A157230(n+1), #]` -/
def P839284767935228805.Spec : Prop :=
  ∀ n, (P839284767935228805.a n : ℤ) = A155828 (n + 1)

end A155828

/-! ## A155828.P15300840648828341430

`2^A072273(n+1)-1`
-/

namespace A155828.P15300840648828341430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A072273 (n + 1) : ℤ) - 1

end

end A155828.P15300840648828341430

namespace A155828

/-- `2^A072273(n+1)-1` -/
def P15300840648828341430.Spec : Prop :=
  ∀ n, P15300840648828341430.a n = (A155828 (n + 1) : ℚ)

end A155828

/-! ## A155828.P9934655631823165540

`2^(A046072(n+1)-C(n, n²))-1`
-/

namespace A155828.P9934655631823165540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046072 (n + 1) - (Nat.choose n (n ^ 2) : ℤ) : ℤ) - 1

end

end A155828.P9934655631823165540

namespace A155828

/-- `2^(A046072(n+1)-C(n, n²))-1` -/
def P9934655631823165540.Spec : Prop :=
  ∀ n, P9934655631823165540.a n = (A155828 (n + 1) : ℚ)

end A155828

/-! ## A155828.P8435604114734285829

`A001065(A060594(n+1))`
-/

namespace A155828.P8435604114734285829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A060594 (n + 1)).toNat

end

end A155828.P8435604114734285829

namespace A155828

/-- `A001065(A060594(n+1))` -/
def P8435604114734285829.Spec : Prop :=
  ∀ n, P8435604114734285829.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P722386120731039476

`A003817(A157230(n+1))`
-/

namespace A155828.P722386120731039476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A157230 (n + 1)).toNat

end

end A155828.P722386120731039476

namespace A155828

/-- `A003817(A157230(n+1))` -/
def P722386120731039476.Spec : Prop :=
  ∀ n, P722386120731039476.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P17883966633366823452

`A002616(Δ[A211415(n)])-1`
-/

namespace A155828.P17883966633366823452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (f1 (n + 1) - f1 n).toNat - 1

end

end A155828.P17883966633366823452

namespace A155828

/-- `A002616(Δ[A211415(n)])-1` -/
def P17883966633366823452.Spec : Prop :=
  ∀ n, P17883966633366823452.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P3342455844929027460

`A246159(A060594(n+1)+1)`
-/

namespace A155828.P3342455844929027460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 (A060594 (n + 1) + 1).toNat

end

end A155828.P3342455844929027460

namespace A155828

/-- `A246159(A060594(n+1)+1)` -/
def P3342455844929027460.Spec : Prop :=
  ∀ n, P3342455844929027460.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P839885615698193129

`A003958(A087688(n+1))-1`
-/

namespace A155828.P839885615698193129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A087688 (n + 1)).toNat - 1

end

end A155828.P839885615698193129

namespace A155828

/-- `A003958(A087688(n+1))-1` -/
def P839885615698193129.Spec : Prop :=
  ∀ n, P839885615698193129.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P2977582710228578522

`A327730(A026741(n+1))-1`
-/

namespace A155828.P2977582710228578522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327730 (A026741 (n + 1)).toNat - 1

end

end A155828.P2977582710228578522

namespace A155828

/-- `A327730(A026741(n+1))-1` -/
def P2977582710228578522.Spec : Prop :=
  ∀ n, P2977582710228578522.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P17119674819083488295

`A061142(A364925(n+1))-1`
-/

namespace A155828.P17119674819083488295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A364925 (n + 1)).toNat - 1

end

end A155828.P17119674819083488295

namespace A155828

/-- `A061142(A364925(n+1))-1` -/
def P17119674819083488295.Spec : Prop :=
  ∀ n, P17119674819083488295.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P2682671574633227254

`A322362(A319100(n+1))-1`
-/

namespace A155828.P2682671574633227254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (A319100 (n + 1)).toNat - 1

end

end A155828.P2682671574633227254

namespace A155828

/-- `A322362(A319100(n+1))-1` -/
def P2682671574633227254.Spec : Prop :=
  ∀ n, P2682671574633227254.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P1922181647852992406

`A063514(2*A060594(n+1))`
-/

namespace A155828.P1922181647852992406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (2 * A060594 (n + 1)).toNat

end

end A155828.P1922181647852992406

namespace A155828

/-- `A063514(2*A060594(n+1))` -/
def P1922181647852992406.Spec : Prop :=
  ∀ n, P1922181647852992406.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P13445150917494537444

`A065423(2*A060594(n+1))`
-/

namespace A155828.P13445150917494537444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A060594 (n + 1)).toNat

end

end A155828.P13445150917494537444

namespace A155828

/-- `A065423(2*A060594(n+1))` -/
def P13445150917494537444.Spec : Prop :=
  ∀ n, P13445150917494537444.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P5739997849224077252

`A109606(2*A060594(n+1))`
-/

namespace A155828.P5739997849224077252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * A060594 (n + 1)).toNat

end

end A155828.P5739997849224077252

namespace A155828

/-- `A109606(2*A060594(n+1))` -/
def P5739997849224077252.Spec : Prop :=
  ∀ n, P5739997849224077252.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P15715278947215753689

`A219428(2*A060594(n+1))`
-/

namespace A155828.P15715278947215753689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (2 * A060594 (n + 1)).toNat

end

end A155828.P15715278947215753689

namespace A155828

/-- `A219428(2*A060594(n+1))` -/
def P15715278947215753689.Spec : Prop :=
  ∀ n, P15715278947215753689.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P13119412935706085271

`A003817(n)%A060594(n+1)`
-/

namespace A155828.P13119412935706085271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003817 n) (A060594 (n + 1))

end

end A155828.P13119412935706085271

namespace A155828

/-- `A003817(n)%A060594(n+1)` -/
def P13119412935706085271.Spec : Prop :=
  ∀ n, P13119412935706085271.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P5877590177064673568

`2*A157230(n+1)-A157928(n)`
-/

namespace A155828.P5877590177064673568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157230 (n + 1) - A157928 n

end

end A155828.P5877590177064673568

namespace A155828

/-- `2*A157230(n+1)-A157928(n)` -/
def P5877590177064673568.Spec : Prop :=
  ∀ n, P5877590177064673568.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P14295295275696807276

`A007665(n+1)%A060594(n+1)`
-/

namespace A155828.P14295295275696807276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007665 (n + 1)) (A060594 (n + 1))

end

end A155828.P14295295275696807276

namespace A155828

/-- `A007665(n+1)%A060594(n+1)` -/
def P14295295275696807276.Spec : Prop :=
  ∀ n, P14295295275696807276.a n = A155828 (n + 1)

end A155828

/-! ## A155828.P166610091925080542

`gcd(A017550(n), A319100(n+1))-1`
-/

namespace A155828.P166610091925080542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A017550 n) (A319100 (n + 1)) : ℤ) - 1

end

end A155828.P166610091925080542

namespace A155828

/-- `gcd(A017550(n), A319100(n+1))-1` -/
def P166610091925080542.Spec : Prop :=
  ∀ n, P166610091925080542.a n = A155828 (n + 1)

end A155828

/-!
# A155833: Primes in which smallest digit is final digit.

The programs for A155833, there is no canonical definition to state claims against.
-/

/-! ## A155833.P8577535115489203432

`p?[(n+1)*(A004186(n+1)-A004186(n))]`
-/

namespace A155833.P8577535115489203432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004186 (n + 1) - A004186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155833.P8577535115489203432

/-! ## A155833.P16228906031314773919

`p?[A032907(n+1)%A357030(n)²]`
-/

namespace A155833.P16228906031314773919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032907 (n + 1)) (A357030 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155833.P16228906031314773919

/-!
# A155836: 2^(2^n) mod n.

The programs for A155836, there is no canonical definition to state claims against.
-/

/-! ## A155836.P294007785435741488

`(A137327(n+1)-1)%(n+1)`
-/

namespace A155836.P294007785435741488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137327 (n + 1) - 1) (n + 1 : ℤ)

end

end A155836.P294007785435741488

/-! ## A155836.P2994986120156692005

`A137327(n+1)+A057428(n)`
-/

namespace A155836.P2994986120156692005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137327 (n + 1) + A057428 n

end

end A155836.P2994986120156692005

/-! ## A155836.P18296591903486490702

`A137327(n+1)-A057427(n)`
-/

namespace A155836.P18296591903486490702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137327 (n + 1) - A057427 n

end

end A155836.P18296591903486490702

/-! ## A155836.P13897756916849253822

`A023443(floor(sqrt(A137327(n+1)²+1)))`
-/

namespace A155836.P13897756916849253822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.sqrt (A137327 (n + 1) ^ 2 + 1)).toNat

end

end A155836.P13897756916849253822

/-! ## A155836.P11788022382162101352

`A137327(n+1)-A032741(A020639(n+1))`
-/

namespace A155836.P11788022382162101352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137327 (n + 1) - A032741 (A020639 (n + 1)).toNat

end

end A155836.P11788022382162101352

/-! ## A155836.P17211354723948145142

`A000079(A000079(n+1)%A200905(n+1))%(n+1)`
-/

namespace A155836.P17211354723948145142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (Int.tmod (A000079 (n + 1)) (A200905 (n + 1))).toNat) (n + 1 : ℤ)

end

end A155836.P17211354723948145142

/-!
# A155839: A ratio of two Catalan arrays.

The programs for A155839, there is no canonical definition to state claims against.
-/

/-! ## A155839.P17752772622398836845

`A163352(lcm(A065600(n), A085791(n)))`
-/

namespace A155839.P17752772622398836845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (Int.lcm (A065600 n) (A085791 n))

end

end A155839.P17752772622398836845

/-! ## A155839.P1783414024090065928

`A347552(A281891(n+1))`
-/

namespace A155839.P1783414024090065928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (A281891 (n + 1)).toNat

end

end A155839.P1783414024090065928

/-! ## A155839.P2596110902568299437

`A103921(A276995(n)^4)`
-/

namespace A155839.P2596110902568299437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A276995 n ^ 4).toNat

end

end A155839.P2596110902568299437

/-! ## A155839.P2926702755872122385

`A102705(A135814(n))%7`
-/

namespace A155839.P2926702755872122385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102705 (A135814 n).toNat) 7

end

end A155839.P2926702755872122385

/-! ## A155839.P2673835555485421531

`A255337(A135814(n)²²)`
-/

namespace A155839.P2673835555485421531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255337 ((A135814 n ^ 2) ^ 2).toNat

end

end A155839.P2673835555485421531

/-!
# A155841: Primes of the form q*p+2^p where p is prime, q=3.

The programs for A155841, there is no canonical definition to state claims against.
-/

/-! ## A155841.P15709819360080895535

`A086653(A037174(n+2))`
-/

namespace A155841.P15709819360080895535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086653 (A037174 (n + 2)).toNat

end

end A155841.P15709819360080895535

/-!
# A155850: a(n) = smallest k > 1 such that k-1 and k+1 together have n prime divisors.

The programs for A155850, there is no canonical definition to state claims against.
-/

/-! ## A155850.P9896302634438725972

`A137734(A081949(n+1)+n)`
-/

namespace A155850.P9896302634438725972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A081949 (n + 1) + (n : ℤ)).toNat

end

end A155850.P9896302634438725972

/-! ## A155850.P17837493253339014632

`A004738(A081949(n+1)+A063524(n))`
-/

namespace A155850.P17837493253339014632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A081949 (n + 1) + A063524 n).toNat

end

end A155850.P17837493253339014632

/-! ## A155850.P16270177538446331227

`A000194(or(A081949(n+1), A086970(n)))`
-/

namespace A155850.P16270177538446331227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor (A081949 (n + 1)) (A086970 n)).toNat

end

end A155850.P16270177538446331227

/-! ## A155850.P2364212386211681129

`A000194(A081949(n+1)+A061142(n+3))`
-/

namespace A155850.P2364212386211681129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A081949 (n + 1) + A061142 (n + 3)).toNat

end

end A155850.P2364212386211681129

/-! ## A155850.P5153048757594459827

`A000194(or(A081949(n+1), A089120(n+1)))`
-/

namespace A155850.P5153048757594459827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor (A081949 (n + 1)) (A089120 (n + 1))).toNat

end

end A155850.P5153048757594459827

/-!
# A155851: n is prime and is the sum of the first k primes for some k, start from 5.

The programs for A155851, there is no canonical definition to state claims against.
-/

/-! ## A155851.P9234781685830145532

`p?[∑[p?[2*n+5]]]`
-/

namespace A155851.P9234781685830145532
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155851.P9234781685830145532

/-! ## A155851.P4327174511799142878

`p?[∑[p?[Δ[n²]]]-3]`
-/

namespace A155851.P4327174511799142878
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155851.P4327174511799142878

/-! ## A155851.P3185937134431941029

`p?[p?[2*n+1]+a(n-1)]` with `a(0)=0`
-/

namespace A155851.P3185937134431941029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155851.P3185937134431941029

/-! ## A155851.P9614032065172458924

`p?[A007504(n)-5]`
-/

namespace A155851.P9614032065172458924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155851.P9614032065172458924

/-! ## A155851.P426400078037103108

`p?[A109723(n)-5]`
-/

namespace A155851.P426400078037103108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109723 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155851.P426400078037103108

/-!
# A155853: Numbers n such that 13*n + 3 is a prime.

The programs for A155853, the canonical program `A155853.P16741750777501655828` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155853 has offset 1).

The definition of A155853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155853.P16741750777501655828

`floor(A100202(n+1)/13)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A155853

/-- `floor(A100202(n+1)/13)` -/
def P16741750777501655828.Spec : Prop :=
  ∀ n, P16741750777501655828.a n = A155853 (n + 1)

theorem P16741750777501655828.correct : P16741750777501655828.Spec := by
  intro n
  simp only [A155853, Nat.add_sub_cancel]

end A155853

/-! ## A155853.P9144943536980627730

`floor(p?[a(n-1)+13]/13)` with `a(0)=3`
-/

namespace A155853.P9144943536980627730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 13⌋

end

end A155853.P9144943536980627730

namespace A155853

/-- `floor(p?[a(n-1)+13]/13)` -/
def P9144943536980627730.Spec : Prop :=
  ∀ n, P9144943536980627730.a n = A155853 (n + 1)

end A155853

/-! ## A155853.P3461903911951264426

`eq[1, A001222(13*n+3)]`
-/

namespace A155853.P3461903911951264426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (13 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155853.P3461903911951264426

namespace A155853

/-- `eq[1, A001222(13*n+3)]` -/
def P3461903911951264426.Spec : Prop :=
  ∀ n, (P3461903911951264426.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P8979738822886182589

`eq[2, A000005(13*n+3)]`
-/

namespace A155853.P8979738822886182589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (13 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155853.P8979738822886182589

namespace A155853

/-- `eq[2, A000005(13*n+3)]` -/
def P8979738822886182589.Spec : Prop :=
  ∀ n, (P8979738822886182589.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P1768906596709347037

`lt[n+1, A020639(13*n+3)]`
-/

namespace A155853.P1768906596709347037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (13 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155853.P1768906596709347037

namespace A155853

/-- `lt[n+1, A020639(13*n+3)]` -/
def P1768906596709347037.Spec : Prop :=
  ∀ n, (P1768906596709347037.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P4344091403401844648

`lt[A001222(A190991(n)+2), 2]`
-/

namespace A155853.P4344091403401844648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A190991 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155853.P4344091403401844648

namespace A155853

/-- `lt[A001222(A190991(n)+2), 2]` -/
def P4344091403401844648.Spec : Prop :=
  ∀ n, (P4344091403401844648.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P13871617242140849766

`lt[A001222(A306285(n+1)-1), 2]`
-/

namespace A155853.P13871617242140849766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A306285 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155853.P13871617242140849766

namespace A155853

/-- `lt[A001222(A306285(n+1)-1), 2]` -/
def P13871617242140849766.Spec : Prop :=
  ∀ n, (P13871617242140849766.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P3214009213014918928

`lt[A001222(26*n+6), 3]`
-/

namespace A155853.P3214009213014918928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (26 * n + 6)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155853.P3214009213014918928

namespace A155853

/-- `lt[A001222(26*n+6), 3]` -/
def P3214009213014918928.Spec : Prop :=
  ∀ n, (P3214009213014918928.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P9143995210393514143

`lt[A318326(A004767(3*n)+n), 1]`
-/

namespace A155853.P9143995210393514143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (A004767 (3 * n) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155853.P9143995210393514143

namespace A155853

/-- `lt[A318326(A004767(3*n)+n), 1]` -/
def P9143995210393514143.Spec : Prop :=
  ∀ n, (P9143995210393514143.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P8759147047457647745

`lt[n+1, A014963(13*n+3)]`
-/

namespace A155853.P8759147047457647745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (13 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155853.P8759147047457647745

namespace A155853

/-- `lt[n+1, A014963(13*n+3)]` -/
def P8759147047457647745.Spec : Prop :=
  ∀ n, (P8759147047457647745.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P4622168913700318740

`lt[A039651(A016945(2*n)+n), 1]`
-/

namespace A155853.P4622168913700318740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (A016945 (2 * n) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155853.P4622168913700318740

namespace A155853

/-- `lt[A039651(A016945(2*n)+n), 1]` -/
def P4622168913700318740.Spec : Prop :=
  ∀ n, (P4622168913700318740.a n : ℤ) = A155853 (n + 1)

end A155853

/-! ## A155853.P10609802004555578438

`eq[A055672(A306285(n+1)-1), A306285(n+1)]`
-/

namespace A155853.P10609802004555578438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A306285 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155853.P10609802004555578438

namespace A155853

/-- `eq[A055672(A306285(n+1)-1), A306285(n+1)]` -/
def P10609802004555578438.Spec : Prop :=
  ∀ n, (P10609802004555578438.a n : ℤ) = A155853 (n + 1)

end A155853

/-!
# A155854: Numbers k such that 13*k + 3 is not prime.

The programs for A155854, the canonical program `A155854.P8987642405607699949` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155854 has offset 1).

The definition of A155854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155854.P8987642405607699949

`comp[A155853(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155854

/-- `comp[A155853(n+1)]` -/
def P8987642405607699949.Spec : Prop :=
  ∀ n, (P8987642405607699949.a n : ℤ) = A155854 (n + 1)

theorem P8987642405607699949.correct : P8987642405607699949.Spec := by
  intro n
  simp only [A155854, Nat.add_sub_cancel]

end A155854

/-! ## A155854.P17902713703223573083

`lt[2, A006530(∑{e}[a(n-1)+13, #])²]` with `a(0)=3`
-/

namespace A155854.P17902713703223573083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155854.P17902713703223573083

namespace A155854

/-- `lt[2, A006530(∑{e}[a(n-1)+13, #])²]` -/
def P17902713703223573083.Spec : Prop :=
  ∀ n, (P17902713703223573083.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P13765002062187004186

`lt[2, A000005(13*n+3)]`
-/

namespace A155854.P13765002062187004186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (13 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155854.P13765002062187004186

namespace A155854

/-- `lt[2, A000005(13*n+3)]` -/
def P13765002062187004186.Spec : Prop :=
  ∀ n, (P13765002062187004186.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P15031898420411462743

`lt[1, A001222(3*n+10*n+3)]`
-/

namespace A155854.P15031898420411462743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + (10 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155854.P15031898420411462743

namespace A155854

/-- `lt[1, A001222(3*n+10*n+3)]` -/
def P15031898420411462743.Spec : Prop :=
  ∀ n, (P15031898420411462743.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P18183440113779805799

`lt[A020639(A306285(n+1)-1), A005408(n)]`
-/

namespace A155854.P18183440113779805799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155854.P18183440113779805799

namespace A155854

/-- `lt[A020639(A306285(n+1)-1), A005408(n)]` -/
def P18183440113779805799.Spec : Prop :=
  ∀ n, (P18183440113779805799.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P5135409988990251954

`lt[A020639(A306285(n+1)-1), A273669(n+1)]`
-/

namespace A155854.P5135409988990251954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155854.P5135409988990251954

namespace A155854

/-- `lt[A020639(A306285(n+1)-1), A273669(n+1)]` -/
def P5135409988990251954.Spec : Prop :=
  ∀ n, (P5135409988990251954.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P15323994879914136225

`lt[A020639(A016873(n)+8*n+1), A000203(n+1)]`
-/

namespace A155854.P15323994879914136225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016873 n + (8 * n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155854.P15323994879914136225

namespace A155854

/-- `lt[A020639(A016873(n)+8*n+1), A000203(n+1)]` -/
def P15323994879914136225.Spec : Prop :=
  ∀ n, (P15323994879914136225.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P12736742471187468811

`eq[0, A339579(A306285(n+1))]`
-/

namespace A155854.P12736742471187468811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A306285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155854.P12736742471187468811

namespace A155854

/-- `eq[0, A339579(A306285(n+1))]` -/
def P12736742471187468811.Spec : Prop :=
  ∀ n, (P12736742471187468811.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P16533967151399111965

`eq[1, A005171(A306285(n+1)-1)]`
-/

namespace A155854.P16533967151399111965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A306285 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155854.P16533967151399111965

namespace A155854

/-- `eq[1, A005171(A306285(n+1)-1)]` -/
def P16533967151399111965.Spec : Prop :=
  ∀ n, (P16533967151399111965.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P15212570049452895183

`eq[1, A066247(A306285(n+1)-1)]`
-/

namespace A155854.P15212570049452895183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A306285 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155854.P15212570049452895183

namespace A155854

/-- `eq[1, A066247(A306285(n+1)-1)]` -/
def P15212570049452895183.Spec : Prop :=
  ∀ n, (P15212570049452895183.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P18190467556175725768

`lt[1, ∑{e}[A016945(2*n)+n, #]]`
-/

namespace A155854.P18190467556175725768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * n) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155854.P18190467556175725768

namespace A155854

/-- `lt[1, ∑{e}[A016945(2*n)+n, #]]` -/
def P18190467556175725768.Spec : Prop :=
  ∀ n, (P18190467556175725768.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P5371732449298622248

`lt[A020639(A016957(2*n)+n-1), n+2]`
-/

namespace A155854.P5371732449298622248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016957 (2 * n) + ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155854.P5371732449298622248

namespace A155854

/-- `lt[A020639(A016957(2*n)+n-1), n+2]` -/
def P5371732449298622248.Spec : Prop :=
  ∀ n, (P5371732449298622248.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P1249729256059814515

`eq[1, A102368(13*n+2)]`
-/

namespace A155854.P1249729256059814515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102368 (13 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155854.P1249729256059814515

namespace A155854

/-- `eq[1, A102368(13*n+2)]` -/
def P1249729256059814515.Spec : Prop :=
  ∀ n, (P1249729256059814515.a n : ℤ) = A155854 (n + 1)

end A155854

/-! ## A155854.P13219468425608525799

`lt[A014963(3*n+A008592(n)+3), n+2]`
-/

namespace A155854.P13219468425608525799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((3 * n : ℤ) + (A008592 n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155854.P13219468425608525799

namespace A155854

/-- `lt[A014963(3*n+A008592(n)+3), n+2]` -/
def P13219468425608525799.Spec : Prop :=
  ∀ n, (P13219468425608525799.a n : ℤ) = A155854 (n + 1)

end A155854

/-!
# A155856: Triangle T(n,k) = binomial(2*n-k, k)*(n-k)!, read by rows.

The programs for A155856, the canonical program `A155856.P9351911224662601144` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155856 has offset 0).

The definition of A155856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155856.P2120029238511119906

`A156367(A061579(n))`
-/

namespace A155856.P2120029238511119906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156367 (A061579 n).toNat

end

end A155856.P2120029238511119906

namespace A155856

/-- `A156367(A061579(n))` -/
def P2120029238511119906.Spec : Prop :=
  ∀ n, P2120029238511119906.a n = A155856 n

end A155856

/-! ## A155856.P13992788600398591424

`A156367(A114327(n)+n)`
-/

namespace A155856.P13992788600398591424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156367 (A114327 n + (n : ℤ)).toNat

end

end A155856.P13992788600398591424

namespace A155856

/-- `A156367(A114327(n)+n)` -/
def P13992788600398591424.Spec : Prop :=
  ∀ n, P13992788600398591424.a n = A155856 n

end A155856

/-! ## A155856.P9351911224662601144

`A054142(n)*A119502(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A155856

/-- `A054142(n)*A119502(n)` -/
def P9351911224662601144.Spec : Prop :=
  ∀ n, P9351911224662601144.a n = A155856 n

theorem P9351911224662601144.correct : P9351911224662601144.Spec := by
  intro n
  simp only [A155856]

end A155856

/-! ## A155856.P7441199811628449009

`A025581(n)!*A054142(n)`
-/

namespace A155856.P7441199811628449009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A054142 n

end

end A155856.P7441199811628449009

namespace A155856

/-- `A025581(n)!*A054142(n)` -/
def P7441199811628449009.Spec : Prop :=
  ∀ n, P7441199811628449009.a n = A155856 n

end A155856

/-! ## A155856.P5660417600732112086

`A156367(A038722(n+1)-1)`
-/

namespace A155856.P5660417600732112086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156367 (A038722 (n + 1) - 1).toNat

end

end A155856.P5660417600732112086

namespace A155856

/-- `A156367(A038722(n+1)-1)` -/
def P5660417600732112086.Spec : Prop :=
  ∀ n, P5660417600732112086.a n = A155856 n

end A155856

/-! ## A155856.P1114082671516068819

`A156367(A038722(n+2))`
-/

namespace A155856.P1114082671516068819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156367 (A038722 (n + 2)).toNat

end

end A155856.P1114082671516068819

namespace A155856

/-- `A156367(A038722(n+2))` -/
def P1114082671516068819.Spec : Prop :=
  ∀ n, P1114082671516068819.a n = A155856 n

end A155856

/-! ## A155856.P16873537936933760896

`A109767(n)/A112336(n)`
-/

namespace A155856.P16873537936933760896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (A112336 n : ℚ)

end

end A155856.P16873537936933760896

namespace A155856

/-- `A109767(n)/A112336(n)` -/
def P16873537936933760896.Spec : Prop :=
  ∀ n, P16873537936933760896.a n = (A155856 n : ℚ)

end A155856

/-! ## A155856.P3675410236660946651

`A119274(n)/A106187(n)`
-/

namespace A155856.P3675410236660946651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119274 n : ℚ) / (A106187 n : ℚ)

end

end A155856.P3675410236660946651

namespace A155856

/-- `A119274(n)/A106187(n)` -/
def P3675410236660946651.Spec : Prop :=
  ∀ n, P3675410236660946651.a n = (A155856 n : ℚ)

end A155856

/-!
# A155857: Row sums of triangle A155856.

The programs for A155857, the canonical program `A155857.P8947277489021596096` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155857 has offset 0).

The definition of A155857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155857.P8947277489021596096

`(n+1)*a(n-1)-(n-3)*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155857

/-- `(n+1)*a(n-1)-(n-3)*a(n-2)-a(n-3)` -/
def P8947277489021596096.Spec : Prop :=
  ∀ n, P8947277489021596096.a n = A155857 n

theorem P8947277489021596096.correct : P8947277489021596096.Spec := by
  intro n
  simp only [A155857]

end A155857

/-! ## A155857.P8665854485011840183

`A300484(n)-a(n-1)` with `a(0)=1`
-/

namespace A155857.P8665854485011840183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A300484 n - a (n - 1)

end

end A155857.P8665854485011840183

namespace A155857

/-- `A300484(n)-a(n-1)` -/
def P8665854485011840183.Spec : Prop :=
  ∀ n, P8665854485011840183.a n = A155857 n

end A155857

/-! ## A155857.P2886668865600977729

`A300480(∑[n+3])-a(n-1)` with `a(0)=1`
-/

namespace A155857.P2886668865600977729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A300480 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A155857.P2886668865600977729

namespace A155857

/-- `A300480(∑[n+3])-a(n-1)` -/
def P2886668865600977729.Spec : Prop :=
  ∀ n, P2886668865600977729.a n = A155857 n

end A155857

/-! ## A155857.P11724012551697614982

`abs(a(n-1)-A300480(A141214(n)))` with `a(0)=1`
-/

namespace A155857.P11724012551697614982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A300480 (A141214 n).toNat|

end

end A155857.P11724012551697614982

namespace A155857

/-- `abs(a(n-1)-A300480(A141214(n)))` -/
def P11724012551697614982.Spec : Prop :=
  ∀ n, P11724012551697614982.a n = A155857 n

end A155857

/-!
# A155858: Diagonal sums of triangle A155856.

The programs for A155858, there is no canonical definition to state claims against.
-/

/-! ## A155858.P3189768321164840716

`A219652(A076726(n)-1)`
-/

namespace A155858.P3189768321164840716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A076726 n - 1).toNat

end

end A155858.P3189768321164840716

/-! ## A155858.P11505102689538514957

`A219652(xor(3, A076726(n)))`
-/

namespace A155858.P11505102689538514957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (Int.xor 3 (A076726 n)).toNat

end

end A155858.P11505102689538514957

/-! ## A155858.P7744588813495784264

`A138997(∑[∑[A189844(n+1)]])`
-/

namespace A155858.P7744588813495784264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155858.P7744588813495784264

/-!
# A155859: a(n) = (1/162)*(61*10^n + 18*n + 20).

The programs for A155859, the canonical program `A155859.P11408362033916894523` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155859 has offset 1).

The definition of A155859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/162*(61*10^(n+1)+18*(n+1)+20)` (program `A155859.P9651802450866200904`, by `A155859.P9651802450866200904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155859.P11408362033916894523

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=4, a(1)=38, a(2)=377`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155859

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P11408362033916894523.Spec : Prop :=
  ∀ n, P11408362033916894523.a n = A155859 (n + 1)

theorem P11408362033916894523.correct : P11408362033916894523.Spec := by
  intro n
  simp only [A155859, Nat.add_sub_cancel]

end A155859

/-! ## A155859.P9651802450866200904

`1/162*(61*10^(n+1)+18*(n+1)+20)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155859.P9651802450866200904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 162 * (61 * 10 ^ (n + 1) + 18 * (n + 1) + 20 : ℚ)

end

end A155859.P9651802450866200904

namespace A155859

/-- `1/162*(61*10^(n+1)+18*(n+1)+20)` -/
def P9651802450866200904.Spec : Prop :=
  ∀ n, P9651802450866200904.a n = (A155859 (n + 1) : ℚ)

theorem P9651802450866200904.correct : P9651802450866200904.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A155859, Nat.add_sub_cancel, A155859.P9651802450866200904.a, A155859.P11408362033916894523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A155859, Nat.add_sub_cancel, A155859.P9651802450866200904.a, A155859.P11408362033916894523.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155859

/-! ## A155859.P3882197799158772596

`∑[∑[ogf((4-10x+5x^2)/(1-10x))]]`
-/

namespace A155859.P3882197799158772596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -10, 5] [1, -10] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155859.P3882197799158772596

namespace A155859

/-- `∑[∑[ogf((4-10x+5x^2)/(1-10x))]]` -/
def P3882197799158772596.Spec : Prop :=
  ∀ n, P3882197799158772596.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P8298002179500376789

`10*a(n-1)-(n+1)` with `a(0)=4`
-/

namespace A155859.P8298002179500376789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  10 * a (n - 1) - (n + 1 : ℤ)

end

end A155859.P8298002179500376789

namespace A155859

/-- `10*a(n-1)-(n+1)` -/
def P8298002179500376789.Spec : Prop :=
  ∀ n, P8298002179500376789.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P5469786217815965318

`10*a(n-1)-1-n` with `a(0)=4`
-/

namespace A155859.P5469786217815965318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  10 * a (n - 1) - 1 - (n : ℤ)

end

end A155859.P5469786217815965318

namespace A155859

/-- `10*a(n-1)-1-n` -/
def P5469786217815965318.Spec : Prop :=
  ∀ n, P5469786217815965318.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P348265183526561564

`Δ[A002279(n)-∑[A014824(n)]]`
-/

namespace A155859.P348265183526561564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155859.P348265183526561564

namespace A155859

/-- `Δ[A002279(n)-∑[A014824(n)]]` -/
def P348265183526561564.Spec : Prop :=
  ∀ n, P348265183526561564.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P1373140718305827263

`Δ[A002279(n)]-A014824(n+1)`
-/

namespace A155859.P1373140718305827263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014824 (n + 1)

end

end A155859.P1373140718305827263

namespace A155859

/-- `Δ[A002279(n)]-A014824(n+1)` -/
def P1373140718305827263.Spec : Prop :=
  ∀ n, P1373140718305827263.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P2786791541835053555

`5*A011557(n)-A014824(n+1)`
-/

namespace A155859.P2786791541835053555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A011557 n - A014824 (n + 1)

end

end A155859.P2786791541835053555

namespace A155859

/-- `5*A011557(n)-A014824(n+1)` -/
def P2786791541835053555.Spec : Prop :=
  ∀ n, P2786791541835053555.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P8894049116383549449

`Δ[A002279(n)]-∑[A000042(n+1)]`
-/

namespace A155859.P8894049116383549449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A155859.P8894049116383549449

namespace A155859

/-- `Δ[A002279(n)]-∑[A000042(n+1)]` -/
def P8894049116383549449.Spec : Prop :=
  ∀ n, P8894049116383549449.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P4454336844436306725

`Δ[A093142(n)]-∑[A000042(n+1)]`
-/

namespace A155859.P4454336844436306725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A155859.P4454336844436306725

namespace A155859

/-- `Δ[A093142(n)]-∑[A000042(n+1)]` -/
def P4454336844436306725.Spec : Prop :=
  ∀ n, P4454336844436306725.a n = A155859 (n + 1)

end A155859

/-! ## A155859.P11870650856070676330

`A011557(n+1)/2-A014824(n+1)`
-/

namespace A155859.P11870650856070676330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) / 2 - (A014824 (n + 1) : ℚ)

end

end A155859.P11870650856070676330

namespace A155859

/-- `A011557(n+1)/2-A014824(n+1)` -/
def P11870650856070676330.Spec : Prop :=
  ∀ n, P11870650856070676330.a n = (A155859 (n + 1) : ℚ)

end A155859

/-! ## A155859.P16122309323663174106

`A268100(2*n+1)-∑[∑[A268100(2*n)]]`
-/

namespace A155859.P16122309323663174106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155859.P16122309323663174106

namespace A155859

/-- `A268100(2*n+1)-∑[∑[A268100(2*n)]]` -/
def P16122309323663174106.Spec : Prop :=
  ∀ n, P16122309323663174106.a n = A155859 (n + 1)

end A155859

/-!
# A155861: a(n) is the smallest integer k such that the n-th (backward) difference of the partition sequence A000041 is positive from k onwards.

The programs for A155861, there is no canonical definition to state claims against.
-/

/-! ## A155861.P10102168562978491155

`A119712(n)+round(1/acot(n))`
-/

namespace A155861.P10102168562978491155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119712 n + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

end

end A155861.P10102168562978491155

/-! ## A155861.P520328814582098619

`A119712(floor(acot(n)+n))+n`
-/

namespace A155861.P520328814582098619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119712 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + (n : ℤ)

end

end A155861.P520328814582098619

/-! ## A155861.P3739760378975825730

`A119712(round(sqrt(n²+1)))+n`
-/

namespace A155861.P3739760378975825730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119712 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (n : ℤ)

end

end A155861.P3739760378975825730

/-! ## A155861.P2702983353828568981

`A134478(∑[n])+A119712(n)`
-/

namespace A155861.P2702983353828568981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (∑ j ∈ Finset.range (n + 1), f1 j) + A119712 n

end

end A155861.P2702983353828568981

/-! ## A155861.P17978341875737491399

`A123108(2*n)+A119712(n)`
-/

namespace A155861.P17978341875737491399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) + A119712 n

end

end A155861.P17978341875737491399

/-! ## A155861.P12324969065983449435

`A000005(ceil(2/(n+1)))+A119712(n)-1+n`
-/

namespace A155861.P12324969065983449435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈2 / (n + 1 : ℚ)⌉.toNat + (A119712 n - 1 + (n : ℤ))

end

end A155861.P12324969065983449435

/-!
# A155862: A 'Morgan Voyce' transform of A007854.

The programs for A155862, there is no canonical definition to state claims against.
-/

/-! ## A155862.P15490878710328972028

`∑[A334543(a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A155862.P15490878710328972028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A334543 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155862.P15490878710328972028

/-!
# A155863: Triangle T(n,k) = n*(n^2 - 1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

The programs for A155863, the canonical program `A155863.P6306218083756010822` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155863 has offset 0).

The definition of A155863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155863.P6306218083756010822

`gcd(A068606(n)*A130595(n), A103452(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A155863

/-- `gcd(A068606(n)*A130595(n), A103452(n))` -/
def P6306218083756010822.Spec : Prop :=
  ∀ n, (P6306218083756010822.a n : ℤ) = A155863 n

theorem P6306218083756010822.correct : P6306218083756010822.Spec := by
  intro n
  simp only [A155863]

end A155863

/-! ## A155863.P6215751215210202667

`A002024(n+1)/A131821(n+1)*A155864(n)`
-/

namespace A155863.P6215751215210202667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A131821 (n + 1) : ℚ) * (A155864 n : ℚ)

end

end A155863.P6215751215210202667

namespace A155863

/-- `A002024(n+1)/A131821(n+1)*A155864(n)` -/
def P6215751215210202667.Spec : Prop :=
  ∀ n, P6215751215210202667.a n = (A155863 n : ℚ)

end A155863

/-! ## A155863.P9456934056395180136

`A155864(n)*A318274(A080036(n))`
-/

namespace A155863.P9456934056395180136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155864 n * A318274 (A080036 n).toNat

end

end A155863.P9456934056395180136

namespace A155863

/-- `A155864(n)*A318274(A080036(n))` -/
def P9456934056395180136.Spec : Prop :=
  ∀ n, P9456934056395180136.a n = A155863 n

end A155863

/-! ## A155863.P15388461992393975093

`A318274(A080036(n))*A318274(n)*A155865(n)`
-/

namespace A155863.P15388461992393975093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A080036 n).toNat * A318274 n * A155865 n

end

end A155863.P15388461992393975093

namespace A155863

/-- `A318274(A080036(n))*A318274(n)*A155865(n)` -/
def P15388461992393975093.Spec : Prop :=
  ∀ n, P15388461992393975093.a n = A155863 n

end A155863

/-! ## A155863.P9916089273874245989

`A007318(n)*A318274(A080036(n))*A086461(n)`
-/

namespace A155863.P9916089273874245989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A318274 (A080036 n).toNat * A086461 n

end

end A155863.P9916089273874245989

namespace A155863

/-- `A007318(n)*A318274(A080036(n))*A086461(n)` -/
def P9916089273874245989.Spec : Prop :=
  ∀ n, P9916089273874245989.a n = A155863 n

end A155863

/-! ## A155863.P30576382071871240

`A007318(n)*A028310(A068606(n))`
-/

namespace A155863.P30576382071871240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028310 (A068606 n).toNat

end

end A155863.P30576382071871240

namespace A155863

/-- `A007318(n)*A028310(A068606(n))` -/
def P30576382071871240.Spec : Prop :=
  ∀ n, P30576382071871240.a n = A155863 n

end A155863

/-!
# A155864: Triangle T(n,k) = n*(n-1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

The programs for A155864, the canonical program `A155864.P5469586023862322716` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155864 has offset 0).

The definition of A155864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155864.P2094203053624806724

`A155865(n)*A318274(n)`
-/

namespace A155864.P2094203053624806724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n * A318274 n

end

end A155864.P2094203053624806724

namespace A155864

/-- `A155865(n)*A318274(n)` -/
def P2094203053624806724.Spec : Prop :=
  ∀ n, P2094203053624806724.a n = A155864 n

end A155864

/-! ## A155864.P5469586023862322716

`ceil(A155863(n)/∑[A010054(n)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155864

/-- `ceil(A155863(n)/∑[A010054(n)])` -/
def P5469586023862322716.Spec : Prop :=
  ∀ n, P5469586023862322716.a n = A155864 n

theorem P5469586023862322716.correct : P5469586023862322716.Spec := by
  intro n
  simp only [A155864]

end A155864

/-! ## A155864.P10486167074114359227

`ceil(A155863(n)/A002024(n+1))`
-/

namespace A155864.P10486167074114359227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155863 n : ℚ) / (A002024 (n + 1) : ℚ)⌉

end

end A155864.P10486167074114359227

namespace A155864

/-- `ceil(A155863(n)/A002024(n+1))` -/
def P10486167074114359227.Spec : Prop :=
  ∀ n, P10486167074114359227.a n = A155864 n

end A155864

/-! ## A155864.P3230183499341891001

`A007318(n)*A028310(A004247(n))`
-/

namespace A155864.P3230183499341891001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028310 (A004247 n).toNat

end

end A155864.P3230183499341891001

namespace A155864

/-- `A007318(n)*A028310(A004247(n))` -/
def P3230183499341891001.Spec : Prop :=
  ∀ n, P3230183499341891001.a n = A155864 n

end A155864

/-! ## A155864.P8044589420849497728

`A007318(n)*A028310(1-A176270(n))`
-/

namespace A155864.P8044589420849497728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028310 (1 - A176270 n).toNat

end

end A155864.P8044589420849497728

namespace A155864

/-- `A007318(n)*A028310(1-A176270(n))` -/
def P8044589420849497728.Spec : Prop :=
  ∀ n, P8044589420849497728.a n = A155864 n

end A155864

/-! ## A155864.P6935994181366539672

`A007318(n)*(A103451(n)+A004247(n))`
-/

namespace A155864.P6935994181366539672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (A103451 n + A004247 n)

end

end A155864.P6935994181366539672

namespace A155864

/-- `A007318(n)*(A103451(n)+A004247(n))` -/
def P6935994181366539672.Spec : Prop :=
  ∀ n, P6935994181366539672.a n = A155864 n

end A155864

/-! ## A155864.P17784755901287952589

`gcd(A004247(n)*A007318(n), A103452(n))`
-/

namespace A155864.P17784755901287952589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n * A007318 n) (A103452 n)

end

end A155864.P17784755901287952589

namespace A155864

/-- `gcd(A004247(n)*A007318(n), A103452(n))` -/
def P17784755901287952589.Spec : Prop :=
  ∀ n, (P17784755901287952589.a n : ℤ) = A155864 n

end A155864

/-! ## A155864.P15599578947822355686

`A007318(n)*A086461(n)`
-/

namespace A155864.P15599578947822355686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A086461 n

end

end A155864.P15599578947822355686

namespace A155864

/-- `A007318(n)*A086461(n)` -/
def P15599578947822355686.Spec : Prop :=
  ∀ n, P15599578947822355686.a n = A155864 n

end A155864

/-! ## A155864.P11136535041889180136

`A007318(n)*A137735(A004247(n)²)`
-/

namespace A155864.P11136535041889180136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A137735 (A004247 n ^ 2).toNat

end

end A155864.P11136535041889180136

namespace A155864

/-- `A007318(n)*A137735(A004247(n)²)` -/
def P11136535041889180136.Spec : Prop :=
  ∀ n, P11136535041889180136.a n = A155864 n

end A155864

/-! ## A155864.P15198986662229565002

`A004277(A129533(n))`
-/

namespace A155864.P15198986662229565002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A129533 n).toNat

end

end A155864.P15198986662229565002

namespace A155864

/-- `A004277(A129533(n))` -/
def P15198986662229565002.Spec : Prop :=
  ∀ n, P15198986662229565002.a n = A155864 n

end A155864

/-!
# A155865: Triangle T(n,k) = (n-1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

The programs for A155865, the canonical program `A155865.P6741079026207357977` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155865 has offset 0).

The definition of A155865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155865.P6741079026207357977

`A134399(A056943(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A155865

/-- `A134399(A056943(n))` -/
def P6741079026207357977.Spec : Prop :=
  ∀ n, P6741079026207357977.a n = A155865 n

theorem P6741079026207357977.correct : P6741079026207357977.Spec := by
  intro n
  simp only [A155865]

end A155865

/-! ## A155865.P7664638461677578316

`A134399(A083920(n))`
-/

namespace A155865.P7664638461677578316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 (A083920 n).toNat

end

end A155865.P7664638461677578316

namespace A155865

/-- `A134399(A083920(n))` -/
def P7664638461677578316.Spec : Prop :=
  ∀ n, P7664638461677578316.a n = A155865 n

end A155865

/-! ## A155865.P5114651014670875305

`A134399(A271439(n))`
-/

namespace A155865.P5114651014670875305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 (A271439 n).toNat

end

end A155865.P5114651014670875305

namespace A155865

/-- `A134399(A271439(n))` -/
def P5114651014670875305.Spec : Prop :=
  ∀ n, P5114651014670875305.a n = A155865 n

end A155865

/-! ## A155865.P8050213556945318387

`A155864(n)/A318274(n)`
-/

namespace A155865.P8050213556945318387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155864 n : ℚ) / (A318274 n : ℚ)

end

end A155865.P8050213556945318387

namespace A155865

/-- `A155864(n)/A318274(n)` -/
def P8050213556945318387.Spec : Prop :=
  ∀ n, P8050213556945318387.a n = (A155865 n : ℚ)

end A155865

/-! ## A155865.P13896953303592073757

`sqrt(A174126(n))`
-/

namespace A155865.P13896953303592073757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174126 n : ℝ)

end

end A155865.P13896953303592073757

namespace A155865

/-- `sqrt(A174126(n))` -/
def P13896953303592073757.Spec : Prop :=
  ∀ n, P13896953303592073757.a n = (A155865 n : ℝ)

end A155865

/-! ## A155865.P5057232130233795506

`A174127(n)^(1/3)`
-/

namespace A155865.P5057232130233795506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A174127 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A155865.P5057232130233795506

namespace A155865

/-- `A174127(n)^(1/3)` -/
def P5057232130233795506.Spec : Prop :=
  ∀ n, P5057232130233795506.a n = (A155865 n : ℝ)

end A155865

/-! ## A155865.P4072716477151553347

`A174127(n)/A174126(n)`
-/

namespace A155865.P4072716477151553347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174127 n : ℚ) / (A174126 n : ℚ)

end

end A155865.P4072716477151553347

namespace A155865

/-- `A174127(n)/A174126(n)` -/
def P4072716477151553347.Spec : Prop :=
  ∀ n, P4072716477151553347.a n = (A155865 n : ℚ)

end A155865

/-! ## A155865.P7854680141687730888

`A173881(n)/A007318(n)`
-/

namespace A155865.P7854680141687730888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 n : ℚ) / (A007318 n : ℚ)

end

end A155865.P7854680141687730888

namespace A155865

/-- `A173881(n)/A007318(n)` -/
def P7854680141687730888.Spec : Prop :=
  ∀ n, P7854680141687730888.a n = (A155865 n : ℚ)

end A155865

/-! ## A155865.P10380646593054833526

`A173882(n)/A174124(n)`
-/

namespace A155865.P10380646593054833526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 n : ℚ) / (A174124 n : ℚ)

end

end A155865.P10380646593054833526

namespace A155865

/-- `A173882(n)/A174124(n)` -/
def P10380646593054833526.Spec : Prop :=
  ∀ n, P10380646593054833526.a n = (A155865 n : ℚ)

end A155865

/-! ## A155865.P14483039158537842317

`abs(A173881(n)/A130595(n))`
-/

namespace A155865.P14483039158537842317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A173881 n : ℚ) / (A130595 n : ℚ)|

end

end A155865.P14483039158537842317

namespace A155865

/-- `abs(A173881(n)/A130595(n))` -/
def P14483039158537842317.Spec : Prop :=
  ∀ n, P14483039158537842317.a n = (A155865 n : ℚ)

end A155865

/-! ## A155865.P11155059160394755901

`A173881(n)/Δ[A102363(n)]`
-/

namespace A155865.P11155059160394755901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A155865.P11155059160394755901

namespace A155865

/-- `A173881(n)/Δ[A102363(n)]` -/
def P11155059160394755901.Spec : Prop :=
  ∀ n, P11155059160394755901.a n = (A155865 n : ℚ)

end A155865

/-! ## A155865.P2669238215387369017

`A173881(n)/(A014473(n)+1)`
-/

namespace A155865.P2669238215387369017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A155865.P2669238215387369017

namespace A155865

/-- `A173881(n)/(A014473(n)+1)` -/
def P2669238215387369017.Spec : Prop :=
  ∀ n, P2669238215387369017.a n = (A155865 n : ℚ)

end A155865

/-! ## A155865.P11643721955455043594

`A028310(A025581(n)*A097805(n))`
-/

namespace A155865.P11643721955455043594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A025581 n * A097805 n).toNat

end

end A155865.P11643721955455043594

namespace A155865

/-- `A028310(A025581(n)*A097805(n))` -/
def P11643721955455043594.Spec : Prop :=
  ∀ n, P11643721955455043594.a n = A155865 n

end A155865

/-!
# A155866: A 'Morgan Voyce' transform of the Bell numbers A000110.

The programs for A155866, there is no canonical definition to state claims against.
-/

/-! ## A155866.P6956693618866145931

`A083382(A322764(n)-1)`
-/

namespace A155866.P6956693618866145931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A322764 n - 1).toNat

end

end A155866.P6956693618866145931

/-! ## A155866.P4123624373677796490

`∑[A127757(∑[A270386(n)])]`
-/

namespace A155866.P4123624373677796490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270386 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155866.P4123624373677796490

/-!
# A155867: A 'Morgan Voyce' transform of the large Schroeder numbers A006318.

The programs for A155867, there is no canonical definition to state claims against.
-/

/-! ## A155867.P9575793463946313228

`∑[A166694(n)]`
-/

namespace A155867.P9575793463946313228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155867.P9575793463946313228

/-! ## A155867.P7289364298384745718

`a(n-1)+A166694(A000007(n)+n)` with `a(0)=1`
-/

namespace A155867.P7289364298384745718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A166694 (A000007 n + (n : ℤ)).toNat

end

end A155867.P7289364298384745718

/-! ## A155867.P55386452755602569

`a(n-1)+lcm(A166694(n), A270644(n+1))` with `a(0)=1`
-/

namespace A155867.P55386452755602569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A166694 n) (A270644 (n + 1))

end

end A155867.P55386452755602569

/-!
# A155868: Triangle T(n, k) = (-1)^n*StirlingS1(n, j)*StirlingS1(n, n-j), with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A155868, there is no canonical definition to state claims against.
-/

/-! ## A155868.P11648927273494773668

`A155742(n%A124216(n))`
-/

namespace A155868.P11648927273494773668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155742 (Int.tmod (n : ℤ) (A124216 n)).toNat

end

end A155868.P11648927273494773668

/-! ## A155868.P6714465511170270872

`gcd(A103452(n), A155742(n))`
-/

namespace A155868.P6714465511170270872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A155742 n)

end

end A155868.P6714465511170270872

/-! ## A155868.P9795327493534593239

`or(A155742(n), A319691(A255914(n)))`
-/

namespace A155868.P9795327493534593239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155742 n) (A319691 (A255914 n).toNat)

end

end A155868.P9795327493534593239

/-! ## A155868.P920714583488728112

`or(A155742(n), A209229(A022166(n)))`
-/

namespace A155868.P920714583488728112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155742 n) (A209229 (A022166 n).toNat)

end

end A155868.P920714583488728112

/-! ## A155868.P10311478726851372463

`A316341(A155826(n))+A155742(n)`
-/

namespace A155868.P10311478726851372463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A155826 n).toNat + A155742 n

end

end A155868.P10311478726851372463

/-!
# A155872: a(n) = 10^n + 11^n.

The programs for A155872, the canonical program `A155872.P17818404134372416620` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155872 has offset 0).

The definition of A155872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+11^n` (program `A155872.P17818404134372416620`, by `A155872.P17818404134372416620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155872.P17818404134372416620

`10^n+11^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155872

/-- `10^n+11^n` -/
def P17818404134372416620.Spec : Prop :=
  ∀ n, (P17818404134372416620.a n : ℤ) = A155872 n

theorem P17818404134372416620.correct : P17818404134372416620.Spec := by
  intro n
  simp only [A155872]

end A155872

/-! ## A155872.P13988413633981075658

`record[A155673(A117370(n+1))+1]`
-/

namespace A155872.P13988413633981075658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155673 (A117370 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155872.P13988413633981075658

namespace A155872

/-- `record[A155673(A117370(n+1))+1]` -/
def P13988413633981075658.Spec : Prop :=
  ∀ n, P13988413633981075658.a n = A155872 n

end A155872

/-! ## A155872.P3965970175234554744

`Δ[A047856(n)+A047855(n)]`
-/

namespace A155872.P3965970175234554744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047856 n + A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155872.P3965970175234554744

namespace A155872

/-- `Δ[A047856(n)+A047855(n)]` -/
def P3965970175234554744.Spec : Prop :=
  ∀ n, P3965970175234554744.a n = A155872 n

end A155872

/-! ## A155872.P2776593340567658912

`floor((A199020(n)+3)/2-A155674(n))`
-/

namespace A155872.P2776593340567658912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199020 n + 3 : ℚ) / 2 - (A155674 n : ℚ)⌋

end

end A155872.P2776593340567658912

namespace A155872

/-- `floor((A199020(n)+3)/2-A155674(n))` -/
def P2776593340567658912.Spec : Prop :=
  ∀ n, P2776593340567658912.a n = A155872 n

end A155872

/-! ## A155872.P1159176546178086726

`floor((A199756(n)+2)/3-A155674(n))`
-/

namespace A155872.P1159176546178086726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199756 n + 2 : ℚ) / 3 - (A155674 n : ℚ)⌋

end

end A155872.P1159176546178086726

namespace A155872

/-- `floor((A199756(n)+2)/3-A155674(n))` -/
def P1159176546178086726.Spec : Prop :=
  ∀ n, P1159176546178086726.a n = A155872 n

end A155872

/-! ## A155872.P8236347976099870367

`floor((A199027(n)+5)/4-A155674(n))`
-/

namespace A155872.P8236347976099870367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199027 n + 5 : ℚ) / 4 - (A155674 n : ℚ)⌋

end

end A155872.P8236347976099870367

namespace A155872

/-- `floor((A199027(n)+5)/4-A155674(n))` -/
def P8236347976099870367.Spec : Prop :=
  ∀ n, P8236347976099870367.a n = A155872 n

end A155872

/-! ## A155872.P9634223571798274121

`xor(A008486(A151933(n)), A155673(n))`
-/

namespace A155872.P9634223571798274121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008486 (A151933 n).toNat) (A155673 n)

end

end A155872.P9634223571798274121

namespace A155872

/-- `xor(A008486(A151933(n)), A155673(n))` -/
def P9634223571798274121.Spec : Prop :=
  ∀ n, P9634223571798274121.a n = A155872 n

end A155872

/-! ## A155872.P18001990850510123998

`(A009966(n)+A009964(n))/A000079(n)`
-/

namespace A155872.P18001990850510123998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009966 n + A009964 n : ℚ) / (A000079 n : ℚ)

end

end A155872.P18001990850510123998

namespace A155872

/-- `(A009966(n)+A009964(n))/A000079(n)` -/
def P18001990850510123998.Spec : Prop :=
  ∀ n, P18001990850510123998.a n = (A155872 n : ℚ)

end A155872

/-!
# A155873: This sequence of prime numbers reproduces itself (without its "tail") when the last digit of each term is erased.

The programs for A155873, there is no canonical definition to state claims against.
-/

/-! ## A155873.P32681141620073253

`A024770(lt[A055037(n+1), A224953(n)]+1)`
-/

namespace A155873.P32681141620073253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A155873.P32681141620073253

/-! ## A155873.P253867258259203731

`∩[A024770(n+1), A185596(A238985(n+1))]`
-/

namespace A155873.P253867258259203731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185596 (A238985 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155873.P253867258259203731

/-!
# A155874: Smallest positive composite number such that a(n)+n is also composite.

The programs for A155874, there is no canonical definition to state claims against.
-/

/-! ## A155874.P17796183231089773059

`A155875(n)-n`
-/

namespace A155874.P17796183231089773059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155875 n - (n : ℤ)

end

end A155874.P17796183231089773059

/-! ## A155874.P3673230443845672422

`abs(A155875(n)+A001489(n))`
-/

namespace A155874.P3673230443845672422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155875 n + A001489 n|

end

end A155874.P3673230443845672422

/-! ## A155874.P5409316407193185540

`dr(A155875(n)+A061601(n))`
-/

namespace A155874.P5409316407193185540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A155875 n + A061601 n)

end

end A155874.P5409316407193185540

/-! ## A155874.P16509460995751151852

`A155875(A155875(n)%(n+4))`
-/

namespace A155874.P16509460995751151852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155875 (Int.tmod (A155875 n) (n + 4 : ℤ)).toNat

end

end A155874.P16509460995751151852

/-! ## A155874.P3281197654059028933

`A000203(A155875(n)+xor(n, -1))`
-/

namespace A155874.P3281197654059028933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155875 n + Int.xor (n : ℤ) (-1)).toNat

end

end A155874.P3281197654059028933

/-! ## A155874.P1899556331074190672

`A001478(n+1)+A155875(n)+1`
-/

namespace A155874.P1899556331074190672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A155875 n + 1)

end

end A155874.P1899556331074190672

/-! ## A155874.P7519733707940869753

`A000203(A155875(n)+A001478(n+1))`
-/

namespace A155874.P7519733707940869753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A155875 n + A001478 (n + 1)).toNat

end

end A155874.P7519733707940869753

/-!
# A155875: Smallest positive composite number such that a(n) - n is also composite.

The programs for A155875, there is no canonical definition to state claims against.
-/

/-! ## A155875.P14326673214919333310

`A155874(n)+n`
-/

namespace A155875.P14326673214919333310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155874 n + (n : ℤ)

end

end A155875.P14326673214919333310

/-! ## A155875.P4365636787166772469

`abs(A001489(n)-A155874(n))`
-/

namespace A155875.P4365636787166772469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A155874 n|

end

end A155875.P4365636787166772469

/-! ## A155875.P8270006428061616127

`A020725(n-(1-A155874(n)))`
-/

namespace A155875.P8270006428061616127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n : ℤ) - (1 - A155874 n)).toNat

end

end A155875.P8270006428061616127

/-! ## A155875.P11515076955102948911

`1-(A024000(n)-A155874(n))`
-/

namespace A155875.P11515076955102948911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A024000 n - A155874 n)

end

end A155875.P11515076955102948911

/-! ## A155875.P525128934478456286

`A005843(n)-(n-A155874(n))`
-/

namespace A155875.P525128934478456286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A155874 n)

end

end A155875.P525128934478456286

/-! ## A155875.P6690554876828320929

`n-(A055671(n²)-A155874(n))`
-/

namespace A155875.P6690554876828320929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A055671 (n ^ 2) - A155874 n)

end

end A155875.P6690554876828320929

/-! ## A155875.P14944505733982594651

`A000096(n)-(∑[n]-A155874(n))`
-/

namespace A155875.P14944505733982594651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A155874 n)

end

end A155875.P14944505733982594651

/-! ## A155875.P1073004733153284739

`A000027(2*n-(n-A155874(n)))`
-/

namespace A155875.P1073004733153284739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n : ℤ) - ((n : ℤ) - A155874 n)).toNat

end

end A155875.P1073004733153284739

/-! ## A155875.P12584575763195391252

`A020725(A155874(n)-A024000(n))`
-/

namespace A155875.P12584575763195391252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A155874 n - A024000 n).toNat

end

end A155875.P12584575763195391252

/-!
# A155877: Sums of three Fermat numbers.

The programs for A155877, there is no canonical definition to state claims against.
-/

/-! ## A155877.P13037925416569188846

`A259433(A174055(n+1))`
-/

namespace A155877.P13037925416569188846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A174055 (n + 1)).toNat

end

end A155877.P13037925416569188846

/-! ## A155877.P9378351437011940542

`eq[A335428(A335481(n+1)), A335497(n+1)]`
-/

namespace A155877.P9378351437011940542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335428 (A335481 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155877.P9378351437011940542

/-! ## A155877.P10556214374462919419

`A020742(lt[A289069(n), A117578(3*(n+1))])`
-/

namespace A155877.P10556214374462919419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289069 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117578 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155877.P10556214374462919419

/-!
# A155878: a(0)=4; for n > 0, a(n) is the smallest composite number c > a(n-1) such that c + n is also composite.

The programs for A155878, there is no canonical definition to state claims against.
-/

/-! ## A155878.P16417448042597883805

`lt[A029837(A088195(2*(n+2))), A326641(n)]`
-/

namespace A155878.P16417448042597883805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A088195 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155878.P16417448042597883805

/-! ## A155878.P4498474747423104882

`lt[A358550(2*(n+1)), A326641(n)]`
-/

namespace A155878.P4498474747423104882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358550 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155878.P4498474747423104882

/-! ## A155878.P16711155953000449829

`lt[A007862(A020150(n+1)), A032741(n)]`
-/

namespace A155878.P16711155953000449829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A020150 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155878.P16711155953000449829

/-! ## A155878.P2902181512917123351

`lt[A152286(A185304(n+1)), A351230(n)]`
-/

namespace A155878.P2902181512917123351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152286 (A185304 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155878.P2902181512917123351

/-! ## A155878.P15802353143751659511

`lt[A084558(n+1), A122295(A143862(n))]`
-/

namespace A155878.P15802353143751659511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122295 (A143862 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155878.P15802353143751659511

/-!
# A155879: a(0) = 4; for n > 0, a(n) is the smallest composite number c > a(n-1) such that c - n is also composite.

The programs for A155879, there is no canonical definition to state claims against.
-/

/-! ## A155879.P10312491907072806505

`eq[A339579(n+1), A339579(A270109(n))]`
-/

namespace A155879.P10312491907072806505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A270109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155879.P10312491907072806505

/-!
# A155881: a(n) is the number of zeros needed to write the integers 1 through Fibonacci(n).

The programs for A155881, the canonical program `A155881.P7949998546200455293` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155881 has offset 1).

The definition of A155881 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061217, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155881.P7949998546200455293

`A061217(A000045(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155881

/-- `A061217(A000045(n+1))` -/
def P7949998546200455293.Spec : Prop :=
  ∀ n, P7949998546200455293.a n = A155881 (n + 1)

theorem P7949998546200455293.correct : P7949998546200455293.Spec := by
  intro n
  simp only [A155881, Nat.add_sub_cancel]

end A155881

/-! ## A155881.P17028503205764295672

`A061217(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A155881.P17028503205764295672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (f1 (n + 1) - f1 n).toNat

end

end A155881.P17028503205764295672

namespace A155881

/-- `A061217(Δ[round(ϕ*a(n-1))])` -/
def P17028503205764295672.Spec : Prop :=
  ∀ n, P17028503205764295672.a n = A155881 (n + 1)

end A155881

/-! ## A155881.P2324301661101766101

`A061217(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A155881.P2324301661101766101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155881.P2324301661101766101

namespace A155881

/-- `A061217(∑[round(ϕ*a(n-1))])` -/
def P2324301661101766101.Spec : Prop :=
  ∀ n, P2324301661101766101.a n = A155881 (n + 1)

end A155881

/-! ## A155881.P3556170874378102124

`A061217(A127968(n))`
-/

namespace A155881.P3556170874378102124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (A127968 n).toNat

end

end A155881.P3556170874378102124

namespace A155881

/-- `A061217(A127968(n))` -/
def P3556170874378102124.Spec : Prop :=
  ∀ n, P3556170874378102124.a n = A155881 (n + 1)

end A155881

/-! ## A155881.P16459098019501520025

`A061217(A185357(n))`
-/

namespace A155881.P16459098019501520025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (A185357 n).toNat

end

end A155881.P16459098019501520025

namespace A155881

/-- `A061217(A185357(n))` -/
def P16459098019501520025.Spec : Prop :=
  ∀ n, P16459098019501520025.a n = A155881 (n + 1)

end A155881

/-!
# A155882: Smallest positive prime number such that a(n)-2n is also prime, a(n) < a(n+1), and the differences a(n)-2n must increase with n.

The programs for A155882, there is no canonical definition to state claims against.
-/

/-! ## A155882.P9110769002703716291

`A108184(n+1)+2*(n+1)`
-/

namespace A155882.P9110769002703716291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108184 (n + 1) + (2 * (n + 1) : ℤ)

end

end A155882.P9110769002703716291

/-! ## A155882.P2805776056740834338

`A008472(A108184(n+1)+Δ[A014206(n)])`
-/

namespace A155882.P2805776056740834338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A108184 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A155882.P2805776056740834338

/-! ## A155882.P8292936204580078008

`A014206(n+1)+A108184(n+1)-A014206(n)`
-/

namespace A155882.P8292936204580078008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 (n + 1) + (A108184 (n + 1) - A014206 n)

end

end A155882.P8292936204580078008

/-! ## A155882.P1813637145924748764

`A020484(n+1)+A108184(n+1)-A020483(n+1)`
-/

namespace A155882.P1813637145924748764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1) + (A108184 (n + 1) - A020483 (n + 1))

end

end A155882.P1813637145924748764

/-! ## A155882.P14321805175498468078

`A020484(n+1)+A108184(n+1)-A054906(n+1)`
-/

namespace A155882.P14321805175498468078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1) + (A108184 (n + 1) - A054906 (n + 1))

end

end A155882.P14321805175498468078

/-! ## A155882.P15266603997939447533

`A290838(A108184(n+1)+2*n)`
-/

namespace A155882.P15266603997939447533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290838 (A108184 (n + 1) + (2 * n : ℤ)).toNat

end

end A155882.P15266603997939447533

/-! ## A155882.P6061488666714534059

`A020639(n+1+A001615(A108184(n+1))+n)`
-/

namespace A155882.P6061488666714534059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) + (A001615 (A108184 (n + 1)).toNat + (n : ℤ))).toNat

end

end A155882.P6061488666714534059

/-!
# A155883: a(n) = 14*n^3 - 30*n^2 + 24*n - 7.

The programs for A155883, the canonical program `A155883.P11039522712884649567` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155883 has offset 1).

The definition of A155883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*(n+1)^3-30*(n+1)²+24*(n+1)-7` (program `A155883.P11039522712884649567`, by `A155883.P11039522712884649567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155883.P11039522712884649567

`14*(n+1)^3-30*(n+1)²+24*(n+1)-7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A155883

/-- `14*(n+1)^3-30*(n+1)²+24*(n+1)-7` -/
def P11039522712884649567.Spec : Prop :=
  ∀ n, P11039522712884649567.a n = A155883 (n + 1)

theorem P11039522712884649567.correct : P11039522712884649567.Spec := by
  intro n
  simp only [A155883, Nat.add_sub_cancel]

end A155883

/-!
# A155887: Riordan array (1, (1/(1-x))c(x/(1-x))), c(x) the g.f. of A000108.

The programs for A155887, there is no canonical definition to state claims against.
-/

/-! ## A155887.P7680421192310527892

`A357583(n)-A086008(A347811(n))`
-/

namespace A155887.P7680421192310527892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357583 n - A086008 (A347811 n).toNat

end

end A155887.P7680421192310527892

/-!
# A155888: a(n) = dimension of the space of n-boxes in the unshaded subfactor planar algebra of type E8.

The programs for A155888, there is no canonical definition to state claims against.
-/

/-! ## A155888.P14612831622386386394

`A385914(n+1)+A169672(A131315(n+1))`
-/

namespace A155888.P14612831622386386394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385914 (n + 1) + A169672 (A131315 (n + 1)).toNat

end

end A155888.P14612831622386386394

/-! ## A155888.P8733011081098066971

`A269381(A109085(n))`
-/

namespace A155888.P8733011081098066971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A109085 n).toNat

end

end A155888.P8733011081098066971

/-! ## A155888.P1221872331665359668

`A264749(A276903(n+1)+n)`
-/

namespace A155888.P1221872331665359668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A276903 (n + 1) + (n : ℤ)).toNat

end

end A155888.P1221872331665359668

/-! ## A155888.P170344489537752711

`A006789(n)-A324881(A000142(n))`
-/

namespace A155888.P170344489537752711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 n - A324881 (A000142 n).toNat

end

end A155888.P170344489537752711

/-!
# A155890: a(n+1) is the least integer > a(n) containing all digits of a(n); a(1)=2.

The programs for A155890, there is no canonical definition to state claims against.
-/

/-! ## A155890.P11814690795664635214

`eq[A003132(n), A168092(n)]`
-/

namespace A155890.P11814690795664635214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155890.P11814690795664635214

/-! ## A155890.P1418812539292680300

`eq[A045512(n), A168092(n)]`
-/

namespace A155890.P1418812539292680300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155890.P1418812539292680300

/-! ## A155890.P4071047507905830251

`eq[A003132(n), A128999(n+1)]`
-/

namespace A155890.P4071047507905830251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155890.P4071047507905830251

/-! ## A155890.P15144137549682170765

`eq[A045512(n), A128999(n+1)]`
-/

namespace A155890.P15144137549682170765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155890.P15144137549682170765

/-! ## A155890.P12853733501484100311

`eq[A003132(n+1), A266449(2*n+1)]+1`
-/

namespace A155890.P12853733501484100311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A155890.P12853733501484100311

/-!
# A155897: Square matrix T(m,n)=1 if (2m+1)^n-2 is prime, 0 otherwise; read by antidiagonals.

The programs for A155897, there is no canonical definition to state claims against.
-/

/-! ## A155897.P7195174780916575306

`A286665(p?[A304205(n+1)-29]+5)`
-/

namespace A155897.P7195174780916575306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286665 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5).toNat

end

end A155897.P7195174780916575306

/-! ## A155897.P18434952327400193934

`A174207(eq[A243822(n+1), A243828(n)])`
-/

namespace A155897.P18434952327400193934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174207 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A155897.P18434952327400193934

/-! ## A155897.P13669931158894527880

`A085002(A270613(n+1)+A207346(n+1))`
-/

namespace A155897.P13669931158894527880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (A270613 (n + 1) + A207346 (n + 1)).toNat

end

end A155897.P13669931158894527880

/-! ## A155897.P15931287615073187448

`A010060(A351831(n+1)+A153501(n+1))`
-/

namespace A155897.P15931287615073187448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A351831 (n + 1) + A153501 (n + 1)).toNat

end

end A155897.P15931287615073187448

/-! ## A155897.P9421546575405356754

`A334081(A275465(n+2))%2`
-/

namespace A155897.P9421546575405356754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334081 (A275465 (n + 2)).toNat) 2

end

end A155897.P9421546575405356754

/-!
# A155898: Square matrix T(m,n)=1 if (2m+1)^(2n)-2 is prime, 0 otherwise; read by antidiagonals.

The programs for A155898, there is no canonical definition to state claims against.
-/

/-! ## A155898.P6150254600084999505

`A047999(A012265(n)*A094587(n))`
-/

namespace A155898.P6150254600084999505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A012265 n * A094587 n).toNat

end

end A155898.P6150254600084999505

/-! ## A155898.P18181186673759593244

`A166486(A008621(n)*A092582(n+1))`
-/

namespace A155898.P18181186673759593244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A008621 n * A092582 (n + 1)).toNat

end

end A155898.P18181186673759593244

/-! ## A155898.P7159635886083303752

`A178788(A217004(n+1)-5)`
-/

namespace A155898.P7159635886083303752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A217004 (n + 1) - 5).toNat

end

end A155898.P7159635886083303752

/-! ## A155898.P2887968438980917073

`A004889(∏{p}[A341134(n+5)+1, #+1]+1)%2`
-/

namespace A155898.P2887968438980917073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341134 (n + 5) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004889 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1) + 1)) 2

end

end A155898.P2887968438980917073

/-! ## A155898.P4401800453630186498

`A363343(A265061(n)+A096940(n))`
-/

namespace A155898.P4401800453630186498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363343 (A265061 n + A096940 n).toNat

end

end A155898.P4401800453630186498

/-!
# A155899: Square matrix T(m,n)=1 if (2m+1)^(2n-1)-2 is prime, 0 otherwise; read by antidiagonals.

The programs for A155899, there is no canonical definition to state claims against.
-/

/-! ## A155899.P18039092438916978170

`A262693(A301450(n+1)+A117193(n+1))`
-/

namespace A155899.P18039092438916978170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A301450 (n + 1) + A117193 (n + 1)).toNat

end

end A155899.P18039092438916978170

/-! ## A155899.P2711121287992463604

`A010060(A263506(n+1)%A002249(n))`
-/

namespace A155899.P2711121287992463604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod (A263506 (n + 1)) (A002249 n)).toNat

end

end A155899.P2711121287992463604

/-! ## A155899.P5138711578488921771

`A101264(A292737(n+1)+A027753(n+1))`
-/

namespace A155899.P5138711578488921771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A292737 (n + 1) + A027753 (n + 1)).toNat

end

end A155899.P5138711578488921771

/-! ## A155899.P2065252841730622329

`A010060(A232803(n+1)+A225057(n+1))`
-/

namespace A155899.P2065252841730622329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A232803 (n + 1) + A225057 (n + 1)).toNat

end

end A155899.P2065252841730622329

/-! ## A155899.P735054390732566114

`A189661(A116672(n+1)+A017902(2*(n+2)))`
-/

namespace A155899.P735054390732566114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A116672 (n + 1) + A017902 (2 * (n + 2))).toNat

end

end A155899.P735054390732566114

