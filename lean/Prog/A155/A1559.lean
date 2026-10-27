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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A155900: Numbers k such that Omega(k) = Omega(2^k-1), where Omega(k) is the number of prime factors of k counted with multiplicity (A001222).

The programs for A155900, there is no canonical definition to state claims against.
-/

/-! ## A155900.P672063201917311942

`eq[A001222(n+1), A046051(n+1)]+1`
-/

namespace A155900.P672063201917311942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A155900.P672063201917311942

/-! ## A155900.P15593392544100042319

`eq[A046051(n+1), A052409(n+1)]+1`
-/

namespace A155900.P15593392544100042319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A155900.P15593392544100042319

/-! ## A155900.P3094129362211591742

`eq[A046051(n+1), A100995(n+1)]+1`
-/

namespace A155900.P3094129362211591742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A155900.P3094129362211591742

/-! ## A155900.P1044383781086399405

`lt[A046051(n+1), A001222(2*(n+1))]+1`
-/

namespace A155900.P1044383781086399405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A155900.P1044383781086399405

/-! ## A155900.P1977141094462300706

`eq[A052955(A046800(n)), A077462(n)]`
-/

namespace A155900.P1977141094462300706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A046800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155900.P1977141094462300706

/-!
# A155902: Arises in Connell's game, a variation of Wythoff's Nim game.

The programs for A155902, the canonical program `A155902.P8281506165481229840` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155902 has offset 0).

The definition of A155902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155902.P8281506165481229840

`floor(n*(sqrt(13)+5)/6)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155902

/-- `floor(n*(sqrt(13)+5)/6)` -/
def P8281506165481229840.Spec : Prop :=
  ∀ n, P8281506165481229840.a n = A155902 n

theorem P8281506165481229840.correct : P8281506165481229840.Spec := by
  intro n
  simp only [A155902]

end A155902

/-! ## A155902.P2077380351186858753

`floor(n/sin(e))-n`
-/

namespace A155902.P2077380351186858753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (Real.exp 1)⌋ - (n : ℤ)

end

end A155902.P2077380351186858753

namespace A155902

/-- `floor(n/sin(e))-n` -/
def P2077380351186858753.Spec : Prop :=
  ∀ n, P2077380351186858753.a n = A155902 n

end A155902

/-! ## A155902.P6090999030955850054

`floor(n*atan(acot(2)))+n`
-/

namespace A155902.P6090999030955850054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arctan (SequenceMachineLib.acot (2 : ℝ))⌋ + (n : ℤ)

end

end A155902.P6090999030955850054

namespace A155902

/-- `floor(n*atan(acot(2)))+n` -/
def P6090999030955850054.Spec : Prop :=
  ∀ n, P6090999030955850054.a n = A155902 n

end A155902

/-! ## A155902.P7294635003843242007

`floor(n/log(10))%41+n`
-/

namespace A155902.P7294635003843242007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / Real.log (10 : ℝ)⌋ 41 + (n : ℤ)

end

end A155902.P7294635003843242007

namespace A155902

/-- `floor(n/log(10))%41+n` -/
def P7294635003843242007.Spec : Prop :=
  ∀ n, P7294635003843242007.a n = A155902 n

end A155902

/-! ## A155902.P13399477137880632398

`n+floor(n/sinh(π/2))`
-/

namespace A155902.P13399477137880632398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n : ℝ) / Real.sinh (Real.pi / 2)⌋

end

end A155902.P13399477137880632398

namespace A155902

/-- `n+floor(n/sinh(π/2))` -/
def P13399477137880632398.Spec : Prop :=
  ∀ n, P13399477137880632398.a n = A155902 n

end A155902

/-! ## A155902.P13966554102707397182

`floor(n/log(10))+xor(1, xor(1, n))`
-/

namespace A155902.P13966554102707397182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (10 : ℝ)⌋ + (Nat.xor 1 (Nat.xor 1 n) : ℤ)

end

end A155902.P13966554102707397182

namespace A155902

/-- `floor(n/log(10))+xor(1, xor(1, n))` -/
def P13966554102707397182.Spec : Prop :=
  ∀ n, P13966554102707397182.a n = A155902 n

end A155902

/-! ## A155902.P15942037603422651590

`floor(n*sqrt(sqrt(ϕ^3)))%(n+1)²`
-/

namespace A155902.P15942037603422651590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) * Real.sqrt (Real.sqrt (Real.goldenRatio ^ 3))⌋ ((n + 1) ^ 2 : ℤ)

end

end A155902.P15942037603422651590

namespace A155902

/-- `floor(n*sqrt(sqrt(ϕ^3)))%(n+1)²` -/
def P15942037603422651590.Spec : Prop :=
  ∀ n, P15942037603422651590.a n = A155902 n

end A155902

/-! ## A155902.P17440220569030994316

`ceil(n*atan(acot(2)))+(2*n)%(n+1)`
-/

namespace A155902.P17440220569030994316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.arctan (SequenceMachineLib.acot (2 : ℝ))⌉ + ((2 * n % (n + 1) : ℕ) : ℤ)

end

end A155902.P17440220569030994316

namespace A155902

/-- `ceil(n*atan(acot(2)))+(2*n)%(n+1)` -/
def P17440220569030994316.Spec : Prop :=
  ∀ n, P17440220569030994316.a n = A155902 n

end A155902

/-! ## A155902.P3303973419636686015

`comp[A059550(n+1)]`
-/

namespace A155902.P3303973419636686015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155902.P3303973419636686015

namespace A155902

/-- `comp[A059550(n+1)]` -/
def P3303973419636686015.Spec : Prop :=
  ∀ n, (P3303973419636686015.a n : ℤ) = A155902 n

end A155902

/-!
# A155903: Primes of the form p^3 + p^2 + 1, where p is a prime.

The programs for A155903, there is no canonical definition to state claims against.
-/

/-! ## A155903.P8779275672643428977

`p?[A181151(n+1)]`
-/

namespace A155903.P8779275672643428977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155903.P8779275672643428977

/-! ## A155903.P10385790949039462640

`p?[A135178(n+1)+1]`
-/

namespace A155903.P10385790949039462640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155903.P10385790949039462640

/-! ## A155903.P12414604212918733718

`p?[A098547(A000040(n+1))]`
-/

namespace A155903.P12414604212918733718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155903.P12414604212918733718

/-! ## A155903.P6791183957051235605

`∩[A087196(n+1), A098547(n)]`
-/

namespace A155903.P6791183957051235605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155903.P6791183957051235605

/-! ## A155903.P17363316523582140155

`∩[A087196(n+1), A120479(n+1)]`
-/

namespace A155903.P17363316523582140155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155903.P17363316523582140155

/-!
# A155905: Numbers n such that it is possible to append a single digit to the end of 2^n to make it prime.

The programs for A155905, there is no canonical definition to state claims against.
-/

/-! ## A155905.P11801237833256410973

`lt[log2(A068842(n)), n+4]`
-/

namespace A155905.P11801237833256410973
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A068842 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A155905.P11801237833256410973

/-! ## A155905.P16664190687532038816

`lt[A068842(n), A000079(n+4)]`
-/

namespace A155905.P16664190687532038816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155905.P16664190687532038816

/-! ## A155905.P8985310417780166150

`lt[A068842(n), A068156(n+4)]`
-/

namespace A155905.P8985310417780166150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155905.P8985310417780166150

/-! ## A155905.P15905135675768215140

`lt[A000720(2*n+1), A006530(A348612(2*n+1))]`
-/

namespace A155905.P15905135675768215140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A348612 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155905.P15905135675768215140

/-! ## A155905.P11647384211512085367

`lt[3^val(n+1, 3), A323907((n+1)*Δ[n^3])]`
-/

namespace A155905.P11647384211512085367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323907 ((n + 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155905.P11647384211512085367

/-!
# A155908: Triangle T(n, k) = f(n, k) + f(n, n-k) where T(0, 0) = 1 and f(n, k) = 1/(n+1)*Sum_{j=0..k+1} (-1)^(k-j+1)* binomial(n+1, j)*j^n, read by rows.

The programs for A155908, there is no canonical definition to state claims against.
-/

/-! ## A155908.P8575104598876777187

`A058133(A026670(n))`
-/

namespace A155908.P8575104598876777187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 (A026670 n).toNat

end

end A155908.P8575104598876777187

/-! ## A155908.P12344320211970138780

`A226900(A056941(n))`
-/

namespace A155908.P12344320211970138780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226900 (A056941 n).toNat

end

end A155908.P12344320211970138780

/-! ## A155908.P18434770432137612844

`A173666(A157147(n))`
-/

namespace A155908.P18434770432137612844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A157147 n).toNat

end

end A155908.P18434770432137612844

/-! ## A155908.P9931767830131122474

`A173666(A157523(n))`
-/

namespace A155908.P9931767830131122474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A157523 n).toNat

end

end A155908.P9931767830131122474

/-! ## A155908.P15765636325359819408

`A173666(A168288(n))`
-/

namespace A155908.P15765636325359819408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A168288 n).toNat

end

end A155908.P15765636325359819408

/-!
# A155912: Let d(i) be the i-th digit of the decimal expansion of Pi = 3.1415926535897932384626433832795..., so that d(0) = 3, d(1) = 1, d(2) = 4, etc. Then a(0) = 3, a(n) = d(d(n)) for n>0.

The programs for A155912, there is no canonical definition to state claims against.
-/

/-! ## A155912.P7681253549180082036

`A000796(a(3%n)*A000796(n))` with `a(0)=3`
-/

namespace A155912.P7681253549180082036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000796 ((a (3 % n) * A000796 (n + 1)).toNat + 1)

end

end A155912.P7681253549180082036

/-! ## A155912.P18170870609180107301

`A000796(ceil(n/(n+1))*A000796(n))`
-/

namespace A155912.P18170870609180107301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((⌈(n : ℚ) / (n + 1 : ℚ)⌉ * A000796 (n + 1)).toNat + 1)

end

end A155912.P18170870609180107301

/-! ## A155912.P13987316100749300324

`A000796(Δ[A059582(n)]%A059582(n))`
-/

namespace A155912.P13987316100749300324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (f1 (n + 1) - f1 n) (A059582 n)).toNat + 1)

end

end A155912.P13987316100749300324

/-! ## A155912.P7570880495625069098

`A000796(A000796(n)*A019426(2*n))`
-/

namespace A155912.P7570880495625069098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000796 (n + 1) * A019426 (2 * n)).toNat + 1)

end

end A155912.P7570880495625069098

/-! ## A155912.P15319366630397315275

`A000796(A059582(n+1)%A059582(n))`
-/

namespace A155912.P15319366630397315275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (A059582 (n + 1)) (A059582 n)).toNat + 1)

end

end A155912.P15319366630397315275

/-! ## A155912.P3928334840081965426

`A000796(n*A000796(n)/A028310(n))`
-/

namespace A155912.P3928334840081965426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((n : ℚ) * ((A000796 (n + 1) : ℚ) / (A028310 n : ℚ)))).toNat + 1)

end

end A155912.P3928334840081965426

/-! ## A155912.P10540200232403271037

`A000796(A097902(∑[n+2]-1)%A035331(n))`
-/

namespace A155912.P10540200232403271037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (A097902 (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (A035331 n)).toNat + 1)

end

end A155912.P10540200232403271037

/-!
# A155913: Primes p such that (sum of digits of p) - (last digit of p) is prime.

The programs for A155913, there is no canonical definition to state claims against.
-/

/-! ## A155913.P9749020241210318062

`A244077(n+1)-A184955(A100054(n))`
-/

namespace A155913.P9749020241210318062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244077 (n + 1) - A184955 (A100054 n).toNat

end

end A155913.P9749020241210318062

/-! ## A155913.P11965826519866377691

`A227919(n+1)-A184955(A005117(n+1))`
-/

namespace A155913.P11965826519866377691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1) - A184955 (A005117 (n + 1)).toNat

end

end A155913.P11965826519866377691

/-! ## A155913.P17088290031162543789

`A240898(n+1)-A184955(A005117(n+1))`
-/

namespace A155913.P17088290031162543789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240898 (n + 1) - A184955 (A005117 (n + 1)).toNat

end

end A155913.P17088290031162543789

/-!
# A155915: A triangle of polynomial coefficients: q(x,n)=-((x - 1)^(2*n + 1)/x^n)*Sum[(2*k + 1)^n*Binomial[k, n]*x^k, {k, 0, Infinity}]; p(x,n)=q(x,n)+x^n*q(1/x,n).

The programs for A155915, there is no canonical definition to state claims against.
-/

/-! ## A155915.P10513162316729144097

`A281362(A281385(n)%A005344(n+1))`
-/

namespace A155915.P10513162316729144097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281362 (Int.tmod (A281385 n) (A005344 (n + 1))).toNat

end

end A155915.P10513162316729144097

/-! ## A155915.P18287881551491156512

`A281362(A281385(n))%A281349(n+5)`
-/

namespace A155915.P18287881551491156512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281362 (A281385 n).toNat) (A281349 (n + 5))

end

end A155915.P18287881551491156512

/-! ## A155915.P16277734223725726184

`A350435(A223387(n+1))%A350424(n+1)`
-/

namespace A155915.P16277734223725726184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350435 (A223387 (n + 1)).toNat) (A350424 (n + 1))

end

end A155915.P16277734223725726184

/-!
# A155916: Prime factors of odd Fibonacci numbers.

The programs for A155916, there is no canonical definition to state claims against.
-/

/-! ## A155916.P8137876780584020007

`p?[gcd(A001748(n+1), A264008(n+1))]`
-/

namespace A155916.P8137876780584020007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001748 (n + 1)) (A264008 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155916.P8137876780584020007

/-! ## A155916.P7036429097804146984

`p?[comp[A133247(n+1)]]`
-/

namespace A155916.P7036429097804146984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133247 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155916.P7036429097804146984

/-! ## A155916.P2748949875437392382

`p?[(n+1)*gcd(3, A106291(n+1))]`
-/

namespace A155916.P2748949875437392382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 3 (A106291 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155916.P2748949875437392382

/-! ## A155916.P11564385318587044693

`p?[(n+1)*A001175(n+1)²%3]`
-/

namespace A155916.P11564385318587044693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A001175 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155916.P11564385318587044693

/-! ## A155916.P16642631710489694820

`p?[(n+1)*A233284(A001177(n+1))]`
-/

namespace A155916.P16642631710489694820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A233284 (A001177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155916.P16642631710489694820

/-! ## A155916.P12515960838814873542

`p?[(n+1)*A233284(A001175(n+1))]`
-/

namespace A155916.P12515960838814873542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A233284 (A001175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155916.P12515960838814873542

/-! ## A155916.P795347642820172209

`p?[gcd((n+1)*A001177(n+1), A033596(n))]`
-/

namespace A155916.P795347642820172209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A001177 (n + 1)) (A033596 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155916.P795347642820172209

/-!
# A155917: A difference triangle of Pascal-Sierpinski 5th level and the Pascal second derivative: a(n,k)= (4*n - 4*k + 1)a(n - 1, k - 1) + (4*k - 3)a(n - 1, k); p(x,n)=(Sum[10*n*(n - 1)*a(n, k)*x^(k - 1) - D[(x + 1)^(n + 2), {x, 2}]/(x + 1), {k, n}])/2.

The programs for A155917, there is no canonical definition to state claims against.
-/

/-! ## A155917.P6811423549620712004

`A292520(A304679(n))-2`
-/

namespace A155917.P6811423549620712004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292520 (A304679 n).toNat - 2

end

end A155917.P6811423549620712004

/-!
# A155918: Number of squared hypotenuses mod n in two dimensions.

The programs for A155918, there is no canonical definition to state claims against.
-/

/-! ## A155918.P4024990623575741108

`A055653(n+1)+A299905(A217155(n+1))²`
-/

namespace A155918.P4024990623575741108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1) + A299905 (A217155 (n + 1)).toNat ^ 2

end

end A155918.P4024990623575741108

/-! ## A155918.P10518136345350572529

`A085310(n+1)+A299905(A217155(n+1))²`
-/

namespace A155918.P10518136345350572529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085310 (n + 1) + A299905 (A217155 (n + 1)).toNat ^ 2

end

end A155918.P10518136345350572529

/-! ## A155918.P6616874343577795159

`A085310(n+1)+4*A107846(A294961(n+1))`
-/

namespace A155918.P6616874343577795159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085310 (n + 1) + 4 * A107846 (A294961 (n + 1)).toNat

end

end A155918.P6616874343577795159

/-!
# A155919: Number of squared hypotenuses mod n in three dimensions.

The programs for A155919, the canonical program `A155919.P287135877866266634` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155919 has offset 1).

The definition of A155919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155919.P1168842402160793683

`A000265(n+1)*A090168(2^val(n+1, 2))`
-/

namespace A155919.P1168842402160793683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A090168 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A155919.P1168842402160793683

namespace A155919

/-- `A000265(n+1)*A090168(2^val(n+1, 2))` -/
def P1168842402160793683.Spec : Prop :=
  ∀ n, P1168842402160793683.a n = A155919 (n + 1)

end A155919

/-! ## A155919.P287135877866266634

`A000265(n+1)*A090168(A006519(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155919

/-- `A000265(n+1)*A090168(A006519(n+1))` -/
def P287135877866266634.Spec : Prop :=
  ∀ n, P287135877866266634.a n = A155919 (n + 1)

theorem P287135877866266634.correct : P287135877866266634.Spec := by
  intro n
  simp only [A155919, Nat.add_sub_cancel]

end A155919

/-!
# A155921: Decimal expansion of log_2(24) = 3+log_2(3).

The programs for A155921, there is no canonical definition to state claims against.
-/

/-! ## A155921.P5790128134028010008

`A020857(C(3, (n+1)²)+n)`
-/

namespace A155921.P5790128134028010008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (Nat.choose 3 ((n + 1) ^ 2) + n + 1)

end

end A155921.P5790128134028010008

/-! ## A155921.P10783410154734092521

`A020859(n)+A000038(n)`
-/

namespace A155921.P10783410154734092521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + A000038 n

end

end A155921.P10783410154734092521

/-! ## A155921.P2283088792515906293

`(A000007(n)+1)*A020859(n)`
-/

namespace A155921.P2283088792515906293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A020859 (n + 1)

end

end A155921.P2283088792515906293

/-! ## A155921.P10372327486456077084

`(A057428(n)+2)*A020859(n)`
-/

namespace A155921.P10372327486456077084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057428 n + 2) * A020859 (n + 1)

end

end A155921.P10372327486456077084

/-! ## A155921.P17500401306880911562

`(2-A057427(n))*A020859(n)`
-/

namespace A155921.P17500401306880911562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057427 n) * A020859 (n + 1)

end

end A155921.P17500401306880911562

/-! ## A155921.P11190781256569916440

`A020857(floor(3/A076821(n+1)+n))`
-/

namespace A155921.P11190781256569916440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020857 (⌊3 / (A076821 (n + 1) : ℚ) + (n : ℚ)⌋.toNat + 1)

end

end A155921.P11190781256569916440

/-! ## A155921.P14864510742868030706

`A020859(A000007(n)+n)-A000007(n)`
-/

namespace A155921.P14864510742868030706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 ((A000007 n + (n : ℤ)).toNat + 1) - A000007 n

end

end A155921.P14864510742868030706

/-! ## A155921.P4984354781815750057

`A020864(n)+A020864(n)-A020859(n)`
-/

namespace A155921.P4984354781815750057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020864 (n + 1) + (A020864 (n + 1) - A020859 (n + 1))

end

end A155921.P4984354781815750057

/-!
# A155922: Decimal expansion of log_3 (24).

The programs for A155922, there is no canonical definition to state claims against.
-/

/-! ## A155922.P1180759956890080505

`A124763(A166350(a(n-1)+1))+A113210(n)` with `a(0)=2`
-/

namespace A155922.P1180759956890080505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A124763 (A166350 (a (n - 1) + 1).toNat).toNat + A113210 (n + 1)

end

end A155922.P1180759956890080505

/-! ## A155922.P12852030501892833586

`A007862(A091924(2*(n+1)))*A113210(n)`
-/

namespace A155922.P12852030501892833586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A091924 (2 * (n + 1))).toNat * A113210 (n + 1)

end

end A155922.P12852030501892833586

/-!
# A155923: Positive numbers y such that y^2 is of the form x^2+(x+17)^2 with integer x.

The programs for A155923, the canonical program `A155923.P7709630396733445052` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155923 has offset 1).

The definition of A155923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155923.P7709630396733445052

`6*a(n-3)-a(n-6)` with `a(0)=13, a(1)=17, a(2)=25, a(3)=53, a(4)=85, a(5)=137`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155923

/-- `6*a(n-3)-a(n-6)` -/
def P7709630396733445052.Spec : Prop :=
  ∀ n, P7709630396733445052.a n = A155923 (n + 1)

theorem P7709630396733445052.correct : P7709630396733445052.Spec := by
  intro n
  simp only [A155923, Nat.add_sub_cancel]

end A155923

/-! ## A155923.P13265933486516297982

`A106527(n+2)-A106528(n+2)`
-/

namespace A155923.P13265933486516297982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106527 (n + 2) - A106528 (n + 2)

end

end A155923.P13265933486516297982

namespace A155923

/-- `A106527(n+2)-A106528(n+2)` -/
def P13265933486516297982.Spec : Prop :=
  ∀ n, P13265933486516297982.a n = A155923 (n + 1)

end A155923

/-! ## A155923.P1172337661454673336

`A159589(n+1)%(A159548(n+1)%A159466(n+1))`
-/

namespace A155923.P1172337661454673336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159589 (n + 1)) (Int.tmod (A159548 (n + 1)) (A159466 (n + 1)))

end

end A155923.P1172337661454673336

namespace A155923

/-- `A159589(n+1)%(A159548(n+1)%A159466(n+1))` -/
def P1172337661454673336.Spec : Prop :=
  ∀ n, P1172337661454673336.a n = A155923 (n + 1)

end A155923

/-! ## A155923.P6112106411260625089

`(A106528(n+8)+A106527(n+2))%A106528(n+5)`
-/

namespace A155923.P6112106411260625089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106528 (n + 8) + A106527 (n + 2)) (A106528 (n + 5))

end

end A155923.P6112106411260625089

namespace A155923

/-- `(A106528(n+8)+A106527(n+2))%A106528(n+5)` -/
def P6112106411260625089.Spec : Prop :=
  ∀ n, P6112106411260625089.a n = A155923 (n + 1)

end A155923

/-! ## A155923.P11675635677753524371

`sqrt(A156159(n+1))`
-/

namespace A155923.P11675635677753524371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A156159 (n + 1) : ℝ)

end

end A155923.P11675635677753524371

namespace A155923

/-- `sqrt(A156159(n+1))` -/
def P11675635677753524371.Spec : Prop :=
  ∀ n, P11675635677753524371.a n = (A155923 (n + 1) : ℝ)

end A155923

/-! ## A155923.P14319174943035972719

`root(A156159(n+1), A133265(2*n))`
-/

namespace A155923.P14319174943035972719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156159 (n + 1) : ℝ) ^ (1 / (A133265 (2 * n) : ℝ))

end

end A155923.P14319174943035972719

namespace A155923

/-- `root(A156159(n+1), A133265(2*n))` -/
def P14319174943035972719.Spec : Prop :=
  ∀ n, P14319174943035972719.a n = (A155923 (n + 1) : ℝ)

end A155923

/-!
# A155924: Palindromic primes of form k^2 + k + 41.

The programs for A155924, there is no canonical definition to state claims against.
-/

/-! ## A155924.P6656391880175489381

`∩[A002385(n+1), A005846(n+1)]`
-/

namespace A155924.P6656391880175489381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155924.P6656391880175489381

/-! ## A155924.P11009294300439569258

`∩[A005846(n+1), A188650(n+1)]`
-/

namespace A155924.P11009294300439569258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155924.P11009294300439569258

/-! ## A155924.P9620983273962836714

`∩[A005846(A256450(n)), A002385(n+1)]`
-/

namespace A155924.P9620983273962836714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (A256450 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155924.P9620983273962836714

/-!
# A155926: G.f. satisfies: A(x) = B(x*A(x)) where A(x) = Sum_{n>=0} a(n)*x^n/[n!*(n+1)!/2^n] and B(x) = Sum_{n>=0} x^n/[n!*(n+1)!/2^n].

The programs for A155926, there is no canonical definition to state claims against.
-/

/-! ## A155926.P18344134676154159652

`A105558(n)/(n+1)`
-/

namespace A155926.P18344134676154159652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105558 n : ℚ) / (n + 1 : ℚ)

end

end A155926.P18344134676154159652

/-! ## A155926.P4849559165819999454

`floor(A105558(n)/A348553(n))`
-/

namespace A155926.P4849559165819999454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105558 n : ℚ) / (A348553 n : ℚ)⌋

end

end A155926.P4849559165819999454

/-! ## A155926.P17678626837485957441

`ceil(A105558(n)/A031285(n))`
-/

namespace A155926.P17678626837485957441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105558 n : ℚ) / (A031285 n : ℚ)⌉

end

end A155926.P17678626837485957441

/-! ## A155926.P15204480746379171319

`floor(A105558(n)/A008619(2*n))`
-/

namespace A155926.P15204480746379171319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105558 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A155926.P15204480746379171319

/-! ## A155926.P8624199179015253166

`(n+1)^A008683(A031927(n))*A105558(n)`
-/

namespace A155926.P8624199179015253166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A031927 n).toNat : ℤ) * (A105558 n : ℚ)

end

end A155926.P8624199179015253166

/-!
# A155927: G.f. satisfies: A(x) = B(x/A(x)) where A(x) = Sum_{n>=0} a(n)*x^n/[n!*(n+1)!/2^n] and B(x) = A(x*B(x)) = Sum_{n>=0} x^n/[n!*(n+1)!/2^n].

The programs for A155927, there is no canonical definition to state claims against.
-/

/-! ## A155927.P14675263206963041634

`A014963(A072879(n+4))*A284993(n)`
-/

namespace A155927.P14675263206963041634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A072879 (n + 4)).toNat * A284993 n

end

end A155927.P14675263206963041634

/-!
# A155928: G.f. satisfies: A(x) = F(x)^2 where F(x) = Sum_{n>=0} A155926(n)*x^n/[n!*(n+1)!/2^n] and A(x) = Sum_{n>=0} a(n)*x^n/[n!*(n+1)!/2^n].

The programs for A155928, there is no canonical definition to state claims against.
-/

/-! ## A155928.P13449504651469344844

`A117297(∑[n+2])`
-/

namespace A155928.P13449504651469344844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155928.P13449504651469344844

/-! ## A155928.P11236756317606447455

`record[gcd(A117274(n), A117297(n+1))]`
-/

namespace A155928.P11236756317606447455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117274 n) (A117297 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155928.P11236756317606447455

/-!
# A155929: Integers a(n) such that cube(n)-square(n)-1 and cube(n)+square(n)+1 are primes.

The programs for A155929, there is no canonical definition to state claims against.
-/

/-! ## A155929.P1166075948598508045

`root(A155930(n+1), 3)`
-/

namespace A155929.P1166075948598508045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155930 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A155929.P1166075948598508045

/-! ## A155929.P2332622501474193013

`∩[A119863(n+1), A162293(n+1)]`
-/

namespace A155929.P2332622501474193013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155929.P2332622501474193013

/-! ## A155929.P16393565272698129119

`A155930(n+1)^(A001222(A008578(n+1))!/3)`
-/

namespace A155929.P16393565272698129119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155930 (n + 1) : ℝ) ^ ((Nat.factorial (A001222 (A008578 (n + 1)).toNat).toNat : ℚ) / 3 : ℝ)

end

end A155929.P16393565272698129119

/-! ## A155929.P583785118429155720

`sqrt(A155931(n+1))`
-/

namespace A155929.P583785118429155720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A155931 (n + 1) : ℝ)

end

end A155929.P583785118429155720

/-! ## A155929.P10032200599159515993

`floor(sqrt(A155931(Δ[n²]-n)))`
-/

namespace A155929.P10032200599159515993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A155929.P10032200599159515993

/-!
# A155930: Cubes c(n) such that cube(n)-square(n)-1 and cube(n)+square(n)+1 are primes.

The programs for A155930, there is no canonical definition to state claims against.
-/

/-! ## A155930.P5812565990781569965

`∩[A119863(n+1), A162293(n+1)]^3`
-/

namespace A155930.P5812565990781569965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A155930.P5812565990781569965

/-! ## A155930.P11498602162769974631

`A000578(∩[A119863(n+1), A162293(n+1)])`
-/

namespace A155930.P11498602162769974631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162293 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A155930.P11498602162769974631

/-! ## A155930.P10252169002498433985

`A155929(n+1)^3`
-/

namespace A155930.P10252169002498433985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155929 (n + 1) ^ 3

end

end A155930.P10252169002498433985

/-! ## A155930.P2899665130316472683

`A000578(A155929(n+1))`
-/

namespace A155930.P2899665130316472683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A155929 (n + 1)).toNat

end

end A155930.P2899665130316472683

/-! ## A155930.P10249463708364883687

`record[A155929(A344180(n))^3]`
-/

namespace A155930.P10249463708364883687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155929 (A344180 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155930.P10249463708364883687

/-!
# A155931: Squares s(n) such that cube(n)-square(n)-1 and cube(n)+square(n)+1 are primes.

The programs for A155931, there is no canonical definition to state claims against.
-/

/-! ## A155931.P7319413550086943924

`A155929(n+1)²`
-/

namespace A155931.P7319413550086943924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155929 (n + 1) ^ 2

end

end A155931.P7319413550086943924

/-! ## A155931.P13447928651886817846

`root(A155930(n+1), 3)²`
-/

namespace A155931.P13447928651886817846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A155930 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2

end

end A155931.P13447928651886817846

/-! ## A155931.P6172405080401165683

`A155929(2*n+1-n)^2`
-/

namespace A155931.P6172405080401165683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155929 (2 * n + 1 - n) ^ 2

end

end A155931.P6172405080401165683

/-! ## A155931.P14575970210591129576

`record[A155929(A109785(n))²]`
-/

namespace A155931.P14575970210591129576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155929 (A109785 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155931.P14575970210591129576

/-! ## A155931.P9033319350024726007

`record[A155929(A134478(n))²]`
-/

namespace A155931.P9033319350024726007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155929 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155931.P9033319350024726007

/-!
# A155933: Primes of the form n^2 + (n+1)^3.

The programs for A155933, there is no canonical definition to state claims against.
-/

/-! ## A155933.P10473133454989972326

`A168297(A093707(n+1))`
-/

namespace A155933.P10473133454989972326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 (A093707 (n + 1)).toNat

end

end A155933.P10473133454989972326

/-! ## A155933.P16883920514358013470

`A168297(A128958(n+1)+1)`
-/

namespace A155933.P16883920514358013470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168297 (A128958 (n + 1) + 1).toNat

end

end A155933.P16883920514358013470

/-! ## A155933.P12062004888277472912

`A085490(A093707(n+1))-A128958(n+1)`
-/

namespace A155933.P12062004888277472912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A093707 (n + 1)).toNat - A128958 (n + 1)

end

end A155933.P12062004888277472912

/-! ## A155933.P11623695437323531302

`A085490(A128958(n+1)+1)-A128958(n+1)`
-/

namespace A155933.P11623695437323531302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A128958 (n + 1) + 1).toNat - A128958 (n + 1)

end

end A155933.P11623695437323531302

/-! ## A155933.P7680942938974277425

`A085490(A093707(n+1))+A001489(A128958(n+1)+1)+1`
-/

namespace A155933.P7680942938974277425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A093707 (n + 1)).toNat + A001489 (A128958 (n + 1) + 1).toNat + 1

end

end A155933.P7680942938974277425

/-!
# A155934: a(n) denotes the least nonnegative integer such that every n X n {0,1}-matrix with exactly a(n) ones in each row and in each column contains a 2 X 2 submatrix without zeros. (This sequence is referred to as k(m) in A003509 and A005991.)

The programs for A155934, there is no canonical definition to state claims against.
-/

/-! ## A155934.P10808877057514968693

`ceil(sqrt(comp[2^n]+2))`
-/

namespace A155934.P10808877057514968693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 : ℝ)⌉

end

end A155934.P10808877057514968693

/-! ## A155934.P521764358066041760

`floor(2*root(C(n+4, 2), 5))`
-/

namespace A155934.P521764358066041760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Nat.choose (n + 4) 2 : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A155934.P521764358066041760

/-! ## A155934.P10798359140573398530

`floor(sqrt(comp[A334305(n)]))`
-/

namespace A155934.P10798359140573398530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A155934.P10798359140573398530

/-! ## A155934.P3487850743447583450

`round(sqrt(comp[A055923(n)]))`
-/

namespace A155934.P3487850743447583450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055923 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ))

end

end A155934.P3487850743447583450

/-! ## A155934.P13613216772994610306

`round(sqrt(comp[A263149(n)]))`
-/

namespace A155934.P13613216772994610306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263149 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ))

end

end A155934.P13613216772994610306

/-!
# A155935: Numbers n such that 13*n + 5 is not prime.

The programs for A155935, the canonical program `A155935.P15244456165224310115` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155935 has offset 1).

The definition of A155935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155935.P15244456165224310115

`comp[A154610(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155935

/-- `comp[A154610(n+1)]` -/
def P15244456165224310115.Spec : Prop :=
  ∀ n, (P15244456165224310115.a n : ℤ) = A155935 (n + 1)

theorem P15244456165224310115.correct : P15244456165224310115.Spec := by
  intro n
  simp only [A155935, Nat.add_sub_cancel]

end A155935

/-! ## A155935.P10331766985445425831

`lt[2, A000005(abs(1-n)+12*n+6)]`
-/

namespace A155935.P10331766985445425831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + (12 * n + 6 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155935.P10331766985445425831

namespace A155935

/-- `lt[2, A000005(abs(1-n)+12*n+6)]` -/
def P10331766985445425831.Spec : Prop :=
  ∀ n, (P10331766985445425831.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P1950151452460458194

`lt[1, A001222(A306285(n+1)+1)]`
-/

namespace A155935.P1950151452460458194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A306285 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155935.P1950151452460458194

namespace A155935

/-- `lt[1, A001222(A306285(n+1)+1)]` -/
def P1950151452460458194.Spec : Prop :=
  ∀ n, (P1950151452460458194.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P11356293312941403111

`lt[A020639(A306285(n+1)+1), A005408(n)]`
-/

namespace A155935.P11356293312941403111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155935.P11356293312941403111

namespace A155935

/-- `lt[A020639(A306285(n+1)+1), A005408(n)]` -/
def P11356293312941403111.Spec : Prop :=
  ∀ n, (P11356293312941403111.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P4141752192624539505

`lt[A020639(A306285(n+1)+1), A273669(n+1)]`
-/

namespace A155935.P4141752192624539505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155935.P4141752192624539505

namespace A155935

/-- `lt[A020639(A306285(n+1)+1), A273669(n+1)]` -/
def P4141752192624539505.Spec : Prop :=
  ∀ n, (P4141752192624539505.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P15496151519598356711

`lt[A006530(A306285(n+1)+1), A306285(n+1)]`
-/

namespace A155935.P15496151519598356711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A306285 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155935.P15496151519598356711

namespace A155935

/-- `lt[A006530(A306285(n+1)+1), A306285(n+1)]` -/
def P15496151519598356711.Spec : Prop :=
  ∀ n, (P15496151519598356711.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P18442095195206704320

`eq[1, A005171(A017581(n)+n)]`
-/

namespace A155935.P18442095195206704320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017581 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155935.P18442095195206704320

namespace A155935

/-- `eq[1, A005171(A017581(n)+n)]` -/
def P18442095195206704320.Spec : Prop :=
  ∀ n, (P18442095195206704320.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P7097900883557775445

`eq[1, A005171(A306285(n+1)+1)]`
-/

namespace A155935.P7097900883557775445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A306285 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155935.P7097900883557775445

namespace A155935

/-- `eq[1, A005171(A306285(n+1)+1)]` -/
def P7097900883557775445.Spec : Prop :=
  ∀ n, (P7097900883557775445.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P5429005326585870480

`eq[1, A066247(A306285(n+1)+1)]`
-/

namespace A155935.P5429005326585870480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A306285 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155935.P5429005326585870480

namespace A155935

/-- `eq[1, A066247(A306285(n+1)+1)]` -/
def P5429005326585870480.Spec : Prop :=
  ∀ n, (P5429005326585870480.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P17974348277410756352

`lt[1, A001222(A016969(2*n)+n)]`
-/

namespace A155935.P17974348277410756352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155935.P17974348277410756352

namespace A155935

/-- `lt[1, A001222(A016969(2*n)+n)]` -/
def P17974348277410756352.Spec : Prop :=
  ∀ n, (P17974348277410756352.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P5421638109935020197

`lt[2, A319348(A016969(2*n)+n)]`
-/

namespace A155935.P5421638109935020197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (A016969 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155935.P5421638109935020197

namespace A155935

/-- `lt[2, A319348(A016969(2*n)+n)]` -/
def P5421638109935020197.Spec : Prop :=
  ∀ n, (P5421638109935020197.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P4591173294275303162

`lt[1, A082023(A016969(2*n)+n)]`
-/

namespace A155935.P4591173294275303162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (A016969 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155935.P4591173294275303162

namespace A155935

/-- `lt[1, A082023(A016969(2*n)+n)]` -/
def P4591173294275303162.Spec : Prop :=
  ∀ n, (P4591173294275303162.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P14997947602239468505

`lt[A014963(13*n+5), n+1]`
-/

namespace A155935.P14997947602239468505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (13 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155935.P14997947602239468505

namespace A155935

/-- `lt[A014963(13*n+5), n+1]` -/
def P14997947602239468505.Spec : Prop :=
  ∀ n, (P14997947602239468505.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P15832617224216631466

`eq[0, A049084(A154609(n))]`
-/

namespace A155935.P15832617224216631466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A154609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155935.P15832617224216631466

namespace A155935

/-- `eq[0, A049084(A154609(n))]` -/
def P15832617224216631466.Spec : Prop :=
  ∀ n, (P15832617224216631466.a n : ℤ) = A155935 (n + 1)

end A155935

/-! ## A155935.P14918686707219878398

`eq[A000007(n), A232195(A306285(n+1)+1)]`
-/

namespace A155935.P14918686707219878398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (A306285 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155935.P14918686707219878398

namespace A155935

/-- `eq[A000007(n), A232195(A306285(n+1)+1)]` -/
def P14918686707219878398.Spec : Prop :=
  ∀ n, (P14918686707219878398.a n : ℤ) = A155935 (n + 1)

end A155935

/-!
# A155936: Decimal expansion of log_4 (24).

The programs for A155936, there is no canonical definition to state claims against.
-/

/-! ## A155936.P8405245164306033758

`A153460(A028310(n))`
-/

namespace A155936.P8405245164306033758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 ((A028310 n).toNat + 1)

end

end A155936.P8405245164306033758

/-! ## A155936.P11203917980890157408

`A153460(A004277(n)-n)`
-/

namespace A155936.P11203917980890157408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 ((A004277 n - (n : ℤ)).toNat + 1)

end

end A155936.P11203917980890157408

/-! ## A155936.P11021199170599277223

`A153460(A122437(n+1)-A204399(n))`
-/

namespace A155936.P11021199170599277223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 ((A122437 (n + 1) - A204399 n).toNat + 1)

end

end A155936.P11021199170599277223

/-! ## A155936.P10194607251520928326

`A153460(floor(log2(A000051(n))))`
-/

namespace A155936.P10194607251520928326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 (Nat.log 2 (A000051 n).toNat + 1)

end

end A155936.P10194607251520928326

/-! ## A155936.P15521931540849490760

`floor(A153460(n)+2/A000051(n))`
-/

namespace A155936.P15521931540849490760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153460 (n + 1) : ℚ) + 2 / (A000051 n : ℚ)⌋

end

end A155936.P15521931540849490760

/-! ## A155936.P3277803288312153202

`A153460(A210628(2*n)+n)`
-/

namespace A155936.P3277803288312153202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 ((A210628 (2 * n) + (n : ℤ)).toNat + 1)

end

end A155936.P3277803288312153202

/-! ## A155936.P8338798881131680456

`A153460(A004277(n²)/A004277(n))`
-/

namespace A155936.P8338798881131680456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 ((SequenceMachineLib.roundAway ((A004277 (n ^ 2) : ℚ) / (A004277 n : ℚ))).toNat + 1)

end

end A155936.P8338798881131680456

/-!
# A155937: Numbers n such that 13*n + 8 is a prime.

The programs for A155937, the canonical program `A155937.P8364349448118124700` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155937 has offset 1).

The definition of A155937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155937.P8364349448118124700

`floor(A092178(n+1)/13)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A155937

/-- `floor(A092178(n+1)/13)` -/
def P8364349448118124700.Spec : Prop :=
  ∀ n, P8364349448118124700.a n = A155937 (n + 1)

theorem P8364349448118124700.correct : P8364349448118124700.Spec := by
  intro n
  simp only [A155937, Nat.add_sub_cancel]

end A155937

/-! ## A155937.P9180944119348702564

`eq[2, ∏{e}[2*(7*n+2)+4-n, #+1]]`
-/

namespace A155937.P9180944119348702564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (7 * n + 2) + 4 : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155937.P9180944119348702564

namespace A155937

/-- `eq[2, ∏{e}[2*(7*n+2)+4-n, #+1]]` -/
def P9180944119348702564.Spec : Prop :=
  ∀ n, (P9180944119348702564.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P12693583533378145155

`eq[1, A001222(13*n+8)]`
-/

namespace A155937.P12693583533378145155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (13 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155937.P12693583533378145155

namespace A155937

/-- `eq[1, A001222(13*n+8)]` -/
def P12693583533378145155.Spec : Prop :=
  ∀ n, (P12693583533378145155.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P2126129021191551293

`eq[2, A000005(13*n+8)]`
-/

namespace A155937.P2126129021191551293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (13 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155937.P2126129021191551293

namespace A155937

/-- `eq[2, A000005(13*n+8)]` -/
def P2126129021191551293.Spec : Prop :=
  ∀ n, (P2126129021191551293.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P11083716583985467860

`lt[A001222(4*(3*n+2)+n), 2]`
-/

namespace A155937.P11083716583985467860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (3 * n + 2) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155937.P11083716583985467860

namespace A155937

/-- `lt[A001222(4*(3*n+2)+n), 2]` -/
def P11083716583985467860.Spec : Prop :=
  ∀ n, (P11083716583985467860.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P10688129904980073111

`lt[A005408(n+1), A020639(A306285(n+1))]`
-/

namespace A155937.P10688129904980073111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155937.P10688129904980073111

namespace A155937

/-- `lt[A005408(n+1), A020639(A306285(n+1))]` -/
def P10688129904980073111.Spec : Prop :=
  ∀ n, (P10688129904980073111.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P12370770306234375647

`lt[A273669(n+1), A020639(A306285(n+1))]`
-/

namespace A155937.P12370770306234375647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155937.P12370770306234375647

namespace A155937

/-- `lt[A273669(n+1), A020639(A306285(n+1))]` -/
def P12370770306234375647.Spec : Prop :=
  ∀ n, (P12370770306234375647.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P15022539642212892069

`lt[A265672(n)+2, A020639(A306285(n+1))]`
-/

namespace A155937.P15022539642212892069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265672 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155937.P15022539642212892069

namespace A155937

/-- `lt[A265672(n)+2, A020639(A306285(n+1))]` -/
def P15022539642212892069.Spec : Prop :=
  ∀ n, (P15022539642212892069.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P14432547842905898522

`eq[1, A046645(13*n+8)]`
-/

namespace A155937.P14432547842905898522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (13 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155937.P14432547842905898522

namespace A155937

/-- `eq[1, A046645(13*n+8)]` -/
def P14432547842905898522.Spec : Prop :=
  ∀ n, (P14432547842905898522.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P15757480864195828046

`eq[1, A005171(A306285(n+1))+1]`
-/

namespace A155937.P15757480864195828046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A306285 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155937.P15757480864195828046

namespace A155937

/-- `eq[1, A005171(A306285(n+1))+1]` -/
def P15757480864195828046.Spec : Prop :=
  ∀ n, (P15757480864195828046.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P13038561773094387431

`eq[A066247(A306285(n+1))+1, A066247(n+1)]`
-/

namespace A155937.P13038561773094387431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A306285 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155937.P13038561773094387431

namespace A155937

/-- `eq[A066247(A306285(n+1))+1, A066247(n+1)]` -/
def P13038561773094387431.Spec : Prop :=
  ∀ n, (P13038561773094387431.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P8969097009708584905

`eq[1, A074206(13*n+8)]`
-/

namespace A155937.P8969097009708584905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (13 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155937.P8969097009708584905

namespace A155937

/-- `eq[1, A074206(13*n+8)]` -/
def P8969097009708584905.Spec : Prop :=
  ∀ n, (P8969097009708584905.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P17589989039043908927

`comp[A155939(n+1)]`
-/

namespace A155937.P17589989039043908927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155937.P17589989039043908927

namespace A155937

/-- `comp[A155939(n+1)]` -/
def P17589989039043908927.Spec : Prop :=
  ∀ n, (P17589989039043908927.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P10968106560736909919

`eq[1, A080339(13*n+8)]`
-/

namespace A155937.P10968106560736909919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (13 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155937.P10968106560736909919

namespace A155937

/-- `eq[1, A080339(13*n+8)]` -/
def P10968106560736909919.Spec : Prop :=
  ∀ n, (P10968106560736909919.a n : ℤ) = A155937 (n + 1)

end A155937

/-! ## A155937.P890277572433893333

`A194528(A092178(n+1))`
-/

namespace A155937.P890277572433893333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194528 (A092178 (n + 1)).toNat

end

end A155937.P890277572433893333

namespace A155937

/-- `A194528(A092178(n+1))` -/
def P890277572433893333.Spec : Prop :=
  ∀ n, P890277572433893333.a n = A155937 (n + 1)

end A155937

/-! ## A155937.P18177069989833043053

`eq[1, A003415(A259755(n+1)+n)]`
-/

namespace A155937.P18177069989833043053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A259755 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155937.P18177069989833043053

namespace A155937

/-- `eq[1, A003415(A259755(n+1)+n)]` -/
def P18177069989833043053.Spec : Prop :=
  ∀ n, (P18177069989833043053.a n : ℤ) = A155937 (n + 1)

end A155937

/-!
# A155938: Primes p such that 13*p + 8 is also prime.

The programs for A155938, the canonical program `A155938.P6461613877834825485` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155938 has offset 1).

The definition of A155938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155938.P6461613877834825485

`p?[A155937(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155938

/-- `p?[A155937(n+1)]` -/
def P6461613877834825485.Spec : Prop :=
  ∀ n, P6461613877834825485.a n = A155938 (n + 1)

theorem P6461613877834825485.correct : P6461613877834825485.Spec := by
  intro n
  simp only [A155938, Nat.add_sub_cancel]

end A155938

/-! ## A155938.P943343298299335384

`p?[floor(A092178(n+1)/13)]`
-/

namespace A155938.P943343298299335384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092178 (n + 1) : ℚ) / 13⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155938.P943343298299335384

namespace A155938

/-- `p?[floor(A092178(n+1)/13)]` -/
def P943343298299335384.Spec : Prop :=
  ∀ n, P943343298299335384.a n = A155938 (n + 1)

end A155938

/-! ## A155938.P656874540228066236

`∩[A040028(n+1), A155937(n+1)]`
-/

namespace A155938.P656874540228066236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P656874540228066236

namespace A155938

/-- `∩[A040028(n+1), A155937(n+1)]` -/
def P656874540228066236.Spec : Prop :=
  ∀ n, (P656874540228066236.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P17070481335468273555

`∩[A040036(n+1), A155937(n+1)]`
-/

namespace A155938.P17070481335468273555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P17070481335468273555

namespace A155938

/-- `∩[A040036(n+1), A155937(n+1)]` -/
def P17070481335468273555.Spec : Prop :=
  ∀ n, (P17070481335468273555.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P9546612932753709263

`∩[A040044(n+1), A155937(n+1)]`
-/

namespace A155938.P9546612932753709263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P9546612932753709263

namespace A155938

/-- `∩[A040044(n+1), A155937(n+1)]` -/
def P9546612932753709263.Spec : Prop :=
  ∀ n, (P9546612932753709263.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P3090824842807522914

`∩[A040046(n+1), A155937(n+1)]`
-/

namespace A155938.P3090824842807522914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P3090824842807522914

namespace A155938

/-- `∩[A040046(n+1), A155937(n+1)]` -/
def P3090824842807522914.Spec : Prop :=
  ∀ n, (P3090824842807522914.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P12589049800778889040

`∩[A040049(n+1), A155937(n+1)]`
-/

namespace A155938.P12589049800778889040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P12589049800778889040

namespace A155938

/-- `∩[A040049(n+1), A155937(n+1)]` -/
def P12589049800778889040.Spec : Prop :=
  ∀ n, (P12589049800778889040.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P7047188375825370059

`∩[A040054(n+1), A155937(n+1)]`
-/

namespace A155938.P7047188375825370059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P7047188375825370059

namespace A155938

/-- `∩[A040054(n+1), A155937(n+1)]` -/
def P7047188375825370059.Spec : Prop :=
  ∀ n, (P7047188375825370059.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P17882739717265187183

`∩[A040060(n+1), A155937(n+1)]`
-/

namespace A155938.P17882739717265187183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P17882739717265187183

namespace A155938

/-- `∩[A040060(n+1), A155937(n+1)]` -/
def P17882739717265187183.Spec : Prop :=
  ∀ n, (P17882739717265187183.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P6292793483790868469

`∩[A040062(n+1), A155937(n+1)]`
-/

namespace A155938.P6292793483790868469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P6292793483790868469

namespace A155938

/-- `∩[A040062(n+1), A155937(n+1)]` -/
def P6292793483790868469.Spec : Prop :=
  ∀ n, (P6292793483790868469.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P2733711299600172712

`∩[A040065(n+1), A155937(n+1)]`
-/

namespace A155938.P2733711299600172712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P2733711299600172712

namespace A155938

/-- `∩[A040065(n+1), A155937(n+1)]` -/
def P2733711299600172712.Spec : Prop :=
  ∀ n, (P2733711299600172712.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P12283426453306752391

`∩[A040078(n+1), A155937(n+1)]`
-/

namespace A155938.P12283426453306752391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P12283426453306752391

namespace A155938

/-- `∩[A040078(n+1), A155937(n+1)]` -/
def P12283426453306752391.Spec : Prop :=
  ∀ n, (P12283426453306752391.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P18041798235903608085

`∩[A040083(n+1), A155937(n+1)]`
-/

namespace A155938.P18041798235903608085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P18041798235903608085

namespace A155938

/-- `∩[A040083(n+1), A155937(n+1)]` -/
def P18041798235903608085.Spec : Prop :=
  ∀ n, (P18041798235903608085.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P8750553194893610178

`∩[A040085(n+1), A155937(n+1)]`
-/

namespace A155938.P8750553194893610178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P8750553194893610178

namespace A155938

/-- `∩[A040085(n+1), A155937(n+1)]` -/
def P8750553194893610178.Spec : Prop :=
  ∀ n, (P8750553194893610178.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P16707451582799429035

`∩[A040087(n+1), A155937(n+1)]`
-/

namespace A155938.P16707451582799429035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P16707451582799429035

namespace A155938

/-- `∩[A040087(n+1), A155937(n+1)]` -/
def P16707451582799429035.Spec : Prop :=
  ∀ n, (P16707451582799429035.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P1881336907722322270

`∩[A040089(n+1), A155937(n+1)]`
-/

namespace A155938.P1881336907722322270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P1881336907722322270

namespace A155938

/-- `∩[A040089(n+1), A155937(n+1)]` -/
def P1881336907722322270.Spec : Prop :=
  ∀ n, (P1881336907722322270.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P3211658838799544770

`∩[A040095(n+1), A155937(n+1)]`
-/

namespace A155938.P3211658838799544770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P3211658838799544770

namespace A155938

/-- `∩[A040095(n+1), A155937(n+1)]` -/
def P3211658838799544770.Spec : Prop :=
  ∀ n, (P3211658838799544770.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P11193237723155789835

`∩[A042966(n+1), A155937(n+1)]`
-/

namespace A155938.P11193237723155789835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P11193237723155789835

namespace A155938

/-- `∩[A042966(n+1), A155937(n+1)]` -/
def P11193237723155789835.Spec : Prop :=
  ∀ n, (P11193237723155789835.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P1834139866508743173

`∩[A042986(n+1), A155937(n+1)]`
-/

namespace A155938.P1834139866508743173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P1834139866508743173

namespace A155938

/-- `∩[A042986(n+1), A155937(n+1)]` -/
def P1834139866508743173.Spec : Prop :=
  ∀ n, (P1834139866508743173.a n : ℤ) = A155938 (n + 1)

end A155938

/-! ## A155938.P1404472519933376825

`∩[A042997(n+1), A155937(n+1)]`
-/

namespace A155938.P1404472519933376825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155938.P1404472519933376825

namespace A155938

/-- `∩[A042997(n+1), A155937(n+1)]` -/
def P1404472519933376825.Spec : Prop :=
  ∀ n, (P1404472519933376825.a n : ℤ) = A155938 (n + 1)

end A155938

/-!
# A155939: Numbers k such that 13*k + 8 is not a prime.

The programs for A155939, the canonical program `A155939.P15331834315915861086` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155939 has offset 1).

The definition of A155939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155939.P14462255195732273667

`comp[A155937(n+1)]`
-/

namespace A155939.P14462255195732273667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155939.P14462255195732273667

namespace A155939

/-- `comp[A155937(n+1)]` -/
def P14462255195732273667.Spec : Prop :=
  ∀ n, (P14462255195732273667.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P15331834315915861086

`eq[0, A096500(A269044(n))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A155939

/-- `eq[0, A096500(A269044(n))]` -/
def P15331834315915861086.Spec : Prop :=
  ∀ n, (P15331834315915861086.a n : ℤ) = A155939 (n + 1)

theorem P15331834315915861086.correct : P15331834315915861086.Spec := by
  intro n
  simp only [A155939, Nat.add_sub_cancel]

end A155939

/-! ## A155939.P13364442005930420978

`eq[1, A005171(A306285(n+1))]`
-/

namespace A155939.P13364442005930420978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A306285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155939.P13364442005930420978

namespace A155939

/-- `eq[1, A005171(A306285(n+1))]` -/
def P13364442005930420978.Spec : Prop :=
  ∀ n, (P13364442005930420978.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P11759697210266822085

`lt[3, A000005(A016969(2*n)+n+3)]`
-/

namespace A155939.P11759697210266822085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016969 (2 * n) + (n + 3 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155939.P11759697210266822085

namespace A155939

/-- `lt[3, A000005(A016969(2*n)+n+3)]` -/
def P11759697210266822085.Spec : Prop :=
  ∀ n, (P11759697210266822085.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P6369535478615534448

`lt[1, A006530(∏{e}[A306285(n+1), #+1]-1)]`
-/

namespace A155939.P6369535478615534448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155939.P6369535478615534448

namespace A155939

/-- `lt[1, A006530(∏{e}[A306285(n+1), #+1]-1)]` -/
def P6369535478615534448.Spec : Prop :=
  ∀ n, (P6369535478615534448.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P3342578978013784837

`lt[A020639(A306285(n+1)), A005408(n+1)]`
-/

namespace A155939.P3342578978013784837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155939.P3342578978013784837

namespace A155939

/-- `lt[A020639(A306285(n+1)), A005408(n+1)]` -/
def P3342578978013784837.Spec : Prop :=
  ∀ n, (P3342578978013784837.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P7578081783627430366

`lt[A020639(A306285(n+1)), A273669(n+1)+1]`
-/

namespace A155939.P7578081783627430366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155939.P7578081783627430366

namespace A155939

/-- `lt[A020639(A306285(n+1)), A273669(n+1)+1]` -/
def P7578081783627430366.Spec : Prop :=
  ∀ n, (P7578081783627430366.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P10358034409079933023

`lt[A006530(2*A306285(n+1)), A306285(n+1)]`
-/

namespace A155939.P10358034409079933023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A306285 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155939.P10358034409079933023

namespace A155939

/-- `lt[A006530(2*A306285(n+1)), A306285(n+1)]` -/
def P10358034409079933023.Spec : Prop :=
  ∀ n, (P10358034409079933023.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P18085928817624730409

`lt[A020639(A306285(n+1)), A265672(2*n+3)]`
-/

namespace A155939.P18085928817624730409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306285 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265672 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155939.P18085928817624730409

namespace A155939

/-- `lt[A020639(A306285(n+1)), A265672(2*n+3)]` -/
def P18085928817624730409.Spec : Prop :=
  ∀ n, (P18085928817624730409.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P295821490555692697

`eq[0, A285982(A154609(n))]`
-/

namespace A155939.P295821490555692697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A154609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155939.P295821490555692697

namespace A155939

/-- `eq[0, A285982(A154609(n))]` -/
def P295821490555692697.Spec : Prop :=
  ∀ n, (P295821490555692697.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P78661774477319086

`eq[A000007(n), A232195(A306285(n+1))]`
-/

namespace A155939.P78661774477319086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (A306285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155939.P78661774477319086

namespace A155939

/-- `eq[A000007(n), A232195(A306285(n+1))]` -/
def P78661774477319086.Spec : Prop :=
  ∀ n, (P78661774477319086.a n : ℤ) = A155939 (n + 1)

end A155939

/-! ## A155939.P13709449230388762096

`eq[A055672(2*(n+2)), A055672(A306285(n+1))]`
-/

namespace A155939.P13709449230388762096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A306285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155939.P13709449230388762096

namespace A155939

/-- `eq[A055672(2*(n+2)), A055672(A306285(n+1))]` -/
def P13709449230388762096.Spec : Prop :=
  ∀ n, (P13709449230388762096.a n : ℤ) = A155939 (n + 1)

end A155939

/-!
# A155940: Triangle read by rows containing Vardi's optimal solution to the glove problem.

The programs for A155940, there is no canonical definition to state claims against.
-/

/-! ## A155940.P11187466359026774598

`A226029(A059268(n)*A081118(n+1))`
-/

namespace A155940.P11187466359026774598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A059268 n * A081118 (n + 1)).toNat

end

end A155940.P11187466359026774598

/-! ## A155940.P15229588697649689768

`A226029(lcm(A059268(n), A081118(n+1)))`
-/

namespace A155940.P15229588697649689768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (Int.lcm (A059268 n) (A081118 (n + 1)))

end

end A155940.P15229588697649689768

/-!
# A155941: Numbers n such that 16*n+1 is not prime.

The programs for A155941, the canonical program `A155941.P17300863654346635542` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155941 has offset 1).

The definition of A155941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155941.P17300863654346635542

`comp[A155942(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A155941

/-- `comp[A155942(n+1)]` -/
def P17300863654346635542.Spec : Prop :=
  ∀ n, (P17300863654346635542.a n : ℤ) = A155941 (n + 1)

theorem P17300863654346635542.correct : P17300863654346635542.Spec := by
  intro n
  simp only [A155941, Nat.add_sub_cancel]

end A155941

/-! ## A155941.P11787081255553205050

`eq[0, A101264(8*n)]`
-/

namespace A155941.P11787081255553205050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155941.P11787081255553205050

namespace A155941

/-- `eq[0, A101264(8*n)]` -/
def P11787081255553205050.Spec : Prop :=
  ∀ n, (P11787081255553205050.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P663825612303989312

`eq[0, A010051(16*n+1)]`
-/

namespace A155941.P663825612303989312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (16 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155941.P663825612303989312

namespace A155941

/-- `eq[0, A010051(16*n+1)]` -/
def P663825612303989312.Spec : Prop :=
  ∀ n, (P663825612303989312.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P8881360789516738977

`lt[ceil(atan(2*n)), A000005(16*n+1)]`
-/

namespace A155941.P8881360789516738977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 * n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155941.P8881360789516738977

namespace A155941

/-- `lt[ceil(atan(2*n)), A000005(16*n+1)]` -/
def P8881360789516738977.Spec : Prop :=
  ∀ n, (P8881360789516738977.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P1832892190764378494

`lt[A020639(4*4*n+1), 2*(n+1)]`
-/

namespace A155941.P1832892190764378494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (4 * n) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155941.P1832892190764378494

namespace A155941

/-- `lt[A020639(4*4*n+1), 2*(n+1)]` -/
def P1832892190764378494.Spec : Prop :=
  ∀ n, (P1832892190764378494.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P15535380720884719301

`lt[A020639(16*n+1)+3, A004277(n+3)]`
-/

namespace A155941.P15535380720884719301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (16 * n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155941.P15535380720884719301

namespace A155941

/-- `lt[A020639(16*n+1)+3, A004277(n+3)]` -/
def P15535380720884719301.Spec : Prop :=
  ∀ n, (P15535380720884719301.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P17462235428268494963

`eq[1, A005171(16*n+1)]`
-/

namespace A155941.P17462235428268494963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (16 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155941.P17462235428268494963

namespace A155941

/-- `eq[1, A005171(16*n+1)]` -/
def P17462235428268494963.Spec : Prop :=
  ∀ n, (P17462235428268494963.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P8215288733436216771

`eq[1, A110560(4*4*n)]`
-/

namespace A155941.P8215288733436216771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (4 * (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155941.P8215288733436216771

namespace A155941

/-- `eq[1, A110560(4*4*n)]` -/
def P8215288733436216771.Spec : Prop :=
  ∀ n, (P8215288733436216771.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P5428118147282204204

`eq[1, A089026(4*4*n+1)]`
-/

namespace A155941.P5428118147282204204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (4 * (4 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155941.P5428118147282204204

namespace A155941

/-- `eq[1, A089026(4*4*n+1)]` -/
def P5428118147282204204.Spec : Prop :=
  ∀ n, (P5428118147282204204.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P17898182467634205498

`lt[A151763(4*4*n+1), 1]`
-/

namespace A155941.P17898182467634205498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (4 * (4 * n) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155941.P17898182467634205498

namespace A155941

/-- `lt[A151763(4*4*n+1), 1]` -/
def P17898182467634205498.Spec : Prop :=
  ∀ n, (P17898182467634205498.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P12395886714780389330

`lt[A014963(16*n+1), 7*n+3]`
-/

namespace A155941.P12395886714780389330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (16 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155941.P12395886714780389330

namespace A155941

/-- `lt[A014963(16*n+1), 7*n+3]` -/
def P12395886714780389330.Spec : Prop :=
  ∀ n, (P12395886714780389330.a n : ℤ) = A155941 (n + 1)

end A155941

/-! ## A155941.P9369834412905727976

`eq[A055672(A017077(2*n)), A055672(2*n)]`
-/

namespace A155941.P9369834412905727976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A017077 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155941.P9369834412905727976

namespace A155941

/-- `eq[A055672(A017077(2*n)), A055672(2*n)]` -/
def P9369834412905727976.Spec : Prop :=
  ∀ n, (P9369834412905727976.a n : ℤ) = A155941 (n + 1)

end A155941

/-!
# A155942: Numbers k such that 16k+1 is a prime.

The programs for A155942, the canonical program `A155942.P8113171516116808225` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155942 has offset 1).

The definition of A155942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155942.P8113171516116808225

`floor(floor(p?[4*4*n+1]/4)/4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155942

/-- `floor(floor(p?[4*4*n+1]/4)/4)` -/
def P8113171516116808225.Spec : Prop :=
  ∀ n, P8113171516116808225.a n = A155942 (n + 1)

theorem P8113171516116808225.correct : P8113171516116808225.Spec := by
  intro n
  simp only [A155942, Nat.add_sub_cancel]

end A155942

/-! ## A155942.P11357508975470594231

`comp[A155941(n+1)]`
-/

namespace A155942.P11357508975470594231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155942.P11357508975470594231

namespace A155942

/-- `comp[A155941(n+1)]` -/
def P11357508975470594231.Spec : Prop :=
  ∀ n, (P11357508975470594231.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P6895053731285908042

`eq[1, A101264(8*n)]`
-/

namespace A155942.P6895053731285908042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155942.P6895053731285908042

namespace A155942

/-- `eq[1, A101264(8*n)]` -/
def P6895053731285908042.Spec : Prop :=
  ∀ n, (P6895053731285908042.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P6418559154537613581

`eq[1, A001222(16*n+1)]`
-/

namespace A155942.P6418559154537613581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155942.P6418559154537613581

namespace A155942

/-- `eq[1, A001222(16*n+1)]` -/
def P6418559154537613581.Spec : Prop :=
  ∀ n, (P6418559154537613581.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P5973654507883775062

`eq[2, A000005(16*n+1)]`
-/

namespace A155942.P5973654507883775062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155942.P5973654507883775062

namespace A155942

/-- `eq[2, A000005(16*n+1)]` -/
def P5973654507883775062.Spec : Prop :=
  ∀ n, (P5973654507883775062.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P12357891684020138924

`lt[2*n+1, A020639(16*n+1)]`
-/

namespace A155942.P12357891684020138924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (16 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155942.P12357891684020138924

namespace A155942

/-- `lt[2*n+1, A020639(16*n+1)]` -/
def P12357891684020138924.Spec : Prop :=
  ∀ n, (P12357891684020138924.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P9238152747461913313

`eq[16*(n+1), A000010(16*(n+1)+1)]+1`
-/

namespace A155942.P9238152747461913313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (16 * (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A155942.P9238152747461913313

namespace A155942

/-- `eq[16*(n+1), A000010(16*(n+1)+1)]+1` -/
def P9238152747461913313.Spec : Prop :=
  ∀ n, (P9238152747461913313.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P3568491687916255139

`eq[1, A103961(A016813(2*n))]`
-/

namespace A155942.P3568491687916255139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A016813 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155942.P3568491687916255139

namespace A155942

/-- `eq[1, A103961(A016813(2*n))]` -/
def P3568491687916255139.Spec : Prop :=
  ∀ n, (P3568491687916255139.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P1410516059882757800

`eq[A053989(4*n+1), A266664(n+1)]/2`
-/

namespace A155942.P1410516059882757800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266664 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A155942.P1410516059882757800

namespace A155942

/-- `eq[A053989(4*n+1), A266664(n+1)]/2` -/
def P1410516059882757800.Spec : Prop :=
  ∀ n, P1410516059882757800.a n = (A155942 (n + 1) : ℚ)

end A155942

/-! ## A155942.P3634212082652546319

`eq[A053989(4*n+1), A269735(n+1)]/2`
-/

namespace A155942.P3634212082652546319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A155942.P3634212082652546319

namespace A155942

/-- `eq[A053989(4*n+1), A269735(n+1)]/2` -/
def P3634212082652546319.Spec : Prop :=
  ∀ n, P3634212082652546319.a n = (A155942 (n + 1) : ℚ)

end A155942

/-! ## A155942.P7155811128262108028

`eq[A231820(4*n+1), A269735(n+1)]/2`
-/

namespace A155942.P7155811128262108028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A155942.P7155811128262108028

namespace A155942

/-- `eq[A231820(4*n+1), A269735(n+1)]/2` -/
def P7155811128262108028.Spec : Prop :=
  ∀ n, P7155811128262108028.a n = (A155942 (n + 1) : ℚ)

end A155942

/-! ## A155942.P1025261569631173280

`eq[A053989(4*n+1), A063918(n+2)]/2`
-/

namespace A155942.P1025261569631173280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A155942.P1025261569631173280

namespace A155942

/-- `eq[A053989(4*n+1), A063918(n+2)]/2` -/
def P1025261569631173280.Spec : Prop :=
  ∀ n, P1025261569631173280.a n = (A155942 (n + 1) : ℚ)

end A155942

/-! ## A155942.P9329969758221601569

`eq[A053989(4*n+1), A074828(n+2)]/2`
-/

namespace A155942.P9329969758221601569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A155942.P9329969758221601569

namespace A155942

/-- `eq[A053989(4*n+1), A074828(n+2)]/2` -/
def P9329969758221601569.Spec : Prop :=
  ∀ n, P9329969758221601569.a n = (A155942 (n + 1) : ℚ)

end A155942

/-! ## A155942.P5707224044174321077

`eq[A053989(4*n+1), A271419(n+2)]/2`
-/

namespace A155942.P5707224044174321077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A155942.P5707224044174321077

namespace A155942

/-- `eq[A053989(4*n+1), A271419(n+2)]/2` -/
def P5707224044174321077.Spec : Prop :=
  ∀ n, P5707224044174321077.a n = (A155942 (n + 1) : ℚ)

end A155942

/-! ## A155942.P15550521697002419804

`eq[A136480(2*(n+1)), A228037(4*n)]/2`
-/

namespace A155942.P15550521697002419804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228037 (4 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A155942.P15550521697002419804

namespace A155942

/-- `eq[A136480(2*(n+1)), A228037(4*n)]/2` -/
def P15550521697002419804.Spec : Prop :=
  ∀ n, P15550521697002419804.a n = (A155942 (n + 1) : ℚ)

end A155942

/-! ## A155942.P18380284592360835432

`eq[1, A061358(A017101(2*n))]`
-/

namespace A155942.P18380284592360835432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A017101 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155942.P18380284592360835432

namespace A155942

/-- `eq[1, A061358(A017101(2*n))]` -/
def P18380284592360835432.Spec : Prop :=
  ∀ n, (P18380284592360835432.a n : ℤ) = A155942 (n + 1)

end A155942

/-! ## A155942.P3872533090544020149

`eq[2, A085082(A215137(n)-n)]`
-/

namespace A155942.P3872533090544020149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A215137 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155942.P3872533090544020149

namespace A155942

/-- `eq[2, A085082(A215137(n)-n)]` -/
def P3872533090544020149.Spec : Prop :=
  ∀ n, (P3872533090544020149.a n : ℤ) = A155942 (n + 1)

end A155942

/-!
# A155943: Primes p such that 16*p + 1 is also prime.

The programs for A155943, the canonical program `A155943.P14210588904046408266` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155943 has offset 1).

The definition of A155943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155943.P14210588904046408266

`p?[2*A105135(n+1)+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155943

/-- `p?[2*A105135(n+1)+1]` -/
def P14210588904046408266.Spec : Prop :=
  ∀ n, P14210588904046408266.a n = A155943 (n + 1)

theorem P14210588904046408266.correct : P14210588904046408266.Spec := by
  intro n
  simp only [A155943, Nat.add_sub_cancel]

end A155943

/-! ## A155943.P15709893320087559683

`p?[A105135(n+1)+A105135(n+1)-A057428(n)]`
-/

namespace A155943.P15709893320087559683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105135 (n + 1) + (A105135 (n + 1) - A057428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155943.P15709893320087559683

namespace A155943

/-- `p?[A105135(n+1)+A105135(n+1)-A057428(n)]` -/
def P15709893320087559683.Spec : Prop :=
  ∀ n, P15709893320087559683.a n = A155943 (n + 1)

end A155943

/-! ## A155943.P11932301700347255432

`p?[A155942(n+1)]`
-/

namespace A155943.P11932301700347255432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155943.P11932301700347255432

namespace A155943

/-- `p?[A155942(n+1)]` -/
def P11932301700347255432.Spec : Prop :=
  ∀ n, P11932301700347255432.a n = A155943 (n + 1)

end A155943

/-! ## A155943.P2107160167471363340

`record[A020639(A155942(n+3))]`
-/

namespace A155943.P2107160167471363340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155942 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155943.P2107160167471363340

namespace A155943

/-- `record[A020639(A155942(n+3))]` -/
def P2107160167471363340.Spec : Prop :=
  ∀ n, P2107160167471363340.a n = A155943 (n + 1)

end A155943

/-! ## A155943.P15683350563252092725

`filter[A155942(n+1), A010051(#)]`
-/

namespace A155943.P15683350563252092725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155943.P15683350563252092725

namespace A155943

/-- `filter[A155942(n+1), A010051(#)]` -/
def P15683350563252092725.Spec : Prop :=
  ∀ n, P15683350563252092725.a n = A155943 (n + 1)

end A155943

/-! ## A155943.P1754241574958247228

`∩[A000040(n+1), A155942(n+1)]`
-/

namespace A155943.P1754241574958247228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P1754241574958247228

namespace A155943

/-- `∩[A000040(n+1), A155942(n+1)]` -/
def P1754241574958247228.Spec : Prop :=
  ∀ n, (P1754241574958247228.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P8524163153547353729

`∩[A002476(n+1), A155942(n+1)]`
-/

namespace A155943.P8524163153547353729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P8524163153547353729

namespace A155943

/-- `∩[A002476(n+1), A155942(n+1)]` -/
def P8524163153547353729.Spec : Prop :=
  ∀ n, (P8524163153547353729.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P4161373567282042508

`∩[A004139(n+1), A155942(n+1)]`
-/

namespace A155943.P4161373567282042508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P4161373567282042508

namespace A155943

/-- `∩[A004139(n+1), A155942(n+1)]` -/
def P4161373567282042508.Spec : Prop :=
  ∀ n, (P4161373567282042508.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P10362933304841741915

`∩[A007645(n+1), A155942(n+1)]`
-/

namespace A155943.P10362933304841741915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P10362933304841741915

namespace A155943

/-- `∩[A007645(n+1), A155942(n+1)]` -/
def P10362933304841741915.Spec : Prop :=
  ∀ n, (P10362933304841741915.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P1588130840254573866

`∩[A040116(n+1), A155942(n+1)]`
-/

namespace A155943.P1588130840254573866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P1588130840254573866

namespace A155943

/-- `∩[A040116(n+1), A155942(n+1)]` -/
def P1588130840254573866.Spec : Prop :=
  ∀ n, (P1588130840254573866.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P2518672937082628280

`∩[A042986(n+1), A155942(n+1)]`
-/

namespace A155943.P2518672937082628280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P2518672937082628280

namespace A155943

/-- `∩[A042986(n+1), A155942(n+1)]` -/
def P2518672937082628280.Spec : Prop :=
  ∀ n, (P2518672937082628280.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P8699467728395549027

`∩[A045319(n+1), A155942(n+1)]`
-/

namespace A155943.P8699467728395549027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P8699467728395549027

namespace A155943

/-- `∩[A045319(n+1), A155942(n+1)]` -/
def P8699467728395549027.Spec : Prop :=
  ∀ n, (P8699467728395549027.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P3440522866692237215

`∩[A045321(n+1), A155942(n+1)]`
-/

namespace A155943.P3440522866692237215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P3440522866692237215

namespace A155943

/-- `∩[A045321(n+1), A155942(n+1)]` -/
def P3440522866692237215.Spec : Prop :=
  ∀ n, (P3440522866692237215.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P7653069203344333265

`∩[A045331(n+1), A155942(n+1)]`
-/

namespace A155943.P7653069203344333265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P7653069203344333265

namespace A155943

/-- `∩[A045331(n+1), A155942(n+1)]` -/
def P7653069203344333265.Spec : Prop :=
  ∀ n, (P7653069203344333265.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P17901765708862594431

`∩[A045344(n+1), A155942(n+1)]`
-/

namespace A155943.P17901765708862594431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P17901765708862594431

namespace A155943

/-- `∩[A045344(n+1), A155942(n+1)]` -/
def P17901765708862594431.Spec : Prop :=
  ∀ n, (P17901765708862594431.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P11565373875453691603

`∩[A045346(n+1), A155942(n+1)]`
-/

namespace A155943.P11565373875453691603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P11565373875453691603

namespace A155943

/-- `∩[A045346(n+1), A155942(n+1)]` -/
def P11565373875453691603.Spec : Prop :=
  ∀ n, (P11565373875453691603.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P6238514827982840027

`∩[A045375(n+1), A155942(n+1)]`
-/

namespace A155943.P6238514827982840027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P6238514827982840027

namespace A155943

/-- `∩[A045375(n+1), A155942(n+1)]` -/
def P6238514827982840027.Spec : Prop :=
  ∀ n, (P6238514827982840027.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P17072773067092322807

`∩[A049549(n+1), A155942(n+1)]`
-/

namespace A155943.P17072773067092322807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P17072773067092322807

namespace A155943

/-- `∩[A049549(n+1), A155942(n+1)]` -/
def P17072773067092322807.Spec : Prop :=
  ∀ n, (P17072773067092322807.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P4563570912158744653

`∩[A049591(n+1), A155942(n+1)]`
-/

namespace A155943.P4563570912158744653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P4563570912158744653

namespace A155943

/-- `∩[A049591(n+1), A155942(n+1)]` -/
def P4563570912158744653.Spec : Prop :=
  ∀ n, (P4563570912158744653.a n : ℤ) = A155943 (n + 1)

end A155943

/-! ## A155943.P6277407731818137068

`∩[A053176(n+1), A155942(n+1)]`
-/

namespace A155943.P6277407731818137068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155943.P6277407731818137068

namespace A155943

/-- `∩[A053176(n+1), A155942(n+1)]` -/
def P6277407731818137068.Spec : Prop :=
  ∀ n, (P6277407731818137068.a n : ℤ) = A155943 (n + 1)

end A155943

/-!
# A155944: Jacobsthal numbers A001045, every second term incremented by 1.

The programs for A155944, the canonical program `A155944.P5387461706839836261` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155944 has offset 0).

The definition of A155944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155944.P5387461706839836261

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155944

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P5387461706839836261.Spec : Prop :=
  ∀ n, P5387461706839836261.a n = A155944 n

theorem P5387461706839836261.correct : P5387461706839836261.Spec := by
  intro n
  simp only [A155944]

end A155944

/-! ## A155944.P7940195694258123276

`A001045(n)+A000035(n)`
-/

namespace A155944.P7940195694258123276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A000035 n

end

end A155944.P7940195694258123276

namespace A155944

/-- `A001045(n)+A000035(n)` -/
def P7940195694258123276.Spec : Prop :=
  ∀ n, P7940195694258123276.a n = A155944 n

end A155944

/-! ## A155944.P5975937415932550143

`floor((2^n+1)/3)+n%2`
-/

namespace A155944.P5975937415932550143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n + 1 : ℚ) / 3⌋ + ((n % 2 : ℕ) : ℤ)

end

end A155944.P5975937415932550143

namespace A155944

/-- `floor((2^n+1)/3)+n%2` -/
def P5975937415932550143.Spec : Prop :=
  ∀ n, P5975937415932550143.a n = A155944 n

end A155944

/-! ## A155944.P2537842958915211209

`1/2+2^n/3-5*(-1)^n/6`
-/

namespace A155944.P2537842958915211209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 + (2 ^ n : ℚ) / 3 - (5 * (-1) ^ n : ℚ) / 6

end

end A155944.P2537842958915211209

namespace A155944

/-- `1/2+2^n/3-5*(-1)^n/6` -/
def P2537842958915211209.Spec : Prop :=
  ∀ n, P2537842958915211209.a n = (A155944 n : ℚ)

theorem P2537842958915211209.correct : P2537842958915211209.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A155944, Nat.add_sub_cancel, A155944.P2537842958915211209.a, A155944.P5387461706839836261.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A155944, Nat.add_sub_cancel, A155944.P2537842958915211209.a, A155944.P5387461706839836261.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155944

/-! ## A155944.P16059375556814488846

`∑[ogf((-2x+3x^2)/(-1+x+2x^2))]`
-/

namespace A155944.P16059375556814488846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155944.P16059375556814488846

namespace A155944

/-- `∑[ogf((-2x+3x^2)/(-1+x+2x^2))]` -/
def P16059375556814488846.Spec : Prop :=
  ∀ n, P16059375556814488846.a n = A155944 n

end A155944

/-! ## A155944.P3765943664412994376

`ogf((2x-3x^2)/(1-2x-x^2+2x^3))`
-/

namespace A155944.P3765943664412994376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -2, -1, 2] n

end

end A155944.P3765943664412994376

namespace A155944

/-- `ogf((2x-3x^2)/(1-2x-x^2+2x^3))` -/
def P3765943664412994376.Spec : Prop :=
  ∀ n, P3765943664412994376.a n = A155944 n

end A155944

/-! ## A155944.P16599180225707361142

`∑[2^(n-2)-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A155944.P16599180225707361142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155944.P16599180225707361142

namespace A155944

/-- `∑[2^(n-2)-a(n-1)]` -/
def P16599180225707361142.Spec : Prop :=
  ∀ n, P16599180225707361142.a n = (A155944 n : ℚ)

end A155944

/-! ## A155944.P5931433176181742478

`2*(a(n-2)-(1-a(n-1))/2)` with `a(0)=0, a(1)=2`
-/

namespace A155944.P5931433176181742478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (a (n - 2) - (1 - a (n - 1)) / 2)

end

end A155944.P5931433176181742478

namespace A155944

/-- `2*(a(n-2)-(1-a(n-1))/2)` -/
def P5931433176181742478.Spec : Prop :=
  ∀ n, P5931433176181742478.a n = (A155944 n : ℚ)

end A155944

/-! ## A155944.P13765776535950378933

`floor(a(n-1)-(1-a(n-2)-a(n-2)))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A155944.P13765776535950378933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (1 - a (n - 2) - a (n - 2))

end

end A155944.P13765776535950378933

namespace A155944

/-- `floor(a(n-1)-(1-a(n-2)-a(n-2)))` -/
def P13765776535950378933.Spec : Prop :=
  ∀ n, P13765776535950378933.a n = A155944 n

end A155944

/-! ## A155944.P7258836260173721816

`A000034(n)*A136324(n)`
-/

namespace A155944.P7258836260173721816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A136324 n

end

end A155944.P7258836260173721816

namespace A155944

/-- `A000034(n)*A136324(n)` -/
def P7258836260173721816.Spec : Prop :=
  ∀ n, P7258836260173721816.a n = A155944 n

end A155944

/-! ## A155944.P690391022517923696

`and(A153643(n), A290073(n))`
-/

namespace A155944.P690391022517923696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153643 n) (A290073 n)

end

end A155944.P690391022517923696

namespace A155944

/-- `and(A153643(n), A290073(n))` -/
def P690391022517923696.Spec : Prop :=
  ∀ n, P690391022517923696.a n = A155944 n

end A155944

/-! ## A155944.P2988236934355972063

`xor(A126646(n), A140359(n))`
-/

namespace A155944.P2988236934355972063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A140359 n)

end

end A155944.P2988236934355972063

namespace A155944

/-- `xor(A126646(n), A140359(n))` -/
def P2988236934355972063.Spec : Prop :=
  ∀ n, P2988236934355972063.a n = A155944 n

end A155944

/-! ## A155944.P15558387026453283738

`A062092(n)%A285475(n)`
-/

namespace A155944.P15558387026453283738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062092 n) (A285475 n)

end

end A155944.P15558387026453283738

namespace A155944

/-- `A062092(n)%A285475(n)` -/
def P15558387026453283738.Spec : Prop :=
  ∀ n, P15558387026453283738.a n = A155944 n

end A155944

/-! ## A155944.P4622676545228005377

`A280345(n)%A168642(n)`
-/

namespace A155944.P4622676545228005377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280345 n) (A168642 n)

end

end A155944.P4622676545228005377

namespace A155944

/-- `A280345(n)%A168642(n)` -/
def P4622676545228005377.Spec : Prop :=
  ∀ n, P4622676545228005377.a n = A155944 n

end A155944

/-! ## A155944.P15205421884361644044

`A241685(n)%A277955(n)`
-/

namespace A155944.P15205421884361644044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241685 n) (A277955 n)

end

end A155944.P15205421884361644044

namespace A155944

/-- `A241685(n)%A277955(n)` -/
def P15205421884361644044.Spec : Prop :=
  ∀ n, P15205421884361644044.a n = A155944 n

end A155944

/-! ## A155944.P9000328223481345059

`A078008(n+1)*A128209(n)/A128209(n+1)`
-/

namespace A155944.P9000328223481345059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078008 (n + 1) * A128209 n : ℚ) / (A128209 (n + 1) : ℚ)

end

end A155944.P9000328223481345059

namespace A155944

/-- `A078008(n+1)*A128209(n)/A128209(n+1)` -/
def P9000328223481345059.Spec : Prop :=
  ∀ n, P9000328223481345059.a n = (A155944 n : ℚ)

end A155944

/-! ## A155944.P244802696139221118

`A337348(n+1)%A083582(n)`
-/

namespace A155944.P244802696139221118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337348 (n + 1)) (A083582 n)

end

end A155944.P244802696139221118

namespace A155944

/-- `A337348(n+1)%A083582(n)` -/
def P244802696139221118.Spec : Prop :=
  ∀ n, P244802696139221118.a n = A155944 n

end A155944

/-! ## A155944.P10500142686848881282

`A140323(n+1)%A280173(n)`
-/

namespace A155944.P10500142686848881282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140323 (n + 1)) (A280173 n)

end

end A155944.P10500142686848881282

namespace A155944

/-- `A140323(n+1)%A280173(n)` -/
def P10500142686848881282.Spec : Prop :=
  ∀ n, P10500142686848881282.a n = A155944 n

end A155944

/-! ## A155944.P6591725824356968469

`A072261(n+1)%A285475(n)`
-/

namespace A155944.P6591725824356968469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072261 (n + 1)) (A285475 n)

end

end A155944.P6591725824356968469

namespace A155944

/-- `A072261(n+1)%A285475(n)` -/
def P6591725824356968469.Spec : Prop :=
  ∀ n, P6591725824356968469.a n = A155944 n

end A155944

/-!
# A155945: Numbers n such that 24*n + 13 is not prime.

The programs for A155945, the canonical program `A155945.P7413010090445618353` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155945 has offset 1).

The definition of A155945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155945.P7413010090445618353

`comp[A139529(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A155945

/-- `comp[A139529(n+1)]` -/
def P7413010090445618353.Spec : Prop :=
  ∀ n, (P7413010090445618353.a n : ℤ) = A155945 (n + 1)

theorem P7413010090445618353.correct : P7413010090445618353.Spec := by
  intro n
  simp only [A155945, Nat.add_sub_cancel]

end A155945

/-! ## A155945.P6981391711158694344

`eq[0, A010051(6*(4*n+2)+1)]`
-/

namespace A155945.P6981391711158694344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * (4 * n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155945.P6981391711158694344

namespace A155945

/-- `eq[0, A010051(6*(4*n+2)+1)]` -/
def P6981391711158694344.Spec : Prop :=
  ∀ n, (P6981391711158694344.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P12786173721760539514

`lt[1, A001222(3*(8*n+4)+1)]`
-/

namespace A155945.P12786173721760539514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (8 * n + 4) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155945.P12786173721760539514

namespace A155945

/-- `lt[1, A001222(3*(8*n+4)+1)]` -/
def P12786173721760539514.Spec : Prop :=
  ∀ n, (P12786173721760539514.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P12329980982354652369

`lt[2, A000005(12*(2*n+1)+1)]`
-/

namespace A155945.P12329980982354652369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (2 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155945.P12329980982354652369

namespace A155945

/-- `lt[2, A000005(12*(2*n+1)+1)]` -/
def P12329980982354652369.Spec : Prop :=
  ∀ n, (P12329980982354652369.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P6990884652716832607

`eq[1, A156706(A017113(n))+1]`
-/

namespace A155945.P6990884652716832607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A017113 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155945.P6990884652716832607

namespace A155945

/-- `eq[1, A156706(A017113(n))+1]` -/
def P6990884652716832607.Spec : Prop :=
  ∀ n, (P6990884652716832607.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P4251435388547157741

`lt[A020639(A017533(2*n+1)), A016933(n)]`
-/

namespace A155945.P4251435388547157741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155945.P4251435388547157741

namespace A155945

/-- `lt[A020639(A017533(2*n+1)), A016933(n)]` -/
def P4251435388547157741.Spec : Prop :=
  ∀ n, (P4251435388547157741.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P7726995551428532195

`lt[A020639(A017533(2*n+1)), A016945(n)]`
-/

namespace A155945.P7726995551428532195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155945.P7726995551428532195

namespace A155945

/-- `lt[A020639(A017533(2*n+1)), A016945(n)]` -/
def P7726995551428532195.Spec : Prop :=
  ∀ n, (P7726995551428532195.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P11269221441325239127

`lt[A020639(A017533(2*n+1)), A016957(n)]`
-/

namespace A155945.P11269221441325239127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155945.P11269221441325239127

namespace A155945

/-- `lt[A020639(A017533(2*n+1)), A016957(n)]` -/
def P11269221441325239127.Spec : Prop :=
  ∀ n, (P11269221441325239127.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P12802079374256141903

`lt[A020639(A017533(2*n+1)), A017293(n)]`
-/

namespace A155945.P12802079374256141903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155945.P12802079374256141903

namespace A155945

/-- `lt[A020639(A017533(2*n+1)), A017293(n)]` -/
def P12802079374256141903.Spec : Prop :=
  ∀ n, (P12802079374256141903.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P3952432912061490721

`lt[A020639(A017533(2*n+1)), A017533(n)]`
-/

namespace A155945.P3952432912061490721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155945.P3952432912061490721

namespace A155945

/-- `lt[A020639(A017533(2*n+1)), A017533(n)]` -/
def P3952432912061490721.Spec : Prop :=
  ∀ n, (P3952432912061490721.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P11487347052796751987

`lt[A000010(4*A016945(n)+1), 4*A016945(n)]`
-/

namespace A155945.P11487347052796751987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 * A016945 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155945.P11487347052796751987

namespace A155945

/-- `lt[A000010(4*A016945(n)+1), 4*A016945(n)]` -/
def P11487347052796751987.Spec : Prop :=
  ∀ n, (P11487347052796751987.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P3454805136072872364

`eq[1, A066247(6*(4*n+2)+1)]`
-/

namespace A155945.P3454805136072872364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (6 * (4 * n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155945.P3454805136072872364

namespace A155945

/-- `eq[1, A066247(6*(4*n+2)+1)]` -/
def P3454805136072872364.Spec : Prop :=
  ∀ n, (P3454805136072872364.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P6104910707004506650

`eq[1, A088423(12*n+1)]`
-/

namespace A155945.P6104910707004506650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (12 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155945.P6104910707004506650

namespace A155945

/-- `eq[1, A088423(12*n+1)]` -/
def P6104910707004506650.Spec : Prop :=
  ∀ n, (P6104910707004506650.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P11546770109952517353

`lt[1, A060266(12*n+6)]`
-/

namespace A155945.P11546770109952517353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (12 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155945.P11546770109952517353

namespace A155945

/-- `lt[1, A060266(12*n+6)]` -/
def P11546770109952517353.Spec : Prop :=
  ∀ n, (P11546770109952517353.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P1065004460598833685

`eq[1, A245509(24*n+11)]`
-/

namespace A155945.P1065004460598833685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245509 (24 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155945.P1065004460598833685

namespace A155945

/-- `eq[1, A245509(24*n+11)]` -/
def P1065004460598833685.Spec : Prop :=
  ∀ n, (P1065004460598833685.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P4831438207499743554

`eq[1, A245513(24*n+11)]`
-/

namespace A155945.P4831438207499743554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245513 (24 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155945.P4831438207499743554

namespace A155945

/-- `eq[1, A245513(24*n+11)]` -/
def P4831438207499743554.Spec : Prop :=
  ∀ n, (P4831438207499743554.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P11366377355205127243

`lt[A014963(Δ[12*n²]+1), n]`
-/

namespace A155945.P11366377355205127243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A155945.P11366377355205127243

namespace A155945

/-- `lt[A014963(Δ[12*n²]+1), n]` -/
def P11366377355205127243.Spec : Prop :=
  ∀ n, (P11366377355205127243.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P4853339099827018266

`lt[1, A007920(A017533(2*n+1))]`
-/

namespace A155945.P4853339099827018266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A017533 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155945.P4853339099827018266

namespace A155945

/-- `lt[1, A007920(A017533(2*n+1))]` -/
def P4853339099827018266.Spec : Prop :=
  ∀ n, (P4853339099827018266.a n : ℤ) = A155945 (n + 1)

end A155945

/-! ## A155945.P374193904367039203

`eq[A049084(A017533(2*n+1)), A049084(2*(n+1))]`
-/

namespace A155945.P374193904367039203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A017533 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155945.P374193904367039203

namespace A155945

/-- `eq[A049084(A017533(2*n+1)), A049084(2*(n+1))]` -/
def P374193904367039203.Spec : Prop :=
  ∀ n, (P374193904367039203.a n : ℤ) = A155945 (n + 1)

end A155945

/-!
# A155946: Numbers d for which the volume of the regular d-dimensional simplex of unit edge is rational.

The programs for A155946, the canonical program `A155946.P13812767345114228886` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155946 has offset 1).

The definition of A155946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155946.P14638283329837507300

`∪[2*(n+1)², (2*n+1)²]-1`
-/

namespace A155946.P14638283329837507300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) - 1

end

end A155946.P14638283329837507300

namespace A155946

/-- `∪[2*(n+1)², (2*n+1)²]-1` -/
def P14638283329837507300.Spec : Prop :=
  ∀ n, P14638283329837507300.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P13812767345114228886

`A096033(n+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A155946

/-- `A096033(n+1)-1` -/
def P13812767345114228886.Spec : Prop :=
  ∀ n, P13812767345114228886.a n = A155946 (n + 1)

theorem P13812767345114228886.correct : P13812767345114228886.Spec := by
  intro n
  simp only [A155946, Nat.add_sub_cancel]

end A155946

/-! ## A155946.P4174747533538942264

`A028982(A001951(n+1))-1`
-/

namespace A155946.P4174747533538942264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A001951 (n + 1)).toNat - 1

end

end A155946.P4174747533538942264

namespace A155946

/-- `A028982(A001951(n+1))-1` -/
def P4174747533538942264.Spec : Prop :=
  ∀ n, P4174747533538942264.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P1065377222583665976

`A028982(A286666(n+1)-n)-1`
-/

namespace A155946.P1065377222583665976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A286666 (n + 1) - (n : ℤ)).toNat - 1

end

end A155946.P1065377222583665976

namespace A155946

/-- `A028982(A286666(n+1)-n)-1` -/
def P1065377222583665976.Spec : Prop :=
  ∀ n, P1065377222583665976.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P17160606855217887159

`A028982(A003151(n+1)-(n+1))-1`
-/

namespace A155946.P17160606855217887159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A003151 (n + 1) - (n + 1 : ℤ)).toNat - 1

end

end A155946.P17160606855217887159

namespace A155946

/-- `A028982(A003151(n+1)-(n+1))-1` -/
def P17160606855217887159.Spec : Prop :=
  ∀ n, P17160606855217887159.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P8784265493992771158

`A028982(A022804(n+1)-A001952(n+1))-1`
-/

namespace A155946.P8784265493992771158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A022804 (n + 1) - A001952 (n + 1)).toNat - 1

end

end A155946.P8784265493992771158

namespace A155946

/-- `A028982(A022804(n+1)-A001952(n+1))-1` -/
def P8784265493992771158.Spec : Prop :=
  ∀ n, P8784265493992771158.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P626758995268719742

`lt[0, A214304(n+1)]`
-/

namespace A155946.P626758995268719742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A155946.P626758995268719742

namespace A155946

/-- `lt[0, A214304(n+1)]` -/
def P626758995268719742.Spec : Prop :=
  ∀ n, (P626758995268719742.a n : ℤ) = A155946 (n + 1)

end A155946

/-! ## A155946.P12111788263193779166

`lt[1, A214304(n)]-1`
-/

namespace A155946.P12111788263193779166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A155946.P12111788263193779166

namespace A155946

/-- `lt[1, A214304(n)]-1` -/
def P12111788263193779166.Spec : Prop :=
  ∀ n, P12111788263193779166.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P17845607100428280530

`eq[gcd(2, n), A007913(2*(n+1))]`
-/

namespace A155946.P17845607100428280530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155946.P17845607100428280530

namespace A155946

/-- `eq[gcd(2, n), A007913(2*(n+1))]` -/
def P17845607100428280530.Spec : Prop :=
  ∀ n, (P17845607100428280530.a n : ℤ) = A155946 (n + 1)

end A155946

/-! ## A155946.P8778656902301878807

`eq[(n²+1)%8, A007913(n+1)]`
-/

namespace A155946.P8778656902301878807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155946.P8778656902301878807

namespace A155946

/-- `eq[(n²+1)%8, A007913(n+1)]` -/
def P8778656902301878807.Spec : Prop :=
  ∀ n, (P8778656902301878807.a n : ℤ) = A155946 (n + 1)

end A155946

/-! ## A155946.P17995756023081191719

`record[n*and(1, A320111(n+1))]`
-/

namespace A155946.P17995756023081191719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A320111 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155946.P17995756023081191719

namespace A155946

/-- `record[n*and(1, A320111(n+1))]` -/
def P17995756023081191719.Spec : Prop :=
  ∀ n, P17995756023081191719.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P11538331927810424426

`eq[1, A000035(A320111(n+1))]`
-/

namespace A155946.P11538331927810424426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A320111 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155946.P11538331927810424426

namespace A155946

/-- `eq[1, A000035(A320111(n+1))]` -/
def P11538331927810424426.Spec : Prop :=
  ∀ n, (P11538331927810424426.a n : ℤ) = A155946 (n + 1)

end A155946

/-! ## A155946.P18091923708956963834

`∩[A028982(n+1), A269860(n+1)]-1`
-/

namespace A155946.P18091923708956963834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269860 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A155946.P18091923708956963834

namespace A155946

/-- `∩[A028982(n+1), A269860(n+1)]-1` -/
def P18091923708956963834.Spec : Prop :=
  ∀ n, P18091923708956963834.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P16058566743116795264

`∩[A028982(n+1), A359771(n+1)]-1`
-/

namespace A155946.P16058566743116795264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A155946.P16058566743116795264

namespace A155946

/-- `∩[A028982(n+1), A359771(n+1)]-1` -/
def P16058566743116795264.Spec : Prop :=
  ∀ n, P16058566743116795264.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P8735395974198073551

`A322016(A096033(n+1))`
-/

namespace A155946.P8735395974198073551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 (A096033 (n + 1)).toNat

end

end A155946.P8735395974198073551

namespace A155946

/-- `A322016(A096033(n+1))` -/
def P8735395974198073551.Spec : Prop :=
  ∀ n, P8735395974198073551.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P16087115995064783908

`eq[A053867(n+1), A191254(n+1)]`
-/

namespace A155946.P16087115995064783908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155946.P16087115995064783908

namespace A155946

/-- `eq[A053867(n+1), A191254(n+1)]` -/
def P16087115995064783908.Spec : Prop :=
  ∀ n, (P16087115995064783908.a n : ℤ) = A155946 (n + 1)

end A155946

/-! ## A155946.P8851200873707554769

`∩[A028982(n+1), A359794(n+1)]-1`
-/

namespace A155946.P8851200873707554769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A155946.P8851200873707554769

namespace A155946

/-- `∩[A028982(n+1), A359794(n+1)]-1` -/
def P8851200873707554769.Spec : Prop :=
  ∀ n, P8851200873707554769.a n = A155946 (n + 1)

end A155946

/-! ## A155946.P646171708892526863

`eq[1, A364900(n)]`
-/

namespace A155946.P646171708892526863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155946.P646171708892526863

namespace A155946

/-- `eq[1, A364900(n)]` -/
def P646171708892526863.Spec : Prop :=
  ∀ n, (P646171708892526863.a n : ℤ) = A155946 (n + 1)

end A155946

/-! ## A155946.P6036954986983390839

`lt[A038387(n+1)-1, 2]`
-/

namespace A155946.P6036954986983390839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155946.P6036954986983390839

namespace A155946

/-- `lt[A038387(n+1)-1, 2]` -/
def P6036954986983390839.Spec : Prop :=
  ∀ n, (P6036954986983390839.a n : ℤ) = A155946 (n + 1)

end A155946

/-! ## A155946.P2707427156860950480

`lt[A306257(2*(n+1)), 1]`
-/

namespace A155946.P2707427156860950480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A155946.P2707427156860950480

namespace A155946

/-- `lt[A306257(2*(n+1)), 1]` -/
def P2707427156860950480.Spec : Prop :=
  ∀ n, (P2707427156860950480.a n : ℤ) = A155946 (n + 1)

end A155946

/-!
# A155948: A triangle of polynomial coefficients: q(x,n)=(-1)^(n + 1)*(x - 1)^(3*n + 1)*Sum[(Binomial[m, n]* Binomial[m + 1, n + 1]/(m - n + 1))*(2*m + 1)^n*x^ m, {m, 0, Infinity}]/(x^n); p(x,n)=q(x,n)+x^n*q(1/x,n).

The programs for A155948, there is no canonical definition to state claims against.
-/

/-! ## A155948.P11513592456538798188

`A380383(A092266(n))`
-/

namespace A155948.P11513592456538798188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380383 (A092266 n).toNat

end

end A155948.P11513592456538798188

/-!
# A155952: A triangle of polynomial coefficients: q(x,n)=-((x - 1)^(2*n + 1)/x^n)*Sum[(2*k + n)^n*Binomial[k, n]*x^k, {k, 0, Infinity}]; p(x,n)=q(x,n)+x^n*q(1/x,n).

The programs for A155952, there is no canonical definition to state claims against.
-/

/-! ## A155952.P8987324899561283443

`A186970(A186999(n))*A186988(n+2)`
-/

namespace A155952.P8987324899561283443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186970 (A186999 n).toNat * A186988 (n + 2)

end

end A155952.P8987324899561283443

/-! ## A155952.P17566907788606492243

`A233583(A079886(n+1)^A274616(n))`
-/

namespace A155952.P17566907788606492243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway ((A079886 (n + 1) : ℚ) ^ (A274616 n : ℤ))).toNat

end

end A155952.P17566907788606492243

/-!
# A155953: Emirps of the form k^2 + k + 41.

The programs for A155953, there is no canonical definition to state claims against.
-/

/-! ## A155953.P8653638214689909869

`∩[A006567(n+1), A202018(n)]`
-/

namespace A155953.P8653638214689909869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155953.P8653638214689909869

/-! ## A155953.P13898039364540426842

`∩[A005846(n+1), A006567(n+1)]`
-/

namespace A155953.P13898039364540426842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155953.P13898039364540426842

/-! ## A155953.P3060618726362394040

`∩[A000040(A156793(n+1)), A202018(n)]`
-/

namespace A155953.P3060618726362394040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155953.P3060618726362394040

/-! ## A155953.P8804280419145669387

`∩[A005846(n+1), A068893(n+1)]`
-/

namespace A155953.P8804280419145669387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155953.P8804280419145669387

/-! ## A155953.P4713174235927337806

`∩[A005846(n+1), A109019(n+1)]`
-/

namespace A155953.P4713174235927337806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155953.P4713174235927337806

/-!
# A155954: a(0)=2, a(1)=3, a(2)=5, a(n) = smallest prime greater than or equal to a(n-1) + a(n-2) + a(n-3).

The programs for A155954, there is no canonical definition to state claims against.
-/

/-! ## A155954.P8729707760591011467

`A005145(A002426(n)+A000975(n))`
-/

namespace A155954.P8729707760591011467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A002426 n + A000975 n).toNat

end

end A155954.P8729707760591011467

/-! ## A155954.P14269081952815301714

`A000040(A003059(floor((8/3)^n)))`
-/

namespace A155954.P14269081952815301714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003059 ⌊((8 : ℚ) / 3) ^ n⌋.toNat).toNat

end

end A155954.P14269081952815301714

/-! ## A155954.P4820454618407413627

`A115732(A149841(n))`
-/

namespace A155954.P4820454618407413627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (A149841 n).toNat

end

end A155954.P4820454618407413627

/-! ## A155954.P7885065809455284960

`A115732(A149842(n))`
-/

namespace A155954.P7885065809455284960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (A149842 n).toNat

end

end A155954.P7885065809455284960

/-! ## A155954.P13196019951314741705

`A389810(A134635(n))`
-/

namespace A155954.P13196019951314741705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389810 (A134635 n).toNat

end

end A155954.P13196019951314741705

/-!
# A155955: Triangle read by rows: T(n,k) = (k*n)^k, 0 <= k <= n.

The programs for A155955, the canonical program `A155955.P10520351887767050705` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155955 has offset 0).

The definition of A155955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)*row(n))^col(n)` (program `A155955.P10520351887767050705`, by `A155955.P10520351887767050705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155955.P10520351887767050705

`(col(n)*row(n))^col(n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155955

/-- `(col(n)*row(n))^col(n)` -/
def P10520351887767050705.Spec : Prop :=
  ∀ n, (P10520351887767050705.a n : ℤ) = A155955 n

theorem P10520351887767050705.correct : P10520351887767050705.Spec := by
  intro n
  simp only [A155955]

end A155955

/-! ## A155955.P16052155483025885799

`A079904(n)^A002262(n)`
-/

namespace A155955.P16052155483025885799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079904 n : ℚ) ^ (A002262 n : ℤ)

end

end A155955.P16052155483025885799

namespace A155955

/-- `A079904(n)^A002262(n)` -/
def P16052155483025885799.Spec : Prop :=
  ∀ n, P16052155483025885799.a n = (A155955 n : ℚ)

end A155955

/-! ## A155955.P11531992690939779696

`(A144204(n+1)+1)^A002262(n)`
-/

namespace A155955.P11531992690939779696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144204 (n + 1) + 1 : ℚ) ^ (A002262 n : ℤ)

end

end A155955.P11531992690939779696

namespace A155955

/-- `(A144204(n+1)+1)^A002262(n)` -/
def P11531992690939779696.Spec : Prop :=
  ∀ n, P11531992690939779696.a n = (A155955 n : ℚ)

theorem P11531992690939779696.correct : P11531992690939779696.Spec := by
  intro n
  simp only [A155955, Nat.add_sub_cancel, A155955.P11531992690939779696.a, A155955.P10520351887767050705.a, A002262, A002262.P17823619022233514403.a, A144204, A144204.P8638300400995235908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155955

/-! ## A155955.P10494847105365449089

`(A076110(n+1)-1)^A002262(n)`
-/

namespace A155955.P10494847105365449089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076110 (n + 1) - 1 : ℚ) ^ (A002262 n : ℤ)

end

end A155955.P10494847105365449089

namespace A155955

/-- `(A076110(n+1)-1)^A002262(n)` -/
def P10494847105365449089.Spec : Prop :=
  ∀ n, P10494847105365449089.a n = (A155955 n : ℚ)

theorem P10494847105365449089.correct : P10494847105365449089.Spec := by
  intro n
  simp only [A155955, Nat.add_sub_cancel, A155955.P10494847105365449089.a, A155955.P10520351887767050705.a, A002262, A002262.P17823619022233514403.a, A076110, A076110.P1795246513683719096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155955

/-! ## A155955.P16446568437069693186

`A000312(A002262(n))*A079901(n)`
-/

namespace A155955.P16446568437069693186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002262 n).toNat * A079901 n

end

end A155955.P16446568437069693186

namespace A155955

/-- `A000312(A002262(n))*A079901(n)` -/
def P16446568437069693186.Spec : Prop :=
  ∀ n, P16446568437069693186.a n = A155955 n

end A155955

/-! ## A155955.P8834008766021322022

`A091435(A061579(n))^A002262(n)`
-/

namespace A155955.P8834008766021322022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091435 (A061579 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A155955.P8834008766021322022

namespace A155955

/-- `A091435(A061579(n))^A002262(n)` -/
def P8834008766021322022.Spec : Prop :=
  ∀ n, P8834008766021322022.a n = (A155955 n : ℚ)

end A155955

/-! ## A155955.P7594634873289470521

`A004247(A245300(n))^A002262(n)`
-/

namespace A155955.P7594634873289470521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004247 (A245300 n).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A155955.P7594634873289470521

namespace A155955

/-- `A004247(A245300(n))^A002262(n)` -/
def P7594634873289470521.Spec : Prop :=
  ∀ n, P7594634873289470521.a n = (A155955 n : ℚ)

end A155955

/-! ## A155955.P5679453214362470785

`(A002262(n)*A003056(n))^A002262(n)`
-/

namespace A155955.P5679453214362470785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n * A003056 n : ℚ) ^ (A002262 n : ℤ)

end

end A155955.P5679453214362470785

namespace A155955

/-- `(A002262(n)*A003056(n))^A002262(n)` -/
def P5679453214362470785.Spec : Prop :=
  ∀ n, P5679453214362470785.a n = (A155955 n : ℚ)

end A155955

/-! ## A155955.P12540019475332277979

`A079904(n)^A001222(A059268(n))`
-/

namespace A155955.P12540019475332277979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079904 n : ℚ) ^ (A001222 (A059268 n).toNat : ℤ)

end

end A155955.P12540019475332277979

namespace A155955

/-- `A079904(n)^A001222(A059268(n))` -/
def P12540019475332277979.Spec : Prop :=
  ∀ n, P12540019475332277979.a n = (A155955 n : ℚ)

end A155955

/-! ## A155955.P5946339291411026307

`A079904(n)^A004896(A002260(n+1))`
-/

namespace A155955.P5946339291411026307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079904 n : ℚ) ^ (A004896 (A002260 (n + 1)).toNat : ℤ)

end

end A155955.P5946339291411026307

namespace A155955

/-- `A079904(n)^A004896(A002260(n+1))` -/
def P5946339291411026307.Spec : Prop :=
  ∀ n, P5946339291411026307.a n = (A155955 n : ℚ)

end A155955

/-!
# A155957: a(n) = (2*n^2)^n.

The programs for A155957, the canonical program `A155957.P11849820860414726955` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155957 has offset 0).

The definition of A155957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n²)^n` (program `A155957.P11849820860414726955`, by `A155957.P11849820860414726955.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155957.P11849820860414726955

`(2*n²)^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155957

/-- `(2*n²)^n` -/
def P11849820860414726955.Spec : Prop :=
  ∀ n, (P11849820860414726955.a n : ℤ) = A155957 n

theorem P11849820860414726955.correct : P11849820860414726955.Spec := by
  intro n
  simp only [A155957]

end A155957

/-! ## A155957.P2572364923341409094

`A062206(n)*A000079(n)`
-/

namespace A155957.P2572364923341409094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062206 n * A000079 n

end

end A155957.P2572364923341409094

namespace A155957

/-- `A062206(n)*A000079(n)` -/
def P2572364923341409094.Spec : Prop :=
  ∀ n, P2572364923341409094.a n = A155957 n

theorem P2572364923341409094.correct : P2572364923341409094.Spec := by
  intro n
  simp only [A155957, Nat.add_sub_cancel, A155957.P2572364923341409094.a, A155957.P11849820860414726955.a, A000079, A000079.P10855139691139572931.a, A062206, A062206.P5453830458880387527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155957

/-! ## A155957.P345578853007592518

`record[(-(n/sqrt(2)))^n]`
-/

namespace A155957.P345578853007592518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-((n : ℝ) / Real.sqrt (2 : ℝ))) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155957.P345578853007592518

namespace A155957

/-- `record[(-(n/sqrt(2)))^n]` -/
def P345578853007592518.Spec : Prop :=
  ∀ n, P345578853007592518.a n = (A155957 n : ℝ)

end A155957

/-! ## A155957.P15021009897785686702

`((n/cos(atan(1)))^n)²`
-/

namespace A155957.P15021009897785686702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) / Real.cos (Real.arctan (1 : ℝ))) ^ n) ^ 2

end

end A155957.P15021009897785686702

namespace A155957

/-- `((n/cos(atan(1)))^n)²` -/
def P15021009897785686702.Spec : Prop :=
  ∀ n, P15021009897785686702.a n = (A155957 n : ℝ)

end A155957

/-! ## A155957.P6214866202906560369

`((n/sin(atan(1)))^n)²`
-/

namespace A155957.P6214866202906560369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) / Real.sin (Real.arctan (1 : ℝ))) ^ n) ^ 2

end

end A155957.P6214866202906560369

namespace A155957

/-- `((n/sin(atan(1)))^n)²` -/
def P6214866202906560369.Spec : Prop :=
  ∀ n, P6214866202906560369.a n = (A155957 n : ℝ)

end A155957

/-!
# A155965: a(n) = n*(n^2+4).

The programs for A155965, the canonical program `A155965.P4744673239626898850` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155965 has offset 0).

The definition of A155965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+4)` (program `A155965.P4744673239626898850`, by `A155965.P4744673239626898850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155965.P4744673239626898850

`n*(n²+4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155965

/-- `n*(n²+4)` -/
def P4744673239626898850.Spec : Prop :=
  ∀ n, (P4744673239626898850.a n : ℤ) = A155965 n

theorem P4744673239626898850.correct : P4744673239626898850.Spec := by
  intro n
  simp only [A155965]

end A155965

/-! ## A155965.P2540007086768776599

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=16, a(3)=39`
-/

namespace A155965.P2540007086768776599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 16, 39] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A155965.P2540007086768776599

namespace A155965

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2540007086768776599.Spec : Prop :=
  ∀ n, P2540007086768776599.a n = A155965 n

theorem P2540007086768776599.correct : P2540007086768776599.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A155965, Nat.add_sub_cancel, A155965.P2540007086768776599.a, A155965.P4744673239626898850.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A155965, Nat.add_sub_cancel, A155965.P2540007086768776599.a, A155965.P4744673239626898850.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155965

/-! ## A155965.P15670632925930514520

`Δ[(C(n, 2)+2)²]`
-/

namespace A155965.P15670632925930514520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A155965.P15670632925930514520

namespace A155965

/-- `Δ[(C(n, 2)+2)²]` -/
def P15670632925930514520.Spec : Prop :=
  ∀ n, P15670632925930514520.a n = A155965 n

theorem P15670632925930514520.correct : P15670632925930514520.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P15670632925930514520.f1, A155965.P15670632925930514520.a, A155965.P4744673239626898850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P8704922017923040742

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A155965.P8704922017923040742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155965.P8704922017923040742

namespace A155965

/-- `∑[∑[a(n-1)+6]]` -/
def P8704922017923040742.Spec : Prop :=
  ∀ n, (P8704922017923040742.a n : ℤ) = A155965 n

end A155965

/-! ## A155965.P15493475970765529980

`Δ[(lcm(n, n-1)/2+2)²]`
-/

namespace A155965.P15493475970765529980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2 + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155965.P15493475970765529980

namespace A155965

/-- `Δ[(lcm(n, n-1)/2+2)²]` -/
def P15493475970765529980.Spec : Prop :=
  ∀ n, P15493475970765529980.a n = (A155965 n : ℚ)

end A155965

/-! ## A155965.P13054976152357674800

`∑[∑[ogf((5x-4x^2+5x^3)/(1-2x+x^2))]]`
-/

namespace A155965.P13054976152357674800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -4, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155965.P13054976152357674800

namespace A155965

/-- `∑[∑[ogf((5x-4x^2+5x^3)/(1-2x+x^2))]]` -/
def P13054976152357674800.Spec : Prop :=
  ∀ n, P13054976152357674800.a n = A155965 n

end A155965

/-! ## A155965.P10729242758294895540

`2*Δ[C(C(n, 2)+2, 2)]+n`
-/

namespace A155965.P10729242758294895540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A155965.P10729242758294895540

namespace A155965

/-- `2*Δ[C(C(n, 2)+2, 2)]+n` -/
def P10729242758294895540.Spec : Prop :=
  ∀ n, P10729242758294895540.a n = A155965 n

end A155965

/-! ## A155965.P17452583490946165702

`floor(n*(5-∑[a(n-1)-2]))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A155965.P17452583490946165702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (5 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155965.P17452583490946165702

namespace A155965

/-- `floor(n*(5-∑[a(n-1)-2]))` -/
def P17452583490946165702.Spec : Prop :=
  ∀ n, P17452583490946165702.a n = A155965 n

end A155965

/-! ## A155965.P8554149446688964479

`Δ[(n-2-C(2*n-(n-1), 2))²]`
-/

namespace A155965.P8554149446688964479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 - (Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155965.P8554149446688964479

namespace A155965

/-- `Δ[(n-2-C(2*n-(n-1), 2))²]` -/
def P8554149446688964479.Spec : Prop :=
  ∀ n, P8554149446688964479.a n = A155965 n

end A155965

/-! ## A155965.P350251286444854467

`A005491(n)-1+n`
-/

namespace A155965.P350251286444854467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 n - 1 + (n : ℤ)

end

end A155965.P350251286444854467

namespace A155965

/-- `A005491(n)-1+n` -/
def P350251286444854467.Spec : Prop :=
  ∀ n, P350251286444854467.a n = A155965 n

theorem P350251286444854467.correct : P350251286444854467.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P350251286444854467.a, A155965.P4744673239626898850.a, A005491, A005491.P208303026648680842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P6344019336810524893

`A054602(n)+2*n`
-/

namespace A155965.P6344019336810524893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n + (2 * n : ℤ)

end

end A155965.P6344019336810524893

namespace A155965

/-- `A054602(n)+2*n` -/
def P6344019336810524893.Spec : Prop :=
  ∀ n, P6344019336810524893.a n = A155965 n

theorem P6344019336810524893.correct : P6344019336810524893.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P6344019336810524893.a, A155965.P4744673239626898850.a, A054602, A054602.P284734914928046851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P5282148804743385445

`2*A229183(n)+n`
-/

namespace A155965.P5282148804743385445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229183 n + (n : ℤ)

end

end A155965.P5282148804743385445

namespace A155965

/-- `2*A229183(n)+n` -/
def P5282148804743385445.Spec : Prop :=
  ∀ n, P5282148804743385445.a n = A155965 n

end A155965

/-! ## A155965.P217903810033472674

`A034262(n)+3*n`
-/

namespace A155965.P217903810033472674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n + (3 * n : ℤ)

end

end A155965.P217903810033472674

namespace A155965

/-- `A034262(n)+3*n` -/
def P217903810033472674.Spec : Prop :=
  ∀ n, P217903810033472674.a n = A155965 n

theorem P217903810033472674.correct : P217903810033472674.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P217903810033472674.a, A155965.P4744673239626898850.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P11790259159809264535

`4*n+A000578(n)`
-/

namespace A155965.P11790259159809264535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A000578 n

end

end A155965.P11790259159809264535

namespace A155965

/-- `4*n+A000578(n)` -/
def P11790259159809264535.Spec : Prop :=
  ∀ n, P11790259159809264535.a n = A155965 n

theorem P11790259159809264535.correct : P11790259159809264535.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P11790259159809264535.a, A155965.P4744673239626898850.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P8242181883735895138

`3*A033547(n)-n`
-/

namespace A155965.P8242181883735895138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033547 n - (n : ℤ)

end

end A155965.P8242181883735895138

namespace A155965

/-- `3*A033547(n)-n` -/
def P8242181883735895138.Spec : Prop :=
  ∀ n, P8242181883735895138.a n = A155965 n

end A155965

/-! ## A155965.P9765460567939692473

`n*A155966(n)/2`
-/

namespace A155965.P9765460567939692473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A155966 n : ℚ) / 2

end

end A155965.P9765460567939692473

namespace A155965

/-- `n*A155966(n)/2` -/
def P9765460567939692473.Spec : Prop :=
  ∀ n, P9765460567939692473.a n = (A155965 n : ℚ)

theorem P9765460567939692473.correct : P9765460567939692473.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P9765460567939692473.a, A155965.P4744673239626898850.a, A155966, A155966.P536139070605951251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P10248221803424644969

`A008586(n)+n^3`
-/

namespace A155965.P10248221803424644969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (n ^ 3 : ℤ)

end

end A155965.P10248221803424644969

namespace A155965

/-- `A008586(n)+n^3` -/
def P10248221803424644969.Spec : Prop :=
  ∀ n, P10248221803424644969.a n = A155965 n

theorem P10248221803424644969.correct : P10248221803424644969.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P10248221803424644969.a, A155965.P4744673239626898850.a, A008586, A008586.P15642444062404201100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P2340984500157646907

`Δ[(A161680(n)+2)²]`
-/

namespace A155965.P2340984500157646907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155965.P2340984500157646907

namespace A155965

/-- `Δ[(A161680(n)+2)²]` -/
def P2340984500157646907.Spec : Prop :=
  ∀ n, P2340984500157646907.a n = A155965 n

theorem P2340984500157646907.correct : P2340984500157646907.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P2340984500157646907.f1, A155965.P2340984500157646907.a, A155965.P4744673239626898850.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P3169658622758813310

`Δ[(3-A080956(n))²]`
-/

namespace A155965.P3169658622758813310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A080956 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155965.P3169658622758813310

namespace A155965

/-- `Δ[(3-A080956(n))²]` -/
def P3169658622758813310.Spec : Prop :=
  ∀ n, P3169658622758813310.a n = A155965 n

theorem P3169658622758813310.correct : P3169658622758813310.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P3169658622758813310.f1, A155965.P3169658622758813310.a, A155965.P4744673239626898850.a, A080956, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155965

/-! ## A155965.P572954196950122639

`n*A117950(n)+n`
-/

namespace A155965.P572954196950122639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117950 n + (n : ℤ)

end

end A155965.P572954196950122639

namespace A155965

/-- `n*A117950(n)+n` -/
def P572954196950122639.Spec : Prop :=
  ∀ n, P572954196950122639.a n = A155965 n

theorem P572954196950122639.correct : P572954196950122639.Spec := by
  intro n
  simp only [A155965, Nat.add_sub_cancel, A155965.P572954196950122639.a, A155965.P4744673239626898850.a, A117950, A117950.P14722515508371885867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155965

/-!
# A155966: a(n) = 2*n^2 + 8.

The programs for A155966, the canonical program `A155966.P536139070605951251` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155966 has offset 0).

The definition of A155966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+8` (program `A155966.P536139070605951251`, by `A155966.P536139070605951251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155966.P536139070605951251

`2*n²+8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155966

/-- `2*n²+8` -/
def P536139070605951251.Spec : Prop :=
  ∀ n, (P536139070605951251.a n : ℤ) = A155966 n

theorem P536139070605951251.correct : P536139070605951251.Spec := by
  intro n
  simp only [A155966]

end A155966

/-! ## A155966.P15768150513398004056

`2*A087475(n)`
-/

namespace A155966.P15768150513398004056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087475 n

end

end A155966.P15768150513398004056

namespace A155966

/-- `2*A087475(n)` -/
def P15768150513398004056.Spec : Prop :=
  ∀ n, P15768150513398004056.a n = A155966 n

theorem P15768150513398004056.correct : P15768150513398004056.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P15768150513398004056.a, A155966.P536139070605951251.a, A087475, A087475.P4372105407425732933.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P9309586525341599283

`∑[a(n-1)+4]` with `a(0)=8, a(1)=2`
-/

namespace A155966.P9309586525341599283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155966.P9309586525341599283

namespace A155966

/-- `∑[a(n-1)+4]` -/
def P9309586525341599283.Spec : Prop :=
  ∀ n, (P9309586525341599283.a n : ℤ) = A155966 n

end A155966

/-! ## A155966.P1579555851258957681

`lcm(2, n*2*n+8)`
-/

namespace A155966.P1579555851258957681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (2 * n) + 8)

end

end A155966.P1579555851258957681

namespace A155966

/-- `lcm(2, n*2*n+8)` -/
def P1579555851258957681.Spec : Prop :=
  ∀ n, (P1579555851258957681.a n : ℤ) = A155966 n

end A155966

/-! ## A155966.P5295983151447464125

`∑{d}[-a(n-1), (n+3-#)²]` with `a(0)=5`
-/

namespace A155966.P5295983151447464125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 3 : ℤ) - (d : ℤ)) ^ 2

end

end A155966.P5295983151447464125

namespace A155966

/-- `∑{d}[-a(n-1), (n+3-#)²]` -/
def P5295983151447464125.Spec : Prop :=
  ∀ n, P5295983151447464125.a n = A155966 n

end A155966

/-! ## A155966.P6369312066718796199

`2*(A117950(n)+1)`
-/

namespace A155966.P6369312066718796199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117950 n + 1)

end

end A155966.P6369312066718796199

namespace A155966

/-- `2*(A117950(n)+1)` -/
def P6369312066718796199.Spec : Prop :=
  ∀ n, P6369312066718796199.a n = A155966 n

theorem P6369312066718796199.correct : P6369312066718796199.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P6369312066718796199.a, A155966.P536139070605951251.a, A117950, A117950.P14722515508371885867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P14638091695548855432

`2*(A059100(n)+2)`
-/

namespace A155966.P14638091695548855432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059100 n + 2)

end

end A155966.P14638091695548855432

namespace A155966

/-- `2*(A059100(n)+2)` -/
def P14638091695548855432.Spec : Prop :=
  ∀ n, P14638091695548855432.a n = A155966 n

theorem P14638091695548855432.correct : P14638091695548855432.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P14638091695548855432.a, A155966.P536139070605951251.a, A059100, A059100.P4969484960020007252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P8696845854624698298

`2*(A117951(n)-1)`
-/

namespace A155966.P8696845854624698298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117951 n - 1)

end

end A155966.P8696845854624698298

namespace A155966

/-- `2*(A117951(n)-1)` -/
def P8696845854624698298.Spec : Prop :=
  ∀ n, P8696845854624698298.a n = A155966 n

theorem P8696845854624698298.correct : P8696845854624698298.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P8696845854624698298.a, A155966.P536139070605951251.a, A117951, A117951.P4672434833455775897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P16531658839339761183

`2*(A002522(n)+3)`
-/

namespace A155966.P16531658839339761183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002522 n + 3)

end

end A155966.P16531658839339761183

namespace A155966

/-- `2*(A002522(n)+3)` -/
def P16531658839339761183.Spec : Prop :=
  ∀ n, P16531658839339761183.a n = A155966 n

theorem P16531658839339761183.correct : P16531658839339761183.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P16531658839339761183.a, A155966.P536139070605951251.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P17132865855025868628

`2*(A114949(n)-2)`
-/

namespace A155966.P17132865855025868628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A114949 n - 2)

end

end A155966.P17132865855025868628

namespace A155966

/-- `2*(A114949(n)-2)` -/
def P17132865855025868628.Spec : Prop :=
  ∀ n, P17132865855025868628.a n = A155966 n

theorem P17132865855025868628.correct : P17132865855025868628.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P17132865855025868628.a, A155966.P536139070605951251.a, A114949, A114949.P2861877640951518410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P4252251083446224344

`2*(A000290(n)+4)`
-/

namespace A155966.P4252251083446224344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000290 n + 4)

end

end A155966.P4252251083446224344

namespace A155966

/-- `2*(A000290(n)+4)` -/
def P4252251083446224344.Spec : Prop :=
  ∀ n, P4252251083446224344.a n = A155966 n

theorem P4252251083446224344.correct : P4252251083446224344.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P4252251083446224344.a, A155966.P536139070605951251.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P6360043494248307547

`(A304161(n+1)+2)/(n+1)`
-/

namespace A155966.P6360043494248307547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304161 (n + 1) + 2 : ℚ) / (n + 1 : ℚ)

end

end A155966.P6360043494248307547

namespace A155966

/-- `(A304161(n+1)+2)/(n+1)` -/
def P6360043494248307547.Spec : Prop :=
  ∀ n, P6360043494248307547.a n = (A155966 n : ℚ)

theorem P6360043494248307547.correct : P6360043494248307547.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P6360043494248307547.a, A155966.P536139070605951251.a, A304161, A304161.P5729332154079171390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P10731367981170089628

`and(A255842(n), A339048(n))`
-/

namespace A155966.P10731367981170089628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255842 n) (A339048 n)

end

end A155966.P10731367981170089628

namespace A155966

/-- `and(A255842(n), A339048(n))` -/
def P10731367981170089628.Spec : Prop :=
  ∀ n, P10731367981170089628.a n = A155966 n

end A155966

/-! ## A155966.P16725126984451929240

`xor(A010696(n), A255845(n))`
-/

namespace A155966.P16725126984451929240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010696 n) (A255845 n)

end

end A155966.P16725126984451929240

namespace A155966

/-- `xor(A010696(n), A255845(n))` -/
def P16725126984451929240.Spec : Prop :=
  ∀ n, P16725126984451929240.a n = A155966 n

end A155966

/-! ## A155966.P13878473204904731545

`A040015(n+2)*A261327(n)`
-/

namespace A155966.P13878473204904731545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 (n + 2) * A261327 n

end

end A155966.P13878473204904731545

namespace A155966

/-- `A040015(n+2)*A261327(n)` -/
def P13878473204904731545.Spec : Prop :=
  ∀ n, P13878473204904731545.a n = A155966 n

end A155966

/-! ## A155966.P15962708043225179519

`A010698(n+1)*A261327(n)`
-/

namespace A155966.P15962708043225179519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 (n + 1) * A261327 n

end

end A155966.P15962708043225179519

namespace A155966

/-- `A010698(n+1)*A261327(n)` -/
def P15962708043225179519.Spec : Prop :=
  ∀ n, P15962708043225179519.a n = A155966 n

end A155966

/-! ## A155966.P15896910985860520668

`A241751(2*n)/2`
-/

namespace A155966.P15896910985860520668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241751 (2 * n) : ℚ) / 2

end

end A155966.P15896910985860520668

namespace A155966

/-- `A241751(2*n)/2` -/
def P15896910985860520668.Spec : Prop :=
  ∀ n, P15896910985860520668.a n = (A155966 n : ℚ)

theorem P15896910985860520668.correct : P15896910985860520668.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P15896910985860520668.a, A155966.P536139070605951251.a, A241751, A241751.P7792988430586457364.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P4434216853544817020

`A020744(n²)`
-/

namespace A155966.P4434216853544817020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 (n ^ 2)

end

end A155966.P4434216853544817020

namespace A155966

/-- `A020744(n²)` -/
def P4434216853544817020.Spec : Prop :=
  ∀ n, P4434216853544817020.a n = A155966 n

end A155966

/-! ## A155966.P1563235939511253701

`A020739(n²+1)`
-/

namespace A155966.P1563235939511253701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (n ^ 2 + 1)

end

end A155966.P1563235939511253701

namespace A155966

/-- `A020739(n²+1)` -/
def P1563235939511253701.Spec : Prop :=
  ∀ n, P1563235939511253701.a n = A155966 n

theorem P1563235939511253701.correct : P1563235939511253701.Spec := by
  intro n
  simp only [A155966, Nat.add_sub_cancel, A155966.P1563235939511253701.a, A155966.P536139070605951251.a, A020739, A020739.P2210282862978748125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155966

/-! ## A155966.P3717008590080619653

`A026491(n²+3)`
-/

namespace A155966.P3717008590080619653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (n ^ 2 + 3)

end

end A155966.P3717008590080619653

namespace A155966

/-- `A026491(n²+3)` -/
def P3717008590080619653.Spec : Prop :=
  ∀ n, P3717008590080619653.a n = A155966 n

end A155966

/-!
# A155967: Binary transpose primes. Integers of k^2 bits which, when written row by row as a square matrix and then read column by column, are primes once transformed.

The programs for A155967, there is no canonical definition to state claims against.
-/

/-! ## A155967.P10161830472072236964

`A019336(∑[A019259(n+3)!])`
-/

namespace A155967.P10161830472072236964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A019259 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019336 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155967.P10161830472072236964

/-!
# A155971: Genlex listings of (s,t)-combination strings possessing the revolving-door property.

The programs for A155971, there is no canonical definition to state claims against.
-/

/-! ## A155971.P16073294387347122639

`A052347(A086629(n))`
-/

namespace A155971.P16073294387347122639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052347 (A086629 n).toNat

end

end A155971.P16073294387347122639

/-! ## A155971.P10026355295048656683

`A120680(A111636(n))`
-/

namespace A155971.P10026355295048656683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120680 (A111636 n).toNat

end

end A155971.P10026355295048656683

/-! ## A155971.P8596858919463443444

`A088370(A173884(n))`
-/

namespace A155971.P8596858919463443444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088370 (A173884 n).toNat

end

end A155971.P8596858919463443444

/-! ## A155971.P16981275677759831572

`A003002(A259471(n))`
-/

namespace A155971.P16981275677759831572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A259471 n).toNat

end

end A155971.P16981275677759831572

/-! ## A155971.P8150595721271835702

`A175469(A174526(n))`
-/

namespace A155971.P8150595721271835702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175469 (A174526 n).toNat

end

end A155971.P8150595721271835702

/-!
# A155972: The Partition Ruler.

The programs for A155972, there is no canonical definition to state claims against.
-/

/-! ## A155972.P16293395085538995346

`char[∑[floor(C(n, 3)/4)+n]]`
-/

namespace A155972.P16293395085538995346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 3 : ℚ) / 4⌋ + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A155972.P16293395085538995346

/-! ## A155972.P1048256313548934598

`Δ[A036042(n)]`
-/

namespace A155972.P1048256313548934598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155972.P1048256313548934598

/-! ## A155972.P3830933960755403645

`A069123(n)%2`
-/

namespace A155972.P3830933960755403645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069123 n) 2

end

end A155972.P3830933960755403645

/-! ## A155972.P6138569454826632720

`A130561(n)%2`
-/

namespace A155972.P6138569454826632720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130561 n) 2

end

end A155972.P6138569454826632720

/-! ## A155972.P713258127215738133

`A134133(n)%2`
-/

namespace A155972.P713258127215738133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134133 n) 2

end

end A155972.P713258127215738133

/-! ## A155972.P15476914448472084064

`A179863(n)%2`
-/

namespace A155972.P15476914448472084064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179863 n) 2

end

end A155972.P15476914448472084064

/-! ## A155972.P15448723219506535593

`A238962(n)%2`
-/

namespace A155972.P15448723219506535593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238962 n) 2

end

end A155972.P15448723219506535593

/-! ## A155972.P4654737542378856246

`A238975(n)%2`
-/

namespace A155972.P4654737542378856246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238975 n) 2

end

end A155972.P4654737542378856246

/-! ## A155972.P871827102615329601

`A062515(n)%5`
-/

namespace A155972.P871827102615329601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062515 n) 5

end

end A155972.P871827102615329601

/-! ## A155972.P9161646001507248623

`floor(1/A035206(n))`
-/

namespace A155972.P9161646001507248623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A035206 n : ℚ)⌋

end

end A155972.P9161646001507248623

/-!
# A155974: Partial sums of A053872.

The programs for A155974, the canonical program `A155974.P127828562690333382` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155974 has offset 1).

The definition of A155974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155974.P127828562690333382

`∑[A053872(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A155974

/-- `∑[A053872(n+1)]` -/
def P127828562690333382.Spec : Prop :=
  ∀ n, P127828562690333382.a n = A155974 (n + 1)

theorem P127828562690333382.correct : P127828562690333382.Spec := by
  intro n
  simp only [A155974, Nat.add_sub_cancel]

end A155974

/-! ## A155974.P16863013787091390309

`∑[record[A053872(A291766(n))]]`
-/

namespace A155974.P16863013787091390309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053872 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P16863013787091390309

namespace A155974

/-- `∑[record[A053872(A291766(n))]]` -/
def P16863013787091390309.Spec : Prop :=
  ∀ n, P16863013787091390309.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P10419851285727464278

`∑[record[A053872(A133310(n))]]`
-/

namespace A155974.P10419851285727464278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053872 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P10419851285727464278

namespace A155974

/-- `∑[record[A053872(A133310(n))]]` -/
def P10419851285727464278.Spec : Prop :=
  ∀ n, P10419851285727464278.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P14474513114398773357

`∑[record[A053872(A126759(n))]]`
-/

namespace A155974.P14474513114398773357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053872 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P14474513114398773357

namespace A155974

/-- `∑[record[A053872(A126759(n))]]` -/
def P14474513114398773357.Spec : Prop :=
  ∀ n, P14474513114398773357.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P4985847798355057548

`∑[record[A053872(A117910(n))]]`
-/

namespace A155974.P4985847798355057548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053872 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P4985847798355057548

namespace A155974

/-- `∑[record[A053872(A117910(n))]]` -/
def P4985847798355057548.Spec : Prop :=
  ∀ n, P4985847798355057548.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P18312818485037943570

`∑[record[A053872(A141256(n))]]`
-/

namespace A155974.P18312818485037943570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053872 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P18312818485037943570

namespace A155974

/-- `∑[record[A053872(A141256(n))]]` -/
def P18312818485037943570.Spec : Prop :=
  ∀ n, P18312818485037943570.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P9014581830723182807

`∑[A053767(A053782(n+1))]`
-/

namespace A155974.P9014581830723182807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A053782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P9014581830723182807

namespace A155974

/-- `∑[A053767(A053782(n+1))]` -/
def P9014581830723182807.Spec : Prop :=
  ∀ n, P9014581830723182807.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P1431054702878519188

`∑[p?[A053767(n)]]`
-/

namespace A155974.P1431054702878519188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P1431054702878519188

namespace A155974

/-- `∑[p?[A053767(n)]]` -/
def P1431054702878519188.Spec : Prop :=
  ∀ n, P1431054702878519188.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P10041710019706819061

`∑[p?[A051349(n)-1]]`
-/

namespace A155974.P10041710019706819061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P10041710019706819061

namespace A155974

/-- `∑[p?[A051349(n)-1]]` -/
def P10041710019706819061.Spec : Prop :=
  ∀ n, P10041710019706819061.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P12002191616242243074

`∑[p?[∑[A002808(n+1)]]]`
-/

namespace A155974.P12002191616242243074
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P12002191616242243074

namespace A155974

/-- `∑[p?[∑[A002808(n+1)]]]` -/
def P12002191616242243074.Spec : Prop :=
  ∀ n, P12002191616242243074.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P1278322983697283570

`∑[p?[∑[A018252(n+2)]]]`
-/

namespace A155974.P1278322983697283570
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P1278322983697283570

namespace A155974

/-- `∑[p?[∑[A018252(n+2)]]]` -/
def P1278322983697283570.Spec : Prop :=
  ∀ n, P1278322983697283570.a n = A155974 (n + 1)

end A155974

/-! ## A155974.P1942926493867813019

`∑[p?[∑[comp[A006530(n+1)]]]]`
-/

namespace A155974.P1942926493867813019
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P1942926493867813019

namespace A155974

/-- `∑[p?[∑[comp[A006530(n+1)]]]]` -/
def P1942926493867813019.Spec : Prop :=
  ∀ n, (P1942926493867813019.a n : ℤ) = A155974 (n + 1)

end A155974

/-! ## A155974.P6915590298724926556

`∑[p?[∑[comp[A014963(n+1)]]]]`
-/

namespace A155974.P6915590298724926556
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P6915590298724926556

namespace A155974

/-- `∑[p?[∑[comp[A014963(n+1)]]]]` -/
def P6915590298724926556.Spec : Prop :=
  ∀ n, (P6915590298724926556.a n : ℤ) = A155974 (n + 1)

end A155974

/-! ## A155974.P2893292970823431325

`∑[p?[∑[comp[A020639(n+1)]]]]`
-/

namespace A155974.P2893292970823431325
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155974.P2893292970823431325

namespace A155974

/-- `∑[p?[∑[comp[A020639(n+1)]]]]` -/
def P2893292970823431325.Spec : Prop :=
  ∀ n, (P2893292970823431325.a n : ℤ) = A155974 (n + 1)

end A155974

/-!
# A155977: a(n) = n^5 + n^3.

The programs for A155977, the canonical program `A155977.P18222476826860172301` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155977 has offset 0).

The definition of A155977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n^3` (program `A155977.P18222476826860172301`, by `A155977.P18222476826860172301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155977.P18222476826860172301

`n^5+n^3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155977

/-- `n^5+n^3` -/
def P18222476826860172301.Spec : Prop :=
  ∀ n, (P18222476826860172301.a n : ℤ) = A155977 n

theorem P18222476826860172301.correct : P18222476826860172301.Spec := by
  intro n
  simp only [A155977]

end A155977

/-! ## A155977.P15964024886657364470

`2*A168178(n)`
-/

namespace A155977.P15964024886657364470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168178 n

end

end A155977.P15964024886657364470

namespace A155977

/-- `2*A168178(n)` -/
def P15964024886657364470.Spec : Prop :=
  ∀ n, P15964024886657364470.a n = A155977 n

theorem P15964024886657364470.correct : P15964024886657364470.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P15964024886657364470.a, A155977.P18222476826860172301.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P15603102773944160148

`A000578(n)*A002522(n)`
-/

namespace A155977.P15603102773944160148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A002522 n

end

end A155977.P15603102773944160148

namespace A155977

/-- `A000578(n)*A002522(n)` -/
def P15603102773944160148.Spec : Prop :=
  ∀ n, P15603102773944160148.a n = A155977 n

theorem P15603102773944160148.correct : P15603102773944160148.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P15603102773944160148.a, A155977.P18222476826860172301.a, A000578, A000578.P12162961755414704816.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P13885198061659261026

`n^3/cos(atan(n))²`
-/

namespace A155977.P13885198061659261026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A155977.P13885198061659261026

namespace A155977

/-- `n^3/cos(atan(n))²` -/
def P13885198061659261026.Spec : Prop :=
  ∀ n, P13885198061659261026.a n = (A155977 n : ℝ)

end A155977

/-! ## A155977.P2232248227345754401

`n^3/sin(acot(n))²`
-/

namespace A155977.P2232248227345754401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A155977.P2232248227345754401

namespace A155977

/-- `n^3/sin(acot(n))²` -/
def P2232248227345754401.Spec : Prop :=
  ∀ n, P2232248227345754401.a n = (A155977 n : ℝ)

end A155977

/-! ## A155977.P260967994073796304

`n*lcm(n²+1, n²)`
-/

namespace A155977.P260967994073796304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lcm (n ^ 2 + 1) (n ^ 2)

end

end A155977.P260967994073796304

namespace A155977

/-- `n*lcm(n²+1, n²)` -/
def P260967994073796304.Spec : Prop :=
  ∀ n, (P260967994073796304.a n : ℤ) = A155977 n

end A155977

/-! ## A155977.P1792970033026533283

`2*n*C(n²+1, 2)`
-/

namespace A155977.P1792970033026533283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.choose (n ^ 2 + 1) 2)

end

end A155977.P1792970033026533283

namespace A155977

/-- `2*n*C(n²+1, 2)` -/
def P1792970033026533283.Spec : Prop :=
  ∀ n, (P1792970033026533283.a n : ℤ) = A155977 n

theorem P1792970033026533283.correct : P1792970033026533283.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P1792970033026533283.a, A155977.P18222476826860172301.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P9161413468990900676

`lcm(∑[2*n]-(n-1), n^3)`
-/

namespace A155977.P9161413468990900676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)) (n ^ 3 : ℤ)

end

end A155977.P9161413468990900676

namespace A155977

/-- `lcm(∑[2*n]-(n-1), n^3)` -/
def P9161413468990900676.Spec : Prop :=
  ∀ n, (P9161413468990900676.a n : ℤ) = A155977 n

end A155977

/-! ## A155977.P6616534928956924742

`n²*∑[∑[ogf((2x+2x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A155977.P6616534928956924742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A155977.P6616534928956924742

namespace A155977

/-- `n²*∑[∑[ogf((2x+2x^2+2x^3)/(1-2x+x^2))]]` -/
def P6616534928956924742.Spec : Prop :=
  ∀ n, P6616534928956924742.a n = A155977 n

end A155977

/-! ## A155977.P15345259981129755092

`2*n*C(∑[2*n+1]-2*n, 2)`
-/

namespace A155977.P15345259981129755092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)).toNat 2

end

end A155977.P15345259981129755092

namespace A155977

/-- `2*n*C(∑[2*n+1]-2*n, 2)` -/
def P15345259981129755092.Spec : Prop :=
  ∀ n, (P15345259981129755092.a n : ℤ) = A155977 n

end A155977

/-! ## A155977.P11301472931035161563

`n*A071253(n)`
-/

namespace A155977.P11301472931035161563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071253 n

end

end A155977.P11301472931035161563

namespace A155977

/-- `n*A071253(n)` -/
def P11301472931035161563.Spec : Prop :=
  ∀ n, P11301472931035161563.a n = A155977 n

theorem P11301472931035161563.correct : P11301472931035161563.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P11301472931035161563.a, A155977.P18222476826860172301.a, A071253, A071253.P8759095852449772691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P15782444496716192337

`n²*A034262(n)`
-/

namespace A155977.P15782444496716192337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A034262 n

end

end A155977.P15782444496716192337

namespace A155977

/-- `n²*A034262(n)` -/
def P15782444496716192337.Spec : Prop :=
  ∀ n, P15782444496716192337.a n = A155977 n

theorem P15782444496716192337.correct : P15782444496716192337.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P15782444496716192337.a, A155977.P18222476826860172301.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P9636245969063122906

`n*(A059826(n)-1)`
-/

namespace A155977.P9636245969063122906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A059826 n - 1)

end

end A155977.P9636245969063122906

namespace A155977

/-- `n*(A059826(n)-1)` -/
def P9636245969063122906.Spec : Prop :=
  ∀ n, P9636245969063122906.a n = A155977 n

theorem P9636245969063122906.correct : P9636245969063122906.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P9636245969063122906.a, A155977.P18222476826860172301.a, A059826, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P14460688993493185973

`2*n*A037270(n)`
-/

namespace A155977.P14460688993493185973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A037270 n)

end

end A155977.P14460688993493185973

namespace A155977

/-- `2*n*A037270(n)` -/
def P14460688993493185973.Spec : Prop :=
  ∀ n, P14460688993493185973.a n = A155977 n

end A155977

/-! ## A155977.P12202953137850116253

`n/4*A173116(n)`
-/

namespace A155977.P12202953137850116253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A173116 n : ℚ)

end

end A155977.P12202953137850116253

namespace A155977

/-- `n/4*A173116(n)` -/
def P12202953137850116253.Spec : Prop :=
  ∀ n, P12202953137850116253.a n = (A155977 n : ℚ)

theorem P12202953137850116253.correct : P12202953137850116253.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P12202953137850116253.a, A155977.P18222476826860172301.a, A173116, A173116.P11865276995933948720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P17709886648208383205

`(A071568(n)-1)*n²`
-/

namespace A155977.P17709886648208383205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071568 n - 1) * (n ^ 2 : ℤ)

end

end A155977.P17709886648208383205

namespace A155977

/-- `(A071568(n)-1)*n²` -/
def P17709886648208383205.Spec : Prop :=
  ∀ n, P17709886648208383205.a n = A155977 n

theorem P17709886648208383205.correct : P17709886648208383205.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P17709886648208383205.a, A155977.P18222476826860172301.a, A071568, A071568.P7566850844924228464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P16912730686910699805

`2*n²*A006003(n)`
-/

namespace A155977.P16912730686910699805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 : ℤ) * A006003 n)

end

end A155977.P16912730686910699805

namespace A155977

/-- `2*n²*A006003(n)` -/
def P16912730686910699805.Spec : Prop :=
  ∀ n, P16912730686910699805.a n = A155977 n

end A155977

/-! ## A155977.P17162557629748074365

`(n/2)²*A105374(n)`
-/

namespace A155977.P17162557629748074365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A105374 n : ℚ)

end

end A155977.P17162557629748074365

namespace A155977

/-- `(n/2)²*A105374(n)` -/
def P17162557629748074365.Spec : Prop :=
  ∀ n, P17162557629748074365.a n = (A155977 n : ℚ)

theorem P17162557629748074365.correct : P17162557629748074365.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P17162557629748074365.a, A155977.P18222476826860172301.a, A105374, A105374.P15227727533401661173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P9316036997140900930

`n*(A000583(n)+n²)`
-/

namespace A155977.P9316036997140900930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000583 n + (n ^ 2 : ℤ))

end

end A155977.P9316036997140900930

namespace A155977

/-- `n*(A000583(n)+n²)` -/
def P9316036997140900930.Spec : Prop :=
  ∀ n, P9316036997140900930.a n = A155977 n

theorem P9316036997140900930.correct : P9316036997140900930.Spec := by
  intro n
  simp only [A155977, Nat.add_sub_cancel, A155977.P9316036997140900930.a, A155977.P18222476826860172301.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155977

/-! ## A155977.P5838227617968390767

`A001105(n)*A006003(n)`
-/

namespace A155977.P5838227617968390767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A006003 n

end

end A155977.P5838227617968390767

namespace A155977

/-- `A001105(n)*A006003(n)` -/
def P5838227617968390767.Spec : Prop :=
  ∀ n, P5838227617968390767.a n = A155977 n

end A155977

/-!
# A155978: The primes (p-11)/10 arising in A089442.

The programs for A155978, there is no canonical definition to state claims against.
-/

/-! ## A155978.P11345147225594608090

`p?[A126785(n+1)]`
-/

namespace A155978.P11345147225594608090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155978.P11345147225594608090

/-! ## A155978.P9890737917885137577

`p?[A024912(n+1)-1]`
-/

namespace A155978.P9890737917885137577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155978.P9890737917885137577

/-! ## A155978.P3695995656387284469

`p?[eq[1, A068695(n+1)]]`
-/

namespace A155978.P3695995656387284469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155978.P3695995656387284469

/-! ## A155978.P16639942840875003693

`p?[lcm(n, A069842(n+1))]`
-/

namespace A155978.P16639942840875003693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A069842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155978.P16639942840875003693

/-! ## A155978.P13130402036979641628

`p?[floor(A081759(n+1)/2)]`
-/

namespace A155978.P13130402036979641628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081759 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155978.P13130402036979641628

/-! ## A155978.P11307178039629305048

`p?[eq[1, A001222(10*n+1)]-1]`
-/

namespace A155978.P11307178039629305048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155978.P11307178039629305048

/-! ## A155978.P6412118028921726313

`p?[eq[2, A000005(10*n+1)]-1]`
-/

namespace A155978.P6412118028921726313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155978.P6412118028921726313

/-! ## A155978.P3445644366581450580

`record[A020639(A126785(n+2))]`
-/

namespace A155978.P3445644366581450580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A126785 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155978.P3445644366581450580

/-! ## A155978.P569884866459659899

`filter[A126785(n+2), A010051(#)]`
-/

namespace A155978.P569884866459659899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155978.P569884866459659899

/-!
# A155980: First differences of A135351.

The programs for A155980, the canonical program `A155980.P13129920071253300851` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155980 has offset 0).

The definition of A155980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155980.P710129939752109979

`ogf((2x-4x^2+x^3)/(1-x-2x^2))`
-/

namespace A155980.P710129939752109979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -4, 1] [1, -1, -2] n

end

end A155980.P710129939752109979

namespace A155980

/-- `ogf((2x-4x^2+x^3)/(1-x-2x^2))` -/
def P710129939752109979.Spec : Prop :=
  ∀ n, P710129939752109979.a n = A155980 n

end A155980

/-! ## A155980.P13129920071253300851

`floor(2^(n-3)-a(n-1))` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155980

/-- `floor(2^(n-3)-a(n-1))` -/
def P13129920071253300851.Spec : Prop :=
  ∀ n, P13129920071253300851.a n = A155980 n

theorem P13129920071253300851.correct : P13129920071253300851.Spec := by
  intro n
  simp only [A155980]

end A155980

/-! ## A155980.P6942595886568068416

`round(2^(n-3)-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A155980.P6942595886568068416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - (a (n - 1) : ℚ))

end

end A155980.P6942595886568068416

namespace A155980

/-- `round(2^(n-3)-a(n-1))` -/
def P6942595886568068416.Spec : Prop :=
  ∀ n, P6942595886568068416.a n = A155980 n

end A155980

/-! ## A155980.P2959424478478326850

`a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=2, a(2)=-2, a(3)=3`
-/

namespace A155980.P2959424478478326850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -2, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A155980.P2959424478478326850

namespace A155980

/-- `a(n-1)+2*a(n-2)` -/
def P2959424478478326850.Spec : Prop :=
  ∀ n, P2959424478478326850.a n = A155980 n

end A155980

/-! ## A155980.P13349504885509732963

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2, a(2)=-2, a(3)=3`
-/

namespace A155980.P13349504885509732963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -2, 3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A155980.P13349504885509732963

namespace A155980

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P13349504885509732963.Spec : Prop :=
  ∀ n, P13349504885509732963.a n = A155980 n

end A155980

/-! ## A155980.P14151131490210363669

`Δ[A135351(A004273(n)-n)]`
-/

namespace A155980.P14151131490210363669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155980.P14151131490210363669

namespace A155980

/-- `Δ[A135351(A004273(n)-n)]` -/
def P14151131490210363669.Spec : Prop :=
  ∀ n, P14151131490210363669.a n = A155980 n

end A155980

/-! ## A155980.P1697692121274780760

`Δ[A135351(A004526(A004273(n)))]`
-/

namespace A155980.P1697692121274780760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155980.P1697692121274780760

namespace A155980

/-- `Δ[A135351(A004526(A004273(n)))]` -/
def P1697692121274780760.Spec : Prop :=
  ∀ n, P1697692121274780760.a n = A155980 n

end A155980

/-! ## A155980.P15626901871661992603

`Δ[A135351(A004526(A004275(n)))]`
-/

namespace A155980.P15626901871661992603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155980.P15626901871661992603

namespace A155980

/-- `Δ[A135351(A004526(A004275(n)))]` -/
def P15626901871661992603.Spec : Prop :=
  ∀ n, P15626901871661992603.a n = A155980 n

end A155980

/-! ## A155980.P11020914122219645427

`A135351(n)-A135351(A004273(n)-n)`
-/

namespace A155980.P11020914122219645427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 n - A135351 (A004273 n - (n : ℤ)).toNat

end

end A155980.P11020914122219645427

namespace A155980

/-- `A135351(n)-A135351(A004273(n)-n)` -/
def P11020914122219645427.Spec : Prop :=
  ∀ n, P11020914122219645427.a n = A155980 n

end A155980

/-! ## A155980.P12113794582648309729

`A135351(n)-A135351(log2(A011782(n)))`
-/

namespace A155980.P12113794582648309729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 n - A135351 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A155980.P12113794582648309729

namespace A155980

/-- `A135351(n)-A135351(log2(A011782(n)))` -/
def P12113794582648309729.Spec : Prop :=
  ∀ n, P12113794582648309729.a n = A155980 n

end A155980

/-! ## A155980.P8686368301332688556

`Δ[A135351(log2(A011782(n)))]`
-/

namespace A155980.P8686368301332688556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155980.P8686368301332688556

namespace A155980

/-- `Δ[A135351(log2(A011782(n)))]` -/
def P8686368301332688556.Spec : Prop :=
  ∀ n, P8686368301332688556.a n = A155980 n

end A155980

/-! ## A155980.P12556486434089077523

`Δ[A135351(A004247(A000124(n)))]`
-/

namespace A155980.P12556486434089077523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (A004247 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155980.P12556486434089077523

namespace A155980

/-- `Δ[A135351(A004247(A000124(n)))]` -/
def P12556486434089077523.Spec : Prop :=
  ∀ n, P12556486434089077523.a n = A155980 n

end A155980

/-!
# A155985: a(1)=1, then a(n) is the smallest square not occurring earlier, not ending with zero and starting with the last digit of a(n-1).

The programs for A155985, there is no canonical definition to state claims against.
-/

/-! ## A155985.P8713665617857164412

`A159194(n+1)²`
-/

namespace A155985.P8713665617857164412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159194 (n + 1) ^ 2

end

end A155985.P8713665617857164412

/-! ## A155985.P5784981168062782406

`A008133(3*A159194(n+1))`
-/

namespace A155985.P5784981168062782406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (3 * A159194 (n + 1)).toNat

end

end A155985.P5784981168062782406

/-! ## A155985.P3316944482149397124

`A000027(A159194(n+1)^2)`
-/

namespace A155985.P3316944482149397124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A159194 (n + 1) ^ 2).toNat

end

end A155985.P3316944482149397124

/-! ## A155985.P15061967026181721468

`A159194(n*A057427(n)+1)^2`
-/

namespace A155985.P15061967026181721468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159194 ((n : ℤ) * A057427 n + 1).toNat ^ 2

end

end A155985.P15061967026181721468

/-! ## A155985.P15283487651322367163

`A159194(n+1)^(2%A314826(n))`
-/

namespace A155985.P15283487651322367163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159194 (n + 1) : ℚ) ^ (Int.tmod 2 (A314826 n) : ℤ)

end

end A155985.P15283487651322367163

/-! ## A155985.P15473143737566644173

`A159194(n+1)^A020639(2*(n+1))`
-/

namespace A155985.P15473143737566644173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159194 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A155985.P15473143737566644173

/-! ## A155985.P1742809774965198329

`A159194(n+1)^(2*A007318(C(3, n)))`
-/

namespace A155985.P1742809774965198329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159194 (n + 1) : ℚ) ^ (2 * A007318 (Nat.choose 3 n) : ℤ)

end

end A155985.P1742809774965198329

/-! ## A155985.P2606056054462013552

`A159194(n+1)^(and(1, A007318(n))!+1)`
-/

namespace A155985.P2606056054462013552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159194 (n + 1) ^ (Nat.factorial (Int.land 1 (A007318 n)).toNat + 1)

end

end A155985.P2606056054462013552

/-! ## A155985.P4267910234555738020

`A008683(4*(n+1))+A159194(n+1)^2`
-/

namespace A155985.P4267910234555738020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + A159194 (n + 1) ^ 2

end

end A155985.P4267910234555738020

/-!
# A155986: a(1), then a(n) = smallest cube not occurring earlier, not ending with zero and starting with the last digit of a(n-1).

The programs for A155986, there is no canonical definition to state claims against.
-/

/-! ## A155986.P16628435724494843559

`A126971((2*n+1)²)^3`
-/

namespace A155986.P16628435724494843559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126971 ((2 * n + 1) ^ 2) ^ 3

end

end A155986.P16628435724494843559

/-!
# A155988: a(n) = (2*n + 1)*9^n.

The programs for A155988, the canonical program `A155988.P2051984744316544188` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155988 has offset 0).

The definition of A155988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*9^n` (program `A155988.P2051984744316544188`, by `A155988.P2051984744316544188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155988.P2051984744316544188

`(2*n+1)*9^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155988

/-- `(2*n+1)*9^n` -/
def P2051984744316544188.Spec : Prop :=
  ∀ n, (P2051984744316544188.a n : ℤ) = A155988 n

theorem P2051984744316544188.correct : P2051984744316544188.Spec := by
  intro n
  simp only [A155988]

end A155988

/-! ## A155988.P7583703881036064960

`18*a(n-1)-81*a(n-2)` with `a(0)=1, a(1)=27`
-/

namespace A155988.P7583703881036064960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  18 * a (n - 1) - 81 * a (n - 2)

end

end A155988.P7583703881036064960

namespace A155988

/-- `18*a(n-1)-81*a(n-2)` -/
def P7583703881036064960.Spec : Prop :=
  ∀ n, P7583703881036064960.a n = A155988 n

theorem P7583703881036064960.correct : P7583703881036064960.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A155988, Nat.add_sub_cancel, A155988.P7583703881036064960.a, A155988.P2051984744316544188.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A155988, Nat.add_sub_cancel, A155988.P7583703881036064960.a, A155988.P2051984744316544188.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A155988

/-! ## A155988.P12960909972500244234

`A060851(n+1)/3`
-/

namespace A155988.P12960909972500244234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060851 (n + 1) : ℚ) / 3

end

end A155988.P12960909972500244234

namespace A155988

/-- `A060851(n+1)/3` -/
def P12960909972500244234.Spec : Prop :=
  ∀ n, P12960909972500244234.a n = (A155988 n : ℚ)

end A155988

/-! ## A155988.P1121025198156773480

`A154920(2*n)`
-/

namespace A155988.P1121025198156773480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154920 (2 * n)

end

end A155988.P1121025198156773480

namespace A155988

/-- `A154920(2*n)` -/
def P1121025198156773480.Spec : Prop :=
  ∀ n, P1121025198156773480.a n = A155988 n

end A155988

/-! ## A155988.P14884217761692582669

`A211231(4*n)`
-/

namespace A155988.P14884217761692582669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211231 (4 * n)

end

end A155988.P14884217761692582669

namespace A155988

/-- `A211231(4*n)` -/
def P14884217761692582669.Spec : Prop :=
  ∀ n, P14884217761692582669.a n = A155988 n

end A155988

/-! ## A155988.P10955061158674906154

`A027471(2*(n+1))`
-/

namespace A155988.P10955061158674906154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (2 * (n + 1))

end

end A155988.P10955061158674906154

namespace A155988

/-- `A027471(2*(n+1))` -/
def P10955061158674906154.Spec : Prop :=
  ∀ n, P10955061158674906154.a n = A155988 n

end A155988

/-! ## A155988.P1859880886540802929

`A212697(Δ[n²])/2`
-/

namespace A155988.P1859880886540802929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A155988.P1859880886540802929

namespace A155988

/-- `A212697(Δ[n²])/2` -/
def P1859880886540802929.Spec : Prop :=
  ∀ n, P1859880886540802929.a n = (A155988 n : ℚ)

end A155988

/-! ## A155988.P3667829944340988704

`abs(Δ[n²]*A001019(n))`
-/

namespace A155988.P3667829944340988704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001019 n|

end

end A155988.P3667829944340988704

namespace A155988

/-- `abs(Δ[n²]*A001019(n))` -/
def P3667829944340988704.Spec : Prop :=
  ∀ n, P3667829944340988704.a n = A155988 n

end A155988

/-! ## A155988.P4499946996223933537

`abs(Δ[A002452(n)]*Δ[n²])`
-/

namespace A155988.P4499946996223933537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))|

end

end A155988.P4499946996223933537

namespace A155988

/-- `abs(Δ[A002452(n)]*Δ[n²])` -/
def P4499946996223933537.Spec : Prop :=
  ∀ n, P4499946996223933537.a n = A155988 n

end A155988

/-! ## A155988.P16191476305905049853

`abs(Δ[n²]*A133494(Δ[n²]))`
-/

namespace A155988.P16191476305905049853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A133494 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat|

end

end A155988.P16191476305905049853

namespace A155988

/-- `abs(Δ[n²]*A133494(Δ[n²]))` -/
def P16191476305905049853.Spec : Prop :=
  ∀ n, P16191476305905049853.a n = A155988 n

end A155988

/-! ## A155988.P11806751814024961782

`A001019(n)+2*A158749(n)`
-/

namespace A155988.P11806751814024961782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + 2 * A158749 n

end

end A155988.P11806751814024961782

namespace A155988

/-- `A001019(n)+2*A158749(n)` -/
def P11806751814024961782.Spec : Prop :=
  ∀ n, P11806751814024961782.a n = A155988 n

theorem P11806751814024961782.correct : P11806751814024961782.Spec := by
  intro n
  simp only [A155988, Nat.add_sub_cancel, A155988.P11806751814024961782.a, A155988.P2051984744316544188.a, A001019, A001019.P4632907595368420400.a, A158749, A158749.P15906001908003361684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155988

/-! ## A155988.P4594905797365748050

`∩[A027471(n+1), A154920(n)]`
-/

namespace A155988.P4594905797365748050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154920 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155988.P4594905797365748050

namespace A155988

/-- `∩[A027471(n+1), A154920(n)]` -/
def P4594905797365748050.Spec : Prop :=
  ∀ n, (P4594905797365748050.a n : ℤ) = A155988 n

end A155988

/-! ## A155988.P5599539337561190449

`A036290(2*n)+A000244(n)²`
-/

namespace A155988.P5599539337561190449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (2 * n) + A000244 n ^ 2

end

end A155988.P5599539337561190449

namespace A155988

/-- `A036290(2*n)+A000244(n)²` -/
def P5599539337561190449.Spec : Prop :=
  ∀ n, P5599539337561190449.a n = A155988 n

end A155988

/-! ## A155988.P16128985538230899309

`2*A053540(n+1)-A001019(n)`
-/

namespace A155988.P16128985538230899309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053540 (n + 1) - A001019 n

end

end A155988.P16128985538230899309

namespace A155988

/-- `2*A053540(n+1)-A001019(n)` -/
def P16128985538230899309.Spec : Prop :=
  ∀ n, P16128985538230899309.a n = A155988 n

theorem P16128985538230899309.correct : P16128985538230899309.Spec := by
  intro n
  simp only [A155988, Nat.add_sub_cancel, A155988.P16128985538230899309.a, A155988.P2051984744316544188.a, A001019, A001019.P4632907595368420400.a, A053540, A053540.P12933739383401930550.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155988

/-! ## A155988.P14176249651418552531

`A288834(2*n+1)-A001019(n)`
-/

namespace A155988.P14176249651418552531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (2 * n + 1) - A001019 n

end

end A155988.P14176249651418552531

namespace A155988

/-- `A288834(2*n+1)-A001019(n)` -/
def P14176249651418552531.Spec : Prop :=
  ∀ n, P14176249651418552531.a n = A155988 n

end A155988

/-! ## A155988.P16290836916126797470

`A036290(2*n)+A000244(2*n)`
-/

namespace A155988.P16290836916126797470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (2 * n) + A000244 (2 * n)

end

end A155988.P16290836916126797470

namespace A155988

/-- `A036290(2*n)+A000244(2*n)` -/
def P16290836916126797470.Spec : Prop :=
  ∀ n, P16290836916126797470.a n = A155988 n

end A155988

/-! ## A155988.P15516377361428279437

`A124647(2*n)-A036290(2*n)`
-/

namespace A155988.P15516377361428279437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 (2 * n) - A036290 (2 * n)

end

end A155988.P15516377361428279437

namespace A155988

/-- `A124647(2*n)-A036290(2*n)` -/
def P15516377361428279437.Spec : Prop :=
  ∀ n, P15516377361428279437.a n = A155988 n

end A155988

/-! ## A155988.P4069288356981858340

`A288834(2*n+1)-A000244(n)²`
-/

namespace A155988.P4069288356981858340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (2 * n + 1) - A000244 n ^ 2

end

end A155988.P4069288356981858340

namespace A155988

/-- `A288834(2*n+1)-A000244(n)²` -/
def P4069288356981858340.Spec : Prop :=
  ∀ n, P4069288356981858340.a n = A155988 n

end A155988

/-! ## A155988.P6175933570371013779

`A288834(2*n+1)-A000244(2*n)`
-/

namespace A155988.P6175933570371013779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (2 * n + 1) - A000244 (2 * n)

end

end A155988.P6175933570371013779

namespace A155988

/-- `A288834(2*n+1)-A000244(2*n)` -/
def P6175933570371013779.Spec : Prop :=
  ∀ n, P6175933570371013779.a n = A155988 n

end A155988

/-!
# A155989: List of numbers prime(k) as k runs through the numbers with a single prime digit.

The programs for A155989, the canonical program `A155989.P8151914157851154812` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155989 has offset 1).

The definition of A155989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092620, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155989.P8151914157851154812

`A000040(A092620(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A155989

/-- `A000040(A092620(n+1))` -/
def P8151914157851154812.Spec : Prop :=
  ∀ n, P8151914157851154812.a n = A155989 (n + 1)

theorem P8151914157851154812.correct : P8151914157851154812.Spec := by
  intro n
  simp only [A155989, Nat.add_sub_cancel]

end A155989

/-! ## A155989.P6770921107543048259

`A000040(eq[1, A193238(n)])`
-/

namespace A155989.P6770921107543048259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155989.P6770921107543048259

namespace A155989

/-- `A000040(eq[1, A193238(n)])` -/
def P6770921107543048259.Spec : Prop :=
  ∀ n, P6770921107543048259.a n = A155989 (n + 1)

end A155989

/-! ## A155989.P17711549454599097461

`A006005(eq[1, A193238(n)])`
-/

namespace A155989.P17711549454599097461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155989.P17711549454599097461

namespace A155989

/-- `A006005(eq[1, A193238(n)])` -/
def P17711549454599097461.Spec : Prop :=
  ∀ n, P17711549454599097461.a n = A155989 (n + 1)

end A155989

/-! ## A155989.P15608755167163975014

`A000040(lt[0, tan(A193238(n))])`
-/

namespace A155989.P15608755167163975014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A193238 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A155989.P15608755167163975014

namespace A155989

/-- `A000040(lt[0, tan(A193238(n))])` -/
def P15608755167163975014.Spec : Prop :=
  ∀ n, P15608755167163975014.a n = A155989 (n + 1)

end A155989

/-! ## A155989.P1286497306837663492

`p?[n*A193238(A230980(n))]`
-/

namespace A155989.P1286497306837663492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A193238 (A230980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155989.P1286497306837663492

namespace A155989

/-- `p?[n*A193238(A230980(n))]` -/
def P1286497306837663492.Spec : Prop :=
  ∀ n, P1286497306837663492.a n = A155989 (n + 1)

end A155989

/-! ## A155989.P9791478815751088658

`A008578(A092620(n+1)+1)`
-/

namespace A155989.P9791478815751088658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A092620 (n + 1) + 1).toNat

end

end A155989.P9791478815751088658

namespace A155989

/-- `A008578(A092620(n+1)+1)` -/
def P9791478815751088658.Spec : Prop :=
  ∀ n, P9791478815751088658.a n = A155989 (n + 1)

end A155989

/-! ## A155989.P8171937172803582908

`A182986(A092620(n+1)+1)`
-/

namespace A155989.P8171937172803582908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A092620 (n + 1) + 1).toNat

end

end A155989.P8171937172803582908

namespace A155989

/-- `A182986(A092620(n+1)+1)` -/
def P8171937172803582908.Spec : Prop :=
  ∀ n, P8171937172803582908.a n = A155989 (n + 1)

end A155989

/-! ## A155989.P16792286638498059071

`A158611(A092620(n+1)+2)`
-/

namespace A155989.P16792286638498059071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A092620 (n + 1) + 2).toNat

end

end A155989.P16792286638498059071

namespace A155989

/-- `A158611(A092620(n+1)+2)` -/
def P16792286638498059071.Spec : Prop :=
  ∀ n, P16792286638498059071.a n = A155989 (n + 1)

end A155989

/-! ## A155989.P7254972987956849585

`p?[A008578(n+1)*A193238(n)]`
-/

namespace A155989.P7254972987956849585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A193238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155989.P7254972987956849585

namespace A155989

/-- `p?[A008578(n+1)*A193238(n)]` -/
def P7254972987956849585.Spec : Prop :=
  ∀ n, P7254972987956849585.a n = A155989 (n + 1)

end A155989

/-!
# A155990: Numbers prime(k) as k runs through the numbers whose digits are all prime.

The programs for A155990, the canonical program `A155990.P205879086183689194` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155990 has offset 1).

The definition of A155990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155990.P18416765354057563883

`A000040(A046034(n+1))`
-/

namespace A155990.P18416765354057563883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046034 (n + 1)).toNat

end

end A155990.P18416765354057563883

namespace A155990

/-- `A000040(A046034(n+1))` -/
def P18416765354057563883.Spec : Prop :=
  ∀ n, P18416765354057563883.a n = A155990 (n + 1)

end A155990

/-! ## A155990.P205879086183689194

`A000040(eq[0, A276729(n)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A155990

/-- `A000040(eq[0, A276729(n)])` -/
def P205879086183689194.Spec : Prop :=
  ∀ n, P205879086183689194.a n = A155990 (n + 1)

theorem P205879086183689194.correct : P205879086183689194.Spec := by
  intro n
  simp only [A155990, Nat.add_sub_cancel]

end A155990

/-! ## A155990.P11953491826721557977

`A006005(eq[0, A276729(n)])`
-/

namespace A155990.P11953491826721557977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155990.P11953491826721557977

namespace A155990

/-- `A006005(eq[0, A276729(n)])` -/
def P11953491826721557977.Spec : Prop :=
  ∀ n, P11953491826721557977.a n = A155990 (n + 1)

end A155990

/-! ## A155990.P9784143837067281179

`A008578(A046034(n+1)+1)`
-/

namespace A155990.P9784143837067281179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046034 (n + 1) + 1).toNat

end

end A155990.P9784143837067281179

namespace A155990

/-- `A008578(A046034(n+1)+1)` -/
def P9784143837067281179.Spec : Prop :=
  ∀ n, P9784143837067281179.a n = A155990 (n + 1)

end A155990

/-! ## A155990.P4357242019347260381

`A182986(A046034(n+1)+1)`
-/

namespace A155990.P4357242019347260381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A046034 (n + 1) + 1).toNat

end

end A155990.P4357242019347260381

namespace A155990

/-- `A182986(A046034(n+1)+1)` -/
def P4357242019347260381.Spec : Prop :=
  ∀ n, P4357242019347260381.a n = A155990 (n + 1)

end A155990

/-!
# A155993: A triangle of polynomial coefficients: p(x,n)=-(ChebyshevT[n, x] - ((x + 1)^n + (1 - x)^n)); sp(x,n) = p(x, n) + x^n*p(1/x, n).

The programs for A155993, there is no canonical definition to state claims against.
-/

/-! ## A155993.P9850641904388718787

`2*A155997(n)-A140883(n)`
-/

namespace A155993.P9850641904388718787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155997 n - A140883 n

end

end A155993.P9850641904388718787

/-! ## A155993.P9715956405585763522

`A005843(A155997(n))-A140883(n)`
-/

namespace A155993.P9715956405585763522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A155997 n).toNat - A140883 n

end

end A155993.P9715956405585763522

/-! ## A155993.P10458248849421769311

`A005843(A155997(n))-(A053120(n)+A039991(n))`
-/

namespace A155993.P10458248849421769311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A155997 n).toNat - (A053120 n + A039991 n)

end

end A155993.P10458248849421769311

/-! ## A155993.P4547033842416245117

`2*A155997(n)-(A039991(n)+A039991(A061579(n)))`
-/

namespace A155993.P4547033842416245117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155997 n - (A039991 n + A039991 (A061579 n).toNat)

end

end A155993.P4547033842416245117

/-! ## A155993.P16590277449662365682

`2*A155997(n)-(A053120(n)+A053120(A061579(n)))`
-/

namespace A155993.P16590277449662365682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155997 n - (A053120 n + A053120 (A061579 n).toNat)

end

end A155993.P16590277449662365682

/-! ## A155993.P17446419451779373889

`2*A155997(n)-(A039991(n)+A039991(A114327(n)+n))`
-/

namespace A155993.P17446419451779373889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155997 n - (A039991 n + A039991 (A114327 n + (n : ℤ)).toNat)

end

end A155993.P17446419451779373889

/-!
# A155996: Nearest integer to 2^n*Pi/4.

The programs for A155996, the canonical program `A155996.P8137289271116998975` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155996 has offset 0).

The definition of A155996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155996.P8137289271116998975

`round(2^n*π/4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155996

/-- `round(2^n*π/4)` -/
def P8137289271116998975.Spec : Prop :=
  ∀ n, P8137289271116998975.a n = A155996 n

theorem P8137289271116998975.correct : P8137289271116998975.Spec := by
  intro n
  simp only [A155996]

end A155996

/-! ## A155996.P14026087682809303394

`a(n-1)+A155482(n)+a(n-1)` with `a(0)=1`
-/

namespace A155996.P14026087682809303394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A155482 n + a (n - 1))

end

end A155996.P14026087682809303394

namespace A155996

/-- `a(n-1)+A155482(n)+a(n-1)` -/
def P14026087682809303394.Spec : Prop :=
  ∀ n, P14026087682809303394.a n = A155996 n

end A155996

/-! ## A155996.P9690376535067602485

`Δ[floor(2^n*atan(1))]`
-/

namespace A155996.P9690376535067602485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) * Real.arctan (1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155996.P9690376535067602485

namespace A155996

/-- `Δ[floor(2^n*atan(1))]` -/
def P9690376535067602485.Spec : Prop :=
  ∀ n, P9690376535067602485.a n = A155996 n

end A155996

/-! ## A155996.P2963215389103007707

`Δ[ceil(2^n*atan(1))]`
-/

namespace A155996.P2963215389103007707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) * Real.arctan (1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155996.P2963215389103007707

namespace A155996

/-- `Δ[ceil(2^n*atan(1))]` -/
def P2963215389103007707.Spec : Prop :=
  ∀ n, P2963215389103007707.a n = A155996 n

end A155996

/-!
# A155997: Triangle read by rows: T(n, k) = f(n, k) + f(n, n-k), where f(n, k) = binomial(n, k)*(1 + (-1)^k)/2.

The programs for A155997, the canonical program `A155997.P18067943920383221981` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155997 has offset 0).

The definition of A155997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155997.P18067943920383221981

`C(row(n), col(n))*(2+(-1)^col(n)*(1+(-1)^row(n)))/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155997

/-- `C(row(n), col(n))*(2+(-1)^col(n)*(1+(-1)^row(n)))/2` -/
def P18067943920383221981.Spec : Prop :=
  ∀ n, P18067943920383221981.a n = (A155997 n : ℚ)

end A155997

/-! ## A155997.P16627595580576315275

`A028326(n)-A155998(n)`
-/

namespace A155997.P16627595580576315275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A155998 n

end

end A155997.P16627595580576315275

namespace A155997

/-- `A028326(n)-A155998(n)` -/
def P16627595580576315275.Spec : Prop :=
  ∀ n, P16627595580576315275.a n = A155997 n

end A155997

/-! ## A155997.P10391855194242659243

`2*A007318(n)-A155998(n)`
-/

namespace A155997.P10391855194242659243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A155998 n

end

end A155997.P10391855194242659243

namespace A155997

/-- `2*A007318(n)-A155998(n)` -/
def P10391855194242659243.Spec : Prop :=
  ∀ n, P10391855194242659243.a n = A155997 n

end A155997

/-! ## A155997.P13400350603564636073

`A119467(A061579(n))+A119467(n)`
-/

namespace A155997.P13400350603564636073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A061579 n).toNat + A119467 n

end

end A155997.P13400350603564636073

namespace A155997

/-- `A119467(A061579(n))+A119467(n)` -/
def P13400350603564636073.Spec : Prop :=
  ∀ n, P13400350603564636073.a n = A155997 n

end A155997

/-! ## A155997.P117254918101629936

`A119467(A038722(n+2))+A119467(n)`
-/

namespace A155997.P117254918101629936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A038722 (n + 2)).toNat + A119467 n

end

end A155997.P117254918101629936

namespace A155997

/-- `A119467(A038722(n+2))+A119467(n)` -/
def P117254918101629936.Spec : Prop :=
  ∀ n, P117254918101629936.a n = A155997 n

end A155997

/-! ## A155997.P17669885727431184373

`A119467(A056011(n+1)-1)+A119467(n)`
-/

namespace A155997.P17669885727431184373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A056011 (n + 1) - 1).toNat + A119467 n

end

end A155997.P17669885727431184373

namespace A155997

/-- `A119467(A056011(n+1)-1)+A119467(n)` -/
def P17669885727431184373.Spec : Prop :=
  ∀ n, P17669885727431184373.a n = A155997 n

end A155997

/-! ## A155997.P5372437710730349283

`A005843(A007318(n))-A155998(n)`
-/

namespace A155997.P5372437710730349283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007318 n).toNat - A155998 n

end

end A155997.P5372437710730349283

namespace A155997

/-- `A005843(A007318(n))-A155998(n)` -/
def P5372437710730349283.Spec : Prop :=
  ∀ n, P5372437710730349283.a n = A155997 n

end A155997

/-! ## A155997.P10675645317979055577

`A028326(n)-(A162590(A061579(n))+A162590(n))`
-/

namespace A155997.P10675645317979055577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (A162590 (A061579 n).toNat + A162590 n)

end

end A155997.P10675645317979055577

namespace A155997

/-- `A028326(n)-(A162590(A061579(n))+A162590(n))` -/
def P10675645317979055577.Spec : Prop :=
  ∀ n, P10675645317979055577.a n = A155997 n

end A155997

/-!
# A155998: Triangle read by rows: T(n, k) = f(n, k) + f(n, n-k), where f(n, k) = binomial(n, k)*(1 - (-1)^k)/2.

The programs for A155998, the canonical program `A155998.P13427374810511319473` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155998 has offset 0).

The definition of A155998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155998.P13427374810511319473

`C(row(n), col(n))*(2-(-1)^col(n)*(1+(-1)^row(n)))/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A155998

/-- `C(row(n), col(n))*(2-(-1)^col(n)*(1+(-1)^row(n)))/2` -/
def P13427374810511319473.Spec : Prop :=
  ∀ n, P13427374810511319473.a n = (A155998 n : ℚ)

end A155998

/-! ## A155998.P3980764014410470248

`A028326(n)-A155997(n)`
-/

namespace A155998.P3980764014410470248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A155997 n

end

end A155998.P3980764014410470248

namespace A155998

/-- `A028326(n)-A155997(n)` -/
def P3980764014410470248.Spec : Prop :=
  ∀ n, P3980764014410470248.a n = A155998 n

end A155998

/-! ## A155998.P14870723088985727710

`A124845(n)-A119467(n)`
-/

namespace A155998.P14870723088985727710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124845 n - A119467 n

end

end A155998.P14870723088985727710

namespace A155998

/-- `A124845(n)-A119467(n)` -/
def P14870723088985727710.Spec : Prop :=
  ∀ n, P14870723088985727710.a n = A155998 n

end A155998

/-! ## A155998.P7708893029563363681

`2*A007318(n)-A155997(n)`
-/

namespace A155998.P7708893029563363681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A155997 n

end

end A155998.P7708893029563363681

namespace A155998

/-- `2*A007318(n)-A155997(n)` -/
def P7708893029563363681.Spec : Prop :=
  ∀ n, P7708893029563363681.a n = A155998 n

end A155998

/-! ## A155998.P12174152638749251536

`gcd(A028326(n), A103406(n))-A119467(n)`
-/

namespace A155998.P12174152638749251536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A028326 n) (A103406 n) : ℤ) - A119467 n

end

end A155998.P12174152638749251536

namespace A155998

/-- `gcd(A028326(n), A103406(n))-A119467(n)` -/
def P12174152638749251536.Spec : Prop :=
  ∀ n, P12174152638749251536.a n = A155998 n

end A155998

/-! ## A155998.P11218020056317854085

`A250742(n+1)%3*A007318(n)`
-/

namespace A155998.P11218020056317854085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250742 (n + 1)) 3 * A007318 n

end

end A155998.P11218020056317854085

namespace A155998

/-- `A250742(n+1)%3*A007318(n)` -/
def P11218020056317854085.Spec : Prop :=
  ∀ n, P11218020056317854085.a n = A155998 n

end A155998

/-! ## A155998.P265126749410239567

`A350771(n+1)%A134059(n)`
-/

namespace A155998.P265126749410239567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350771 (n + 1)) (A134059 n)

end

end A155998.P265126749410239567

namespace A155998

/-- `A350771(n+1)%A134059(n)` -/
def P265126749410239567.Spec : Prop :=
  ∀ n, P265126749410239567.a n = A155998 n

end A155998

/-! ## A155998.P17619034432413374497

`A134058(A233583(n+1))-A155997(n)`
-/

namespace A155998.P17619034432413374497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 (A233583 (n + 1)).toNat - A155997 n

end

end A155998.P17619034432413374497

namespace A155998

/-- `A134058(A233583(n+1))-A155997(n)` -/
def P17619034432413374497.Spec : Prop :=
  ∀ n, P17619034432413374497.a n = A155998 n

end A155998

/-! ## A155998.P14539871576430807327

`A005843(A007318(n))-A155997(n)`
-/

namespace A155998.P14539871576430807327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007318 n).toNat - A155997 n

end

end A155998.P14539871576430807327

namespace A155998

/-- `A005843(A007318(n))-A155997(n)` -/
def P14539871576430807327.Spec : Prop :=
  ∀ n, P14539871576430807327.a n = A155998 n

end A155998

/-! ## A155998.P1064567439653104076

`A302404(A134060(n))-A155997(n)`
-/

namespace A155998.P1064567439653104076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302404 (A134060 n).toNat - A155997 n

end

end A155998.P1064567439653104076

namespace A155998

/-- `A302404(A134060(n))-A155997(n)` -/
def P1064567439653104076.Spec : Prop :=
  ∀ n, P1064567439653104076.a n = A155998 n

end A155998

