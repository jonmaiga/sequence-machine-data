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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A160215: Primes congruent to 2^k+1 (mod 2^(k+1)), where k is any even integer >=0.

The programs for A160215, the canonical program `A160215.P17175051034793309939` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160215 has offset 1).

The definition of A160215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160215.P17175051034793309939

`p?[(n+2)*xor(n, n+1)%3]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160215

/-- `p?[(n+2)*xor(n, n+1)%3]` -/
def P17175051034793309939.Spec : Prop :=
  ∀ n, (P17175051034793309939.a n : ℤ) = A160215 (n + 1)

theorem P17175051034793309939.correct : P17175051034793309939.Spec := by
  intro n
  simp only [A160215, Nat.add_sub_cancel]

end A160215

/-! ## A160215.P1651409375461250745

`p?[n+2-xor(n, abs(1-n))%3]`
-/

namespace A160215.P1651409375461250745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.tmod (Int.xor (n : ℤ) |1 - (n : ℤ)|) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P1651409375461250745

namespace A160215

/-- `p?[n+2-xor(n, abs(1-n))%3]` -/
def P1651409375461250745.Spec : Prop :=
  ∀ n, P1651409375461250745.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P16321990380424864449

`p?[(n+2)*A035263(n+1)]`
-/

namespace A160215.P16321990380424864449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A035263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P16321990380424864449

namespace A160215

/-- `p?[(n+2)*A035263(n+1)]` -/
def P16321990380424864449.Spec : Prop :=
  ∀ n, P16321990380424864449.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P12190921003816678707

`p?[(n+2)*A089608(n+1)]`
-/

namespace A160215.P12190921003816678707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A089608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P12190921003816678707

namespace A160215

/-- `p?[(n+2)*A089608(n+1)]` -/
def P12190921003816678707.Spec : Prop :=
  ∀ n, P12190921003816678707.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P14655920537311882934

`p?[abs(A280193(val(n+1, 2)+1)-1-n)]`
-/

namespace A160215.P14655920537311882934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280193 (SequenceMachineLib.valuation (n + 1) 2 + 1) - 1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P14655920537311882934

namespace A160215

/-- `p?[abs(A280193(val(n+1, 2)+1)-1-n)]` -/
def P14655920537311882934.Spec : Prop :=
  ∀ n, P14655920537311882934.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P11380642500932401779

`record[p?[A302792(2*(n+1))+1]]`
-/

namespace A160215.P11380642500932401779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (2 * (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160215.P11380642500932401779

namespace A160215

/-- `record[p?[A302792(2*(n+1))+1]]` -/
def P11380642500932401779.Spec : Prop :=
  ∀ n, P11380642500932401779.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P15402799155337733322

`record[A006530(A302792(n+1)+1)]`
-/

namespace A160215.P15402799155337733322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A302792 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160215.P15402799155337733322

namespace A160215

/-- `record[A006530(A302792(n+1)+1)]` -/
def P15402799155337733322.Spec : Prop :=
  ∀ n, P15402799155337733322.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P17815027909158508490

`record[A020639(A302792(n+1)+1)]`
-/

namespace A160215.P17815027909158508490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A302792 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160215.P17815027909158508490

namespace A160215

/-- `record[A020639(A302792(n+1)+1)]` -/
def P17815027909158508490.Spec : Prop :=
  ∀ n, P17815027909158508490.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P10209764874520917181

`record[A006530(2*n-A000217(xor(n, n+1))%3+3)]`
-/

namespace A160215.P10209764874520917181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n : ℤ) - Int.tmod (A000217 (Nat.xor n (n + 1))) 3 + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160215.P10209764874520917181

namespace A160215

/-- `record[A006530(2*n-A000217(xor(n, n+1))%3+3)]` -/
def P10209764874520917181.Spec : Prop :=
  ∀ n, P10209764874520917181.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P16627361961218234664

`p?[xor(1, A344346(n+1))]`
-/

namespace A160215.P16627361961218234664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A344346 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P16627361961218234664

namespace A160215

/-- `p?[xor(1, A344346(n+1))]` -/
def P16627361961218234664.Spec : Prop :=
  ∀ n, P16627361961218234664.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P2376918008704401595

`p?[A007413(n+1)+2*n+1]`
-/

namespace A160215.P2376918008704401595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P2376918008704401595

namespace A160215

/-- `p?[A007413(n+1)+2*n+1]` -/
def P2376918008704401595.Spec : Prop :=
  ∀ n, P2376918008704401595.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P9553745946673694917

`p?[A056832(n+1)+2*n+1]`
-/

namespace A160215.P9553745946673694917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P9553745946673694917

namespace A160215

/-- `p?[A056832(n+1)+2*n+1]` -/
def P9553745946673694917.Spec : Prop :=
  ∀ n, P9553745946673694917.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P14633270813838081807

`p?[abs(Δ[A010060(n)]-(2*n+3))]`
-/

namespace A160215.P14633270813838081807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n - (2 * n + 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P14633270813838081807

namespace A160215

/-- `p?[abs(Δ[A010060(n)]-(2*n+3))]` -/
def P14633270813838081807.Spec : Prop :=
  ∀ n, P14633270813838081807.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P7826902262691240031

`record[A006530(A026491(n+1))]`
-/

namespace A160215.P7826902262691240031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A026491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160215.P7826902262691240031

namespace A160215

/-- `record[A006530(A026491(n+1))]` -/
def P7826902262691240031.Spec : Prop :=
  ∀ n, P7826902262691240031.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P2245069915031599577

`record[A006530(2*A026491(n))]`
-/

namespace A160215.P2245069915031599577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A026491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160215.P2245069915031599577

namespace A160215

/-- `record[A006530(2*A026491(n))]` -/
def P2245069915031599577.Spec : Prop :=
  ∀ n, P2245069915031599577.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P2979503203434149547

`p?[A017029(n)-(A297469(n)+2)]`
-/

namespace A160215.P2979503203434149547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - (A297469 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P2979503203434149547

namespace A160215

/-- `p?[A017029(n)-(A297469(n)+2)]` -/
def P2979503203434149547.Spec : Prop :=
  ∀ n, P2979503203434149547.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P7750176033922774942

`p?[A309231(n+1)-(A017029(n)+1)]`
-/

namespace A160215.P7750176033922774942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309231 (n + 1) - (A017029 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P7750176033922774942

namespace A160215

/-- `p?[A309231(n+1)-(A017029(n)+1)]` -/
def P7750176033922774942.Spec : Prop :=
  ∀ n, P7750176033922774942.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P14360280452289697396

`record[A006530(or(2*n, A007814(n+1))+2)]`
-/

namespace A160215.P14360280452289697396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor (2 * n : ℤ) (A007814 (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160215.P14360280452289697396

namespace A160215

/-- `record[A006530(or(2*n, A007814(n+1))+2)]` -/
def P14360280452289697396.Spec : Prop :=
  ∀ n, P14360280452289697396.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P2677809567980786059

`p?[A085058(A085058(n)²)+n]`
-/

namespace A160215.P2677809567980786059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A085058 n ^ 2).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P2677809567980786059

namespace A160215

/-- `p?[A085058(A085058(n)²)+n]` -/
def P2677809567980786059.Spec : Prop :=
  ∀ n, P2677809567980786059.a n = A160215 (n + 1)

end A160215

/-! ## A160215.P4684558598064427929

`p?[A171946(n+1)]`
-/

namespace A160215.P4684558598064427929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160215.P4684558598064427929

namespace A160215

/-- `p?[A171946(n+1)]` -/
def P4684558598064427929.Spec : Prop :=
  ∀ n, P4684558598064427929.a n = A160215 (n + 1)

end A160215

/-!
# A160216: Primes congruent to 2^k+1 (mod 2^(k+1)), where k is any odd integer >=1.

The programs for A160216, there is no canonical definition to state claims against.
-/

/-! ## A160216.P7968453391500446897

`p?[and(n+1, -log2(gcd(64, n)))]`
-/

namespace A160216.P7968453391500446897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (SequenceMachineLib.roundAway (-Real.logb 2 (Nat.gcd 64 n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160216.P7968453391500446897

/-! ## A160216.P11079001931101916530

`p?[and(n+2, -val(n+1, 2))]`
-/

namespace A160216.P11079001931101916530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160216.P11079001931101916530

/-! ## A160216.P2926653880941993896

`p?[and(n, -n)%3+2*n]`
-/

namespace A160216.P2926653880941993896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3 + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160216.P2926653880941993896

/-! ## A160216.P12903484452209147761

`p?[(n+2)*val(n+1, 2)%2]`
-/

namespace A160216.P12903484452209147761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (SequenceMachineLib.valuation (n + 1) 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160216.P12903484452209147761

/-! ## A160216.P4636605478983716233

`p?[(n+2)*gcd(2, val(n+1, 2))]`
-/

namespace A160216.P4636605478983716233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160216.P4636605478983716233

/-! ## A160216.P17448286700162675684

`p?[(n+2)*and(1, val(n+1, 2))]`
-/

namespace A160216.P17448286700162675684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160216.P17448286700162675684

/-! ## A160216.P8887415741602462357

`p?[or(2*n, val(n+1, 2))+3]`
-/

namespace A160216.P8887415741602462357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (SequenceMachineLib.valuation (n + 1) 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160216.P8887415741602462357

/-! ## A160216.P15357183313971674872

`p?[(n+3)^(val(n+2, 2)%2)]`
-/

namespace A160216.P15357183313971674872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ (SequenceMachineLib.valuation (n + 2) 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160216.P15357183313971674872

/-! ## A160216.P2786305197733454832

`p?[xor(n, n-1)%3+2*n]`
-/

namespace A160216.P2786305197733454832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3 + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160216.P2786305197733454832

/-! ## A160216.P16967654750105478803

`p?[gcd(n+2, xor(n, n+1)%3)]`
-/

namespace A160216.P16967654750105478803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (Nat.xor n (n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160216.P16967654750105478803

/-!
# A160217: Minimal increasing sequence with a(1)=3 and the property that a(n) and n are both in or both not in A003159.

The programs for A160217, there is no canonical definition to state claims against.
-/

/-! ## A160217.P4741045531557402517

`∑[Δ[and(n, -n)%3]+2]`
-/

namespace A160217.P4741045531557402517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160217.P4741045531557402517

/-! ## A160217.P4704635877283881868

`or(2*n, val(n+1, 2))+3`
-/

namespace A160217.P4704635877283881868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (SequenceMachineLib.valuation (n + 1) 2) + 3

end

end A160217.P4704635877283881868

/-! ## A160217.P11202734360998543240

`2*(n+2)-floor(ratio[or(42, n)])`
-/

namespace A160217.P11202734360998543240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 42 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A160217.P11202734360998543240

/-! ## A160217.P1519098688463699273

`ceil(2*(n+2)-ratio[or(42, n)])`
-/

namespace A160217.P1519098688463699273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 42 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (n + 2) : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A160217.P1519098688463699273

/-! ## A160217.P11583568058866563957

`2*n-(floor(ratio[or(42, n)])-4)`
-/

namespace A160217.P11583568058866563957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 42 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ - 4)

end

end A160217.P11583568058866563957

/-! ## A160217.P13279035751850361825

`record[xor(n+1, gcd(2, val(n+1, 2)))]`
-/

namespace A160217.P13279035751850361825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.gcd 2 (SequenceMachineLib.valuation (n + 1) 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160217.P13279035751850361825

/-! ## A160217.P5168722734855045118

`2*n+3+val(n+1, 2)%2`
-/

namespace A160217.P5168722734855045118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 + SequenceMachineLib.valuation (n + 1) 2 % 2

end

end A160217.P5168722734855045118

/-! ## A160217.P2841781238526622224

`and(1, val(n+1, 2))+2*n+3`
-/

namespace A160217.P2841781238526622224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2) + (2 * n + 3)

end

end A160217.P2841781238526622224

/-! ## A160217.P16541336021213762867

`Δ[(n+1)²]+and(1, val(n+1, 2))`
-/

namespace A160217.P16541336021213762867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2) : ℤ)

end

end A160217.P16541336021213762867

/-!
# A160218: Index at which n-th prime occurs in A160256, or -1 if the prime never occurs.

The programs for A160218, there is no canonical definition to state claims against.
-/

/-! ## A160218.P4996603138134570279

`record[A151413(comp[n²])]`
-/

namespace A160218.P4996603138134570279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151413 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160218.P4996603138134570279

/-! ## A160218.P2898704358390189573

`A151413(p?[comp[n²]])`
-/

namespace A160218.P2898704358390189573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151413 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A160218.P2898704358390189573

/-! ## A160218.P2446167197895651363

`A151413(A095904(∑[n]))`
-/

namespace A160218.P2446167197895651363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151413 (A095904 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A160218.P2446167197895651363

/-!
# A160227: Union of A160216 and squares of odd terms of A160215.

The programs for A160227, there is no canonical definition to state claims against.
-/

/-! ## A160227.P6863496440585488926

`∪[(8*n+5)², A160216(n+1)]`
-/

namespace A160227.P6863496440585488926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 5) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160227.P6863496440585488926

/-! ## A160227.P16448744929855389710

`filter[A207674(n+1), A328979(#)]`
-/

namespace A160227.P16448744929855389710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328979 (f1 j).toNat = 1) n)

end

end A160227.P16448744929855389710

/-! ## A160227.P11905835063040903754

`filter[A207674(n+2), A284948(#)]`
-/

namespace A160227.P11905835063040903754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284948 (f1 j).toNat = 1) n)

end

end A160227.P11905835063040903754

/-! ## A160227.P7300613255422910781

`∪[A160216(n+1), A017126(n)]`
-/

namespace A160227.P7300613255422910781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017126 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160227.P7300613255422910781

/-! ## A160227.P17739127027689338777

`∩[A072939(n+1), A207674(n+1)]`
-/

namespace A160227.P17739127027689338777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160227.P17739127027689338777

/-!
# A160228: Write Pi-3 in binary and report the number of zeros in the first 10^n decimal places.

The programs for A160228, there is no canonical definition to state claims against.
-/

/-! ## A160228.P14580928697464827462

`A011557(n+1)-record[A160229(n+1)]`
-/

namespace A160228.P14580928697464827462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160228.P14580928697464827462

/-!
# A160229: Write Pi-3 in binary and report the number of ones in the first 10^n decimal places.

The programs for A160229, there is no canonical definition to state claims against.
-/

/-! ## A160229.P12061070500809150576

`A000027(A011557(n+1)-A160228(n+1))`
-/

namespace A160229.P12061070500809150576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011557 (n + 1) - A160228 (n + 1)).toNat

end

end A160229.P12061070500809150576

/-!
# A160230: a(n) = A004760(n+1)-A160217(n), n>=1.

The programs for A160230, there is no canonical definition to state claims against.
-/

/-! ## A160230.P14832107892897191413

`A035327(val(n+1, 2)%2+1+n)`
-/

namespace A160230.P14832107892897191413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (SequenceMachineLib.valuation (n + 1) 2 % 2 + 1 + n)

end

end A160230.P14832107892897191413

/-! ## A160230.P4844480502211198859

`A035327(xor(n, or(n, n+1))%3+n)`
-/

namespace A160230.P4844480502211198859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Nat.xor n (Nat.lor n (n + 1)) % 3 + n)

end

end A160230.P4844480502211198859

/-! ## A160230.P7199830756705096531

`A035327(and(n+1, -(n+1))%3+n)`
-/

namespace A160230.P7199830756705096531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3 + (n : ℤ)).toNat

end

end A160230.P7199830756705096531

/-! ## A160230.P5838528454789601840

`A035327(ceil(xor(n, n+1)/2)%3+n)`
-/

namespace A160230.P5838528454789601840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod ⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ 3 + (n : ℤ)).toNat

end

end A160230.P5838528454789601840

/-! ## A160230.P15256458534003597817

`xor(val(val(n+1, 2)²+1, 2), A035327(n+1))`
-/

namespace A160230.P15256458534003597817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.valuation (SequenceMachineLib.valuation (n + 1) 2 ^ 2 + 1) 2 : ℤ) (A035327 (n + 1))

end

end A160230.P15256458534003597817

/-! ## A160230.P6260855692369226102

`A004755(n+1)-∑[Δ[and(n, -n)%3]+2]`
-/

namespace A160230.P6260855692369226102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160230.P6260855692369226102

/-! ## A160230.P4436171007244741162

`A035327(A036581(n)!+n)`
-/

namespace A160230.P4436171007244741162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Nat.factorial (A036581 n).toNat + n)

end

end A160230.P4436171007244741162

/-! ## A160230.P710129457127213474

`A035327(A056832(n+1)+n)`
-/

namespace A160230.P710129457127213474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A056832 (n + 1) + (n : ℤ)).toNat

end

end A160230.P710129457127213474

/-! ## A160230.P1384456798804002193

`A035327(or(n+1, A039963(n)))`
-/

namespace A160230.P1384456798804002193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor (n + 1 : ℤ) (A039963 n)).toNat

end

end A160230.P1384456798804002193

/-! ## A160230.P9851310608188752356

`A080079(n+1)-A036581(n)!`
-/

namespace A160230.P9851310608188752356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1) - (Nat.factorial (A036581 n).toNat : ℤ)

end

end A160230.P9851310608188752356

/-!
# A160232: Array read by antidiagonals: row n has g.f. ((1-x)/(1-2x))^n.

The programs for A160232, there is no canonical definition to state claims against.
-/

/-! ## A160232.P13451798125524933748

`A105306(A038722(n+1))`
-/

namespace A160232.P13451798125524933748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A038722 (n + 1)).toNat

end

end A160232.P13451798125524933748

/-! ## A160232.P17196110578752335569

`A105306(A061579(n)+1)`
-/

namespace A160232.P17196110578752335569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A061579 n + 1).toNat

end

end A160232.P17196110578752335569

/-! ## A160232.P5369593142118330843

`A208341(n)-A049600(n)`
-/

namespace A160232.P5369593142118330843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n - A049600 n

end

end A160232.P5369593142118330843

/-! ## A160232.P11905085579136942486

`A062110(A099375(n)+1+n)`
-/

namespace A160232.P11905085579136942486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A099375 n + 1 + (n : ℤ)).toNat

end

end A160232.P11905085579136942486

/-! ## A160232.P17903530615190346462

`A105306(A093995(n+1)-n)`
-/

namespace A160232.P17903530615190346462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A160232.P17903530615190346462

/-! ## A160232.P8637324945135552898

`A105306(A002024(n+1)²-n)`
-/

namespace A160232.P8637324945135552898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A160232.P8637324945135552898

/-! ## A160232.P8743054929032797205

`A207619(n+1)-2*A049600(n)`
-/

namespace A160232.P8743054929032797205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (n + 1) - 2 * A049600 n

end

end A160232.P8743054929032797205

/-! ## A160232.P2987771437454748548

`2*A208341(n)-A207619(n+1)`
-/

namespace A160232.P2987771437454748548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208341 n - A207619 (n + 1)

end

end A160232.P2987771437454748548

/-! ## A160232.P7227473916106812124

`A049600(n+1)+A121462(n+1)-A049600(n)`
-/

namespace A160232.P7227473916106812124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (n + 1) + (A121462 (n + 1) - A049600 n)

end

end A160232.P7227473916106812124

/-! ## A160232.P13934829251741041652

`A106195(A061579(n))-A049600(n)`
-/

namespace A160232.P13934829251741041652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A061579 n).toNat - A049600 n

end

end A160232.P13934829251741041652

/-! ## A160232.P6861623992183755690

`A106195(A038722(n+1)-1)-A049600(n)`
-/

namespace A160232.P6861623992183755690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A038722 (n + 1) - 1).toNat - A049600 n

end

end A160232.P6861623992183755690

/-! ## A160232.P10679288596969175381

`(A208511(n+1)+A055587(A038722(n+1)))/2`
-/

namespace A160232.P10679288596969175381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208511 (n + 1) + A055587 (A038722 (n + 1)).toNat : ℚ) / 2

end

end A160232.P10679288596969175381

/-! ## A160232.P5130356992665403591

`A049600(comp[∑[n]])-A049600(n)`
-/

namespace A160232.P5130356992665403591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A049600 n

end

end A160232.P5130356992665403591

/-!
# A160234: Number of n-digit "early bird numbers" A116700.

The programs for A160234, there is no canonical definition to state claims against.
-/

/-! ## A160234.P9547650759492896365

`A052268(n+1)-A132133(n+1)`
-/

namespace A160234.P9547650759492896365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1) - A132133 (n + 1)

end

end A160234.P9547650759492896365

/-!
# A160235: The maximal coefficient of (1+x)*(1+x^4)*(1+x^9)*...*(1+x^(n^2)).

The programs for A160235, there is no canonical definition to state claims against.
-/

/-! ## A160235.P14668374847538940160

`A204560(A190159(n+1))`
-/

namespace A160235.P14668374847538940160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A190159 (n + 1)).toNat

end

end A160235.P14668374847538940160

/-! ## A160235.P16708276303557294215

`A105224(∑[A000700(n)*A007562(n+1)])`
-/

namespace A160235.P16708276303557294215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A007562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160235.P16708276303557294215

/-! ## A160235.P696958137338483032

`A105224(A358453(n+1)+A278214(n+4))`
-/

namespace A160235.P696958137338483032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A358453 (n + 1) + A278214 (n + 4)).toNat

end

end A160235.P696958137338483032

/-! ## A160235.P12791937353783791144

`A185304(A305563(n+1))+A026800(3*n)`
-/

namespace A160235.P12791937353783791144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185304 (A305563 (n + 1)).toNat + A026800 (3 * n)

end

end A160235.P12791937353783791144

/-!
# A160238: Numbers n such that n^2 can be expressed as the sum of three different nonzero Fibonacci numbers.

The programs for A160238, there is no canonical definition to state claims against.
-/

/-! ## A160238.P17924968344345742471

`sqrt(A179334(n+2))`
-/

namespace A160238.P17924968344345742471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179334 (n + 2) : ℝ)

end

end A160238.P17924968344345742471

/-! ## A160238.P9417223616480422464

`eq[A166926(n), A237113(A182576(n))]`
-/

namespace A160238.P9417223616480422464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237113 (A182576 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160238.P9417223616480422464

/-!
# A160239: Number of "ON" cells in a 2-dimensional cellular automaton ("Fredkin's Replicator") evolving according to the rule that a cell is ON in a given generation if and only if there was an odd number of ON cells among the eight nearest neighbors in the preceding generation, starting with one ON cell.

The programs for A160239, there is no canonical definition to state claims against.
-/

/-! ## A160239.P6169452407249329722

`A245543(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A160239.P6169452407249329722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245543 (n - 1) + a (n - 1)

end

end A160239.P6169452407249329722

/-! ## A160239.P5645144276979717846

`Δ[A245542(n)]-A245543(n)`
-/

namespace A160239.P5645144276979717846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A245543 n

end

end A160239.P5645144276979717846

/-! ## A160239.P17581303545068503109

`A245542(n+1)-(A245543(n)+A245542(n))`
-/

namespace A160239.P17581303545068503109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 (n + 1) - (A245543 n + A245542 n)

end

end A160239.P17581303545068503109

/-! ## A160239.P2583153687240955118

`A245180(lcm(4, n)+1)`
-/

namespace A160239.P2583153687240955118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (Nat.lcm 4 n + 1)

end

end A160239.P2583153687240955118

/-! ## A160239.P11674015918811220287

`A245180(A109045(n)+1)`
-/

namespace A160239.P11674015918811220287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A109045 n + 1).toNat

end

end A160239.P11674015918811220287

/-! ## A160239.P4385225965979118385

`A245180(4*n+1)`
-/

namespace A160239.P4385225965979118385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (4 * n + 1)

end

end A160239.P4385225965979118385

/-! ## A160239.P10404998047983378621

`A245543(4*n)/7`
-/

namespace A160239.P10404998047983378621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245543 (4 * n) : ℚ) / 7

end

end A160239.P10404998047983378621

/-!
# A160240: Number of Greek-key tours on a 6 X n grid.

The programs for A160240, there is no canonical definition to state claims against.
-/

/-! ## A160240.P9318518733125232839

`A378938(A374007(n+1))`
-/

namespace A160240.P9318518733125232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A374007 (n + 1)).toNat

end

end A160240.P9318518733125232839

/-! ## A160240.P14436153377839121991

`A378938(A034856(n+5)+2-n)`
-/

namespace A160240.P14436153377839121991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A034856 (n + 5) + 2 - (n : ℤ)).toNat

end

end A160240.P14436153377839121991

/-! ## A160240.P15569427540905296849

`A378938(A166136(n+1)+A008585(n+4))`
-/

namespace A160240.P15569427540905296849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A166136 (n + 1) + A008585 (n + 4)).toNat

end

end A160240.P15569427540905296849

/-!
# A160241: Number of Greek-key tours on a 7 X n grid.

The programs for A160241, there is no canonical definition to state claims against.
-/

/-! ## A160241.P7806605739977818199

`A378938(A374008(n+1))`
-/

namespace A160241.P7806605739977818199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A374008 (n + 1)).toNat

end

end A160241.P7806605739977818199

/-! ## A160241.P3494517501388336514

`A378938(A034856(n+5)+9)`
-/

namespace A160241.P3494517501388336514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A034856 (n + 5) + 9).toNat

end

end A160241.P3494517501388336514

/-! ## A160241.P16946228953018553347

`A378938(A000096(n+5)+n+2)`
-/

namespace A160241.P16946228953018553347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A160241.P16946228953018553347

/-!
# A160242: Triangle A(n,m) read by rows: a quarter of the Fourier coefficient [cos(m*t)] of the shifted Boubaker polynomial B_n(2*cos t)-2*cos(n*t).

The programs for A160242, the canonical program `A160242.P7635650058513831389` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160242 has offset 2).

The definition of A160242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160242.P7635650058513831389

`2-Δ[round(sqrt(n))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160242

/-- `2-Δ[round(sqrt(n))]` -/
def P7635650058513831389.Spec : Prop :=
  ∀ n, P7635650058513831389.a n = A160242 (n + 2)

theorem P7635650058513831389.correct : P7635650058513831389.Spec := by
  intro n
  simp only [A160242, Nat.add_sub_cancel]

end A160242

/-! ## A160242.P8389876250811302738

`gcd(2, Δ[round(sqrt(n))])`
-/

namespace A160242.P8389876250811302738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A160242.P8389876250811302738

namespace A160242

/-- `gcd(2, Δ[round(sqrt(n))])` -/
def P8389876250811302738.Spec : Prop :=
  ∀ n, (P8389876250811302738.a n : ℤ) = A160242 (n + 2)

end A160242

/-! ## A160242.P9150520469715531277

`ceil(acot(Δ[round(sqrt(n))]))`
-/

namespace A160242.P9150520469715531277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A160242.P9150520469715531277

namespace A160242

/-- `ceil(acot(Δ[round(sqrt(n))]))` -/
def P9150520469715531277.Spec : Prop :=
  ∀ n, P9150520469715531277.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P12380899195718320335

`round(acot(Δ[round(sqrt(n))]))`
-/

namespace A160242.P12380899195718320335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ))

end

end A160242.P12380899195718320335

namespace A160242

/-- `round(acot(Δ[round(sqrt(n))]))` -/
def P12380899195718320335.Spec : Prop :=
  ∀ n, P12380899195718320335.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P14291154730634301515

`-or(Δ[round(sqrt(n))], -2)`
-/

namespace A160242.P14291154730634301515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (f1 (n + 1) - f1 n) (-2)

end

end A160242.P14291154730634301515

namespace A160242

/-- `-or(Δ[round(sqrt(n))], -2)` -/
def P14291154730634301515.Spec : Prop :=
  ∀ n, P14291154730634301515.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P2251741638734775859

`C(2, Δ[round(sqrt(n))]+1)`
-/

namespace A160242.P2251741638734775859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n + 1).toNat

end

end A160242.P2251741638734775859

namespace A160242

/-- `C(2, Δ[round(sqrt(n))]+1)` -/
def P2251741638734775859.Spec : Prop :=
  ∀ n, (P2251741638734775859.a n : ℤ) = A160242 (n + 2)

end A160242

/-! ## A160242.P13831285833942718119

`(2-char[∑[2*n]])!`
-/

namespace A160242.P13831285833942718119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A160242.P13831285833942718119

namespace A160242

/-- `(2-char[∑[2*n]])!` -/
def P13831285833942718119.Spec : Prop :=
  ∀ n, (P13831285833942718119.a n : ℤ) = A160242 (n + 2)

end A160242

/-! ## A160242.P5262114316264137722

`dr(2-char[∑[2*n]])`
-/

namespace A160242.P5262114316264137722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A160242.P5262114316264137722

namespace A160242

/-- `dr(2-char[∑[2*n]])` -/
def P5262114316264137722.Spec : Prop :=
  ∀ n, (P5262114316264137722.a n : ℤ) = A160242 (n + 2)

end A160242

/-! ## A160242.P6395331240535061185

`xor(3, Δ[comp[(n+1)²]])`
-/

namespace A160242.P6395331240535061185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A160242.P6395331240535061185

namespace A160242

/-- `xor(3, Δ[comp[(n+1)²]])` -/
def P6395331240535061185.Spec : Prop :=
  ∀ n, P6395331240535061185.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P11915884487101039570

`floor(exp(cos(char[∑[2*n]])))`
-/

namespace A160242.P11915884487101039570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌋

end

end A160242.P11915884487101039570

namespace A160242

/-- `floor(exp(cos(char[∑[2*n]])))` -/
def P11915884487101039570.Spec : Prop :=
  ∀ n, P11915884487101039570.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P15337454022048785868

`round(acot(char[∑[2*n]])²)`
-/

namespace A160242.P15337454022048785868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2)

end

end A160242.P15337454022048785868

namespace A160242

/-- `round(acot(char[∑[2*n]])²)` -/
def P15337454022048785868.Spec : Prop :=
  ∀ n, P15337454022048785868.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P14420698902189438505

`ceil(sqrt(acot(char[∑[2*n]])))`
-/

namespace A160242.P14420698902189438505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A160242.P14420698902189438505

namespace A160242

/-- `ceil(sqrt(acot(char[∑[2*n]])))` -/
def P14420698902189438505.Spec : Prop :=
  ∀ n, P14420698902189438505.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P5638240539422970636

`ceil(cosh(char[comp[∑[2*n]]]))`
-/

namespace A160242.P5638240539422970636
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A160242.P5638240539422970636

namespace A160242

/-- `ceil(cosh(char[comp[∑[2*n]]]))` -/
def P5638240539422970636.Spec : Prop :=
  ∀ n, P5638240539422970636.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P1718307390955127148

`round(cosh(char[comp[∑[2*n]]]))`
-/

namespace A160242.P1718307390955127148
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A160242.P1718307390955127148

namespace A160242

/-- `round(cosh(char[comp[∑[2*n]]]))` -/
def P1718307390955127148.Spec : Prop :=
  ∀ n, P1718307390955127148.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P3954772719812998915

`ceil(tan(cos(char[∑[2*n]])))`
-/

namespace A160242.P3954772719812998915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A160242.P3954772719812998915

namespace A160242

/-- `ceil(tan(cos(char[∑[2*n]])))` -/
def P3954772719812998915.Spec : Prop :=
  ∀ n, P3954772719812998915.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P2693376592520403634

`round(tan(cos(char[∑[2*n]])))`
-/

namespace A160242.P2693376592520403634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A160242.P2693376592520403634

namespace A160242

/-- `round(tan(cos(char[∑[2*n]])))` -/
def P2693376592520403634.Spec : Prop :=
  ∀ n, P2693376592520403634.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P425935340025885964

`ceil(asin(cos(char[∑[2*n]])))`
-/

namespace A160242.P425935340025885964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A160242.P425935340025885964

namespace A160242

/-- `ceil(asin(cos(char[∑[2*n]])))` -/
def P425935340025885964.Spec : Prop :=
  ∀ n, P425935340025885964.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P12732248043986021487

`ceil(acos(sin(char[∑[2*n]])))`
-/

namespace A160242.P12732248043986021487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A160242.P12732248043986021487

namespace A160242

/-- `ceil(acos(sin(char[∑[2*n]])))` -/
def P12732248043986021487.Spec : Prop :=
  ∀ n, P12732248043986021487.a n = A160242 (n + 2)

end A160242

/-! ## A160242.P17236492820254313948

`round(asin(cos(char[∑[2*n]])))`
-/

namespace A160242.P17236492820254313948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A160242.P17236492820254313948

namespace A160242

/-- `round(asin(cos(char[∑[2*n]])))` -/
def P17236492820254313948.Spec : Prop :=
  ∀ n, P17236492820254313948.a n = A160242 (n + 2)

end A160242

/-!
# A160243: a(n) = Lucas(n+1) + prime(n).

The programs for A160243, the canonical program `A160243.P13553628039836246293` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160243 has offset 1).

The definition of A160243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160243.P13553628039836246293

`A020695(n)+A004397(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A160243

/-- `A020695(n)+A004397(n+1)` -/
def P13553628039836246293.Spec : Prop :=
  ∀ n, P13553628039836246293.a n = A160243 (n + 1)

theorem P13553628039836246293.correct : P13553628039836246293.Spec := by
  intro n
  simp only [A160243, Nat.add_sub_cancel]

end A160243

/-! ## A160243.P11234429263528279776

`A052147(n+1)+A014739(n)`
-/

namespace A160243.P11234429263528279776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A014739 n

end

end A160243.P11234429263528279776

namespace A160243

/-- `A052147(n+1)+A014739(n)` -/
def P11234429263528279776.Spec : Prop :=
  ∀ n, P11234429263528279776.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P12216847631977523951

`A033818(n+1)+A014692(n+1)`
-/

namespace A160243.P12216847631977523951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033818 (n + 1) + A014692 (n + 1)

end

end A160243.P12216847631977523951

namespace A160243

/-- `A033818(n+1)+A014692(n+1)` -/
def P12216847631977523951.Spec : Prop :=
  ∀ n, P12216847631977523951.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P5056470515304154968

`A000040(n+1)+A000032(n+2)`
-/

namespace A160243.P5056470515304154968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000032 (n + 2)

end

end A160243.P5056470515304154968

namespace A160243

/-- `A000040(n+1)+A000032(n+2)` -/
def P5056470515304154968.Spec : Prop :=
  ∀ n, P5056470515304154968.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P13640997328959262418

`A000204(n+2)+A000040(n+1)`
-/

namespace A160243.P13640997328959262418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + A000040 (n + 1)

end

end A160243.P13640997328959262418

namespace A160243

/-- `A000204(n+2)+A000040(n+1)` -/
def P13640997328959262418.Spec : Prop :=
  ∀ n, P13640997328959262418.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P16381844061872451808

`A169985(n+2)+A000040(n+1)`
-/

namespace A160243.P16381844061872451808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 2) + A000040 (n + 1)

end

end A160243.P16381844061872451808

namespace A160243

/-- `A169985(n+2)+A000040(n+1)` -/
def P16381844061872451808.Spec : Prop :=
  ∀ n, P16381844061872451808.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P9909250501898110416

`A008578(n+2)+A000204(n+2)`
-/

namespace A160243.P9909250501898110416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A000204 (n + 2)

end

end A160243.P9909250501898110416

namespace A160243

/-- `A008578(n+2)+A000204(n+2)` -/
def P9909250501898110416.Spec : Prop :=
  ∀ n, P9909250501898110416.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P6058794261260293990

`A254729(n+3)+A000040(n+1)`
-/

namespace A160243.P6058794261260293990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (n + 3) + A000040 (n + 1)

end

end A160243.P6058794261260293990

namespace A160243

/-- `A254729(n+3)+A000040(n+1)` -/
def P6058794261260293990.Spec : Prop :=
  ∀ n, P6058794261260293990.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P7489809531343585299

`A082587(2*n)+A000040(n+1)`
-/

namespace A160243.P7489809531343585299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (2 * n) + A000040 (n + 1)

end

end A160243.P7489809531343585299

namespace A160243

/-- `A082587(2*n)+A000040(n+1)` -/
def P7489809531343585299.Spec : Prop :=
  ∀ n, P7489809531343585299.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P11889803690472445572

`record[A093074(n+1)]+A000032(n+2)`
-/

namespace A160243.P11889803690472445572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000032 (n + 2)

end

end A160243.P11889803690472445572

namespace A160243

/-- `record[A093074(n+1)]+A000032(n+2)` -/
def P11889803690472445572.Spec : Prop :=
  ∀ n, P11889803690472445572.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P9770945608443976702

`record[A006530(n+2)]+A000032(n+2)`
-/

namespace A160243.P9770945608443976702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000032 (n + 2)

end

end A160243.P9770945608443976702

namespace A160243

/-- `record[A006530(n+2)]+A000032(n+2)` -/
def P9770945608443976702.Spec : Prop :=
  ∀ n, P9770945608443976702.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P2676870656464651965

`A000204(n+2)+record[A006530(n+2)]`
-/

namespace A160243.P2676870656464651965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160243.P2676870656464651965

namespace A160243

/-- `A000204(n+2)+record[A006530(n+2)]` -/
def P2676870656464651965.Spec : Prop :=
  ∀ n, P2676870656464651965.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P17954471894216376698

`record[A014963(n+2)]+A000032(n+2)`
-/

namespace A160243.P17954471894216376698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000032 (n + 2)

end

end A160243.P17954471894216376698

namespace A160243

/-- `record[A014963(n+2)]+A000032(n+2)` -/
def P17954471894216376698.Spec : Prop :=
  ∀ n, P17954471894216376698.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P437643770172979056

`record[A020639(n+2)]+A000032(n+2)`
-/

namespace A160243.P437643770172979056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000032 (n + 2)

end

end A160243.P437643770172979056

namespace A160243

/-- `record[A020639(n+2)]+A000032(n+2)` -/
def P437643770172979056.Spec : Prop :=
  ∀ n, P437643770172979056.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P7406232171697396349

`p?[A167171(n+1)]+A000032(n+2)`
-/

namespace A160243.P7406232171697396349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000032 (n + 2)

end

end A160243.P7406232171697396349

namespace A160243

/-- `p?[A167171(n+1)]+A000032(n+2)` -/
def P7406232171697396349.Spec : Prop :=
  ∀ n, P7406232171697396349.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P7103531726561498398

`p?[A207790(n+1)]+A000032(n+2)`
-/

namespace A160243.P7103531726561498398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000032 (n + 2)

end

end A160243.P7103531726561498398

namespace A160243

/-- `p?[A207790(n+1)]+A000032(n+2)` -/
def P7103531726561498398.Spec : Prop :=
  ∀ n, P7103531726561498398.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P15497556084599998585

`A040976(n+1)+A000032(n+2)+2`
-/

namespace A160243.P15497556084599998585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A000032 (n + 2) + 2)

end

end A160243.P15497556084599998585

namespace A160243

/-- `A040976(n+1)+A000032(n+2)+2` -/
def P15497556084599998585.Spec : Prop :=
  ∀ n, P15497556084599998585.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P7332372367086100298

`eq[1, A001222(n+1)]+A000032(n+2)+1`
-/

namespace A160243.P7332372367086100298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A000032 (n + 2) + 1)

end

end A160243.P7332372367086100298

namespace A160243

/-- `eq[1, A001222(n+1)]+A000032(n+2)+1` -/
def P7332372367086100298.Spec : Prop :=
  ∀ n, P7332372367086100298.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P5523831331869279551

`eq[2, A000005(n+1)]+A000032(n+2)+1`
-/

namespace A160243.P5523831331869279551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + (A000032 (n + 2) + 1)

end

end A160243.P5523831331869279551

namespace A160243

/-- `eq[2, A000005(n+1)]+A000032(n+2)+1` -/
def P5523831331869279551.Spec : Prop :=
  ∀ n, P5523831331869279551.a n = A160243 (n + 1)

end A160243

/-! ## A160243.P6812507272914579867

`A000032(n+2)+eq[n, A000010(n+1)]+1`
-/

namespace A160243.P6812507272914579867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A160243.P6812507272914579867

namespace A160243

/-- `A000032(n+2)+eq[n, A000010(n+1)]+1` -/
def P6812507272914579867.Spec : Prop :=
  ∀ n, P6812507272914579867.a n = A160243 (n + 1)

end A160243

/-!
# A160244: A104449(n+1)+prime(n), sum of a Lucas and the prime sequence.

The programs for A160244, the canonical program `A160244.P2442629381192183432` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160244 has offset 1).

The definition of A160244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160244.P2442629381192183432

`A000285(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160244

/-- `A000285(n+1)+A000040(n+1)` -/
def P2442629381192183432.Spec : Prop :=
  ∀ n, P2442629381192183432.a n = A160244 (n + 1)

theorem P2442629381192183432.correct : P2442629381192183432.Spec := by
  intro n
  simp only [A160244, Nat.add_sub_cancel]

end A160244

/-! ## A160244.P4742269659080020249

`A171516(n)+A113935(n+1)`
-/

namespace A160244.P4742269659080020249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n + A113935 (n + 1)

end

end A160244.P4742269659080020249

namespace A160244

/-- `A171516(n)+A113935(n+1)` -/
def P4742269659080020249.Spec : Prop :=
  ∀ n, P4742269659080020249.a n = A160244 (n + 1)

end A160244

/-! ## A160244.P43098463998590537

`A160243(n+1)+A000045(n+1)`
-/

namespace A160244.P43098463998590537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160243 (n + 1) + A000045 (n + 1)

end

end A160244.P43098463998590537

namespace A160244

/-- `A160243(n+1)+A000045(n+1)` -/
def P43098463998590537.Spec : Prop :=
  ∀ n, P43098463998590537.a n = A160244 (n + 1)

end A160244

/-! ## A160244.P937113562606224493

`A104449(n+2)+A000040(n+1)`
-/

namespace A160244.P937113562606224493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 2) + A000040 (n + 1)

end

end A160244.P937113562606224493

namespace A160244

/-- `A104449(n+2)+A000040(n+1)` -/
def P937113562606224493.Spec : Prop :=
  ∀ n, P937113562606224493.a n = A160244 (n + 1)

end A160244

/-! ## A160244.P9929419313876423759

`A000045(n+1)+A000040(n+1)+A000032(n+2)`
-/

namespace A160244.P9929419313876423759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000040 (n + 1) + A000032 (n + 2))

end

end A160244.P9929419313876423759

namespace A160244

/-- `A000045(n+1)+A000040(n+1)+A000032(n+2)` -/
def P9929419313876423759.Spec : Prop :=
  ∀ n, P9929419313876423759.a n = A160244 (n + 1)

end A160244

/-! ## A160244.P9341551088930563149

`A000040(n+1)+A000204(n+2)+A000045(n+1)`
-/

namespace A160244.P9341551088930563149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000204 (n + 2) + A000045 (n + 1))

end

end A160244.P9341551088930563149

namespace A160244

/-- `A000040(n+1)+A000204(n+2)+A000045(n+1)` -/
def P9341551088930563149.Spec : Prop :=
  ∀ n, P9341551088930563149.a n = A160244 (n + 1)

end A160244

/-! ## A160244.P1469311996205490231

`2*A000045(n+2)+record[A006530(n+2)]+A000032(n)`
-/

namespace A160244.P1469311996205490231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000032 n)

end

end A160244.P1469311996205490231

namespace A160244

/-- `2*A000045(n+2)+record[A006530(n+2)]+A000032(n)` -/
def P1469311996205490231.Spec : Prop :=
  ∀ n, P1469311996205490231.a n = A160244 (n + 1)

end A160244

/-! ## A160244.P2847204268234271852

`A160243(n+1)+A294157(n+1)-A022113(n+1)`
-/

namespace A160244.P2847204268234271852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160243 (n + 1) + (A294157 (n + 1) - A022113 (n + 1))

end

end A160244.P2847204268234271852

namespace A160244

/-- `A160243(n+1)+A294157(n+1)-A022113(n+1)` -/
def P2847204268234271852.Spec : Prop :=
  ∀ n, P2847204268234271852.a n = A160244 (n + 1)

end A160244

/-! ## A160244.P16214221379152244070

`A000040(n+1)+Δ[A053311(n)]`
-/

namespace A160244.P16214221379152244070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f1 (n + 1) - f1 n)

end

end A160244.P16214221379152244070

namespace A160244

/-- `A000040(n+1)+Δ[A053311(n)]` -/
def P16214221379152244070.Spec : Prop :=
  ∀ n, P16214221379152244070.a n = A160244 (n + 1)

end A160244

/-!
# A160245: a(n) = index of the n-th prime in A051301 (least prime factor of m!+1).

The programs for A160245, there is no canonical definition to state claims against.
-/

/-! ## A160245.P13951575583872141321

`A053797(xor(A003557(n+1), A220375(n+5)))`
-/

namespace A160245.P13951575583872141321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (Int.xor (A003557 (n + 1)) (A220375 (n + 5))).toNat

end

end A160245.P13951575583872141321

/-! ## A160245.P12804493817734744611

`A157242(n+2)+A157196(A157189(2*n+3))`
-/

namespace A160245.P12804493817734744611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157242 (n + 2) + A157196 (A157189 (2 * n + 3)).toNat

end

end A160245.P12804493817734744611

/-! ## A160245.P10878063572013180554

`A001222(A235394(n+1)+A208448(n+4))`
-/

namespace A160245.P10878063572013180554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A235394 (n + 1) + A208448 (n + 4)).toNat

end

end A160245.P10878063572013180554

/-! ## A160245.P16687527419358845702

`A349163(A352363(n)+A084938(3*n+2))`
-/

namespace A160245.P16687527419358845702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349163 (A352363 n + A084938 (3 * n + 2)).toNat

end

end A160245.P16687527419358845702

/-!
# A160248: Table read by antidiagonals of "less regular" truncated tetrahedron numbers built of face-centered-cubic sphere packing.

The programs for A160248, there is no canonical definition to state claims against.
-/

/-! ## A160248.P7444568833985009736

`A277949(A292564(n)+1)`
-/

namespace A160248.P7444568833985009736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277949 (A292564 n + 1).toNat

end

end A160248.P7444568833985009736

/-!
# A160250: a(n) = 64*n^3 - 168*n^2 + 148*n - 43.

The programs for A160250, the canonical program `A160250.P11515129830727363970` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160250 has offset 1).

The definition of A160250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)^3-168*(n+1)²+148*(n+1)-43` (program `A160250.P11515129830727363970`, by `A160250.P11515129830727363970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160250.P11058226756774320972

`((8*(n+1)-7)^3+8*(n+1)-1)/8`
-/

namespace A160250.P11058226756774320972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((8 * (n + 1) : ℤ) - 7) ^ 3 + ((8 * (n + 1) : ℤ) - 1) : ℚ) / 8

end

end A160250.P11058226756774320972

namespace A160250

/-- `((8*(n+1)-7)^3+8*(n+1)-1)/8` -/
def P11058226756774320972.Spec : Prop :=
  ∀ n, P11058226756774320972.a n = (A160250 (n + 1) : ℚ)

theorem P11058226756774320972.correct : P11058226756774320972.Spec := by
  intro n
  simp only [A160250, Nat.add_sub_cancel, A160250.P11058226756774320972.a, A160250.P11515129830727363970.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160250

/-! ## A160250.P11515129830727363970

`64*(n+1)^3-168*(n+1)²+148*(n+1)-43`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160250

/-- `64*(n+1)^3-168*(n+1)²+148*(n+1)-43` -/
def P11515129830727363970.Spec : Prop :=
  ∀ n, P11515129830727363970.a n = A160250 (n + 1)

theorem P11515129830727363970.correct : P11515129830727363970.Spec := by
  intro n
  simp only [A160250, Nat.add_sub_cancel]

end A160250

/-! ## A160250.P16024396353653063543

`or(1, A165220(n)+1+n)`
-/

namespace A160250.P16024396353653063543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A165220 n + 1 + (n : ℤ))

end

end A160250.P16024396353653063543

namespace A160250

/-- `or(1, A165220(n)+1+n)` -/
def P16024396353653063543.Spec : Prop :=
  ∀ n, P16024396353653063543.a n = A160250 (n + 1)

end A160250

/-! ## A160250.P6953318613023298761

`ceil(A046142(2*n+1)/2)`
-/

namespace A160250.P6953318613023298761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046142 (2 * n + 1) : ℚ) / 2⌉

end

end A160250.P6953318613023298761

namespace A160250

/-- `ceil(A046142(2*n+1)/2)` -/
def P6953318613023298761.Spec : Prop :=
  ∀ n, P6953318613023298761.a n = A160250 (n + 1)

end A160250

/-! ## A160250.P16614671582098521988

`ceil(A005917(4*n+1)/4)`
-/

namespace A160250.P16614671582098521988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005917 (4 * n + 1) : ℚ) / 4⌉

end

end A160250.P16614671582098521988

namespace A160250

/-- `ceil(A005917(4*n+1)/4)` -/
def P16614671582098521988.Spec : Prop :=
  ∀ n, P16614671582098521988.a n = A160250 (n + 1)

end A160250

/-! ## A160250.P3389907665851213300

`abs(A341619(∑[2*n+1])-(A165220(n)+1+n))`
-/

namespace A160250.P3389907665851213300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341619 (∑ j ∈ Finset.range (n + 1), f1 j) - (A165220 n + 1 + (n : ℤ))|

end

end A160250.P3389907665851213300

namespace A160250

/-- `abs(A341619(∑[2*n+1])-(A165220(n)+1+n))` -/
def P3389907665851213300.Spec : Prop :=
  ∀ n, P3389907665851213300.a n = A160250 (n + 1)

end A160250

/-! ## A160250.P2027712349359427322

`Δ[A002061(A001107(n))+n²]`
-/

namespace A160250.P2027712349359427322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A001107 n).toNat + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160250.P2027712349359427322

namespace A160250

/-- `Δ[A002061(A001107(n))+n²]` -/
def P2027712349359427322.Spec : Prop :=
  ∀ n, P2027712349359427322.a n = A160250 (n + 1)

end A160250

/-!
# A160254: Expansion of x*(2 - 3*x + x^2 - 4*x^3 + 3*x^4 - 2*x^5 + x*(1 - x - x^3)*sqrt((1 + 2*x)/(1 - 2*x)))/(2*(1 - 3*x + 3*x^2 - 3*x^3 + 4*x^4 - 3*x^5 + 2*x^6)).

The programs for A160254, there is no canonical definition to state claims against.
-/

/-! ## A160254.P6111627909516786307

`∑[A003056(A201204(n))]`
-/

namespace A160254.P6111627909516786307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A201204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160254.P6111627909516786307

/-! ## A160254.P9712353375669122144

`record[Δ[A008676(A297981(n+1))]]`
-/

namespace A160254.P9712353375669122144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A297981 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160254.P9712353375669122144

/-! ## A160254.P6474326970709625544

`A001462(A085810(n+1)+A000129(n))`
-/

namespace A160254.P6474326970709625544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A085810 (n + 1) + A000129 n).toNat

end

end A160254.P6474326970709625544

/-! ## A160254.P17576828647540453406

`A112575(n+1)+A103921(A002529(n))`
-/

namespace A160254.P17576828647540453406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 (n + 1) + A103921 (A002529 n).toNat

end

end A160254.P17576828647540453406

/-! ## A160254.P14238209160759896277

`A001462(A219751(n)+A002605(n+1))`
-/

namespace A160254.P14238209160759896277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A219751 n + A002605 (n + 1)).toNat

end

end A160254.P14238209160759896277

/-!
# A160255: The sum of all the entries in an n X n Cayley table for multiplication in Z_n.

The programs for A160255, the canonical program `A160255.P16099810821214577880` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160255 has offset 1).

The definition of A160255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A160255.P16099810821214577880

`(A000578(n+1)-(n+1)*A018804(n+1))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A160255

/-- `(A000578(n+1)-(n+1)*A018804(n+1))/2` -/
def P16099810821214577880.Spec : Prop :=
  ∀ n, P16099810821214577880.a n = (A160255 (n + 1) : ℚ)

end A160255

/-! ## A160255.P1051687934241850292

`(n+1)/2*A344485(n+1)`
-/

namespace A160255.P1051687934241850292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A344485 (n + 1) : ℚ)

end

end A160255.P1051687934241850292

namespace A160255

/-- `(n+1)/2*A344485(n+1)` -/
def P1051687934241850292.Spec : Prop :=
  ∀ n, P1051687934241850292.a n = (A160255 (n + 1) : ℚ)

end A160255

/-! ## A160255.P7447446046058852209

`(n+1)*∑[n+1]-A344510(n+1)`
-/

namespace A160255.P7447446046058852209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A344510 (n + 1)

end

end A160255.P7447446046058852209

namespace A160255

/-- `(n+1)*∑[n+1]-A344510(n+1)` -/
def P7447446046058852209.Spec : Prop :=
  ∀ n, P7447446046058852209.a n = A160255 (n + 1)

end A160255

/-! ## A160255.P12934245144641062502

`A014682((n+1)*A344485(n+1))`
-/

namespace A160255.P12934245144641062502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 1 : ℤ) * A344485 (n + 1)).toNat

end

end A160255.P12934245144641062502

namespace A160255

/-- `A014682((n+1)*A344485(n+1))` -/
def P12934245144641062502.Spec : Prop :=
  ∀ n, P12934245144641062502.a n = A160255 (n + 1)

end A160255

/-! ## A160255.P6666648130154048536

`A273943((n+1)*A344485(n+1))`
-/

namespace A160255.P6666648130154048536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ((n + 1 : ℤ) * A344485 (n + 1)).toNat

end

end A160255.P6666648130154048536

namespace A160255

/-- `A273943((n+1)*A344485(n+1))` -/
def P6666648130154048536.Spec : Prop :=
  ∀ n, P6666648130154048536.a n = A160255 (n + 1)

end A160255

/-!
# A160258: The entries of A033942, repeated for each different factorization into 3 factors larger than 1.

The programs for A160258, there is no canonical definition to state claims against.
-/

/-! ## A160258.P14696636523503977440

`A071280(n+1)-A105700(A185274(n))`
-/

namespace A160258.P14696636523503977440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071280 (n + 1) - A105700 (A185274 n).toNat

end

end A160258.P14696636523503977440

/-! ## A160258.P14696140914142500631

`A071280(n+1)-A174875(A081580(n))`
-/

namespace A160258.P14696140914142500631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071280 (n + 1) - A174875 (A081580 n).toNat

end

end A160258.P14696140914142500631

/-!
# A160262: a(n)=c-th digit of A000796(n) where c=n-th composite.

The programs for A160262, the canonical program `A160262.P16896969970684579007` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160262 has offset 1).

The definition of A160262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160262.P2820626479821431657

`A001355(A166257(n+2))`
-/

namespace A160262.P2820626479821431657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A166257 (n + 2)).toNat

end

end A160262.P2820626479821431657

namespace A160262

/-- `A001355(A166257(n+2))` -/
def P2820626479821431657.Spec : Prop :=
  ∀ n, P2820626479821431657.a n = A160262 (n + 1)

end A160262

/-! ## A160262.P5756169611400678631

`A000796(A002808(n+1)-1)`
-/

namespace A160262.P5756169611400678631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A002808 (n + 1) - 1).toNat + 1)

end

end A160262.P5756169611400678631

namespace A160262

/-- `A000796(A002808(n+1)-1)` -/
def P5756169611400678631.Spec : Prop :=
  ∀ n, P5756169611400678631.a n = A160262 (n + 1)

end A160262

/-! ## A160262.P9734680975114909848

`A000796(eq[A049076(3*(n+1)), A049076(n+1)])`
-/

namespace A160262.P9734680975114909848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A160262.P9734680975114909848

namespace A160262

/-- `A000796(eq[A049076(3*(n+1)), A049076(n+1)])` -/
def P9734680975114909848.Spec : Prop :=
  ∀ n, P9734680975114909848.a n = A160262 (n + 1)

end A160262

/-! ## A160262.P16896969970684579007

`A138114(A324600(n+2))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160262

/-- `A138114(A324600(n+2))` -/
def P16896969970684579007.Spec : Prop :=
  ∀ n, P16896969970684579007.a n = A160262 (n + 1)

theorem P16896969970684579007.correct : P16896969970684579007.Spec := by
  intro n
  simp only [A160262, Nat.add_sub_cancel]

end A160262

/-!
# A160266: Let f and its k-fold iteration f^k be defined as in A159885. a(n) is the least k for which A006694( (f^k(2n+1)-1)/2 ) < A006694(n).

The programs for A160266, there is no canonical definition to state claims against.
-/

/-! ## A160266.P942345247137204390

`gcd(A075680(n+2), A240075(A026021(n)))`
-/

namespace A160266.P942345247137204390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075680 (n + 2)) (A240075 (A026021 n).toNat)

end

end A160266.P942345247137204390

/-! ## A160266.P2380880965349584601

`A328570(A332846(n+1)+A328574(n+1))`
-/

namespace A160266.P2380880965349584601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A332846 (n + 1) + A328574 (n + 1)).toNat

end

end A160266.P2380880965349584601

/-! ## A160266.P5519002323003442300

`gcd(A054541(A213500(n+1)), A152125(n+1))`
-/

namespace A160266.P5519002323003442300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054541 (A213500 (n + 1)).toNat) (A152125 (n + 1))

end

end A160266.P5519002323003442300

/-! ## A160266.P18151159609715340149

`gcd(A114327(A090117(n+1)), A256420(n+1))`
-/

namespace A160266.P18151159609715340149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 (A090117 (n + 1)).toNat) (A256420 (n + 1))

end

end A160266.P18151159609715340149

/-! ## A160266.P7230753339183967323

`A374629(A057508(n)+A001694(n+1))`
-/

namespace A160266.P7230753339183967323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (A057508 n + A001694 (n + 1)).toNat

end

end A160266.P7230753339183967323

/-!
# A160267: Minimum of A122458(n) and A160266(n).

The programs for A160267, there is no canonical definition to state claims against.
-/

/-! ## A160267.P9277574564844178275

`A137163(gcd(n², A253601(n+1)))`
-/

namespace A160267.P9277574564844178275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137163 (Int.gcd (n ^ 2 : ℤ) (A253601 (n + 1)))

end

end A160267.P9277574564844178275

/-! ## A160267.P1940082751951375786

`gcd(A056924(A379510(n+1)), A171165(2*n+1))`
-/

namespace A160267.P1940082751951375786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056924 (A379510 (n + 1)).toNat) (A171165 (2 * n + 1))

end

end A160267.P1940082751951375786

/-! ## A160267.P1311763517600424044

`A268361(∑[∑[A308854(n+1)+n+1]]+1)`
-/

namespace A160267.P1311763517600424044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308854 (n + 1) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A160267.P1311763517600424044

/-!
# A160268: Odd numbers k for which A006694( (k-1)/2 ) < A006694( (A000265(3k+1)-1)/2 ).

The programs for A160268, there is no canonical definition to state claims against.
-/

/-! ## A160268.P2493643493534075175

`filter[A317309(n+1), A103842(#)]`
-/

namespace A160268.P2493643493534075175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A160268.P2493643493534075175

/-! ## A160268.P11226053889304790838

`p?[∑[A010691(A003591(n+1))]]`
-/

namespace A160268.P11226053889304790838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (A003591 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160268.P11226053889304790838

/-! ## A160268.P14482490108640648266

`p?[A000194(A294399(3*(n+1)))]`
-/

namespace A160268.P14482490108640648266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A294399 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160268.P14482490108640648266

/-! ## A160268.P17504040942246617068

`p?[lt[A298972(n), A299019(n+4)]]`
-/

namespace A160268.P17504040942246617068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298972 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299019 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A160268.P17504040942246617068

/-! ## A160268.P11406567852620867074

`∩[A228523(n+1), A317309(n+1)]`
-/

namespace A160268.P11406567852620867074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160268.P11406567852620867074

/-!
# A160271: Monotonic justified array of all positive Fibonacci sequences.

The programs for A160271, there is no canonical definition to state claims against.
-/

/-! ## A160271.P9948337007180388062

`A124763(xor(A034856(n+1), A103180(n+1)))`
-/

namespace A160271.P9948337007180388062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (Int.xor (A034856 (n + 1)) (A103180 (n + 1))).toNat

end

end A160271.P9948337007180388062

/-!
# A160272: Angle between the two hands of a 12 hour analog clock n*12 minutes after noon/midnight, measured in units of minutes.

The programs for A160272, there is no canonical definition to state claims against.
-/

/-! ## A160272.P211606049302138234

`A160278(n)/6`
-/

namespace A160272.P211606049302138234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160278 n : ℚ) / 6

end

end A160272.P211606049302138234

/-! ## A160272.P10288868761899440864

`A008615(A160278(n))`
-/

namespace A160272.P10288868761899440864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A160278 n).toNat

end

end A160272.P10288868761899440864

/-! ## A160272.P998616819407374033

`A008612(A160278(n)+1)`
-/

namespace A160272.P998616819407374033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A160278 n + 1).toNat

end

end A160272.P998616819407374033

/-! ## A160272.P2816422188584750713

`A103221(A160278(n)+1)`
-/

namespace A160272.P2816422188584750713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A160278 n + 1).toNat

end

end A160272.P2816422188584750713

/-! ## A160272.P4540019440319386404

`A008612(or(1, A160278(n)))`
-/

namespace A160272.P4540019440319386404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.lor 1 (A160278 n)).toNat

end

end A160272.P4540019440319386404

/-! ## A160272.P16255396878838552108

`A103221(or(1, A160278(n)))`
-/

namespace A160272.P16255396878838552108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 1 (A160278 n)).toNat

end

end A160272.P16255396878838552108

/-! ## A160272.P12654145459560079263

`A008612(xor(1, A160278(n)))`
-/

namespace A160272.P12654145459560079263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor 1 (A160278 n)).toNat

end

end A160272.P12654145459560079263

/-!
# A160273: Successive differences (divided by 3) of the average of twin prime pairs divided by 2 (A040040).

The programs for A160273, the canonical program `A160273.P2420458124321654118` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160273 has offset 1).

The definition of A160273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160273.P13267157520953406022

`A053319(n+2)/6`
-/

namespace A160273.P13267157520953406022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053319 (n + 2) : ℚ) / 6

end

end A160273.P13267157520953406022

namespace A160273

/-- `A053319(n+2)/6` -/
def P13267157520953406022.Spec : Prop :=
  ∀ n, P13267157520953406022.a n = (A160273 (n + 1) : ℚ)

end A160273

/-! ## A160273.P17259635148390853935

`Δ[A001359(n+2)/6]`
-/

namespace A160273.P17259635148390853935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160273.P17259635148390853935

namespace A160273

/-- `Δ[A001359(n+2)/6]` -/
def P17259635148390853935.Spec : Prop :=
  ∀ n, P17259635148390853935.a n = (A160273 (n + 1) : ℚ)

end A160273

/-! ## A160273.P2420458124321654118

`A008615(A053319(n+2))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A160273

/-- `A008615(A053319(n+2))` -/
def P2420458124321654118.Spec : Prop :=
  ∀ n, P2420458124321654118.a n = A160273 (n + 1)

theorem P2420458124321654118.correct : P2420458124321654118.Spec := by
  intro n
  simp only [A160273, Nat.add_sub_cancel]

end A160273

/-! ## A160273.P7570399574371517736

`A008615(Δ[A001359(n+2)])`
-/

namespace A160273.P7570399574371517736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A160273.P7570399574371517736

namespace A160273

/-- `A008615(Δ[A001359(n+2)])` -/
def P7570399574371517736.Spec : Prop :=
  ∀ n, P7570399574371517736.a n = A160273 (n + 1)

theorem P7570399574371517736.correct : P7570399574371517736.Spec := by
  intro n
  simp only [A160273, Nat.add_sub_cancel, A160273.P7570399574371517736.f1, A160273.P7570399574371517736.a, A160273.P2420458124321654118.a, A001359, A001359.P8865495035699438537.a, A008615, A008615.P10410393553474300613.a, A053319, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A160273

/-! ## A160273.P11472003155134020231

`A152467(Δ[A001359(n+2)])`
-/

namespace A160273.P11472003155134020231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (f1 (n + 1) - f1 n).toNat

end

end A160273.P11472003155134020231

namespace A160273

/-- `A152467(Δ[A001359(n+2)])` -/
def P11472003155134020231.Spec : Prop :=
  ∀ n, P11472003155134020231.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P6437289123759490237

`Δ[A002822(n+1)]`
-/

namespace A160273.P6437289123759490237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160273.P6437289123759490237

namespace A160273

/-- `Δ[A002822(n+1)]` -/
def P6437289123759490237.Spec : Prop :=
  ∀ n, P6437289123759490237.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P8602307761627527715

`Δ[A167379(n+1)/2]`
-/

namespace A160273.P8602307761627527715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167379 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160273.P8602307761627527715

namespace A160273

/-- `Δ[A167379(n+1)/2]` -/
def P8602307761627527715.Spec : Prop :=
  ∀ n, P8602307761627527715.a n = (A160273 (n + 1) : ℚ)

end A160273

/-! ## A160273.P15188841930007091307

`Δ[A177139(n+1)/2]`
-/

namespace A160273.P15188841930007091307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177139 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160273.P15188841930007091307

namespace A160273

/-- `Δ[A177139(n+1)/2]` -/
def P15188841930007091307.Spec : Prop :=
  ∀ n, P15188841930007091307.a n = (A160273 (n + 1) : ℚ)

end A160273

/-! ## A160273.P3260457513325713382

`Δ[A116958(n+1)/3]`
-/

namespace A160273.P3260457513325713382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116958 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160273.P3260457513325713382

namespace A160273

/-- `Δ[A116958(n+1)/3]` -/
def P3260457513325713382.Spec : Prop :=
  ∀ n, P3260457513325713382.a n = (A160273 (n + 1) : ℚ)

end A160273

/-! ## A160273.P2900658536855754329

`Δ[A040040(n+2)/3]`
-/

namespace A160273.P2900658536855754329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040040 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160273.P2900658536855754329

namespace A160273

/-- `Δ[A040040(n+2)/3]` -/
def P2900658536855754329.Spec : Prop :=
  ∀ n, P2900658536855754329.a n = (A160273 (n + 1) : ℚ)

end A160273

/-! ## A160273.P4447256093943074852

`A008612(A167132(n+2))`
-/

namespace A160273.P4447256093943074852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A167132 (n + 2)).toNat

end

end A160273.P4447256093943074852

namespace A160273

/-- `A008612(A167132(n+2))` -/
def P4447256093943074852.Spec : Prop :=
  ∀ n, P4447256093943074852.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P4446984914203401607

`A000463(A204100(n+2))`
-/

namespace A160273.P4446984914203401607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A204100 (n + 2)).toNat

end

end A160273.P4446984914203401607

namespace A160273

/-- `A000463(A204100(n+2))` -/
def P4446984914203401607.Spec : Prop :=
  ∀ n, P4446984914203401607.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P5568977284549718866

`A008612(A204099(n+2))`
-/

namespace A160273.P5568977284549718866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A204099 (n + 2)).toNat

end

end A160273.P5568977284549718866

namespace A160273

/-- `A008612(A204099(n+2))` -/
def P5568977284549718866.Spec : Prop :=
  ∀ n, P5568977284549718866.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P11013260195117817

`A008620(A258972(n+2))`
-/

namespace A160273.P11013260195117817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A258972 (n + 2)).toNat

end

end A160273.P11013260195117817

namespace A160273

/-- `A008620(A258972(n+2))` -/
def P11013260195117817.Spec : Prop :=
  ∀ n, P11013260195117817.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P9149532562509097609

`A002264(Δ[A116958(n+1)])`
-/

namespace A160273.P9149532562509097609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A160273.P9149532562509097609

namespace A160273

/-- `A002264(Δ[A116958(n+1)])` -/
def P9149532562509097609.Spec : Prop :=
  ∀ n, P9149532562509097609.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P17662826407049370113

`A001281(Δ[A167379(n+1)])`
-/

namespace A160273.P17662826407049370113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A160273.P17662826407049370113

namespace A160273

/-- `A001281(Δ[A167379(n+1)])` -/
def P17662826407049370113.Spec : Prop :=
  ∀ n, P17662826407049370113.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P7122399606116637905

`A002264(Δ[A040040(n+2)])`
-/

namespace A160273.P7122399606116637905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A160273.P7122399606116637905

namespace A160273

/-- `A002264(Δ[A040040(n+2)])` -/
def P7122399606116637905.Spec : Prop :=
  ∀ n, P7122399606116637905.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P1591678390109379457

`A006370(A204100(n+2)+1)`
-/

namespace A160273.P1591678390109379457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A204100 (n + 2) + 1).toNat

end

end A160273.P1591678390109379457

namespace A160273

/-- `A006370(A204100(n+2)+1)` -/
def P1591678390109379457.Spec : Prop :=
  ∀ n, P1591678390109379457.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P16467095652562528530

`A266285(A204100(n+2)-1)`
-/

namespace A160273.P16467095652562528530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (A204100 (n + 2) - 1).toNat

end

end A160273.P16467095652562528530

namespace A160273

/-- `A266285(A204100(n+2)-1)` -/
def P16467095652562528530.Spec : Prop :=
  ∀ n, P16467095652562528530.a n = A160273 (n + 1)

end A160273

/-! ## A160273.P11371705401981663155

`A002822(n+2)-A002822(n+1)`
-/

namespace A160273.P11371705401981663155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 2) - A002822 (n + 1)

end

end A160273.P11371705401981663155

namespace A160273

/-- `A002822(n+2)-A002822(n+1)` -/
def P11371705401981663155.Spec : Prop :=
  ∀ n, P11371705401981663155.a n = A160273 (n + 1)

end A160273

/-!
# A160275: Partition of positive numbers into shortest possible groups (1), (2,3), (4,5,6), (7,8), ... such that a(n) = the sum of the terms of the n-th group is a multiple of a(n-1).

The programs for A160275, there is no canonical definition to state claims against.
-/

/-! ## A160275.P9536488208390174681

`a(n-1)*A160276(n)` with `a(0)=1`
-/

namespace A160275.P9536488208390174681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A160276 n

end

end A160275.P9536488208390174681

/-! ## A160275.P8294146128518195907

`∏[A160276(n+1)]/A160276(n+1)`
-/

namespace A160275.P8294146128518195907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160276 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A160276 (n + 1) : ℚ)

end

end A160275.P8294146128518195907

/-! ## A160275.P12436143046474493337

`Δ[A000217(A160277(n+1))]/A160276(n+1)`
-/

namespace A160275.P12436143046474493337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A160277 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A160276 (n + 1) : ℚ)

end

end A160275.P12436143046474493337

/-!
# A160276: Ratios of consecutive terms of A160275.

The programs for A160276, there is no canonical definition to state claims against.
-/

/-! ## A160276.P9519813680665425785

`A160275(n+2)/A160275(n+1)`
-/

namespace A160276.P9519813680665425785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160275 (n + 2) : ℚ) / (A160275 (n + 1) : ℚ)

end

end A160276.P9519813680665425785

/-! ## A160276.P12673903480475850488

`ratio[A160275(n+1)]`
-/

namespace A160276.P12673903480475850488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160275 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A160276.P12673903480475850488

/-! ## A160276.P10039338593321634866

`floor(ratio[A160275(A348553(n))])`
-/

namespace A160276.P10039338593321634866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160275 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A160276.P10039338593321634866

/-!
# A160277: Last terms in the groups defined in A160275.

The programs for A160277, there is no canonical definition to state claims against.
-/

/-! ## A160277.P11796910397726777767

`A002024(∑[A160275(n+1)])`
-/

namespace A160277.P11796910397726777767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160277.P11796910397726777767

/-! ## A160277.P15845753497544244757

`A002260(∑[A160275(n+1)])`
-/

namespace A160277.P15845753497544244757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160277.P15845753497544244757

/-! ## A160277.P5470733989550601828

`A003056(∑[A160275(n+1)])`
-/

namespace A160277.P5470733989550601828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160277.P5470733989550601828

/-! ## A160277.P6660416528353663062

`A003984(∑[A160275(n+1)])`
-/

namespace A160277.P6660416528353663062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160277.P6660416528353663062

/-!
# A160278: Angle in degrees between the two hands of a 12-hour analog clock at 12*n minutes after noon/midnight.

The programs for A160278, there is no canonical definition to state claims against.
-/

/-! ## A160278.P15294785975883821658

`6*A160272(n)`
-/

namespace A160278.P15294785975883821658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A160272 n

end

end A160278.P15294785975883821658

/-! ## A160278.P7213347626968716135

`A008588(A160272(n))`
-/

namespace A160278.P7213347626968716135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A160272 n).toNat

end

end A160278.P7213347626968716135

/-! ## A160278.P1144001930641103511

`A008458(A160272(n))-A000007(n)`
-/

namespace A160278.P1144001930641103511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A160272 n).toNat - A000007 n

end

end A160278.P1144001930641103511

/-! ## A160278.P9562745154250905138

`A008458(A160272(n))-A112316(n)`
-/

namespace A160278.P9562745154250905138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A160272 n).toNat - A112316 n

end

end A160278.P9562745154250905138

/-! ## A160278.P16886169874852580630

`A008458(A160272(n))%A135403(n)`
-/

namespace A160278.P16886169874852580630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A160272 n).toNat) (A135403 n)

end

end A160278.P16886169874852580630

/-! ## A160278.P2989225663279290647

`A008458(A160272(n))-char[A016915(n)]`
-/

namespace A160278.P2989225663279290647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016915 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A160272 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A160278.P2989225663279290647

/-! ## A160278.P1816236196419175396

`lcm(A001221(n+1), A008458(A160272(n)))`
-/

namespace A160278.P1816236196419175396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A008458 (A160272 n).toNat)

end

end A160278.P1816236196419175396

/-! ## A160278.P15060265948708115901

`A008458(A160272(n)+n)-A008458(n)`
-/

namespace A160278.P15060265948708115901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A160272 n + (n : ℤ)).toNat - A008458 n

end

end A160278.P15060265948708115901

/-! ## A160278.P14643527891884845005

`A008458(A160272(n))-A008683(A311625(n))`
-/

namespace A160278.P14643527891884845005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A160272 n).toNat - A008683 (A311625 n).toNat

end

end A160278.P14643527891884845005

