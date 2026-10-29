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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154500: Sum of any 3 consecutive numbers is prime and |a(n+2) - (a(n+1) + a(n))| is prime, a(1)=3, a(2)=5.

The programs for A154500, there is no canonical definition to state claims against.
-/

/-! ## A154500.P3517145250158060573

`∑[A001227(A229439(2*n+5))]+1`
-/

namespace A154500.P3517145250158060573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A229439 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A154500.P3517145250158060573

/-! ## A154500.P5977135749767350676

`∑[∏{e}[A341829(2*n+1)+A067698(3*n+1), #+1]]`
-/

namespace A154500.P5977135749767350676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341829 (2 * n + 1) + A067698 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154500.P5977135749767350676

/-!
# A154502: Sum of any 3 consecutive numbers is prime and a(n+2)-(a(n+1)+a(n)) is prime, a(1)=3,a(2)=31.

The programs for A154502, there is no canonical definition to state claims against.
-/

/-! ## A154502.P13558332603944655338

`A056874(A228357(n+1))`
-/

namespace A154502.P13558332603944655338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (A228357 (n + 1)).toNat

end

end A154502.P13558332603944655338

/-! ## A154502.P8937087543511907108

`A038879(A341446(n+1))`
-/

namespace A154502.P8937087543511907108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (A341446 (n + 1)).toNat

end

end A154502.P8937087543511907108

/-! ## A154502.P13830388469358761609

`A296920(A269003(n+1))`
-/

namespace A154502.P13830388469358761609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (A269003 (n + 1)).toNat

end

end A154502.P13830388469358761609

/-!
# A154503: Numbers n of A144571.

The programs for A154503, there is no canonical definition to state claims against.
-/

/-! ## A154503.P13397623039939718033

`eq[1, A128428(9*n+4)]+1`
-/

namespace A154503.P13397623039939718033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (9 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A154503.P13397623039939718033

/-! ## A154503.P15127854037896951080

`eq[1, A248516(8*n+n+4)]+1`
-/

namespace A154503.P15127854037896951080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248516 (8 * n + (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A154503.P15127854037896951080

/-! ## A154503.P9625186986916957610

`record[A054576(A090693(n+1)+4)]`
-/

namespace A154503.P9625186986916957610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A090693 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154503.P9625186986916957610

/-! ## A154503.P153183287057972219

`record[A054576(A005574(n+1)+5)]`
-/

namespace A154503.P153183287057972219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A005574 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154503.P153183287057972219

/-! ## A154503.P10572738706812298145

`record[(n+1)/A248058(A017197(n)+1)]`
-/

namespace A154503.P10572738706812298145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A248058 (A017197 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154503.P10572738706812298145

/-!
# A154504: Prime numbers of A154503.

The programs for A154504, there is no canonical definition to state claims against.
-/

/-! ## A154504.P14396894260691266706

`p?[record[A054576(A090693(n+1)+4)]]`
-/

namespace A154504.P14396894260691266706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A090693 (n + 1) + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154504.P14396894260691266706

/-! ## A154504.P12098966330451861227

`p?[record[A054576(A005574(n+1)+5)]]`
-/

namespace A154504.P12098966330451861227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A005574 (n + 1) + 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154504.P12098966330451861227

/-! ## A154504.P590927110027856067

`p?[A154503(n+1)]`
-/

namespace A154504.P590927110027856067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154504.P590927110027856067

/-! ## A154504.P11683429503640526782

`p?[record[A154503(A106466(n))]]`
-/

namespace A154504.P11683429503640526782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154503 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154504.P11683429503640526782

/-! ## A154504.P13208591995390323360

`record[A001414(A154503(n+2))]`
-/

namespace A154504.P13208591995390323360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A154503 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154504.P13208591995390323360

/-!
# A154506: Primes of the form concatenation(A141468(k), k).

The programs for A154506, there is no canonical definition to state claims against.
-/

/-! ## A154506.P5287473178651157497

`p?[A245317(n+1)+2]`
-/

namespace A154506.P5287473178651157497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245317 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154506.P5287473178651157497

/-! ## A154506.P12022585521181309186

`record[A020639(A245317(n+1)+2)]`
-/

namespace A154506.P12022585521181309186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154506.P12022585521181309186

/-! ## A154506.P1798570261730787854

`p?[A009056(A245317(n+1))]`
-/

namespace A154506.P1798570261730787854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A245317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154506.P1798570261730787854

/-! ## A154506.P10029176574568900676

`record[A014963(A245317(n+1)+2)]`
-/

namespace A154506.P10029176574568900676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A245317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154506.P10029176574568900676

/-! ## A154506.P7903939898790674492

`record[A061397(A245317(n+1)+2)]`
-/

namespace A154506.P7903939898790674492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A245317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154506.P7903939898790674492

/-!
# A154507: Nonprimes formed by concatenation of the decimal digits of a nonprime and its index.

The programs for A154507, there is no canonical definition to state claims against.
-/

/-! ## A154507.P7672268403072860883

`A315641(A340788(n+1)%A162712(n+1))`
-/

namespace A154507.P7672268403072860883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 (Int.tmod (A340788 (n + 1)) (A162712 (n + 1))).toNat

end

end A154507.P7672268403072860883

/-!
# A154510: Primes of the form 648*k^2 + 72*k + 1.

The programs for A154510, the canonical program `A154510.P17255303162839916409` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154510 has offset 1).

The definition of A154510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154510.P17255303162839916409

`∩[A154515(n+1), A264823(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A154510

/-- `∩[A154515(n+1), A264823(n+1)]` -/
def P17255303162839916409.Spec : Prop :=
  ∀ n, (P17255303162839916409.a n : ℤ) = A154510 (n + 1)

theorem P17255303162839916409.correct : P17255303162839916409.Spec := by
  intro n
  simp only [A154510, Nat.add_sub_cancel]

end A154510

/-! ## A154510.P11892739527304282416

`∩[A066436(n+1), A154515(n+1)]`
-/

namespace A154510.P11892739527304282416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154510.P11892739527304282416

namespace A154510

/-- `∩[A066436(n+1), A154515(n+1)]` -/
def P11892739527304282416.Spec : Prop :=
  ∀ n, (P11892739527304282416.a n : ℤ) = A154510 (n + 1)

end A154510

/-! ## A154510.P8472637551641539299

`∩[A154515(n+1), A256917(n+1)]`
-/

namespace A154510.P8472637551641539299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154510.P8472637551641539299

namespace A154510

/-- `∩[A154515(n+1), A256917(n+1)]` -/
def P8472637551641539299.Spec : Prop :=
  ∀ n, (P8472637551641539299.a n : ℤ) = A154510 (n + 1)

end A154510

/-! ## A154510.P15750795627892216097

`p?[2*(18*(n+1)+1)²-1]`
-/

namespace A154510.P15750795627892216097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (18 * (n + 1) + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154510.P15750795627892216097

namespace A154510

/-- `p?[2*(18*(n+1)+1)²-1]` -/
def P15750795627892216097.Spec : Prop :=
  ∀ n, P15750795627892216097.a n = A154510 (n + 1)

end A154510

/-! ## A154510.P7353235621315613457

`or(1, p?[A154515(n+1)])`
-/

namespace A154510.P7353235621315613457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154510.P7353235621315613457

namespace A154510

/-- `or(1, p?[A154515(n+1)])` -/
def P7353235621315613457.Spec : Prop :=
  ∀ n, P7353235621315613457.a n = A154510 (n + 1)

end A154510

/-!
# A154511: Primes of the form 648*k^2 - 72*k + 1.

The programs for A154511, the canonical program `A154511.P5616005869555878040` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154511 has offset 1).

The definition of A154511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154511.P5616005869555878040

`∩[A154514(n+1), A264823(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A154511

/-- `∩[A154514(n+1), A264823(n+1)]` -/
def P5616005869555878040.Spec : Prop :=
  ∀ n, (P5616005869555878040.a n : ℤ) = A154511 (n + 1)

theorem P5616005869555878040.correct : P5616005869555878040.Spec := by
  intro n
  simp only [A154511, Nat.add_sub_cancel]

end A154511

/-! ## A154511.P1188279360621722294

`∩[A066436(n+1), A154514(n+1)]`
-/

namespace A154511.P1188279360621722294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154511.P1188279360621722294

namespace A154511

/-- `∩[A066436(n+1), A154514(n+1)]` -/
def P1188279360621722294.Spec : Prop :=
  ∀ n, (P1188279360621722294.a n : ℤ) = A154511 (n + 1)

end A154511

/-! ## A154511.P711956965002990849

`∩[A154514(n+1), A256917(n+1)]`
-/

namespace A154511.P711956965002990849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154511.P711956965002990849

namespace A154511

/-- `∩[A154514(n+1), A256917(n+1)]` -/
def P711956965002990849.Spec : Prop :=
  ∀ n, (P711956965002990849.a n : ℤ) = A154511 (n + 1)

end A154511

/-! ## A154511.P10492877972099021196

`p?[16*C(9*(n+1), 2)+1]`
-/

namespace A154511.P10492877972099021196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose (9 * (n + 1)) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154511.P10492877972099021196

namespace A154511

/-- `p?[16*C(9*(n+1), 2)+1]` -/
def P10492877972099021196.Spec : Prop :=
  ∀ n, (P10492877972099021196.a n : ℤ) = A154511 (n + 1)

end A154511

/-! ## A154511.P17689791269645383493

`p?[A154514(n+1)]`
-/

namespace A154511.P17689791269645383493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154511.P17689791269645383493

namespace A154511

/-- `p?[A154514(n+1)]` -/
def P17689791269645383493.Spec : Prop :=
  ∀ n, P17689791269645383493.a n = A154511 (n + 1)

end A154511

/-!
# A154512: The prime(n)-th digit of the Copeland-Erdos constant A033308.

The programs for A154512, there is no canonical definition to state claims against.
-/

/-! ## A154512.P4230116991388400955

`A033308(p?[round(sqrt(n)+n)]-1)`
-/

namespace A154512.P4230116991388400955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A154512.P4230116991388400955

/-! ## A154512.P16469998345438890528

`A033308(record[A037225(n)])`
-/

namespace A154512.P16469998345438890528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154512.P16469998345438890528

/-! ## A154512.P4538624366246706128

`A033308(A006093(n+1))`
-/

namespace A154512.P4538624366246706128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A006093 (n + 1)).toNat

end

end A154512.P4538624366246706128

/-! ## A154512.P8139191762955189876

`A033308(eq[1, A013632(n)])`
-/

namespace A154512.P8139191762955189876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154512.P8139191762955189876

/-! ## A154512.P2773992281651554517

`A033308(Δ[A007504(n)]-1)`
-/

namespace A154512.P2773992281651554517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (n + 1) - f1 n - 1).toNat

end

end A154512.P2773992281651554517

/-! ## A154512.P10280817020780213229

`A033308(record[A000010(n+1)])`
-/

namespace A154512.P10280817020780213229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154512.P10280817020780213229

/-! ## A154512.P10658375881305921755

`A033308(record[A003958(n+1)])`
-/

namespace A154512.P10658375881305921755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154512.P10658375881305921755

/-! ## A154512.P8935556486241890690

`A033308(record[A049559(n+1)])`
-/

namespace A154512.P8935556486241890690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154512.P8935556486241890690

/-! ## A154512.P2402882759299697902

`A033308(record[A076512(n+1)])`
-/

namespace A154512.P2402882759299697902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154512.P2402882759299697902

/-! ## A154512.P2582164429451902855

`A033308(A000040(n+1)-1)`
-/

namespace A154512.P2582164429451902855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A000040 (n + 1) - 1).toNat

end

end A154512.P2582164429451902855

/-! ## A154512.P17550620490357838613

`A033308(eq[0, A005171(n+1)])`
-/

namespace A154512.P17550620490357838613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154512.P17550620490357838613

/-! ## A154512.P4529291187532820268

`A033308(eq[1, A001065(n+1)])`
-/

namespace A154512.P4529291187532820268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154512.P4529291187532820268

/-! ## A154512.P13515516276112616661

`A033308(eq[1, A001222(n+1)])`
-/

namespace A154512.P13515516276112616661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154512.P13515516276112616661

/-! ## A154512.P12487073003077850870

`A033308(eq[2, A000005(n+1)])`
-/

namespace A154512.P12487073003077850870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154512.P12487073003077850870

/-! ## A154512.P17769663830527607141

`A033308(eq[n, A000010(n+1)])`
-/

namespace A154512.P17769663830527607141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154512.P17769663830527607141

/-! ## A154512.P8454692309120177328

`A033308(record[A014963(n+2)-1])`
-/

namespace A154512.P8454692309120177328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154512.P8454692309120177328

/-! ## A154512.P9027695615976446857

`A033308(A067747(2*n+1)-1)`
-/

namespace A154512.P9027695615976446857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A067747 (2 * n + 1) - 1).toNat

end

end A154512.P9027695615976446857

/-! ## A154512.P3253347561250157865

`A033308(A162177(n+2)+n+1)`
-/

namespace A154512.P3253347561250157865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A162177 (n + 2) + (n + 1 : ℤ)).toNat

end

end A154512.P3253347561250157865

/-! ## A154512.P8297975676506329860

`A033308(eq[n+2, A000203(n+1)])`
-/

namespace A154512.P8297975676506329860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154512.P8297975676506329860

/-! ## A154512.P15185836706749651780

`A033308(A000010(Δ[A007504(n)]))`
-/

namespace A154512.P15185836706749651780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A000010 (f1 (n + 1) - f1 n).toNat).toNat

end

end A154512.P15185836706749651780

/-!
# A154513: The prime(n)-th digit of the concatenated composites.

The programs for A154513, there is no canonical definition to state claims against.
-/

/-! ## A154513.P2022785704923025297

`A129808(A000040(n+1))`
-/

namespace A154513.P2022785704923025297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A000040 (n + 1)).toNat + 1)

end

end A154513.P2022785704923025297

/-! ## A154513.P1837451184484007954

`A129808(p?[round(sqrt(n)+n)])`
-/

namespace A154513.P1837451184484007954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1)

end

end A154513.P1837451184484007954

/-! ## A154513.P2470847536476888919

`A129808(abs(p?[round(8*n/7)]-2)+2)`
-/

namespace A154513.P2470847536476888919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2| + 2).toNat + 1)

end

end A154513.P2470847536476888919

/-! ## A154513.P5168586955224123650

`A129808(Δ[A007504(n)])`
-/

namespace A154513.P5168586955224123650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (n + 1) - f1 n).toNat + 1)

end

end A154513.P5168586955224123650

/-! ## A154513.P2424131713563555878

`A129808(A008578(n+2))`
-/

namespace A154513.P2424131713563555878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A008578 (n + 2)).toNat + 1)

end

end A154513.P2424131713563555878

/-! ## A154513.P17499079557387722944

`A129808(eq[2, A005128(n)])`
-/

namespace A154513.P17499079557387722944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154513.P17499079557387722944

/-! ## A154513.P927221787842630702

`A129808(sqrt(A001248(n+1)))`
-/

namespace A154513.P927221787842630702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + 1)

end

end A154513.P927221787842630702

/-! ## A154513.P16970881099121002670

`A129808(record[A037225(n)+1])`
-/

namespace A154513.P16970881099121002670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P16970881099121002670

/-! ## A154513.P88233149916656118

`A129808(record[A006530(n+2)])`
-/

namespace A154513.P88233149916656118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P88233149916656118

/-! ## A154513.P11705672640505297904

`A129808(record[A007431(n)+2])`
-/

namespace A154513.P11705672640505297904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P11705672640505297904

/-! ## A154513.P14064826814872423150

`A129808(record[A014963(n+2)])`
-/

namespace A154513.P14064826814872423150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P14064826814872423150

/-! ## A154513.P10531251527727291655

`A129808(record[A020639(n+2)])`
-/

namespace A154513.P10531251527727291655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P10531251527727291655

/-! ## A154513.P17811667568765569202

`A129808(A006093(n+1)+1)`
-/

namespace A154513.P17811667568765569202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A006093 (n + 1) + 1).toNat + 1)

end

end A154513.P17811667568765569202

/-! ## A154513.P10228935644227158365

`A129808(A040976(n+1)+2)`
-/

namespace A154513.P10228935644227158365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A040976 (n + 1) + 2).toNat + 1)

end

end A154513.P10228935644227158365

/-! ## A154513.P4737036192628501348

`A129808(record[A000010(n+1)+1])`
-/

namespace A154513.P4737036192628501348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P4737036192628501348

/-! ## A154513.P1495372963775874578

`A129808(record[A046665(n+1)+2])`
-/

namespace A154513.P1495372963775874578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P1495372963775874578

/-! ## A154513.P2564392468563494772

`A129808(record[A049087(n+1)+2])`
-/

namespace A154513.P2564392468563494772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154513.P2564392468563494772

/-! ## A154513.P8952570856782554600

`A129808(eq[2, A000005(n+1)]+1)`
-/

namespace A154513.P8952570856782554600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + 1)

end

end A154513.P8952570856782554600

/-! ## A154513.P9376234859537595779

`A129808(eq[n, A000010(n+1)]+1)`
-/

namespace A154513.P9376234859537595779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + 1)

end

end A154513.P9376234859537595779

/-! ## A154513.P3270642353217049659

`A129808(p?[A018252(n+1)-7])%10`
-/

namespace A154513.P3270642353217049659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129808 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1)) 10

end

end A154513.P3270642353217049659

/-!
# A154514: a(n) = 648*n^2 - 72*n + 1.

The programs for A154514, the canonical program `A154514.P4536566946415829167` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154514 has offset 1).

The definition of A154514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `648*(n+1)²-72*(n+1)+1` (program `A154514.P4536566946415829167`, by `A154514.P4536566946415829167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154514.P8162900253647907081

`ogf((577+718x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154514.P8162900253647907081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [577, 718, 1] [1, -3, 3, -1] n

end

end A154514.P8162900253647907081

namespace A154514

/-- `ogf((577+718x+x^2)/(1-3x+3x^2-x^3))` -/
def P8162900253647907081.Spec : Prop :=
  ∀ n, P8162900253647907081.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P4536566946415829167

`648*(n+1)²-72*(n+1)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154514

/-- `648*(n+1)²-72*(n+1)+1` -/
def P4536566946415829167.Spec : Prop :=
  ∀ n, P4536566946415829167.a n = A154514 (n + 1)

theorem P4536566946415829167.correct : P4536566946415829167.Spec := by
  intro n
  simp only [A154514, Nat.add_sub_cancel]

end A154514

/-! ## A154514.P9569685999533866200

`A069129(9*(n+1))`
-/

namespace A154514.P9569685999533866200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (9 * (n + 1))

end

end A154514.P9569685999533866200

namespace A154514

/-- `A069129(9*(n+1))` -/
def P9569685999533866200.Spec : Prop :=
  ∀ n, P9569685999533866200.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P4664291120337522133

`A298039(A017653(n))`
-/

namespace A154514.P4664291120337522133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (A017653 n).toNat

end

end A154514.P4664291120337522133

namespace A154514

/-- `A298039(A017653(n))` -/
def P4664291120337522133.Spec : Prop :=
  ∀ n, P4664291120337522133.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P6945308363407814729

`A298039(A008594(n+1)-1)`
-/

namespace A154514.P6945308363407814729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (A008594 (n + 1) - 1).toNat

end

end A154514.P6945308363407814729

namespace A154514

/-- `A298039(A008594(n+1)-1)` -/
def P6945308363407814729.Spec : Prop :=
  ∀ n, P6945308363407814729.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P6028100531277285304

`A249356(A350522(n))`
-/

namespace A154514.P6028100531277285304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A350522 n).toNat

end

end A154514.P6028100531277285304

namespace A154514

/-- `A249356(A350522(n))` -/
def P6028100531277285304.Spec : Prop :=
  ∀ n, P6028100531277285304.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P9422521532724909073

`A056220(A239129(n+1))`
-/

namespace A154514.P9422521532724909073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A239129 (n + 1)).toNat

end

end A154514.P9422521532724909073

namespace A154514

/-- `A056220(A239129(n+1))` -/
def P9422521532724909073.Spec : Prop :=
  ∀ n, P9422521532724909073.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P653657903088589442

`A056220(A161705(n+1)-2)`
-/

namespace A154514.P653657903088589442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A161705 (n + 1) - 2).toNat

end

end A154514.P653657903088589442

namespace A154514

/-- `A056220(A161705(n+1)-2)` -/
def P653657903088589442.Spec : Prop :=
  ∀ n, P653657903088589442.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P8475412046945982196

`A249356(A008600(n+1)-2)`
-/

namespace A154514.P8475412046945982196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A008600 (n + 1) - 2).toNat

end

end A154514.P8475412046945982196

namespace A154514

/-- `A249356(A008600(n+1)-2)` -/
def P8475412046945982196.Spec : Prop :=
  ∀ n, P8475412046945982196.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P3264445205643564560

`A056220(A017257(2*n+1))`
-/

namespace A154514.P3264445205643564560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A017257 (2 * n + 1)).toNat

end

end A154514.P3264445205643564560

namespace A154514

/-- `A056220(A017257(2*n+1))` -/
def P3264445205643564560.Spec : Prop :=
  ∀ n, P3264445205643564560.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P225981883408269663

`A077221(A016969(3*n+2))`
-/

namespace A154514.P225981883408269663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A016969 (3 * n + 2)).toNat

end

end A154514.P225981883408269663

namespace A154514

/-- `A077221(A016969(3*n+2))` -/
def P225981883408269663.Spec : Prop :=
  ∀ n, P225981883408269663.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P14290826923680117965

`A056220(A007310(6*(n+1)))`
-/

namespace A154514.P14290826923680117965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A007310 (6 * (n + 1))).toNat

end

end A154514.P14290826923680117965

namespace A154514

/-- `A056220(A007310(6*(n+1)))` -/
def P14290826923680117965.Spec : Prop :=
  ∀ n, P14290826923680117965.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P15612695311786813248

`A077221(Δ[A069129(n+1)+n²])`
-/

namespace A154514.P15612695311786813248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (f1 (n + 1) - f1 n).toNat

end

end A154514.P15612695311786813248

namespace A154514

/-- `A077221(Δ[A069129(n+1)+n²])` -/
def P15612695311786813248.Spec : Prop :=
  ∀ n, P15612695311786813248.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P4509577453613870733

`A056220(A017353(2*n+1)-2*n)`
-/

namespace A154514.P4509577453613870733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A017353 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A154514.P4509577453613870733

namespace A154514

/-- `A056220(A017353(2*n+1)-2*n)` -/
def P4509577453613870733.Spec : Prop :=
  ∀ n, P4509577453613870733.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P3982078597953770962

`A056220(A016789(A016789(2*n+1)))`
-/

namespace A154514.P3982078597953770962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A016789 (A016789 (2 * n + 1)).toNat).toNat

end

end A154514.P3982078597953770962

namespace A154514

/-- `A056220(A016789(A016789(2*n+1)))` -/
def P3982078597953770962.Spec : Prop :=
  ∀ n, P3982078597953770962.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P14689161316042742290

`A056220(A056020(A147601(2*n+1)))`
-/

namespace A154514.P14689161316042742290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A056020 (A147601 (2 * n + 1)).toNat).toNat

end

end A154514.P14689161316042742290

namespace A154514

/-- `A056220(A056020(A147601(2*n+1)))` -/
def P14689161316042742290.Spec : Prop :=
  ∀ n, P14689161316042742290.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P3239768438904493919

`A213034(A350055(n))`
-/

namespace A154514.P3239768438904493919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213034 (A350055 n).toNat

end

end A154514.P3239768438904493919

namespace A154514

/-- `A213034(A350055(n))` -/
def P3239768438904493919.Spec : Prop :=
  ∀ n, P3239768438904493919.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P3705728200317862960

`A105638(A044102(n+1))`
-/

namespace A154514.P3705728200317862960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A044102 (n + 1)).toNat

end

end A154514.P3705728200317862960

namespace A154514

/-- `A105638(A044102(n+1))` -/
def P3705728200317862960.Spec : Prop :=
  ∀ n, P3705728200317862960.a n = A154514 (n + 1)

end A154514

/-! ## A154514.P4848144818605826738

`A194274(A017629(2*n+n+2))`
-/

namespace A154514.P4848144818605826738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A017629 (2 * n + (n + 2))).toNat

end

end A154514.P4848144818605826738

namespace A154514

/-- `A194274(A017629(2*n+n+2))` -/
def P4848144818605826738.Spec : Prop :=
  ∀ n, P4848144818605826738.a n = A154514 (n + 1)

end A154514

/-!
# A154515: a(n) = 648*n^2 + 72*n + 1.

The programs for A154515, the canonical program `A154515.P13234221948631977921` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154515 has offset 1).

The definition of A154515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `648*(n+1)²+72*(n+1)+1` (program `A154515.P13234221948631977921`, by `A154515.P13234221948631977921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154515.P4268015479892022322

`ogf((721+574x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154515.P4268015479892022322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [721, 574, 1] [1, -3, 3, -1] n

end

end A154515.P4268015479892022322

namespace A154515

/-- `ogf((721+574x+x^2)/(1-3x+3x^2-x^3))` -/
def P4268015479892022322.Spec : Prop :=
  ∀ n, P4268015479892022322.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P13234221948631977921

`648*(n+1)²+72*(n+1)+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154515

/-- `648*(n+1)²+72*(n+1)+1` -/
def P13234221948631977921.Spec : Prop :=
  ∀ n, (P13234221948631977921.a n : ℤ) = A154515 (n + 1)

theorem P13234221948631977921.correct : P13234221948631977921.Spec := by
  intro n
  simp only [A154515, Nat.add_sub_cancel]

end A154515

/-! ## A154515.P4584920747145019081

`A081275(6*(n+1))`
-/

namespace A154515.P4584920747145019081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (6 * (n + 1))

end

end A154515.P4584920747145019081

namespace A154515

/-- `A081275(6*(n+1))` -/
def P4584920747145019081.Spec : Prop :=
  ∀ n, P4584920747145019081.a n = A154515 (n + 1)

theorem P4584920747145019081.correct : P4584920747145019081.Spec := by
  intro n
  simp only [A154515, Nat.add_sub_cancel, A154515.P4584920747145019081.a, A154515.P13234221948631977921.a, A081275, A081275.P11714172675934927490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154515

/-! ## A154515.P16603803441538102885

`A069129(9*n+10)`
-/

namespace A154515.P16603803441538102885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (9 * n + 10)

end

end A154515.P16603803441538102885

namespace A154515

/-- `A069129(9*n+10)` -/
def P16603803441538102885.Spec : Prop :=
  ∀ n, P16603803441538102885.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P4143753746305546049

`xor(1, A035008(9*(n+1)))`
-/

namespace A154515.P4143753746305546049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A035008 (9 * (n + 1)))

end

end A154515.P4143753746305546049

namespace A154515

/-- `xor(1, A035008(9*(n+1)))` -/
def P4143753746305546049.Spec : Prop :=
  ∀ n, P4143753746305546049.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P4666128548724920351

`A298039(A008594(n+1))`
-/

namespace A154515.P4666128548724920351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (A008594 (n + 1)).toNat

end

end A154515.P4666128548724920351

namespace A154515

/-- `A298039(A008594(n+1))` -/
def P4666128548724920351.Spec : Prop :=
  ∀ n, P4666128548724920351.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P4794114194691174795

`A298032(A017533(n+1))`
-/

namespace A154515.P4794114194691174795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298032 (A017533 (n + 1)).toNat

end

end A154515.P4794114194691174795

namespace A154515

/-- `A298032(A017533(n+1))` -/
def P4794114194691174795.Spec : Prop :=
  ∀ n, P4794114194691174795.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P16499172885902377948

`A298039(A017653(n)+1)`
-/

namespace A154515.P16499172885902377948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (A017653 n + 1).toNat

end

end A154515.P16499172885902377948

namespace A154515

/-- `A298039(A017653(n)+1)` -/
def P16499172885902377948.Spec : Prop :=
  ∀ n, P16499172885902377948.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P13682847334695603485

`A298039(A008486(A008486(n+1)+n+1))`
-/

namespace A154515.P13682847334695603485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (A008486 (A008486 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A154515.P13682847334695603485

namespace A154515

/-- `A298039(A008486(A008486(n+1)+n+1))` -/
def P13682847334695603485.Spec : Prop :=
  ∀ n, P13682847334695603485.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P5857059110708555978

`A056220(3*6*(n+1)+1)`
-/

namespace A154515.P5857059110708555978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (3 * (6 * (n + 1)) + 1)

end

end A154515.P5857059110708555978

namespace A154515

/-- `A056220(3*6*(n+1)+1)` -/
def P5857059110708555978.Spec : Prop :=
  ∀ n, P5857059110708555978.a n = A154515 (n + 1)

theorem P5857059110708555978.correct : P5857059110708555978.Spec := by
  intro n
  simp only [A154515, Nat.add_sub_cancel, A154515.P5857059110708555978.a, A154515.P13234221948631977921.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154515

/-! ## A154515.P11595410758880723472

`A249356(A008600(n+1))`
-/

namespace A154515.P11595410758880723472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A008600 (n + 1)).toNat

end

end A154515.P11595410758880723472

namespace A154515

/-- `A249356(A008600(n+1))` -/
def P11595410758880723472.Spec : Prop :=
  ∀ n, P11595410758880723472.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P7086267874738244574

`A249356(A350522(n)+2)`
-/

namespace A154515.P7086267874738244574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A350522 n + 2).toNat

end

end A154515.P7086267874738244574

namespace A154515

/-- `A249356(A350522(n)+2)` -/
def P7086267874738244574.Spec : Prop :=
  ∀ n, P7086267874738244574.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P2469582109336267916

`A249356(A161705(n+1)-1)`
-/

namespace A154515.P2469582109336267916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A161705 (n + 1) - 1).toNat

end

end A154515.P2469582109336267916

namespace A154515

/-- `A249356(A161705(n+1)-1)` -/
def P2469582109336267916.Spec : Prop :=
  ∀ n, P2469582109336267916.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P14087204795313801786

`A249356(A215137(n+1)+n)`
-/

namespace A154515.P14087204795313801786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A215137 (n + 1) + (n : ℤ)).toNat

end

end A154515.P14087204795313801786

namespace A154515

/-- `A249356(A215137(n+1)+n)` -/
def P14087204795313801786.Spec : Prop :=
  ∀ n, P14087204795313801786.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P594047340041980864

`A249356(A158057(n+1)+2*n+1)`
-/

namespace A154515.P594047340041980864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A158057 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A154515.P594047340041980864

namespace A154515

/-- `A249356(A158057(n+1)+2*n+1)` -/
def P594047340041980864.Spec : Prop :=
  ∀ n, P594047340041980864.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P14009290827372844695

`A077221(Δ[A051870(n+1)+n²+n])`
-/

namespace A154515.P14009290827372844695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 (n + 1) + (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (f1 (n + 1) - f1 n).toNat

end

end A154515.P14009290827372844695

namespace A154515

/-- `A077221(Δ[A051870(n+1)+n²+n])` -/
def P14009290827372844695.Spec : Prop :=
  ∀ n, P14009290827372844695.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P903290641319182306

`A249356(A128470(n+1)-A017533(n+1))`
-/

namespace A154515.P903290641319182306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A128470 (n + 1) - A017533 (n + 1)).toNat

end

end A154515.P903290641319182306

namespace A154515

/-- `A249356(A128470(n+1)-A017533(n+1))` -/
def P903290641319182306.Spec : Prop :=
  ∀ n, P903290641319182306.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P1025865071908480031

`A074148(A158065(n+1))`
-/

namespace A154515.P1025865071908480031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A158065 (n + 1)).toNat

end

end A154515.P1025865071908480031

namespace A154515

/-- `A074148(A158065(n+1))` -/
def P1025865071908480031.Spec : Prop :=
  ∀ n, P1025865071908480031.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P7829729945733460280

`A326658(A008586(9*(n+1)))`
-/

namespace A154515.P7829729945733460280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A008586 (9 * (n + 1))).toNat

end

end A154515.P7829729945733460280

namespace A154515

/-- `A326658(A008586(9*(n+1)))` -/
def P7829729945733460280.Spec : Prop :=
  ∀ n, P7829729945733460280.a n = A154515 (n + 1)

end A154515

/-! ## A154515.P11939214047110458521

`A326658(A008588(A008588(n+1)))`
-/

namespace A154515.P11939214047110458521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A008588 (A008588 (n + 1)).toNat).toNat

end

end A154515.P11939214047110458521

namespace A154515

/-- `A326658(A008588(A008588(n+1)))` -/
def P11939214047110458521.Spec : Prop :=
  ∀ n, P11939214047110458521.a n = A154515 (n + 1)

end A154515

/-!
# A154516: a(n) = 9n^2 - n.

The programs for A154516, the canonical program `A154516.P16195019807221984260` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154516 has offset 1).

The definition of A154516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²-(n+1)` (program `A154516.P16195019807221984260`, by `A154516.P16195019807221984260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154516.P14424382055749390185

`ogf((8+10x)/(1-3x+3x^2-x^3))`
-/

namespace A154516.P14424382055749390185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 10] [1, -3, 3, -1] n

end

end A154516.P14424382055749390185

namespace A154516

/-- `ogf((8+10x)/(1-3x+3x^2-x^3))` -/
def P14424382055749390185.Spec : Prop :=
  ∀ n, P14424382055749390185.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P16195019807221984260

`9*(n+1)²-(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154516

/-- `9*(n+1)²-(n+1)` -/
def P16195019807221984260.Spec : Prop :=
  ∀ n, P16195019807221984260.a n = A154516 (n + 1)

theorem P16195019807221984260.correct : P16195019807221984260.Spec := by
  intro n
  simp only [A154516, Nat.add_sub_cancel]

end A154516

/-! ## A154516.P16858808686537226615

`∑[a(n-1)+18]` with `a(0)=8`
-/

namespace A154516.P16858808686537226615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154516.P16858808686537226615

namespace A154516

/-- `∑[a(n-1)+18]` -/
def P16858808686537226615.Spec : Prop :=
  ∀ n, (P16858808686537226615.a n : ℤ) = A154516 (n + 1)

end A154516

/-! ## A154516.P4165589840940124823

`∑[ogf((8+10x)/(1-2x+x^2))]`
-/

namespace A154516.P4165589840940124823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154516.P4165589840940124823

namespace A154516

/-- `∑[ogf((8+10x)/(1-2x+x^2))]` -/
def P4165589840940124823.Spec : Prop :=
  ∀ n, P4165589840940124823.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P773401163272775388

`lcm(9*n+8, n+1)`
-/

namespace A154516.P773401163272775388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (9 * n + 8) (n + 1)

end

end A154516.P773401163272775388

namespace A154516

/-- `lcm(9*n+8, n+1)` -/
def P773401163272775388.Spec : Prop :=
  ∀ n, (P773401163272775388.a n : ℤ) = A154516 (n + 1)

end A154516

/-! ## A154516.P5639392007302599269

`record[(3*(1-n))²-abs(1-n)]`
-/

namespace A154516.P5639392007302599269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (1 - (n : ℤ))) ^ 2 - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154516.P5639392007302599269

namespace A154516

/-- `record[(3*(1-n))²-abs(1-n)]` -/
def P5639392007302599269.Spec : Prop :=
  ∀ n, P5639392007302599269.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P4315304131429501879

`(n+1)*(a(n-1)/n+9)` with `a(0)=8`
-/

namespace A154516.P4315304131429501879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (n : ℚ) + 9)

end

end A154516.P4315304131429501879

namespace A154516

/-- `(n+1)*(a(n-1)/n+9)` -/
def P4315304131429501879.Spec : Prop :=
  ∀ n, P4315304131429501879.a n = (A154516 (n + 1) : ℚ)

end A154516

/-! ## A154516.P13941300235718737345

`2*(C(2*n+n+3, 2)+n+1)`
-/

namespace A154516.P13941300235718737345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (2 * n + (n + 3)) 2 + (n + 1))

end

end A154516.P13941300235718737345

namespace A154516

/-- `2*(C(2*n+n+3, 2)+n+1)` -/
def P13941300235718737345.Spec : Prop :=
  ∀ n, (P13941300235718737345.a n : ℤ) = A154516 (n + 1)

theorem P13941300235718737345.correct : P13941300235718737345.Spec := by
  intro n
  simp only [A154516, Nat.add_sub_cancel, A154516.P13941300235718737345.a, A154516.P16195019807221984260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154516

/-! ## A154516.P7915730987120307484

`(Δ[(2*n+1)²]+gcd(n, 2*n))*(n+1)`
-/

namespace A154516.P7915730987120307484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd n (2 * n) : ℤ)) * (n + 1 : ℤ)

end

end A154516.P7915730987120307484

namespace A154516

/-- `(Δ[(2*n+1)²]+gcd(n, 2*n))*(n+1)` -/
def P7915730987120307484.Spec : Prop :=
  ∀ n, P7915730987120307484.a n = A154516 (n + 1)

theorem P7915730987120307484.correct : P7915730987120307484.Spec := by
  intro n
  simp only [A154516, Nat.add_sub_cancel, A154516.P7915730987120307484.f1, A154516.P7915730987120307484.a, A154516.P16195019807221984260.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A154516

/-! ## A154516.P13687505014517019878

`∑[A082286(n)-2]`
-/

namespace A154516.P13687505014517019878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154516.P13687505014517019878

namespace A154516

/-- `∑[A082286(n)-2]` -/
def P13687505014517019878.Spec : Prop :=
  ∀ n, P13687505014517019878.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P18251102212488175816

`∑[A242215(n)+3]`
-/

namespace A154516.P18251102212488175816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154516.P18251102212488175816

namespace A154516

/-- `∑[A242215(n)+3]` -/
def P18251102212488175816.Spec : Prop :=
  ∀ n, P18251102212488175816.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P6744060681215062235

`∑[2*A017209(n)]`
-/

namespace A154516.P6744060681215062235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154516.P6744060681215062235

namespace A154516

/-- `∑[2*A017209(n)]` -/
def P6744060681215062235.Spec : Prop :=
  ∀ n, P6744060681215062235.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P10144782904207039748

`∑[A350521(n)+4]`
-/

namespace A154516.P10144782904207039748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350521 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154516.P10144782904207039748

namespace A154516

/-- `∑[A350521(n)+4]` -/
def P10144782904207039748.Spec : Prop :=
  ∀ n, P10144782904207039748.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P2639229511080597026

`∑[A144619(n)-n]`
-/

namespace A154516.P2639229511080597026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154516.P2639229511080597026

namespace A154516

/-- `∑[A144619(n)-n]` -/
def P2639229511080597026.Spec : Prop :=
  ∀ n, P2639229511080597026.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P14474512611913190825

`2*(A081270(n)+1)`
-/

namespace A154516.P14474512611913190825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081270 n + 1)

end

end A154516.P14474512611913190825

namespace A154516

/-- `2*(A081270(n)+1)` -/
def P14474512611913190825.Spec : Prop :=
  ∀ n, P14474512611913190825.a n = A154516 (n + 1)

end A154516

/-! ## A154516.P2943327390705413483

`A178574(n+1)/2`
-/

namespace A154516.P2943327390705413483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178574 (n + 1) : ℚ) / 2

end

end A154516.P2943327390705413483

namespace A154516

/-- `A178574(n+1)/2` -/
def P2943327390705413483.Spec : Prop :=
  ∀ n, P2943327390705413483.a n = (A154516 (n + 1) : ℚ)

theorem P2943327390705413483.correct : P2943327390705413483.Spec := by
  intro n
  simp only [A154516, Nat.add_sub_cancel, A154516.P2943327390705413483.a, A154516.P16195019807221984260.a, A178574, A178574.P3315712600721893133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154516

/-! ## A154516.P16747281362304240140

`A304380(n+1)/4`
-/

namespace A154516.P16747281362304240140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304380 (n + 1) : ℚ) / 4

end

end A154516.P16747281362304240140

namespace A154516

/-- `A304380(n+1)/4` -/
def P16747281362304240140.Spec : Prop :=
  ∀ n, P16747281362304240140.a n = (A154516 (n + 1) : ℚ)

theorem P16747281362304240140.correct : P16747281362304240140.Spec := by
  intro n
  simp only [A154516, Nat.add_sub_cancel, A154516.P16747281362304240140.a, A154516.P16195019807221984260.a, A304380, A304380.P4205740382854217177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154516

/-! ## A154516.P8914176537865330147

`A277991(n+1)/9`
-/

namespace A154516.P8914176537865330147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277991 (n + 1) : ℚ) / 9

end

end A154516.P8914176537865330147

namespace A154516

/-- `A277991(n+1)/9` -/
def P8914176537865330147.Spec : Prop :=
  ∀ n, P8914176537865330147.a n = (A154516 (n + 1) : ℚ)

theorem P8914176537865330147.correct : P8914176537865330147.Spec := by
  intro n
  simp only [A154516, Nat.add_sub_cancel, A154516.P8914176537865330147.a, A154516.P16195019807221984260.a, A277991, A277991.P12251535552341815333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154516

/-! ## A154516.P7908463524450879128

`(n+1)*A017257(n)`
-/

namespace A154516.P7908463524450879128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017257 n

end

end A154516.P7908463524450879128

namespace A154516

/-- `(n+1)*A017257(n)` -/
def P7908463524450879128.Spec : Prop :=
  ∀ n, P7908463524450879128.a n = A154516 (n + 1)

theorem P7908463524450879128.correct : P7908463524450879128.Spec := by
  intro n
  simp only [A154516, Nat.add_sub_cancel, A154516.P7908463524450879128.a, A154516.P16195019807221984260.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154516

/-!
# A154517: a(n) = 9*n^2 + n.

The programs for A154517, the canonical program `A154517.P15464551116636173993` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154517 has offset 1).

The definition of A154517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²+n+1` (program `A154517.P15464551116636173993`, by `A154517.P15464551116636173993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154517.P13452169381846174157

`ogf((10+8x)/(1-3x+3x^2-x^3))`
-/

namespace A154517.P13452169381846174157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 8] [1, -3, 3, -1] n

end

end A154517.P13452169381846174157

namespace A154517

/-- `ogf((10+8x)/(1-3x+3x^2-x^3))` -/
def P13452169381846174157.Spec : Prop :=
  ∀ n, P13452169381846174157.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P15464551116636173993

`9*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154517

/-- `9*(n+1)²+n+1` -/
def P15464551116636173993.Spec : Prop :=
  ∀ n, (P15464551116636173993.a n : ℤ) = A154517 (n + 1)

theorem P15464551116636173993.correct : P15464551116636173993.Spec := by
  intro n
  simp only [A154517, Nat.add_sub_cancel]

end A154517

/-! ## A154517.P3140058167322515153

`∑[filter[2*n, dr(#)]]`
-/

namespace A154517.P3140058167322515153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f2 j : ℤ) = 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154517.P3140058167322515153

namespace A154517

/-- `∑[filter[2*n, dr(#)]]` -/
def P3140058167322515153.Spec : Prop :=
  ∀ n, (P3140058167322515153.a n : ℤ) = A154517 (n + 1)

end A154517

/-! ## A154517.P14412319915852401794

`∑[a(n-1)+18]` with `a(0)=10`
-/

namespace A154517.P14412319915852401794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154517.P14412319915852401794

namespace A154517

/-- `∑[a(n-1)+18]` -/
def P14412319915852401794.Spec : Prop :=
  ∀ n, (P14412319915852401794.a n : ℤ) = A154517 (n + 1)

end A154517

/-! ## A154517.P699060449469398231

`∑[ogf((10+8x)/(1-2x+x^2))]`
-/

namespace A154517.P699060449469398231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154517.P699060449469398231

namespace A154517

/-- `∑[ogf((10+8x)/(1-2x+x^2))]` -/
def P699060449469398231.Spec : Prop :=
  ∀ n, P699060449469398231.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P10509668730851212760

`lcm(9*n+10, n+1)`
-/

namespace A154517.P10509668730851212760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (9 * n + 10) (n + 1)

end

end A154517.P10509668730851212760

namespace A154517

/-- `lcm(9*n+10, n+1)` -/
def P10509668730851212760.Spec : Prop :=
  ∀ n, (P10509668730851212760.a n : ℤ) = A154517 (n + 1)

end A154517

/-! ## A154517.P18234829718548190060

`(n+1)*(a(n-1)/n+9)` with `a(0)=10`
-/

namespace A154517.P18234829718548190060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / (n : ℚ) + 9)

end

end A154517.P18234829718548190060

namespace A154517

/-- `(n+1)*(a(n-1)/n+9)` -/
def P18234829718548190060.Spec : Prop :=
  ∀ n, P18234829718548190060.a n = (A154517 (n + 1) : ℚ)

end A154517

/-! ## A154517.P17003624791774768816

`∑[A082286(n)]`
-/

namespace A154517.P17003624791774768816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154517.P17003624791774768816

namespace A154517

/-- `∑[A082286(n)]` -/
def P17003624791774768816.Spec : Prop :=
  ∀ n, P17003624791774768816.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P10769691990364264033

`∑[2*A017221(n)]`
-/

namespace A154517.P10769691990364264033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154517.P10769691990364264033

namespace A154517

/-- `∑[2*A017221(n)]` -/
def P10769691990364264033.Spec : Prop :=
  ∀ n, P10769691990364264033.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P9837387534600020111

`∑[A242215(n)+5]`
-/

namespace A154517.P9837387534600020111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154517.P9837387534600020111

namespace A154517

/-- `∑[A242215(n)+5]` -/
def P9837387534600020111.Spec : Prop :=
  ∀ n, P9837387534600020111.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P1469097989911097139

`2*A022267(n+1)`
-/

namespace A154517.P1469097989911097139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022267 (n + 1)

end

end A154517.P1469097989911097139

namespace A154517

/-- `2*A022267(n+1)` -/
def P1469097989911097139.Spec : Prop :=
  ∀ n, P1469097989911097139.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P7127294316231004478

`2*(A178977(n)-n)`
-/

namespace A154517.P7127294316231004478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178977 n - (n : ℤ))

end

end A154517.P7127294316231004478

namespace A154517

/-- `2*(A178977(n)-n)` -/
def P7127294316231004478.Spec : Prop :=
  ∀ n, P7127294316231004478.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P18289739697855154633

`(n+1)*A017173(n+1)`
-/

namespace A154517.P18289739697855154633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017173 (n + 1)

end

end A154517.P18289739697855154633

namespace A154517

/-- `(n+1)*A017173(n+1)` -/
def P18289739697855154633.Spec : Prop :=
  ∀ n, P18289739697855154633.a n = A154517 (n + 1)

theorem P18289739697855154633.correct : P18289739697855154633.Spec := by
  intro n
  simp only [A154517, Nat.add_sub_cancel, A154517.P18289739697855154633.a, A154517.P15464551116636173993.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154517

/-! ## A154517.P13390340024236075631

`A258721(n)%A165806(n+1)`
-/

namespace A154517.P13390340024236075631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258721 n) (A165806 (n + 1))

end

end A154517.P13390340024236075631

namespace A154517

/-- `A258721(n)%A165806(n+1)` -/
def P13390340024236075631.Spec : Prop :=
  ∀ n, P13390340024236075631.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P17141985876093099409

`A154377(n+1)%A157474(n+1)`
-/

namespace A154517.P17141985876093099409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154377 (n + 1)) (A157474 (n + 1))

end

end A154517.P17141985876093099409

namespace A154517

/-- `A154377(n+1)%A157474(n+1)` -/
def P17141985876093099409.Spec : Prop :=
  ∀ n, P17141985876093099409.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P11793446439939339893

`A157737(n+1)%A156635(n+1)`
-/

namespace A154517.P11793446439939339893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157737 (n + 1)) (A156635 (n + 1))

end

end A154517.P11793446439939339893

namespace A154517

/-- `A157737(n+1)%A156635(n+1)` -/
def P11793446439939339893.Spec : Prop :=
  ∀ n, P11793446439939339893.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P5553174714553331861

`A157953(n+1)%A157286(n+1)`
-/

namespace A154517.P5553174714553331861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157953 (n + 1)) (A157286 (n + 1))

end

end A154517.P5553174714553331861

namespace A154517

/-- `A157953(n+1)%A157286(n+1)` -/
def P5553174714553331861.Spec : Prop :=
  ∀ n, P5553174714553331861.a n = A154517 (n + 1)

end A154517

/-! ## A154517.P4888655183822978645

`A157514(n+1)%A158058(n+1)`
-/

namespace A154517.P4888655183822978645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157514 (n + 1)) (A158058 (n + 1))

end

end A154517.P4888655183822978645

namespace A154517

/-- `A157514(n+1)%A158058(n+1)` -/
def P4888655183822978645.Spec : Prop :=
  ∀ n, P4888655183822978645.a n = A154517 (n + 1)

end A154517

/-!
# A154518: a(n) = 216*n - 12.

The programs for A154518, the canonical program `A154518.P8612921497044082557` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154518 has offset 1).

The definition of A154518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `216*(n+1)-12` (program `A154518.P8612921497044082557`, by `A154518.P8612921497044082557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154518.P8612921497044082557

`216*(n+1)-12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154518

/-- `216*(n+1)-12` -/
def P8612921497044082557.Spec : Prop :=
  ∀ n, P8612921497044082557.a n = A154518 (n + 1)

theorem P8612921497044082557.correct : P8612921497044082557.Spec := by
  intro n
  simp only [A154518, Nat.add_sub_cancel]

end A154518

/-!
# A154519: a(n) = 216*n + 12.

The programs for A154519, the canonical program `A154519.P9826347447112311014` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154519 has offset 1).

The definition of A154519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `216*(n+1)+12` (program `A154519.P9826347447112311014`, by `A154519.P9826347447112311014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154519.P9826347447112311014

`216*(n+1)+12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154519

/-- `216*(n+1)+12` -/
def P9826347447112311014.Spec : Prop :=
  ∀ n, (P9826347447112311014.a n : ℤ) = A154519 (n + 1)

theorem P9826347447112311014.correct : P9826347447112311014.Spec := by
  intro n
  simp only [A154519, Nat.add_sub_cancel]

end A154519

/-!
# A154520: The prime(n)-th digit of the concatenated nonprimes.

The programs for A154520, there is no canonical definition to state claims against.
-/

/-! ## A154520.P2900117542629478547

`A129808(p?[round(sqrt(n)+n)]-2)`
-/

namespace A154520.P2900117542629478547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat + 1)

end

end A154520.P2900117542629478547

/-! ## A154520.P7079924386126232727

`A129808(record[A007431(n)])`
-/

namespace A154520.P7079924386126232727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154520.P7079924386126232727

/-! ## A154520.P17638303955584976586

`A129808(A040976(n+1))`
-/

namespace A154520.P17638303955584976586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A040976 (n + 1)).toNat + 1)

end

end A154520.P17638303955584976586

/-! ## A154520.P544419600827800465

`A129808(Δ[A007504(n)]-2)`
-/

namespace A154520.P544419600827800465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (n + 1) - f1 n - 2).toNat + 1)

end

end A154520.P544419600827800465

/-! ## A154520.P13127837175633224339

`A129808(record[A046665(n+1)])`
-/

namespace A154520.P13127837175633224339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154520.P13127837175633224339

/-! ## A154520.P1348363661021594233

`A129808(record[A049087(n+1)])`
-/

namespace A154520.P1348363661021594233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154520.P1348363661021594233

/-! ## A154520.P7793592901710590810

`A129808(record[A037225(n)-1])`
-/

namespace A154520.P7793592901710590810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154520.P7793592901710590810

/-! ## A154520.P11380217099581712568

`A129808(A006093(n+1)-1)`
-/

namespace A154520.P11380217099581712568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A006093 (n + 1) - 1).toNat + 1)

end

end A154520.P11380217099581712568

/-! ## A154520.P18212363885346574074

`A129808(A000040(n+1)-2)`
-/

namespace A154520.P18212363885346574074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A000040 (n + 1) - 2).toNat + 1)

end

end A154520.P18212363885346574074

/-! ## A154520.P12381862524720691714

`A129808(A008578(n+2)-2)`
-/

namespace A154520.P12381862524720691714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A008578 (n + 2) - 2).toNat + 1)

end

end A154520.P12381862524720691714

/-! ## A154520.P7930364030113855273

`A129808(eq[2, A000005(n+2)])`
-/

namespace A154520.P7930364030113855273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154520.P7930364030113855273

/-! ## A154520.P126919299604091320

`A129808(eq[2, A005128(n+2)])`
-/

namespace A154520.P126919299604091320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154520.P126919299604091320

/-! ## A154520.P9138552904938102796

`A129808(eq[2, A005128(n)]-2)`
-/

namespace A154520.P9138552904938102796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 + 1)

end

end A154520.P9138552904938102796

/-! ## A154520.P8663802588511281407

`A129808(sqrt(A001248(n+1))-2)`
-/

namespace A154520.P8663802588511281407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) - 2)).toNat + 1)

end

end A154520.P8663802588511281407

/-! ## A154520.P195128712610167913

`A129808(record[A000010(n+1)-1])`
-/

namespace A154520.P195128712610167913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154520.P195128712610167913

/-! ## A154520.P1940625848587715832

`A129808(record[A006530(n+2)-2])`
-/

namespace A154520.P1940625848587715832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154520.P1940625848587715832

/-! ## A154520.P16510611361877531456

`A129808(record[A020639(n+2)-2])`
-/

namespace A154520.P16510611361877531456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154520.P16510611361877531456

/-! ## A154520.P14364801278092064896

`A129808(comp[A018252(n+1)-2])`
-/

namespace A154520.P14364801278092064896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A154520.P14364801278092064896

/-! ## A154520.P15368426282732440643

`A129808(eq[n, A000010(n+1)]-1)`
-/

namespace A154520.P15368426282732440643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1 + 1)

end

end A154520.P15368426282732440643

/-! ## A154520.P4555980882172454266

`A129808(eq[n+1, A006530(n+2)-1])`
-/

namespace A154520.P4555980882172454266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154520.P4555980882172454266

/-!
# A154521: The prime(n)-th digit of the concatenated positive nonprimes.

The programs for A154521, there is no canonical definition to state claims against.
-/

/-! ## A154521.P15364233633549710877

`A129808(p?[round(sqrt(n)+n)]-1)`
-/

namespace A154521.P15364233633549710877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A154521.P15364233633549710877

/-! ## A154521.P1776933786488848274

`A129808(record[A037225(n)])`
-/

namespace A154521.P1776933786488848274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P1776933786488848274

/-! ## A154521.P15298694542445875470

`A129808(A006093(n+1))`
-/

namespace A154521.P15298694542445875470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A006093 (n + 1)).toNat + 1)

end

end A154521.P15298694542445875470

/-! ## A154521.P15071289297973308888

`A129808(Δ[A007504(n)]-1)`
-/

namespace A154521.P15071289297973308888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (n + 1) - f1 n - 1).toNat + 1)

end

end A154521.P15071289297973308888

/-! ## A154521.P17441413854246180743

`A129808(record[A000010(n+1)])`
-/

namespace A154521.P17441413854246180743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P17441413854246180743

/-! ## A154521.P16507732351126534512

`A129808(record[A007431(n)+1])`
-/

namespace A154521.P16507732351126534512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P16507732351126534512

/-! ## A154521.P3323858819743670240

`A129808(A040976(n+1)+1)`
-/

namespace A154521.P3323858819743670240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A040976 (n + 1) + 1).toNat + 1)

end

end A154521.P3323858819743670240

/-! ## A154521.P9554445783486753477

`A129808(A000040(n+1)-1)`
-/

namespace A154521.P9554445783486753477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A000040 (n + 1) - 1).toNat + 1)

end

end A154521.P9554445783486753477

/-! ## A154521.P15365476616703440539

`A129808(A008578(n+2)-1)`
-/

namespace A154521.P15365476616703440539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((A008578 (n + 2) - 1).toNat + 1)

end

end A154521.P15365476616703440539

/-! ## A154521.P12616102518835519904

`A129808(eq[2, A000005(n+1)])`
-/

namespace A154521.P12616102518835519904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154521.P12616102518835519904

/-! ## A154521.P3073525344258089572

`A129808(eq[2, A005128(n+1)])`
-/

namespace A154521.P3073525344258089572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154521.P3073525344258089572

/-! ## A154521.P4265170869350529003

`A129808(eq[2, A005128(n)]-1)`
-/

namespace A154521.P4265170869350529003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1 + 1)

end

end A154521.P4265170869350529003

/-! ## A154521.P5414423084757787407

`A129808(eq[n, A000010(n+1)])`
-/

namespace A154521.P5414423084757787407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A154521.P5414423084757787407

/-! ## A154521.P14682857723468478602

`A129808(sqrt(A001248(n+1))-1)`
-/

namespace A154521.P14682857723468478602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) - 1)).toNat + 1)

end

end A154521.P14682857723468478602

/-! ## A154521.P1951292451334865130

`A129808(record[A049087(n+1)+1])`
-/

namespace A154521.P1951292451334865130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P1951292451334865130

/-! ## A154521.P14164772995652296696

`A129808(record[A006530(n+2)-1])`
-/

namespace A154521.P14164772995652296696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P14164772995652296696

/-! ## A154521.P17377641043332540244

`A129808(record[A014963(n+2)-1])`
-/

namespace A154521.P17377641043332540244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P17377641043332540244

/-! ## A154521.P908818008338360889

`A129808(record[A020639(n+2)-1])`
-/

namespace A154521.P908818008338360889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P908818008338360889

/-! ## A154521.P15672134028255327535

`A129808(comp[A018252(n+1)-1])`
-/

namespace A154521.P15672134028255327535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A154521.P15672134028255327535

/-! ## A154521.P12037330986109802320

`A129808(record[A046665(n+1)+1])`
-/

namespace A154521.P12037330986109802320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A154521.P12037330986109802320

/-!
# A154523: Numbers k such that the smallest decimal digit of k equals the smallest decimal digit of prime(k).

The programs for A154523, there is no canonical definition to state claims against.
-/

/-! ## A154523.P5169565813020871075

`eq[A054054(n+1), A060420(n+1)]+1`
-/

namespace A154523.P5169565813020871075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A154523.P5169565813020871075

/-! ## A154523.P1796972765304922298

`eq[A054054(n), A060420(A028310(n))]`
-/

namespace A154523.P1796972765304922298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154523.P1796972765304922298

/-! ## A154523.P7687079299073544615

`eq[A004186(n)%10, A060420(A028310(n))]`
-/

namespace A154523.P7687079299073544615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154523.P7687079299073544615

/-! ## A154523.P16786038094016755362

`eq[A227362(n)%10, A060420(A028310(n))]`
-/

namespace A154523.P16786038094016755362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227362 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154523.P16786038094016755362

/-! ## A154523.P10253316161225188931

`eq[A355221(n)%10, A060420(A028310(n))]`
-/

namespace A154523.P10253316161225188931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355221 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154523.P10253316161225188931

/-! ## A154523.P15205196119404382988

`eq[A054054(A008578(n+1)), A054054(n)]`
-/

namespace A154523.P15205196119404382988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154523.P15205196119404382988

/-! ## A154523.P12476711272301539659

`eq[A054054(A175787(n+1)), A054054(n)]`
-/

namespace A154523.P12476711272301539659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A175787 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154523.P12476711272301539659

/-! ## A154523.P4262908994559096669

`eq[A054054(n), A060420(A233583(n+1))]`
-/

namespace A154523.P4262908994559096669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154523.P4262908994559096669

/-!
# A154524: Primes p such that lcm(1,2,3,...,p-2,p-1,p) - 1 is prime.

The programs for A154524, there is no canonical definition to state claims against.
-/

/-! ## A154524.P17080283044131481001

`p?[A385564(n+1)]`
-/

namespace A154524.P17080283044131481001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154524.P17080283044131481001

/-! ## A154524.P3698600947081144109

`filter[A385564(n+1), A008966(#)]`
-/

namespace A154524.P3698600947081144109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A154524.P3698600947081144109

/-! ## A154524.P9542770921328509431

`filter[A385564(n+1), A010051(#)]`
-/

namespace A154524.P9542770921328509431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A154524.P9542770921328509431

/-! ## A154524.P4888156460935000423

`filter[A385564(n+1), A039982(#)]`
-/

namespace A154524.P4888156460935000423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A154524.P4888156460935000423

/-! ## A154524.P17808340956383795275

`filter[A385564(n+1), A093719(#)]`
-/

namespace A154524.P17808340956383795275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A154524.P17808340956383795275

/-!
# A154525: Primes p such that lcm(1,2,3,...,p-2,p-1,p) + 1 is prime.

The programs for A154525, there is no canonical definition to state claims against.
-/

/-! ## A154525.P2371745225800378585

`p?[A051453(n+1)]`
-/

namespace A154525.P2371745225800378585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154525.P2371745225800378585

/-! ## A154525.P9603990760340342287

`record[A006530(A051453(n+2))]`
-/

namespace A154525.P9603990760340342287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051453 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154525.P9603990760340342287

/-! ## A154525.P349166361516753295

`filter[A051453(n+1), A010051(#)]`
-/

namespace A154525.P349166361516753295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A154525.P349166361516753295

/-! ## A154525.P1551064322058837038

`filter[A051453(n+1), A049240(#)]`
-/

namespace A154525.P1551064322058837038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A154525.P1551064322058837038

/-! ## A154525.P11820825537181738029

`filter[A051453(n+1), A066829(#)]`
-/

namespace A154525.P11820825537181738029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A154525.P11820825537181738029

/-!
# A154529: A090040 mod 9.

The programs for A154529, the canonical program `A154529.P17304074432521253088` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154529 has offset 0).

The definition of A154529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154529.P17304074432521253088

`ogf((1+4x-4x^2+2x^3+6x^4)/(1-x+x^3-x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154529

/-- `ogf((1+4x-4x^2+2x^3+6x^4)/(1-x+x^3-x^4))` -/
def P17304074432521253088.Spec : Prop :=
  ∀ n, P17304074432521253088.a n = A154529 n

theorem P17304074432521253088.correct : P17304074432521253088.Spec := by
  intro n
  simp only [A154529]

end A154529

/-!
# A154530: Primes that are a concatenation of 2*k and 2*k+1 or 2*k and 2*k-1 for some k.

The programs for A154530, there is no canonical definition to state claims against.
-/

/-! ## A154530.P7348764229535340583

`∪[A030458(n+1), A052089(n+1)]`
-/

namespace A154530.P7348764229535340583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154530.P7348764229535340583

/-! ## A154530.P16091468984602754005

`p?[A248378(n)]`
-/

namespace A154530.P16091468984602754005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154530.P16091468984602754005

/-! ## A154530.P11738038596913038178

`p?[∪[A052089(n+1), A030656(n)]]`
-/

namespace A154530.P11738038596913038178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052089 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154530.P11738038596913038178

/-! ## A154530.P1558954058250708485

`p?[∪[A127423(n+1), A030656(n)]]`
-/

namespace A154530.P1558954058250708485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154530.P1558954058250708485

/-! ## A154530.P8548771878191331620

`p?[∪[A001704(n+1), A052089(n+1)]]`
-/

namespace A154530.P8548771878191331620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052089 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154530.P8548771878191331620

/-! ## A154530.P7914334388610390672

`p?[∪[A127421(n+1), A127423(n+1)]]`
-/

namespace A154530.P7914334388610390672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154530.P7914334388610390672

/-!
# A154533: Number of constants of the form a^3*u + b*c*v, where a, b, c are linear, u of order n-3 and v of order n-2.

The programs for A154533, the canonical program `A154533.P16997671295737437792` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154533 has offset 0).

The definition of A154533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154533.P16997671295737437792

`n²-2*n+10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154533

/-- `n²-2*n+10` -/
def P16997671295737437792.Spec : Prop :=
  ∀ n, P16997671295737437792.a n = A154533 n

theorem P16997671295737437792.correct : P16997671295737437792.Spec := by
  intro n
  simp only [A154533]

end A154533

/-! ## A154533.P8632453866469603437

`ogf((10-21x+13x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154533.P8632453866469603437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -21, 13] [1, -3, 3, -1] n

end

end A154533.P8632453866469603437

namespace A154533

/-- `ogf((10-21x+13x^2)/(1-3x+3x^2-x^3))` -/
def P8632453866469603437.Spec : Prop :=
  ∀ n, P8632453866469603437.a n = A154533 n

end A154533

/-! ## A154533.P15172574261352645862

`∑[a(n-1)+2]` with `a(0)=10, a(1)=-1`
-/

namespace A154533.P15172574261352645862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, -1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154533.P15172574261352645862

namespace A154533

/-- `∑[a(n-1)+2]` -/
def P15172574261352645862.Spec : Prop :=
  ∀ n, P15172574261352645862.a n = A154533 n

end A154533

/-! ## A154533.P5873299449753012863

`abs(2*(C(n, 2)+4)+2-n)`
-/

namespace A154533.P5873299449753012863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (Nat.choose n 2 + 4) + 2 : ℤ) - (n : ℤ)|

end

end A154533.P5873299449753012863

namespace A154533

/-- `abs(2*(C(n, 2)+4)+2-n)` -/
def P5873299449753012863.Spec : Prop :=
  ∀ n, P5873299449753012863.a n = A154533 n

end A154533

/-! ## A154533.P12755442220050071273

`abs(2*n+a(n-1)-3)` with `a(0)=10`
-/

namespace A154533.P12755442220050071273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |(2 * n : ℤ) + (a (n - 1) - 3)|

end

end A154533.P12755442220050071273

namespace A154533

/-- `abs(2*n+a(n-1)-3)` -/
def P12755442220050071273.Spec : Prop :=
  ∀ n, P12755442220050071273.a n = A154533 n

end A154533

/-! ## A154533.P15818944764029868931

`abs(2*n-(3-a(n-1)))` with `a(0)=10`
-/

namespace A154533.P15818944764029868931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |(2 * n : ℤ) - (3 - a (n - 1))|

end

end A154533.P15818944764029868931

namespace A154533

/-- `abs(2*n-(3-a(n-1)))` -/
def P15818944764029868931.Spec : Prop :=
  ∀ n, P15818944764029868931.a n = A154533 n

end A154533

/-! ## A154533.P1435663256960327249

`floor(2*n+a(n-1)-3)` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A154533.P1435663256960327249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (2 * n : ℤ) + (a (n - 1) - 3)

end

end A154533.P1435663256960327249

namespace A154533

/-- `floor(2*n+a(n-1)-3)` -/
def P1435663256960327249.Spec : Prop :=
  ∀ n, P1435663256960327249.a n = A154533 n

theorem P1435663256960327249.correct : P1435663256960327249.Spec := by
  intro n
  induction n with
  | zero => simp [A154533, A154533.P1435663256960327249.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A154533, Nat.add_sub_cancel, A154533.P1435663256960327249.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A154533

/-! ## A154533.P4649912667863165246

`floor(2*n-(3-a(n-1)))` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A154533.P4649912667863165246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (2 * n : ℤ) - (3 - a (n - 1))

end

end A154533.P4649912667863165246

namespace A154533

/-- `floor(2*n-(3-a(n-1)))` -/
def P4649912667863165246.Spec : Prop :=
  ∀ n, P4649912667863165246.a n = A154533 n

theorem P4649912667863165246.correct : P4649912667863165246.Spec := by
  intro n
  induction n with
  | zero => simp [A154533, A154533.P4649912667863165246.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A154533, Nat.add_sub_cancel, A154533.P4649912667863165246.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A154533

/-! ## A154533.P5767531618468839858

`ceil(2*n+a(n-1)-3)` with `a(0)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A154533.P5767531618468839858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (2 * n : ℤ) + (a (n - 1) - 3)

end

end A154533.P5767531618468839858

namespace A154533

/-- `ceil(2*n+a(n-1)-3)` -/
def P5767531618468839858.Spec : Prop :=
  ∀ n, P5767531618468839858.a n = A154533 n

theorem P5767531618468839858.correct : P5767531618468839858.Spec := by
  intro n
  induction n with
  | zero => simp [A154533, A154533.P5767531618468839858.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A154533, Nat.add_sub_cancel, A154533.P5767531618468839858.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A154533

/-! ## A154533.P2127357002877189486

`ceil(2*n-(3-a(n-1)))` with `a(0)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A154533.P2127357002877189486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (2 * n : ℤ) - (3 - a (n - 1))

end

end A154533.P2127357002877189486

namespace A154533

/-- `ceil(2*n-(3-a(n-1)))` -/
def P2127357002877189486.Spec : Prop :=
  ∀ n, P2127357002877189486.a n = A154533 n

theorem P2127357002877189486.correct : P2127357002877189486.Spec := by
  intro n
  induction n with
  | zero => simp [A154533, A154533.P2127357002877189486.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A154533, Nat.add_sub_cancel, A154533.P2127357002877189486.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A154533

/-! ## A154533.P17115251440906269045

`round(2*n+a(n-1)-3)` with `a(0)=10`

`round` is left out, it is the identity on integers.
-/

namespace A154533.P17115251440906269045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (2 * n : ℤ) + (a (n - 1) - 3)

end

end A154533.P17115251440906269045

namespace A154533

/-- `round(2*n+a(n-1)-3)` -/
def P17115251440906269045.Spec : Prop :=
  ∀ n, P17115251440906269045.a n = A154533 n

theorem P17115251440906269045.correct : P17115251440906269045.Spec := by
  intro n
  induction n with
  | zero => simp [A154533, A154533.P17115251440906269045.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A154533, Nat.add_sub_cancel, A154533.P17115251440906269045.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A154533

/-! ## A154533.P3216259886565015623

`round(2*n-(3-a(n-1)))` with `a(0)=10`

`round` is left out, it is the identity on integers.
-/

namespace A154533.P3216259886565015623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  (2 * n : ℤ) - (3 - a (n - 1))

end

end A154533.P3216259886565015623

namespace A154533

/-- `round(2*n-(3-a(n-1)))` -/
def P3216259886565015623.Spec : Prop :=
  ∀ n, P3216259886565015623.a n = A154533 n

theorem P3216259886565015623.correct : P3216259886565015623.Spec := by
  intro n
  induction n with
  | zero => simp [A154533, A154533.P3216259886565015623.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A154533, Nat.add_sub_cancel, A154533.P3216259886565015623.a, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A154533

/-! ## A154533.P9672392769006079491

`abs(a(n-1)+n-3+n)` with `a(0)=10`
-/

namespace A154533.P9672392769006079491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |a (n - 1) + ((n : ℤ) - 3 + (n : ℤ))|

end

end A154533.P9672392769006079491

namespace A154533

/-- `abs(a(n-1)+n-3+n)` -/
def P9672392769006079491.Spec : Prop :=
  ∀ n, P9672392769006079491.a n = A154533 n

end A154533

/-! ## A154533.P1301142027834311541

`abs(10-(n-C(n, 2)-C(n, 2)))`
-/

namespace A154533.P1301142027834311541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |10 - ((n : ℤ) - (Nat.choose n 2 : ℤ) - (Nat.choose n 2 : ℤ))|

end

end A154533.P1301142027834311541

namespace A154533

/-- `abs(10-(n-C(n, 2)-C(n, 2)))` -/
def P1301142027834311541.Spec : Prop :=
  ∀ n, P1301142027834311541.a n = A154533 n

end A154533

/-! ## A154533.P2708218043445503162

`A189834(abs(1-n))`
-/

namespace A154533.P2708218043445503162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 |1 - (n : ℤ)|.toNat

end

end A154533.P2708218043445503162

namespace A154533

/-- `A189834(abs(1-n))` -/
def P2708218043445503162.Spec : Prop :=
  ∀ n, P2708218043445503162.a n = A154533 n

end A154533

/-! ## A154533.P6486921403809969581

`abs(A067998(n)+10)`
-/

namespace A154533.P6486921403809969581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067998 n + 10|

end

end A154533.P6486921403809969581

namespace A154533

/-- `abs(A067998(n)+10)` -/
def P6486921403809969581.Spec : Prop :=
  ∀ n, P6486921403809969581.a n = A154533 n

end A154533

/-! ## A154533.P819173622308166908

`abs(A002061(n)+9-n)`
-/

namespace A154533.P819173622308166908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002061 n + 9 - (n : ℤ)|

end

end A154533.P819173622308166908

namespace A154533

/-- `abs(A002061(n)+9-n)` -/
def P819173622308166908.Spec : Prop :=
  ∀ n, P819173622308166908.a n = A154533 n

end A154533

/-! ## A154533.P3189376067865606716

`abs(2*(n+1)-A241748(n))`
-/

namespace A154533.P3189376067865606716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - A241748 n|

end

end A154533.P3189376067865606716

namespace A154533

/-- `abs(2*(n+1)-A241748(n))` -/
def P3189376067865606716.Spec : Prop :=
  ∀ n, P3189376067865606716.a n = A154533 n

end A154533

/-! ## A154533.P6957527438142898215

`abs(3*n+1-A048058(n))`
-/

namespace A154533.P6957527438142898215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n + 1 : ℤ) - A048058 n|

end

end A154533.P6957527438142898215

namespace A154533

/-- `abs(3*n+1-A048058(n))` -/
def P6957527438142898215.Spec : Prop :=
  ∀ n, P6957527438142898215.a n = A154533 n

end A154533

/-! ## A154533.P1956194835591564521

`abs(∑[2*n]+11-A016777(n))`
-/

namespace A154533.P1956194835591564521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + 11 : ℕ) : ℤ) - A016777 n|

end

end A154533.P1956194835591564521

namespace A154533

/-- `abs(∑[2*n]+11-A016777(n))` -/
def P1956194835591564521.Spec : Prop :=
  ∀ n, P1956194835591564521.a n = A154533 n

end A154533

/-!
# A154535: Numbers n such that n^16+(n+1)^16 is a prime.

The programs for A154535, there is no canonical definition to state claims against.
-/

/-! ## A154535.P3077354624078685921

`eq[n+2, A244947(n+1)]+1`
-/

namespace A154535.P3077354624078685921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A154535.P3077354624078685921

/-! ## A154535.P4425244649138267180

`eq[n+1, A244947(A028310(n))]`
-/

namespace A154535.P4425244649138267180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154535.P4425244649138267180

/-! ## A154535.P621199366399044869

`lt[A244947(A000038(n)+n), n+3]`
-/

namespace A154535.P621199366399044869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244947 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154535.P621199366399044869

/-! ## A154535.P8893117792655935922

`lt[A244947(n+1), A028310(n+3)]+1`
-/

namespace A154535.P8893117792655935922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A154535.P8893117792655935922

/-! ## A154535.P16090022757950552653

`lt[A244947(A028310(n)), A020725(n+1)]`
-/

namespace A154535.P16090022757950552653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244947 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154535.P16090022757950552653

/-! ## A154535.P16851794914755225479

`lt[A244947(n+1), A020725(A020725(n+1))]+1`
-/

namespace A154535.P16851794914755225479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A020725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A154535.P16851794914755225479

/-!
# A154537: Triangle T(n,m) read by rows: let p(n,x) = exp(-x) * Sum_{m >= 0} (2*m + 1)^n * x^m/m!; then T(n,m) = [x^m] p(n,x).

The programs for A154537, the canonical program `A154537.P5597656990143572379` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154537 has offset 0).

The definition of A154537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154537.P5597656990143572379

`2*T(n-1,k-1)+(2*col(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154537

/-- `2*T(n-1,k-1)+(2*col(n)+1)*T(n-1,k)` -/
def P5597656990143572379.Spec : Prop :=
  ∀ n, (P5597656990143572379.a n : ℤ) = A154537 n

theorem P5597656990143572379.correct : P5597656990143572379.Spec := by
  intro n
  simp only [A154537]

end A154537

/-! ## A154537.P8526355856952351468

`T(n-1,k)+2*(T(n-1,k-1)+col(n)*T(n-1,k))` with `a(0)=1`
-/

namespace A154537.P8526355856952351468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triCol n * SequenceMachineLib.triUp a n)

end

end A154537.P8526355856952351468

namespace A154537

/-- `T(n-1,k)+2*(T(n-1,k-1)+col(n)*T(n-1,k))` -/
def P8526355856952351468.Spec : Prop :=
  ∀ n, (P8526355856952351468.a n : ℤ) = A154537 n

end A154537

/-! ## A154537.P9199058793217787086

`A039755(n)*A059268(n)`
-/

namespace A154537.P9199058793217787086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 n * A059268 n

end

end A154537.P9199058793217787086

namespace A154537

/-- `A039755(n)*A059268(n)` -/
def P9199058793217787086.Spec : Prop :=
  ∀ n, P9199058793217787086.a n = A154537 n

end A154537

/-! ## A154537.P10087083453009383243

`2^A002262(n)*A039755(n)`
-/

namespace A154537.P10087083453009383243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A039755 n : ℚ)

end

end A154537.P10087083453009383243

namespace A154537

/-- `2^A002262(n)*A039755(n)` -/
def P10087083453009383243.Spec : Prop :=
  ∀ n, P10087083453009383243.a n = (A154537 n : ℚ)

end A154537

/-! ## A154537.P5334931131350615624

`A000079(A002262(n))*A039755(n)`
-/

namespace A154537.P5334931131350615624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A039755 n

end

end A154537.P5334931131350615624

namespace A154537

/-- `A000079(A002262(n))*A039755(n)` -/
def P5334931131350615624.Spec : Prop :=
  ∀ n, P5334931131350615624.a n = A154537 n

end A154537

/-! ## A154537.P1654625947961130418

`A011782(A002260(n+1))*A039755(n)`
-/

namespace A154537.P1654625947961130418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A039755 n

end

end A154537.P1654625947961130418

namespace A154537

/-- `A011782(A002260(n+1))*A039755(n)` -/
def P1654625947961130418.Spec : Prop :=
  ∀ n, P1654625947961130418.a n = A154537 n

end A154537

/-! ## A154537.P15848228000258656570

`A011782(A002262(n)+1)*A039755(n)`
-/

namespace A154537.P15848228000258656570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n + 1).toNat * A039755 n

end

end A154537.P15848228000258656570

namespace A154537

/-- `A011782(A002262(n)+1)*A039755(n)` -/
def P15848228000258656570.Spec : Prop :=
  ∀ n, P15848228000258656570.a n = A154537 n

end A154537

/-! ## A154537.P10181410551440008065

`A013609(n)/A007318(n)*A039755(n)`
-/

namespace A154537.P10181410551440008065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) * (A039755 n : ℚ)

end

end A154537.P10181410551440008065

namespace A154537

/-- `A013609(n)/A007318(n)*A039755(n)` -/
def P10181410551440008065.Spec : Prop :=
  ∀ n, P10181410551440008065.a n = (A154537 n : ℚ)

end A154537

/-! ## A154537.P15550572626888063652

`A145901(n)/A233543(n)`
-/

namespace A154537.P15550572626888063652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145901 n : ℚ) / (A233543 n : ℚ)

end

end A154537.P15550572626888063652

namespace A154537

/-- `A145901(n)/A233543(n)` -/
def P15550572626888063652.Spec : Prop :=
  ∀ n, P15550572626888063652.a n = (A154537 n : ℚ)

end A154537

/-! ## A154537.P13931680490132297180

`A000010(2^A002260(n+1))*A039755(n)`
-/

namespace A154537.P13931680490132297180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A039755 n

end

end A154537.P13931680490132297180

namespace A154537

/-- `A000010(2^A002260(n+1))*A039755(n)` -/
def P13931680490132297180.Spec : Prop :=
  ∀ n, P13931680490132297180.a n = A154537 n

end A154537

/-!
# A154539: Primes p such that (smallest digit of p) + (number of occurrences of smallest digit of p) is prime.

The programs for A154539, there is no canonical definition to state claims against.
-/

/-! ## A154539.P12828011499243885587

`A114010(record[p?[A329453(n)]])`
-/

namespace A154539.P12828011499243885587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A154539.P12828011499243885587

/-! ## A154539.P11080551730932998148

`record[p?[A329453(A089869(n)+1)]]`
-/

namespace A154539.P11080551730932998148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 (A089869 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154539.P11080551730932998148

/-! ## A154539.P12263969126839049471

`record[p?[A329453(A249031(n+1))]]`
-/

namespace A154539.P12263969126839049471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 (A249031 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154539.P12263969126839049471

/-! ## A154539.P17782292518940275574

`record[p?[A329453(A338555(n+1))]]`
-/

namespace A154539.P17782292518940275574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 (A338555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154539.P17782292518940275574

/-! ## A154539.P1516801041186917302

`p?[A243068(2*(n+1))%A243078(2*n+1)]`
-/

namespace A154539.P1516801041186917302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243068 (2 * (n + 1))) (A243078 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154539.P1516801041186917302

/-!
# A154544: Primes p such that the smallest digit of p + the number of smallest digits of p is an even composite number.

The programs for A154544, there is no canonical definition to state claims against.
-/

/-! ## A154544.P9484244138640461188

`A155034(A062399(n)+1)`
-/

namespace A154544.P9484244138640461188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (A062399 n + 1).toNat

end

end A154544.P9484244138640461188

/-! ## A154544.P6485589497786622414

`A118759(A155034(n+1))`
-/

namespace A154544.P6485589497786622414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A155034 (n + 1)).toNat

end

end A154544.P6485589497786622414

/-! ## A154544.P11147325073344218431

`A155034(A351870(n)+1)`
-/

namespace A154544.P11147325073344218431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (A351870 n + 1).toNat

end

end A154544.P11147325073344218431

/-! ## A154544.P16498294719620973378

`A009195(A155034(n+1)²)`
-/

namespace A154544.P16498294719620973378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A155034 (n + 1) ^ 2).toNat

end

end A154544.P16498294719620973378

/-! ## A154544.P10253672084856088181

`A014963(A155034(n+1)²)`
-/

namespace A154544.P10253672084856088181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A155034 (n + 1) ^ 2).toNat

end

end A154544.P10253672084856088181

/-!
# A154545: Odd nonprimes k such that the smallest digit of k + the number of smallest digits of k is prime.

The programs for A154545, there is no canonical definition to state claims against.
-/

/-! ## A154545.P16554620546520333379

`A071904(A160532(n+1))%A225614(n+1)`
-/

namespace A154545.P16554620546520333379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071904 (A160532 (n + 1)).toNat) (A225614 (n + 1))

end

end A154545.P16554620546520333379

/-! ## A154545.P4202080859507718368

`eq[A107393(n), A267034(A118089(n))]`
-/

namespace A154545.P4202080859507718368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A118089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154545.P4202080859507718368

/-!
# A154548: Averages of twin prime pairs of A154546.

The programs for A154548, there is no canonical definition to state claims against.
-/

/-! ## A154548.P2438939227879869545

`∩[A014574(n+1), A154546(n+1)]`
-/

namespace A154548.P2438939227879869545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154548.P2438939227879869545

/-! ## A154548.P9135965481486768874

`∩[A056853(n+1), A154546(n+1)]`
-/

namespace A154548.P9135965481486768874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154548.P9135965481486768874

/-! ## A154548.P5334434273825905761

`∩[A154546(n+1), A168063(n+1)]`
-/

namespace A154548.P5334434273825905761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154548.P5334434273825905761

/-! ## A154548.P7911773758885317949

`∩[A154546(n+1), A217259(n+1)]`
-/

namespace A154548.P7911773758885317949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154548.P7911773758885317949

/-! ## A154548.P14837606242893106583

`∩[A154546(n+1), A236240(n+1)]`
-/

namespace A154548.P14837606242893106583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154548.P14837606242893106583

/-!
# A154549: a(n) = 111111*n.

The programs for A154549, the canonical program `A154549.P10693917250383853004` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154549 has offset 1).

The definition of A154549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154549.P10693917250383853004

`lcm(A153814(n+1), A177769(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154549

/-- `lcm(A153814(n+1), A177769(n+1))` -/
def P10693917250383853004.Spec : Prop :=
  ∀ n, (P10693917250383853004.a n : ℤ) = A154549 (n + 1)

theorem P10693917250383853004.correct : P10693917250383853004.Spec := by
  intro n
  simp only [A154549, Nat.add_sub_cancel]

end A154549

/-!
# A154550: Greater of two consecutive primes, p < q, such that p*q+p-q is prime.

The programs for A154550, there is no canonical definition to state claims against.
-/

/-! ## A154550.P18033243999186999918

`A003961(A138111(n+1))`
-/

namespace A154550.P18033243999186999918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A138111 (n + 1)).toNat

end

end A154550.P18033243999186999918

/-! ## A154550.P14761576307031707282

`A007918(A138111(n+1)+1)`
-/

namespace A154550.P14761576307031707282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A138111 (n + 1) + 1).toNat

end

end A154550.P14761576307031707282

/-!
# A154551: Greater of two consecutive primes, p < q, such that p*q-p+q is prime.

The programs for A154551, there is no canonical definition to state claims against.
-/

/-! ## A154551.P682478948772803179

`A151800(A138170(n+1))`
-/

namespace A154551.P682478948772803179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138170 (n + 1)).toNat

end

end A154551.P682478948772803179

/-! ## A154551.P1732021081685640093

`∑{d}[A138170(n+1), A344587(#)]`
-/

namespace A154551.P1732021081685640093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A154551.P1732021081685640093

/-! ## A154551.P3285518700744487962

`A000027(n+1)+A344587(A138170(n+1))-n`
-/

namespace A154551.P3285518700744487962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A344587 (A138170 (n + 1)).toNat - (n : ℤ))

end

end A154551.P3285518700744487962

/-! ## A154551.P13884607580544319173

`A344587(A138170(n+1))+A000035(A000265(n+1))`
-/

namespace A154551.P13884607580544319173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (A138170 (n + 1)).toNat + A000035 (A000265 (n + 1)).toNat

end

end A154551.P13884607580544319173

/-! ## A154551.P15594643090352931643

`A344587(A138170(n+1))+A039982(A053672(n+1))`
-/

namespace A154551.P15594643090352931643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (A138170 (n + 1)).toNat + A039982 (A053672 (n + 1)).toNat

end

end A154551.P15594643090352931643

/-! ## A154551.P14139193737901268101

`A344587(A138170(n+1))+A000035(A108245(n+2))`
-/

namespace A154551.P14139193737901268101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (A138170 (n + 1)).toNat + A000035 (A108245 (n + 2)).toNat

end

end A154551.P14139193737901268101

/-! ## A154551.P8473601206603023131

`A003961(A138170(n+1))`
-/

namespace A154551.P8473601206603023131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A138170 (n + 1)).toNat

end

end A154551.P8473601206603023131

/-! ## A154551.P11599890779547718299

`A007918(A138170(n+1)+1)`
-/

namespace A154551.P11599890779547718299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A138170 (n + 1) + 1).toNat

end

end A154551.P11599890779547718299

/-! ## A154551.P366563313876185534

`A045965(2*A138170(n+1)-A138170(n+1))`
-/

namespace A154551.P366563313876185534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (2 * A138170 (n + 1) - A138170 (n + 1)).toNat

end

end A154551.P366563313876185534

/-!
# A154552: Greater of two consecutive primes, p < q, such that both p*q+p-q and p*q-p+q are prime numbers.

The programs for A154552, there is no canonical definition to state claims against.
-/

/-! ## A154552.P1368907650924596241

`A151800(A154553(n+1))`
-/

namespace A154552.P1368907650924596241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A154553 (n + 1)).toNat

end

end A154552.P1368907650924596241

/-! ## A154552.P524526158747332121

`A000040(A061395(A154553(n+1))+1)`
-/

namespace A154552.P524526158747332121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A154553 (n + 1)).toNat + 1).toNat

end

end A154552.P524526158747332121

/-! ## A154552.P11402906115053190895

`A065091(∑{d}[A154553(n+1), A000720(#)])`
-/

namespace A154552.P11402906115053190895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A154552.P11402906115053190895

/-! ## A154552.P7290501613568129565

`A065091(∑{d}[A154553(n+1), A061395(#)])`
-/

namespace A154552.P7290501613568129565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A154552.P7290501613568129565

/-! ## A154552.P15795765543208335225

`A065091(∑{p}[A154553(n+1), A000720(#)])`
-/

namespace A154552.P15795765543208335225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A154552.P15795765543208335225

/-! ## A154552.P1516963697120223136

`∑{d}[A154553(n+1), A344587(#)]`
-/

namespace A154552.P1516963697120223136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A154552.P1516963697120223136

/-!
# A154553: Lesser of two consecutive primes, p < q, such that both p*q+p-q and p*q-p+q are prime numbers.

The programs for A154553, there is no canonical definition to state claims against.
-/

/-! ## A154553.P1962319923093815051

`∩[A138111(n+1), A138170(n+1)]`
-/

namespace A154553.P1962319923093815051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154553.P1962319923093815051

/-! ## A154553.P16146812921073243792

`A008578(∑{d}[A154552(n+1), A000720(#)])`
-/

namespace A154553.P16146812921073243792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A154553.P16146812921073243792

/-! ## A154553.P54656432524464990

`A008578(∑{d}[A154552(n+1), A061395(#)])`
-/

namespace A154553.P54656432524464990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A154553.P54656432524464990

/-! ## A154553.P15133033611915672230

`A008578(∑{p}[A154552(n+1), A000720(#)])`
-/

namespace A154553.P15133033611915672230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A154553.P15133033611915672230

/-! ## A154553.P913794262123815440

`A008578(∑{p}[A154552(n+1), A061395(#)])`
-/

namespace A154553.P913794262123815440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p).toNat

end

end A154553.P913794262123815440

/-! ## A154553.P6411662954393260323

`A008578(∏{p}[A154552(n+1), A000720(#)])`
-/

namespace A154553.P6411662954393260323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A154553.P6411662954393260323

/-! ## A154553.P16818708830637725081

`A000040(∑{d}[A154552(n+1), A061395(#)]-1)`
-/

namespace A154553.P16818708830637725081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d - 1).toNat

end

end A154553.P16818708830637725081

/-! ## A154553.P14310429075896695963

`∑{p}[A154552(n+1), A000040(A000720(#)-1)]`
-/

namespace A154553.P14310429075896695963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A000720 p - 1).toNat

end

end A154553.P14310429075896695963

/-! ## A154553.P18173300772546747870

`A000040(∏{p}[A154552(n+1), A000720(#)]-1)`
-/

namespace A154553.P18173300772546747870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A154553.P18173300772546747870

/-!
# A154554: Primes p such that m=p-1 is the least number such that p divides m!+1.

The programs for A154554, there is no canonical definition to state claims against.
-/

/-! ## A154554.P16958720366100767713

`p?[(n+1)*A238532(n+1)]`
-/

namespace A154554.P16958720366100767713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A238532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154554.P16958720366100767713

/-! ## A154554.P14140691645533344570

`record[A006530(eq[1, A238532(n+1)]+1)]`
-/

namespace A154554.P14140691645533344570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154554.P14140691645533344570

/-! ## A154554.P2084229755998987712

`eq[A074206(n+1), A238532(n+1)]+1`
-/

namespace A154554.P2084229755998987712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A154554.P2084229755998987712

/-! ## A154554.P7713702162587663367

`p?[A000040(n+1)*A115092(n+1)]`
-/

namespace A154554.P7713702162587663367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A115092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154554.P7713702162587663367

/-! ## A154554.P12250087390168650426

`A073944(eq[1, A115092(n+1)]+1)+1`
-/

namespace A154554.P12250087390168650426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A154554.P12250087390168650426

/-! ## A154554.P8371963757322285637

`p?[comp[A166862(n+2)]]`
-/

namespace A154554.P8371963757322285637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166862 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154554.P8371963757322285637

/-!
# A154555: Primes p such that m=(p-1)/2 is the least number such that p divides m!+1.

The programs for A154555, there is no canonical definition to state claims against.
-/

/-! ## A154555.P13444038882656767609

`A238501(∑[∑{e}[n+1, #]!!])`
-/

namespace A154555.P13444038882656767609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154555.P13444038882656767609

/-! ## A154555.P13310546045665160524

`A160227(A081871(n+2))`
-/

namespace A154555.P13310546045665160524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160227 (A081871 (n + 2)).toNat

end

end A154555.P13310546045665160524

/-! ## A154555.P5780006943372928780

`∩[A055939(n+1), A191878(n+1)]`
-/

namespace A154555.P5780006943372928780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154555.P5780006943372928780

/-!
# A154556: Exponential Riordan array [exp(-x), x(1+x/2)].

The programs for A154556, there is no canonical definition to state claims against.
-/

/-! ## A154556.P4676872860437693495

`T(n-1,k-1)+(row(n)-1)*T(n-2,k-1)-T(n-1,k)` with `a(0)=1`
-/

namespace A154556.P4676872860437693495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUp a n

end

end A154556.P4676872860437693495

/-! ## A154556.P14812801335681226494

`A176669(A000122(A022115(n))+n)`
-/

namespace A154556.P14812801335681226494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176669 (A000122 (A022115 n).toNat + (n : ℤ)).toNat

end

end A154556.P14812801335681226494

/-! ## A154556.P4507995496565895109

`A176669(A250002(A109971(n))+n)`
-/

namespace A154556.P4507995496565895109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176669 (A250002 (A109971 n).toNat + (n : ℤ)).toNat

end

end A154556.P4507995496565895109

/-! ## A154556.P11027933035503687911

`A176669(A250002(A142589(n))+n)`
-/

namespace A154556.P11027933035503687911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176669 (A250002 (A142589 n).toNat + (n : ℤ)).toNat

end

end A154556.P11027933035503687911

/-! ## A154556.P1972565553675018342

`A176669(A350139(A176667(n))+n)`
-/

namespace A154556.P1972565553675018342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176669 (A350139 (A176667 n).toNat + (n : ℤ)).toNat

end

end A154556.P1972565553675018342

/-!
# A154557: Production array of A122848, read by row.

The programs for A154557, there is no canonical definition to state claims against.
-/

/-! ## A154557.P8807214732517729466

`(1-char[∑[n-1]])*A113278(A083920(n))`
-/

namespace A154557.P8807214732517729466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A113278 (A083920 n).toNat

end

end A154557.P8807214732517729466

/-! ## A154557.P13473764396551440630

`A113278(A083920(n))%A027467(n)`
-/

namespace A154557.P13473764396551440630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113278 (A083920 n).toNat) (A027467 n)

end

end A154557.P13473764396551440630

/-! ## A154557.P3322927414068144770

`A113278(A083920(n))*A286334(A025581(n))`
-/

namespace A154557.P3322927414068144770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113278 (A083920 n).toNat * A286334 (A025581 n).toNat

end

end A154557.P3322927414068144770

/-!
# A154558: Triangle read by rows: binomial(n-1,k-1)*A001006(k).

The programs for A154558, the canonical program `A154558.P3791085360457268512` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154558 has offset 1).

The definition of A154558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154558.P11957148051644580001

`A001006(A002260(n+1))*A007318(n)`
-/

namespace A154558.P11957148051644580001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A002260 (n + 1)).toNat * A007318 n

end

end A154558.P11957148051644580001

namespace A154558

/-- `A001006(A002260(n+1))*A007318(n)` -/
def P11957148051644580001.Spec : Prop :=
  ∀ n, P11957148051644580001.a n = A154558 (n + 1)

end A154558

/-! ## A154558.P14931520375340236874

`A001006(A002262(n)+1)*A007318(n)`
-/

namespace A154558.P14931520375340236874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A002262 n + 1).toNat * A007318 n

end

end A154558.P14931520375340236874

namespace A154558

/-- `A001006(A002262(n)+1)*A007318(n)` -/
def P14931520375340236874.Spec : Prop :=
  ∀ n, P14931520375340236874.a n = A154558 (n + 1)

end A154558

/-! ## A154558.P1450074086447461231

`abs(A001006(A002260(n+1))*A130595(n))`
-/

namespace A154558.P1450074086447461231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 (A002260 (n + 1)).toNat * A130595 n|

end

end A154558.P1450074086447461231

namespace A154558

/-- `abs(A001006(A002260(n+1))*A130595(n))` -/
def P1450074086447461231.Spec : Prop :=
  ∀ n, P1450074086447461231.a n = A154558 (n + 1)

end A154558

/-! ## A154558.P16014238681539571333

`abs(A001006(A002262(n)+1)*A130595(n))`
-/

namespace A154558.P16014238681539571333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 (A002262 n + 1).toNat * A130595 n|

end

end A154558.P16014238681539571333

namespace A154558

/-- `abs(A001006(A002262(n)+1)*A130595(n))` -/
def P16014238681539571333.Spec : Prop :=
  ∀ n, P16014238681539571333.a n = A154558 (n + 1)

end A154558

/-! ## A154558.P4166961981254160749

`sqrt(A008459(n))*A001006(A002260(n+1))`
-/

namespace A154558.P4166961981254160749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A001006 (A002260 (n + 1)).toNat : ℝ)

end

end A154558.P4166961981254160749

namespace A154558

/-- `sqrt(A008459(n))*A001006(A002260(n+1))` -/
def P4166961981254160749.Spec : Prop :=
  ∀ n, P4166961981254160749.a n = (A154558 (n + 1) : ℝ)

end A154558

/-! ## A154558.P3689725473205431306

`Δ[A102363(n)]*A001006(A002260(n+1))`
-/

namespace A154558.P3689725473205431306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001006 (A002260 (n + 1)).toNat

end

end A154558.P3689725473205431306

namespace A154558

/-- `Δ[A102363(n)]*A001006(A002260(n+1))` -/
def P3689725473205431306.Spec : Prop :=
  ∀ n, P3689725473205431306.a n = A154558 (n + 1)

end A154558

/-! ## A154558.P11478184506880673457

`Δ[A102363(n)]*A001006(A002262(n)+1)`
-/

namespace A154558.P11478184506880673457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001006 (A002262 n + 1).toNat

end

end A154558.P11478184506880673457

namespace A154558

/-- `Δ[A102363(n)]*A001006(A002262(n)+1)` -/
def P11478184506880673457.Spec : Prop :=
  ∀ n, P11478184506880673457.a n = A154558 (n + 1)

end A154558

/-! ## A154558.P10385044475106455271

`A001006(A002260(n+1))/2*A028326(n)`
-/

namespace A154558.P10385044475106455271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 (A002260 (n + 1)).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A154558.P10385044475106455271

namespace A154558

/-- `A001006(A002260(n+1))/2*A028326(n)` -/
def P10385044475106455271.Spec : Prop :=
  ∀ n, P10385044475106455271.a n = (A154558 (n + 1) : ℚ)

end A154558

/-! ## A154558.P3791085360457268512

`A001006(A002262(n)+1)*A074909(n-A003056(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154558

/-- `A001006(A002262(n)+1)*A074909(n-A003056(n))` -/
def P3791085360457268512.Spec : Prop :=
  ∀ n, P3791085360457268512.a n = A154558 (n + 1)

theorem P3791085360457268512.correct : P3791085360457268512.Spec := by
  intro n
  simp only [A154558, Nat.add_sub_cancel]

end A154558

/-!
# A154559: Triangle read by rows, A007318 * (A129186 * (A001006 * 0^(n-k))).

The programs for A154559, there is no canonical definition to state claims against.
-/

/-! ## A154559.P5298842873302083343

`A091187(n+2)-Δ[A010054(n)]`
-/

namespace A154559.P5298842873302083343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (n + 2) - (f1 (n + 1) - f1 n)

end

end A154559.P5298842873302083343

/-! ## A154559.P11780461630388401206

`A091187(n+2)-Δ[A035214(n)]`
-/

namespace A154559.P11780461630388401206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (n + 2) - (f1 (n + 1) - f1 n)

end

end A154559.P11780461630388401206

/-! ## A154559.P17562644800092307971

`A091187(n+2)-Δ[A005369(2*n)]`
-/

namespace A154559.P17562644800092307971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (n + 2) - (f1 (n + 1) - f1 n)

end

end A154559.P17562644800092307971

/-! ## A154559.P17834825890941209061

`A091187(n+2)+A010054(n)-A010054(n+1)`
-/

namespace A154559.P17834825890941209061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (n + 2) + (A010054 n - A010054 (n + 1))

end

end A154559.P17834825890941209061

/-! ## A154559.P301450918445019204

`A074650(n+1)*A286357(A194576(n+1))`
-/

namespace A154559.P301450918445019204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) * A286357 (A194576 (n + 1)).toNat

end

end A154559.P301450918445019204

/-!
# A154560: a(n) = (n+3)^2*n/2 + 1.

The programs for A154560, the canonical program `A154560.P4761582464667904984` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154560 has offset 0).

The definition of A154560 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154560.anchor (n : ℕ) : (A154560 n : ℚ) = ((n + 3) ^ 2 * n : ℚ) / 2 + 1` in `Proof.A154.A154560`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154560.P4761582464667904984

`(n+3)²*n/2+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154560

/-- `(n+3)²*n/2+1` -/
def P4761582464667904984.Spec : Prop :=
  ∀ n, P4761582464667904984.a n = (A154560 n : ℚ)

end A154560

/-! ## A154560.P7912586922608300144

`ogf((1+5x-4x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A154560.P7912586922608300144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -4, 1] [1, -4, 6, -4, 1] n

end

end A154560.P7912586922608300144

namespace A154560

/-- `ogf((1+5x-4x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P7912586922608300144.Spec : Prop :=
  ∀ n, P7912586922608300144.a n = A154560 n

end A154560

/-! ## A154560.P3283359430257333191

`A058794(n)/2`
-/

namespace A154560.P3283359430257333191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058794 n : ℚ) / 2

end

end A154560.P3283359430257333191

namespace A154560

/-- `A058794(n)/2` -/
def P3283359430257333191.Spec : Prop :=
  ∀ n, P3283359430257333191.a n = (A154560 n : ℚ)

end A154560

/-! ## A154560.P18032000925028837626

`Δ[C(C(n+2, 2)-1, 2)]`
-/

namespace A154560.P18032000925028837626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose (n + 2) 2 : ℤ) - 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A154560.P18032000925028837626

namespace A154560

/-- `Δ[C(C(n+2, 2)-1, 2)]` -/
def P18032000925028837626.Spec : Prop :=
  ∀ n, P18032000925028837626.a n = A154560 n

end A154560

/-! ## A154560.P5191759472673805989

`Δ[C((n+3)*n/2, 2)]`
-/

namespace A154560.P5191759472673805989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n : ℚ) / 2))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A154560.P5191759472673805989

namespace A154560

/-- `Δ[C((n+3)*n/2, 2)]` -/
def P5191759472673805989.Spec : Prop :=
  ∀ n, P5191759472673805989.a n = A154560 n

end A154560

/-! ## A154560.P16883271249966680569

`record[3*C(n, 3)-(n-1)]`
-/

namespace A154560.P16883271249966680569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n 3 : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154560.P16883271249966680569

namespace A154560

/-- `record[3*C(n, 3)-(n-1)]` -/
def P16883271249966680569.Spec : Prop :=
  ∀ n, P16883271249966680569.a n = A154560 n

end A154560

/-! ## A154560.P11397079556675513995

`∑[∑[a(n-1)+3]]` with `a(0)=1, a(1)=7, a(2)=9`
-/

namespace A154560.P11397079556675513995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 9] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154560.P11397079556675513995

namespace A154560

/-- `∑[∑[a(n-1)+3]]` -/
def P11397079556675513995.Spec : Prop :=
  ∀ n, (P11397079556675513995.a n : ℤ) = A154560 n

end A154560

/-! ## A154560.P10332212978089856586

`abs(3*C(n+3, 3)-(n+2))`
-/

namespace A154560.P10332212978089856586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * Nat.choose (n + 3) 3 : ℤ) - (n + 2 : ℤ)|

end

end A154560.P10332212978089856586

namespace A154560

/-- `abs(3*C(n+3, 3)-(n+2))` -/
def P10332212978089856586.Spec : Prop :=
  ∀ n, P10332212978089856586.a n = A154560 n

end A154560

/-! ## A154560.P17399211957811685200

`xor(-1, -((n+1)*∑[n+2]))`
-/

namespace A154560.P17399211957811685200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ))

end

end A154560.P17399211957811685200

namespace A154560

/-- `xor(-1, -((n+1)*∑[n+2]))` -/
def P17399211957811685200.Spec : Prop :=
  ∀ n, P17399211957811685200.a n = A154560 n

end A154560

/-! ## A154560.P7486663175089057487

`record[(n-2)^3-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A154560.P7486663175089057487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ((n : ℤ) - 2) ^ 3 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154560.P7486663175089057487

namespace A154560

/-- `record[(n-2)^3-a(n-2)]` -/
def P7486663175089057487.Spec : Prop :=
  ∀ n, P7486663175089057487.a n = A154560 n

end A154560

/-! ## A154560.P15971527499144769638

`floor(C((n+2)²-1, 2)/(n+2))`
-/

namespace A154560.P15971527499144769638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (((n + 2) ^ 2 : ℤ) - 1).toNat 2 : ℚ) / (n + 2 : ℚ)⌋

end

end A154560.P15971527499144769638

namespace A154560

/-- `floor(C((n+2)²-1, 2)/(n+2))` -/
def P15971527499144769638.Spec : Prop :=
  ∀ n, P15971527499144769638.a n = A154560 n

end A154560

/-! ## A154560.P14396246939036619674

`(C((n+1)*(n+3), 2)-1)/(n+2)`
-/

namespace A154560.P14396246939036619674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((n + 1) * (n + 3)) 2 : ℤ) - 1 : ℚ) / (n + 2 : ℚ)

end

end A154560.P14396246939036619674

namespace A154560

/-- `(C((n+1)*(n+3), 2)-1)/(n+2)` -/
def P14396246939036619674.Spec : Prop :=
  ∀ n, P14396246939036619674.a n = (A154560 n : ℚ)

end A154560

/-! ## A154560.P10722006869291972634

`((n+1)/(n+3)+n)*C(n+3, 2)`
-/

namespace A154560.P10722006869291972634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (n + 3 : ℚ) + (n : ℚ)) * (Nat.choose (n + 3) 2 : ℚ)

end

end A154560.P10722006869291972634

namespace A154560

/-- `((n+1)/(n+3)+n)*C(n+3, 2)` -/
def P10722006869291972634.Spec : Prop :=
  ∀ n, P10722006869291972634.a n = (A154560 n : ℚ)

end A154560

/-! ## A154560.P7094938999627302721

`(lcm(n+1, n+2)+n-1)*(n+2)/2`
-/

namespace A154560.P7094938999627302721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 1) (n + 2) : ℤ) + ((n : ℤ) - 1) : ℚ) * ((n + 2 : ℚ) / 2)

end

end A154560.P7094938999627302721

namespace A154560

/-- `(lcm(n+1, n+2)+n-1)*(n+2)/2` -/
def P7094938999627302721.Spec : Prop :=
  ∀ n, P7094938999627302721.a n = (A154560 n : ℚ)

end A154560

/-! ## A154560.P8390745538762047981

`floor((a(n-1)/(n+2)+n+1)*(n+3))` with `a(0)=1`
-/

namespace A154560.P8390745538762047981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((a (n - 1) : ℚ) / (n + 2 : ℚ) + (n + 1 : ℚ)) * (n + 3 : ℚ)⌋

end

end A154560.P8390745538762047981

namespace A154560

/-- `floor((a(n-1)/(n+2)+n+1)*(n+3))` -/
def P8390745538762047981.Spec : Prop :=
  ∀ n, P8390745538762047981.a n = A154560 n

end A154560

/-! ## A154560.P6339064529980730220

`(A212836(n+1)+n)/2`
-/

namespace A154560.P6339064529980730220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212836 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A154560.P6339064529980730220

namespace A154560

/-- `(A212836(n+1)+n)/2` -/
def P6339064529980730220.Spec : Prop :=
  ∀ n, P6339064529980730220.a n = (A154560 n : ℚ)

end A154560

/-! ## A154560.P13264348141966206858

`abs(Δ[C(A000217(n)+n, 2)])`
-/

namespace A154560.P13264348141966206858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 n + (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A154560.P13264348141966206858

namespace A154560

/-- `abs(Δ[C(A000217(n)+n, 2)])` -/
def P13264348141966206858.Spec : Prop :=
  ∀ n, P13264348141966206858.a n = A154560 n

end A154560

/-! ## A154560.P16762385921909392423

`(n+2)/2*A028872(n+2)`
-/

namespace A154560.P16762385921909392423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A028872 (n + 2) : ℚ)

end

end A154560.P16762385921909392423

namespace A154560

/-- `(n+2)/2*A028872(n+2)` -/
def P16762385921909392423.Spec : Prop :=
  ∀ n, P16762385921909392423.a n = (A154560 n : ℚ)

end A154560

/-! ## A154560.P14154707141193981056

`abs(1-∑[∑[A016777(n)+1]+n])`
-/

namespace A154560.P14154707141193981056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A154560.P14154707141193981056

namespace A154560

/-- `abs(1-∑[∑[A016777(n)+1]+n])` -/
def P14154707141193981056.Spec : Prop :=
  ∀ n, P14154707141193981056.a n = A154560 n

end A154560

/-! ## A154560.P3016956932403474938

`(A000217(n+1)+A005563(n)/(n+1))*(n+1)`
-/

namespace A154560.P3016956932403474938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 (n + 1) : ℚ) + (A005563 n : ℚ) / (n + 1 : ℚ)) * (n + 1 : ℚ)

end

end A154560.P3016956932403474938

namespace A154560

/-- `(A000217(n+1)+A005563(n)/(n+1))*(n+1)` -/
def P3016956932403474938.Spec : Prop :=
  ∀ n, P3016956932403474938.a n = (A154560 n : ℚ)

end A154560

/-!
# A154561: Primes resulting from (sum of digits of k) + (sum of digits of prime(k)) as k runs through the positive integers.

The programs for A154561, there is no canonical definition to state claims against.
-/

/-! ## A154561.P8033698935359136990

`p?[∑{digits}[A045532(n+1), #]]`
-/

namespace A154561.P8033698935359136990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154561.P8033698935359136990

/-! ## A154561.P6211097555707039504

`p?[∑{digits}[A075110(n+1), #]]`
-/

namespace A154561.P6211097555707039504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075110 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154561.P6211097555707039504

/-! ## A154561.P3705711283835982356

`p?[A007953(n+1)+A007605(n+1)]`
-/

namespace A154561.P3705711283835982356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154561.P3705711283835982356

/-! ## A154561.P7029037167743973317

`p?[A090431(n+1)+2*A007605(n+1)]`
-/

namespace A154561.P7029037167743973317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090431 (n + 1) + 2 * A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154561.P7029037167743973317

/-! ## A154561.P8794379616285635250

`p?[A007953(A008578(n+1))+A007953(n)]`
-/

namespace A154561.P8794379616285635250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008578 (n + 1)).toNat + A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154561.P8794379616285635250

/-! ## A154561.P5690280784437133704

`p?[A090431(n+1)+A005843(A007605(n+1))]`
-/

namespace A154561.P5690280784437133704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090431 (n + 1) + A005843 (A007605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154561.P5690280784437133704

/-! ## A154561.P8157663166414417372

`p?[A007953(n+1)+A065073(n+1)-A000040(n+1)]`
-/

namespace A154561.P8157663166414417372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + (A065073 (n + 1) - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154561.P8157663166414417372

/-! ## A154561.P9603938009992730258

`p?[A007953(n+1)+A000040(n+1)-A068395(n+1)]`
-/

namespace A154561.P9603938009992730258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + (A000040 (n + 1) - A068395 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154561.P9603938009992730258

/-!
# A154563: Averages of twin prime pairs of A074378.

The programs for A154563, there is no canonical definition to state claims against.
-/

/-! ## A154563.P208478437771852420

`A086816(n+1)+1`
-/

namespace A154563.P208478437771852420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086816 (n + 1) + 1

end

end A154563.P208478437771852420

/-! ## A154563.P12085151586417855995

`A165966(n+1)/2`
-/

namespace A154563.P12085151586417855995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165966 (n + 1) : ℚ) / 2

end

end A154563.P12085151586417855995

/-! ## A154563.P15669260268323604695

`6*A166119(n+1)`
-/

namespace A154563.P15669260268323604695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A166119 (n + 1)

end

end A154563.P15669260268323604695

/-! ## A154563.P3291820552459796402

`p?[A225077(n+1)+2]-1`
-/

namespace A154563.P3291820552459796402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225077 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154563.P3291820552459796402

/-! ## A154563.P16402992931334717487

`C(A105174(n+1)+1, 2)/2`
-/

namespace A154563.P16402992931334717487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A105174 (n + 1) + 1).toNat 2 : ℚ) / 2

end

end A154563.P16402992931334717487

/-!
# A154565: One-half of averages of twin prime pairs of A001318.

The programs for A154565, there is no canonical definition to state claims against.
-/

/-! ## A154565.P9573963021478980806

`∩[A040040(n+1), A001318(n)]`
-/

namespace A154565.P9573963021478980806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154565.P9573963021478980806

/-! ## A154565.P14223475546344959649

`∩[A040040(n+1), A319390(n)-1]`
-/

namespace A154565.P14223475546344959649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154565.P14223475546344959649

/-! ## A154565.P3939772135673382304

`∩[A014574(n+1), A152749(n)]/2`
-/

namespace A154565.P3939772135673382304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A154565.P3939772135673382304

/-!
# A154569: Partial sums of (2n-1)^(2n+1)+(2n+1)^(2n-1).

The programs for A154569, the canonical program `A154569.P8095823472050591569` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154569 has offset 0).

The definition of A154569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154569.P8095823472050591569

`a(n-1)+(2*n-1)^(2*n+1)+(2*n+1)^(2*n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154569

/-- `a(n-1)+(2*n-1)^(2*n+1)+(2*n+1)^(2*n-1)` -/
def P8095823472050591569.Spec : Prop :=
  ∀ n, P8095823472050591569.a n = (A154569 n : ℚ)

end A154569

/-! ## A154569.P9867018642289415245

`∑[A154682(n)]`
-/

namespace A154569.P9867018642289415245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154569.P9867018642289415245

namespace A154569

/-- `∑[A154682(n)]` -/
def P9867018642289415245.Spec : Prop :=
  ∀ n, P9867018642289415245.a n = A154569 n

end A154569

/-! ## A154569.P7832051642618332614

`∑[A051489(A004273(n))]-1`
-/

namespace A154569.P7832051642618332614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A154569.P7832051642618332614

namespace A154569

/-- `∑[A051489(A004273(n))]-1` -/
def P7832051642618332614.Spec : Prop :=
  ∀ n, P7832051642618332614.a n = A154569 n

end A154569

/-! ## A154569.P10880339746013207429

`∑[A051489(A004273(n))*A057427(n)]`
-/

namespace A154569.P10880339746013207429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 (A004273 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154569.P10880339746013207429

namespace A154569

/-- `∑[A051489(A004273(n))*A057427(n)]` -/
def P10880339746013207429.Spec : Prop :=
  ∀ n, P10880339746013207429.a n = A154569 n

end A154569

/-!
# A154570: The main diagonal of the successive differences of A154127.

The programs for A154570, the canonical program `A154570.P14382788854987615955` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154570 has offset 0).

The definition of A154570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154570.P4011914974405955505

`ogf((1+2x-9x^2)/(1-x-2x^2))`
-/

namespace A154570.P4011914974405955505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -9] [1, -1, -2] n

end

end A154570.P4011914974405955505

namespace A154570

/-- `ogf((1+2x-9x^2)/(1-x-2x^2))` -/
def P4011914974405955505.Spec : Prop :=
  ∀ n, P4011914974405955505.a n = A154570 n

end A154570

/-! ## A154570.P14382788854987615955

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=-4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154570

/-- `a(n-1)+2*a(n-2)` -/
def P14382788854987615955.Spec : Prop :=
  ∀ n, P14382788854987615955.a n = A154570 n

theorem P14382788854987615955.correct : P14382788854987615955.Spec := by
  intro n
  simp only [A154570]

end A154570

/-! ## A154570.P13305088316186574905

`-(a(n-1)+2^(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A154570.P13305088316186574905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  -(a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A154570.P13305088316186574905

namespace A154570

/-- `-(a(n-1)+2^(n-2))` -/
def P13305088316186574905.Spec : Prop :=
  ∀ n, P13305088316186574905.a n = (A154570 n : ℚ)

end A154570

/-! ## A154570.P5584434521081101527

`Δ[a(n-2)-2^(n-3)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A154570.P5584434521081101527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154570.P5584434521081101527

namespace A154570

/-- `Δ[a(n-2)-2^(n-3)]` -/
def P5584434521081101527.Spec : Prop :=
  ∀ n, P5584434521081101527.a n = (A154570 n : ℚ)

end A154570

/-! ## A154570.P10528836908016567679

`2*(a(n-1)-5*(-1)^n)` with `a(0)=1, a(1)=3`
-/

namespace A154570.P10528836908016567679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - 5 * (-1) ^ n)

end

end A154570.P10528836908016567679

namespace A154570

/-- `2*(a(n-1)-5*(-1)^n)` -/
def P10528836908016567679.Spec : Prop :=
  ∀ n, P10528836908016567679.a n = A154570 n

end A154570

/-! ## A154570.P1136806057807879519

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=-4`
-/

namespace A154570.P1136806057807879519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -4] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A154570.P1136806057807879519

namespace A154570

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P1136806057807879519.Spec : Prop :=
  ∀ n, P1136806057807879519.a n = A154570 n

end A154570

/-! ## A154570.P10357196903944224417

`A156591(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A154570.P10357196903944224417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156591 (n - 1) + a (n - 1)

end

end A154570.P10357196903944224417

namespace A154570

/-- `A156591(n-1)+a(n-1)` -/
def P10357196903944224417.Spec : Prop :=
  ∀ n, P10357196903944224417.a n = A154570 n

end A154570

/-! ## A154570.P4518992151290269726

`A154589(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A154570.P4518992151290269726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A154589 (n - 1) - a (n - 1)

end

end A154570.P4518992151290269726

namespace A154570

/-- `A154589(n-1)-a(n-1)` -/
def P4518992151290269726.Spec : Prop :=
  ∀ n, P4518992151290269726.a n = A154570 n

end A154570

/-! ## A154570.P2987307078393703483

`A157823(n-1)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A154570.P2987307078393703483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A157823 (n - 1) - a (n - 1)

end

end A154570.P2987307078393703483

namespace A154570

/-- `A157823(n-1)-a(n-1)` -/
def P2987307078393703483.Spec : Prop :=
  ∀ n, P2987307078393703483.a n = A154570 n

end A154570

/-! ## A154570.P18041815902139138772

`A156067(n)+A001045(n)`
-/

namespace A154570.P18041815902139138772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n + A001045 n

end

end A154570.P18041815902139138772

namespace A154570

/-- `A156067(n)+A001045(n)` -/
def P18041815902139138772.Spec : Prop :=
  ∀ n, P18041815902139138772.a n = A154570 n

end A154570

/-! ## A154570.P5813429742258749517

`A115341(n)-A084214(n)`
-/

namespace A154570.P5813429742258749517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115341 n - A084214 n

end

end A154570.P5813429742258749517

namespace A154570

/-- `A115341(n)-A084214(n)` -/
def P5813429742258749517.Spec : Prop :=
  ∀ n, P5813429742258749517.a n = A154570 n

end A154570

/-! ## A154570.P1878599083638469265

`A128209(n)+A156067(n)-1`
-/

namespace A154570.P1878599083638469265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n + (A156067 n - 1)

end

end A154570.P1878599083638469265

namespace A154570

/-- `A128209(n)+A156067(n)-1` -/
def P1878599083638469265.Spec : Prop :=
  ∀ n, P1878599083638469265.a n = A154570 n

end A154570

/-! ## A154570.P14630943869653901417

`A153643(n)+A156067(n)-2`
-/

namespace A154570.P14630943869653901417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n + (A156067 n - 2)

end

end A154570.P14630943869653901417

namespace A154570

/-- `A153643(n)+A156067(n)-2` -/
def P14630943869653901417.Spec : Prop :=
  ∀ n, P14630943869653901417.a n = A154570 n

end A154570

/-! ## A154570.P17224780255504624041

`A078008(n)-(A156591(n)+A154879(n+1))`
-/

namespace A154570.P17224780255504624041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - (A156591 n + A154879 (n + 1))

end

end A154570.P17224780255504624041

namespace A154570

/-- `A078008(n)-(A156591(n)+A154879(n+1))` -/
def P17224780255504624041.Spec : Prop :=
  ∀ n, P17224780255504624041.a n = A154570 n

end A154570

/-! ## A154570.P3347596546625603862

`A001045(n)+A254076(n)-A254076(n+1)`
-/

namespace A154570.P3347596546625603862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A254076 n - A254076 (n + 1))

end

end A154570.P3347596546625603862

namespace A154570

/-- `A001045(n)+A254076(n)-A254076(n+1)` -/
def P3347596546625603862.Spec : Prop :=
  ∀ n, P3347596546625603862.a n = A154570 n

end A154570

/-! ## A154570.P3796678436368407305

`Δ[A144472(n+1)-A000079(n+1)]`
-/

namespace A154570.P3796678436368407305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144472 (n + 1) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154570.P3796678436368407305

namespace A154570

/-- `Δ[A144472(n+1)-A000079(n+1)]` -/
def P3796678436368407305.Spec : Prop :=
  ∀ n, P3796678436368407305.a n = A154570 n

end A154570

/-! ## A154570.P9979021000072219076

`A144472(n+2)-(A144472(n+1)+A000079(n+1))`
-/

namespace A154570.P9979021000072219076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144472 (n + 2) - (A144472 (n + 1) + A000079 (n + 1))

end

end A154570.P9979021000072219076

namespace A154570

/-- `A144472(n+2)-(A144472(n+1)+A000079(n+1))` -/
def P9979021000072219076.Spec : Prop :=
  ∀ n, P9979021000072219076.a n = A154570 n

end A154570

/-!
# A154571: Numbers that are congruent to {0, 3, 4, 5, 7, 8} mod 12.

The programs for A154571, the canonical program `A154571.P2817508153549451273` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154571 has offset 1).

The definition of A154571 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154571.anchor (n : ℕ) (hn : 1 ≤ n) : A154571 n = (Nat.nth (fun k => k % 12 ∈ ({0, 3, 4, 5, 7, 8} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A154.A154571`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154571.P8621161853670372683

`ogf((3x+x^2+x^3+2x^4+x^5+4x^6)/(1-x-x^6+x^7))`
-/

namespace A154571.P8621161853670372683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 1, 2, 1, 4] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A154571.P8621161853670372683

namespace A154571

/-- `ogf((3x+x^2+x^3+2x^4+x^5+4x^6)/(1-x-x^6+x^7))` -/
def P8621161853670372683.Spec : Prop :=
  ∀ n, P8621161853670372683.a n = A154571 (n + 1)

end A154571

/-! ## A154571.P2817508153549451273

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5, a(4)=7, a(5)=8, a(6)=12`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154571

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P2817508153549451273.Spec : Prop :=
  ∀ n, P2817508153549451273.a n = A154571 (n + 1)

theorem P2817508153549451273.correct : P2817508153549451273.Spec := by
  intro n
  simp only [A154571, Nat.add_sub_cancel]

end A154571

/-! ## A154571.P674636410584081075

`lt[1, C(n+2, a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A154571.P674636410584081075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f2 =>
  Nat.choose (n + 2) (f2 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154571.P674636410584081075

namespace A154571

/-- `lt[1, C(n+2, a(n-3))]` -/
def P674636410584081075.Spec : Prop :=
  ∀ n, (P674636410584081075.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P1428524484267152088

`eq[A000217(n)%2, val(n+1, 6)]`
-/

namespace A154571.P1428524484267152088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A154571.P1428524484267152088

namespace A154571

/-- `eq[A000217(n)%2, val(n+1, 6)]` -/
def P1428524484267152088.Spec : Prop :=
  ∀ n, (P1428524484267152088.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P8105278058898705817

`A047231(n+1)-A300067(n)`
-/

namespace A154571.P8105278058898705817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) - A300067 n

end

end A154571.P8105278058898705817

namespace A154571

/-- `A047231(n+1)-A300067(n)` -/
def P8105278058898705817.Spec : Prop :=
  ∀ n, P8105278058898705817.a n = A154571 (n + 1)

end A154571

/-! ## A154571.P6429591627157869184

`A267027(n+1)-A135265(n)`
-/

namespace A154571.P6429591627157869184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267027 (n + 1) - A135265 n

end

end A154571.P6429591627157869184

namespace A154571

/-- `A267027(n+1)-A135265(n)` -/
def P6429591627157869184.Spec : Prop :=
  ∀ n, P6429591627157869184.a n = A154571 (n + 1)

end A154571

/-! ## A154571.P13418617284411347264

`eq[∑[n]%2, val(n+1, 6)]`
-/

namespace A154571.P13418617284411347264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A154571.P13418617284411347264

namespace A154571

/-- `eq[∑[n]%2, val(n+1, 6)]` -/
def P13418617284411347264.Spec : Prop :=
  ∀ n, (P13418617284411347264.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P12609267678834508392

`eq[A002483(n), A241979(n)]`
-/

namespace A154571.P12609267678834508392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P12609267678834508392

namespace A154571

/-- `eq[A002483(n), A241979(n)]` -/
def P12609267678834508392.Spec : Prop :=
  ∀ n, (P12609267678834508392.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P6900091751092419749

`eq[A167817(n), A181801(n+1)]`
-/

namespace A154571.P6900091751092419749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P6900091751092419749

namespace A154571

/-- `eq[A167817(n), A181801(n+1)]` -/
def P6900091751092419749.Spec : Prop :=
  ∀ n, (P6900091751092419749.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P116731744619863966

`eq[A014695(n), A373216(n+1)]`
-/

namespace A154571.P116731744619863966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P116731744619863966

namespace A154571

/-- `eq[A014695(n), A373216(n+1)]` -/
def P116731744619863966.Spec : Prop :=
  ∀ n, (P116731744619863966.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P18050885313699064932

`eq[A181405(n+1), A241979(n)]`
-/

namespace A154571.P18050885313699064932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P18050885313699064932

namespace A154571

/-- `eq[A181405(n+1), A241979(n)]` -/
def P18050885313699064932.Spec : Prop :=
  ∀ n, (P18050885313699064932.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P6279239050937081947

`eq[A181801(n+1), A287765(n+1)]`
-/

namespace A154571.P6279239050937081947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P6279239050937081947

namespace A154571

/-- `eq[A181801(n+1), A287765(n+1)]` -/
def P6279239050937081947.Spec : Prop :=
  ∀ n, (P6279239050937081947.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P8783991273473425870

`eq[A158570(n+1), A373216(n+1)]`
-/

namespace A154571.P8783991273473425870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P8783991273473425870

namespace A154571

/-- `eq[A158570(n+1), A373216(n+1)]` -/
def P8783991273473425870.Spec : Prop :=
  ∀ n, (P8783991273473425870.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P13165991083008732871

`eq[n+1, A097325(n+1)+A080412(n)]`
-/

namespace A154571.P13165991083008732871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (n + 1) + A080412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154571.P13165991083008732871

namespace A154571

/-- `eq[n+1, A097325(n+1)+A080412(n)]` -/
def P13165991083008732871.Spec : Prop :=
  ∀ n, (P13165991083008732871.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P7327117544376518245

`lt[0, A145063(A145064(n+2))]`
-/

namespace A154571.P7327117544376518245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 (A145064 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154571.P7327117544376518245

namespace A154571

/-- `lt[0, A145063(A145064(n+2))]` -/
def P7327117544376518245.Spec : Prop :=
  ∀ n, (P7327117544376518245.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P15865578093334190808

`eq[A127932(A061800(n)), A127932(n)]-2`
-/

namespace A154571.P15865578093334190808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127932 (A061800 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A154571.P15865578093334190808

namespace A154571

/-- `eq[A127932(A061800(n)), A127932(n)]-2` -/
def P15865578093334190808.Spec : Prop :=
  ∀ n, P15865578093334190808.a n = A154571 (n + 1)

end A154571

/-! ## A154571.P6322237011211185102

`lt[A166446(n+4), A166445(n)]`
-/

namespace A154571.P6322237011211185102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166446 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154571.P6322237011211185102

namespace A154571

/-- `lt[A166446(n+4), A166445(n)]` -/
def P6322237011211185102.Spec : Prop :=
  ∀ n, (P6322237011211185102.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P7928158489117303058

`lt[val((A001595(n)+2+n)*(A016945(n)+1), 2), 3]`
-/

namespace A154571.P7928158489117303058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A001595 n + 2 + (n : ℤ)) * (A016945 n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154571.P7928158489117303058

namespace A154571

/-- `lt[val((A001595(n)+2+n)*(A016945(n)+1), 2), 3]` -/
def P7928158489117303058.Spec : Prop :=
  ∀ n, (P7928158489117303058.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P5738488664380705527

`eq[A169767(n+4), A241979(n)]`
-/

namespace A154571.P5738488664380705527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169767 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P5738488664380705527

namespace A154571

/-- `eq[A169767(n+4), A241979(n)]` -/
def P5738488664380705527.Spec : Prop :=
  ∀ n, (P5738488664380705527.a n : ℤ) = A154571 (n + 1)

end A154571

/-! ## A154571.P7957558247525389899

`eq[A169765(n+4), A241979(n)]`
-/

namespace A154571.P7957558247525389899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169765 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154571.P7957558247525389899

namespace A154571

/-- `eq[A169765(n+4), A241979(n)]` -/
def P7957558247525389899.Spec : Prop :=
  ∀ n, (P7957558247525389899.a n : ℤ) = A154571 (n + 1)

end A154571

/-!
# A154575: a(n) = 2*n^2 + 12*n + 4.

The programs for A154575, the canonical program `A154575.P10311887486335886995` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154575 has offset 1).

The definition of A154575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+12*(n+1)+4` (program `A154575.P10311887486335886995`, by `A154575.P10311887486335886995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154575.P6290515253903307524

`ogf((18-18x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154575.P6290515253903307524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [18, -18, 4] [1, -3, 3, -1] n

end

end A154575.P6290515253903307524

namespace A154575

/-- `ogf((18-18x+4x^2)/(1-3x+3x^2-x^3))` -/
def P6290515253903307524.Spec : Prop :=
  ∀ n, P6290515253903307524.a n = A154575 (n + 1)

end A154575

/-! ## A154575.P10311887486335886995

`2*(n+1)²+12*(n+1)+4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154575

/-- `2*(n+1)²+12*(n+1)+4` -/
def P10311887486335886995.Spec : Prop :=
  ∀ n, (P10311887486335886995.a n : ℤ) = A154575 (n + 1)

theorem P10311887486335886995.correct : P10311887486335886995.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel]

end A154575

/-! ## A154575.P7435120825150134926

`2*A028881(n+4)`
-/

namespace A154575.P7435120825150134926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028881 (n + 4)

end

end A154575.P7435120825150134926

namespace A154575

/-- `2*A028881(n+4)` -/
def P7435120825150134926.Spec : Prop :=
  ∀ n, P7435120825150134926.a n = A154575 (n + 1)

theorem P7435120825150134926.correct : P7435120825150134926.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel, A154575.P7435120825150134926.a, A154575.P10311887486335886995.a, A028881, A028881.P11268468400886381584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154575

/-! ## A154575.P1067083129494969630

`∑[a(n-1)+4]` with `a(0)=18, a(1)=18`
-/

namespace A154575.P1067083129494969630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 18] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154575.P1067083129494969630

namespace A154575

/-- `∑[a(n-1)+4]` -/
def P1067083129494969630.Spec : Prop :=
  ∀ n, (P1067083129494969630.a n : ℤ) = A154575 (n + 1)

end A154575

/-! ## A154575.P13815328622395494177

`record[2*((3-n)²-2*n)]`
-/

namespace A154575.P13815328622395494177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((3 - (n : ℤ)) ^ 2 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154575.P13815328622395494177

namespace A154575

/-- `record[2*((3-n)²-2*n)]` -/
def P13815328622395494177.Spec : Prop :=
  ∀ n, P13815328622395494177.a n = A154575 (n + 1)

end A154575

/-! ## A154575.P5076706656216150442

`2*(lcm(2, 2*n)+(n+3)²)`
-/

namespace A154575.P5076706656216150442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lcm 2 (2 * n) + (n + 3) ^ 2)

end

end A154575.P5076706656216150442

namespace A154575

/-- `2*(lcm(2, 2*n)+(n+3)²)` -/
def P5076706656216150442.Spec : Prop :=
  ∀ n, (P5076706656216150442.a n : ℤ) = A154575 (n + 1)

theorem P5076706656216150442.correct : P5076706656216150442.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel, A154575.P5076706656216150442.a, A154575.P10311887486335886995.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A154575

/-! ## A154575.P12736641540457650902

`2*(2*n+lcm(n+2, n+3)+n+3)`
-/

namespace A154575.P12736641540457650902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + (Nat.lcm (n + 2) (n + 3) + (n + 3)))

end

end A154575.P12736641540457650902

namespace A154575

/-- `2*(2*n+lcm(n+2, n+3)+n+3)` -/
def P12736641540457650902.Spec : Prop :=
  ∀ n, (P12736641540457650902.a n : ℤ) = A154575 (n + 1)

end A154575

/-! ## A154575.P18201958412803470003

`2*(2*n+(n+3)*C(n+3, n+2))`
-/

namespace A154575.P18201958412803470003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + (n + 3) * Nat.choose (n + 3) (n + 2))

end

end A154575.P18201958412803470003

namespace A154575

/-- `2*(2*n+(n+3)*C(n+3, n+2))` -/
def P18201958412803470003.Spec : Prop :=
  ∀ n, (P18201958412803470003.a n : ℤ) = A154575 (n + 1)

theorem P18201958412803470003.correct : P18201958412803470003.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel, A154575.P18201958412803470003.a, A154575.P10311887486335886995.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A154575

/-! ## A154575.P15451421640245397124

`A153642(n+1)/2`
-/

namespace A154575.P15451421640245397124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153642 (n + 1) : ℚ) / 2

end

end A154575.P15451421640245397124

namespace A154575

/-- `A153642(n+1)/2` -/
def P15451421640245397124.Spec : Prop :=
  ∀ n, P15451421640245397124.a n = (A154575 (n + 1) : ℚ)

theorem P15451421640245397124.correct : P15451421640245397124.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel, A154575.P15451421640245397124.a, A154575.P10311887486335886995.a, A153642, A153642.P12528095769088069103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154575

/-! ## A154575.P169377416218254276

`2*(A028884(n+1)+1)`
-/

namespace A154575.P169377416218254276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028884 (n + 1) + 1)

end

end A154575.P169377416218254276

namespace A154575

/-- `2*(A028884(n+1)+1)` -/
def P169377416218254276.Spec : Prop :=
  ∀ n, P169377416218254276.a n = A154575 (n + 1)

theorem P169377416218254276.correct : P169377416218254276.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel, A154575.P169377416218254276.a, A154575.P10311887486335886995.a, A028884, A028884.P6863667227585996307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154575

/-! ## A154575.P7149676200700522603

`A153644(n+1)%A154590(n+1)`
-/

namespace A154575.P7149676200700522603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153644 (n + 1)) (A154590 (n + 1))

end

end A154575.P7149676200700522603

namespace A154575

/-- `A153644(n+1)%A154590(n+1)` -/
def P7149676200700522603.Spec : Prop :=
  ∀ n, P7149676200700522603.a n = A154575 (n + 1)

end A154575

/-! ## A154575.P17206375236544849665

`2*(A028560(n+1)+2)`
-/

namespace A154575.P17206375236544849665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028560 (n + 1) + 2)

end

end A154575.P17206375236544849665

namespace A154575

/-- `2*(A028560(n+1)+2)` -/
def P17206375236544849665.Spec : Prop :=
  ∀ n, P17206375236544849665.a n = A154575 (n + 1)

theorem P17206375236544849665.correct : P17206375236544849665.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel, A154575.P17206375236544849665.a, A154575.P10311887486335886995.a, A028560, A028560.P2309686278855513759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154575

/-! ## A154575.P3259677287251107559

`2*(A028878(n+1)-1)`
-/

namespace A154575.P3259677287251107559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028878 (n + 1) - 1)

end

end A154575.P3259677287251107559

namespace A154575

/-- `2*(A028878(n+1)-1)` -/
def P3259677287251107559.Spec : Prop :=
  ∀ n, P3259677287251107559.a n = A154575 (n + 1)

theorem P3259677287251107559.correct : P3259677287251107559.Spec := by
  intro n
  simp only [A154575, Nat.add_sub_cancel, A154575.P3259677287251107559.a, A154575.P10311887486335886995.a, A028878, A028878.P2945989185203519759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154575

/-! ## A154575.P11797416118157634127

`2*A267531(2*n+3)`
-/

namespace A154575.P11797416118157634127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267531 (2 * n + 3)

end

end A154575.P11797416118157634127

namespace A154575

/-- `2*A267531(2*n+3)` -/
def P11797416118157634127.Spec : Prop :=
  ∀ n, P11797416118157634127.a n = A154575 (n + 1)

end A154575

/-! ## A154575.P14071686120067441554

`A014682(A153642(n+1))`
-/

namespace A154575.P14071686120067441554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A153642 (n + 1)).toNat

end

end A154575.P14071686120067441554

namespace A154575

/-- `A014682(A153642(n+1))` -/
def P14071686120067441554.Spec : Prop :=
  ∀ n, P14071686120067441554.a n = A154575 (n + 1)

end A154575

/-!
# A154576: a(n) = 2*n^2 + 14*n + 5.

The programs for A154576, the canonical program `A154576.P17742162986823344533` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154576 has offset 1).

The definition of A154576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+14*(n+1)+5` (program `A154576.P17742162986823344533`, by `A154576.P17742162986823344533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154576.P4645654636965477773

`ogf((21-22x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154576.P4645654636965477773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -22, 5] [1, -3, 3, -1] n

end

end A154576.P4645654636965477773

namespace A154576

/-- `ogf((21-22x+5x^2)/(1-3x+3x^2-x^3))` -/
def P4645654636965477773.Spec : Prop :=
  ∀ n, P4645654636965477773.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P17742162986823344533

`2*(n+1)²+14*(n+1)+5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154576

/-- `2*(n+1)²+14*(n+1)+5` -/
def P17742162986823344533.Spec : Prop :=
  ∀ n, (P17742162986823344533.a n : ℤ) = A154576 (n + 1)

theorem P17742162986823344533.correct : P17742162986823344533.Spec := by
  intro n
  simp only [A154576, Nat.add_sub_cancel]

end A154576

/-! ## A154576.P14047869298220874647

`∑[a(n-1)+4]` with `a(0)=21, a(1)=20`
-/

namespace A154576.P14047869298220874647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 20] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154576.P14047869298220874647

namespace A154576

/-- `∑[a(n-1)+4]` -/
def P14047869298220874647.Spec : Prop :=
  ∀ n, (P14047869298220874647.a n : ℤ) = A154576 (n + 1)

end A154576

/-! ## A154576.P3066636739722810262

`∑[ogf((21-22x+5x^2)/(1-2x+x^2))]`
-/

namespace A154576.P3066636739722810262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, -22, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154576.P3066636739722810262

namespace A154576

/-- `∑[ogf((21-22x+5x^2)/(1-2x+x^2))]` -/
def P3066636739722810262.Spec : Prop :=
  ∀ n, P3066636739722810262.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P16690399051912610525

`A153644(n+1)/2`
-/

namespace A154576.P16690399051912610525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153644 (n + 1) : ℚ) / 2

end

end A154576.P16690399051912610525

namespace A154576

/-- `A153644(n+1)/2` -/
def P16690399051912610525.Spec : Prop :=
  ∀ n, P16690399051912610525.a n = (A154576 (n + 1) : ℚ)

theorem P16690399051912610525.correct : P16690399051912610525.Spec := by
  intro n
  simp only [A154576, Nat.add_sub_cancel, A154576.P16690399051912610525.a, A154576.P17742162986823344533.a, A153644, A153644.P16369926169379387003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154576

/-! ## A154576.P14943502255473826757

`abs(2*n+3-A154590(n+1))`
-/

namespace A154576.P14943502255473826757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 3 : ℤ) - A154590 (n + 1)|

end

end A154576.P14943502255473826757

namespace A154576

/-- `abs(2*n+3-A154590(n+1))` -/
def P14943502255473826757.Spec : Prop :=
  ∀ n, P14943502255473826757.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P9603395008908748562

`Δ[sqrt(A207701(n+1))+n²]`
-/

namespace A154576.P9603395008908748562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207701 (n + 1) : ℝ) + (n ^ 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154576.P9603395008908748562

namespace A154576

/-- `Δ[sqrt(A207701(n+1))+n²]` -/
def P9603395008908748562.Spec : Prop :=
  ∀ n, P9603395008908748562.a n = (A154576 (n + 1) : ℝ)

end A154576

/-! ## A154576.P3649361328556053097

`lcm(2, A056237(n+2)+n)/2`
-/

namespace A154576.P3649361328556053097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A056237 (n + 2) + (n : ℤ)) : ℚ) / 2

end

end A154576.P3649361328556053097

namespace A154576

/-- `lcm(2, A056237(n+2)+n)/2` -/
def P3649361328556053097.Spec : Prop :=
  ∀ n, P3649361328556053097.a n = (A154576 (n + 1) : ℚ)

end A154576

/-! ## A154576.P10112279230885042907

`Δ[A002522(n)+sqrt(A207701(n+1))]`
-/

namespace A154576.P10112279230885042907
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002522 n : ℝ) + Real.sqrt (A207701 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154576.P10112279230885042907

namespace A154576

/-- `Δ[A002522(n)+sqrt(A207701(n+1))]` -/
def P10112279230885042907.Spec : Prop :=
  ∀ n, P10112279230885042907.a n = (A154576 (n + 1) : ℝ)

end A154576

/-! ## A154576.P10696375895472877060

`Δ[A241750(n)+sqrt(A207701(n+1))]`
-/

namespace A154576.P10696375895472877060
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A241750 n : ℝ) + Real.sqrt (A207701 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154576.P10696375895472877060

namespace A154576

/-- `Δ[A241750(n)+sqrt(A207701(n+1))]` -/
def P10696375895472877060.Spec : Prop :=
  ∀ n, P10696375895472877060.a n = (A154576 (n + 1) : ℝ)

end A154576

/-! ## A154576.P3132565715481657029

`abs((A056237(n+2)+n)*A020985(n))`
-/

namespace A154576.P3132565715481657029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A056237 (n + 2) + (n : ℤ)) * A020985 n|

end

end A154576.P3132565715481657029

namespace A154576

/-- `abs((A056237(n+2)+n)*A020985(n))` -/
def P3132565715481657029.Spec : Prop :=
  ∀ n, P3132565715481657029.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P1773060710145613789

`or(1, A033537(n+2)+A016885(n))`
-/

namespace A154576.P1773060710145613789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033537 (n + 2) + A016885 n)

end

end A154576.P1773060710145613789

namespace A154576

/-- `or(1, A033537(n+2)+A016885(n))` -/
def P1773060710145613789.Spec : Prop :=
  ∀ n, P1773060710145613789.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P15852141558302472227

`abs(A016825(∑[n+4]+1)-1)`
-/

namespace A154576.P15852141558302472227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016825 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1|

end

end A154576.P15852141558302472227

namespace A154576

/-- `abs(A016825(∑[n+4]+1)-1)` -/
def P15852141558302472227.Spec : Prop :=
  ∀ n, P15852141558302472227.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P6135178337330046618

`xor(3, A016825(A052905(n+1)))`
-/

namespace A154576.P6135178337330046618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A016825 (A052905 (n + 1)).toNat)

end

end A154576.P6135178337330046618

namespace A154576

/-- `xor(3, A016825(A052905(n+1)))` -/
def P6135178337330046618.Spec : Prop :=
  ∀ n, P6135178337330046618.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P8149106575444910971

`A000265(A153644(n+1))`
-/

namespace A154576.P8149106575444910971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A153644 (n + 1)).toNat

end

end A154576.P8149106575444910971

namespace A154576

/-- `A000265(A153644(n+1))` -/
def P8149106575444910971.Spec : Prop :=
  ∀ n, P8149106575444910971.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P8890948952891424379

`A004766(∑[n+4]+1)`
-/

namespace A154576.P8890948952891424379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A154576.P8890948952891424379

namespace A154576

/-- `A004766(∑[n+4]+1)` -/
def P8890948952891424379.Spec : Prop :=
  ∀ n, P8890948952891424379.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P8808329076794461181

`A016813(∑[n+3]+n+2)`
-/

namespace A154576.P8808329076794461181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2))

end

end A154576.P8808329076794461181

namespace A154576

/-- `A016813(∑[n+3]+n+2)` -/
def P8808329076794461181.Spec : Prop :=
  ∀ n, P8808329076794461181.a n = A154576 (n + 1)

end A154576

/-! ## A154576.P11185910022771029575

`abs(2-A004767(∑[n+4]+1))`
-/

namespace A154576.P11185910022771029575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A004767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A154576.P11185910022771029575

namespace A154576

/-- `abs(2-A004767(∑[n+4]+1))` -/
def P11185910022771029575.Spec : Prop :=
  ∀ n, P11185910022771029575.a n = A154576 (n + 1)

end A154576

/-!
# A154577: Primes of the form 2n^2+14n+5.

The programs for A154577, there is no canonical definition to state claims against.
-/

/-! ## A154577.P18403997035076505165

`p?[4*C(n, 2)-19]`
-/

namespace A154577.P18403997035076505165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose n 2 : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154577.P18403997035076505165

/-! ## A154577.P7842434091966766377

`p?[ceil(n²/2)-20]`
-/

namespace A154577.P7842434091966766377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154577.P7842434091966766377

/-! ## A154577.P14191859768438180181

`abs(p?[(n+5)*2*n-7]-1)+1`
-/

namespace A154577.P14191859768438180181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 5) * (2 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A154577.P14191859768438180181

/-! ## A154577.P8239344976536886930

`or(1, p?[A001844(n)-20])`
-/

namespace A154577.P8239344976536886930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154577.P8239344976536886930

/-! ## A154577.P15717890846410750537

`lcm((-1)^n, p?[A001844(n+1)-20])`
-/

namespace A154577.P15717890846410750537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1) - 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154577.P15717890846410750537

/-! ## A154577.P15703064337324018358

`or(1, p?[A017041(n)+A007590(n)])`
-/

namespace A154577.P15703064337324018358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154577.P15703064337324018358

/-! ## A154577.P17112473967785099892

`p?[A001844(n)-20]/A007318(C(2, n))`
-/

namespace A154577.P17112473967785099892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 20

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A154577.P17112473967785099892

/-! ## A154577.P4404826930429758710

`p?[A001844(n)-20]%lcm(4, A000040(n+1))²`
-/

namespace A154577.P4404826930429758710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (Int.lcm 4 (A000040 (n + 1)) ^ 2 : ℤ)

end

end A154577.P4404826930429758710

/-!
# A154579: Primes p = prime(k) such that all the digits of the concatenation of p and k are distinct.

The programs for A154579, there is no canonical definition to state claims against.
-/

/-! ## A154579.P9209240517758582044

`A000040(A085451(n+1))`
-/

namespace A154579.P9209240517758582044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A085451 (n + 1)).toNat

end

end A154579.P9209240517758582044

/-! ## A154579.P10522385271649230888

`A008578(A085451(n+1)+1)`
-/

namespace A154579.P10522385271649230888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A085451 (n + 1) + 1).toNat

end

end A154579.P10522385271649230888

/-! ## A154579.P16799081325737874866

`A182986(A085451(n+1)+1)`
-/

namespace A154579.P16799081325737874866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A085451 (n + 1) + 1).toNat

end

end A154579.P16799081325737874866

/-! ## A154579.P17945417125604072479

`A073846(2*A085451(n+1))`
-/

namespace A154579.P17945417125604072479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A085451 (n + 1)).toNat

end

end A154579.P17945417125604072479

/-! ## A154579.P9818377448956182356

`A207790(2*A085451(n+1))`
-/

namespace A154579.P9818377448956182356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A085451 (n + 1)).toNat

end

end A154579.P9818377448956182356

/-! ## A154579.P6367728219717150894

`∑{d}[A085451(n+1), A007444(#)]`
-/

namespace A154579.P6367728219717150894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A154579.P6367728219717150894

/-!
# A154585: a(n) = abs(Sum_{k=1..n} (-1)^k * (n-k+1 mod k)).

The programs for A154585, there is no canonical definition to state claims against.
-/

/-! ## A154585.P11897857823069247361

`abs(A375746(n+2))`
-/

namespace A154585.P11897857823069247361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A375746 (n + 2)|

end

end A154585.P11897857823069247361

/-!
# A154586: Numbers n for which abs((-1)^k*Sum_{k=1..n} ((n-k+1) mod k)) = 0.

The programs for A154586, there is no canonical definition to state claims against.
-/

/-! ## A154586.P1892924942215815466

`eq[0, A154585(n+1)]+1`
-/

namespace A154586.P1892924942215815466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A154586.P1892924942215815466

/-! ## A154586.P7227669235436688313

`eq[A000007(n), A375746(n+1)]`
-/

namespace A154586.P7227669235436688313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154586.P7227669235436688313

/-! ## A154586.P13145654682344481981

`eq[A000038(n), A375746(n+1)]`
-/

namespace A154586.P13145654682344481981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154586.P13145654682344481981

/-! ## A154586.P3158072918677220449

`eq[A014041(n), A375746(n+1)]`
-/

namespace A154586.P3158072918677220449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154586.P3158072918677220449

/-! ## A154586.P9890073388413072701

`eq[A014108(n), A375746(n+1)]`
-/

namespace A154586.P9890073388413072701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154586.P9890073388413072701

/-!
# A154587: Numbers that can be expressed both as the sum of first prime numbers and as the sum of first nonprime numbers.

The programs for A154587, there is no canonical definition to state claims against.
-/

/-! ## A154587.P6374803283934888669

`∩[A007504(n), A051349(n)]`
-/

namespace A154587.P6374803283934888669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154587.P6374803283934888669

/-!
# A154588: Numbers that can be expressed as the sum of the first j integer numbers or the first k nonprime numbers, with j and k >=1.

The programs for A154588, there is no canonical definition to state claims against.
-/

/-! ## A154588.P6345859703610020129

`∩[C(n+1, 2), A051349(n+1)]`
-/

namespace A154588.P6345859703610020129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154588.P6345859703610020129

/-!
# A154589: a(n) = A154570(n) + A154570(n+1).

The programs for A154589, the canonical program `A154589.P3879680968054244063` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154589 has offset 0).

The definition of A154589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154589.P4502036869056156672

`ogf((4-9x)/(1-2x))`
-/

namespace A154589.P4502036869056156672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -9] [1, -2] n

end

end A154589.P4502036869056156672

namespace A154589

/-- `ogf((4-9x)/(1-2x))` -/
def P4502036869056156672.Spec : Prop :=
  ∀ n, P4502036869056156672.a n = A154589 n

end A154589

/-! ## A154589.P3879680968054244063

`A154570(n)+A154570(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154589

/-- `A154570(n)+A154570(n+1)` -/
def P3879680968054244063.Spec : Prop :=
  ∀ n, P3879680968054244063.a n = A154589 n

theorem P3879680968054244063.correct : P3879680968054244063.Spec := by
  intro n
  simp only [A154589]

end A154589

/-! ## A154589.P10812220221145147236

`2*a(n-1)` with `a(0)=4, a(1)=-1`
-/

namespace A154589.P10812220221145147236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, -1] fun n a =>
  2 * a (n - 1)

end

end A154589.P10812220221145147236

namespace A154589

/-- `2*a(n-1)` -/
def P10812220221145147236.Spec : Prop :=
  ∀ n, P10812220221145147236.a n = A154589 n

end A154589

/-! ## A154589.P7559139462867051174

`a(n-1)+a(n-1)` with `a(0)=4, a(1)=-1`
-/

namespace A154589.P7559139462867051174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, -1] fun n a =>
  a (n - 1) + a (n - 1)

end

end A154589.P7559139462867051174

namespace A154589

/-- `a(n-1)+a(n-1)` -/
def P7559139462867051174.Spec : Prop :=
  ∀ n, P7559139462867051174.a n = A154589 n

end A154589

/-! ## A154589.P1108118375967345426

`a(n-1)/(1-1/2)` with `a(0)=4, a(1)=-1`
-/

namespace A154589.P1108118375967345426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, -1] fun n a =>
  a (n - 1) / (1 - (1 : ℚ) / 2)

end

end A154589.P1108118375967345426

namespace A154589

/-- `a(n-1)/(1-1/2)` -/
def P1108118375967345426.Spec : Prop :=
  ∀ n, P1108118375967345426.a n = (A154589 n : ℚ)

end A154589

/-! ## A154589.P6767701256880414520

`a(n-1)-2^(n-2)` with `a(0)=4, a(1)=-1`
-/

namespace A154589.P6767701256880414520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, -1] fun n a =>
  a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A154589.P6767701256880414520

namespace A154589

/-- `a(n-1)-2^(n-2)` -/
def P6767701256880414520.Spec : Prop :=
  ∀ n, P6767701256880414520.a n = (A154589 n : ℚ)

end A154589

/-! ## A154589.P8332882989342645376

`A157823(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A154589.P8332882989342645376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A157823 (n - 1) + a (n - 1)

end

end A154589.P8332882989342645376

namespace A154589

/-- `A157823(n-1)+a(n-1)` -/
def P8332882989342645376.Spec : Prop :=
  ∀ n, P8332882989342645376.a n = A154589 n

end A154589

/-! ## A154589.P8532579956779309106

`A174971(n)+A156067(n)`
-/

namespace A154589.P8532579956779309106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n + A156067 n

end

end A154589.P8532579956779309106

namespace A154589

/-- `A174971(n)+A156067(n)` -/
def P8532579956779309106.Spec : Prop :=
  ∀ n, P8532579956779309106.a n = A154589 n

end A154589

/-! ## A154589.P13167356702321023665

`4*A000007(n)-A131577(n)`
-/

namespace A154589.P13167356702321023665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000007 n - A131577 n

end

end A154589.P13167356702321023665

namespace A154589

/-- `4*A000007(n)-A131577(n)` -/
def P13167356702321023665.Spec : Prop :=
  ∀ n, P13167356702321023665.a n = A154589 n

end A154589

/-! ## A154589.P14939710131411700723

`(A153881(n+1)+1)²-A131577(n)`
-/

namespace A154589.P14939710131411700723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) + 1) ^ 2 - A131577 n

end

end A154589.P14939710131411700723

namespace A154589

/-- `(A153881(n+1)+1)²-A131577(n)` -/
def P14939710131411700723.Spec : Prop :=
  ∀ n, P14939710131411700723.a n = A154589 n

end A154589

/-! ## A154589.P4947514679051990949

`A010704(n+1)+A156067(n)-A010704(n)`
-/

namespace A154589.P4947514679051990949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 (n + 1) + (A156067 n - A010704 n)

end

end A154589.P4947514679051990949

namespace A154589

/-- `A010704(n+1)+A156067(n)-A010704(n)` -/
def P4947514679051990949.Spec : Prop :=
  ∀ n, P4947514679051990949.a n = A154589 n

end A154589

/-! ## A154589.P11093144341351621625

`Δ[a(n-1)-(5-a(n-1))]` with `a(0)=0, a(1)=4`
-/

namespace A154589.P11093144341351621625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) - (5 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154589.P11093144341351621625

namespace A154589

/-- `Δ[a(n-1)-(5-a(n-1))]` -/
def P11093144341351621625.Spec : Prop :=
  ∀ n, P11093144341351621625.a n = A154589 n

end A154589

/-! ## A154589.P1755800880528364190

`Δ[A157823(n)]`
-/

namespace A154589.P1755800880528364190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154589.P1755800880528364190

namespace A154589

/-- `Δ[A157823(n)]` -/
def P1755800880528364190.Spec : Prop :=
  ∀ n, P1755800880528364190.a n = A154589 n

end A154589

/-! ## A154589.P14932807056682693050

`A157823(n+1)-A157823(n)`
-/

namespace A154589.P14932807056682693050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 (n + 1) - A157823 n

end

end A154589.P14932807056682693050

namespace A154589

/-- `A157823(n+1)-A157823(n)` -/
def P14932807056682693050.Spec : Prop :=
  ∀ n, P14932807056682693050.a n = A154589 n

end A154589

/-! ## A154589.P7489025704756308306

`A156591(n+2)-A156591(n)`
-/

namespace A154589.P7489025704756308306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156591 (n + 2) - A156591 n

end

end A154589.P7489025704756308306

namespace A154589

/-- `A156591(n+2)-A156591(n)` -/
def P7489025704756308306.Spec : Prop :=
  ∀ n, P7489025704756308306.a n = A154589 n

end A154589

/-! ## A154589.P12502602544374130515

`A137206(2*n)+A000038(n)²`
-/

namespace A154589.P12502602544374130515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (2 * n) + A000038 n ^ 2

end

end A154589.P12502602544374130515

namespace A154589

/-- `A137206(2*n)+A000038(n)²` -/
def P12502602544374130515.Spec : Prop :=
  ∀ n, P12502602544374130515.a n = A154589 n

end A154589

/-! ## A154589.P3718213146090112125

`A156067(n+1)+A156067(n)+A000079(n)`
-/

namespace A154589.P3718213146090112125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 (n + 1) + (A156067 n + A000079 n)

end

end A154589.P3718213146090112125

namespace A154589

/-- `A156067(n+1)+A156067(n)+A000079(n)` -/
def P3718213146090112125.Spec : Prop :=
  ∀ n, P3718213146090112125.a n = A154589 n

end A154589

/-! ## A154589.P16897975086906573176

`A156067(n+1)+A254076(n)+A010704(n)`
-/

namespace A154589.P16897975086906573176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 (n + 1) + (A254076 n + A010704 n)

end

end A154589.P16897975086906573176

namespace A154589

/-- `A156067(n+1)+A254076(n)+A010704(n)` -/
def P16897975086906573176.Spec : Prop :=
  ∀ n, P16897975086906573176.a n = A154589 n

end A154589

/-! ## A154589.P3846721905855203705

`A010704(n+1)+A254076(n)-A000079(n)`
-/

namespace A154589.P3846721905855203705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 (n + 1) + (A254076 n - A000079 n)

end

end A154589.P3846721905855203705

namespace A154589

/-- `A010704(n+1)+A254076(n)-A000079(n)` -/
def P3846721905855203705.Spec : Prop :=
  ∀ n, P3846721905855203705.a n = A154589 n

end A154589

/-! ## A154589.P17385191860343039584

`A010704(n+1)+A254076(n)+A157823(n+1)`
-/

namespace A154589.P17385191860343039584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 (n + 1) + (A254076 n + A157823 (n + 1))

end

end A154589.P17385191860343039584

namespace A154589

/-- `A010704(n+1)+A254076(n)+A157823(n+1)` -/
def P17385191860343039584.Spec : Prop :=
  ∀ n, P17385191860343039584.a n = A154589 n

end A154589

/-!
# A154590: a(n) = 2*n^2 + 16*n + 6.

The programs for A154590, the canonical program `A154590.P9020254180927337219` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154590 has offset 1).

The definition of A154590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+16*(n+1)+6` (program `A154590.P9020254180927337219`, by `A154590.P9020254180927337219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154590.P13018074640190089592

`ogf((24-26x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154590.P13018074640190089592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [24, -26, 6] [1, -3, 3, -1] n

end

end A154590.P13018074640190089592

namespace A154590

/-- `ogf((24-26x+6x^2)/(1-3x+3x^2-x^3))` -/
def P13018074640190089592.Spec : Prop :=
  ∀ n, P13018074640190089592.a n = A154590 (n + 1)

end A154590

/-! ## A154590.P9020254180927337219

`2*(n+1)²+16*(n+1)+6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154590

/-- `2*(n+1)²+16*(n+1)+6` -/
def P9020254180927337219.Spec : Prop :=
  ∀ n, (P9020254180927337219.a n : ℤ) = A154590 (n + 1)

theorem P9020254180927337219.correct : P9020254180927337219.Spec := by
  intro n
  simp only [A154590, Nat.add_sub_cancel]

end A154590

/-! ## A154590.P6107432217006288279

`2*A116711(n+4)`
-/

namespace A154590.P6107432217006288279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116711 (n + 4)

end

end A154590.P6107432217006288279

namespace A154590

/-- `2*A116711(n+4)` -/
def P6107432217006288279.Spec : Prop :=
  ∀ n, P6107432217006288279.a n = A154590 (n + 1)

end A154590

/-! ## A154590.P16466756121062980064

`∑[a(n-1)+4]` with `a(0)=24, a(1)=22`
-/

namespace A154590.P16466756121062980064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24, 22] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154590.P16466756121062980064

namespace A154590

/-- `∑[a(n-1)+4]` -/
def P16466756121062980064.Spec : Prop :=
  ∀ n, (P16466756121062980064.a n : ℤ) = A154590 (n + 1)

end A154590

/-! ## A154590.P7673711596477254382

`2*(A004767(n)+(n+3)²)`
-/

namespace A154590.P7673711596477254382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004767 n + ((n + 3) ^ 2 : ℤ))

end

end A154590.P7673711596477254382

namespace A154590

/-- `2*(A004767(n)+(n+3)²)` -/
def P7673711596477254382.Spec : Prop :=
  ∀ n, P7673711596477254382.a n = A154590 (n + 1)

theorem P7673711596477254382.correct : P7673711596477254382.Spec := by
  intro n
  simp only [A154590, Nat.add_sub_cancel, A154590.P7673711596477254382.a, A154590.P9020254180927337219.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154590

/-! ## A154590.P13296298210249873343

`2*(A028566(n+1)+3)`
-/

namespace A154590.P13296298210249873343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028566 (n + 1) + 3)

end

end A154590.P13296298210249873343

namespace A154590

/-- `2*(A028566(n+1)+3)` -/
def P13296298210249873343.Spec : Prop :=
  ∀ n, P13296298210249873343.a n = A154590 (n + 1)

theorem P13296298210249873343.correct : P13296298210249873343.Spec := by
  intro n
  simp only [A154590, Nat.add_sub_cancel, A154590.P13296298210249873343.a, A154590.P9020254180927337219.a, A028566, A028566.P16217811333001459457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154590

/-! ## A154590.P11657148320607486442

`A020739(A028566(n+1))`
-/

namespace A154590.P11657148320607486442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A028566 (n + 1)).toNat

end

end A154590.P11657148320607486442

namespace A154590

/-- `A020739(A028566(n+1))` -/
def P11657148320607486442.Spec : Prop :=
  ∀ n, P11657148320607486442.a n = A154590 (n + 1)

end A154590

/-! ## A154590.P13345457863395856370

`A020744(A028563(n+1)+n)`
-/

namespace A154590.P13345457863395856370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 (A028563 (n + 1) + (n : ℤ)).toNat

end

end A154590.P13345457863395856370

namespace A154590

/-- `A020744(A028563(n+1)+n)` -/
def P13345457863395856370.Spec : Prop :=
  ∀ n, P13345457863395856370.a n = A154590 (n + 1)

end A154590

/-! ## A154590.P4660081194703607910

`A020739(A028563(n+1)+n+1)`
-/

namespace A154590.P4660081194703607910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (A028563 (n + 1) + (n + 1 : ℤ)).toNat

end

end A154590.P4660081194703607910

namespace A154590

/-- `A020739(A028563(n+1)+n+1)` -/
def P4660081194703607910.Spec : Prop :=
  ∀ n, P4660081194703607910.a n = A154590 (n + 1)

end A154590

/-! ## A154590.P15018873600490182490

`A005843(A028878(n+1)+A005843(n+1))`
-/

namespace A154590.P15018873600490182490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028878 (n + 1) + A005843 (n + 1)).toNat

end

end A154590.P15018873600490182490

namespace A154590

/-- `A005843(A028878(n+1)+A005843(n+1))` -/
def P15018873600490182490.Spec : Prop :=
  ∀ n, P15018873600490182490.a n = A154590 (n + 1)

end A154590

/-!
# A154591: a(n) = 2*n^2 + 18*n + 7.

The programs for A154591, the canonical program `A154591.P5726622764519936189` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154591 has offset 1).

The definition of A154591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+18*(n+1)+7` (program `A154591.P5726622764519936189`, by `A154591.P5726622764519936189.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154591.P5086360942120926814

`ogf((27-30x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154591.P5086360942120926814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, -30, 7] [1, -3, 3, -1] n

end

end A154591.P5086360942120926814

namespace A154591

/-- `ogf((27-30x+7x^2)/(1-3x+3x^2-x^3))` -/
def P5086360942120926814.Spec : Prop :=
  ∀ n, P5086360942120926814.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P5726622764519936189

`2*(n+1)²+18*(n+1)+7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154591

/-- `2*(n+1)²+18*(n+1)+7` -/
def P5726622764519936189.Spec : Prop :=
  ∀ n, (P5726622764519936189.a n : ℤ) = A154591 (n + 1)

theorem P5726622764519936189.correct : P5726622764519936189.Spec := by
  intro n
  simp only [A154591, Nat.add_sub_cancel]

end A154591

/-! ## A154591.P6653031878503381526

`∑[a(n-1)+4]` with `a(0)=27, a(1)=24`
-/

namespace A154591.P6653031878503381526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [27, 24] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154591.P6653031878503381526

namespace A154591

/-- `∑[a(n-1)+4]` -/
def P6653031878503381526.Spec : Prop :=
  ∀ n, (P6653031878503381526.a n : ℤ) = A154591 (n + 1)

end A154591

/-! ## A154591.P2659479345273488197

`xor(3, A154590(n+1)+2*n)`
-/

namespace A154591.P2659479345273488197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A154590 (n + 1) + (2 * n : ℤ))

end

end A154591.P2659479345273488197

namespace A154591

/-- `xor(3, A154590(n+1)+2*n)` -/
def P2659479345273488197.Spec : Prop :=
  ∀ n, P2659479345273488197.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P11057732410499142493

`(A154600(n+1)+A154576(n+1))/2`
-/

namespace A154591.P11057732410499142493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154600 (n + 1) + A154576 (n + 1) : ℚ) / 2

end

end A154591.P11057732410499142493

namespace A154591

/-- `(A154600(n+1)+A154576(n+1))/2` -/
def P11057732410499142493.Spec : Prop :=
  ∀ n, P11057732410499142493.a n = (A154591 (n + 1) : ℚ)

theorem P11057732410499142493.correct : P11057732410499142493.Spec := by
  intro n
  simp only [A154591, Nat.add_sub_cancel, A154591.P11057732410499142493.a, A154591.P5726622764519936189.a, A154576, A154576.P17742162986823344533.a, A154600, A154600.P13500036315389612627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154591

/-! ## A154591.P15288217533938013088

`(A154599(n+1)+A154590(n+1))/2`
-/

namespace A154591.P15288217533938013088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154599 (n + 1) + A154590 (n + 1) : ℚ) / 2

end

end A154591.P15288217533938013088

namespace A154591

/-- `(A154599(n+1)+A154590(n+1))/2` -/
def P15288217533938013088.Spec : Prop :=
  ∀ n, P15288217533938013088.a n = (A154591 (n + 1) : ℚ)

theorem P15288217533938013088.correct : P15288217533938013088.Spec := by
  intro n
  simp only [A154591, Nat.add_sub_cancel, A154591.P15288217533938013088.a, A154591.P5726622764519936189.a, A154590, A154590.P9020254180927337219.a, A154599, A154599.P9900226986804621199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154591

/-! ## A154591.P16714066719883807251

`(A154599(n+1)+A154599(n+1))%A154600(n+1)`
-/

namespace A154591.P16714066719883807251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154599 (n + 1) + A154599 (n + 1)) (A154600 (n + 1))

end

end A154591.P16714066719883807251

namespace A154591

/-- `(A154599(n+1)+A154599(n+1))%A154600(n+1)` -/
def P16714066719883807251.Spec : Prop :=
  ∀ n, P16714066719883807251.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P17168006916363903019

`A014682(A154600(n+1)+A154576(n+1))`
-/

namespace A154591.P17168006916363903019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A154600 (n + 1) + A154576 (n + 1)).toNat

end

end A154591.P17168006916363903019

namespace A154591

/-- `A014682(A154600(n+1)+A154576(n+1))` -/
def P17168006916363903019.Spec : Prop :=
  ∀ n, P17168006916363903019.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P15407467813476788777

`A014682(A154599(n+1)+A154590(n+1))`
-/

namespace A154591.P15407467813476788777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A154599 (n + 1) + A154590 (n + 1)).toNat

end

end A154591.P15407467813476788777

namespace A154591

/-- `A014682(A154599(n+1)+A154590(n+1))` -/
def P15407467813476788777.Spec : Prop :=
  ∀ n, P15407467813476788777.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P11264941174831529772

`A004767(∑[n+5]+1)`
-/

namespace A154591.P11264941174831529772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A154591.P11264941174831529772

namespace A154591

/-- `A004767(∑[n+5]+1)` -/
def P11264941174831529772.Spec : Prop :=
  ∀ n, P11264941174831529772.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P9139672626139393834

`A131098(∑[n+5]+3)`
-/

namespace A154591.P9139672626139393834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A154591.P9139672626139393834

namespace A154591

/-- `A131098(∑[n+5]+3)` -/
def P9139672626139393834.Spec : Prop :=
  ∀ n, P9139672626139393834.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P2192516510621007672

`A217585(A155212(n+1))`
-/

namespace A154591.P2192516510621007672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217585 (A155212 (n + 1)).toNat

end

end A154591.P2192516510621007672

namespace A154591

/-- `A217585(A155212(n+1))` -/
def P2192516510621007672.Spec : Prop :=
  ∀ n, P2192516510621007672.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P6319552725160385837

`A083031(A155212(n+1)+1)`
-/

namespace A154591.P6319552725160385837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (A155212 (n + 1) + 1).toNat

end

end A154591.P6319552725160385837

namespace A154591

/-- `A083031(A155212(n+1)+1)` -/
def P6319552725160385837.Spec : Prop :=
  ∀ n, P6319552725160385837.a n = A154591 (n + 1)

end A154591

/-! ## A154591.P7200172303897803285

`A083031(A056000(n+1)+3)`
-/

namespace A154591.P7200172303897803285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (A056000 (n + 1) + 3).toNat

end

end A154591.P7200172303897803285

namespace A154591

/-- `A083031(A056000(n+1)+3)` -/
def P7200172303897803285.Spec : Prop :=
  ∀ n, P7200172303897803285.a n = A154591 (n + 1)

end A154591

/-!
# A154592: Primes of the form 2n^2+18n+7, n>=0.

The programs for A154592, there is no canonical definition to state claims against.
-/

/-! ## A154592.P11903136794298268239

`p?[36*C(n, 2)-29]`
-/

namespace A154592.P11903136794298268239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (36 * Nat.choose n 2 : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154592.P11903136794298268239

/-! ## A154592.P3897263656698199703

`p?[2*(n²+n)-33]`
-/

namespace A154592.P3897263656698199703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2 + n) : ℤ) - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154592.P3897263656698199703

/-! ## A154592.P2042470992194432703

`or(2, p?[n*2*(n+3)-29])`
-/

namespace A154592.P2042470992194432703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * (n + 3)) : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154592.P2042470992194432703

/-! ## A154592.P4893961092425285227

`p?[A147587(n)+A054000(n+1)]*A057979(2*n)`
-/

namespace A154592.P4893961092425285227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n + A054000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057979 (2 * n)

end

end A154592.P4893961092425285227

/-! ## A154592.P11368324724546637799

`record[p?[A156678(n+1)-33]]`
-/

namespace A154592.P11368324724546637799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (n + 1) - 33

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154592.P11368324724546637799

/-!
# A154595: Period 6: repeat [1, 3, 3, -1, -3, -3].

The programs for A154595, the canonical program `A154595.P15418026533086665943` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154595 has offset 0).

The definition of A154595 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154595.anchor (n : ℕ) : A154595 n = [1, 3, 3, -1, -3, -3].getD (n % 6) 0` in `Proof.A154.A154595`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154595.P15418026533086665943

`-a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154595

/-- `-a(n-3)` -/
def P15418026533086665943.Spec : Prop :=
  ∀ n, P15418026533086665943.a n = A154595 n

theorem P15418026533086665943.correct : P15418026533086665943.Spec := by
  intro n
  simp only [A154595]

end A154595

/-!
# A154596: a(n) = Sum_{j=1..n-1} A142458(n-1, k)*a(n - k), with a(1) = 1.

The programs for A154596, there is no canonical definition to state claims against.
-/

/-! ## A154596.P13840221975252296901

`A240734(n)+A001481(A182124(n))`
-/

namespace A154596.P13840221975252296901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240734 n + A001481 (A182124 n).toNat

end

end A154596.P13840221975252296901

/-!
# A154597: a(n) = 15*a(n-1) + a(n-2) with a(0) = 0, a(1) = 1.

The programs for A154597, the canonical program `A154597.P11727462255335555935` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154597 has offset 0).

The definition of A154597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*a(n-1)+a(n-2)` (program `A154597.P11727462255335555935`, by `A154597.P11727462255335555935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154597.P12601705174677942854

`ogf(x/(1-15x-x^2))`
-/

namespace A154597.P12601705174677942854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -15, -1] n

end

end A154597.P12601705174677942854

namespace A154597

/-- `ogf(x/(1-15x-x^2))` -/
def P12601705174677942854.Spec : Prop :=
  ∀ n, P12601705174677942854.a n = A154597 n

end A154597

/-! ## A154597.P11727462255335555935

`15*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154597

/-- `15*a(n-1)+a(n-2)` -/
def P11727462255335555935.Spec : Prop :=
  ∀ n, (P11727462255335555935.a n : ℤ) = A154597 n

theorem P11727462255335555935.correct : P11727462255335555935.Spec := by
  intro n
  simp only [A154597]

end A154597

/-! ## A154597.P1934148277567234516

`((15+sqrt(229))^n-(15-sqrt(229))^n)/(2^n*sqrt(229))`
-/

namespace A154597.P1934148277567234516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((15 + Real.sqrt (229 : ℝ)) ^ n - (15 - Real.sqrt (229 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (229 : ℝ))

end

end A154597.P1934148277567234516

namespace A154597

/-- `((15+sqrt(229))^n-(15-sqrt(229))^n)/(2^n*sqrt(229))` -/
def P1934148277567234516.Spec : Prop :=
  ∀ n, P1934148277567234516.a n = (A154597 n : ℝ)

theorem P1934148277567234516.correct : P1934148277567234516.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154597, Nat.add_sub_cancel, A154597.P1934148277567234516.a, A154597.P11727462255335555935.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154597, Nat.add_sub_cancel, A154597.P1934148277567234516.a, A154597.P11727462255335555935.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154597

/-! ## A154597.P17443678465816636293

`16*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A154597.P17443678465816636293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  16 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A154597.P17443678465816636293

namespace A154597

/-- `16*a(n-1)-(a(n-1)-a(n-2))` -/
def P17443678465816636293.Spec : Prop :=
  ∀ n, P17443678465816636293.a n = A154597 n

end A154597

/-! ## A154597.P6888214965966185019

`A172236(eq[14, A193592(n)])`
-/

namespace A154597.P6888214965966185019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154597.P6888214965966185019

namespace A154597

/-- `A172236(eq[14, A193592(n)])` -/
def P6888214965966185019.Spec : Prop :=
  ∀ n, P6888214965966185019.a n = A154597 n

end A154597

/-! ## A154597.P12070134703503221003

`A172236(eq[22, A219347(n)])`
-/

namespace A154597.P12070134703503221003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154597.P12070134703503221003

namespace A154597

/-- `A172236(eq[22, A219347(n)])` -/
def P12070134703503221003.Spec : Prop :=
  ∀ n, P12070134703503221003.a n = A154597 n

end A154597

/-!
# A154598: a(n) is the smallest prime p such that p-1 and p+1 both have n prime factors (with multiplicity).

The programs for A154598, there is no canonical definition to state claims against.
-/

/-! ## A154598.P1386390626711831727

`A067069(A034794(n+1))+A034794(n+1)`
-/

namespace A154598.P1386390626711831727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067069 (A034794 (n + 1)).toNat + A034794 (n + 1)

end

end A154598.P1386390626711831727

/-!
# A154599: a(n) = 2*n^2 + 20*n + 8.

The programs for A154599, the canonical program `A154599.P9900226986804621199` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154599 has offset 1).

The definition of A154599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+20*(n+1)+8` (program `A154599.P9900226986804621199`, by `A154599.P9900226986804621199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154599.P10016147324239006991

`ogf((30-34x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154599.P10016147324239006991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [30, -34, 8] [1, -3, 3, -1] n

end

end A154599.P10016147324239006991

namespace A154599

/-- `ogf((30-34x+8x^2)/(1-3x+3x^2-x^3))` -/
def P10016147324239006991.Spec : Prop :=
  ∀ n, P10016147324239006991.a n = A154599 (n + 1)

end A154599

/-! ## A154599.P9900226986804621199

`2*(n+1)²+20*(n+1)+8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154599

/-- `2*(n+1)²+20*(n+1)+8` -/
def P9900226986804621199.Spec : Prop :=
  ∀ n, (P9900226986804621199.a n : ℤ) = A154599 (n + 1)

theorem P9900226986804621199.correct : P9900226986804621199.Spec := by
  intro n
  simp only [A154599, Nat.add_sub_cancel]

end A154599

/-! ## A154599.P5044329918560947938

`2*A127147(n+14)`
-/

namespace A154599.P5044329918560947938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127147 (n + 14)

end

end A154599.P5044329918560947938

namespace A154599

/-- `2*A127147(n+14)` -/
def P5044329918560947938.Spec : Prop :=
  ∀ n, P5044329918560947938.a n = A154599 (n + 1)

theorem P5044329918560947938.correct : P5044329918560947938.Spec := by
  intro n
  simp only [A154599, Nat.add_sub_cancel, A154599.P5044329918560947938.a, A154599.P9900226986804621199.a, A127147, A127147.P11603212744019295164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154599

/-! ## A154599.P13079012198709036695

`∑[a(n-1)+4]` with `a(0)=30, a(1)=26`
-/

namespace A154599.P13079012198709036695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [30, 26] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154599.P13079012198709036695

namespace A154599

/-- `∑[a(n-1)+4]` -/
def P13079012198709036695.Spec : Prop :=
  ∀ n, (P13079012198709036695.a n : ℤ) = A154599 (n + 1)

end A154599

/-! ## A154599.P6242479577377238173

`2*(A134594(n+1)-1)`
-/

namespace A154599.P6242479577377238173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134594 (n + 1) - 1)

end

end A154599.P6242479577377238173

namespace A154599

/-- `2*(A134594(n+1)-1)` -/
def P6242479577377238173.Spec : Prop :=
  ∀ n, P6242479577377238173.a n = A154599 (n + 1)

theorem P6242479577377238173.correct : P6242479577377238173.Spec := by
  intro n
  simp only [A154599, Nat.add_sub_cancel, A154599.P6242479577377238173.a, A154599.P9900226986804621199.a, A134594, A134594.P18284746357933972269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154599

/-! ## A154599.P15858401812199361053

`A020744(A098603(n+1))`
-/

namespace A154599.P15858401812199361053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 (A098603 (n + 1)).toNat

end

end A154599.P15858401812199361053

namespace A154599

/-- `A020744(A098603(n+1))` -/
def P15858401812199361053.Spec : Prop :=
  ∀ n, P15858401812199361053.a n = A154599 (n + 1)

end A154599

/-! ## A154599.P10135464930579181493

`A004275(A134594(n+1))`
-/

namespace A154599.P10135464930579181493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A134594 (n + 1)).toNat

end

end A154599.P10135464930579181493

namespace A154599

/-- `A004275(A134594(n+1))` -/
def P10135464930579181493.Spec : Prop :=
  ∀ n, P10135464930579181493.a n = A154599 (n + 1)

end A154599

/-! ## A154599.P12765948664598711388

`A023458(A154590(n+2))`
-/

namespace A154599.P12765948664598711388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023458 (A154590 (n + 2)).toNat

end

end A154599.P12765948664598711388

namespace A154599

/-- `A023458(A154590(n+2))` -/
def P12765948664598711388.Spec : Prop :=
  ∀ n, P12765948664598711388.a n = A154599 (n + 1)

end A154599

