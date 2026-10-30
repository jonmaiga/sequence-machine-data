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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A007400: Continued fraction for Sum_{n>=0} 1/2^(2^n) = 0.8164215090218931...

The programs for A007400, there is no canonical definition to state claims against.
-/

/-! ## A007400.P7370879194990991062

`Δ[A073088(A028310(n))]`
-/

namespace A007400.P7370879194990991062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P7370879194990991062

/-! ## A007400.P202439480782991262

`Δ[A073088(A004277(n)-n)]`
-/

namespace A007400.P202439480782991262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P202439480782991262

/-! ## A007400.P5117576829260772492

`A073088(n+1)-A073088(A028310(n))`
-/

namespace A007400.P5117576829260772492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1) - A073088 (A028310 n).toNat

end

end A007400.P5117576829260772492

/-! ## A007400.P12485910947320027395

`A073088(n+1)-A073088(A000007(n)+n)`
-/

namespace A007400.P12485910947320027395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1) - A073088 (A000007 n + (n : ℤ)).toNat

end

end A007400.P12485910947320027395

/-! ## A007400.P11843374943993996335

`A073088(n+1)-A073088(A004277(n)-n)`
-/

namespace A007400.P11843374943993996335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1) - A073088 (A004277 n - (n : ℤ)).toNat

end

end A007400.P11843374943993996335

/-! ## A007400.P14312804704190091792

`Δ[A073088(A000007(n)+n)]`
-/

namespace A007400.P14312804704190091792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P14312804704190091792

/-! ## A007400.P6423936237290135489

`Δ[A073088(A004275(n+1)-n)]`
-/

namespace A007400.P6423936237290135489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P6423936237290135489

/-! ## A007400.P2266621726776217025

`Δ[A073088(A008619(A004275(n)))]`
-/

namespace A007400.P2266621726776217025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P2266621726776217025

/-! ## A007400.P17219192201289478967

`Δ[A073088(A004525(A004277(n)))]`
-/

namespace A007400.P17219192201289478967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P17219192201289478967

/-! ## A007400.P1712330775462942998

`Δ[A073088(A008619(A004273(n)))]`
-/

namespace A007400.P1712330775462942998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P1712330775462942998

/-! ## A007400.P1094345478469052066

`A073088(n+1)-A073088(A065033(2*n))`
-/

namespace A007400.P1094345478469052066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1) - A073088 (A065033 (2 * n)).toNat

end

end A007400.P1094345478469052066

/-! ## A007400.P12704707043550039102

`Δ[A073088(A065033(2*n))]`
-/

namespace A007400.P12704707043550039102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P12704707043550039102

/-! ## A007400.P13656206506093363906

`Δ[A073088(A110655(A008574(n)))]`
-/

namespace A007400.P13656206506093363906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A110655 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P13656206506093363906

/-! ## A007400.P13465057293541190537

`Δ[A073088(A000267(A002620(n)))]`
-/

namespace A007400.P13465057293541190537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A000267 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P13465057293541190537

/-! ## A007400.P13516742484704124122

`Δ[A073088(A007318(A000124(n)))]`
-/

namespace A007400.P13516742484704124122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P13516742484704124122

/-! ## A007400.P94415934219607481

`Δ[A073088(A003056(A053439(n)))]`
-/

namespace A007400.P94415934219607481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (A003056 (A053439 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007400.P94415934219607481

/-!
# A007401: Add n-1 to n-th term of 'n appears n times' sequence (A002024).

The programs for A007401, the canonical program `A007401.P15765701893365026453` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007401 has offset 1).

The definition of A007401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007401.P15765701893365026453

`n+1+floor(sqrt(2*(n+1))-1/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007401

/-- `n+1+floor(sqrt(2*(n+1))-1/2)` -/
def P15765701893365026453.Spec : Prop :=
  ∀ n, P15765701893365026453.a n = A007401 (n + 1)

theorem P15765701893365026453.correct : P15765701893365026453.Spec := by
  intro n
  simp only [A007401, Nat.add_sub_cancel]

end A007401

/-! ## A007401.P4805721264322621690

`eq[0, sqrt(T(n-1,k-1))]` with `a(0)=1`
-/

namespace A007401.P4805721264322621690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f2 =>
  Real.sqrt (SequenceMachineLib.triUpLeft f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A007401.P4805721264322621690

namespace A007401

/-- `eq[0, sqrt(T(n-1,k-1))]` -/
def P4805721264322621690.Spec : Prop :=
  ∀ n, (P4805721264322621690.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P15629220392189800868

`∑[T(n-1,k)!]` with `a(0)=1, a(1)=2`
-/

namespace A007401.P15629220392189800868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.factorial (SequenceMachineLib.triUp f1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007401.P15629220392189800868

namespace A007401

/-- `∑[T(n-1,k)!]` -/
def P15629220392189800868.Spec : Prop :=
  ∀ n, (P15629220392189800868.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P13951154369173716744

`eq[0, floor(T(n-1,k-1))]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A007401.P13951154369173716744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007401.P13951154369173716744

namespace A007401

/-- `eq[0, floor(T(n-1,k-1))]` -/
def P13951154369173716744.Spec : Prop :=
  ∀ n, (P13951154369173716744.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P17835157042573427872

`lt[ceil(T(n-1,k-1)), 3]` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A007401.P17835157042573427872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.triUpLeft f1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007401.P17835157042573427872

namespace A007401

/-- `lt[ceil(T(n-1,k-1)), 3]` -/
def P17835157042573427872.Spec : Prop :=
  ∀ n, (P17835157042573427872.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P15863456977086657720

`eq[0, T(n-1,k-1)²]` with `a(0)=-1`
-/

namespace A007401.P15863456977086657720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  SequenceMachineLib.triUpLeft f2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007401.P15863456977086657720

namespace A007401

/-- `eq[0, T(n-1,k-1)²]` -/
def P15863456977086657720.Spec : Prop :=
  ∀ n, (P15863456977086657720.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P6918779671729181892

`lt[col(n), row(n)]`
-/

namespace A007401.P6918779671729181892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007401.P6918779671729181892

namespace A007401

/-- `lt[col(n), row(n)]` -/
def P6918779671729181892.Spec : Prop :=
  ∀ n, (P6918779671729181892.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P620068885198249528

`lt[-1, floor(T(n-1,k-1))]` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A007401.P620068885198249528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007401.P620068885198249528

namespace A007401

/-- `lt[-1, floor(T(n-1,k-1))]` -/
def P620068885198249528.Spec : Prop :=
  ∀ n, (P620068885198249528.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P8343239692166701699

`lt[-1, round(T(n-1,k-1))]` with `a(0)=-1`

`round` is left out, it is the identity on integers.
-/

namespace A007401.P8343239692166701699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007401.P8343239692166701699

namespace A007401

/-- `lt[-1, round(T(n-1,k-1))]` -/
def P8343239692166701699.Spec : Prop :=
  ∀ n, (P8343239692166701699.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P16956668958481748285

`comp[C(n, 2)-1]`
-/

namespace A007401.P16956668958481748285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007401.P16956668958481748285

namespace A007401

/-- `comp[C(n, 2)-1]` -/
def P16956668958481748285.Spec : Prop :=
  ∀ n, (P16956668958481748285.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P14747101502712490304

`lt[1, T(n-1,k)+1]` with `a(0)=1`
-/

namespace A007401.P14747101502712490304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.triUp f2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007401.P14747101502712490304

namespace A007401

/-- `lt[1, T(n-1,k)+1]` -/
def P14747101502712490304.Spec : Prop :=
  ∀ n, (P14747101502712490304.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P15815438376559152008

`lt[2*T(n-1,k-1), 2]` with `a(0)=2`
-/

namespace A007401.P15815438376559152008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * SequenceMachineLib.triUpLeft f1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007401.P15815438376559152008

namespace A007401

/-- `lt[2*T(n-1,k-1), 2]` -/
def P15815438376559152008.Spec : Prop :=
  ∀ n, (P15815438376559152008.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P13160101949318532016

`lt[0, col(n+1)]`
-/

namespace A007401.P13160101949318532016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007401.P13160101949318532016

namespace A007401

/-- `lt[0, col(n+1)]` -/
def P13160101949318532016.Spec : Prop :=
  ∀ n, (P13160101949318532016.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P17999933014938807603

`n+row(n)+1`
-/

namespace A007401.P17999933014938807603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (SequenceMachineLib.triRow n + 1)

end

end A007401.P17999933014938807603

namespace A007401

/-- `n+row(n)+1` -/
def P17999933014938807603.Spec : Prop :=
  ∀ n, (P17999933014938807603.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P18396907079740135809

`xor(-comp[∑[n]], -1)`
-/

namespace A007401.P18396907079740135809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) (-1)

end

end A007401.P18396907079740135809

namespace A007401

/-- `xor(-comp[∑[n]], -1)` -/
def P18396907079740135809.Spec : Prop :=
  ∀ n, P18396907079740135809.a n = A007401 (n + 1)

end A007401

/-! ## A007401.P7134549602130272466

`comp[∑[gcd(n, n)]-1]`
-/

namespace A007401.P7134549602130272466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007401.P7134549602130272466

namespace A007401

/-- `comp[∑[gcd(n, n)]-1]` -/
def P7134549602130272466.Spec : Prop :=
  ∀ n, (P7134549602130272466.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P11555976276090519078

`∑[char[C(n, 2)]]+n`
-/

namespace A007401.P11555976276090519078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007401.P11555976276090519078

namespace A007401

/-- `∑[char[C(n, 2)]]+n` -/
def P11555976276090519078.Spec : Prop :=
  ∀ n, (P11555976276090519078.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P13657820463300488120

`∑[and(1, char[∑[n]])]+n`
-/

namespace A007401.P13657820463300488120
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007401.P13657820463300488120

namespace A007401

/-- `∑[and(1, char[∑[n]])]+n` -/
def P13657820463300488120.Spec : Prop :=
  ∀ n, (P13657820463300488120.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P5372710677980043195

`∑[Δ[comp[∑[n+2]]]!]`
-/

namespace A007401.P5372710677980043195
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007401.P5372710677980043195

namespace A007401

/-- `∑[Δ[comp[∑[n+2]]]!]` -/
def P5372710677980043195.Spec : Prop :=
  ∀ n, (P5372710677980043195.a n : ℤ) = A007401 (n + 1)

end A007401

/-! ## A007401.P8741935268526846109

`∑[dr(Δ[comp[∑[n+2]]])]`
-/

namespace A007401.P8741935268526846109
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007401.P8741935268526846109

namespace A007401

/-- `∑[dr(Δ[comp[∑[n+2]]])]` -/
def P8741935268526846109.Spec : Prop :=
  ∀ n, (P8741935268526846109.a n : ℤ) = A007401 (n + 1)

end A007401

/-!
# A007403: a(n) = Sum_{m=0..n} (Sum_{k=0..m} binomial(n,k))^3 = (n+2)*2^(3*n-1) - 3*2^(n-2)*n*binomial(2*n,n).

The programs for A007403, the canonical program `A007403.P7148506689461363495` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007403 has offset 0).

The definition of A007403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007403.P7148506689461363495

`(n+2)*2^(3*n-1)-3*2^(n-2)*n*C(2*n, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007403

/-- `(n+2)*2^(3*n-1)-3*2^(n-2)*n*C(2*n, n)` -/
def P7148506689461363495.Spec : Prop :=
  ∀ n, P7148506689461363495.a n = (A007403 n : ℚ)

end A007403

/-!
# A007404: Decimal expansion of Sum_{n>=0} 1/2^(2^n).

The programs for A007404, there is no canonical definition to state claims against.
-/

/-! ## A007404.P7701149098756830074

`A078585(n)+5*A000007(n)`
-/

namespace A007404.P7701149098756830074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078585 n + 5 * A000007 n

end

end A007404.P7701149098756830074

/-!
# A007405: Dowling numbers: e.g.f.: exp(x + (exp(b*x) - 1)/b) with b=2.

The programs for A007405, there is no canonical definition to state claims against.
-/

/-! ## A007405.P15309422720299406797

`∑{#}[n, C(n, #)*A187251(#)*A187251(n-#)]`
-/

namespace A007405.P15309422720299406797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A187251 k * A187251 (n - k)

end

end A007405.P15309422720299406797

/-! ## A007405.P1479915322693895667

`∑{#}[n, C(n, #)*A004211(#)]`
-/

namespace A007405.P1479915322693895667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A004211 k

end

end A007405.P1479915322693895667

/-! ## A007405.P15432756887716590387

`A337038(n+1)+A337038(n)`
-/

namespace A007405.P15432756887716590387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337038 (n + 1) + A337038 n

end

end A007405.P15432756887716590387

/-! ## A007405.P17885215361561022300

`A337010(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A007405.P17885215361561022300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337010 (n - 1) + a (n - 1)

end

end A007405.P17885215361561022300

/-! ## A007405.P6051087458491307025

`∑[A337010(A289207(n+1))]`
-/

namespace A007405.P6051087458491307025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337010 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007405.P6051087458491307025

/-! ## A007405.P6197749692960080931

`∑[A337010(A028310(n)-1)]`
-/

namespace A007405.P6197749692960080931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337010 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007405.P6197749692960080931

/-! ## A007405.P4369061282696206488

`∑[A337010(A057428(n)+n)]`
-/

namespace A007405.P4369061282696206488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337010 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007405.P4369061282696206488

/-! ## A007405.P9362649252586616813

`∑[A337010(n-A057428(n)²)]`
-/

namespace A007405.P9362649252586616813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337010 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007405.P9362649252586616813

/-! ## A007405.P14344625800846716199

`∑[A337010(A140106(2*n+1))]`
-/

namespace A007405.P14344625800846716199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337010 (A140106 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007405.P14344625800846716199

/-! ## A007405.P4610325339170854545

`∑[A337010(A289207(2*n)/2)]`
-/

namespace A007405.P4610325339170854545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337010 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007405.P4610325339170854545

/-!
# A007406: Wolstenholme numbers: numerator of Sum_{k=1..n} 1/k^2.

The programs for A007406, the canonical program `A007406.P9044966727249400815` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007406 has offset 1).

The definition of A007406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007406.P9044966727249400815

`∑[(1/(n+1))²]*A007407(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007406

/-- `∑[(1/(n+1))²]*A007407(n+1)` -/
def P9044966727249400815.Spec : Prop :=
  ∀ n, P9044966727249400815.a n = (A007406 (n + 1) : ℚ)

end A007406

/-! ## A007406.P14516479266752569942

`A322265(∑[n+4]-n)`
-/

namespace A007406.P14516479266752569942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A007406.P14516479266752569942

namespace A007406

/-- `A322265(∑[n+4]-n)` -/
def P14516479266752569942.Spec : Prop :=
  ∀ n, P14516479266752569942.a n = A007406 (n + 1)

end A007406

/-! ## A007406.P4488399981363987113

`A002701(n+2)*A125294(A077168(n))`
-/

namespace A007406.P4488399981363987113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002701 (n + 2) * A125294 (A077168 n).toNat

end

end A007406.P4488399981363987113

namespace A007406

/-- `A002701(n+2)*A125294(A077168(n))` -/
def P4488399981363987113.Spec : Prop :=
  ∀ n, P4488399981363987113.a n = A007406 (n + 1)

end A007406

/-! ## A007406.P14625198441116262299

`gcd(A001819(A077168(n)), A119784(n+1))`
-/

namespace A007406.P14625198441116262299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001819 (A077168 n).toNat) (A119784 (n + 1))

end

end A007406.P14625198441116262299

namespace A007406

/-- `gcd(A001819(A077168(n)), A119784(n+1))` -/
def P14625198441116262299.Spec : Prop :=
  ∀ n, (P14625198441116262299.a n : ℤ) = A007406 (n + 1)

end A007406

/-!
# A007407: a(n) = denominator of Sum_{k=1..n} 1/k^2.

The programs for A007407, the canonical program `A007407.P9917299019007364596` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007407 has offset 1).

The definition of A007407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007407.P9917299019007364596

`A001044(n+1)/gcd(A001819(n+1), A001044(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007407

/-- `A001044(n+1)/gcd(A001819(n+1), A001044(n+1))` -/
def P9917299019007364596.Spec : Prop :=
  ∀ n, P9917299019007364596.a n = (A007407 (n + 1) : ℚ)

end A007407

/-! ## A007407.P15948397963086188128

`A246498(n+1)/(n+1)`
-/

namespace A007407.P15948397963086188128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246498 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007407.P15948397963086188128

namespace A007407

/-- `A246498(n+1)/(n+1)` -/
def P15948397963086188128.Spec : Prop :=
  ∀ n, P15948397963086188128.a n = (A007407 (n + 1) : ℚ)

end A007407

/-! ## A007407.P8266185582163094367

`A001044(n+1)/A001819(n+1)*A007406(n+1)`
-/

namespace A007407.P8266185582163094367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 (n + 1) : ℚ) / (A001819 (n + 1) : ℚ) * (A007406 (n + 1) : ℚ)

end

end A007407.P8266185582163094367

namespace A007407

/-- `A001044(n+1)/A001819(n+1)*A007406(n+1)` -/
def P8266185582163094367.Spec : Prop :=
  ∀ n, P8266185582163094367.a n = (A007407 (n + 1) : ℚ)

end A007407

/-! ## A007407.P14084809249862108919

`A322266(A034856(n+2))`
-/

namespace A007407.P14084809249862108919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322266 (A034856 (n + 2)).toNat

end

end A007407.P14084809249862108919

namespace A007407

/-- `A322266(A034856(n+2))` -/
def P14084809249862108919.Spec : Prop :=
  ∀ n, P14084809249862108919.a n = A007407 (n + 1)

end A007407

/-! ## A007407.P6919056886438846936

`A139550(2*n+3)*A324500(A000079(n))`
-/

namespace A007407.P6919056886438846936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n + 3) * A324500 (A000079 n).toNat

end

end A007407.P6919056886438846936

namespace A007407

/-- `A139550(2*n+3)*A324500(A000079(n))` -/
def P6919056886438846936.Spec : Prop :=
  ∀ n, P6919056886438846936.a n = A007407 (n + 1)

end A007407

/-!
# A007408: Wolstenholme numbers: numerator of Sum_{k=1..n} 1/k^3.

The programs for A007408, there is no canonical definition to state claims against.
-/

/-! ## A007408.P3210038087709208177

`A322265(A141214(n+1))`
-/

namespace A007408.P3210038087709208177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (A141214 (n + 1)).toNat

end

end A007408.P3210038087709208177

/-! ## A007408.P4864832147947011479

`A303988(∑[n+1])`
-/

namespace A007408.P4864832147947011479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303988 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007408.P4864832147947011479

/-! ## A007408.P11601277224119007857

`or(1, A303988(A025747(n)))`
-/

namespace A007408.P11601277224119007857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A303988 (A025747 n).toNat)

end

end A007408.P11601277224119007857

/-! ## A007408.P1214740937459411391

`or(1, A303988(A046489(n)))`
-/

namespace A007408.P1214740937459411391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A303988 (A046489 n).toNat)

end

end A007408.P1214740937459411391

/-!
# A007409: Denominators of Sum_{k=1..n} 1/k^3.

The programs for A007409, there is no canonical definition to state claims against.
-/

/-! ## A007409.P6487867192696791709

`A249950(n+1)/(n+1)`
-/

namespace A007409.P6487867192696791709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249950 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007409.P6487867192696791709

/-! ## A007409.P15287412649555865404

`A002805(n+1)*A068589(n+1)`
-/

namespace A007409.P15287412649555865404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A068589 (n + 1)

end

end A007409.P15287412649555865404

/-! ## A007409.P15998431555977710099

`A068589(n+1)*A213999(A034856(n+1))`
-/

namespace A007409.P15998431555977710099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068589 (n + 1) * A213999 (A034856 (n + 1)).toNat

end

end A007409.P15998431555977710099

/-! ## A007409.P11563018023969508103

`A007480(n+1)/A069047(n+1)`
-/

namespace A007409.P11563018023969508103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (A069047 (n + 1) : ℚ)

end

end A007409.P11563018023969508103

/-! ## A007409.P12925797646339438148

`A322266(A141214(n+1))`
-/

namespace A007409.P12925797646339438148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322266 (A141214 (n + 1)).toNat

end

end A007409.P12925797646339438148

/-!
# A007410: Numerator of Sum_{k=1..n} k^(-4).

The programs for A007410, there is no canonical definition to state claims against.
-/

/-! ## A007410.P11518923539295182546

`A322265(Δ[A264443(n)])`
-/

namespace A007410.P11518923539295182546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (f1 (n + 1) - f1 n).toNat

end

end A007410.P11518923539295182546

/-! ## A007410.P9382646773262090423

`A322265(A046691(n+3))`
-/

namespace A007410.P9382646773262090423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (A046691 (n + 3)).toNat

end

end A007410.P9382646773262090423

/-!
# A007411: Number of matrices with n columns whose rows do not cover each other. Also antichain covers of an unlabeled n-set.

The programs for A007411, there is no canonical definition to state claims against.
-/

/-! ## A007411.P14379249051806207132

`A006602(n+2)-1`
-/

namespace A007411.P14379249051806207132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 (n + 2) - 1

end

end A007411.P14379249051806207132

/-! ## A007411.P1097949517988121972

`record[A006602(n)-1]`
-/

namespace A007411.P1097949517988121972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007411.P1097949517988121972

/-!
# A007412: The noncubes: a(n) = n + floor((n + floor(n^(1/3)))^(1/3)).

The programs for A007412, the canonical program `A007412.P9224991555725414530` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007412 has offset 1).

The definition of A007412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor((n+1+floor((n+1)^(1/3)))^(1/3))` (program `A007412.P9224991555725414530`, by `A007412.P9224991555725414530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007412.P9224991555725414530

`n+1+floor((n+1+floor((n+1)^(1/3)))^(1/3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007412

/-- `n+1+floor((n+1+floor((n+1)^(1/3)))^(1/3))` -/
def P9224991555725414530.Spec : Prop :=
  ∀ n, P9224991555725414530.a n = A007412 (n + 1)

theorem P9224991555725414530.correct : P9224991555725414530.Spec := by
  intro n
  simp only [A007412, Nat.add_sub_cancel]

end A007412

/-! ## A007412.P10375533569561373956

`comp[col(n)^3]`
-/

namespace A007412.P10375533569561373956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007412.P10375533569561373956

namespace A007412

/-- `comp[col(n)^3]` -/
def P10375533569561373956.Spec : Prop :=
  ∀ n, (P10375533569561373956.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P7473306581738358102

`comp[row(n)^3]`
-/

namespace A007412.P7473306581738358102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007412.P7473306581738358102

namespace A007412

/-- `comp[row(n)^3]` -/
def P7473306581738358102.Spec : Prop :=
  ∀ n, (P7473306581738358102.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P15002018652208836619

`comp[xor(2, n)^3]`
-/

namespace A007412.P15002018652208836619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007412.P15002018652208836619

namespace A007412

/-- `comp[xor(2, n)^3]` -/
def P15002018652208836619.Spec : Prop :=
  ∀ n, (P15002018652208836619.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P6384628052406404008

`comp[Δ[C(n, 2)²]]`
-/

namespace A007412.P6384628052406404008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P6384628052406404008

namespace A007412

/-- `comp[Δ[C(n, 2)²]]` -/
def P6384628052406404008.Spec : Prop :=
  ∀ n, (P6384628052406404008.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P426989349838360342

`comp[∑{digits}[n, #]^3]`
-/

namespace A007412.P426989349838360342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007412.P426989349838360342

namespace A007412

/-- `comp[∑{digits}[n, #]^3]` -/
def P426989349838360342.Spec : Prop :=
  ∀ n, (P426989349838360342.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P10912371956463018284

`comp[col(n)²*col(n)]`
-/

namespace A007412.P10912371956463018284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ 2 * SequenceMachineLib.triCol n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007412.P10912371956463018284

namespace A007412

/-- `comp[col(n)²*col(n)]` -/
def P10912371956463018284.Spec : Prop :=
  ∀ n, (P10912371956463018284.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P3474908680442866841

`comp[row(n)²*row(n)]`
-/

namespace A007412.P3474908680442866841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n ^ 2 * SequenceMachineLib.triRow n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007412.P3474908680442866841

namespace A007412

/-- `comp[row(n)²*row(n)]` -/
def P3474908680442866841.Spec : Prop :=
  ∀ n, (P3474908680442866841.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P3178622771190243086

`comp[A000578(n)]`
-/

namespace A007412.P3178622771190243086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P3178622771190243086

namespace A007412

/-- `comp[A000578(n)]` -/
def P3178622771190243086.Spec : Prop :=
  ∀ n, (P3178622771190243086.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P14876485570751816952

`comp[A018797(n)]`
-/

namespace A007412.P14876485570751816952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P14876485570751816952

namespace A007412

/-- `comp[A018797(n)]` -/
def P14876485570751816952.Spec : Prop :=
  ∀ n, (P14876485570751816952.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P3614387512189959559

`comp[A048763(n)]`
-/

namespace A007412.P3614387512189959559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P3614387512189959559

namespace A007412

/-- `comp[A048763(n)]` -/
def P3614387512189959559.Spec : Prop :=
  ∀ n, (P3614387512189959559.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P9315283223117567548

`comp[A077106(n)]`
-/

namespace A007412.P9315283223117567548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077106 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P9315283223117567548

namespace A007412

/-- `comp[A077106(n)]` -/
def P9315283223117567548.Spec : Prop :=
  ∀ n, (P9315283223117567548.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P14233942859545295989

`comp[A077107(n)]`
-/

namespace A007412.P14233942859545295989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P14233942859545295989

namespace A007412

/-- `comp[A077107(n)]` -/
def P14233942859545295989.Spec : Prop :=
  ∀ n, (P14233942859545295989.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P6314036446323637152

`comp[A077110(n)]`
-/

namespace A007412.P6314036446323637152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P6314036446323637152

namespace A007412

/-- `comp[A077110(n)]` -/
def P6314036446323637152.Spec : Prop :=
  ∀ n, (P6314036446323637152.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P2788490895900095568

`comp[A118880(n)]`
-/

namespace A007412.P2788490895900095568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P2788490895900095568

namespace A007412

/-- `comp[A118880(n)]` -/
def P2788490895900095568.Spec : Prop :=
  ∀ n, (P2788490895900095568.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P17105646221165097081

`comp[A178983(n)]`
-/

namespace A007412.P17105646221165097081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P17105646221165097081

namespace A007412

/-- `comp[A178983(n)]` -/
def P17105646221165097081.Spec : Prop :=
  ∀ n, (P17105646221165097081.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P2896171247698644971

`comp[A201053(n)]`
-/

namespace A007412.P2896171247698644971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007412.P2896171247698644971

namespace A007412

/-- `comp[A201053(n)]` -/
def P2896171247698644971.Spec : Prop :=
  ∀ n, (P2896171247698644971.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P14485489282302519291

`sqrt(A179126(n+1))`
-/

namespace A007412.P14485489282302519291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179126 (n + 1) : ℝ)

end

end A007412.P14485489282302519291

namespace A007412

/-- `sqrt(A179126(n+1))` -/
def P14485489282302519291.Spec : Prop :=
  ∀ n, P14485489282302519291.a n = (A007412 (n + 1) : ℝ)

end A007412

/-! ## A007412.P4350414557391643130

`∑[char[A007531(n)]+1]`
-/

namespace A007412.P4350414557391643130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007412.P4350414557391643130

namespace A007412

/-- `∑[char[A007531(n)]+1]` -/
def P4350414557391643130.Spec : Prop :=
  ∀ n, (P4350414557391643130.a n : ℤ) = A007412 (n + 1)

end A007412

/-! ## A007412.P11753981380583410952

`∑[char[(n+1)*A005563(n)]+1]`
-/

namespace A007412.P11753981380583410952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005563 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007412.P11753981380583410952

namespace A007412

/-- `∑[char[(n+1)*A005563(n)]+1]` -/
def P11753981380583410952.Spec : Prop :=
  ∀ n, (P11753981380583410952.a n : ℤ) = A007412 (n + 1)

end A007412

/-!
# A007413: A squarefree (or Thue-Morse) ternary sequence: closed under 1->123, 2->13, 3->2. Start with 1.

The programs for A007413, the canonical program `A007413.P5220170299432131247` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007413 has offset 1).

The definition of A007413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007413.P11805666468338058002

`2-A029883(n+1)`
-/

namespace A007413.P11805666468338058002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A029883 (n + 1)

end

end A007413.P11805666468338058002

namespace A007413

/-- `2-A029883(n+1)` -/
def P11805666468338058002.Spec : Prop :=
  ∀ n, P11805666468338058002.a n = A007413 (n + 1)

theorem P11805666468338058002.correct : P11805666468338058002.Spec := by
  intro n
  simp only [A007413, Nat.add_sub_cancel, A007413.P11805666468338058002.a, A007413.P5220170299432131247.a, A029883, A029883.P16402799982168113119.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007413

/-! ## A007413.P7733455613205640730

`3-A036577(n+1)`
-/

namespace A007413.P7733455613205640730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A036577 (n + 1)

end

end A007413.P7733455613205640730

namespace A007413

/-- `3-A036577(n+1)` -/
def P7733455613205640730.Spec : Prop :=
  ∀ n, P7733455613205640730.a n = A007413 (n + 1)

theorem P7733455613205640730.correct : P7733455613205640730.Spec := by
  intro n
  simp only [A007413, Nat.add_sub_cancel, A007413.P7733455613205640730.a, A007413.P5220170299432131247.a, A036577, A036577.P861720372246105226.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, A029883, A029883.P16402799982168113119.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007413

/-! ## A007413.P5220170299432131247

`4-A036585(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A007413

/-- `4-A036585(n+1)` -/
def P5220170299432131247.Spec : Prop :=
  ∀ n, P5220170299432131247.a n = A007413 (n + 1)

theorem P5220170299432131247.correct : P5220170299432131247.Spec := by
  intro n
  simp only [A007413, Nat.add_sub_cancel]

end A007413

/-! ## A007413.P6186433651301165388

`A033485(n+1)%4`
-/

namespace A007413.P6186433651301165388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033485 (n + 1)) 4

end

end A007413.P6186433651301165388

namespace A007413

/-- `A033485(n+1)%4` -/
def P6186433651301165388.Spec : Prop :=
  ∀ n, P6186433651301165388.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P12693535674372745933

`Δ[comp[xor(n, 2*n)]]`
-/

namespace A007413.P12693535674372745933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A007413.P12693535674372745933

namespace A007413

/-- `Δ[comp[xor(n, 2*n)]]` -/
def P12693535674372745933.Spec : Prop :=
  ∀ n, P12693535674372745933.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P393189001129489447

`Δ[1-a(and(n, n-1))]+2` with `a(0)=1`
-/

namespace A007413.P393189001129489447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A007413.P393189001129489447

namespace A007413

/-- `Δ[1-a(and(n, n-1))]+2` -/
def P393189001129489447.Spec : Prop :=
  ∀ n, P393189001129489447.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P6065785262305539230

`2-Δ[2/a(and(n, n-1))]` with `a(0)=1`
-/

namespace A007413.P6065785262305539230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A007413.P6065785262305539230

namespace A007413

/-- `2-Δ[2/a(and(n, n-1))]` -/
def P6065785262305539230.Spec : Prop :=
  ∀ n, P6065785262305539230.a n = (A007413 (n + 1) : ℚ)

end A007413

/-! ## A007413.P18298885738802231608

`Δ[(a(floor(n/2))+n)%2]+2` with `a(0)=1`
-/

namespace A007413.P18298885738802231608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 ⌊(n : ℚ) / 2⌋.toNat + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A007413.P18298885738802231608

namespace A007413

/-- `Δ[(a(floor(n/2))+n)%2]+2` -/
def P18298885738802231608.Spec : Prop :=
  ∀ n, P18298885738802231608.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P6160248874292470203

`2-Δ[gcd(2, val(n*a(n-1), 2))]` with `a(0)=1`
-/

namespace A007413.P6160248874292470203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd 2 (SequenceMachineLib.valuation (n * f1 (n - 1)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007413.P6160248874292470203

namespace A007413

/-- `2-Δ[gcd(2, val(n*a(n-1), 2))]` -/
def P6160248874292470203.Spec : Prop :=
  ∀ n, P6160248874292470203.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P11994134576699626025

`(a(floor((n-1)/2))+a(n-1))%4` with `a(0)=1`
-/

namespace A007413.P11994134576699626025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1)) % 4

end

end A007413.P11994134576699626025

namespace A007413

/-- `(a(floor((n-1)/2))+a(n-1))%4` -/
def P11994134576699626025.Spec : Prop :=
  ∀ n, (P11994134576699626025.a n : ℤ) = A007413 (n + 1)

end A007413

/-! ## A007413.P17760143634121695244

`and(3, a(floor((n-1)/2))+a(n-1))` with `a(0)=1`
-/

namespace A007413.P17760143634121695244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1))

end

end A007413.P17760143634121695244

namespace A007413

/-- `and(3, a(floor((n-1)/2))+a(n-1))` -/
def P17760143634121695244.Spec : Prop :=
  ∀ n, (P17760143634121695244.a n : ℤ) = A007413 (n + 1)

end A007413

/-! ## A007413.P4620150630907253117

`A036580(n)+1`
-/

namespace A007413.P4620150630907253117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n + 1

end

end A007413.P4620150630907253117

namespace A007413

/-- `A036580(n)+1` -/
def P4620150630907253117.Spec : Prop :=
  ∀ n, P4620150630907253117.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P9077120732946366832

`Δ[A000069(n+1)]`
-/

namespace A007413.P9077120732946366832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007413.P9077120732946366832

namespace A007413

/-- `Δ[A000069(n+1)]` -/
def P9077120732946366832.Spec : Prop :=
  ∀ n, P9077120732946366832.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P13243552564780929053

`Δ[A010059(n)]+2`
-/

namespace A007413.P13243552564780929053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A007413.P13243552564780929053

namespace A007413

/-- `Δ[A010059(n)]+2` -/
def P13243552564780929053.Spec : Prop :=
  ∀ n, P13243552564780929053.a n = A007413 (n + 1)

theorem P13243552564780929053.correct : P13243552564780929053.Spec := by
  intro n
  simp only [A007413, Nat.add_sub_cancel, A007413.P13243552564780929053.f1, A007413.P13243552564780929053.a, A007413.P5220170299432131247.a, A010059, A010059.P6338678923093357896.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007413

/-! ## A007413.P776610848173621338

`2-Δ[A001285(n)]`
-/

namespace A007413.P776610848173621338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A007413.P776610848173621338

namespace A007413

/-- `2-Δ[A001285(n)]` -/
def P776610848173621338.Spec : Prop :=
  ∀ n, P776610848173621338.a n = A007413 (n + 1)

theorem P776610848173621338.correct : P776610848173621338.Spec := by
  intro n
  simp only [A007413, Nat.add_sub_cancel, A007413.P776610848173621338.f1, A007413.P776610848173621338.a, A007413.P5220170299432131247.a, A001285, A001285.P11616636227895161122.a, A036585, A036585.P17220132576541787484.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007413

/-! ## A007413.P17153762381979134981

`2-Δ[A010060(n)]`
-/

namespace A007413.P17153762381979134981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A007413.P17153762381979134981

namespace A007413

/-- `2-Δ[A010060(n)]` -/
def P17153762381979134981.Spec : Prop :=
  ∀ n, P17153762381979134981.a n = A007413 (n + 1)

theorem P17153762381979134981.correct : P17153762381979134981.Spec := by
  intro n
  simp only [A007413, Nat.add_sub_cancel, A007413.P17153762381979134981.f1, A007413.P17153762381979134981.a, A007413.P5220170299432131247.a, A010060, A010060.P3080921269106500717.a, A036585, A036585.P17220132576541787484.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007413

/-! ## A007413.P13592018585378729614

`A354384(n+1)-1`
-/

namespace A007413.P13592018585378729614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354384 (n + 1) - 1

end

end A007413.P13592018585378729614

namespace A007413

/-- `A354384(n+1)-1` -/
def P13592018585378729614.Spec : Prop :=
  ∀ n, P13592018585378729614.a n = A007413 (n + 1)

end A007413

/-! ## A007413.P17922694513449301192

`3-A316826(n+1)`
-/

namespace A007413.P17922694513449301192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A316826 (n + 1)

end

end A007413.P17922694513449301192

namespace A007413

/-- `3-A316826(n+1)` -/
def P17922694513449301192.Spec : Prop :=
  ∀ n, P17922694513449301192.a n = A007413 (n + 1)

end A007413

/-!
# A007415: Expand sin x / exp x = x-x^2+x^3/3-x^5/30+... and invert nonzero coefficients.

The programs for A007415, there is no canonical definition to state claims against.
-/

/-! ## A007415.P18109570346703914931

`A046979(n)*A075553(n)`
-/

namespace A007415.P18109570346703914931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046979 n * A075553 n

end

end A007415.P18109570346703914931

/-! ## A007415.P662868147304052692

`A075553(n)*A090932(n)`
-/

namespace A007415.P662868147304052692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 n * A090932 n

end

end A007415.P662868147304052692

/-! ## A007415.P3490172511681423272

`A046978(3*n)*A046979(n)`
-/

namespace A007415.P3490172511681423272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (3 * n) * A046979 n

end

end A007415.P3490172511681423272

/-! ## A007415.P12241480176521954044

`A046978(3*n)*A090932(n)`
-/

namespace A007415.P12241480176521954044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (3 * n) * A090932 n

end

end A007415.P12241480176521954044

/-! ## A007415.P4838963248954521357

`∏[val(A052957(n), 2)]*A075553(n)`
-/

namespace A007415.P4838963248954521357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052957 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A075553 n

end

end A007415.P4838963248954521357

/-! ## A007415.P10041893539189829397

`∏[A051724(A008458(n))]*A075553(n)`
-/

namespace A007415.P10041893539189829397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A075553 n

end

end A007415.P10041893539189829397

/-! ## A007415.P8015315810373701988

`∏[A060819(A004277(n))]*A075553(n)`
-/

namespace A007415.P8015315810373701988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A075553 n

end

end A007415.P8015315810373701988

/-! ## A007415.P16545249472649385100

`∏[A026741(A233583(n+1))]*A075553(n)`
-/

namespace A007415.P16545249472649385100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A075553 n

end

end A007415.P16545249472649385100

/-! ## A007415.P14864176496492578490

`∏[A026741(A000007(n)+n)]*A075553(n)`
-/

namespace A007415.P14864176496492578490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A075553 n

end

end A007415.P14864176496492578490

/-!
# A007416: The minimal numbers: sequence A005179 arranged in increasing order.

The programs for A007416, there is no canonical definition to state claims against.
-/

/-! ## A007416.P7433898141548320352

`A005179(A053212(n+1))`
-/

namespace A007416.P7433898141548320352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A053212 (n + 1)).toNat

end

end A007416.P7433898141548320352

/-! ## A007416.P16730783763783010897

`record[A005179(A000005(n+1))]`
-/

namespace A007416.P16730783763783010897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007416.P16730783763783010897

/-! ## A007416.P14308218078093482882

`∑[A053213(floor(acot(n)+n))]`
-/

namespace A007416.P14308218078093482882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007416.P14308218078093482882

/-! ## A007416.P12028569179183901813

`A053213(n)+a(n-1)` with `a(0)=1`
-/

namespace A007416.P12028569179183901813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053213 n + a (n - 1)

end

end A007416.P12028569179183901813

/-! ## A007416.P5719228731905541983

`∑[A053213(round(sqrt(n²+1)))]`
-/

namespace A007416.P5719228731905541983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007416.P5719228731905541983

/-! ## A007416.P9180492216822349452

`∑[A053213(A000038(n)+n)]-1`
-/

namespace A007416.P9180492216822349452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007416.P9180492216822349452

/-! ## A007416.P10106511116683054659

`abs(1-∑[A053213(A000007(n)+n)])+1`
-/

namespace A007416.P10106511116683054659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| + 1

end

end A007416.P10106511116683054659

/-! ## A007416.P6528983651538887325

`∑[A053213(A000007(n)+n)]%A020701(n)`
-/

namespace A007416.P6528983651538887325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A020701 n)

end

end A007416.P6528983651538887325

/-! ## A007416.P6875206943192637867

`∑[A053213(n+1)]+1-A053213(n+1)`
-/

namespace A007416.P6875206943192637867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A053213 (n + 1))

end

end A007416.P6875206943192637867

/-!
# A007417: If k appears, 3k does not.

The programs for A007417, the canonical program `A007417.P14396701096105327663` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007417 has offset 1).

The definition of A007417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007417.P7405100586835769677

`A092401(2*n+1)`
-/

namespace A007417.P7405100586835769677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092401 (2 * n + 1)

end

end A007417.P7405100586835769677

namespace A007417

/-- `A092401(2*n+1)` -/
def P7405100586835769677.Spec : Prop :=
  ∀ n, P7405100586835769677.a n = A007417 (n + 1)

end A007417

/-! ## A007417.P2618023124958934309

`∑[runs[n-a(floor(n/3))]]` with `a(0)=0`
-/

namespace A007417.P2618023124958934309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 ⌊(n : ℚ) / 3⌋.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007417.P2618023124958934309

namespace A007417

/-- `∑[runs[n-a(floor(n/3))]]` -/
def P2618023124958934309.Spec : Prop :=
  ∀ n, (P2618023124958934309.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P9896779664085616651

`∑[runs[A163528(n)]]`
-/

namespace A007417.P9896779664085616651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007417.P9896779664085616651

namespace A007417

/-- `∑[runs[A163528(n)]]` -/
def P9896779664085616651.Spec : Prop :=
  ∀ n, (P9896779664085616651.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P5551131286476340121

`∑[A092400(n+1)]`
-/

namespace A007417.P5551131286476340121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007417.P5551131286476340121

namespace A007417

/-- `∑[A092400(n+1)]` -/
def P5551131286476340121.Spec : Prop :=
  ∀ n, P5551131286476340121.a n = A007417 (n + 1)

end A007417

/-! ## A007417.P14396701096105327663

`comp[A145204(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007417

/-- `comp[A145204(n+1)]` -/
def P14396701096105327663.Spec : Prop :=
  ∀ n, (P14396701096105327663.a n : ℤ) = A007417 (n + 1)

theorem P14396701096105327663.correct : P14396701096105327663.Spec := by
  intro n
  simp only [A007417, Nat.add_sub_cancel]

end A007417

/-! ## A007417.P7906975330684329753

`eq[1, A163533(3*n)²]`
-/

namespace A007417.P7906975330684329753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007417.P7906975330684329753

namespace A007417

/-- `eq[1, A163533(3*n)²]` -/
def P7906975330684329753.Spec : Prop :=
  ∀ n, (P7906975330684329753.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P9615740482882115371

`eq[1, gcd(2, A163532(2*n))]`
-/

namespace A007417.P9615740482882115371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A163532 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007417.P9615740482882115371

namespace A007417

/-- `eq[1, gcd(2, A163532(2*n))]` -/
def P9615740482882115371.Spec : Prop :=
  ∀ n, (P9615740482882115371.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P16921800687565285565

`filter[A074232(n+1), A014578(#)]`
-/

namespace A007417.P16921800687565285565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A007417.P16921800687565285565

namespace A007417

/-- `filter[A074232(n+1), A014578(#)]` -/
def P16921800687565285565.Spec : Prop :=
  ∀ n, P16921800687565285565.a n = A007417 (n + 1)

end A007417

/-! ## A007417.P9491067110883841474

`∪[A325429(n+1), A016777(n)]`
-/

namespace A007417.P9491067110883841474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007417.P9491067110883841474

namespace A007417

/-- `∪[A325429(n+1), A016777(n)]` -/
def P9491067110883841474.Spec : Prop :=
  ∀ n, (P9491067110883841474.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P12865663854133601614

`∪[A325429(n+1), A112414(n)]`
-/

namespace A007417.P12865663854133601614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007417.P12865663854133601614

namespace A007417

/-- `∪[A325429(n+1), A112414(n)]` -/
def P12865663854133601614.Spec : Prop :=
  ∀ n, (P12865663854133601614.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P6450153384818334118

`lt[1, A014578(n)*A020639(n+1)]`
-/

namespace A007417.P6450153384818334118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n * A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007417.P6450153384818334118

namespace A007417

/-- `lt[1, A014578(n)*A020639(n+1)]` -/
def P6450153384818334118.Spec : Prop :=
  ∀ n, (P6450153384818334118.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P5611113651793803860

`∪[A055047(n+1), A055048(n+1)]`
-/

namespace A007417.P5611113651793803860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007417.P5611113651793803860

namespace A007417

/-- `∪[A055047(n+1), A055048(n+1)]` -/
def P5611113651793803860.Spec : Prop :=
  ∀ n, (P5611113651793803860.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P14585646432659392768

`∪[A047236(n+1), A325429(n+1)]`
-/

namespace A007417.P14585646432659392768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007417.P14585646432659392768

namespace A007417

/-- `∪[A047236(n+1), A325429(n+1)]` -/
def P14585646432659392768.Spec : Prop :=
  ∀ n, (P14585646432659392768.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P4293353533707548536

`∪[A047259(n+1), A325429(n+1)]`
-/

namespace A007417.P4293353533707548536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007417.P4293353533707548536

namespace A007417

/-- `∪[A047259(n+1), A325429(n+1)]` -/
def P4293353533707548536.Spec : Prop :=
  ∀ n, (P4293353533707548536.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P14801113706610075534

`∪[A055047(n+1), A325429(n+1)]`
-/

namespace A007417.P14801113706610075534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007417.P14801113706610075534

namespace A007417

/-- `∪[A055047(n+1), A325429(n+1)]` -/
def P14801113706610075534.Spec : Prop :=
  ∀ n, (P14801113706610075534.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P7753261401698500993

`lt[A007913(n+1), A007913(3*(n+1))]+1`
-/

namespace A007417.P7753261401698500993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A007417.P7753261401698500993

namespace A007417

/-- `lt[A007913(n+1), A007913(3*(n+1))]+1` -/
def P7753261401698500993.Spec : Prop :=
  ∀ n, (P7753261401698500993.a n : ℤ) = A007417 (n + 1)

end A007417

/-! ## A007417.P13891954302223447376

`A145204(n+2)/3`
-/

namespace A007417.P13891954302223447376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145204 (n + 2) : ℚ) / 3

end

end A007417.P13891954302223447376

namespace A007417

/-- `A145204(n+2)/3` -/
def P13891954302223447376.Spec : Prop :=
  ∀ n, P13891954302223447376.a n = (A007417 (n + 1) : ℚ)

end A007417

/-! ## A007417.P6009352850327825418

`∑[A001221(Δ[A145204(n+1)])]`
-/

namespace A007417.P6009352850327825418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007417.P6009352850327825418

namespace A007417

/-- `∑[A001221(Δ[A145204(n+1)])]` -/
def P6009352850327825418.Spec : Prop :=
  ∀ n, P6009352850327825418.a n = A007417 (n + 1)

end A007417

/-! ## A007417.P18122726653580745482

`∑[A001222(Δ[A145204(n+1)])]`
-/

namespace A007417.P18122726653580745482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007417.P18122726653580745482

namespace A007417

/-- `∑[A001222(Δ[A145204(n+1)])]` -/
def P18122726653580745482.Spec : Prop :=
  ∀ n, P18122726653580745482.a n = A007417 (n + 1)

end A007417

/-!
# A007420: Berstel sequence: a(n+1) = 2*a(n) - 4*a(n-1) + 4*a(n-2).

The programs for A007420, the canonical program `A007420.P5949429779455899187` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007420 has offset 0).

The definition of A007420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007420.P10480856379491180435

`ogf(x^2/(1-2x+4x^2-4x^3))`
-/

namespace A007420.P10480856379491180435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 4, -4] n

end

end A007420.P10480856379491180435

namespace A007420

/-- `ogf(x^2/(1-2x+4x^2-4x^3))` -/
def P10480856379491180435.Spec : Prop :=
  ∀ n, P10480856379491180435.a n = A007420 n

end A007420

/-! ## A007420.P5949429779455899187

`2*a(n-1)-4*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007420

/-- `2*a(n-1)-4*a(n-2)+4*a(n-3)` -/
def P5949429779455899187.Spec : Prop :=
  ∀ n, P5949429779455899187.a n = A007420 n

theorem P5949429779455899187.correct : P5949429779455899187.Spec := by
  intro n
  simp only [A007420]

end A007420

/-! ## A007420.P13500421173219198891

`Δ[A178885(abs(1-n))]`
-/

namespace A007420.P13500421173219198891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178885 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007420.P13500421173219198891

namespace A007420

/-- `Δ[A178885(abs(1-n))]` -/
def P13500421173219198891.Spec : Prop :=
  ∀ n, P13500421173219198891.a n = A007420 n

end A007420

/-! ## A007420.P3312494630884182044

`A178885(n)-A178885(abs(1-n))`
-/

namespace A007420.P3312494630884182044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178885 n - A178885 |1 - (n : ℤ)|.toNat

end

end A007420.P3312494630884182044

namespace A007420

/-- `A178885(n)-A178885(abs(1-n))` -/
def P3312494630884182044.Spec : Prop :=
  ∀ n, P3312494630884182044.a n = A007420 n

end A007420

/-!
# A007421: Liouville's function: parity of number of primes dividing n (with multiplicity).

The programs for A007421, the canonical program `A007421.P6096517627125049268` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007421 has offset 1).

The definition of A007421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007421.P2625644047732535449

`A065043(n+1)+1`
-/

namespace A007421.P2625644047732535449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) + 1

end

end A007421.P2625644047732535449

namespace A007421

/-- `A065043(n+1)+1` -/
def P2625644047732535449.Spec : Prop :=
  ∀ n, P2625644047732535449.a n = A007421 (n + 1)

theorem P2625644047732535449.correct : P2625644047732535449.Spec := by
  intro n
  simp only [A007421, Nat.add_sub_cancel, A007421.P2625644047732535449.a, A007421.P6096517627125049268.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A065043, A065043.P15027714353296076488.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007421

/-! ## A007421.P1716291703118931517

`(A008836(n+1)+3)/2`
-/

namespace A007421.P1716291703118931517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) + 3 : ℚ) / 2

end

end A007421.P1716291703118931517

namespace A007421

/-- `(A008836(n+1)+3)/2` -/
def P1716291703118931517.Spec : Prop :=
  ∀ n, P1716291703118931517.a n = (A007421 (n + 1) : ℚ)

end A007421

/-! ## A007421.P6096517627125049268

`2-A001222(n+1)%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007421

/-- `2-A001222(n+1)%2` -/
def P6096517627125049268.Spec : Prop :=
  ∀ n, P6096517627125049268.a n = A007421 (n + 1)

theorem P6096517627125049268.correct : P6096517627125049268.Spec := by
  intro n
  simp only [A007421, Nat.add_sub_cancel]

end A007421

/-! ## A007421.P2546261311158381976

`gcd(2, ∑{e}[n+1, #])`
-/

namespace A007421.P2546261311158381976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A007421.P2546261311158381976

namespace A007421

/-- `gcd(2, ∑{e}[n+1, #])` -/
def P2546261311158381976.Spec : Prop :=
  ∀ n, (P2546261311158381976.a n : ℤ) = A007421 (n + 1)

end A007421

/-! ## A007421.P4898321658164286921

`abs(or(∑{e}[n+1, #], -2))`
-/

namespace A007421.P4898321658164286921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (-2)|

end

end A007421.P4898321658164286921

namespace A007421

/-- `abs(or(∑{e}[n+1, #], -2))` -/
def P4898321658164286921.Spec : Prop :=
  ∀ n, P4898321658164286921.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P9327059706511751969

`-or(∑{e}[n+1, #], -2)`
-/

namespace A007421.P9327059706511751969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (-2)

end

end A007421.P9327059706511751969

namespace A007421

/-- `-or(∑{e}[n+1, #], -2)` -/
def P9327059706511751969.Spec : Prop :=
  ∀ n, P9327059706511751969.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P15494718547612067160

`2-∑{e}[n+1, #]%2`
-/

namespace A007421.P15494718547612067160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2 : ℕ) : ℤ)

end

end A007421.P15494718547612067160

namespace A007421

/-- `2-∑{e}[n+1, #]%2` -/
def P15494718547612067160.Spec : Prop :=
  ∀ n, P15494718547612067160.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P3069330195484728642

`2-and(1, ∑{e}[n+1, #])`
-/

namespace A007421.P3069330195484728642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)

end

end A007421.P3069330195484728642

namespace A007421

/-- `2-and(1, ∑{e}[n+1, #])` -/
def P3069330195484728642.Spec : Prop :=
  ∀ n, P3069330195484728642.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P14530356890237388853

`log2((-1)^∑{e}[n+1, #]+3)`
-/

namespace A007421.P14530356890237388853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 3 : ℝ)

end

end A007421.P14530356890237388853

namespace A007421

/-- `log2((-1)^∑{e}[n+1, #]+3)` -/
def P14530356890237388853.Spec : Prop :=
  ∀ n, P14530356890237388853.a n = (A007421 (n + 1) : ℝ)

end A007421

/-! ## A007421.P10817080332442037998

`ceil(2^(-1)^∑{e}[n+1, #])`
-/

namespace A007421.P10817080332442037998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)⌉

end

end A007421.P10817080332442037998

namespace A007421

/-- `ceil(2^(-1)^∑{e}[n+1, #])` -/
def P10817080332442037998.Spec : Prop :=
  ∀ n, P10817080332442037998.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P8669876691232835730

`((-1)^∑{e}[n+1, #]+1)!`
-/

namespace A007421.P8669876691232835730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1).toNat

end

end A007421.P8669876691232835730

namespace A007421

/-- `((-1)^∑{e}[n+1, #]+1)!` -/
def P8669876691232835730.Spec : Prop :=
  ∀ n, (P8669876691232835730.a n : ℤ) = A007421 (n + 1)

end A007421

/-! ## A007421.P6263138630116664247

`gcd(2, Δ[A022559(n)])`
-/

namespace A007421.P6263138630116664247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A007421.P6263138630116664247

namespace A007421

/-- `gcd(2, Δ[A022559(n)])` -/
def P6263138630116664247.Spec : Prop :=
  ∀ n, (P6263138630116664247.a n : ℤ) = A007421 (n + 1)

end A007421

/-! ## A007421.P4285380440784265159

`2-A066829(n+1)`
-/

namespace A007421.P4285380440784265159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A066829 (n + 1)

end

end A007421.P4285380440784265159

namespace A007421

/-- `2-A066829(n+1)` -/
def P4285380440784265159.Spec : Prop :=
  ∀ n, P4285380440784265159.a n = A007421 (n + 1)

theorem P4285380440784265159.correct : P4285380440784265159.Spec := by
  intro n
  simp only [A007421, Nat.add_sub_cancel, A007421.P4285380440784265159.a, A007421.P6096517627125049268.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A066829, A066829.P3721516859256189271.a, A065043, A065043.P15027714353296076488.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007421

/-! ## A007421.P17595210580276986920

`2/a(A089196(n))` with `a(0)=2`
-/

namespace A007421.P17595210580276986920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 / a (A089196 n).toNat

end

end A007421.P17595210580276986920

namespace A007421

/-- `2/a(A089196(n))` -/
def P17595210580276986920.Spec : Prop :=
  ∀ n, P17595210580276986920.a n = (A007421 (n + 1) : ℚ)

end A007421

/-! ## A007421.P9216905858924236115

`ceil(root(2, A008836(n+1)))`
-/

namespace A007421.P9216905858924236115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ (1 / (A008836 (n + 1) : ℝ))⌉

end

end A007421.P9216905858924236115

namespace A007421

/-- `ceil(root(2, A008836(n+1)))` -/
def P9216905858924236115.Spec : Prop :=
  ∀ n, P9216905858924236115.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P1321002100535120083

`A066829(2*(n+1))+1`
-/

namespace A007421.P1321002100535120083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * (n + 1)) + 1

end

end A007421.P1321002100535120083

namespace A007421

/-- `A066829(2*(n+1))+1` -/
def P1321002100535120083.Spec : Prop :=
  ∀ n, P1321002100535120083.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P15087186512083504432

`A353556(2*(n+1))+1`
-/

namespace A007421.P15087186512083504432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (2 * (n + 1)) + 1

end

end A007421.P15087186512083504432

namespace A007421

/-- `A353556(2*(n+1))+1` -/
def P15087186512083504432.Spec : Prop :=
  ∀ n, P15087186512083504432.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P10781466529141791621

`A359770(2*(n+1))+1`
-/

namespace A007421.P10781466529141791621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (2 * (n + 1)) + 1

end

end A007421.P10781466529141791621

namespace A007421

/-- `A359770(2*(n+1))+1` -/
def P10781466529141791621.Spec : Prop :=
  ∀ n, P10781466529141791621.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P13674122235259981183

`2-A353555(2*(n+1))`
-/

namespace A007421.P13674122235259981183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A353555 (2 * (n + 1))

end

end A007421.P13674122235259981183

namespace A007421

/-- `2-A353555(2*(n+1))` -/
def P13674122235259981183.Spec : Prop :=
  ∀ n, P13674122235259981183.a n = A007421 (n + 1)

end A007421

/-! ## A007421.P3052860590661730286

`and(1, A016003(n+1))+1`
-/

namespace A007421.P3052860590661730286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016003 (n + 1)) + 1

end

end A007421.P3052860590661730286

namespace A007421

/-- `and(1, A016003(n+1))+1` -/
def P3052860590661730286.Spec : Prop :=
  ∀ n, P3052860590661730286.a n = A007421 (n + 1)

end A007421

/-!
# A007422: Multiplicatively perfect numbers j: product of divisors of j is j^2.

The programs for A007422, the canonical program `A007422.P6090757407708890179` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007422 has offset 1).

The definition of A007422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007422.P2294932830342391835

`eq[1, A354927(n+1)]+1`
-/

namespace A007422.P2294932830342391835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007422.P2294932830342391835

namespace A007422

/-- `eq[1, A354927(n+1)]+1` -/
def P2294932830342391835.Spec : Prop :=
  ∀ n, (P2294932830342391835.a n : ℤ) = A007422 (n + 1)

end A007422

/-! ## A007422.P6090757407708890179

`lt[((A000005(n+1)-4)*n)², 2]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007422

/-- `lt[((A000005(n+1)-4)*n)², 2]+1` -/
def P6090757407708890179.Spec : Prop :=
  ∀ n, (P6090757407708890179.a n : ℤ) = A007422 (n + 1)

theorem P6090757407708890179.correct : P6090757407708890179.Spec := by
  intro n
  simp only [A007422, Nat.add_sub_cancel]

end A007422

/-! ## A007422.P2932233973657199003

`filter[A373482(n+1), A354927(#)]`
-/

namespace A007422.P2932233973657199003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P2932233973657199003

namespace A007422

/-- `filter[A373482(n+1), A354927(#)]` -/
def P2932233973657199003.Spec : Prop :=
  ∀ n, P2932233973657199003.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P925134970657354923

`∪[A030513(n+1), A008922(n)]`
-/

namespace A007422.P925134970657354923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007422.P925134970657354923

namespace A007422

/-- `∪[A030513(n+1), A008922(n)]` -/
def P925134970657354923.Spec : Prop :=
  ∀ n, (P925134970657354923.a n : ℤ) = A007422 (n + 1)

end A007422

/-! ## A007422.P3636400951315875986

`eq[1, A004157(A000005(n+1))]+1`
-/

namespace A007422.P3636400951315875986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007422.P3636400951315875986

namespace A007422

/-- `eq[1, A004157(A000005(n+1))]+1` -/
def P3636400951315875986.Spec : Prop :=
  ∀ n, (P3636400951315875986.a n : ℤ) = A007422 (n + 1)

end A007422

/-! ## A007422.P4170827380320317539

`eq[A077462(n), A135278(2*A077462(n))]`
-/

namespace A007422.P4170827380320317539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (2 * A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007422.P4170827380320317539

namespace A007422

/-- `eq[A077462(n), A135278(2*A077462(n))]` -/
def P4170827380320317539.Spec : Prop :=
  ∀ n, (P4170827380320317539.a n : ℤ) = A007422 (n + 1)

end A007422

/-! ## A007422.P8568469652689696976

`eq[A000005(n+1), A322906(A000005(n+1)+1)]+1`
-/

namespace A007422.P8568469652689696976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A007422.P8568469652689696976

namespace A007422

/-- `eq[A000005(n+1), A322906(A000005(n+1)+1)]+1` -/
def P8568469652689696976.Spec : Prop :=
  ∀ n, (P8568469652689696976.a n : ℤ) = A007422 (n + 1)

end A007422

/-! ## A007422.P18420652120413754430

`filter[A036436(n+1), A123927(#)]`
-/

namespace A007422.P18420652120413754430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A007422.P18420652120413754430

namespace A007422

/-- `filter[A036436(n+1), A123927(#)]` -/
def P18420652120413754430.Spec : Prop :=
  ∀ n, P18420652120413754430.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P9549983440866435847

`filter[A036436(n+1), A340369(#)]`
-/

namespace A007422.P9549983440866435847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A007422.P9549983440866435847

namespace A007422

/-- `filter[A036436(n+1), A340369(#)]` -/
def P9549983440866435847.Spec : Prop :=
  ∀ n, P9549983440866435847.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P17620366693024504236

`filter[A036436(n+1), A353799(#)]`
-/

namespace A007422.P17620366693024504236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A007422.P17620366693024504236

namespace A007422

/-- `filter[A036436(n+1), A353799(#)]` -/
def P17620366693024504236.Spec : Prop :=
  ∀ n, P17620366693024504236.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P5756698479270712104

`filter[A036436(n+1), A354927(#)]`
-/

namespace A007422.P5756698479270712104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P5756698479270712104

namespace A007422

/-- `filter[A036436(n+1), A354927(#)]` -/
def P5756698479270712104.Spec : Prop :=
  ∀ n, P5756698479270712104.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P8867177321007650939

`filter[A007964(n+1), A354927(#)]`
-/

namespace A007422.P8867177321007650939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P8867177321007650939

namespace A007422

/-- `filter[A007964(n+1), A354927(#)]` -/
def P8867177321007650939.Spec : Prop :=
  ∀ n, P8867177321007650939.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P338248375663415174

`filter[A007964(n+1), A359464(#)]`
-/

namespace A007422.P338248375663415174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A007422.P338248375663415174

namespace A007422

/-- `filter[A007964(n+1), A359464(#)]` -/
def P338248375663415174.Spec : Prop :=
  ∀ n, P338248375663415174.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P11208201044221218135

`filter[A354144(n+1), A354927(#)]`
-/

namespace A007422.P11208201044221218135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P11208201044221218135

namespace A007422

/-- `filter[A354144(n+1), A354927(#)]` -/
def P11208201044221218135.Spec : Prop :=
  ∀ n, P11208201044221218135.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P1739200270290483890

`filter[A085156(n+1), A354927(#)]`
-/

namespace A007422.P1739200270290483890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P1739200270290483890

namespace A007422

/-- `filter[A085156(n+1), A354927(#)]` -/
def P1739200270290483890.Spec : Prop :=
  ∀ n, P1739200270290483890.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P6284282920136330610

`filter[A211337(n+1), A340369(#)]`
-/

namespace A007422.P6284282920136330610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A007422.P6284282920136330610

namespace A007422

/-- `filter[A211337(n+1), A340369(#)]` -/
def P6284282920136330610.Spec : Prop :=
  ∀ n, P6284282920136330610.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P3495010763656450765

`filter[A211337(n+1), A353799(#)]`
-/

namespace A007422.P3495010763656450765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A007422.P3495010763656450765

namespace A007422

/-- `filter[A211337(n+1), A353799(#)]` -/
def P3495010763656450765.Spec : Prop :=
  ∀ n, P3495010763656450765.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P17322998641838370935

`filter[A211337(n+1), A354927(#)]`
-/

namespace A007422.P17322998641838370935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P17322998641838370935

namespace A007422

/-- `filter[A211337(n+1), A354927(#)]` -/
def P17322998641838370935.Spec : Prop :=
  ∀ n, P17322998641838370935.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P6572837807935606331

`filter[A119885(n+1), A354927(#)]`
-/

namespace A007422.P6572837807935606331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P6572837807935606331

namespace A007422

/-- `filter[A119885(n+1), A354927(#)]` -/
def P6572837807935606331.Spec : Prop :=
  ∀ n, P6572837807935606331.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P14633773590639748163

`filter[A072510(n+1), A354927(#)]`
-/

namespace A007422.P14633773590639748163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A007422.P14633773590639748163

namespace A007422

/-- `filter[A072510(n+1), A354927(#)]` -/
def P14633773590639748163.Spec : Prop :=
  ∀ n, P14633773590639748163.a n = A007422 (n + 1)

end A007422

/-! ## A007422.P3712414356873637013

`eq[n², ∏{d}[n, #]]`
-/

namespace A007422.P3712414356873637013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007422.P3712414356873637013

namespace A007422

/-- `eq[n², ∏{d}[n, #]]` -/
def P3712414356873637013.Spec : Prop :=
  ∀ n, (P3712414356873637013.a n : ℤ) = A007422 (n + 1)

end A007422

/-!
# A007423: a(n) = mu(n) + 1, where mu is the Moebius function.

The programs for A007423, the canonical program `A007423.P17981127199039660822` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007423 has offset 1).

The definition of A007423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n+1)+1` (program `A007423.P17981127199039660822`, by `A007423.P17981127199039660822.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007423.P17981127199039660822

`A008683(n+1)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007423

/-- `A008683(n+1)+1` -/
def P17981127199039660822.Spec : Prop :=
  ∀ n, P17981127199039660822.a n = A007423 (n + 1)

theorem P17981127199039660822.correct : P17981127199039660822.Spec := by
  intro n
  simp only [A007423, Nat.add_sub_cancel]

end A007423

/-! ## A007423.P9099678944003348179

`∏{e}[n+1, -floor(1/#)]+1`
-/

namespace A007423.P9099678944003348179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + 1

end

end A007423.P9099678944003348179

namespace A007423

/-- `∏{e}[n+1, -floor(1/#)]+1` -/
def P9099678944003348179.Spec : Prop :=
  ∀ n, P9099678944003348179.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P8556922900709314296

`∏{e}[n+1, -#!]%2+1`
-/

namespace A007423.P8556922900709314296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2 + 1

end

end A007423.P8556922900709314296

namespace A007423

/-- `∏{e}[n+1, -#!]%2+1` -/
def P8556922900709314296.Spec : Prop :=
  ∀ n, P8556922900709314296.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P4749063550616199149

`round(1/∏{e}[n+1, -#²])+1`
-/

namespace A007423.P4749063550616199149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) + 1

end

end A007423.P4749063550616199149

namespace A007423

/-- `round(1/∏{e}[n+1, -#²])+1` -/
def P4749063550616199149.Spec : Prop :=
  ∀ n, P4749063550616199149.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P10704574973601389469

`round(∏{e}[n+1, -#^-2])+1`
-/

namespace A007423.P10704574973601389469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (-((Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ)))) + 1

end

end A007423.P10704574973601389469

namespace A007423

/-- `round(∏{e}[n+1, -#^-2])+1` -/
def P10704574973601389469.Spec : Prop :=
  ∀ n, P10704574973601389469.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P12715773621682807094

`round(∏{p}[n+1, -#]/(n+2))+1`
-/

namespace A007423.P12715773621682807094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ)) + 1

end

end A007423.P12715773621682807094

namespace A007423

/-- `round(∏{p}[n+1, -#]/(n+2))+1` -/
def P12715773621682807094.Spec : Prop :=
  ∀ n, P12715773621682807094.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P1816698172595219829

`round(acot(∏{e}[n+1, -#])+n+1)-n`
-/

namespace A007423.P1816698172595219829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ) + (n + 1 : ℝ)) - (n : ℤ)

end

end A007423.P1816698172595219829

namespace A007423

/-- `round(acot(∏{e}[n+1, -#])+n+1)-n` -/
def P1816698172595219829.Spec : Prop :=
  ∀ n, P1816698172595219829.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P599394162928903120

`abs(A076544(n+1))`
-/

namespace A007423.P599394162928903120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076544 (n + 1)|

end

end A007423.P599394162928903120

namespace A007423

/-- `abs(A076544(n+1))` -/
def P599394162928903120.Spec : Prop :=
  ∀ n, P599394162928903120.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P4697545366091127614

`1+A008683(n+1)`
-/

namespace A007423.P4697545366091127614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A008683 (n + 1)

end

end A007423.P4697545366091127614

namespace A007423

/-- `1+A008683(n+1)` -/
def P4697545366091127614.Spec : Prop :=
  ∀ n, P4697545366091127614.a n = A007423 (n + 1)

theorem P4697545366091127614.correct : P4697545366091127614.Spec := by
  intro n
  simp only [A007423, Nat.add_sub_cancel, A007423.P4697545366091127614.a, A007423.P17981127199039660822.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007423

/-! ## A007423.P11782207234129447454

`A080847(n+1)-1`
-/

namespace A007423.P11782207234129447454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 1

end

end A007423.P11782207234129447454

namespace A007423

/-- `A080847(n+1)-1` -/
def P11782207234129447454.Spec : Prop :=
  ∀ n, P11782207234129447454.a n = A007423 (n + 1)

theorem P11782207234129447454.correct : P11782207234129447454.Spec := by
  intro n
  simp only [A007423, Nat.add_sub_cancel, A007423.P11782207234129447454.a, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A080847, A080847.P17042895332239696920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007423

/-! ## A007423.P4961395729331948312

`A231821(n+1)-2`
-/

namespace A007423.P4961395729331948312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1) - 2

end

end A007423.P4961395729331948312

namespace A007423

/-- `A231821(n+1)-2` -/
def P4961395729331948312.Spec : Prop :=
  ∀ n, P4961395729331948312.a n = A007423 (n + 1)

theorem P4961395729331948312.correct : P4961395729331948312.Spec := by
  intro n
  simp only [A007423, Nat.add_sub_cancel, A007423.P4961395729331948312.a, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A231821, A231821.P12304754178482988977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007423

/-! ## A007423.P2664245188272414322

`3-A129979(n+1)`
-/

namespace A007423.P2664245188272414322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A129979 (n + 1)

end

end A007423.P2664245188272414322

namespace A007423

/-- `3-A129979(n+1)` -/
def P2664245188272414322.Spec : Prop :=
  ∀ n, P2664245188272414322.a n = A007423 (n + 1)

theorem P2664245188272414322.correct : P2664245188272414322.Spec := by
  intro n
  simp only [A007423, Nat.add_sub_cancel, A007423.P2664245188272414322.a, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A129979, A129979.P5213750874207387056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007423

/-! ## A007423.P6772357110188205058

`A076369(n+1)-n`
-/

namespace A007423.P6772357110188205058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - (n : ℤ)

end

end A007423.P6772357110188205058

namespace A007423

/-- `A076369(n+1)-n` -/
def P6772357110188205058.Spec : Prop :=
  ∀ n, P6772357110188205058.a n = A007423 (n + 1)

theorem P6772357110188205058.correct : P6772357110188205058.Spec := by
  intro n
  simp only [A007423, Nat.add_sub_cancel, A007423.P6772357110188205058.a, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A076369, A076369.P8196715672845264258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007423

/-! ## A007423.P18236140660923916254

`floor(exp(A140664(n+1)))`
-/

namespace A007423.P18236140660923916254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A140664 (n + 1) : ℝ)⌋

end

end A007423.P18236140660923916254

namespace A007423

/-- `floor(exp(A140664(n+1)))` -/
def P18236140660923916254.Spec : Prop :=
  ∀ n, P18236140660923916254.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P11268916698999238042

`floor(log(A228409(n+1)))`
-/

namespace A007423.P11268916698999238042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A228409 (n + 1) : ℝ)⌋

end

end A007423.P11268916698999238042

namespace A007423

/-- `floor(log(A228409(n+1)))` -/
def P11268916698999238042.Spec : Prop :=
  ∀ n, P11268916698999238042.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P17036082552615524165

`(A133695(n+1)+3)/2`
-/

namespace A007423.P17036082552615524165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133695 (n + 1) + 3 : ℚ) / 2

end

end A007423.P17036082552615524165

namespace A007423

/-- `(A133695(n+1)+3)/2` -/
def P17036082552615524165.Spec : Prop :=
  ∀ n, P17036082552615524165.a n = (A007423 (n + 1) : ℚ)

theorem P17036082552615524165.correct : P17036082552615524165.Spec := by
  intro n
  simp only [A007423, Nat.add_sub_cancel, A007423.P17036082552615524165.a, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A133695, A133695.P14090460044357670883.a, A080847, A080847.P17042895332239696920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007423

/-! ## A007423.P2480673720711268616

`A061669(n+1)/(n+1)`
-/

namespace A007423.P2480673720711268616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061669 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007423.P2480673720711268616

namespace A007423

/-- `A061669(n+1)/(n+1)` -/
def P2480673720711268616.Spec : Prop :=
  ∀ n, P2480673720711268616.a n = (A007423 (n + 1) : ℚ)

end A007423

/-! ## A007423.P13307270952587116620

`A127440(n)+a(n-1)` with `a(0)=2`
-/

namespace A007423.P13307270952587116620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A127440 n + a (n - 1)

end

end A007423.P13307270952587116620

namespace A007423

/-- `A127440(n)+a(n-1)` -/
def P13307270952587116620.Spec : Prop :=
  ∀ n, P13307270952587116620.a n = A007423 (n + 1)

theorem P13307270952587116620.correct : P13307270952587116620.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A007423, Nat.add_sub_cancel, A007423.P13307270952587116620.a, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A127440, A127440.P13819688515437632303.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A007423, Nat.add_sub_cancel, A007423.P13307270952587116620.a, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A127440, A127440.P13819688515437632303.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A007423

/-! ## A007423.P10695346280631540267

`round(acot(A162512(n+1)))+1`
-/

namespace A007423.P10695346280631540267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A162512 (n + 1) : ℝ)) + 1

end

end A007423.P10695346280631540267

namespace A007423

/-- `round(acot(A162512(n+1)))+1` -/
def P10695346280631540267.Spec : Prop :=
  ∀ n, P10695346280631540267.a n = A007423 (n + 1)

end A007423

/-! ## A007423.P12910461011437616929

`A055615(n+1)/(n+1)+1`
-/

namespace A007423.P12910461011437616929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A007423.P12910461011437616929

namespace A007423

/-- `A055615(n+1)/(n+1)+1` -/
def P12910461011437616929.Spec : Prop :=
  ∀ n, P12910461011437616929.a n = (A007423 (n + 1) : ℚ)

end A007423

/-!
# A007424: a(n) = 1 if n is squarefree, otherwise 2.

The programs for A007424, the canonical program `A007424.P14149509109381921245` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007424 has offset 1).

The definition of A007424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007424.P14149509109381921245

`2-A008966(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007424

/-- `2-A008966(n+1)` -/
def P14149509109381921245.Spec : Prop :=
  ∀ n, P14149509109381921245.a n = A007424 (n + 1)

theorem P14149509109381921245.correct : P14149509109381921245.Spec := by
  intro n
  simp only [A007424, Nat.add_sub_cancel]

end A007424

/-! ## A007424.P7032477728123184276

`ceil(atan(∏{e}[n+1, #]))`
-/

namespace A007424.P7032477728123184276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌉

end

end A007424.P7032477728123184276

namespace A007424

/-- `ceil(atan(∏{e}[n+1, #]))` -/
def P7032477728123184276.Spec : Prop :=
  ∀ n, P7032477728123184276.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P14406571148126472252

`gcd(2, ∏{e}[1+n, #!])`
-/

namespace A007424.P14406571148126472252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A007424.P14406571148126472252

namespace A007424

/-- `gcd(2, ∏{e}[1+n, #!])` -/
def P14406571148126472252.Spec : Prop :=
  ∀ n, (P14406571148126472252.a n : ℤ) = A007424 (n + 1)

end A007424

/-! ## A007424.P10481545466276339466

`ceil(root(∏{e}[1+n, #], 5))`
-/

namespace A007424.P10481545466276339466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) ^ (1 / (5 : ℝ))⌉

end

end A007424.P10481545466276339466

namespace A007424

/-- `ceil(root(∏{e}[1+n, #], 5))` -/
def P10481545466276339466.Spec : Prop :=
  ∀ n, P10481545466276339466.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P14035776754952651510

`ceil(tan(tanh(∏{e}[n+1, #])))`
-/

namespace A007424.P14035776754952651510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌉

end

end A007424.P14035776754952651510

namespace A007424

/-- `ceil(tan(tanh(∏{e}[n+1, #])))` -/
def P14035776754952651510.Spec : Prop :=
  ∀ n, P14035776754952651510.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P8772655687719503871

`round(cosh(atan(∏{e}[n+1, #])))`
-/

namespace A007424.P8772655687719503871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.arctan ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A007424.P8772655687719503871

namespace A007424

/-- `round(cosh(atan(∏{e}[n+1, #])))` -/
def P8772655687719503871.Spec : Prop :=
  ∀ n, P8772655687719503871.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P1219641208351785624

`ceil(asin(tanh(∏{e}[n+1, #])))`
-/

namespace A007424.P1219641208351785624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌉

end

end A007424.P1219641208351785624

namespace A007424

/-- `ceil(asin(tanh(∏{e}[n+1, #])))` -/
def P1219641208351785624.Spec : Prop :=
  ∀ n, P1219641208351785624.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P13591548206869130587

`ceil(acos(acot(∏{e}[n+1, #])))`
-/

namespace A007424.P13591548206869130587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌉

end

end A007424.P13591548206869130587

namespace A007424

/-- `ceil(acos(acot(∏{e}[n+1, #])))` -/
def P13591548206869130587.Spec : Prop :=
  ∀ n, P13591548206869130587.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P11726039109875357829

`round(cosh(tanh(∏{e}[n+1, #])))`
-/

namespace A007424.P11726039109875357829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A007424.P11726039109875357829

namespace A007424

/-- `round(cosh(tanh(∏{e}[n+1, #])))` -/
def P11726039109875357829.Spec : Prop :=
  ∀ n, P11726039109875357829.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P8614177149640055220

`ceil(sinh(tanh(∏{e}[n+1, #])))`
-/

namespace A007424.P8614177149640055220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.tanh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌉

end

end A007424.P8614177149640055220

namespace A007424

/-- `ceil(sinh(tanh(∏{e}[n+1, #])))` -/
def P8614177149640055220.Spec : Prop :=
  ∀ n, P8614177149640055220.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P5787404850068760265

`ceil(acot(acot(∏{e}[n+1, #])))`
-/

namespace A007424.P5787404850068760265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌉

end

end A007424.P5787404850068760265

namespace A007424

/-- `ceil(acot(acot(∏{e}[n+1, #])))` -/
def P5787404850068760265.Spec : Prop :=
  ∀ n, P5787404850068760265.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P17811726857638209305

`(2%∏{e}[n+1, #²])!`
-/

namespace A007424.P17811726857638209305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2))

end

end A007424.P17811726857638209305

namespace A007424

/-- `(2%∏{e}[n+1, #²])!` -/
def P17811726857638209305.Spec : Prop :=
  ∀ n, (P17811726857638209305.a n : ℤ) = A007424 (n + 1)

end A007424

/-! ## A007424.P17560629442819882544

`2-floor(1/∏{e}[n+1, #])`
-/

namespace A007424.P17560629442819882544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A007424.P17560629442819882544

namespace A007424

/-- `2-floor(1/∏{e}[n+1, #])` -/
def P17560629442819882544.Spec : Prop :=
  ∀ n, P17560629442819882544.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P17053180540152537300

`3-ceil(2/∏{e}[n+1, #])`
-/

namespace A007424.P17053180540152537300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌈2 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌉

end

end A007424.P17053180540152537300

namespace A007424

/-- `3-ceil(2/∏{e}[n+1, #])` -/
def P17053180540152537300.Spec : Prop :=
  ∀ n, P17053180540152537300.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P6666112661749275470

`2/ceil(2/∏{e}[n+1, #])`
-/

namespace A007424.P6666112661749275470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (⌈2 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌉ : ℚ)

end

end A007424.P6666112661749275470

namespace A007424

/-- `2/ceil(2/∏{e}[n+1, #])` -/
def P6666112661749275470.Spec : Prop :=
  ∀ n, P6666112661749275470.a n = (A007424 (n + 1) : ℚ)

end A007424

/-! ## A007424.P637621291205573351

`2-and(1, ∏{e}[n+1, #!])`
-/

namespace A007424.P637621291205573351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) : ℤ)

end

end A007424.P637621291205573351

namespace A007424

/-- `2-and(1, ∏{e}[n+1, #!])` -/
def P637621291205573351.Spec : Prop :=
  ∀ n, P637621291205573351.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P6977665138584424666

`3-C(2, ∏{e}[n+1, #])!`
-/

namespace A007424.P6977665138584424666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.factorial (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A007424.P6977665138584424666

namespace A007424

/-- `3-C(2, ∏{e}[n+1, #])!` -/
def P6977665138584424666.Spec : Prop :=
  ∀ n, P6977665138584424666.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P3115424798229003581

`2-C(∏{p}[n+1, #], n+1)`
-/

namespace A007424.P3115424798229003581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) (n + 1) : ℤ)

end

end A007424.P3115424798229003581

namespace A007424

/-- `2-C(∏{p}[n+1, #], n+1)` -/
def P3115424798229003581.Spec : Prop :=
  ∀ n, P3115424798229003581.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P9640877800636472266

`2-floor(∏{p}[n+1, #]/(n+1))`
-/

namespace A007424.P9640877800636472266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A007424.P9640877800636472266

namespace A007424

/-- `2-floor(∏{p}[n+1, #]/(n+1))` -/
def P9640877800636472266.Spec : Prop :=
  ∀ n, P9640877800636472266.a n = A007424 (n + 1)

end A007424

/-! ## A007424.P5685786957831412303

`gcd(2, A002033(n))`
-/

namespace A007424.P5685786957831412303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002033 n)

end

end A007424.P5685786957831412303

namespace A007424

/-- `gcd(2, A002033(n))` -/
def P5685786957831412303.Spec : Prop :=
  ∀ n, (P5685786957831412303.a n : ℤ) = A007424 (n + 1)

end A007424

/-!
# A007425: d_3(n), or tau_3(n), the number of ordered factorizations of n as n = r s t.

The programs for A007425, the canonical program `A007425.P13740274416881294389` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007425 has offset 1).

The definition of A007425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007425.P13740274416881294389

`∑{d}[n+1, A000005(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007425

/-- `∑{d}[n+1, A000005(#)]` -/
def P13740274416881294389.Spec : Prop :=
  ∀ n, P13740274416881294389.a n = A007425 (n + 1)

theorem P13740274416881294389.correct : P13740274416881294389.Spec := by
  intro n
  simp only [A007425, Nat.add_sub_cancel]

end A007425

/-! ## A007425.P3441111155356079205

`∏{e}[n+1, C(#+2, 2)]`
-/

namespace A007425.P3441111155356079205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2

end

end A007425.P3441111155356079205

namespace A007425

/-- `∏{e}[n+1, C(#+2, 2)]` -/
def P3441111155356079205.Spec : Prop :=
  ∀ n, (P3441111155356079205.a n : ℤ) = A007425 (n + 1)

end A007425

/-! ## A007425.P8244838977865410702

`sqrt(A097988(1+n))`
-/

namespace A007425.P8244838977865410702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (1 + n) : ℝ)

end

end A007425.P8244838977865410702

namespace A007425

/-- `sqrt(A097988(1+n))` -/
def P8244838977865410702.Spec : Prop :=
  ∀ n, P8244838977865410702.a n = (A007425 (n + 1) : ℝ)

end A007425

/-! ## A007425.P12102507499772789890

`∏{e}[n+1, A025731(#)]`
-/

namespace A007425.P12102507499772789890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025731 (Nat.factorization (f1 n) p)

end

end A007425.P12102507499772789890

namespace A007425

/-- `∏{e}[n+1, A025731(#)]` -/
def P12102507499772789890.Spec : Prop :=
  ∀ n, P12102507499772789890.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P14594381622886399331

`∏{e}[n+1, A025738(#)]`
-/

namespace A007425.P14594381622886399331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025738 (Nat.factorization (f1 n) p)

end

end A007425.P14594381622886399331

namespace A007425

/-- `∏{e}[n+1, A025738(#)]` -/
def P14594381622886399331.Spec : Prop :=
  ∀ n, P14594381622886399331.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P5933132874699045888

`∏{e}[n+1, A025747(#)]`
-/

namespace A007425.P5933132874699045888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025747 (Nat.factorization (f1 n) p)

end

end A007425.P5933132874699045888

namespace A007425

/-- `∏{e}[n+1, A025747(#)]` -/
def P5933132874699045888.Spec : Prop :=
  ∀ n, P5933132874699045888.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P5414076957816732642

`∏{e}[n+1, A253145(#)]`
-/

namespace A007425.P5414076957816732642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A253145 (Nat.factorization (f1 n) p)

end

end A007425.P5414076957816732642

namespace A007425

/-- `∏{e}[n+1, A253145(#)]` -/
def P5414076957816732642.Spec : Prop :=
  ∀ n, P5414076957816732642.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P16106195063833560013

`A034718(n+1)/(n+1)`
-/

namespace A007425.P16106195063833560013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034718 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007425.P16106195063833560013

namespace A007425

/-- `A034718(n+1)/(n+1)` -/
def P16106195063833560013.Spec : Prop :=
  ∀ n, P16106195063833560013.a n = (A007425 (n + 1) : ℚ)

end A007425

/-! ## A007425.P4595138752220801426

`∏{e}[n+1, A000217(#+1)]`
-/

namespace A007425.P4595138752220801426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000217 (Nat.factorization (f1 n) p + 1)

end

end A007425.P4595138752220801426

namespace A007425

/-- `∏{e}[n+1, A000217(#+1)]` -/
def P4595138752220801426.Spec : Prop :=
  ∀ n, P4595138752220801426.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P2198589267651684808

`A238952(n+1)+A000005(n+1)`
-/

namespace A007425.P2198589267651684808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (n + 1) + A000005 (n + 1)

end

end A007425.P2198589267651684808

namespace A007425

/-- `A238952(n+1)+A000005(n+1)` -/
def P2198589267651684808.Spec : Prop :=
  ∀ n, P2198589267651684808.a n = A007425 (n + 1)

theorem P2198589267651684808.correct : P2198589267651684808.Spec := by
  intro n
  simp only [A007425, Nat.add_sub_cancel, A007425.P2198589267651684808.a, A007425.P13740274416881294389.f1, A007425.P13740274416881294389.a, A000005, A000005.P16091521709108585461.a, A238952, A238952.P6937701478012677279.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007425

/-! ## A007425.P5065954764213899842

`A343879(n+1)+A114003(n+1)`
-/

namespace A007425.P5065954764213899842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343879 (n + 1) + A114003 (n + 1)

end

end A007425.P5065954764213899842

namespace A007425

/-- `A343879(n+1)+A114003(n+1)` -/
def P5065954764213899842.Spec : Prop :=
  ∀ n, P5065954764213899842.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P9665727860039063125

`A007429(n+1)-A069913(n+1)`
-/

namespace A007425.P9665727860039063125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - A069913 (n + 1)

end

end A007425.P9665727860039063125

namespace A007425

/-- `A007429(n+1)-A069913(n+1)` -/
def P9665727860039063125.Spec : Prop :=
  ∀ n, P9665727860039063125.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P9561159782621058924

`A000203(n+1)-A369337(n+1)`
-/

namespace A007425.P9561159782621058924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A369337 (n + 1)

end

end A007425.P9561159782621058924

namespace A007425

/-- `A000203(n+1)-A369337(n+1)` -/
def P9561159782621058924.Spec : Prop :=
  ∀ n, P9561159782621058924.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P18399514303297959191

`A046951(n+1)*A365345(n+1)`
-/

namespace A007425.P18399514303297959191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) * A365345 (n + 1)

end

end A007425.P18399514303297959191

namespace A007425

/-- `A046951(n+1)*A365345(n+1)` -/
def P18399514303297959191.Spec : Prop :=
  ∀ n, P18399514303297959191.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P18111590980760419323

`A397549(n+1)/A000005(n+1)`
-/

namespace A007425.P18111590980760419323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397549 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A007425.P18111590980760419323

namespace A007425

/-- `A397549(n+1)/A000005(n+1)` -/
def P18111590980760419323.Spec : Prop :=
  ∀ n, P18111590980760419323.a n = (A007425 (n + 1) : ℚ)

end A007425

/-! ## A007425.P13331756565396782561

`∑{d}[n+1, A001227(#)*A001511((n+1)/#)]`
-/

namespace A007425.P13331756565396782561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A001511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007425.P13331756565396782561

namespace A007425

/-- `∑{d}[n+1, A001227(#)*A001511((n+1)/#)]` -/
def P13331756565396782561.Spec : Prop :=
  ∀ n, P13331756565396782561.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P3515568778976405104

`∑{d}[n+1, A007426(#)*A008683((n+1)/#)]`
-/

namespace A007425.P3515568778976405104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007425.P3515568778976405104

namespace A007425

/-- `∑{d}[n+1, A007426(#)*A008683((n+1)/#)]` -/
def P3515568778976405104.Spec : Prop :=
  ∀ n, P3515568778976405104.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P19897798126051137

`∑{d}[n+1, A007429(#)*A023900((n+1)/#)]`
-/

namespace A007425.P19897798126051137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007425.P19897798126051137

namespace A007425

/-- `∑{d}[n+1, A007429(#)*A023900((n+1)/#)]` -/
def P19897798126051137.Spec : Prop :=
  ∀ n, P19897798126051137.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P7212997971253305369

`∑{d}[n+1, A007428(#)*A034695((n+1)/#)]`
-/

namespace A007425.P7212997971253305369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007425.P7212997971253305369

namespace A007425

/-- `∑{d}[n+1, A007428(#)*A034695((n+1)/#)]` -/
def P7212997971253305369.Spec : Prop :=
  ∀ n, P7212997971253305369.a n = A007425 (n + 1)

end A007425

/-! ## A007425.P3078603550156602856

`∑{d}[n+1, A008836(#)*A035116((n+1)/#)]`
-/

namespace A007425.P3078603550156602856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A035116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007425.P3078603550156602856

namespace A007425

/-- `∑{d}[n+1, A008836(#)*A035116((n+1)/#)]` -/
def P3078603550156602856.Spec : Prop :=
  ∀ n, P3078603550156602856.a n = A007425 (n + 1)

end A007425

/-!
# A007426: d_4(n), or tau_4(n), the number of ordered factorizations of n as n = rstu.

The programs for A007426, the canonical program `A007426.P17531083173581795255` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007426 has offset 1).

The definition of A007426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007426.P17531083173581795255

`∏{e}[n+1, C(#+3, 3)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007426

/-- `∏{e}[n+1, C(#+3, 3)]` -/
def P17531083173581795255.Spec : Prop :=
  ∀ n, (P17531083173581795255.a n : ℤ) = A007426 (n + 1)

theorem P17531083173581795255.correct : P17531083173581795255.Spec := by
  intro n
  simp only [A007426, Nat.add_sub_cancel]

end A007426

/-! ## A007426.P15091696694575845482

`sqrt(A393214(n+1))`
-/

namespace A007426.P15091696694575845482
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A393214 (n + 1) : ℝ)

end

end A007426.P15091696694575845482

namespace A007426

/-- `sqrt(A393214(n+1))` -/
def P15091696694575845482.Spec : Prop :=
  ∀ n, P15091696694575845482.a n = (A007426 (n + 1) : ℝ)

end A007426

/-! ## A007426.P2770197832123124746

`∑{d}[n+1, A007425(#)]`
-/

namespace A007426.P2770197832123124746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d

end

end A007426.P2770197832123124746

namespace A007426

/-- `∑{d}[n+1, A007425(#)]` -/
def P2770197832123124746.Spec : Prop :=
  ∀ n, P2770197832123124746.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P15469030436630614672

`∑{d}[n+1, sqrt(A097988(#))]`
-/

namespace A007426.P15469030436630614672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A097988 d : ℝ)

end

end A007426.P15469030436630614672

namespace A007426

/-- `∑{d}[n+1, sqrt(A097988(#))]` -/
def P15469030436630614672.Spec : Prop :=
  ∀ n, P15469030436630614672.a n = (A007426 (n + 1) : ℝ)

end A007426

/-! ## A007426.P5907138944864201015

`∏{e}[n+1, sqrt(A001249(#))]`
-/

namespace A007426.P5907138944864201015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A001249 (Nat.factorization (f1 n) p) : ℝ)

end

end A007426.P5907138944864201015

namespace A007426

/-- `∏{e}[n+1, sqrt(A001249(#))]` -/
def P5907138944864201015.Spec : Prop :=
  ∀ n, P5907138944864201015.a n = (A007426 (n + 1) : ℝ)

end A007426

/-! ## A007426.P10273607071759187577

`∏{e}[n+1, A000292(#+1)]`
-/

namespace A007426.P10273607071759187577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000292 (Nat.factorization (f1 n) p + 1)

end

end A007426.P10273607071759187577

namespace A007426

/-- `∏{e}[n+1, A000292(#+1)]` -/
def P10273607071759187577.Spec : Prop :=
  ∀ n, P10273607071759187577.a n = A007426 (n + 1)

theorem P10273607071759187577.correct : P10273607071759187577.Spec := by
  intro n
  simp only [A007426, Nat.add_sub_cancel, A007426.P10273607071759187577.f1, A007426.P10273607071759187577.a, A007426.P17531083173581795255.f1, A007426.P17531083173581795255.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007426

/-! ## A007426.P3730285164258627903

`∏{e}[n+1, A058187(2*#)]`
-/

namespace A007426.P3730285164258627903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A058187 (2 * Nat.factorization (f1 n) p)

end

end A007426.P3730285164258627903

namespace A007426

/-- `∏{e}[n+1, A058187(2*#)]` -/
def P3730285164258627903.Spec : Prop :=
  ∀ n, P3730285164258627903.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P14176171606252703453

`2*A326417(n+1)-A318768(n+1)`
-/

namespace A007426.P14176171606252703453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326417 (n + 1) - A318768 (n + 1)

end

end A007426.P14176171606252703453

namespace A007426

/-- `2*A326417(n+1)-A318768(n+1)` -/
def P14176171606252703453.Spec : Prop :=
  ∀ n, P14176171606252703453.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P14085255560951372774

`∑{d}[n+1, A000005(#)*A000005((n+1)/#)]`
-/

namespace A007426.P14085255560951372774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P14085255560951372774

namespace A007426

/-- `∑{d}[n+1, A000005(#)*A000005((n+1)/#)]` -/
def P14085255560951372774.Spec : Prop :=
  ∀ n, P14085255560951372774.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P11403597411010225135

`∑{d}[n+1, A007430(#)*A023900((n+1)/#)]`
-/

namespace A007426.P11403597411010225135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P11403597411010225135

namespace A007426

/-- `∑{d}[n+1, A007430(#)*A023900((n+1)/#)]` -/
def P11403597411010225135.Spec : Prop :=
  ∀ n, P11403597411010225135.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P13554565489489031097

`∑{d}[n+1, A007427(#)*A034695((n+1)/#)]`
-/

namespace A007426.P13554565489489031097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P13554565489489031097

namespace A007426

/-- `∑{d}[n+1, A007427(#)*A034695((n+1)/#)]` -/
def P13554565489489031097.Spec : Prop :=
  ∀ n, P13554565489489031097.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P4539645809517037986

`∑{d}[n+1, A008683(#)*A061200((n+1)/#)]`
-/

namespace A007426.P4539645809517037986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P4539645809517037986

namespace A007426

/-- `∑{d}[n+1, A008683(#)*A061200((n+1)/#)]` -/
def P4539645809517037986.Spec : Prop :=
  ∀ n, P4539645809517037986.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P16403195607380742392

`∑{d}[n+1, A008836(#)*A062367((n+1)/#)]`
-/

namespace A007426.P16403195607380742392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A062367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P16403195607380742392

namespace A007426

/-- `∑{d}[n+1, A008836(#)*A062367((n+1)/#)]` -/
def P16403195607380742392.Spec : Prop :=
  ∀ n, P16403195607380742392.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P17398352239277810173

`∑{d}[n+1, A046951(#)*A048691((n+1)/#)]`
-/

namespace A007426.P17398352239277810173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P17398352239277810173

namespace A007426

/-- `∑{d}[n+1, A046951(#)*A048691((n+1)/#)]` -/
def P17398352239277810173.Spec : Prop :=
  ∀ n, P17398352239277810173.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P15848287802424539209

`∑{d}[n+1, A007428(#)*A111217((n+1)/#)]`
-/

namespace A007426.P15848287802424539209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P15848287802424539209

namespace A007426

/-- `∑{d}[n+1, A007428(#)*A111217((n+1)/#)]` -/
def P15848287802424539209.Spec : Prop :=
  ∀ n, P15848287802424539209.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P6715545453382731156

`∑{d}[n+1, A001227(#)*A129628((n+1)/#)]`
-/

namespace A007426.P6715545453382731156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A129628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P6715545453382731156

namespace A007426

/-- `∑{d}[n+1, A001227(#)*A129628((n+1)/#)]` -/
def P6715545453382731156.Spec : Prop :=
  ∀ n, P6715545453382731156.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P5799675792457387199

`∑{d}[n+1, A001511(#)*A133700((n+1)/#)]`
-/

namespace A007426.P5799675792457387199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P5799675792457387199

namespace A007426

/-- `∑{d}[n+1, A001511(#)*A133700((n+1)/#)]` -/
def P5799675792457387199.Spec : Prop :=
  ∀ n, P5799675792457387199.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P9449222794563607329

`∑{d}[n+1, A007429(#)*A130054((n+1)/#)]`
-/

namespace A007426.P9449222794563607329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P9449222794563607329

namespace A007426

/-- `∑{d}[n+1, A007429(#)*A130054((n+1)/#)]` -/
def P9449222794563607329.Spec : Prop :=
  ∀ n, P9449222794563607329.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P7401358774491481213

`∑{d}[n+1, A065704(#)*A078644((n+1)/#)]`
-/

namespace A007426.P7401358774491481213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A078644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P7401358774491481213

namespace A007426

/-- `∑{d}[n+1, A065704(#)*A078644((n+1)/#)]` -/
def P7401358774491481213.Spec : Prop :=
  ∀ n, P7401358774491481213.a n = A007426 (n + 1)

end A007426

/-! ## A007426.P5405987058228058228

`∑{d}[n+1, A034444(#)*A124315((n+1)/#)]`
-/

namespace A007426.P5405987058228058228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007426.P5405987058228058228

namespace A007426

/-- `∑{d}[n+1, A034444(#)*A124315((n+1)/#)]` -/
def P5405987058228058228.Spec : Prop :=
  ∀ n, P5405987058228058228.a n = A007426 (n + 1)

end A007426

/-!
# A007427: Moebius transform applied twice to sequence 1,0,0,0,....

The programs for A007427, the canonical program `A007427.P16363569186413612215` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007427 has offset 1).

The definition of A007427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007427.P16363569186413612215

`∑{d}[n+1, A008683(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007427

/-- `∑{d}[n+1, A008683(#)*A008683((n+1)/#)]` -/
def P16363569186413612215.Spec : Prop :=
  ∀ n, P16363569186413612215.a n = A007427 (n + 1)

theorem P16363569186413612215.correct : P16363569186413612215.Spec := by
  intro n
  simp only [A007427, Nat.add_sub_cancel]

end A007427

/-! ## A007427.P16346481250890679101

`∏{e}[n+1, (-C(2, #))^#]`
-/

namespace A007427.P16346481250890679101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p

end

end A007427.P16346481250890679101

namespace A007427

/-- `∏{e}[n+1, (-C(2, #))^#]` -/
def P16346481250890679101.Spec : Prop :=
  ∀ n, P16346481250890679101.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P16301049726457373805

`∑{d}[n+1, A007428(#)]`
-/

namespace A007427.P16301049726457373805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d

end

end A007427.P16301049726457373805

namespace A007427

/-- `∑{d}[n+1, A007428(#)]` -/
def P16301049726457373805.Spec : Prop :=
  ∀ n, P16301049726457373805.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P3443198881754410627

`A328722(n+1)/(n+1)`
-/

namespace A007427.P3443198881754410627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328722 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007427.P3443198881754410627

namespace A007427

/-- `A328722(n+1)/(n+1)` -/
def P3443198881754410627.Spec : Prop :=
  ∀ n, P3443198881754410627.a n = (A007427 (n + 1) : ℚ)

end A007427

/-! ## A007427.P3181173361496718778

`∏{e}[n+1, 2-A103889(C(2, #)+1)]`
-/

namespace A007427.P3181173361496718778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - A103889 (Nat.choose 2 (Nat.factorization (f1 n) p) + 1))

end

end A007427.P3181173361496718778

namespace A007427

/-- `∏{e}[n+1, 2-A103889(C(2, #)+1)]` -/
def P3181173361496718778.Spec : Prop :=
  ∀ n, P3181173361496718778.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P4691348065158137380

`A226177(A368886(n+1))`
-/

namespace A007427.P4691348065158137380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (A368886 (n + 1)).toNat

end

end A007427.P4691348065158137380

namespace A007427

/-- `A226177(A368886(n+1))` -/
def P4691348065158137380.Spec : Prop :=
  ∀ n, P4691348065158137380.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P8869580068051005394

`A226177(A390371(n+1))`
-/

namespace A007427.P8869580068051005394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (A390371 (n + 1)).toNat

end

end A007427.P8869580068051005394

namespace A007427

/-- `A226177(A390371(n+1))` -/
def P8869580068051005394.Spec : Prop :=
  ∀ n, P8869580068051005394.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P7063163758094373199

`A055076(n+1)*A363551(n+1)`
-/

namespace A007427.P7063163758094373199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1) * A363551 (n + 1)

end

end A007427.P7063163758094373199

namespace A007427

/-- `A055076(n+1)*A363551(n+1)` -/
def P7063163758094373199.Spec : Prop :=
  ∀ n, P7063163758094373199.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P607580603108221698

`A056671(n+1)*A363551(n+1)`
-/

namespace A007427.P607580603108221698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A363551 (n + 1)

end

end A007427.P607580603108221698

namespace A007427

/-- `A056671(n+1)*A363551(n+1)` -/
def P607580603108221698.Spec : Prop :=
  ∀ n, P607580603108221698.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P9420767464507327489

`A069780(n+1)*A363551(n+1)`
-/

namespace A007427.P9420767464507327489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069780 (n + 1) * A363551 (n + 1)

end

end A007427.P9420767464507327489

namespace A007427

/-- `A069780(n+1)*A363551(n+1)` -/
def P9420767464507327489.Spec : Prop :=
  ∀ n, P9420767464507327489.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P13855640028365984410

`A212793(n+1)*A354349(n+1)`
-/

namespace A007427.P13855640028365984410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A354349 (n + 1)

end

end A007427.P13855640028365984410

namespace A007427

/-- `A212793(n+1)*A354349(n+1)` -/
def P13855640028365984410.Spec : Prop :=
  ∀ n, P13855640028365984410.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P4842081611516980116

`A212793(n+1)*A354825(n+1)`
-/

namespace A007427.P4842081611516980116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) * A354825 (n + 1)

end

end A007427.P4842081611516980116

namespace A007427

/-- `A212793(n+1)*A354825(n+1)` -/
def P4842081611516980116.Spec : Prop :=
  ∀ n, P4842081611516980116.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P18197698260687505779

`A294931(n+1)*A363551(n+1)`
-/

namespace A007427.P18197698260687505779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294931 (n + 1) * A363551 (n + 1)

end

end A007427.P18197698260687505779

namespace A007427

/-- `A294931(n+1)*A363551(n+1)` -/
def P18197698260687505779.Spec : Prop :=
  ∀ n, P18197698260687505779.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P15210789177249884066

`A295878(n+1)*A363551(n+1)`
-/

namespace A007427.P15210789177249884066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1) * A363551 (n + 1)

end

end A007427.P15210789177249884066

namespace A007427

/-- `A295878(n+1)*A363551(n+1)` -/
def P15210789177249884066.Spec : Prop :=
  ∀ n, P15210789177249884066.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P8932096592504667830

`A363551(n+1)*A363825(n+1)`
-/

namespace A007427.P8932096592504667830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363551 (n + 1) * A363825 (n + 1)

end

end A007427.P8932096592504667830

namespace A007427

/-- `A363551(n+1)*A363825(n+1)` -/
def P8932096592504667830.Spec : Prop :=
  ∀ n, P8932096592504667830.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P12152471280610562771

`A363551(n+1)*A365402(n+1)`
-/

namespace A007427.P12152471280610562771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363551 (n + 1) * A365402 (n + 1)

end

end A007427.P12152471280610562771

namespace A007427

/-- `A363551(n+1)*A365402(n+1)` -/
def P12152471280610562771.Spec : Prop :=
  ∀ n, P12152471280610562771.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P5080358846233724875

`A363551(n+1)*A366308(n+1)`
-/

namespace A007427.P5080358846233724875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363551 (n + 1) * A366308 (n + 1)

end

end A007427.P5080358846233724875

namespace A007427

/-- `A363551(n+1)*A366308(n+1)` -/
def P5080358846233724875.Spec : Prop :=
  ∀ n, P5080358846233724875.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P12275480456389349933

`∑{d}[n+1, A007432(#)*A023900((n+1)/#)]`
-/

namespace A007427.P12275480456389349933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007427.P12275480456389349933

namespace A007427

/-- `∑{d}[n+1, A007432(#)*A023900((n+1)/#)]` -/
def P12275480456389349933.Spec : Prop :=
  ∀ n, P12275480456389349933.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P10452991753249609976

`∑{d}[n+1, A000010(#)*A046692((n+1)/#)]`
-/

namespace A007427.P10452991753249609976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007427.P10452991753249609976

namespace A007427

/-- `∑{d}[n+1, A000010(#)*A046692((n+1)/#)]` -/
def P10452991753249609976.Spec : Prop :=
  ∀ n, P10452991753249609976.a n = A007427 (n + 1)

end A007427

/-! ## A007427.P16720196430080309936

`∑{d}[n+1, A007434(#)*A053822((n+1)/#)]`
-/

namespace A007427.P16720196430080309936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007427.P16720196430080309936

namespace A007427

/-- `∑{d}[n+1, A007434(#)*A053822((n+1)/#)]` -/
def P16720196430080309936.Spec : Prop :=
  ∀ n, P16720196430080309936.a n = A007427 (n + 1)

end A007427

/-!
# A007428: Moebius transform applied thrice to sequence 1,0,0,0,....

The programs for A007428, the canonical program `A007428.P12532017655611739201` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007428 has offset 1).

The definition of A007428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007428.P12532017655611739201

`∑{d}[n+1, A247343(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007428

/-- `∑{d}[n+1, A247343(#)]` -/
def P12532017655611739201.Spec : Prop :=
  ∀ n, P12532017655611739201.a n = A007428 (n + 1)

theorem P12532017655611739201.correct : P12532017655611739201.Spec := by
  intro n
  simp only [A007428, Nat.add_sub_cancel]

end A007428

/-! ## A007428.P10657269392276842433

`A363552(n+1)*A386278(n+1)`
-/

namespace A007428.P10657269392276842433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363552 (n + 1) * A386278 (n + 1)

end

end A007428.P10657269392276842433

namespace A007428

/-- `A363552(n+1)*A386278(n+1)` -/
def P10657269392276842433.Spec : Prop :=
  ∀ n, P10657269392276842433.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P14221255615356087625

`∑{d}[n+1, A007427(#)*A008683((n+1)/#)]`
-/

namespace A007428.P14221255615356087625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P14221255615356087625

namespace A007428

/-- `∑{d}[n+1, A007427(#)*A008683((n+1)/#)]` -/
def P14221255615356087625.Spec : Prop :=
  ∀ n, P14221255615356087625.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P6092889717406740125

`∑{d}[n+1, A007431(#)*A046692((n+1)/#)]`
-/

namespace A007428.P6092889717406740125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P6092889717406740125

namespace A007428

/-- `∑{d}[n+1, A007431(#)*A046692((n+1)/#)]` -/
def P6092889717406740125.Spec : Prop :=
  ∀ n, P6092889717406740125.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P10041500713879051411

`∑{d}[n+1, A007432(#)*A055615((n+1)/#)]`
-/

namespace A007428.P10041500713879051411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P10041500713879051411

namespace A007428

/-- `∑{d}[n+1, A007432(#)*A055615((n+1)/#)]` -/
def P10041500713879051411.Spec : Prop :=
  ∀ n, P10041500713879051411.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P11400786057665228094

`∑{d}[n+1, A000005(#)*A341831((n+1)/#)]`
-/

namespace A007428.P11400786057665228094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P11400786057665228094

namespace A007428

/-- `∑{d}[n+1, A000005(#)*A341831((n+1)/#)]` -/
def P11400786057665228094.Spec : Prop :=
  ∀ n, P11400786057665228094.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P757107759864926280

`∑{d}[n+1, A007425(#)*A341832((n+1)/#)]`
-/

namespace A007428.P757107759864926280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P757107759864926280

namespace A007428

/-- `∑{d}[n+1, A007425(#)*A341832((n+1)/#)]` -/
def P757107759864926280.Spec : Prop :=
  ∀ n, P757107759864926280.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P11421086163242709053

`∑{d}[n+1, A007426(#)*A341833((n+1)/#)]`
-/

namespace A007428.P11421086163242709053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A341833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P11421086163242709053

namespace A007428

/-- `∑{d}[n+1, A007426(#)*A341833((n+1)/#)]` -/
def P11421086163242709053.Spec : Prop :=
  ∀ n, P11421086163242709053.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P9783242917540187715

`∑{d}[n+1, A029935(#)*A327960((n+1)/#)]`
-/

namespace A007428.P9783242917540187715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P9783242917540187715

namespace A007428

/-- `∑{d}[n+1, A029935(#)*A327960((n+1)/#)]` -/
def P9783242917540187715.Spec : Prop :=
  ∀ n, P9783242917540187715.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P12352278123042868249

`∑{d}[n+1, A053822(#)*A321322((n+1)/#)]`
-/

namespace A007428.P12352278123042868249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P12352278123042868249

namespace A007428

/-- `∑{d}[n+1, A053822(#)*A321322((n+1)/#)]` -/
def P12352278123042868249.Spec : Prop :=
  ∀ n, P12352278123042868249.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P8941759986552077426

`∑{d}[n+1, A034695(#)*A341835((n+1)/#)]`
-/

namespace A007428.P8941759986552077426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034695 d * A341835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P8941759986552077426

namespace A007428

/-- `∑{d}[n+1, A034695(#)*A341835((n+1)/#)]` -/
def P8941759986552077426.Spec : Prop :=
  ∀ n, P8941759986552077426.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P12972950083155217029

`∑{d}[n+1, A061200(#)*A341834((n+1)/#)]`
-/

namespace A007428.P12972950083155217029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P12972950083155217029

namespace A007428

/-- `∑{d}[n+1, A061200(#)*A341834((n+1)/#)]` -/
def P12972950083155217029.Spec : Prop :=
  ∀ n, P12972950083155217029.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P14421416748318313906

`∑{d}[n+1, A092673(#)*A327276((n+1)/#)]`
-/

namespace A007428.P14421416748318313906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P14421416748318313906

namespace A007428

/-- `∑{d}[n+1, A092673(#)*A327276((n+1)/#)]` -/
def P14421416748318313906.Spec : Prop :=
  ∀ n, P14421416748318313906.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P11971162671729502497

`∑{d}[n+1, A074722(#)*A347090((n+1)/#)]`
-/

namespace A007428.P11971162671729502497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P11971162671729502497

namespace A007428

/-- `∑{d}[n+1, A074722(#)*A347090((n+1)/#)]` -/
def P11971162671729502497.Spec : Prop :=
  ∀ n, P11971162671729502497.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P11758875559010215157

`∑{d}[n+1, A111217(#)*A341836((n+1)/#)]`
-/

namespace A007428.P11758875559010215157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111217 d * A341836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P11758875559010215157

namespace A007428

/-- `∑{d}[n+1, A111217(#)*A341836((n+1)/#)]` -/
def P11758875559010215157.Spec : Prop :=
  ∀ n, P11758875559010215157.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P17478984822394368075

`∑{d}[n+1, A158522(#)*A307445((n+1)/#)]`
-/

namespace A007428.P17478984822394368075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P17478984822394368075

namespace A007428

/-- `∑{d}[n+1, A158522(#)*A307445((n+1)/#)]` -/
def P17478984822394368075.Spec : Prop :=
  ∀ n, P17478984822394368075.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P8100630313718558547

`∑{d}[n+1, A143275(#)*A328722((n+1)/#)]`
-/

namespace A007428.P8100630313718558547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P8100630313718558547

namespace A007428

/-- `∑{d}[n+1, A143275(#)*A328722((n+1)/#)]` -/
def P8100630313718558547.Spec : Prop :=
  ∀ n, P8100630313718558547.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P17885416639902098877

`∑{d}[n+1, A271102(#)*A326415((n+1)/#)]`
-/

namespace A007428.P17885416639902098877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P17885416639902098877

namespace A007428

/-- `∑{d}[n+1, A271102(#)*A326415((n+1)/#)]` -/
def P17885416639902098877.Spec : Prop :=
  ∀ n, P17885416639902098877.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P15416024991673658923

`∑{d}[n+1, A328254(#)*A341772((n+1)/#)]`
-/

namespace A007428.P15416024991673658923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328254 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P15416024991673658923

namespace A007428

/-- `∑{d}[n+1, A328254(#)*A341772((n+1)/#)]` -/
def P15416024991673658923.Spec : Prop :=
  ∀ n, P15416024991673658923.a n = A007428 (n + 1)

end A007428

/-! ## A007428.P14541868172481715734

`∑{d}[n+1, A327274(#)*A361019((n+1)/#)]`
-/

namespace A007428.P14541868172481715734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007428.P14541868172481715734

namespace A007428

/-- `∑{d}[n+1, A327274(#)*A361019((n+1)/#)]` -/
def P14541868172481715734.Spec : Prop :=
  ∀ n, P14541868172481715734.a n = A007428 (n + 1)

end A007428

/-!
# A007429: Inverse Moebius transform applied twice to natural numbers.

The programs for A007429, the canonical program `A007429.P9220875293128592919` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007429 has offset 1).

The definition of A007429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007429.P9220875293128592919

`∑{d}[n+1, A000203(#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007429

/-- `∑{d}[n+1, A000203(#)]` -/
def P9220875293128592919.Spec : Prop :=
  ∀ n, P9220875293128592919.a n = A007429 (n + 1)

theorem P9220875293128592919.correct : P9220875293128592919.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel]

end A007429

/-! ## A007429.P8885196348577214505

`(n+1)*∑{d}[n+1, A000005(#)/#]`
-/

namespace A007429.P8885196348577214505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A000005 d : ℚ) / (d : ℚ))

end

end A007429.P8885196348577214505

namespace A007429

/-- `(n+1)*∑{d}[n+1, A000005(#)/#]` -/
def P8885196348577214505.Spec : Prop :=
  ∀ n, P8885196348577214505.a n = (A007429 (n + 1) : ℚ)

end A007429

/-! ## A007429.P18150869833599521888

`(n+1)*A276736(n+1)/A276737(n+1)`
-/

namespace A007429.P18150869833599521888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A276736 (n + 1) : ℚ) / (A276737 (n + 1) : ℚ))

end

end A007429.P18150869833599521888

namespace A007429

/-- `(n+1)*A276736(n+1)/A276737(n+1)` -/
def P18150869833599521888.Spec : Prop :=
  ∀ n, P18150869833599521888.a n = (A007429 (n + 1) : ℚ)

end A007429

/-! ## A007429.P7036897006877984337

`∑{d}[n+1, sqrt(A072861(#))]`
-/

namespace A007429.P7036897006877984337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A072861 d : ℝ)

end

end A007429.P7036897006877984337

namespace A007429

/-- `∑{d}[n+1, sqrt(A072861(#))]` -/
def P7036897006877984337.Spec : Prop :=
  ∀ n, P7036897006877984337.a n = (A007429 (n + 1) : ℝ)

end A007429

/-! ## A007429.P13859287075745681988

`A211780(n+1)+1+n`
-/

namespace A007429.P13859287075745681988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211780 (n + 1) + 1 + (n : ℤ)

end

end A007429.P13859287075745681988

namespace A007429

/-- `A211780(n+1)+1+n` -/
def P13859287075745681988.Spec : Prop :=
  ∀ n, P13859287075745681988.a n = A007429 (n + 1)

theorem P13859287075745681988.correct : P13859287075745681988.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P13859287075745681988.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A211780, A211780.P8877674507974761173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P13647714347176667945

`∑{d}[n+1, A088580(#)-1]`
-/

namespace A007429.P13647714347176667945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A088580 d - 1)

end

end A007429.P13647714347176667945

namespace A007429

/-- `∑{d}[n+1, A088580(#)-1]` -/
def P13647714347176667945.Spec : Prop :=
  ∀ n, P13647714347176667945.a n = A007429 (n + 1)

theorem P13647714347176667945.correct : P13647714347176667945.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P13647714347176667945.f1, A007429.P13647714347176667945.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P3226404755406933578

`∑{d}[n+1, A001065(#)+#]`
-/

namespace A007429.P3226404755406933578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001065 d + (d : ℤ))

end

end A007429.P3226404755406933578

namespace A007429

/-- `∑{d}[n+1, A001065(#)+#]` -/
def P3226404755406933578.Spec : Prop :=
  ∀ n, P3226404755406933578.a n = A007429 (n + 1)

end A007429

/-! ## A007429.P138036577542059928

`A211779(n+1)+∑{d}[n+1, #]`
-/

namespace A007429.P138036577542059928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A007429.P138036577542059928

namespace A007429

/-- `A211779(n+1)+∑{d}[n+1, #]` -/
def P138036577542059928.Spec : Prop :=
  ∀ n, P138036577542059928.a n = A007429 (n + 1)

theorem P138036577542059928.correct : P138036577542059928.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P138036577542059928.f1, A007429.P138036577542059928.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A211779, A211779.P11493622072280912374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P12063380116168097696

`∑{d}[n+1, (n+1)/#*A000005(#)]`
-/

namespace A007429.P12063380116168097696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A000005 d : ℚ)

end

end A007429.P12063380116168097696

namespace A007429

/-- `∑{d}[n+1, (n+1)/#*A000005(#)]` -/
def P12063380116168097696.Spec : Prop :=
  ∀ n, P12063380116168097696.a n = (A007429 (n + 1) : ℚ)

end A007429

/-! ## A007429.P6082362778769554000

`A211779(n+1)+Δ[A160664(n)]`
-/

namespace A007429.P6082362778769554000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007429.P6082362778769554000

namespace A007429

/-- `A211779(n+1)+Δ[A160664(n)]` -/
def P6082362778769554000.Spec : Prop :=
  ∀ n, P6082362778769554000.a n = A007429 (n + 1)

end A007429

/-! ## A007429.P3900952194064126118

`A069913(n+1)+A007425(n+1)`
-/

namespace A007429.P3900952194064126118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069913 (n + 1) + A007425 (n + 1)

end

end A007429.P3900952194064126118

namespace A007429

/-- `A069913(n+1)+A007425(n+1)` -/
def P3900952194064126118.Spec : Prop :=
  ∀ n, P3900952194064126118.a n = A007429 (n + 1)

end A007429

/-! ## A007429.P13524173364766176085

`A211779(n+1)+A000203(n+1)`
-/

namespace A007429.P13524173364766176085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A000203 (n + 1)

end

end A007429.P13524173364766176085

namespace A007429

/-- `A211779(n+1)+A000203(n+1)` -/
def P13524173364766176085.Spec : Prop :=
  ∀ n, P13524173364766176085.a n = A007429 (n + 1)

theorem P13524173364766176085.correct : P13524173364766176085.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P13524173364766176085.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A211779, A211779.P11493622072280912374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P17382012874868673147

`A024916(n+1)-A076663(n+1)`
-/

namespace A007429.P17382012874868673147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A076663 (n + 1)

end

end A007429.P17382012874868673147

namespace A007429

/-- `A024916(n+1)-A076663(n+1)` -/
def P17382012874868673147.Spec : Prop :=
  ∀ n, P17382012874868673147.a n = A007429 (n + 1)

theorem P17382012874868673147.correct : P17382012874868673147.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P17382012874868673147.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024916, A024916.P288223747059110690.f1, A024916.P288223747059110690.a, A076663, A076663.P9173981958373011071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P17755342176384678351

`A060640(n+1)-A069914(n+1)`
-/

namespace A007429.P17755342176384678351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060640 (n + 1) - A069914 (n + 1)

end

end A007429.P17755342176384678351

namespace A007429

/-- `A060640(n+1)-A069914(n+1)` -/
def P17755342176384678351.Spec : Prop :=
  ∀ n, P17755342176384678351.a n = A007429 (n + 1)

end A007429

/-! ## A007429.P8820788112602154274

`A074400(n+1)-A296075(n+1)`
-/

namespace A007429.P8820788112602154274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A296075 (n + 1)

end

end A007429.P8820788112602154274

namespace A007429

/-- `A074400(n+1)-A296075(n+1)` -/
def P8820788112602154274.Spec : Prop :=
  ∀ n, P8820788112602154274.a n = A007429 (n + 1)

theorem P8820788112602154274.correct : P8820788112602154274.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P8820788112602154274.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A296075, A296075.P11175105171194449082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P4327910385845126037

`A263827(n+1)-A288417(n+1)`
-/

namespace A007429.P4327910385845126037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263827 (n + 1) - A288417 (n + 1)

end

end A007429.P4327910385845126037

namespace A007429

/-- `A263827(n+1)-A288417(n+1)` -/
def P4327910385845126037.Spec : Prop :=
  ∀ n, P4327910385845126037.a n = A007429 (n + 1)

end A007429

/-! ## A007429.P4697114152428799260

`A318446(n+1)-A318448(n+1)`
-/

namespace A007429.P4697114152428799260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - A318448 (n + 1)

end

end A007429.P4697114152428799260

namespace A007429

/-- `A318446(n+1)-A318448(n+1)` -/
def P4697114152428799260.Spec : Prop :=
  ∀ n, P4697114152428799260.a n = A007429 (n + 1)

end A007429

/-! ## A007429.P4906020039991737682

`A296075(n+1)+2*A211779(n+1)`
-/

namespace A007429.P4906020039991737682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) + 2 * A211779 (n + 1)

end

end A007429.P4906020039991737682

namespace A007429

/-- `A296075(n+1)+2*A211779(n+1)` -/
def P4906020039991737682.Spec : Prop :=
  ∀ n, P4906020039991737682.a n = A007429 (n + 1)

theorem P4906020039991737682.correct : P4906020039991737682.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P4906020039991737682.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A211779, A211779.P11493622072280912374.a, A296075, A296075.P11175105171194449082.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P8031710599505254880

`2*A000203(n+1)-A296075(n+1)`
-/

namespace A007429.P8031710599505254880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A296075 (n + 1)

end

end A007429.P8031710599505254880

namespace A007429

/-- `2*A000203(n+1)-A296075(n+1)` -/
def P8031710599505254880.Spec : Prop :=
  ∀ n, P8031710599505254880.a n = A007429 (n + 1)

theorem P8031710599505254880.correct : P8031710599505254880.Spec := by
  intro n
  simp only [A007429, Nat.add_sub_cancel, A007429.P8031710599505254880.a, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A296075, A296075.P11175105171194449082.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007429

/-! ## A007429.P10012582006352684365

`∑{d}[n+1, A001511(#)*A002131((n+1)/#)]`
-/

namespace A007429.P10012582006352684365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A002131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007429.P10012582006352684365

namespace A007429

/-- `∑{d}[n+1, A001511(#)*A002131((n+1)/#)]` -/
def P10012582006352684365.Spec : Prop :=
  ∀ n, P10012582006352684365.a n = A007429 (n + 1)

end A007429

/-!
# A007430: Inverse Moebius transform applied thrice to natural numbers.

The programs for A007430, the canonical program `A007430.P16019433643120249359` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007430 has offset 1).

The definition of A007430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007430.P16019433643120249359

`∑{d}[n+1, A000203(#)*A000005((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007430

/-- `∑{d}[n+1, A000203(#)*A000005((n+1)/#)]` -/
def P16019433643120249359.Spec : Prop :=
  ∀ n, P16019433643120249359.a n = A007430 (n + 1)

theorem P16019433643120249359.correct : P16019433643120249359.Spec := by
  intro n
  simp only [A007430, Nat.add_sub_cancel]

end A007430

/-! ## A007430.P555181855500848548

`∑{d}[n+1, A007429(#)]`
-/

namespace A007430.P555181855500848548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d

end

end A007430.P555181855500848548

namespace A007430

/-- `∑{d}[n+1, A007429(#)]` -/
def P555181855500848548.Spec : Prop :=
  ∀ n, P555181855500848548.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P15855396530716069530

`∑{d}[n+1, #*A007425((n+1)/#)]`
-/

namespace A007430.P15855396530716069530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P15855396530716069530

namespace A007430

/-- `∑{d}[n+1, #*A007425((n+1)/#)]` -/
def P15855396530716069530.Spec : Prop :=
  ∀ n, P15855396530716069530.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P2217043807067062691

`∑{d}[n+1, A000005(#)*A000203((n+1)/#)]`
-/

namespace A007430.P2217043807067062691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P2217043807067062691

namespace A007430

/-- `∑{d}[n+1, A000005(#)*A000203((n+1)/#)]` -/
def P2217043807067062691.Spec : Prop :=
  ∀ n, P2217043807067062691.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P14522687354282278423

`∑{d}[n+1, A000010(#)*A007426((n+1)/#)]`
-/

namespace A007430.P14522687354282278423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P14522687354282278423

namespace A007430

/-- `∑{d}[n+1, A000010(#)*A007426((n+1)/#)]` -/
def P14522687354282278423.Spec : Prop :=
  ∀ n, P14522687354282278423.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P18298135485078458474

`∑{d}[n+1, A007432(#)*A034695((n+1)/#)]`
-/

namespace A007430.P18298135485078458474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P18298135485078458474

namespace A007430

/-- `∑{d}[n+1, A007432(#)*A034695((n+1)/#)]` -/
def P18298135485078458474.Spec : Prop :=
  ∀ n, P18298135485078458474.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P12718572349078825746

`∑{d}[n+1, A023900(#)*A034761((n+1)/#)]`
-/

namespace A007430.P12718572349078825746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034761 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P12718572349078825746

namespace A007430

/-- `∑{d}[n+1, A023900(#)*A034761((n+1)/#)]` -/
def P12718572349078825746.Spec : Prop :=
  ∀ n, P12718572349078825746.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P1090771520506369963

`∑{d}[n+1, A007431(#)*A061200((n+1)/#)]`
-/

namespace A007430.P1090771520506369963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P1090771520506369963

namespace A007430

/-- `∑{d}[n+1, A007431(#)*A061200((n+1)/#)]` -/
def P1090771520506369963.Spec : Prop :=
  ∀ n, P1090771520506369963.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P3983195553860013809

`∑{d}[n+1, A010052(#)*A060724((n+1)/#)]`
-/

namespace A007430.P3983195553860013809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P3983195553860013809

namespace A007430

/-- `∑{d}[n+1, A010052(#)*A060724((n+1)/#)]` -/
def P3983195553860013809.Spec : Prop :=
  ∀ n, P3983195553860013809.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P3610086683656713499

`∑{d}[n+1, A008836(#)*A062369((n+1)/#)]`
-/

namespace A007430.P3610086683656713499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A062369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P3610086683656713499

namespace A007430

/-- `∑{d}[n+1, A008836(#)*A062369((n+1)/#)]` -/
def P3610086683656713499.Spec : Prop :=
  ∀ n, P3610086683656713499.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P15152314206131083578

`∑{d}[n+1, A046951(#)*A060648((n+1)/#)]`
-/

namespace A007430.P15152314206131083578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P15152314206131083578

namespace A007430

/-- `∑{d}[n+1, A046951(#)*A060648((n+1)/#)]` -/
def P15152314206131083578.Spec : Prop :=
  ∀ n, P15152314206131083578.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P14141233191410982704

`∑{d}[n+1, A048691(#)*A076752((n+1)/#)]`
-/

namespace A007430.P14141233191410982704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P14141233191410982704

namespace A007430

/-- `∑{d}[n+1, A048691(#)*A076752((n+1)/#)]` -/
def P14141233191410982704.Spec : Prop :=
  ∀ n, P14141233191410982704.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P24742765692669112

`∑{d}[n+1, A001615(#)*A124315((n+1)/#)]`
-/

namespace A007430.P24742765692669112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P24742765692669112

namespace A007430

/-- `∑{d}[n+1, A001615(#)*A124315((n+1)/#)]` -/
def P24742765692669112.Spec : Prop :=
  ∀ n, P24742765692669112.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P9657304853133156745

`∑{d}[n+1, A002131(#)*A129628((n+1)/#)]`
-/

namespace A007430.P9657304853133156745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A129628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P9657304853133156745

namespace A007430

/-- `∑{d}[n+1, A002131(#)*A129628((n+1)/#)]` -/
def P9657304853133156745.Spec : Prop :=
  ∀ n, P9657304853133156745.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P17937753352583217930

`∑{d}[n+1, A062367(#)*A074722((n+1)/#)]`
-/

namespace A007430.P17937753352583217930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P17937753352583217930

namespace A007430

/-- `∑{d}[n+1, A062367(#)*A074722((n+1)/#)]` -/
def P17937753352583217930.Spec : Prop :=
  ∀ n, P17937753352583217930.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P3028988186442791237

`∑{d}[n+1, A068976(#)*A069088((n+1)/#)]`
-/

namespace A007430.P3028988186442791237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068976 d * A069088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P3028988186442791237

namespace A007430

/-- `∑{d}[n+1, A068976(#)*A069088((n+1)/#)]` -/
def P3028988186442791237.Spec : Prop :=
  ∀ n, P3028988186442791237.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P1281242158028365676

`∑{d}[n+1, A034448(#)*A124316((n+1)/#)]`
-/

namespace A007430.P1281242158028365676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A124316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P1281242158028365676

namespace A007430

/-- `∑{d}[n+1, A034448(#)*A124316((n+1)/#)]` -/
def P1281242158028365676.Spec : Prop :=
  ∀ n, P1281242158028365676.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P2978745325210679457

`∑{d}[n+1, A055155(#)*A332619((n+1)/#)]`
-/

namespace A007430.P2978745325210679457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055155 d * A332619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P2978745325210679457

namespace A007430

/-- `∑{d}[n+1, A055155(#)*A332619((n+1)/#)]` -/
def P2978745325210679457.Spec : Prop :=
  ∀ n, P2978745325210679457.a n = A007430 (n + 1)

end A007430

/-! ## A007430.P3504663243044794001

`∑{d}[n+1, A162728(#)*A318768((n+1)/#)]`
-/

namespace A007430.P3504663243044794001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A318768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007430.P3504663243044794001

namespace A007430

/-- `∑{d}[n+1, A162728(#)*A318768((n+1)/#)]` -/
def P3504663243044794001.Spec : Prop :=
  ∀ n, P3504663243044794001.a n = A007430 (n + 1)

end A007430

/-!
# A007431: a(n) = Sum_{d|n} phi(d)*mu(n/d).

The programs for A007431, the canonical program `A007431.P16508403139497409065` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007431 has offset 0).

The definition of A007431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, A000010(#)*A008683(n/#)]` (program `A007431.P16508403139497409065`, by `A007431.P16508403139497409065.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007431.P16508403139497409065

`∑{d}[n, A000010(#)*A008683(n/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007431

/-- `∑{d}[n, A000010(#)*A008683(n/#)]` -/
def P16508403139497409065.Spec : Prop :=
  ∀ n, P16508403139497409065.a n = A007431 n

theorem P16508403139497409065.correct : P16508403139497409065.Spec := by
  intro n
  simp only [A007431]

end A007431

/-! ## A007431.P3983692014236957522

`∑{#}[n-1, A008683(gcd(n, #))]`
-/

namespace A007431.P3983692014236957522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A008683 (Nat.gcd n k)

end

end A007431.P3983692014236957522

namespace A007431

/-- `∑{#}[n-1, A008683(gcd(n, #))]` -/
def P3983692014236957522.Spec : Prop :=
  ∀ n, P3983692014236957522.a n = A007431 n

end A007431

/-! ## A007431.P16849793818733668455

`∑{d}[n, A007432(#)]`
-/

namespace A007431.P16849793818733668455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d

end

end A007431.P16849793818733668455

namespace A007431

/-- `∑{d}[n, A007432(#)]` -/
def P16849793818733668455.Spec : Prop :=
  ∀ n, P16849793818733668455.a n = A007431 n

end A007431

/-! ## A007431.P8104878445419408267

`∑{d}[n, n/#*A007427(#)]`
-/

namespace A007431.P8104878445419408267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) / (d : ℚ) * (A007427 d : ℚ)

end

end A007431.P8104878445419408267

namespace A007431

/-- `∑{d}[n, n/#*A007427(#)]` -/
def P8104878445419408267.Spec : Prop :=
  ∀ n, P8104878445419408267.a n = (A007431 n : ℚ)

end A007431

/-! ## A007431.P4220128885272976950

`∑{d}[n, A008683(n/#)*A000010(#)]`
-/

namespace A007431.P4220128885272976950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat * A000010 d

end

end A007431.P4220128885272976950

namespace A007431

/-- `∑{d}[n, A008683(n/#)*A000010(#)]` -/
def P4220128885272976950.Spec : Prop :=
  ∀ n, P4220128885272976950.a n = A007431 n

end A007431

/-! ## A007431.P9128729008642543713

`A225530(n)-A062790(round(acot(n)+n))`
-/

namespace A007431.P9128729008642543713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n - A062790 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A007431.P9128729008642543713

namespace A007431

/-- `A225530(n)-A062790(round(acot(n)+n))` -/
def P9128729008642543713.Spec : Prop :=
  ∀ n, P9128729008642543713.a n = A007431 n

end A007431

/-! ## A007431.P14977289616885442232

`A225530(n)-A062790(A233583(n+1))`
-/

namespace A007431.P14977289616885442232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n - A062790 (A233583 (n + 1)).toNat

end

end A007431.P14977289616885442232

namespace A007431

/-- `A225530(n)-A062790(A233583(n+1))` -/
def P14977289616885442232.Spec : Prop :=
  ∀ n, P14977289616885442232.a n = A007431 n

end A007431

/-! ## A007431.P6405209761134538033

`A143276(A000124(abs(1-n)))`
-/

namespace A007431.P6405209761134538033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143276 (A000124 |1 - (n : ℤ)|.toNat).toNat

end

end A007431.P6405209761134538033

namespace A007431

/-- `A143276(A000124(abs(1-n)))` -/
def P6405209761134538033.Spec : Prop :=
  ∀ n, P6405209761134538033.a n = A007431 n

end A007431

/-!
# A007432: Moebius transform applied thrice to natural numbers.

The programs for A007432, the canonical program `A007432.P16663120023730915232` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007432 has offset 1).

The definition of A007432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007432.P16663120023730915232

`∑{d}[n+1, #*A007428((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007432

/-- `∑{d}[n+1, #*A007428((n+1)/#)]` -/
def P16663120023730915232.Spec : Prop :=
  ∀ n, P16663120023730915232.a n = A007432 (n + 1)

theorem P16663120023730915232.correct : P16663120023730915232.Spec := by
  intro n
  simp only [A007432, Nat.add_sub_cancel]

end A007432

/-! ## A007432.P5778296534049292539

`∑{d}[n+1, A000010(#)*A007427((n+1)/#)]`
-/

namespace A007432.P5778296534049292539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P5778296534049292539

namespace A007432

/-- `∑{d}[n+1, A000010(#)*A007427((n+1)/#)]` -/
def P5778296534049292539.Spec : Prop :=
  ∀ n, P5778296534049292539.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P1967472215798781809

`∑{d}[n+1, A008683(#)*A007431((n+1)/#)]`
-/

namespace A007432.P1967472215798781809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P1967472215798781809

namespace A007432

/-- `∑{d}[n+1, A008683(#)*A007431((n+1)/#)]` -/
def P1967472215798781809.Spec : Prop :=
  ∀ n, P1967472215798781809.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P7736816376780323944

`∑{d}[n+1, A029935(#)*A046692((n+1)/#)]`
-/

namespace A007432.P7736816376780323944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P7736816376780323944

namespace A007432

/-- `∑{d}[n+1, A029935(#)*A046692((n+1)/#)]` -/
def P7736816376780323944.Spec : Prop :=
  ∀ n, P7736816376780323944.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P9798095876041608064

`∑{d}[n+1, A055615(#)*A143275((n+1)/#)]`
-/

namespace A007432.P9798095876041608064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P9798095876041608064

namespace A007432

/-- `∑{d}[n+1, A055615(#)*A143275((n+1)/#)]` -/
def P9798095876041608064.Spec : Prop :=
  ∀ n, P9798095876041608064.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P8942044997704477320

`∑{d}[n+1, A000203(#)*A247343((n+1)/#)]`
-/

namespace A007432.P8942044997704477320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P8942044997704477320

namespace A007432

/-- `∑{d}[n+1, A000203(#)*A247343((n+1)/#)]` -/
def P8942044997704477320.Spec : Prop :=
  ∀ n, P8942044997704477320.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P1291702626324098838

`∑{d}[n+1, A130107(#)*A158522((n+1)/#)]`
-/

namespace A007432.P1291702626324098838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P1291702626324098838

namespace A007432

/-- `∑{d}[n+1, A130107(#)*A158522((n+1)/#)]` -/
def P1291702626324098838.Spec : Prop :=
  ∀ n, P1291702626324098838.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P16802883231644658135

`∑{d}[n+1, A007429(#)*A341831((n+1)/#)]`
-/

namespace A007432.P16802883231644658135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P16802883231644658135

namespace A007432

/-- `∑{d}[n+1, A007429(#)*A341831((n+1)/#)]` -/
def P16802883231644658135.Spec : Prop :=
  ∀ n, P16802883231644658135.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P17795817105016433350

`∑{d}[n+1, A007430(#)*A341832((n+1)/#)]`
-/

namespace A007432.P17795817105016433350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P17795817105016433350

namespace A007432

/-- `∑{d}[n+1, A007430(#)*A341832((n+1)/#)]` -/
def P17795817105016433350.Spec : Prop :=
  ∀ n, P17795817105016433350.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P7681545238544021251

`∑{d}[n+1, A074722(#)*A307445((n+1)/#)]`
-/

namespace A007432.P7681545238544021251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P7681545238544021251

namespace A007432

/-- `∑{d}[n+1, A074722(#)*A307445((n+1)/#)]` -/
def P7681545238544021251.Spec : Prop :=
  ∀ n, P7681545238544021251.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P8542280202658293550

`∑{d}[n+1, A063659(#)*A326415((n+1)/#)]`
-/

namespace A007432.P8542280202658293550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P8542280202658293550

namespace A007432

/-- `∑{d}[n+1, A063659(#)*A326415((n+1)/#)]` -/
def P8542280202658293550.Spec : Prop :=
  ∀ n, P8542280202658293550.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P12235793387072710792

`∑{d}[n+1, A053822(#)*A341772((n+1)/#)]`
-/

namespace A007432.P12235793387072710792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P12235793387072710792

namespace A007432

/-- `∑{d}[n+1, A053822(#)*A341772((n+1)/#)]` -/
def P12235793387072710792.Spec : Prop :=
  ∀ n, P12235793387072710792.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P10308372953073183973

`∑{d}[n+1, A319997(#)*A327274((n+1)/#)]`
-/

namespace A007432.P10308372953073183973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319997 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P10308372953073183973

namespace A007432

/-- `∑{d}[n+1, A319997(#)*A327274((n+1)/#)]` -/
def P10308372953073183973.Spec : Prop :=
  ∀ n, P10308372953073183973.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P16139663087070791253

`∑{d}[n+1, A321322(#)*A328502((n+1)/#)]`
-/

namespace A007432.P16139663087070791253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P16139663087070791253

namespace A007432

/-- `∑{d}[n+1, A321322(#)*A328502((n+1)/#)]` -/
def P16139663087070791253.Spec : Prop :=
  ∀ n, P16139663087070791253.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P10884327095016304767

`∑{d}[n+1, A326305(#)*A327276((n+1)/#)]`
-/

namespace A007432.P10884327095016304767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P10884327095016304767

namespace A007432

/-- `∑{d}[n+1, A326305(#)*A327276((n+1)/#)]` -/
def P10884327095016304767.Spec : Prop :=
  ∀ n, P10884327095016304767.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P13768183471863724448

`∑{d}[n+1, A328722(#)*A344683((n+1)/#)]`
-/

namespace A007432.P13768183471863724448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P13768183471863724448

namespace A007432

/-- `∑{d}[n+1, A328722(#)*A344683((n+1)/#)]` -/
def P13768183471863724448.Spec : Prop :=
  ∀ n, P13768183471863724448.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P12161094769506227538

`∑{d}[n+1, A341833(#)*A396701((n+1)/#)]`
-/

namespace A007432.P12161094769506227538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341833 d * A396701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P12161094769506227538

namespace A007432

/-- `∑{d}[n+1, A341833(#)*A396701((n+1)/#)]` -/
def P12161094769506227538.Spec : Prop :=
  ∀ n, P12161094769506227538.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P345381560266254505

`∑{d}[n+1, A341834(#)*A396702((n+1)/#)]`
-/

namespace A007432.P345381560266254505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341834 d * A396702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P345381560266254505

namespace A007432

/-- `∑{d}[n+1, A341834(#)*A396702((n+1)/#)]` -/
def P345381560266254505.Spec : Prop :=
  ∀ n, P345381560266254505.a n = A007432 (n + 1)

end A007432

/-! ## A007432.P8205117840213620454

`∑{d}[n+1, A378213(#)*A378535((n+1)/#)]`
-/

namespace A007432.P8205117840213620454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378213 d * A378535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007432.P8205117840213620454

namespace A007432

/-- `∑{d}[n+1, A378213(#)*A378535((n+1)/#)]` -/
def P8205117840213620454.Spec : Prop :=
  ∀ n, P8205117840213620454.a n = A007432 (n + 1)

end A007432

/-!
# A007433: Inverse Moebius transform applied twice to squares.

The programs for A007433, the canonical program `A007433.P1894244349410239925` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007433 has offset 1).

The definition of A007433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007433.P1894244349410239925

`∑{d}[n+1, #²*A000005((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007433

/-- `∑{d}[n+1, #²*A000005((n+1)/#)]` -/
def P1894244349410239925.Spec : Prop :=
  ∀ n, P1894244349410239925.a n = A007433 (n + 1)

theorem P1894244349410239925.correct : P1894244349410239925.Spec := by
  intro n
  simp only [A007433, Nat.add_sub_cancel]

end A007433

/-! ## A007433.P9245424649957760678

`∑{d}[1+n, A001157(#)]`
-/

namespace A007433.P9245424649957760678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d

end

end A007433.P9245424649957760678

namespace A007433

/-- `∑{d}[1+n, A001157(#)]` -/
def P9245424649957760678.Spec : Prop :=
  ∀ n, P9245424649957760678.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P18391887755581248585

`2*A326826(n+1)-A007429(n+1)`
-/

namespace A007433.P18391887755581248585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326826 (n + 1) - A007429 (n + 1)

end

end A007433.P18391887755581248585

namespace A007433

/-- `2*A326826(n+1)-A007429(n+1)` -/
def P18391887755581248585.Spec : Prop :=
  ∀ n, P18391887755581248585.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P3231678766663003097

`∑{d}[n+1, A000005(#)*A000290((n+1)/#)]`
-/

namespace A007433.P3231678766663003097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P3231678766663003097

namespace A007433

/-- `∑{d}[n+1, A000005(#)*A000290((n+1)/#)]` -/
def P3231678766663003097.Spec : Prop :=
  ∀ n, P3231678766663003097.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P7689898401357911460

`∑{d}[n+1, A002618(#)*A007429((n+1)/#)]`
-/

namespace A007433.P7689898401357911460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P7689898401357911460

namespace A007433

/-- `∑{d}[n+1, A002618(#)*A007429((n+1)/#)]` -/
def P7689898401357911460.Spec : Prop :=
  ∀ n, P7689898401357911460.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P6724465432426452258

`∑{d}[n+1, A007425(#)*A007434((n+1)/#)]`
-/

namespace A007433.P6724465432426452258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P6724465432426452258

namespace A007433

/-- `∑{d}[n+1, A007425(#)*A007434((n+1)/#)]` -/
def P6724465432426452258.Spec : Prop :=
  ∀ n, P6724465432426452258.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P6053796114235093254

`∑{d}[n+1, A001001(#)*A023900((n+1)/#)]`
-/

namespace A007433.P6053796114235093254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P6053796114235093254

namespace A007433

/-- `∑{d}[n+1, A001001(#)*A023900((n+1)/#)]` -/
def P6053796114235093254.Spec : Prop :=
  ∀ n, P6053796114235093254.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P8297550438177646454

`∑{d}[n+1, A000203(#)*A057660((n+1)/#)]`
-/

namespace A007433.P8297550438177646454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P8297550438177646454

namespace A007433

/-- `∑{d}[n+1, A000203(#)*A057660((n+1)/#)]` -/
def P8297550438177646454.Spec : Prop :=
  ∀ n, P8297550438177646454.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P12858533978278749534

`∑{d}[n+1, A034676(#)*A035316((n+1)/#)]`
-/

namespace A007433.P12858533978278749534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P12858533978278749534

namespace A007433

/-- `∑{d}[n+1, A034676(#)*A035316((n+1)/#)]` -/
def P12858533978278749534.Spec : Prop :=
  ∀ n, P12858533978278749534.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P8310721813079548508

`∑{d}[n+1, A007430(#)*A063445((n+1)/#)]`
-/

namespace A007433.P8310721813079548508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P8310721813079548508

namespace A007433

/-- `∑{d}[n+1, A007430(#)*A063445((n+1)/#)]` -/
def P8310721813079548508.Spec : Prop :=
  ∀ n, P8310721813079548508.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P4810299685542020069

`∑{d}[n+1, A001511(#)*A076577((n+1)/#)]`
-/

namespace A007433.P4810299685542020069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A076577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P4810299685542020069

namespace A007433

/-- `∑{d}[n+1, A001511(#)*A076577((n+1)/#)]` -/
def P4810299685542020069.Spec : Prop :=
  ∀ n, P4810299685542020069.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P17686612749725516391

`∑{d}[n+1, A046951(#)*A065958((n+1)/#)]`
-/

namespace A007433.P17686612749725516391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A065958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P17686612749725516391

namespace A007433

/-- `∑{d}[n+1, A046951(#)*A065958((n+1)/#)]` -/
def P17686612749725516391.Spec : Prop :=
  ∀ n, P17686612749725516391.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P4550856899779020624

`∑{d}[n+1, A038712(#)*A078306((n+1)/#)]`
-/

namespace A007433.P4550856899779020624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A078306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P4550856899779020624

namespace A007433

/-- `∑{d}[n+1, A038712(#)*A078306((n+1)/#)]` -/
def P4550856899779020624.Spec : Prop :=
  ∀ n, P4550856899779020624.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P289561005155222966

`∑{d}[n+1, A061020(#)*A065764((n+1)/#)]`
-/

namespace A007433.P289561005155222966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P289561005155222966

namespace A007433

/-- `∑{d}[n+1, A061020(#)*A065764((n+1)/#)]` -/
def P289561005155222966.Spec : Prop :=
  ∀ n, P289561005155222966.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P6618602305471386865

`∑{d}[n+1, A048272(#)*A091519((n+1)/#)]`
-/

namespace A007433.P6618602305471386865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A091519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P6618602305471386865

namespace A007433

/-- `∑{d}[n+1, A048272(#)*A091519((n+1)/#)]` -/
def P6618602305471386865.Spec : Prop :=
  ∀ n, P6618602305471386865.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P8523639682727436635

`∑{d}[n+1, A010052(#)*A158949((n+1)/#)]`
-/

namespace A007433.P8523639682727436635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A158949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P8523639682727436635

namespace A007433

/-- `∑{d}[n+1, A010052(#)*A158949((n+1)/#)]` -/
def P8523639682727436635.Spec : Prop :=
  ∀ n, P8523639682727436635.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P12780018035994038210

`∑{d}[n+1, A064987(#)*A130054((n+1)/#)]`
-/

namespace A007433.P12780018035994038210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P12780018035994038210

namespace A007433

/-- `∑{d}[n+1, A064987(#)*A130054((n+1)/#)]` -/
def P12780018035994038210.Spec : Prop :=
  ∀ n, P12780018035994038210.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P9649582706053585881

`∑{d}[n+1, A101035(#)*A174468((n+1)/#)]`
-/

namespace A007433.P9649582706053585881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A174468 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P9649582706053585881

namespace A007433

/-- `∑{d}[n+1, A101035(#)*A174468((n+1)/#)]` -/
def P9649582706053585881.Spec : Prop :=
  ∀ n, P9649582706053585881.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P8653583953162533274

`∑{d}[n+1, A007426(#)*A321322((n+1)/#)]`
-/

namespace A007433.P8653583953162533274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P8653583953162533274

namespace A007433

/-- `∑{d}[n+1, A007426(#)*A321322((n+1)/#)]` -/
def P8653583953162533274.Spec : Prop :=
  ∀ n, P8653583953162533274.a n = A007433 (n + 1)

end A007433

/-! ## A007433.P3358147584329090641

`∑{d}[n+1, A001227(#)*A328407((n+1)/#)]`
-/

namespace A007433.P3358147584329090641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007433.P3358147584329090641

namespace A007433

/-- `∑{d}[n+1, A001227(#)*A328407((n+1)/#)]` -/
def P3358147584329090641.Spec : Prop :=
  ∀ n, P3358147584329090641.a n = A007433 (n + 1)

end A007433

/-!
# A007434: Jordan function J_2(n) (a generalization of phi(n)).

The programs for A007434, the canonical program `A007434.P3432859153295839493` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007434 has offset 1).

The definition of A007434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007434.P4505485565988912885

`∑{d}[n+1, #²*A008683((n+1)/#)]`
-/

namespace A007434.P4505485565988912885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007434.P4505485565988912885

namespace A007434

/-- `∑{d}[n+1, #²*A008683((n+1)/#)]` -/
def P4505485565988912885.Spec : Prop :=
  ∀ n, P4505485565988912885.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P3432859153295839493

`A000010(n+1)*A001615(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007434

/-- `A000010(n+1)*A001615(n+1)` -/
def P3432859153295839493.Spec : Prop :=
  ∀ n, P3432859153295839493.a n = A007434 (n + 1)

theorem P3432859153295839493.correct : P3432859153295839493.Spec := by
  intro n
  simp only [A007434, Nat.add_sub_cancel]

end A007434

/-! ## A007434.P1517703007433669351

`∑{d}[n+1, A000010(#)*A000010((n+1)/#)*(n+1)/#]`
-/

namespace A007434.P1517703007433669351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (n + 1 : ℤ) : ℚ) / (d : ℚ)

end

end A007434.P1517703007433669351

namespace A007434

/-- `∑{d}[n+1, A000010(#)*A000010((n+1)/#)*(n+1)/#]` -/
def P1517703007433669351.Spec : Prop :=
  ∀ n, P1517703007433669351.a n = (A007434 (n + 1) : ℚ)

end A007434

/-! ## A007434.P4740046827286036825

`∑{#}[n, gcd(#+1, n+1)²*cos(2*π*(#+1)/(n+1))]`
-/

namespace A007434.P4740046827286036825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.gcd (k + 1) (n + 1) ^ 2 : ℝ) * Real.cos (2 * Real.pi * (k + 1 : ℝ) / (n + 1 : ℝ))

end

end A007434.P4740046827286036825

namespace A007434

/-- `∑{#}[n, gcd(#+1, n+1)²*cos(2*π*(#+1)/(n+1))]` -/
def P4740046827286036825.Spec : Prop :=
  ∀ n, P4740046827286036825.a n = (A007434 (n + 1) : ℝ)

end A007434

/-! ## A007434.P2373424332641975459

`∑{#}[n, A000010(gcd(n+1, #+1)²)]`
-/

namespace A007434.P2373424332641975459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000010 (Nat.gcd (n + 1) (k + 1) ^ 2)

end

end A007434.P2373424332641975459

namespace A007434

/-- `∑{#}[n, A000010(gcd(n+1, #+1)²)]` -/
def P2373424332641975459.Spec : Prop :=
  ∀ n, P2373424332641975459.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P5631817651557520390

`(n+1)*∏{p}[n+1, #-1/#]*(n+1)/∏{p}[n+1, #]`
-/

namespace A007434.P5631817651557520390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))

end

end A007434.P5631817651557520390

namespace A007434

/-- `(n+1)*∏{p}[n+1, #-1/#]*(n+1)/∏{p}[n+1, #]` -/
def P5631817651557520390.Spec : Prop :=
  ∀ n, P5631817651557520390.a n = (A007434 (n + 1) : ℚ)

end A007434

/-! ## A007434.P13040910101082624236

`Δ[A321879(n)]`
-/

namespace A007434.P13040910101082624236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007434.P13040910101082624236

namespace A007434

/-- `Δ[A321879(n)]` -/
def P13040910101082624236.Spec : Prop :=
  ∀ n, P13040910101082624236.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P7962007717368338306

`∑{d}[n+1, A321322(#)]`
-/

namespace A007434.P7962007717368338306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d

end

end A007434.P7962007717368338306

namespace A007434

/-- `∑{d}[n+1, A321322(#)]` -/
def P7962007717368338306.Spec : Prop :=
  ∀ n, P7962007717368338306.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P609879252513729519

`A000056(n+1)/(n+1)`
-/

namespace A007434.P609879252513729519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A007434.P609879252513729519

namespace A007434

/-- `A000056(n+1)/(n+1)` -/
def P609879252513729519.Spec : Prop :=
  ∀ n, P609879252513729519.a n = (A007434 (n + 1) : ℚ)

end A007434

/-! ## A007434.P165754011419521220

`(n+1)²-A064279(n+1)`
-/

namespace A007434.P165754011419521220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A064279 (n + 1)

end

end A007434.P165754011419521220

namespace A007434

/-- `(n+1)²-A064279(n+1)` -/
def P165754011419521220.Spec : Prop :=
  ∀ n, P165754011419521220.a n = A007434 (n + 1)

theorem P165754011419521220.correct : P165754011419521220.Spec := by
  intro n
  simp only [A007434, Nat.add_sub_cancel, A007434.P165754011419521220.a, A007434.P3432859153295839493.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A064279, A064279.P12022089793920685943.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007434

/-! ## A007434.P2301944380089633600

`A379833(n+1)/(n+1)²`
-/

namespace A007434.P2301944380089633600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379833 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A007434.P2301944380089633600

namespace A007434

/-- `A379833(n+1)/(n+1)²` -/
def P2301944380089633600.Spec : Prop :=
  ∀ n, P2301944380089633600.a n = (A007434 (n + 1) : ℚ)

end A007434

/-! ## A007434.P863813256759641703

`∑{d}[n+1, #*A063445((n+1)/#)]`
-/

namespace A007434.P863813256759641703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007434.P863813256759641703

namespace A007434

/-- `∑{d}[n+1, #*A063445((n+1)/#)]` -/
def P863813256759641703.Spec : Prop :=
  ∀ n, P863813256759641703.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P14855790632518528499

`∑{d}[n+1, A008683((n+1)/#)*#²]`
-/

namespace A007434.P14855790632518528499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 2 : ℤ)

end

end A007434.P14855790632518528499

namespace A007434

/-- `∑{d}[n+1, A008683((n+1)/#)*#²]` -/
def P14855790632518528499.Spec : Prop :=
  ∀ n, P14855790632518528499.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P4909819783334717620

`A321879(n+1)-A321879(n)`
-/

namespace A007434.P4909819783334717620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 (n + 1) - A321879 n

end

end A007434.P4909819783334717620

namespace A007434

/-- `A321879(n+1)-A321879(n)` -/
def P4909819783334717620.Spec : Prop :=
  ∀ n, P4909819783334717620.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P15085799201344582333

`Δ[A002088(n)]*A001615(n+1)`
-/

namespace A007434.P15085799201344582333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001615 (n + 1)

end

end A007434.P15085799201344582333

namespace A007434

/-- `Δ[A002088(n)]*A001615(n+1)` -/
def P15085799201344582333.Spec : Prop :=
  ∀ n, P15085799201344582333.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P7318661456088555120

`Δ[A005728(n)]*A001615(n+1)`
-/

namespace A007434.P7318661456088555120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001615 (n + 1)

end

end A007434.P7318661456088555120

namespace A007434

/-- `Δ[A005728(n)]*A001615(n+1)` -/
def P7318661456088555120.Spec : Prop :=
  ∀ n, P7318661456088555120.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P2574333537692365472

`A134675(n+1)-A001065(n+1)`
-/

namespace A007434.P2574333537692365472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134675 (n + 1) - A001065 (n + 1)

end

end A007434.P2574333537692365472

namespace A007434

/-- `A134675(n+1)-A001065(n+1)` -/
def P2574333537692365472.Spec : Prop :=
  ∀ n, P2574333537692365472.a n = A007434 (n + 1)

theorem P2574333537692365472.correct : P2574333537692365472.Spec := by
  intro n
  simp only [A007434, Nat.add_sub_cancel, A007434.P2574333537692365472.a, A007434.P3432859153295839493.a, A000010, A000010.P4673923239450215316.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A134675, A134675.P852948724655989853.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007434

/-! ## A007434.P7463353928172559324

`A323399(n+1)-A046970(n+1)`
-/

namespace A007434.P7463353928172559324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323399 (n + 1) - A046970 (n + 1)

end

end A007434.P7463353928172559324

namespace A007434

/-- `A323399(n+1)-A046970(n+1)` -/
def P7463353928172559324.Spec : Prop :=
  ∀ n, P7463353928172559324.a n = A007434 (n + 1)

theorem P7463353928172559324.correct : P7463353928172559324.Spec := by
  intro n
  simp only [A007434, Nat.add_sub_cancel, A007434.P7463353928172559324.a, A007434.P3432859153295839493.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A046970, A046970.P18046929235984925317.a, A323399, A323399.P15061214207658318257.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P15367599446689772238.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A007434

/-! ## A007434.P1746250325041636213

`A117108(n+1)-A346760(n+1)`
-/

namespace A007434.P1746250325041636213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117108 (n + 1) - A346760 (n + 1)

end

end A007434.P1746250325041636213

namespace A007434

/-- `A117108(n+1)-A346760(n+1)` -/
def P1746250325041636213.Spec : Prop :=
  ∀ n, P1746250325041636213.a n = A007434 (n + 1)

end A007434

/-! ## A007434.P9521909658341768726

`A002322(n+1)*A220345(n+1)`
-/

namespace A007434.P9521909658341768726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A220345 (n + 1)

end

end A007434.P9521909658341768726

namespace A007434

/-- `A002322(n+1)*A220345(n+1)` -/
def P9521909658341768726.Spec : Prop :=
  ∀ n, P9521909658341768726.a n = A007434 (n + 1)

end A007434

/-!
# A007435: Inverse Moebius transform of Fibonacci numbers 1,1,2,3,5,8,...

The programs for A007435, the canonical program `A007435.P9180709624338983869` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007435 has offset 1).

The definition of A007435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007435.P14810565788627401982

`∑{d}[n+1, A000045(#)]`
-/

namespace A007435.P14810565788627401982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d

end

end A007435.P14810565788627401982

namespace A007435

/-- `∑{d}[n+1, A000045(#)]` -/
def P14810565788627401982.Spec : Prop :=
  ∀ n, P14810565788627401982.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P4458729183930844534

`∑{d}[n+1, A008683(#)*A034772((n+1)/#)]`
-/

namespace A007435.P4458729183930844534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P4458729183930844534

namespace A007435

/-- `∑{d}[n+1, A008683(#)*A034772((n+1)/#)]` -/
def P4458729183930844534.Spec : Prop :=
  ∀ n, P4458729183930844534.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P9180709624338983869

`A245282(n+1)-A108046(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007435

/-- `A245282(n+1)-A108046(n+1)` -/
def P9180709624338983869.Spec : Prop :=
  ∀ n, P9180709624338983869.a n = A007435 (n + 1)

theorem P9180709624338983869.correct : P9180709624338983869.Spec := by
  intro n
  simp only [A007435, Nat.add_sub_cancel]

end A007435

/-! ## A007435.P3897421806554941949

`(A108031(n+1)+A108046(n+1))/2`
-/

namespace A007435.P3897421806554941949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108031 (n + 1) + A108046 (n + 1) : ℚ) / 2

end

end A007435.P3897421806554941949

namespace A007435

/-- `(A108031(n+1)+A108046(n+1))/2` -/
def P3897421806554941949.Spec : Prop :=
  ∀ n, P3897421806554941949.a n = (A007435 (n + 1) : ℚ)

end A007435

/-! ## A007435.P2896730240699930148

`2*A245282(n+1)-A100107(n+1)`
-/

namespace A007435.P2896730240699930148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245282 (n + 1) - A100107 (n + 1)

end

end A007435.P2896730240699930148

namespace A007435

/-- `2*A245282(n+1)-A100107(n+1)` -/
def P2896730240699930148.Spec : Prop :=
  ∀ n, P2896730240699930148.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P1385231200429930812

`∑{d}[n+1, A000071(#)+1]`
-/

namespace A007435.P1385231200429930812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000071 d + 1)

end

end A007435.P1385231200429930812

namespace A007435

/-- `∑{d}[n+1, A000071(#)+1]` -/
def P1385231200429930812.Spec : Prop :=
  ∀ n, P1385231200429930812.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P6004897803002317989

`∑{d}[n+1, A212804(#+1)]`
-/

namespace A007435.P6004897803002317989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212804 (d + 1)

end

end A007435.P6004897803002317989

namespace A007435

/-- `∑{d}[n+1, A212804(#+1)]` -/
def P6004897803002317989.Spec : Prop :=
  ∀ n, P6004897803002317989.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P4603760919503523606

`∑{d}[n+1, A001611(#)-1]`
-/

namespace A007435.P4603760919503523606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001611 d - 1)

end

end A007435.P4603760919503523606

namespace A007435

/-- `∑{d}[n+1, A001611(#)-1]` -/
def P4603760919503523606.Spec : Prop :=
  ∀ n, P4603760919503523606.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P11281518354689760020

`∑{d}[n+1, A000005(#)*A007436((n+1)/#)]`
-/

namespace A007435.P11281518354689760020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P11281518354689760020

namespace A007435

/-- `∑{d}[n+1, A000005(#)*A007436((n+1)/#)]` -/
def P11281518354689760020.Spec : Prop :=
  ∀ n, P11281518354689760020.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P6953330224532425389

`∑{d}[n+1, A034747(#)*A055615((n+1)/#)]`
-/

namespace A007435.P6953330224532425389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034747 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P6953330224532425389

namespace A007435

/-- `∑{d}[n+1, A034747(#)*A055615((n+1)/#)]` -/
def P6953330224532425389.Spec : Prop :=
  ∀ n, P6953330224532425389.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P2992626966042824814

`∑{d}[n+1, A023900(#)*A066769((n+1)/#)]`
-/

namespace A007435.P2992626966042824814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A066769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P2992626966042824814

namespace A007435

/-- `∑{d}[n+1, A023900(#)*A066769((n+1)/#)]` -/
def P2992626966042824814.Spec : Prop :=
  ∀ n, P2992626966042824814.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P14799313742901825116

`∑{d}[n+1, A001227(#)*A108700((n+1)/#)]`
-/

namespace A007435.P14799313742901825116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A108700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P14799313742901825116

namespace A007435

/-- `∑{d}[n+1, A001227(#)*A108700((n+1)/#)]` -/
def P14799313742901825116.Spec : Prop :=
  ∀ n, P14799313742901825116.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P1516144847431114063

`∑{d}[n+1, A034748(#)*A130054((n+1)/#)]`
-/

namespace A007435.P1516144847431114063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034748 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P1516144847431114063

namespace A007435

/-- `∑{d}[n+1, A034748(#)*A130054((n+1)/#)]` -/
def P1516144847431114063.Spec : Prop :=
  ∀ n, P1516144847431114063.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P37283792840196872

`∑{d}[n+1, A007436(#)*A179942((n+1)/#)]`
-/

namespace A007435.P37283792840196872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A179942 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P37283792840196872

namespace A007435

/-- `∑{d}[n+1, A007436(#)*A179942((n+1)/#)]` -/
def P37283792840196872.Spec : Prop :=
  ∀ n, P37283792840196872.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P13730100764552382275

`A100107(n+1)-2*A108046(n+1)`
-/

namespace A007435.P13730100764552382275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100107 (n + 1) - 2 * A108046 (n + 1)

end

end A007435.P13730100764552382275

namespace A007435

/-- `A100107(n+1)-2*A108046(n+1)` -/
def P13730100764552382275.Spec : Prop :=
  ∀ n, P13730100764552382275.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P7353174351141396568

`∑{d}[n+1, A034729(#)*A349565((n+1)/#)]`
-/

namespace A007435.P7353174351141396568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007435.P7353174351141396568

namespace A007435

/-- `∑{d}[n+1, A034729(#)*A349565((n+1)/#)]` -/
def P7353174351141396568.Spec : Prop :=
  ∀ n, P7353174351141396568.a n = A007435 (n + 1)

end A007435

/-! ## A007435.P12352701473128564572

`∑{d}[n+1, sqrt(A007598(#))]`
-/

namespace A007435.P12352701473128564572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A007598 d : ℝ)

end

end A007435.P12352701473128564572

namespace A007435

/-- `∑{d}[n+1, sqrt(A007598(#))]` -/
def P12352701473128564572.Spec : Prop :=
  ∀ n, P12352701473128564572.a n = (A007435 (n + 1) : ℝ)

end A007435

/-! ## A007435.P17569495447886498976

`∑{d}[n+1, A123736(#²)]`
-/

namespace A007435.P17569495447886498976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123736 (d ^ 2)

end

end A007435.P17569495447886498976

namespace A007435

/-- `∑{d}[n+1, A123736(#²)]` -/
def P17569495447886498976.Spec : Prop :=
  ∀ n, P17569495447886498976.a n = A007435 (n + 1)

end A007435

/-!
# A007436: Moebius transform of Fibonacci numbers.

The programs for A007436, the canonical program `A007436.P2979354749986900040` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007436 has offset 1).

The definition of A007436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007436.P2979354749986900040

`∑{d}[n+1, A000045(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007436

/-- `∑{d}[n+1, A000045(#)*A008683((n+1)/#)]` -/
def P2979354749986900040.Spec : Prop :=
  ∀ n, P2979354749986900040.a n = A007436 (n + 1)

theorem P2979354749986900040.correct : P2979354749986900040.Spec := by
  intro n
  simp only [A007436, Nat.add_sub_cancel]

end A007436

/-! ## A007436.P16294236085196706851

`∑{d}[n+1, A008683((n+1)/#)*A000045(#)]`
-/

namespace A007436.P16294236085196706851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000045 d

end

end A007436.P16294236085196706851

namespace A007436

/-- `∑{d}[n+1, A008683((n+1)/#)*A000045(#)]` -/
def P16294236085196706851.Spec : Prop :=
  ∀ n, P16294236085196706851.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P13094445126418984546

`∑{d}[n+1, A007427(#)*A007435((n+1)/#)]`
-/

namespace A007436.P13094445126418984546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007435 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P13094445126418984546

namespace A007436

/-- `∑{d}[n+1, A007427(#)*A007435((n+1)/#)]` -/
def P13094445126418984546.Spec : Prop :=
  ∀ n, P13094445126418984546.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P11929447591330324403

`∑{d}[n+1, A007428(#)*A034772((n+1)/#)]`
-/

namespace A007436.P11929447591330324403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P11929447591330324403

namespace A007436

/-- `∑{d}[n+1, A007428(#)*A034772((n+1)/#)]` -/
def P11929447591330324403.Spec : Prop :=
  ∀ n, P11929447591330324403.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P2634334295045654304

`∑{d}[n+1, A034748(#)*A055615((n+1)/#)]`
-/

namespace A007436.P2634334295045654304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034748 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P2634334295045654304

namespace A007436

/-- `∑{d}[n+1, A034748(#)*A055615((n+1)/#)]` -/
def P2634334295045654304.Spec : Prop :=
  ∀ n, P2634334295045654304.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P3931015666031117349

`∑{d}[n+1, A046692(#)*A066769((n+1)/#)]`
-/

namespace A007436.P3931015666031117349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A066769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P3931015666031117349

namespace A007436

/-- `∑{d}[n+1, A046692(#)*A066769((n+1)/#)]` -/
def P3931015666031117349.Spec : Prop :=
  ∀ n, P3931015666031117349.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P17454420647135873612

`∑{d}[n+1, A108700(#)*A154955((n+1)/#)]`
-/

namespace A007436.P17454420647135873612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A108700 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P17454420647135873612

namespace A007436

/-- `∑{d}[n+1, A108700(#)*A154955((n+1)/#)]` -/
def P17454420647135873612.Spec : Prop :=
  ∀ n, P17454420647135873612.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P17283419417458726253

`A225202(n+1)-A381936(n+1)`
-/

namespace A007436.P17283419417458726253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225202 (n + 1) - A381936 (n + 1)

end

end A007436.P17283419417458726253

namespace A007436

/-- `A225202(n+1)-A381936(n+1)` -/
def P17283419417458726253.Spec : Prop :=
  ∀ n, P17283419417458726253.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P5149583095110188369

`∑{d}[n+1, A000740(#)*A349565((n+1)/#)]`
-/

namespace A007436.P5149583095110188369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007436.P5149583095110188369

namespace A007436

/-- `∑{d}[n+1, A000740(#)*A349565((n+1)/#)]` -/
def P5149583095110188369.Spec : Prop :=
  ∀ n, P5149583095110188369.a n = A007436 (n + 1)

end A007436

/-! ## A007436.P14563499439513383947

`A130116(∑[n+1])`
-/

namespace A007436.P14563499439513383947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130116 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007436.P14563499439513383947

namespace A007436

/-- `A130116(∑[n+1])` -/
def P14563499439513383947.Spec : Prop :=
  ∀ n, P14563499439513383947.a n = A007436 (n + 1)

end A007436

/-!
# A007437: Inverse Moebius transform of triangular numbers.

The programs for A007437, the canonical program `A007437.P4259273858504125532` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007437 has offset 1).

The definition of A007437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007437.P11320829362925120315

`∑{d}[n+1, #*(#+1)/2]`
-/

namespace A007437.P11320829362925120315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * (d + 1) : ℚ) / 2

end

end A007437.P11320829362925120315

namespace A007437

/-- `∑{d}[n+1, #*(#+1)/2]` -/
def P11320829362925120315.Spec : Prop :=
  ∀ n, P11320829362925120315.a n = (A007437 (n + 1) : ℚ)

end A007437

/-! ## A007437.P4259273858504125532

`1/2*(A000203(n+1)+A001157(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007437

/-- `1/2*(A000203(n+1)+A001157(n+1))` -/
def P4259273858504125532.Spec : Prop :=
  ∀ n, P4259273858504125532.a n = (A007437 (n + 1) : ℚ)

end A007437

/-! ## A007437.P7354010167334419892

`∑{#}[n, (#+1)*A135539(C(n+1, 2)+#+1)]`
-/

namespace A007437.P7354010167334419892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A135539 (Nat.choose (n + 1) 2 + (k + 1))

end

end A007437.P7354010167334419892

namespace A007437

/-- `∑{#}[n, (#+1)*A135539(C(n+1, 2)+#+1)]` -/
def P7354010167334419892.Spec : Prop :=
  ∀ n, P7354010167334419892.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P3816947197308679205

`∑{d}[n+1, C(#+1, 2)]`
-/

namespace A007437.P3816947197308679205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (d + 1) 2

end

end A007437.P3816947197308679205

namespace A007437

/-- `∑{d}[n+1, C(#+1, 2)]` -/
def P3816947197308679205.Spec : Prop :=
  ∀ n, (P3816947197308679205.a n : ℤ) = A007437 (n + 1)

end A007437

/-! ## A007437.P16589692774080990708

`A069153(n+1)+∑{d}[n+1, #]`
-/

namespace A007437.P16589692774080990708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A007437.P16589692774080990708

namespace A007437

/-- `A069153(n+1)+∑{d}[n+1, #]` -/
def P16589692774080990708.Spec : Prop :=
  ∀ n, P16589692774080990708.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P9385396037337701328

`A069153(n+1)+A000203(n+1)`
-/

namespace A007437.P9385396037337701328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) + A000203 (n + 1)

end

end A007437.P9385396037337701328

namespace A007437

/-- `A069153(n+1)+A000203(n+1)` -/
def P9385396037337701328.Spec : Prop :=
  ∀ n, P9385396037337701328.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P14245806019165361140

`A363610(n+1)+A129235(n+1)`
-/

namespace A007437.P14245806019165361140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363610 (n + 1) + A129235 (n + 1)

end

end A007437.P14245806019165361140

namespace A007437

/-- `A363610(n+1)+A129235(n+1)` -/
def P14245806019165361140.Spec : Prop :=
  ∀ n, P14245806019165361140.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P13748680173863278784

`A001157(n+1)-A069153(n+1)`
-/

namespace A007437.P13748680173863278784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A069153 (n + 1)

end

end A007437.P13748680173863278784

namespace A007437

/-- `A001157(n+1)-A069153(n+1)` -/
def P13748680173863278784.Spec : Prop :=
  ∀ n, P13748680173863278784.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P13665116778154604825

`A116913(n+1)-A086666(n+1)`
-/

namespace A007437.P13665116778154604825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (n + 1) - A086666 (n + 1)

end

end A007437.P13665116778154604825

namespace A007437

/-- `A116913(n+1)-A086666(n+1)` -/
def P13665116778154604825.Spec : Prop :=
  ∀ n, P13665116778154604825.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P8355676169727446755

`A184387(n+1)-A119616(n+1)`
-/

namespace A007437.P8355676169727446755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A119616 (n + 1)

end

end A007437.P8355676169727446755

namespace A007437

/-- `A184387(n+1)-A119616(n+1)` -/
def P8355676169727446755.Spec : Prop :=
  ∀ n, P8355676169727446755.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P14616035432036533141

`A363628(n+1)-A007503(n+1)`
-/

namespace A007437.P14616035432036533141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363628 (n + 1) - A007503 (n + 1)

end

end A007437.P14616035432036533141

namespace A007437

/-- `A363628(n+1)-A007503(n+1)` -/
def P14616035432036533141.Spec : Prop :=
  ∀ n, P14616035432036533141.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P15102429359682794688

`A079247(n+1)+2*A346759(n+1)`
-/

namespace A007437.P15102429359682794688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) + 2 * A346759 (n + 1)

end

end A007437.P15102429359682794688

namespace A007437

/-- `A079247(n+1)+2*A346759(n+1)` -/
def P15102429359682794688.Spec : Prop :=
  ∀ n, P15102429359682794688.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P3008876084693422555

`(A000203(n+1)+A001157(n+1))/2`
-/

namespace A007437.P3008876084693422555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A007437.P3008876084693422555

namespace A007437

/-- `(A000203(n+1)+A001157(n+1))/2` -/
def P3008876084693422555.Spec : Prop :=
  ∀ n, P3008876084693422555.a n = (A007437 (n + 1) : ℚ)

end A007437

/-! ## A007437.P4469563865700469657

`A000203(n+1)+A086666(n+1)/2`
-/

namespace A007437.P4469563865700469657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) + (A086666 (n + 1) : ℚ) / 2

end

end A007437.P4469563865700469657

namespace A007437

/-- `A000203(n+1)+A086666(n+1)/2` -/
def P4469563865700469657.Spec : Prop :=
  ∀ n, P4469563865700469657.a n = (A007437 (n + 1) : ℚ)

end A007437

/-! ## A007437.P8713651743873028278

`2*A001157(n+1)-A116913(n+1)`
-/

namespace A007437.P8713651743873028278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001157 (n + 1) - A116913 (n + 1)

end

end A007437.P8713651743873028278

namespace A007437

/-- `2*A001157(n+1)-A116913(n+1)` -/
def P8713651743873028278.Spec : Prop :=
  ∀ n, P8713651743873028278.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P10789154904554519603

`A116913(n+1)-2*A069153(n+1)`
-/

namespace A007437.P10789154904554519603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (n + 1) - 2 * A069153 (n + 1)

end

end A007437.P10789154904554519603

namespace A007437

/-- `A116913(n+1)-2*A069153(n+1)` -/
def P10789154904554519603.Spec : Prop :=
  ∀ n, P10789154904554519603.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P15223849461986933751

`A320941(n+1)-2*A363604(n+1)`
-/

namespace A007437.P15223849461986933751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320941 (n + 1) - 2 * A363604 (n + 1)

end

end A007437.P15223849461986933751

namespace A007437

/-- `A320941(n+1)-2*A363604(n+1)` -/
def P15223849461986933751.Spec : Prop :=
  ∀ n, P15223849461986933751.a n = A007437 (n + 1)

end A007437

/-! ## A007437.P2025762282381273245

`A001157(n+1)-A086666(n+1)/2`
-/

namespace A007437.P2025762282381273245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) - (A086666 (n + 1) : ℚ) / 2

end

end A007437.P2025762282381273245

namespace A007437

/-- `A001157(n+1)-A086666(n+1)/2` -/
def P2025762282381273245.Spec : Prop :=
  ∀ n, P2025762282381273245.a n = (A007437 (n + 1) : ℚ)

end A007437

/-! ## A007437.P478271416567585745

`(A001158(n+1)-A092350(n+1))/2`
-/

namespace A007437.P478271416567585745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) - A092350 (n + 1) : ℚ) / 2

end

end A007437.P478271416567585745

namespace A007437

/-- `(A001158(n+1)-A092350(n+1))/2` -/
def P478271416567585745.Spec : Prop :=
  ∀ n, P478271416567585745.a n = (A007437 (n + 1) : ℚ)

end A007437

/-! ## A007437.P16703670033525205494

`A000005(n+1)+A069153(n+1)+A065608(n+1)`
-/

namespace A007437.P16703670033525205494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A069153 (n + 1) + A065608 (n + 1))

end

end A007437.P16703670033525205494

namespace A007437

/-- `A000005(n+1)+A069153(n+1)+A065608(n+1)` -/
def P16703670033525205494.Spec : Prop :=
  ∀ n, P16703670033525205494.a n = A007437 (n + 1)

end A007437

/-!
# A007438: Moebius transform of triangular numbers.

The programs for A007438, the canonical program `A007438.P10356689231106603491` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007438 has offset 1).

The definition of A007438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007438.P10356689231106603491

`(A007434(n+1)+A000010(n+1))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007438

/-- `(A007434(n+1)+A000010(n+1))/2` -/
def P10356689231106603491.Spec : Prop :=
  ∀ n, P10356689231106603491.a n = (A007438 (n + 1) : ℚ)

end A007438

/-! ## A007438.P8105796783012064711

`∑{d}[n+1, A326828(#)]`
-/

namespace A007438.P8105796783012064711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326828 d

end

end A007438.P8105796783012064711

namespace A007438

/-- `∑{d}[n+1, A326828(#)]` -/
def P8105796783012064711.Spec : Prop :=
  ∀ n, P8105796783012064711.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P7555101241362812375

`A102309(n+1)+Δ[A002088(n)]`
-/

namespace A007438.P7555101241362812375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007438.P7555101241362812375

namespace A007438

/-- `A102309(n+1)+Δ[A002088(n)]` -/
def P7555101241362812375.Spec : Prop :=
  ∀ n, P7555101241362812375.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P6097525890575400078

`A102309(n+1)+A000010(n+1)`
-/

namespace A007438.P6097525890575400078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102309 (n + 1) + A000010 (n + 1)

end

end A007438.P6097525890575400078

namespace A007438

/-- `A102309(n+1)+A000010(n+1)` -/
def P6097525890575400078.Spec : Prop :=
  ∀ n, P6097525890575400078.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P4644026739572348548

`A140434(n+1)+A000741(n+1)`
-/

namespace A007438.P4644026739572348548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1) + A000741 (n + 1)

end

end A007438.P4644026739572348548

namespace A007438

/-- `A140434(n+1)+A000741(n+1)` -/
def P4644026739572348548.Spec : Prop :=
  ∀ n, P4644026739572348548.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P11153939753769028905

`A346758(n+1)+A123323(n+1)`
-/

namespace A007438.P11153939753769028905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346758 (n + 1) + A123323 (n + 1)

end

end A007438.P11153939753769028905

namespace A007438

/-- `A346758(n+1)+A123323(n+1)` -/
def P11153939753769028905.Spec : Prop :=
  ∀ n, P11153939753769028905.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P10942184643948901786

`A007434(n+1)-A102309(n+1)`
-/

namespace A007438.P10942184643948901786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) - A102309 (n + 1)

end

end A007438.P10942184643948901786

namespace A007438

/-- `A007434(n+1)-A102309(n+1)` -/
def P10942184643948901786.Spec : Prop :=
  ∀ n, P10942184643948901786.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P16235101573577027784

`(A007434(n+1)+Δ[A002088(n)])/2`
-/

namespace A007438.P16235101573577027784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A007438.P16235101573577027784

namespace A007438

/-- `(A007434(n+1)+Δ[A002088(n)])/2` -/
def P16235101573577027784.Spec : Prop :=
  ∀ n, P16235101573577027784.a n = (A007438 (n + 1) : ℚ)

end A007438

/-! ## A007438.P12556333996788094569

`(A007434(n+1)+Δ[A005728(n)])/2`
-/

namespace A007438.P12556333996788094569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A007438.P12556333996788094569

namespace A007438

/-- `(A007434(n+1)+Δ[A005728(n)])/2` -/
def P12556333996788094569.Spec : Prop :=
  ∀ n, P12556333996788094569.a n = (A007438 (n + 1) : ℚ)

end A007438

/-! ## A007438.P12669565126871987013

`∑{d}[n+1, A008683(#)*A000217((n+1)/#)]`
-/

namespace A007438.P12669565126871987013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P12669565126871987013

namespace A007438

/-- `∑{d}[n+1, A008683(#)*A000217((n+1)/#)]` -/
def P12669565126871987013.Spec : Prop :=
  ∀ n, P12669565126871987013.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P6390869165778282767

`∑{d}[n+1, A007427(#)*A007437((n+1)/#)]`
-/

namespace A007438.P6390869165778282767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P6390869165778282767

namespace A007438

/-- `∑{d}[n+1, A007427(#)*A007437((n+1)/#)]` -/
def P6390869165778282767.Spec : Prop :=
  ∀ n, P6390869165778282767.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P8820673885804121867

`∑{d}[n+1, A000010(#)*A023896((n+1)/#)]`
-/

namespace A007438.P8820673885804121867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P8820673885804121867

namespace A007438

/-- `∑{d}[n+1, A000010(#)*A023896((n+1)/#)]` -/
def P8820673885804121867.Spec : Prop :=
  ∀ n, P8820673885804121867.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P3239381672121446731

`∑{d}[n+1, A069097(#)*A125287((n+1)/#)]`
-/

namespace A007438.P3239381672121446731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069097 d * A125287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P3239381672121446731

namespace A007438

/-- `∑{d}[n+1, A069097(#)*A125287((n+1)/#)]` -/
def P3239381672121446731.Spec : Prop :=
  ∀ n, P3239381672121446731.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P16745601162667015784

`∑{d}[n+1, A007428(#)*A326826((n+1)/#)]`
-/

namespace A007438.P16745601162667015784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A326826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P16745601162667015784

namespace A007438

/-- `∑{d}[n+1, A007428(#)*A326826((n+1)/#)]` -/
def P16745601162667015784.Spec : Prop :=
  ∀ n, P16745601162667015784.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P7806212812450494826

`∑{d}[n+1, A046692(#)*A309731((n+1)/#)]`
-/

namespace A007438.P7806212812450494826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P7806212812450494826

namespace A007438

/-- `∑{d}[n+1, A046692(#)*A309731((n+1)/#)]` -/
def P7806212812450494826.Spec : Prop :=
  ∀ n, P7806212812450494826.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P3476997207884218134

`∑{d}[n+1, A053822(#)*A309732((n+1)/#)]`
-/

namespace A007438.P3476997207884218134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A309732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P3476997207884218134

namespace A007438

/-- `∑{d}[n+1, A053822(#)*A309732((n+1)/#)]` -/
def P3476997207884218134.Spec : Prop :=
  ∀ n, P3476997207884218134.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P8236182661634634044

`∑{d}[n+1, A055615(#)*A309322((n+1)/#)]`
-/

namespace A007438.P8236182661634634044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A309322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P8236182661634634044

namespace A007438

/-- `∑{d}[n+1, A055615(#)*A309322((n+1)/#)]` -/
def P8236182661634634044.Spec : Prop :=
  ∀ n, P8236182661634634044.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P1784000374131502824

`∑{d}[n+1, A053825(#)*A366135((n+1)/#)]`
-/

namespace A007438.P1784000374131502824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A366135 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P1784000374131502824

namespace A007438

/-- `∑{d}[n+1, A053825(#)*A366135((n+1)/#)]` -/
def P1784000374131502824.Spec : Prop :=
  ∀ n, P1784000374131502824.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P166048538725377138

`∑{d}[n+1, A092673(#)*A338045((n+1)/#)]`
-/

namespace A007438.P166048538725377138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A338045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P166048538725377138

namespace A007438

/-- `∑{d}[n+1, A092673(#)*A338045((n+1)/#)]` -/
def P166048538725377138.Spec : Prop :=
  ∀ n, P166048538725377138.a n = A007438 (n + 1)

end A007438

/-! ## A007438.P9591006399242910637

`∑{d}[n+1, A067856(#)*A390802((n+1)/#)]`
-/

namespace A007438.P9591006399242910637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A390802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007438.P9591006399242910637

namespace A007438

/-- `∑{d}[n+1, A067856(#)*A390802((n+1)/#)]` -/
def P9591006399242910637.Spec : Prop :=
  ∀ n, P9591006399242910637.a n = A007438 (n + 1)

end A007438

/-!
# A007439: Number of planted trees: all sub-rooted trees from any node are identical; non-root, non-leaf nodes an even distance from the root are of degree 2.

The programs for A007439, there is no canonical definition to state claims against.
-/

/-! ## A007439.P11559603242002021909

`A346117(abs(1-n)+2)-A345141(n+1)`
-/

namespace A007439.P11559603242002021909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (|1 - (n : ℤ)| + 2).toNat - A345141 (n + 1)

end

end A007439.P11559603242002021909

/-! ## A007439.P1232240329514529364

`floor(acot(n))+A346117(n+1)-A345141(n+1)`
-/

namespace A007439.P1232240329514529364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A346117 (n + 1) - A345141 (n + 1))

end

end A007439.P1232240329514529364

/-! ## A007439.P5056630191892682399

`A346117(n+1)+A000007(n)-A345141(n+1)`
-/

namespace A007439.P5056630191892682399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (n + 1) + (A000007 n - A345141 (n + 1))

end

end A007439.P5056630191892682399

/-! ## A007439.P4075413622176199399

`A346117(n+1)-A057427(n)*A345141(n+1)`
-/

namespace A007439.P4075413622176199399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (n + 1) - A057427 n * A345141 (n + 1)

end

end A007439.P4075413622176199399

/-! ## A007439.P16823191378997947013

`A346117(n+1)-A345141(n+1)%A000123(n)`
-/

namespace A007439.P16823191378997947013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (n + 1) - Int.tmod (A345141 (n + 1)) (A000123 n)

end

end A007439.P16823191378997947013

/-! ## A007439.P10152845884659628048

`A028310(A346117(n+1)-A345141(n+1))`
-/

namespace A007439.P10152845884659628048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A346117 (n + 1) - A345141 (n + 1)).toNat

end

end A007439.P10152845884659628048

/-! ## A007439.P8964347005168014809

`A123108(2*(A346117(n+1)-A345141(n+1)))`
-/

namespace A007439.P8964347005168014809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * (A346117 (n + 1) - A345141 (n + 1))).toNat

end

end A007439.P8964347005168014809

/-!
# A007440: Reversion of g.f. for Fibonacci numbers 1, 1, 2, 3, 5, ....

The programs for A007440, the canonical program `A007440.P17997219923662574142` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007440 has offset 1).

The definition of A007440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007440.P17997219923662574142

`(-1)^n*A343773(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007440

/-- `(-1)^n*A343773(n)` -/
def P17997219923662574142.Spec : Prop :=
  ∀ n, P17997219923662574142.a n = A007440 (n + 1)

theorem P17997219923662574142.correct : P17997219923662574142.Spec := by
  intro n
  simp only [A007440, Nat.add_sub_cancel]

end A007440

/-! ## A007440.P10999493284191568540

`A343773(n)/A033999(n)`
-/

namespace A007440.P10999493284191568540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343773 n : ℚ) / (A033999 n : ℚ)

end

end A007440.P10999493284191568540

namespace A007440

/-- `A343773(n)/A033999(n)` -/
def P10999493284191568540.Spec : Prop :=
  ∀ n, P10999493284191568540.a n = (A007440 (n + 1) : ℚ)

end A007440

/-! ## A007440.P880095052089839781

`A108624(n+1)+A108624(n+2)`
-/

namespace A007440.P880095052089839781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108624 (n + 1) + A108624 (n + 2)

end

end A007440.P880095052089839781

namespace A007440

/-- `A108624(n+1)+A108624(n+2)` -/
def P880095052089839781.Spec : Prop :=
  ∀ n, P880095052089839781.a n = A007440 (n + 1)

end A007440

/-! ## A007440.P18184372896541587541

`A049122(n+2)+A049122(n+2)-A049122(n+1)`
-/

namespace A007440.P18184372896541587541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049122 (n + 2) + (A049122 (n + 2) - A049122 (n + 1))

end

end A007440.P18184372896541587541

namespace A007440

/-- `A049122(n+2)+A049122(n+2)-A049122(n+1)` -/
def P18184372896541587541.Spec : Prop :=
  ∀ n, P18184372896541587541.a n = A007440 (n + 1)

end A007440

/-! ## A007440.P17342102826522579507

`∑{#}[n, C(n, #)*A104565(#)]`
-/

namespace A007440.P17342102826522579507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A104565 k

end

end A007440.P17342102826522579507

namespace A007440

/-- `∑{#}[n, C(n, #)*A104565(#)]` -/
def P17342102826522579507.Spec : Prop :=
  ∀ n, P17342102826522579507.a n = A007440 (n + 1)

end A007440

/-! ## A007440.P15948122716561315081

`A202327(∑[n]+1)`
-/

namespace A007440.P15948122716561315081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202327 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007440.P15948122716561315081

namespace A007440

/-- `A202327(∑[n]+1)` -/
def P15948122716561315081.Spec : Prop :=
  ∀ n, P15948122716561315081.a n = A007440 (n + 1)

end A007440

/-! ## A007440.P5500485736908086416

`A307968(∑[n+2]-1)`
-/

namespace A007440.P5500485736908086416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007440.P5500485736908086416

namespace A007440

/-- `A307968(∑[n+2]-1)` -/
def P5500485736908086416.Spec : Prop :=
  ∀ n, P5500485736908086416.a n = A007440 (n + 1)

end A007440

/-! ## A007440.P12441830480484630548

`A336708(∑[n+2])`
-/

namespace A007440.P12441830480484630548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007440.P12441830480484630548

namespace A007440

/-- `A336708(∑[n+2])` -/
def P12441830480484630548.Spec : Prop :=
  ∀ n, P12441830480484630548.a n = A007440 (n + 1)

end A007440

/-!
# A007442: Inverse binomial transform of primes.

The programs for A007442, the canonical program `A007442.P8636472265102660607` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007442 has offset 1).

The definition of A007442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007442.P8636472265102660607

`∑{#}[n, (-1)^(n+1-#-1)*C(n, #)*A000040(#+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007442

/-- `∑{#}[n, (-1)^(n+1-#-1)*C(n, #)*A000040(#+1)]` -/
def P8636472265102660607.Spec : Prop :=
  ∀ n, P8636472265102660607.a n = (A007442 (n + 1) : ℚ)

end A007442

/-! ## A007442.P4187291591101028197

`A030016(n+1)+A030016(n)`
-/

namespace A007442.P4187291591101028197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 (n + 1) + A030016 n

end

end A007442.P4187291591101028197

namespace A007442

/-- `A030016(n+1)+A030016(n)` -/
def P4187291591101028197.Spec : Prop :=
  ∀ n, P4187291591101028197.a n = A007442 (n + 1)

end A007442

/-! ## A007442.P14878924447000039719

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A007504(#)]`
-/

namespace A007442.P14878924447000039719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A007504 k : ℚ)

end

end A007442.P14878924447000039719

namespace A007442

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A007504(#)]` -/
def P14878924447000039719.Spec : Prop :=
  ∀ n, P14878924447000039719.a n = (A007442 (n + 1) : ℚ)

end A007442

/-! ## A007442.P573620636963944105

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A014284(#+1)]`
-/

namespace A007442.P573620636963944105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A014284 (k + 1) : ℚ)

end

end A007442.P573620636963944105

namespace A007442

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A014284(#+1)]` -/
def P573620636963944105.Spec : Prop :=
  ∀ n, P573620636963944105.a n = (A007442 (n + 1) : ℚ)

end A007442

/-! ## A007442.P10692918674728998113

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A036439(#+1)]`
-/

namespace A007442.P10692918674728998113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A036439 (k + 1) : ℚ)

end

end A007442.P10692918674728998113

namespace A007442

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A036439(#+1)]` -/
def P10692918674728998113.Spec : Prop :=
  ∀ n, P10692918674728998113.a n = (A007442 (n + 1) : ℚ)

end A007442

/-! ## A007442.P15949658980735620147

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A227547(#+1)]`
-/

namespace A007442.P15949658980735620147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A227547 (k + 1) : ℚ)

end

end A007442.P15949658980735620147

namespace A007442

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A227547(#+1)]` -/
def P15949658980735620147.Spec : Prop :=
  ∀ n, P15949658980735620147.a n = (A007442 (n + 1) : ℚ)

end A007442

/-! ## A007442.P16011551512497901604

`A095195(∑[1+n])`
-/

namespace A007442.P16011551512497901604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095195 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007442.P16011551512497901604

namespace A007442

/-- `A095195(∑[1+n])` -/
def P16011551512497901604.Spec : Prop :=
  ∀ n, P16011551512497901604.a n = A007442 (n + 1)

end A007442

/-! ## A007442.P3807639305490443985

`A095195(A000217(n+1))+n%-1`
-/

namespace A007442.P3807639305490443985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095195 (A000217 (n + 1)).toNat + Int.tmod (n : ℤ) (-1)

end

end A007442.P3807639305490443985

namespace A007442

/-- `A095195(A000217(n+1))+n%-1` -/
def P3807639305490443985.Spec : Prop :=
  ∀ n, P3807639305490443985.a n = A007442 (n + 1)

end A007442

/-! ## A007442.P1821155275008763216

`A095195(A000217(n+1))+A000038(n+1)`
-/

namespace A007442.P1821155275008763216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095195 (A000217 (n + 1)).toNat + A000038 (n + 1)

end

end A007442.P1821155275008763216

namespace A007442

/-- `A095195(A000217(n+1))+A000038(n+1)` -/
def P1821155275008763216.Spec : Prop :=
  ∀ n, P1821155275008763216.a n = A007442 (n + 1)

end A007442

/-! ## A007442.P9968907609565433812

`A095195(A000217(n+1))%A332860(n+1)`
-/

namespace A007442.P9968907609565433812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095195 (A000217 (n + 1)).toNat) (A332860 (n + 1))

end

end A007442.P9968907609565433812

namespace A007442

/-- `A095195(A000217(n+1))%A332860(n+1)` -/
def P9968907609565433812.Spec : Prop :=
  ∀ n, P9968907609565433812.a n = A007442 (n + 1)

end A007442

/-! ## A007442.P7255485799230151321

`A095195(A000217(n+1))/and(1, A137786(n))`
-/

namespace A007442.P7255485799230151321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095195 (A000217 (n + 1)).toNat : ℚ) / (Int.land 1 (A137786 n) : ℚ)

end

end A007442.P7255485799230151321

namespace A007442

/-- `A095195(A000217(n+1))/and(1, A137786(n))` -/
def P7255485799230151321.Spec : Prop :=
  ∀ n, P7255485799230151321.a n = (A007442 (n + 1) : ℚ)

end A007442

/-! ## A007442.P5199089945038475718

`A124800(∑[n+1])`
-/

namespace A007442.P5199089945038475718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007442.P5199089945038475718

namespace A007442

/-- `A124800(∑[n+1])` -/
def P5199089945038475718.Spec : Prop :=
  ∀ n, P5199089945038475718.a n = A007442 (n + 1)

end A007442

/-! ## A007442.P9100646407066662935

`A399333(A034856(n+2))`
-/

namespace A007442.P9100646407066662935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399333 (A034856 (n + 2)).toNat

end

end A007442.P9100646407066662935

namespace A007442

/-- `A399333(A034856(n+2))` -/
def P9100646407066662935.Spec : Prop :=
  ∀ n, P9100646407066662935.a n = A007442 (n + 1)

end A007442

/-!
# A007443: Binomial transform of primes.

The programs for A007443, the canonical program `A007443.P1179211190729998217` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007443 has offset 1).

The definition of A007443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007443.P6756983558642818669

`A178167(n)+a(n-1)` with `a(0)=2`
-/

namespace A007443.P6756983558642818669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A178167 n + a (n - 1)

end

end A007443.P6756983558642818669

namespace A007443

/-- `A178167(n)+a(n-1)` -/
def P6756983558642818669.Spec : Prop :=
  ∀ n, P6756983558642818669.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P12300130649984530014

`Δ[A030015(n)]`
-/

namespace A007443.P12300130649984530014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007443.P12300130649984530014

namespace A007443

/-- `Δ[A030015(n)]` -/
def P12300130649984530014.Spec : Prop :=
  ∀ n, P12300130649984530014.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P16189919531762649047

`A030015(n+1)-A030015(n)`
-/

namespace A007443.P16189919531762649047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030015 (n + 1) - A030015 n

end

end A007443.P16189919531762649047

namespace A007443

/-- `A030015(n+1)-A030015(n)` -/
def P16189919531762649047.Spec : Prop :=
  ∀ n, P16189919531762649047.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P1179211190729998217

`∑{#}[n, C(n, #)*A000040(#+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007443

/-- `∑{#}[n, C(n, #)*A000040(#+1)]` -/
def P1179211190729998217.Spec : Prop :=
  ∀ n, P1179211190729998217.a n = A007443 (n + 1)

theorem P1179211190729998217.correct : P1179211190729998217.Spec := by
  intro n
  simp only [A007443, Nat.add_sub_cancel]

end A007443

/-! ## A007443.P14835061630631419565

`∑{#}[n+1, C(n+1, #)*A008347(#)]`
-/

namespace A007443.P14835061630631419565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A008347 k

end

end A007443.P14835061630631419565

namespace A007443

/-- `∑{#}[n+1, C(n+1, #)*A008347(#)]` -/
def P14835061630631419565.Spec : Prop :=
  ∀ n, P14835061630631419565.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P5670540471137784777

`∑{#}[n+1, C(n+1, #)*A036467(#)]`
-/

namespace A007443.P5670540471137784777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A036467 k

end

end A007443.P5670540471137784777

namespace A007443

/-- `∑{#}[n+1, C(n+1, #)*A036467(#)]` -/
def P5670540471137784777.Spec : Prop :=
  ∀ n, P5670540471137784777.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P12301001006853849376

`∑{#}[n+1, C(n+1, #)*A083236(#)]`
-/

namespace A007443.P12301001006853849376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A083236 k

end

end A007443.P12301001006853849376

namespace A007443

/-- `∑{#}[n+1, C(n+1, #)*A083236(#)]` -/
def P12301001006853849376.Spec : Prop :=
  ∀ n, P12301001006853849376.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P9894639125910694655

`∑{#}[n+1, C(n+1, #)*A083237(#)]`
-/

namespace A007443.P9894639125910694655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A083237 k

end

end A007443.P9894639125910694655

namespace A007443

/-- `∑{#}[n+1, C(n+1, #)*A083237(#)]` -/
def P9894639125910694655.Spec : Prop :=
  ∀ n, P9894639125910694655.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P10423635267819411988

`Δ[A399333(∑[n])]`
-/

namespace A007443.P10423635267819411988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399333 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007443.P10423635267819411988

namespace A007443

/-- `Δ[A399333(∑[n])]` -/
def P10423635267819411988.Spec : Prop :=
  ∀ n, P10423635267819411988.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P1192218057505306042

`Δ[record[A399333(n)]]`
-/

namespace A007443.P1192218057505306042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007443.P1192218057505306042

namespace A007443

/-- `Δ[record[A399333(n)]]` -/
def P1192218057505306042.Spec : Prop :=
  ∀ n, P1192218057505306042.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P9262289813603221098

`A287919(∑[n]+n)`
-/

namespace A007443.P9262289813603221098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007443.P9262289813603221098

namespace A007443

/-- `A287919(∑[n]+n)` -/
def P9262289813603221098.Spec : Prop :=
  ∀ n, P9262289813603221098.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P7577672302464455187

`gcd(n, n+1)*A287919(A000096(n))`
-/

namespace A007443.P7577672302464455187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A287919 (A000096 n).toNat

end

end A007443.P7577672302464455187

namespace A007443

/-- `gcd(n, n+1)*A287919(A000096(n))` -/
def P7577672302464455187.Spec : Prop :=
  ∀ n, P7577672302464455187.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P1039839886836798436

`or(A010051(n+1), A287919(A000096(n)))`
-/

namespace A007443.P1039839886836798436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A287919 (A000096 n).toNat)

end

end A007443.P1039839886836798436

namespace A007443

/-- `or(A010051(n+1), A287919(A000096(n)))` -/
def P1039839886836798436.Spec : Prop :=
  ∀ n, P1039839886836798436.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P8455634439583145498

`A287919(A000124(n+1)-2)+char[A027662(n+1)]`
-/

namespace A007443.P8455634439583145498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027662 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (A000124 (n + 1) - 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A007443.P8455634439583145498

namespace A007443

/-- `A287919(A000124(n+1)-2)+char[A027662(n+1)]` -/
def P8455634439583145498.Spec : Prop :=
  ∀ n, P8455634439583145498.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P720804043665543122

`A001222(A005145(n+1))*A287919(A000096(n))`
-/

namespace A007443.P720804043665543122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005145 (n + 1)).toNat * A287919 (A000096 n).toNat

end

end A007443.P720804043665543122

namespace A007443

/-- `A001222(A005145(n+1))*A287919(A000096(n))` -/
def P720804043665543122.Spec : Prop :=
  ∀ n, P720804043665543122.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P9012041115595107186

`A316867(A004725(n))+A287919(A000124(n+1)-2)`
-/

namespace A007443.P9012041115595107186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A004725 n).toNat + A287919 (A000124 (n + 1) - 2).toNat

end

end A007443.P9012041115595107186

namespace A007443

/-- `A316867(A004725(n))+A287919(A000124(n+1)-2)` -/
def P9012041115595107186.Spec : Prop :=
  ∀ n, P9012041115595107186.a n = A007443 (n + 1)

end A007443

/-! ## A007443.P7078240566828159143

`A399333(A134869(n+2))`
-/

namespace A007443.P7078240566828159143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399333 (A134869 (n + 2)).toNat

end

end A007443.P7078240566828159143

namespace A007443

/-- `A399333(A134869(n+2))` -/
def P7078240566828159143.Spec : Prop :=
  ∀ n, P7078240566828159143.a n = A007443 (n + 1)

end A007443

/-!
# A007444: Moebius transform of primes.

The programs for A007444, the canonical program `A007444.P105140508511523845` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007444 has offset 1).

The definition of A007444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007444.P105140508511523845

`∑{d}[n+1, A000040(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007444

/-- `∑{d}[n+1, A000040(#)*A008683((n+1)/#)]` -/
def P105140508511523845.Spec : Prop :=
  ∀ n, P105140508511523845.a n = A007444 (n + 1)

theorem P105140508511523845.correct : P105140508511523845.Spec := by
  intro n
  simp only [A007444, Nat.add_sub_cancel]

end A007444

/-! ## A007444.P6945218340457660263

`∑{d}[n+1, A361707(#)]`
-/

namespace A007444.P6945218340457660263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361707 d

end

end A007444.P6945218340457660263

namespace A007444

/-- `∑{d}[n+1, A361707(#)]` -/
def P6945218340457660263.Spec : Prop :=
  ∀ n, P6945218340457660263.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P9630535279007685120

`A333471(n+1)+A143444(n+1)`
-/

namespace A007444.P9630535279007685120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (n + 1) + A143444 (n + 1)

end

end A007444.P9630535279007685120

namespace A007444

/-- `A333471(n+1)+A143444(n+1)` -/
def P9630535279007685120.Spec : Prop :=
  ∀ n, P9630535279007685120.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P2944635827883446906

`∑{d}[n+1, A008683((n+1)/#)*A000040(#)]`
-/

namespace A007444.P2944635827883446906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000040 d

end

end A007444.P2944635827883446906

namespace A007444

/-- `∑{d}[n+1, A008683((n+1)/#)*A000040(#)]` -/
def P2944635827883446906.Spec : Prop :=
  ∀ n, P2944635827883446906.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P9366304082938136826

`∑{d}[n+1, A007427(#)*A007445((n+1)/#)]`
-/

namespace A007444.P9366304082938136826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007444.P9366304082938136826

namespace A007444

/-- `∑{d}[n+1, A007427(#)*A007445((n+1)/#)]` -/
def P9366304082938136826.Spec : Prop :=
  ∀ n, P9366304082938136826.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P11851248858005560721

`∑{d}[n+1, A055615(#)*A130029((n+1)/#)]`
-/

namespace A007444.P11851248858005560721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A130029 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007444.P11851248858005560721

namespace A007444

/-- `∑{d}[n+1, A055615(#)*A130029((n+1)/#)]` -/
def P11851248858005560721.Spec : Prop :=
  ∀ n, P11851248858005560721.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P6333687447004120848

`∑{d}[n+1, A007428(#)*A361706((n+1)/#)]`
-/

namespace A007444.P6333687447004120848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A361706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007444.P6333687447004120848

namespace A007444

/-- `∑{d}[n+1, A007428(#)*A361706((n+1)/#)]` -/
def P6333687447004120848.Spec : Prop :=
  ∀ n, P6333687447004120848.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P8728131175962302103

`A030013(n+1)+A333471(n+1)-A008683(n+1)`
-/

namespace A007444.P8728131175962302103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) + (A333471 (n + 1) - A008683 (n + 1))

end

end A007444.P8728131175962302103

namespace A007444

/-- `A030013(n+1)+A333471(n+1)-A008683(n+1)` -/
def P8728131175962302103.Spec : Prop :=
  ∀ n, P8728131175962302103.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P7645666225353877300

`A333471(n+1)+A030013(n+1)+1-A007423(n+1)`
-/

namespace A007444.P7645666225353877300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (n + 1) + (A030013 (n + 1) + (1 - A007423 (n + 1)))

end

end A007444.P7645666225353877300

namespace A007444

/-- `A333471(n+1)+A030013(n+1)+1-A007423(n+1)` -/
def P7645666225353877300.Spec : Prop :=
  ∀ n, P7645666225353877300.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P17790132657100349839

`A333471(n+1)+∑{d}[n+1, A008683(#)*A182986((n+1)/#)]`
-/

namespace A007444.P17790132657100349839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A008683 d * A182986 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007444.P17790132657100349839

namespace A007444

/-- `A333471(n+1)+∑{d}[n+1, A008683(#)*A182986((n+1)/#)]` -/
def P17790132657100349839.Spec : Prop :=
  ∀ n, P17790132657100349839.a n = A007444 (n + 1)

end A007444

/-! ## A007444.P10338622923528474815

`A130071(∑[n+1])`
-/

namespace A007444.P10338622923528474815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007444.P10338622923528474815

namespace A007444

/-- `A130071(∑[n+1])` -/
def P10338622923528474815.Spec : Prop :=
  ∀ n, P10338622923528474815.a n = A007444 (n + 1)

end A007444

/-!
# A007445: Inverse Moebius transform of primes.

The programs for A007445, the canonical program `A007445.P6124287304801682810` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007445 has offset 1).

The definition of A007445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007445.P6124287304801682810

`∑{d}[n+1, A000040(#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007445

/-- `∑{d}[n+1, A000040(#)]` -/
def P6124287304801682810.Spec : Prop :=
  ∀ n, P6124287304801682810.a n = A007445 (n + 1)

theorem P6124287304801682810.correct : P6124287304801682810.Spec := by
  intro n
  simp only [A007445, Nat.add_sub_cancel]

end A007445

/-! ## A007445.P14623137671998107598

`∑{d}[n+1, sqrt(A001248(#))]`
-/

namespace A007445.P14623137671998107598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A001248 d : ℝ)

end

end A007445.P14623137671998107598

namespace A007445

/-- `∑{d}[n+1, sqrt(A001248(#))]` -/
def P14623137671998107598.Spec : Prop :=
  ∀ n, P14623137671998107598.a n = (A007445 (n + 1) : ℝ)

end A007445

/-! ## A007445.P14115340139405592466

`∑{d}[n+1, A006093(#)+1]`
-/

namespace A007445.P14115340139405592466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A006093 d + 1)

end

end A007445.P14115340139405592466

namespace A007445

/-- `∑{d}[n+1, A006093(#)+1]` -/
def P14115340139405592466.Spec : Prop :=
  ∀ n, P14115340139405592466.a n = A007445 (n + 1)

theorem P14115340139405592466.correct : P14115340139405592466.Spec := by
  intro n
  simp only [A007445, Nat.add_sub_cancel, A007445.P14115340139405592466.f1, A007445.P14115340139405592466.a, A007445.P6124287304801682810.f1, A007445.P6124287304801682810.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007445

/-! ## A007445.P13915813095622183262

`∑{d}[n+1, A040976(#)+2]`
-/

namespace A007445.P13915813095622183262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A040976 d + 2)

end

end A007445.P13915813095622183262

namespace A007445

/-- `∑{d}[n+1, A040976(#)+2]` -/
def P13915813095622183262.Spec : Prop :=
  ∀ n, P13915813095622183262.a n = A007445 (n + 1)

theorem P13915813095622183262.correct : P13915813095622183262.Spec := by
  intro n
  simp only [A007445, Nat.add_sub_cancel, A007445.P13915813095622183262.f1, A007445.P13915813095622183262.a, A007445.P6124287304801682810.f1, A007445.P6124287304801682810.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007445

/-! ## A007445.P14310894204757947839

`∑{d}[n+1, ceil(sqrt(A084920(#)))]`
-/

namespace A007445.P14310894204757947839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.sqrt (A084920 d : ℝ)⌉

end

end A007445.P14310894204757947839

namespace A007445

/-- `∑{d}[n+1, ceil(sqrt(A084920(#)))]` -/
def P14310894204757947839.Spec : Prop :=
  ∀ n, P14310894204757947839.a n = A007445 (n + 1)

end A007445

/-! ## A007445.P7919048975088770352

`∑{d}[n+1, #*A130030((n+1)/#)]`
-/

namespace A007445.P7919048975088770352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A130030 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007445.P7919048975088770352

namespace A007445

/-- `∑{d}[n+1, #*A130030((n+1)/#)]` -/
def P7919048975088770352.Spec : Prop :=
  ∀ n, P7919048975088770352.a n = A007445 (n + 1)

end A007445

/-! ## A007445.P10500668562752469382

`∑{d}[n+1, A000005(#)*A007444((n+1)/#)]`
-/

namespace A007445.P10500668562752469382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007445.P10500668562752469382

namespace A007445

/-- `∑{d}[n+1, A000005(#)*A007444((n+1)/#)]` -/
def P10500668562752469382.Spec : Prop :=
  ∀ n, P10500668562752469382.a n = A007445 (n + 1)

end A007445

/-! ## A007445.P13716407581291704212

`∑{d}[n+1, A130029(#)*A130054((n+1)/#)]`
-/

namespace A007445.P13716407581291704212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130029 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007445.P13716407581291704212

namespace A007445

/-- `∑{d}[n+1, A130029(#)*A130054((n+1)/#)]` -/
def P13716407581291704212.Spec : Prop :=
  ∀ n, P13716407581291704212.a n = A007445 (n + 1)

end A007445

/-! ## A007445.P18043482945316677337

`∑{d}[n+1, A007425(#)*A361707((n+1)/#)]`
-/

namespace A007445.P18043482945316677337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A361707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007445.P18043482945316677337

namespace A007445

/-- `∑{d}[n+1, A007425(#)*A361707((n+1)/#)]` -/
def P18043482945316677337.Spec : Prop :=
  ∀ n, P18043482945316677337.a n = A007445 (n + 1)

end A007445

/-! ## A007445.P2448141591224860903

`∑{d}[n+1, A008683(#)*A361706((n+1)/#)]`
-/

namespace A007445.P2448141591224860903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A361706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A007445.P2448141591224860903

namespace A007445

/-- `∑{d}[n+1, A008683(#)*A361706((n+1)/#)]` -/
def P2448141591224860903.Spec : Prop :=
  ∀ n, P2448141591224860903.a n = A007445 (n + 1)

end A007445

/-! ## A007445.P4177019781265484030

`∑{d}[n+1, A008578(#+1)]`
-/

namespace A007445.P4177019781265484030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008578 (d + 1)

end

end A007445.P4177019781265484030

namespace A007445

/-- `∑{d}[n+1, A008578(#+1)]` -/
def P4177019781265484030.Spec : Prop :=
  ∀ n, P4177019781265484030.a n = A007445 (n + 1)

end A007445

/-!
# A007446: Exponentiation of e.g.f. for primes.

The programs for A007446, there is no canonical definition to state claims against.
-/

/-! ## A007446.P16568614354737903214

`Δ[A222249(n+1)+A117130(n+1)]`
-/

namespace A007446.P16568614354737903214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (n + 1) + A117130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007446.P16568614354737903214

/-! ## A007446.P10347604466155993733

`A289085(n)+A088462(A365122(n))`
-/

namespace A007446.P10347604466155993733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289085 n + A088462 (A365122 n).toNat

end

end A007446.P10347604466155993733

/-!
# A007448: Knuth's sequence (or Knuth numbers): a(n+1) = 1 + min( 2*a(floor(n/2)), 3*a(floor(n/3)) ).

The programs for A007448, there is no canonical definition to state claims against.
-/

/-! ## A007448.P8926767011235838719

`A002977(∑[char[A002977(n+1)]]+1)`
-/

namespace A007448.P8926767011235838719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007448.P8926767011235838719

/-!
# A007449: a(0) = 7, a(1) = 9; for n >= 0, a(2n+1) = a(2n-1)^2 - a(2n-2), a(2n+2) = a(2n)^2 - a(2n+1).

The programs for A007449, the canonical program `A007449.P3989896350793939790` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007449 has offset 0).

The definition of A007449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007449.P3989896350793939790

`a(n-2)²-a(n-2+(-1)^n)` with `a(0)=7, a(1)=9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007449

/-- `a(n-2)²-a(n-2+(-1)^n)` -/
def P3989896350793939790.Spec : Prop :=
  ∀ n, P3989896350793939790.a n = A007449 n

theorem P3989896350793939790.correct : P3989896350793939790.Spec := by
  intro n
  simp only [A007449]

end A007449

/-!
# A007450: Decimal expansion of 1/17.

The programs for A007450, the canonical program `A007450.P10407583693011024754` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007450 has offset 0).

The definition of A007450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007450.P10407583693011024754

`ogf((5x+3x^2-6x^4+x^5+2x^6-3x^7+7x^8)/(1-x+x^8-x^9))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007450

/-- `ogf((5x+3x^2-6x^4+x^5+2x^6-3x^7+7x^8)/(1-x+x^8-x^9))` -/
def P10407583693011024754.Spec : Prop :=
  ∀ n, P10407583693011024754.a n = A007450 n

theorem P10407583693011024754.correct : P10407583693011024754.Spec := by
  intro n
  simp only [A007450]

end A007450

/-!
# A007451: Denominators of expansion of exp x / sin x.

The programs for A007451, there is no canonical definition to state claims against.
-/

/-! ## A007451.P16397314233863354892

`lcm(A000009(n), A191658(A177916(n+1)))`
-/

namespace A007451.P16397314233863354892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000009 n) (A191658 (A177916 (n + 1)).toNat)

end

end A007451.P16397314233863354892

/-!
# A007452: Expand cos x / exp x and invert nonzero coefficients.

The programs for A007452, there is no canonical definition to state claims against.
-/

/-! ## A007452.P4638490906573937593

`A046980(3*n)*A046981(n)`
-/

namespace A007452.P4638490906573937593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (3 * n) * A046981 n

end

end A007452.P4638490906573937593

/-! ## A007452.P7003637789575267279

`A075553(n+6)*A090932(n)`
-/

namespace A007452.P7003637789575267279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (n + 6) * A090932 n

end

end A007452.P7003637789575267279

/-! ## A007452.P3219113822273609361

`A046978(2*(n+1)+n)*A090932(n)`
-/

namespace A007452.P3219113822273609361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (2 * (n + 1) + n) * A090932 n

end

end A007452.P3219113822273609361

/-! ## A007452.P14441781939209501338

`A046978(A016789(n))*A046981(n)`
-/

namespace A007452.P14441781939209501338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A016789 n).toNat * A046981 n

end

end A007452.P14441781939209501338

/-! ## A007452.P6760331636339481030

`A046980(A159966(n))*A090932(n)`
-/

namespace A007452.P6760331636339481030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A159966 n).toNat * A090932 n

end

end A007452.P6760331636339481030

/-! ## A007452.P7875444293943839666

`A009775(n+1)/A090932(n+1)*A046981(n)`
-/

namespace A007452.P7875444293943839666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009775 (n + 1) : ℚ) / (A090932 (n + 1) : ℚ) * (A046981 n : ℚ)

end

end A007452.P7875444293943839666

/-!
# A007453: Number of unlabeled connected series-parallel posets with n nodes.

The programs for A007453, there is no canonical definition to state claims against.
-/

/-! ## A007453.P8415136390080799682

`A003430(A028310(n)+1)-A007454(n+1)`
-/

namespace A007453.P8415136390080799682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (A028310 n + 1).toNat - A007454 (n + 1)

end

end A007453.P8415136390080799682

/-! ## A007453.P12384929936385533255

`A003430(A254667(n+1))-A007454(n+1)`
-/

namespace A007453.P12384929936385533255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (A254667 (n + 1)).toNat - A007454 (n + 1)

end

end A007453.P12384929936385533255

/-! ## A007453.P11864059759359082438

`A003430(A000007(n)+1+n)-A007454(n+1)`
-/

namespace A007453.P11864059759359082438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (A000007 n + 1 + (n : ℤ)).toNat - A007454 (n + 1)

end

end A007453.P11864059759359082438

/-! ## A007453.P10735241239581671359

`A003430(n+1)-A007454(n+1)%A003430(n+1)`
-/

namespace A007453.P10735241239581671359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (n + 1) - Int.tmod (A007454 (n + 1)) (A003430 (n + 1))

end

end A007453.P10735241239581671359

/-! ## A007453.P8572133871827048648

`2*A339223(n+1)-A339157(n+1)`
-/

namespace A007453.P8572133871827048648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339223 (n + 1) - A339157 (n + 1)

end

end A007453.P8572133871827048648

/-!
# A007454: Number of unlabeled disconnected series-parallel posets with n nodes.

The programs for A007454, there is no canonical definition to state claims against.
-/

/-! ## A007454.P17456680552193199416

`A003430(A028310(n)+1)-A007453(n+1)`
-/

namespace A007454.P17456680552193199416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (A028310 n + 1).toNat - A007453 (n + 1)

end

end A007454.P17456680552193199416

/-! ## A007454.P7152730895880977137

`A003430(A254667(n+1))-A007453(n+1)`
-/

namespace A007454.P7152730895880977137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (A254667 (n + 1)).toNat - A007453 (n + 1)

end

end A007454.P7152730895880977137

/-! ## A007454.P5853993689974043616

`A003430(A000007(n)+1+n)-A007453(n+1)`
-/

namespace A007454.P5853993689974043616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (A000007 n + 1 + (n : ℤ)).toNat - A007453 (n + 1)

end

end A007454.P5853993689974043616

/-! ## A007454.P3677667462285951070

`A003430(n+1)-A007453(n+1)%A003430(n+1)`
-/

namespace A007454.P3677667462285951070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003430 (n + 1) - Int.tmod (A007453 (n + 1)) (A003430 (n + 1))

end

end A007454.P3677667462285951070

/-! ## A007454.P9276156373819590824

`2*A339224(n+1)-A339158(n+1)`
-/

namespace A007454.P9276156373819590824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339224 (n + 1) - A339158 (n + 1)

end

end A007454.P9276156373819590824

/-!
# A007455: Number of subsequences of [ 1,...,n ] in which each odd number has an even neighbor.

The programs for A007455, the canonical program `A007455.P6881377701216706496` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007455 has offset 0).

The definition of A007455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007455.P4880471295610383914

`ogf((1+x+2x^3)/(1-3x^2-2x^4))`
-/

namespace A007455.P4880471295610383914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2] [1, 0, -3, 0, -2] n

end

end A007455.P4880471295610383914

namespace A007455

/-- `ogf((1+x+2x^3)/(1-3x^2-2x^4))` -/
def P4880471295610383914.Spec : Prop :=
  ∀ n, P4880471295610383914.a n = A007455 n

end A007455

/-! ## A007455.P6881377701216706496

`3*a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007455

/-- `3*a(n-2)+2*a(n-4)` -/
def P6881377701216706496.Spec : Prop :=
  ∀ n, (P6881377701216706496.a n : ℤ) = A007455 n

theorem P6881377701216706496.correct : P6881377701216706496.Spec := by
  intro n
  simp only [A007455]

end A007455

/-! ## A007455.P17560862770841797418

`∑[A106434(A008619(n))]+1`
-/

namespace A007455.P17560862770841797418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007455.P17560862770841797418

namespace A007455

/-- `∑[A106434(A008619(n))]+1` -/
def P17560862770841797418.Spec : Prop :=
  ∀ n, P17560862770841797418.a n = A007455 n

end A007455

/-! ## A007455.P4688177301998765651

`Δ[ogf((1+2x)/(1-3x^2-2x^4))]`
-/

namespace A007455.P4688177301998765651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -3, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007455.P4688177301998765651

namespace A007455

/-- `Δ[ogf((1+2x)/(1-3x^2-2x^4))]` -/
def P4688177301998765651.Spec : Prop :=
  ∀ n, P4688177301998765651.a n = A007455 n

end A007455

/-! ## A007455.P11447577104625935653

`(A007481(n+1)-a(n-2))/2` with `a(0)=1, a(1)=1`
-/

namespace A007455.P11447577104625935653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((A007481 (n + 1) : ℚ) - a (n - 2)) / 2

end

end A007455.P11447577104625935653

namespace A007455

/-- `(A007481(n+1)-a(n-2))/2` -/
def P11447577104625935653.Spec : Prop :=
  ∀ n, P11447577104625935653.a n = (A007455 n : ℚ)

end A007455

/-! ## A007455.P4757719692472817508

`A007481(n+1)-A007481(n+3)%A007481(n+1)`
-/

namespace A007455.P4757719692472817508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 (n + 1) - Int.tmod (A007481 (n + 3)) (A007481 (n + 1))

end

end A007455.P4757719692472817508

namespace A007455

/-- `A007481(n+1)-A007481(n+3)%A007481(n+1)` -/
def P4757719692472817508.Spec : Prop :=
  ∀ n, P4757719692472817508.a n = A007455 n

end A007455

/-! ## A007455.P10925705852767184002

`(A007481(n+6)%A007481(n+3))%A007481(n+2)`
-/

namespace A007455.P10925705852767184002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A007481 (n + 6)) (A007481 (n + 3))) (A007481 (n + 2))

end

end A007455.P10925705852767184002

namespace A007455

/-- `(A007481(n+6)%A007481(n+3))%A007481(n+2)` -/
def P10925705852767184002.Spec : Prop :=
  ∀ n, P10925705852767184002.a n = A007455 n

end A007455

/-!
# A007456: Number of days required to spread gossip to n people.

The programs for A007456, the canonical program `A007456.P3000047114738630558` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007456 has offset 1).

The definition of A007456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007456.P6783245771961638015

`ceil(log2(gcd(2, n)*n+1))`
-/

namespace A007456.P6783245771961638015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.gcd 2 n * n + 1 : ℝ)⌉

end

end A007456.P6783245771961638015

namespace A007456

/-- `ceil(log2(gcd(2, n)*n+1))` -/
def P6783245771961638015.Spec : Prop :=
  ∀ n, P6783245771961638015.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P14503978627006412957

`ceil(log2(Δ[n²]))-n%2`
-/

namespace A007456.P14503978627006412957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ - ((n % 2 : ℕ) : ℤ)

end

end A007456.P14503978627006412957

namespace A007456

/-- `ceil(log2(Δ[n²]))-n%2` -/
def P14503978627006412957.Spec : Prop :=
  ∀ n, P14503978627006412957.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P4480092833970803018

`ceil(log2(3*n+1-lcm(2, n)))`
-/

namespace A007456.P4480092833970803018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((3 * n + 1 : ℤ) - (Nat.lcm 2 n : ℤ) : ℝ)⌉

end

end A007456.P4480092833970803018

namespace A007456

/-- `ceil(log2(3*n+1-lcm(2, n)))` -/
def P4480092833970803018.Spec : Prop :=
  ∀ n, P4480092833970803018.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P7811751104459686319

`ceil(log2(2*n+1))-and(1, n)`
-/

namespace A007456.P7811751104459686319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉ - (Nat.land 1 n : ℤ)

end

end A007456.P7811751104459686319

namespace A007456

/-- `ceil(log2(2*n+1))-and(1, n)` -/
def P7811751104459686319.Spec : Prop :=
  ∀ n, P7811751104459686319.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P3000047114738630558

`floor(log2(n*((-1)^n+3)+1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007456

/-- `floor(log2(n*((-1)^n+3)+1))` -/
def P3000047114738630558.Spec : Prop :=
  ∀ n, (P3000047114738630558.a n : ℤ) = A007456 (n + 1)

theorem P3000047114738630558.correct : P3000047114738630558.Spec := by
  intro n
  simp only [A007456, Nat.add_sub_cancel]

end A007456

/-! ## A007456.P15685495672359032904

`ceil(log2(∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]))`
-/

namespace A007456.P15685495672359032904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A007456.P15685495672359032904

namespace A007456

/-- `ceil(log2(∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]))` -/
def P15685495672359032904.Spec : Prop :=
  ∀ n, P15685495672359032904.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P8805104739354118436

`ceil(log2(n*((n+1)%2+1)+1))`
-/

namespace A007456.P8805104739354118436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n * ((n + 1) % 2 + 1) + 1 : ℕ) : ℝ)⌉

end

end A007456.P8805104739354118436

namespace A007456

/-- `ceil(log2(n*((n+1)%2+1)+1))` -/
def P8805104739354118436.Spec : Prop :=
  ∀ n, P8805104739354118436.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P3687644513748237366

`ceil(log2(A066043(n+1)))`
-/

namespace A007456.P3687644513748237366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A066043 (n + 1) : ℝ)⌉

end

end A007456.P3687644513748237366

namespace A007456

/-- `ceil(log2(A066043(n+1)))` -/
def P3687644513748237366.Spec : Prop :=
  ∀ n, P3687644513748237366.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P15968172545378937987

`ceil(log2(A114752(n+1)))`
-/

namespace A007456.P15968172545378937987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A114752 (n + 1) : ℝ)⌉

end

end A007456.P15968172545378937987

namespace A007456

/-- `ceil(log2(A114752(n+1)))` -/
def P15968172545378937987.Spec : Prop :=
  ∀ n, P15968172545378937987.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P13834898570329184689

`A081729(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A007456.P13834898570329184689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A081729 n + a (n - 1)

end

end A007456.P13834898570329184689

namespace A007456

/-- `A081729(n)+a(n-1)` -/
def P13834898570329184689.Spec : Prop :=
  ∀ n, P13834898570329184689.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P2520075012644962045

`A070941(n)-A135528(n+1)`
-/

namespace A007456.P2520075012644962045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A135528 (n + 1)

end

end A007456.P2520075012644962045

namespace A007456

/-- `A070941(n)-A135528(n+1)` -/
def P2520075012644962045.Spec : Prop :=
  ∀ n, P2520075012644962045.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P18317401310673976215

`ceil(log2(n+1))+1-A067742(A020639(n+1))`
-/

namespace A007456.P18317401310673976215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ + 1 - A067742 (A020639 (n + 1)).toNat

end

end A007456.P18317401310673976215

namespace A007456

/-- `ceil(log2(n+1))+1-A067742(A020639(n+1))` -/
def P18317401310673976215.Spec : Prop :=
  ∀ n, P18317401310673976215.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P14219607548707571499

`ceil(log2(A227906(n+1)))`
-/

namespace A007456.P14219607548707571499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A227906 (n + 1) : ℝ)⌉

end

end A007456.P14219607548707571499

namespace A007456

/-- `ceil(log2(A227906(n+1)))` -/
def P14219607548707571499.Spec : Prop :=
  ∀ n, P14219607548707571499.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P10282755883490758316

`A286298(A340632(n))`
-/

namespace A007456.P10282755883490758316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286298 (A340632 n).toNat

end

end A007456.P10282755883490758316

namespace A007456

/-- `A286298(A340632(n))` -/
def P10282755883490758316.Spec : Prop :=
  ∀ n, P10282755883490758316.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P4223851903254734427

`A080791(2*n)+A080791(A071044(n))`
-/

namespace A007456.P4223851903254734427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * n) + A080791 (A071044 n).toNat

end

end A007456.P4223851903254734427

namespace A007456

/-- `A080791(2*n)+A080791(A071044(n))` -/
def P4223851903254734427.Spec : Prop :=
  ∀ n, P4223851903254734427.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P10401928109712308491

`ceil(log2(A087620(2*n)))`
-/

namespace A007456.P10401928109712308491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A087620 (2 * n) : ℝ)⌉

end

end A007456.P10401928109712308491

namespace A007456

/-- `ceil(log2(A087620(2*n)))` -/
def P10401928109712308491.Spec : Prop :=
  ∀ n, P10401928109712308491.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P7590710686667527853

`A029837(A066043(n+1))`
-/

namespace A007456.P7590710686667527853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A066043 (n + 1)).toNat

end

end A007456.P7590710686667527853

namespace A007456

/-- `A029837(A066043(n+1))` -/
def P7590710686667527853.Spec : Prop :=
  ∀ n, P7590710686667527853.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P6706480963286712377

`A029837(A114752(n+1))`
-/

namespace A007456.P6706480963286712377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A114752 (n + 1)).toNat

end

end A007456.P6706480963286712377

namespace A007456

/-- `A029837(A114752(n+1))` -/
def P6706480963286712377.Spec : Prop :=
  ∀ n, P6706480963286712377.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P13101211794861556410

`A029837(A227906(n+1))`
-/

namespace A007456.P13101211794861556410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A227906 (n + 1)).toNat

end

end A007456.P13101211794861556410

namespace A007456

/-- `A029837(A227906(n+1))` -/
def P13101211794861556410.Spec : Prop :=
  ∀ n, P13101211794861556410.a n = A007456 (n + 1)

end A007456

/-! ## A007456.P10436424219774352104

`A092339(2*n)+A005811(n)`
-/

namespace A007456.P10436424219774352104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (2 * n) + A005811 n

end

end A007456.P10436424219774352104

namespace A007456

/-- `A092339(2*n)+A005811(n)` -/
def P10436424219774352104.Spec : Prop :=
  ∀ n, P10436424219774352104.a n = A007456 (n + 1)

end A007456

/-!
# A007457: Number of (j,k): j+k=n, (j,n)=(k,n)=1, j,k squarefree.

The programs for A007457, the canonical program `A007457.P18152130644239980795` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007457 has offset 1).

The definition of A007457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007457.P8342705177482800949

`ceil(atan(n))*A345128(n+1)`
-/

namespace A007457.P8342705177482800949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ * A345128 (n + 1)

end

end A007457.P8342705177482800949

namespace A007457

/-- `ceil(atan(n))*A345128(n+1)` -/
def P8342705177482800949.Spec : Prop :=
  ∀ n, P8342705177482800949.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P18152130644239980795

`A130130(n)*A345128(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A007457

/-- `A130130(n)*A345128(n+1)` -/
def P18152130644239980795.Spec : Prop :=
  ∀ n, P18152130644239980795.a n = A007457 (n + 1)

theorem P18152130644239980795.correct : P18152130644239980795.Spec := by
  intro n
  simp only [A007457, Nat.add_sub_cancel]

end A007457

/-! ## A007457.P3159561786658451262

`A000032(C(n, n²))*A345128(n+1)`
-/

namespace A007457.P3159561786658451262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n (n ^ 2)) * A345128 (n + 1)

end

end A007457.P3159561786658451262

namespace A007457

/-- `A000032(C(n, n²))*A345128(n+1)` -/
def P3159561786658451262.Spec : Prop :=
  ∀ n, P3159561786658451262.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P6403199242892983333

`A020639(a(n-1))*A345128(n+1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A007457.P6403199242892983333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A345128 (n + 1)

end

end A007457.P6403199242892983333

namespace A007457

/-- `A020639(a(n-1))*A345128(n+1)` -/
def P6403199242892983333.Spec : Prop :=
  ∀ n, P6403199242892983333.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P7205048170327198402

`A014963(A060632(n))*A345128(n+1)`
-/

namespace A007457.P7205048170327198402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A060632 n).toNat * A345128 (n + 1)

end

end A007457.P7205048170327198402

namespace A007457

/-- `A014963(A060632(n))*A345128(n+1)` -/
def P7205048170327198402.Spec : Prop :=
  ∀ n, P7205048170327198402.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P213674122561707512

`A020639(A075526(n))*A345128(n+1)`
-/

namespace A007457.P213674122561707512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A075526 n).toNat * A345128 (n + 1)

end

end A007457.P213674122561707512

namespace A007457

/-- `A020639(A075526(n))*A345128(n+1)` -/
def P213674122561707512.Spec : Prop :=
  ∀ n, P213674122561707512.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P4519596903407111273

`A020639(A000010(n+1))*A345128(n+1)`
-/

namespace A007457.P4519596903407111273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A345128 (n + 1)

end

end A007457.P4519596903407111273

namespace A007457

/-- `A020639(A000010(n+1))*A345128(n+1)` -/
def P4519596903407111273.Spec : Prop :=
  ∀ n, P4519596903407111273.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P13876583269810384384

`A020639(A038522(n))*A345128(n+1)`
-/

namespace A007457.P13876583269810384384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038522 n).toNat * A345128 (n + 1)

end

end A007457.P13876583269810384384

namespace A007457

/-- `A020639(A038522(n))*A345128(n+1)` -/
def P13876583269810384384.Spec : Prop :=
  ∀ n, P13876583269810384384.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P13808372334988903332

`A020639(A018819(n))*A345128(n+1)`
-/

namespace A007457.P13808372334988903332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018819 n).toNat * A345128 (n + 1)

end

end A007457.P13808372334988903332

namespace A007457

/-- `A020639(A018819(n))*A345128(n+1)` -/
def P13808372334988903332.Spec : Prop :=
  ∀ n, P13808372334988903332.a n = A007457 (n + 1)

end A007457

/-! ## A007457.P15010429389978832793

`A001221(A000423(n+1))*A345128(n+1)`
-/

namespace A007457.P15010429389978832793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000423 (n + 1)).toNat * A345128 (n + 1)

end

end A007457.P15010429389978832793

namespace A007457

/-- `A001221(A000423(n+1))*A345128(n+1)` -/
def P15010429389978832793.Spec : Prop :=
  ∀ n, P15010429389978832793.a n = A007457 (n + 1)

end A007457

/-!
# A007459: Higgs's primes: a(n+1) = smallest prime > a(n) such that a(n+1)-1 divides the product (a(1)...a(n))^2.

The programs for A007459, there is no canonical definition to state claims against.
-/

/-! ## A007459.P12110263260514237529

`A042987(lt[A186745(n), A152751(n)])`
-/

namespace A007459.P12110263260514237529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007459.P12110263260514237529

/-! ## A007459.P11029124397111873740

`A042987(lt[A186745(n), A153794(n)])`
-/

namespace A007459.P11029124397111873740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007459.P11029124397111873740

/-! ## A007459.P4832075888989767523

`A089189(lt[A186745(n), A152751(n)])`
-/

namespace A007459.P4832075888989767523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007459.P4832075888989767523

/-! ## A007459.P9208005584870564718

`A089189(lt[A186745(n), A153794(n)])`
-/

namespace A007459.P9208005584870564718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A007459.P9208005584870564718

/-! ## A007459.P2128703575601240133

`filter[A042987(n+1), A102609(#)]`
-/

namespace A007459.P2128703575601240133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A007459.P2128703575601240133

/-!
# A007460: Shifts left under OR-convolution with itself.

The programs for A007460, there is no canonical definition to state claims against.
-/

/-! ## A007460.P12553828303372299860

`A216345(A194640(ceil(∑[3^(n-1)/2])))`
-/

namespace A007460.P12553828303372299860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A194640 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat).toNat

end

end A007460.P12553828303372299860

/-! ## A007460.P14661216019574261169

`A064458(A027107(n))+A005426(n)`
-/

namespace A007460.P14661216019574261169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A027107 n).toNat + A005426 n

end

end A007460.P14661216019574261169

/-! ## A007460.P10522244651564248065

`A005426(n)-(A064458(n)-A064458(A027107(n)))`
-/

namespace A007460.P10522244651564248065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005426 n - (A064458 n - A064458 (A027107 n).toNat)

end

end A007460.P10522244651564248065

/-! ## A007460.P7579950163516211

`A064458(A027107(n))+A001462(A011784(n+1)+1)-1`
-/

namespace A007460.P7579950163516211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A027107 n).toNat + (A001462 (A011784 (n + 1) + 1).toNat - 1)

end

end A007460.P7579950163516211

/-!
# A007462: Shifts left under XOR-convolution with itself.

The programs for A007462, there is no canonical definition to state claims against.
-/

/-! ## A007462.P7816053147102878200

`A381104(A324759(n+1)+A161408(n+3))`
-/

namespace A007462.P7816053147102878200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381104 (A324759 (n + 1) + A161408 (n + 3)).toNat

end

end A007462.P7816053147102878200

/-! ## A007462.P14253443375440298404

`A381104(A382746(n+1)+A161408(n+3))`
-/

namespace A007462.P14253443375440298404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381104 (A382746 (n + 1) + A161408 (n + 3)).toNat

end

end A007462.P14253443375440298404

/-! ## A007462.P2870175954449813024

`A118957(a(n-1)+1)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A007462.P2870175954449813024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  A118957 (a (n - 1) + 1).toNat + 1

end

end A007462.P2870175954449813024

/-!
# A007463: Shifts left under lcm-convolution with itself.

The programs for A007463, there is no canonical definition to state claims against.
-/

/-! ## A007463.P14924540721865742193

`round(root(A182933(∑[n+3]), 4))`
-/

namespace A007463.P14924540721865742193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182933 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ (1 / (4 : ℝ)))

end

end A007463.P14924540721865742193

/-! ## A007463.P15311365919676050359

`A329161(ceil(2^(n-1)))-1`
-/

namespace A007463.P15311365919676050359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329161 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - 1

end

end A007463.P15311365919676050359

/-! ## A007463.P8160285530764703640

`A051889(A149968(n))`
-/

namespace A007463.P8160285530764703640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A149968 n).toNat

end

end A007463.P8160285530764703640

/-!
# A007464: Shifts left under GCD-convolution with itself.

The programs for A007464, there is no canonical definition to state claims against.
-/

/-! ## A007464.P2368363243517370435

`abs(Δ[A178063(abs(1-n))])`
-/

namespace A007464.P2368363243517370435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178063 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007464.P2368363243517370435

/-! ## A007464.P14346913635353773875

`abs(A178063(abs(1-n))-A178063(n))`
-/

namespace A007464.P14346913635353773875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A178063 |1 - (n : ℤ)|.toNat - A178063 n)|

end

end A007464.P14346913635353773875

/-!
# A007465: Exponential-convolution of triangular numbers with themselves.

The programs for A007465, the canonical program `A007465.P1828461436799989893` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007465 has offset 0).

The definition of A007465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007465.P1828461436799989893

`ogf((1-4x+10x^2-12x^3+6x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007465

/-- `ogf((1-4x+10x^2-12x^3+6x^4)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P1828461436799989893.Spec : Prop :=
  ∀ n, P1828461436799989893.a n = A007465 n

theorem P1828461436799989893.correct : P1828461436799989893.Spec := by
  intro n
  simp only [A007465]

end A007465

/-! ## A007465.P16580226949312639955

`Δ[A276042(n)-A002064(n)]`
-/

namespace A007465.P16580226949312639955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276042 n - A002064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007465.P16580226949312639955

namespace A007465

/-- `Δ[A276042(n)-A002064(n)]` -/
def P16580226949312639955.Spec : Prop :=
  ∀ n, P16580226949312639955.a n = A007465 n

end A007465

/-! ## A007465.P86996858760494953

`Δ[A276042(n)-A036289(n)]`
-/

namespace A007465.P86996858760494953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276042 n - A036289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007465.P86996858760494953

namespace A007465

/-- `Δ[A276042(n)-A036289(n)]` -/
def P86996858760494953.Spec : Prop :=
  ∀ n, P86996858760494953.a n = A007465 n

end A007465

/-!
# A007466: Exponential-convolution of natural numbers with themselves.

The programs for A007466, the canonical program `A007466.P14166367235937485885` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007466 has offset 1).

The definition of A007466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007466.P14166367235937485885

`2^n*(n+1+n*(n-1)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007466

/-- `2^n*(n+1+n*(n-1)/4)` -/
def P14166367235937485885.Spec : Prop :=
  ∀ n, P14166367235937485885.a n = (A007466 (n + 1) : ℚ)

end A007466

/-! ## A007466.P401447649073645809

`ogf((1-2x+2x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A007466.P401447649073645809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -6, 12, -8] n

end

end A007466.P401447649073645809

namespace A007466

/-- `ogf((1-2x+2x^2)/(1-6x+12x^2-8x^3))` -/
def P401447649073645809.Spec : Prop :=
  ∀ n, P401447649073645809.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P13646693930524063654

`∑{#}[n+2, C(n+2, #)*floor(#/2)²]`
-/

namespace A007466.P13646693930524063654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2) k : ℤ) * ⌊(k : ℚ) / 2⌋ ^ 2

end

end A007466.P13646693930524063654

namespace A007466

/-- `∑{#}[n+2, C(n+2, #)*floor(#/2)²]` -/
def P13646693930524063654.Spec : Prop :=
  ∀ n, P13646693930524063654.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P10815989780874756658

`A228643(C(n+1, 2)+n+1)`
-/

namespace A007466.P10815989780874756658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228643 (Nat.choose (n + 1) 2 + (n + 1))

end

end A007466.P10815989780874756658

namespace A007466

/-- `A228643(C(n+1, 2)+n+1)` -/
def P10815989780874756658.Spec : Prop :=
  ∀ n, P10815989780874756658.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P2898367291261451323

`∑[(4/(n+1)+2)*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A007466.P2898367291261451323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (4 / (n + 1 : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007466.P2898367291261451323

namespace A007466

/-- `∑[(4/(n+1)+2)*a(n-1)]` -/
def P2898367291261451323.Spec : Prop :=
  ∀ n, P2898367291261451323.a n = (A007466 (n + 1) : ℚ)

end A007466

/-! ## A007466.P11938154552031871176

`a(n-1)+(n+1)/2^(2-n)+a(n-1)+(n+1)/2^(2-n)` with `a(0)=1`
-/

namespace A007466.P11938154552031871176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ) + (a (n - 1) + (n + 1 : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ))

end

end A007466.P11938154552031871176

namespace A007466

/-- `a(n-1)+(n+1)/2^(2-n)+a(n-1)+(n+1)/2^(2-n)` -/
def P11938154552031871176.Spec : Prop :=
  ∀ n, P11938154552031871176.a n = (A007466 (n + 1) : ℚ)

end A007466

/-! ## A007466.P18273119062396560622

`∑[∑[A128183(n)]]`
-/

namespace A007466.P18273119062396560622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128183 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007466.P18273119062396560622

namespace A007466

/-- `∑[∑[A128183(n)]]` -/
def P18273119062396560622.Spec : Prop :=
  ∀ n, P18273119062396560622.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P14444681964093217309

`2^n+(∑[n]+n)*A011782(n)`
-/

namespace A007466.P14444681964093217309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * A011782 n

end

end A007466.P14444681964093217309

namespace A007466

/-- `2^n+(∑[n]+n)*A011782(n)` -/
def P14444681964093217309.Spec : Prop :=
  ∀ n, P14444681964093217309.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P749345901547689204

`floor((A000217(n+1)+1)*2^(n-1))`
-/

namespace A007466.P749345901547689204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A007466.P749345901547689204

namespace A007466

/-- `floor((A000217(n+1)+1)*2^(n-1))` -/
def P749345901547689204.Spec : Prop :=
  ∀ n, P749345901547689204.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P16928257036012958200

`n*2^(n-1)+A131577(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A007466.P16928257036012958200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + ((A131577 n : ℚ) + 2 * a (n - 1))

end

end A007466.P16928257036012958200

namespace A007466

/-- `n*2^(n-1)+A131577(n)+2*a(n-1)` -/
def P16928257036012958200.Spec : Prop :=
  ∀ n, P16928257036012958200.a n = (A007466 (n + 1) : ℚ)

end A007466

/-! ## A007466.P10996252761797232777

`A001792(n)+A001788(n)`
-/

namespace A007466.P10996252761797232777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + A001788 n

end

end A007466.P10996252761797232777

namespace A007466

/-- `A001792(n)+A001788(n)` -/
def P10996252761797232777.Spec : Prop :=
  ∀ n, P10996252761797232777.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P9512778940425853170

`A053545(n)+A002064(n)`
-/

namespace A007466.P9512778940425853170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n + A002064 n

end

end A007466.P9512778940425853170

namespace A007466

/-- `A053545(n)+A002064(n)` -/
def P9512778940425853170.Spec : Prop :=
  ∀ n, P9512778940425853170.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P185616203311589091

`A053730(n)+A036289(n)`
-/

namespace A007466.P185616203311589091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 n + A036289 n

end

end A007466.P185616203311589091

namespace A007466

/-- `A053730(n)+A036289(n)` -/
def P185616203311589091.Spec : Prop :=
  ∀ n, P185616203311589091.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P3806825807459663803

`A131577(n)+A080929(n)`
-/

namespace A007466.P3806825807459663803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A080929 n

end

end A007466.P3806825807459663803

namespace A007466

/-- `A131577(n)+A080929(n)` -/
def P3806825807459663803.Spec : Prop :=
  ∀ n, P3806825807459663803.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P1556401854895000268

`A001788(n)+Δ[A001787(n)]`
-/

namespace A007466.P1556401854895000268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (f1 (n + 1) - f1 n)

end

end A007466.P1556401854895000268

namespace A007466

/-- `A001788(n)+Δ[A001787(n)]` -/
def P1556401854895000268.Spec : Prop :=
  ∀ n, P1556401854895000268.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P5782983938986623879

`A001815(n)+A001787(n+1)`
-/

namespace A007466.P5782983938986623879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + A001787 (n + 1)

end

end A007466.P5782983938986623879

namespace A007466

/-- `A001815(n)+A001787(n+1)` -/
def P5782983938986623879.Spec : Prop :=
  ∀ n, P5782983938986623879.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P720881504032293865

`A104270(n+1)+A001787(n)`
-/

namespace A007466.P720881504032293865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) + A001787 n

end

end A007466.P720881504032293865

namespace A007466

/-- `A104270(n+1)+A001787(n)` -/
def P720881504032293865.Spec : Prop :=
  ∀ n, P720881504032293865.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P11289607314434799071

`A178987(n)+A053220(n+1)`
-/

namespace A007466.P11289607314434799071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A053220 (n + 1)

end

end A007466.P11289607314434799071

namespace A007466

/-- `A178987(n)+A053220(n+1)` -/
def P11289607314434799071.Spec : Prop :=
  ∀ n, P11289607314434799071.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P9750874139804254713

`A001793(n+1)-A001787(n)`
-/

namespace A007466.P9750874139804254713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - A001787 n

end

end A007466.P9750874139804254713

namespace A007466

/-- `A001793(n+1)-A001787(n)` -/
def P9750874139804254713.Spec : Prop :=
  ∀ n, P9750874139804254713.a n = A007466 (n + 1)

end A007466

/-! ## A007466.P9739274259600381492

`A001792(n)+A048506(n)-1`
-/

namespace A007466.P9739274259600381492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A048506 n - 1)

end

end A007466.P9739274259600381492

namespace A007466

/-- `A001792(n)+A048506(n)-1` -/
def P9739274259600381492.Spec : Prop :=
  ∀ n, P9739274259600381492.a n = A007466 (n + 1)

end A007466

/-!
# A007467: Product of next n primes.

The programs for A007467, there is no canonical definition to state claims against.
-/

/-! ## A007467.P7152928409568430428

`ratio[A113511(n)]`
-/

namespace A007467.P7152928409568430428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113511 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A007467.P7152928409568430428

/-! ## A007467.P6577751283464369485

`ratio[A001041(∑[n])]`
-/

namespace A007467.P6577751283464369485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001041 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A007467.P6577751283464369485

/-! ## A007467.P12070133309506149658

`ratio[A002110(∑[n])]`
-/

namespace A007467.P12070133309506149658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A007467.P12070133309506149658

/-! ## A007467.P15357155993074129393

`A113511(n+1)/A113511(n)`
-/

namespace A007467.P15357155993074129393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113511 (n + 1) : ℚ) / (A113511 n : ℚ)

end

end A007467.P15357155993074129393

/-!
# A007468: Sum of next n primes.

The programs for A007468, there is no canonical definition to state claims against.
-/

/-! ## A007468.P5130708896182920583

`A034956(n+1)-A082749(n+1)`
-/

namespace A007468.P5130708896182920583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A082749 (n + 1)

end

end A007468.P5130708896182920583

/-! ## A007468.P4633928236747068048

`A125130(n+1)-A007504(A000217(n))`
-/

namespace A007468.P4633928236747068048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125130 (n + 1) - A007504 (A000217 n).toNat

end

end A007468.P4633928236747068048

/-! ## A007468.P4673819340537395058

`Δ[A007504(∑[n])]`
-/

namespace A007468.P4673819340537395058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007468.P4673819340537395058

/-! ## A007468.P2557941840984730729

`abs(Δ[A007504(C(n+1, 2))])`
-/

namespace A007468.P2557941840984730729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007468.P2557941840984730729

/-! ## A007468.P18390042188370154480

`abs(Δ[A007504((n²+n)/2)])`
-/

namespace A007468.P18390042188370154480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007468.P18390042188370154480

/-! ## A007468.P3729191812257333555

`Δ[A007504(A000217(n))]*A033999(2*n)`
-/

namespace A007468.P3729191812257333555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (2 * n)

end

end A007468.P3729191812257333555

/-! ## A007468.P10399124416507270278

`A010054(3*n+2)+Δ[A007504(A000217(n))]`
-/

namespace A007468.P10399124416507270278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2) + (f1 (n + 1) - f1 n)

end

end A007468.P10399124416507270278

/-! ## A007468.P13469014929178565538

`Δ[A007504(A000217(n))]%A000578(3*(n+1))`
-/

namespace A007468.P13469014929178565538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000578 (3 * (n + 1)))

end

end A007468.P13469014929178565538

/-! ## A007468.P5463025939109394887

`A007504(A008795(2*n))-A007504((n²+n)/2)`
-/

namespace A007468.P5463025939109394887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A008795 (2 * n)).toNat - A007504 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A007468.P5463025939109394887

/-! ## A007468.P9432650177880942065

`Δ[A007504((n²+n)/2)]%(A000041(n)*A106904(n+1))`
-/

namespace A007468.P9432650177880942065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 n * A106904 (n + 1))

end

end A007468.P9432650177880942065

/-! ## A007468.P15490256103632621529

`record[A007504(A286158(n+1))-A007504(n)]`
-/

namespace A007468.P15490256103632621529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A286158 (n + 1)).toNat - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007468.P15490256103632621529

/-! ## A007468.P2413434669537360247

`record[A007504(A004736(n+1)+n)-A007504(n)]`
-/

namespace A007468.P2413434669537360247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A004736 (n + 1) + (n : ℤ)).toNat - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007468.P2413434669537360247

/-! ## A007468.P7557845539837137716

`Δ[A014284(∑[n]+1)]`
-/

namespace A007468.P7557845539837137716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007468.P7557845539837137716

/-! ## A007468.P3602099209882229132

`Δ[A036439(∑[n]+1)]`
-/

namespace A007468.P3602099209882229132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007468.P3602099209882229132

/-! ## A007468.P14296530083277125010

`Δ[A175965(∑[n]+2)]`
-/

namespace A007468.P14296530083277125010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007468.P14296530083277125010

/-! ## A007468.P1640282671565953206

`Δ[A007504(C(n+1, 2))]%A220160(n+1)`
-/

namespace A007468.P1640282671565953206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A220160 (n + 1))

end

end A007468.P1640282671565953206

/-! ## A007468.P11249804024691607417

`Δ[A007504(A000217(n))]%A220160(n+1)`
-/

namespace A007468.P11249804024691607417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A220160 (n + 1))

end

end A007468.P11249804024691607417

/-!
# A007469: Shifts left 2 places under Stirling2 transform.

The programs for A007469, there is no canonical definition to state claims against.
-/

/-! ## A007469.P8875652005187207461

`A345178(n+1)+A345177(n+1)`
-/

namespace A007469.P8875652005187207461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345178 (n + 1) + A345177 (n + 1)

end

end A007469.P8875652005187207461

/-! ## A007469.P14988902886155966606

`∑[A077766(n!+1)]-n`
-/

namespace A007469.P14988902886155966606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (Nat.factorial n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A007469.P14988902886155966606

/-! ## A007469.P7537736992379711433

`A066490(n!+n+1-2*n)+1`
-/

namespace A007469.P7537736992379711433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 ((Nat.factorial n : ℤ) + ((n + 1 : ℤ) - (2 * n : ℤ))).toNat + 1

end

end A007469.P7537736992379711433

/-! ## A007469.P18050891690375376296

`A037915(A034973(n!))`
-/

namespace A007469.P18050891690375376296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A034973 (Nat.factorial n)).toNat

end

end A007469.P18050891690375376296

/-!
# A007470: Shifts left when Stirling2 transform is applied twice.

The programs for A007470, there is no canonical definition to state claims against.
-/

/-! ## A007470.P4806435389043145520

`A081599(A132070(n))`
-/

namespace A007470.P4806435389043145520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (A132070 n).toNat

end

end A007470.P4806435389043145520

/-! ## A007470.P10814295414506536808

`A008620(A164406(∑[n]))`
-/

namespace A007470.P10814295414506536808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A164406 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A007470.P10814295414506536808

/-!
# A007471: Sum of digits of n a(n) is n ( = A003634/n), or 0 if no such number exists.

The programs for A007471, there is no canonical definition to state claims against.
-/

/-! ## A007471.P2107071856929620286

`∑{digits}[A003634(n+1), #]`
-/

namespace A007471.P2107071856929620286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A007471.P2107071856929620286

/-! ## A007471.P5922239061669860817

`A003634(n-log2(1/2))/(n+1)`
-/

namespace A007471.P5922239061669860817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003634 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / (n + 1 : ℚ)

end

end A007471.P5922239061669860817

/-! ## A007471.P3143404859758713783

`-(A003634(n+1)/A001478(n+1))`
-/

namespace A007471.P3143404859758713783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A003634 (n + 1) : ℚ) / (A001478 (n + 1) : ℚ))

end

end A007471.P3143404859758713783

/-! ## A007471.P4079196462077306040

`floor(A003634(n+1)/A000027(n+1))`
-/

namespace A007471.P4079196462077306040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003634 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)⌋

end

end A007471.P4079196462077306040

/-! ## A007471.P1800703380063882586

`A007953(A003634(n+1))`
-/

namespace A007471.P1800703380063882586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A003634 (n + 1)).toNat

end

end A007471.P1800703380063882586

/-! ## A007471.P16743464102040802715

`A061762(A003634(10*(n+1)))`
-/

namespace A007471.P16743464102040802715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A003634 (10 * (n + 1))).toNat

end

end A007471.P16743464102040802715

/-!
# A007472: Shifts 2 places left when binomial transform is applied twice with a(0) = a(1) = 1.

The programs for A007472, there is no canonical definition to state claims against.
-/

/-! ## A007472.P7553108474129183284

`A351143(n)+A351028(n)`
-/

namespace A007472.P7553108474129183284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n + A351028 n

end

end A007472.P7553108474129183284

/-! ## A007472.P10557417958082147307

`A351143(n)+abs(abs(A350456(n))-A351143(n))`
-/

namespace A007472.P10557417958082147307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n + |(|A350456 n| - A351143 n)|

end

end A007472.P10557417958082147307

/-! ## A007472.P4930736766635511919

`A351028(n)+A351028(n)+A033999(n)*A350456(n)`
-/

namespace A007472.P4930736766635511919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351028 n + (A351028 n + A033999 n * A350456 n)

end

end A007472.P4930736766635511919

/-! ## A007472.P12761878051313770733

`A351143(n)+A351143(n)-A033999(n)*A350456(n)`
-/

namespace A007472.P12761878051313770733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n + (A351143 n - A033999 n * A350456 n)

end

end A007472.P12761878051313770733

/-! ## A007472.P18412143652563624126

`A351143(n)-A001489(abs(abs(A350456(n))-A351143(n)))`
-/

namespace A007472.P18412143652563624126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351143 n - A001489 |(|A350456 n| - A351143 n)|.toNat

end

end A007472.P18412143652563624126

/-!
# A007473: Dimension of space of Vassiliev knot invariants of order n.

The programs for A007473, there is no canonical definition to state claims against.
-/

/-! ## A007473.P5880630705281595887

`∑[A007293(n)]`
-/

namespace A007473.P5880630705281595887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007473.P5880630705281595887

/-! ## A007473.P14984306419910930465

`A004182(A014595(n))`
-/

namespace A007473.P14984306419910930465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A014595 n).toNat

end

end A007473.P14984306419910930465

/-! ## A007473.P4804215846689447104

`A014595(A025483(n))`
-/

namespace A007473.P4804215846689447104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014595 (A025483 n).toNat

end

end A007473.P4804215846689447104

/-! ## A007473.P12817572285670078436

`A014595(A025484(n))`
-/

namespace A007473.P12817572285670078436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014595 (A025484 n).toNat

end

end A007473.P12817572285670078436

/-! ## A007473.P7867050738647145481

`A014595(A030066(n))`
-/

namespace A007473.P7867050738647145481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014595 (A030066 n).toNat

end

end A007473.P7867050738647145481

/-!
# A007474: Number of circular chord diagrams with n chords, up to rotational symmetry.

The programs for A007474, there is no canonical definition to state claims against.
-/

/-! ## A007474.P2424501401573943427

`A264749(Δ[A052442(n+1)])`
-/

namespace A007474.P2424501401573943427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (f1 (n + 1) - f1 n).toNat

end

end A007474.P2424501401573943427

/-! ## A007474.P16322309189554990823

`A103221(A316621(n*a(n-1)+1))` with `a(0)=1`
-/

namespace A007474.P16322309189554990823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103221 (A316621 ((n : ℤ) * a (n - 1) + 1).toNat).toNat

end

end A007474.P16322309189554990823

/-! ## A007474.P12390929008402842581

`A008615(A123306(n)+A001529(n))`
-/

namespace A007474.P12390929008402842581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A123306 n + A001529 n).toNat

end

end A007474.P12390929008402842581

/-!
# A007476: Shifts 2 places left under binomial transform.

The programs for A007476, there is no canonical definition to state claims against.
-/

/-! ## A007476.P7816225648774156504

`A000994(n)+A000995(n)`
-/

namespace A007476.P7816225648774156504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000994 n + A000995 n

end

end A007476.P7816225648774156504

/-! ## A007476.P16297710603893897511

`A210545(A212342(n+1))`
-/

namespace A007476.P16297710603893897511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A212342 (n + 1)).toNat

end

end A007476.P16297710603893897511

/-! ## A007476.P9650174223737035210

`A210545(A060577(n)+3)`
-/

namespace A007476.P9650174223737035210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A060577 n + 3).toNat

end

end A007476.P9650174223737035210

/-! ## A007476.P6578748380018584920

`A210545(A347553(n+3))`
-/

namespace A007476.P6578748380018584920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A347553 (n + 3)).toNat

end

end A007476.P6578748380018584920

/-! ## A007476.P3202395646715564199

`A210545(A027379(n)-n)`
-/

namespace A007476.P3202395646715564199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A027379 n - (n : ℤ)).toNat

end

end A007476.P3202395646715564199

/-! ## A007476.P16149697859746443255

`A210545(A028310(∑[n]+n))`
-/

namespace A007476.P16149697859746443255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A007476.P16149697859746443255

/-! ## A007476.P4044342903164197445

`A210545(A000096(A000007(n)+n))`
-/

namespace A007476.P4044342903164197445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000096 (A000007 n + (n : ℤ)).toNat).toNat

end

end A007476.P4044342903164197445

/-! ## A007476.P10955881818502798372

`A210545(A000096(A000038(n)+n))`
-/

namespace A007476.P10955881818502798372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A000096 (A000038 n + (n : ℤ)).toNat).toNat

end

end A007476.P10955881818502798372

/-! ## A007476.P15079110436178830646

`A210545(A028310(n)+A000217(n))`
-/

namespace A007476.P15079110436178830646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A028310 n + A000217 n).toNat

end

end A007476.P15079110436178830646

/-! ## A007476.P13531775601680382323

`A210545(or(A000007(n), A000096(n)))`
-/

namespace A007476.P13531775601680382323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (Int.lor (A000007 n) (A000096 n)).toNat

end

end A007476.P13531775601680382323

/-!
# A007477: Shifts 2 places left when convolved with itself.

The programs for A007477, the canonical program `A007477.P14592794955063562945` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007477 has offset 0).

The definition of A007477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007477.P10601547474342548872

`abs(Δ[A349015(n)])`
-/

namespace A007477.P10601547474342548872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007477.P10601547474342548872

namespace A007477

/-- `abs(Δ[A349015(n)])` -/
def P10601547474342548872.Spec : Prop :=
  ∀ n, P10601547474342548872.a n = A007477 n

end A007477

/-! ## A007477.P17619692032585718902

`A213705(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A007477.P17619692032585718902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A213705 n - a (n - 1)

end

end A007477.P17619692032585718902

namespace A007477

/-- `A213705(n)-a(n-1)` -/
def P17619692032585718902.Spec : Prop :=
  ∀ n, P17619692032585718902.a n = A007477 n

end A007477

/-! ## A007477.P10302671566372364892

`gcd(Δ[A349015(n)], A000038(n))`
-/

namespace A007477.P10302671566372364892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A007477.P10302671566372364892

namespace A007477

/-- `gcd(Δ[A349015(n)], A000038(n))` -/
def P10302671566372364892.Spec : Prop :=
  ∀ n, (P10302671566372364892.a n : ℤ) = A007477 n

end A007477

/-! ## A007477.P16145195613587303847

`A115178(abs(1-n))+A115178(n)`
-/

namespace A007477.P16145195613587303847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115178 |1 - (n : ℤ)|.toNat + A115178 n

end

end A007477.P16145195613587303847

namespace A007477

/-- `A115178(abs(1-n))+A115178(n)` -/
def P16145195613587303847.Spec : Prop :=
  ∀ n, P16145195613587303847.a n = A007477 n

end A007477

/-! ## A007477.P15501077242650295109

`Δ[A349015(n)]*A062157(A327529(n+1)+1)`
-/

namespace A007477.P15501077242650295109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 (A327529 (n + 1) + 1).toNat

end

end A007477.P15501077242650295109

namespace A007477

/-- `Δ[A349015(n)]*A062157(A327529(n+1)+1)` -/
def P15501077242650295109.Spec : Prop :=
  ∀ n, P15501077242650295109.a n = A007477 n

end A007477

/-! ## A007477.P14592794955063562945

`∑{#}[n, (-1)^(n-#)*C(n, #)*A105633(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007477

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A105633(#)]` -/
def P14592794955063562945.Spec : Prop :=
  ∀ n, P14592794955063562945.a n = (A007477 n : ℚ)

end A007477

/-! ## A007477.P15068557286749978577

`A378320(∑[n+1]+n)`
-/

namespace A007477.P15068557286749978577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378320 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A007477.P15068557286749978577

namespace A007477

/-- `A378320(∑[n+1]+n)` -/
def P15068557286749978577.Spec : Prop :=
  ∀ n, P15068557286749978577.a n = A007477 n

end A007477

/-!
# A007478: Dimension of primitive Vassiliev knot invariants of order n.

The programs for A007478, there is no canonical definition to state claims against.
-/

/-! ## A007478.P1893527002795779262

`floor(C(n+5, 5)/cot(22))+1`
-/

namespace A007478.P1893527002795779262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 5) 5 : ℝ) / Real.cot (22 : ℝ)⌋ + 1

end

end A007478.P1893527002795779262

/-! ## A007478.P15146678782603903007

`∑[ceil(∑[((1-n)²-n)/28])]`
-/

namespace A007478.P15146678782603903007
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 28

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007478.P15146678782603903007

/-! ## A007478.P12946548330819859832

`A014605(n)%94`
-/

namespace A007478.P12946548330819859832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014605 n) 94

end

end A007478.P12946548330819859832

/-! ## A007478.P11925835070791889763

`ceil(A056181(n)/11)`
-/

namespace A007478.P11925835070791889763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056181 n : ℚ) / 11⌉

end

end A007478.P11925835070791889763

/-! ## A007478.P621529803138153737

`row(A002573(n+4))-n`
-/

namespace A007478.P621529803138153737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (A002573 (n + 4)).toNat : ℤ) - (n : ℤ)

end

end A007478.P621529803138153737

/-!
# A007480: a(n) = denominator of sum_{k=1..n} k^(-4).

The programs for A007480, there is no canonical definition to state claims against.
-/

/-! ## A007480.P6203747961445441445

`A002805(n+1)*A069045(n+1)`
-/

namespace A007480.P6203747961445441445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A069045 (n + 1)

end

end A007480.P6203747961445441445

/-! ## A007480.P17508134814883874379

`A007409(n+1)*A069045(n+1)/A068589(n+1)`
-/

namespace A007480.P17508134814883874379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) * A069045 (n + 1) : ℚ) / (A068589 (n + 1) : ℚ)

end

end A007480.P17508134814883874379

/-! ## A007480.P7135231674185179590

`sqrt(A103350(n+1))`
-/

namespace A007480.P7135231674185179590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103350 (n + 1) : ℝ)

end

end A007480.P7135231674185179590

/-! ## A007480.P851032335030823733

`A003418(n+1)^A112987(A272815(Δ[n²]))`
-/

namespace A007480.P851032335030823733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) ^ (A112987 (A272815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℤ)

end

end A007480.P851032335030823733

/-! ## A007480.P13712008540261350722

`A003418(A351374(n+1))^4`
-/

namespace A007480.P13712008540261350722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A351374 (n + 1)).toNat ^ 4

end

end A007480.P13712008540261350722

/-!
# A007481: Number of subsequences of [ 1,...,n ] in which each even number has an odd neighbor.

The programs for A007481, the canonical program `A007481.P9417208263273261703` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007481 has offset 0).

The definition of A007481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007481.P16797100363127069946

`ogf((1+2x+x^3)/(1-3x^2-2x^4))`
-/

namespace A007481.P16797100363127069946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 1] [1, 0, -3, 0, -2] n

end

end A007481.P16797100363127069946

namespace A007481

/-- `ogf((1+2x+x^3)/(1-3x^2-2x^4))` -/
def P16797100363127069946.Spec : Prop :=
  ∀ n, P16797100363127069946.a n = A007481 n

end A007481

/-! ## A007481.P9417208263273261703

`3*a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007481

/-- `3*a(n-2)+2*a(n-4)` -/
def P9417208263273261703.Spec : Prop :=
  ∀ n, (P9417208263273261703.a n : ℤ) = A007481 n

theorem P9417208263273261703.correct : P9417208263273261703.Spec := by
  intro n
  simp only [A007481]

end A007481

/-! ## A007481.P16455629171740810116

`∑[A055099(A140106(n+1))]`
-/

namespace A007481.P16455629171740810116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (A140106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007481.P16455629171740810116

namespace A007481

/-- `∑[A055099(A140106(n+1))]` -/
def P16455629171740810116.Spec : Prop :=
  ∀ n, P16455629171740810116.a n = A007481 n

end A007481

/-! ## A007481.P13277923220922590808

`∑[A055099(A065033(n)-1)]`
-/

namespace A007481.P13277923220922590808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (A065033 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007481.P13277923220922590808

namespace A007481

/-- `∑[A055099(A065033(n)-1)]` -/
def P13277923220922590808.Spec : Prop :=
  ∀ n, P13277923220922590808.a n = A007481 n

end A007481

/-! ## A007481.P6366743352053910706

`∑[A055099(n%A008619(n))]`
-/

namespace A007481.P6366743352053910706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (Int.tmod (n : ℤ) (A008619 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007481.P6366743352053910706

namespace A007481

/-- `∑[A055099(n%A008619(n))]` -/
def P6366743352053910706.Spec : Prop :=
  ∀ n, P6366743352053910706.a n = A007481 n

end A007481

/-! ## A007481.P5142249721226555510

`∑[A055099(A002265(A004273(n)))]`
-/

namespace A007481.P5142249721226555510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (A002265 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007481.P5142249721226555510

namespace A007481

/-- `∑[A055099(A002265(A004273(n)))]` -/
def P5142249721226555510.Spec : Prop :=
  ∀ n, P5142249721226555510.a n = A007481 n

end A007481

/-! ## A007481.P1724001209770915043

`∪[A007482(n), A007484(n)]`
-/

namespace A007481.P1724001209770915043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007481.P1724001209770915043

namespace A007481

/-- `∪[A007482(n), A007484(n)]` -/
def P1724001209770915043.Spec : Prop :=
  ∀ n, (P1724001209770915043.a n : ℤ) = A007481 n

end A007481

/-! ## A007481.P17190295959059349058

`∑[A055099(val(A003945(n), 4))]`
-/

namespace A007481.P17190295959059349058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (SequenceMachineLib.valuation (A003945 n).toNat 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007481.P17190295959059349058

namespace A007481

/-- `∑[A055099(val(A003945(n), 4))]` -/
def P17190295959059349058.Spec : Prop :=
  ∀ n, P17190295959059349058.a n = A007481 n

end A007481

/-!
# A007482: a(n) is the number of subsequences of [ 1, ..., 2n ] in which each odd number has an even neighbor.

The programs for A007482, the canonical program `A007482.P7309551570717837423` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007482 has offset 0).

The definition of A007482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007482.P8210333230158121239

`ogf(1/(1-3x-2x^2))`
-/

namespace A007482.P8210333230158121239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -2] n

end

end A007482.P8210333230158121239

namespace A007482

/-- `ogf(1/(1-3x-2x^2))` -/
def P8210333230158121239.Spec : Prop :=
  ∀ n, P8210333230158121239.a n = A007482 n

end A007482

/-! ## A007482.P7309551570717837423

`3*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007482

/-- `3*a(n-1)+2*a(n-2)` -/
def P7309551570717837423.Spec : Prop :=
  ∀ n, (P7309551570717837423.a n : ℤ) = A007482 n

theorem P7309551570717837423.correct : P7309551570717837423.Spec := by
  intro n
  simp only [A007482]

end A007482

/-! ## A007482.P18376945479489488401

`round(((sqrt(17)+3)/2)^(n+1)/sqrt(17))`
-/

namespace A007482.P18376945479489488401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (17 : ℝ) + 3) / 2) ^ (n + 1) / Real.sqrt (17 : ℝ))

end

end A007482.P18376945479489488401

namespace A007482

/-- `round(((sqrt(17)+3)/2)^(n+1)/sqrt(17))` -/
def P18376945479489488401.Spec : Prop :=
  ∀ n, P18376945479489488401.a n = A007482 n

end A007482

/-! ## A007482.P18147282337079115240

`∑{#}[n, A112906(C(n+1, 2)+#)]`
-/

namespace A007482.P18147282337079115240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A112906 (Nat.choose (n + 1) 2 + k)

end

end A007482.P18147282337079115240

namespace A007482

/-- `∑{#}[n, A112906(C(n+1, 2)+#)]` -/
def P18147282337079115240.Spec : Prop :=
  ∀ n, P18147282337079115240.a n = A007482 n

end A007482

/-! ## A007482.P18241426871630211746

`record[abs(T(n-1,k-1)-3*T(n-1,k)+2*T(n-2,k-1)-2*T(n-2,k))]` with `a(0)=1`
-/

namespace A007482.P18241426871630211746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |SequenceMachineLib.triUpLeft f1 n - 3 * SequenceMachineLib.triUp f1 n + 2 * SequenceMachineLib.triUp2Left f1 n - 2 * SequenceMachineLib.triUp2 f1 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007482.P18241426871630211746

namespace A007482

/-- `record[abs(T(n-1,k-1)-3*T(n-1,k)+2*T(n-2,k-1)-2*T(n-2,k))]` -/
def P18241426871630211746.Spec : Prop :=
  ∀ n, P18241426871630211746.a n = A007482 n

end A007482

/-! ## A007482.P11515191378252256696

`2*a(n-2)-(a(n-1)-4*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A007482.P11515191378252256696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 2) - (a (n - 1) - 4 * a (n - 1))

end

end A007482.P11515191378252256696

namespace A007482

/-- `2*a(n-2)-(a(n-1)-4*a(n-1))` -/
def P11515191378252256696.Spec : Prop :=
  ∀ n, P11515191378252256696.a n = A007482 n

end A007482

/-! ## A007482.P186749304623439905

`a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A007482.P186749304623439905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A007482.P186749304623439905

namespace A007482

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P186749304623439905.Spec : Prop :=
  ∀ n, (P186749304623439905.a n : ℤ) = A007482 n

theorem P186749304623439905.correct : P186749304623439905.Spec := by
  intro n
  simp only [A007482, Nat.add_sub_cancel, A007482.P186749304623439905.a, A007482.P7309551570717837423.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007482

/-! ## A007482.P6999513491833692409

`∑[A104934(n)]`
-/

namespace A007482.P6999513491833692409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007482.P6999513491833692409

namespace A007482

/-- `∑[A104934(n)]` -/
def P6999513491833692409.Spec : Prop :=
  ∀ n, P6999513491833692409.a n = A007482 n

end A007482

/-! ## A007482.P17791923366595937243

`A007455(2*n)`
-/

namespace A007482.P17791923366595937243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n)

end

end A007482.P17791923366595937243

namespace A007482

/-- `A007455(2*n)` -/
def P17791923366595937243.Spec : Prop :=
  ∀ n, P17791923366595937243.a n = A007482 n

end A007482

/-! ## A007482.P15078992212789378338

`A007481(2*n)`
-/

namespace A007482.P15078992212789378338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 (2 * n)

end

end A007482.P15078992212789378338

namespace A007482

/-- `A007481(2*n)` -/
def P15078992212789378338.Spec : Prop :=
  ∀ n, P15078992212789378338.a n = A007482 n

end A007482

/-! ## A007482.P9534594360126225278

`2*A193653(n)-1`
-/

namespace A007482.P9534594360126225278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193653 n - 1

end

end A007482.P9534594360126225278

namespace A007482

/-- `2*A193653(n)-1` -/
def P9534594360126225278.Spec : Prop :=
  ∀ n, P9534594360126225278.a n = A007482 n

end A007482

/-! ## A007482.P11135244134962344345

`∑[A322940(n+1)/2]`
-/

namespace A007482.P11135244134962344345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322940 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007482.P11135244134962344345

namespace A007482

/-- `∑[A322940(n+1)/2]` -/
def P11135244134962344345.Spec : Prop :=
  ∀ n, P11135244134962344345.a n = (A007482 n : ℚ)

end A007482

/-! ## A007482.P14323575246206549876

`A055099(n)-a(n-1)` with `a(0)=1`
-/

namespace A007482.P14323575246206549876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055099 n - a (n - 1)

end

end A007482.P14323575246206549876

namespace A007482

/-- `A055099(n)-a(n-1)` -/
def P14323575246206549876.Spec : Prop :=
  ∀ n, P14323575246206549876.a n = A007482 n

end A007482

/-! ## A007482.P49088599589164298

`∑{#}[n, C(n, #)*A026597(#)]`
-/

namespace A007482.P49088599589164298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A026597 k

end

end A007482.P49088599589164298

namespace A007482

/-- `∑{#}[n, C(n, #)*A026597(#)]` -/
def P49088599589164298.Spec : Prop :=
  ∀ n, P49088599589164298.a n = A007482 n

end A007482

/-! ## A007482.P8328687238904281105

`A007483(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A007482.P8328687238904281105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007483 n - (a (n - 1) + a (n - 1))

end

end A007482.P8328687238904281105

namespace A007482

/-- `A007483(n)-(a(n-1)+a(n-1))` -/
def P8328687238904281105.Spec : Prop :=
  ∀ n, P8328687238904281105.a n = A007482 n

end A007482

/-! ## A007482.P4285634151683518068

`record[A007455(A026741(n)+1)]`
-/

namespace A007482.P4285634151683518068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007482.P4285634151683518068

namespace A007482

/-- `record[A007455(A026741(n)+1)]` -/
def P4285634151683518068.Spec : Prop :=
  ∀ n, P4285634151683518068.a n = A007482 n

end A007482

/-! ## A007482.P15750042418699490271

`A007483(n)-A106434(n+1)`
-/

namespace A007482.P15750042418699490271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n - A106434 (n + 1)

end

end A007482.P15750042418699490271

namespace A007482

/-- `A007483(n)-A106434(n+1)` -/
def P15750042418699490271.Spec : Prop :=
  ∀ n, P15750042418699490271.a n = A007482 n

end A007482

/-! ## A007482.P3855924122308916682

`record[A007481(n)/A000034(n)²]`
-/

namespace A007482.P3855924122308916682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007481 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007482.P3855924122308916682

namespace A007482

/-- `record[A007481(n)/A000034(n)²]` -/
def P3855924122308916682.Spec : Prop :=
  ∀ n, P3855924122308916682.a n = (A007482 n : ℚ)

end A007482

/-! ## A007482.P5177033583794097679

`∑[A055099(n)-A106434(n+1)]`
-/

namespace A007482.P5177033583794097679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n - A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007482.P5177033583794097679

namespace A007482

/-- `∑[A055099(n)-A106434(n+1)]` -/
def P5177033583794097679.Spec : Prop :=
  ∀ n, P5177033583794097679.a n = A007482 n

end A007482

/-! ## A007482.P18162586154253684761

`A104934(n)+A106434(n+1)/2`
-/

namespace A007482.P18162586154253684761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104934 n : ℚ) + (A106434 (n + 1) : ℚ) / 2

end

end A007482.P18162586154253684761

namespace A007482

/-- `A104934(n)+A106434(n+1)/2` -/
def P18162586154253684761.Spec : Prop :=
  ∀ n, P18162586154253684761.a n = (A007482 n : ℚ)

end A007482

/-!
# A007483: a(n) = 3*a(n-1) + 2*a(n-2), with a(0)=1, a(1)=5.

The programs for A007483, the canonical program `A007483.P17623370902993254309` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007483 has offset 0).

The definition of A007483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)` (program `A007483.P17623370902993254309`, by `A007483.P17623370902993254309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007483.P8385976569664975806

`ogf((1+2x)/(1-3x-2x^2))`
-/

namespace A007483.P8385976569664975806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -2] n

end

end A007483.P8385976569664975806

namespace A007483

/-- `ogf((1+2x)/(1-3x-2x^2))` -/
def P8385976569664975806.Spec : Prop :=
  ∀ n, P8385976569664975806.a n = A007483 n

end A007483

/-! ## A007483.P17623370902993254309

`3*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007483

/-- `3*a(n-1)+2*a(n-2)` -/
def P17623370902993254309.Spec : Prop :=
  ∀ n, (P17623370902993254309.a n : ℤ) = A007483 n

theorem P17623370902993254309.correct : P17623370902993254309.Spec := by
  intro n
  simp only [A007483]

end A007483

/-! ## A007483.P1080182979844080923

`A007455(Δ[n²])`
-/

namespace A007483.P1080182979844080923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007483.P1080182979844080923

namespace A007483

/-- `A007455(Δ[n²])` -/
def P1080182979844080923.Spec : Prop :=
  ∀ n, P1080182979844080923.a n = A007483 n

end A007483

/-! ## A007483.P8661520815837742652

`record[A007455(n*n%2)]`
-/

namespace A007483.P8661520815837742652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007483.P8661520815837742652

namespace A007483

/-- `record[A007455(n*n%2)]` -/
def P8661520815837742652.Spec : Prop :=
  ∀ n, P8661520815837742652.a n = A007483 n

end A007483

/-! ## A007483.P17487443699948173282

`2*A230269(n+2)+1`
-/

namespace A007483.P17487443699948173282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230269 (n + 2) + 1

end

end A007483.P17487443699948173282

namespace A007483

/-- `2*A230269(n+2)+1` -/
def P17487443699948173282.Spec : Prop :=
  ∀ n, P17487443699948173282.a n = A007483 n

end A007483

/-! ## A007483.P8265077913907602837

`∑[2*A106434(n+1)]+1`
-/

namespace A007483.P8265077913907602837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A007483.P8265077913907602837

namespace A007483

/-- `∑[2*A106434(n+1)]+1` -/
def P8265077913907602837.Spec : Prop :=
  ∀ n, P8265077913907602837.a n = A007483 n

end A007483

/-! ## A007483.P10904066130836454188

`∑{#}[n, C(n, #)*A159612(#+1)]`
-/

namespace A007483.P10904066130836454188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A159612 (k + 1)

end

end A007483.P10904066130836454188

namespace A007483

/-- `∑{#}[n, C(n, #)*A159612(#+1)]` -/
def P10904066130836454188.Spec : Prop :=
  ∀ n, P10904066130836454188.a n = A007483 n

end A007483

/-! ## A007483.P1119275481996963286

`∑{#}[n+1, C(n+1, #)*A052923(#)]`
-/

namespace A007483.P1119275481996963286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A052923 k

end

end A007483.P1119275481996963286

namespace A007483

/-- `∑{#}[n+1, C(n+1, #)*A052923(#)]` -/
def P1119275481996963286.Spec : Prop :=
  ∀ n, P1119275481996963286.a n = A007483 n

end A007483

/-! ## A007483.P2367286130367821921

`record[A007455(A026741(n))]`
-/

namespace A007483.P2367286130367821921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007483.P2367286130367821921

namespace A007483

/-- `record[A007455(A026741(n))]` -/
def P2367286130367821921.Spec : Prop :=
  ∀ n, P2367286130367821921.a n = A007483 n

end A007483

/-! ## A007483.P7534015386738151265

`A106434(n+1)+A007482(n)`
-/

namespace A007483.P7534015386738151265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + A007482 n

end

end A007483.P7534015386738151265

namespace A007483

/-- `A106434(n+1)+A007482(n)` -/
def P7534015386738151265.Spec : Prop :=
  ∀ n, P7534015386738151265.a n = A007483 n

end A007483

/-! ## A007483.P6622134272098715425

`A374096(n+1)+A000045(n)`
-/

namespace A007483.P6622134272098715425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374096 (n + 1) + A000045 n

end

end A007483.P6622134272098715425

namespace A007483

/-- `A374096(n+1)+A000045(n)` -/
def P6622134272098715425.Spec : Prop :=
  ∀ n, P6622134272098715425.a n = A007483 n

end A007483

/-! ## A007483.P14207348008133209679

`A106434(n+1)+∑[A104934(n)]`
-/

namespace A007483.P14207348008133209679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007483.P14207348008133209679

namespace A007483

/-- `A106434(n+1)+∑[A104934(n)]` -/
def P14207348008133209679.Spec : Prop :=
  ∀ n, P14207348008133209679.a n = A007483 n

end A007483

/-! ## A007483.P5909058993974937745

`A374096(n+1)+A212804(n+1)`
-/

namespace A007483.P5909058993974937745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374096 (n + 1) + A212804 (n + 1)

end

end A007483.P5909058993974937745

namespace A007483

/-- `A374096(n+1)+A212804(n+1)` -/
def P5909058993974937745.Spec : Prop :=
  ∀ n, P5909058993974937745.a n = A007483 n

end A007483

/-! ## A007483.P5322465093742100051

`A106434(n+1)+A007481(2*n)`
-/

namespace A007483.P5322465093742100051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + A007481 (2 * n)

end

end A007483.P5322465093742100051

namespace A007483

/-- `A106434(n+1)+A007481(2*n)` -/
def P5322465093742100051.Spec : Prop :=
  ∀ n, P5322465093742100051.a n = A007483 n

end A007483

/-! ## A007483.P15151584426267554451

`A055099(n)+A106434(n+1)/2`
-/

namespace A007483.P15151584426267554451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055099 n : ℚ) + (A106434 (n + 1) : ℚ) / 2

end

end A007483.P15151584426267554451

namespace A007483

/-- `A055099(n)+A106434(n+1)/2` -/
def P15151584426267554451.Spec : Prop :=
  ∀ n, P15151584426267554451.a n = (A007483 n : ℚ)

end A007483

/-! ## A007483.P4378429261075376967

`A055099(n)+A055099(n)-A007482(n)`
-/

namespace A007483.P4378429261075376967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n + (A055099 n - A007482 n)

end

end A007483.P4378429261075376967

namespace A007483

/-- `A055099(n)+A055099(n)-A007482(n)` -/
def P4378429261075376967.Spec : Prop :=
  ∀ n, P4378429261075376967.a n = A007483 n

end A007483

/-! ## A007483.P13242518783107306670

`A007482(n)-(A104934(n)-A055099(n))`
-/

namespace A007483.P13242518783107306670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n - (A104934 n - A055099 n)

end

end A007483.P13242518783107306670

namespace A007483

/-- `A007482(n)-(A104934(n)-A055099(n))` -/
def P13242518783107306670.Spec : Prop :=
  ∀ n, P13242518783107306670.a n = A007483 n

end A007483

/-! ## A007483.P17265840314201505509

`Δ[A052986(n)]`
-/

namespace A007483.P17265840314201505509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007483.P17265840314201505509

namespace A007483

/-- `Δ[A052986(n)]` -/
def P17265840314201505509.Spec : Prop :=
  ∀ n, P17265840314201505509.a n = A007483 n

end A007483

/-! ## A007483.P14933558266428923639

`A106434(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A007483.P14933558266428923639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106434 (n + 2) - a (n - 1)

end

end A007483.P14933558266428923639

namespace A007483

/-- `A106434(n+2)-a(n-1)` -/
def P14933558266428923639.Spec : Prop :=
  ∀ n, P14933558266428923639.a n = A007483 n

end A007483

/-! ## A007483.P2406359109280787790

`A007484(n)-A104934(n)`
-/

namespace A007483.P2406359109280787790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 n - A104934 n

end

end A007483.P2406359109280787790

namespace A007483

/-- `A007484(n)-A104934(n)` -/
def P2406359109280787790.Spec : Prop :=
  ∀ n, P2406359109280787790.a n = A007483 n

end A007483

/-!
# A007484: a(n) = 3*a(n-1) + 2*a(n-2), with a(0)=2, a(1)=7.

The programs for A007484, the canonical program `A007484.P14967023517881049514` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007484 has offset 0).

The definition of A007484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-2)` (program `A007484.P14967023517881049514`, by `A007484.P14967023517881049514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007484.P11148790445399900425

`ogf((2+x)/(1-3x-2x^2))`
-/

namespace A007484.P11148790445399900425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -3, -2] n

end

end A007484.P11148790445399900425

namespace A007484

/-- `ogf((2+x)/(1-3x-2x^2))` -/
def P11148790445399900425.Spec : Prop :=
  ∀ n, P11148790445399900425.a n = A007484 n

end A007484

/-! ## A007484.P14967023517881049514

`3*a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007484

/-- `3*a(n-1)+2*a(n-2)` -/
def P14967023517881049514.Spec : Prop :=
  ∀ n, (P14967023517881049514.a n : ℤ) = A007484 n

theorem P14967023517881049514.correct : P14967023517881049514.Spec := by
  intro n
  simp only [A007484]

end A007484

/-! ## A007484.P2224855926020899166

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A007484.P2224855926020899166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A007484.P2224855926020899166

namespace A007484

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P2224855926020899166.Spec : Prop :=
  ∀ n, P2224855926020899166.a n = A007484 n

end A007484

/-! ## A007484.P15349340379743561722

`Δ[2*a(n-2)-(1-3*a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A007484.P15349340379743561722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 2) - (1 - 3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007484.P15349340379743561722

namespace A007484

/-- `Δ[2*a(n-2)-(1-3*a(n-1))]` -/
def P15349340379743561722.Spec : Prop :=
  ∀ n, P15349340379743561722.a n = A007484 n

end A007484

/-! ## A007484.P1826869888332091722

`Δ[A371301(n)]`
-/

namespace A007484.P1826869888332091722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007484.P1826869888332091722

namespace A007484

/-- `Δ[A371301(n)]` -/
def P1826869888332091722.Spec : Prop :=
  ∀ n, P1826869888332091722.a n = A007484 n

end A007484

/-! ## A007484.P16561976651135293703

`A007481(Δ[n²])`
-/

namespace A007484.P16561976651135293703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007484.P16561976651135293703

namespace A007484

/-- `A007481(Δ[n²])` -/
def P16561976651135293703.Spec : Prop :=
  ∀ n, P16561976651135293703.a n = A007484 n

end A007484

/-! ## A007484.P15002316037431497788

`A055099(n+1)/2`
-/

namespace A007484.P15002316037431497788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055099 (n + 1) : ℚ) / 2

end

end A007484.P15002316037431497788

namespace A007484

/-- `A055099(n+1)/2` -/
def P15002316037431497788.Spec : Prop :=
  ∀ n, P15002316037431497788.a n = (A007484 n : ℚ)

end A007484

/-! ## A007484.P17228926722413097189

`∑{#}[n, C(n, #)*A183774(#)]`
-/

namespace A007484.P17228926722413097189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A183774 k

end

end A007484.P17228926722413097189

namespace A007484

/-- `∑{#}[n, C(n, #)*A183774(#)]` -/
def P17228926722413097189.Spec : Prop :=
  ∀ n, P17228926722413097189.a n = A007484 n

end A007484

/-! ## A007484.P5892166613753374406

`A007482(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A007484.P5892166613753374406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007482 n + 2 * a (n - 1)

end

end A007484.P5892166613753374406

namespace A007484

/-- `A007482(n)+2*a(n-1)` -/
def P5892166613753374406.Spec : Prop :=
  ∀ n, P5892166613753374406.a n = A007484 n

end A007484

/-! ## A007484.P3247203756655248748

`record[A007481(floor(n/(n%2+1))+1)]`
-/

namespace A007484.P3247203756655248748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007481 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007484.P3247203756655248748

namespace A007484

/-- `record[A007481(floor(n/(n%2+1))+1)]` -/
def P3247203756655248748.Spec : Prop :=
  ∀ n, P3247203756655248748.a n = A007484 n

end A007484

/-! ## A007484.P7428376092046718386

`A055099(n)+A007482(n)`
-/

namespace A007484.P7428376092046718386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n + A007482 n

end

end A007484.P7428376092046718386

namespace A007484

/-- `A055099(n)+A007482(n)` -/
def P7428376092046718386.Spec : Prop :=
  ∀ n, P7428376092046718386.a n = A007484 n

end A007484

/-! ## A007484.P3232304914130090185

`A104934(n)+A007483(n)`
-/

namespace A007484.P3232304914130090185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n + A007483 n

end

end A007484.P3232304914130090185

namespace A007484

/-- `A104934(n)+A007483(n)` -/
def P3232304914130090185.Spec : Prop :=
  ∀ n, P3232304914130090185.a n = A007484 n

end A007484

/-! ## A007484.P4837821092602285197

`Δ[A180144(n)]-A104934(n)`
-/

namespace A007484.P4837821092602285197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A104934 n

end

end A007484.P4837821092602285197

namespace A007484

/-- `Δ[A180144(n)]-A104934(n)` -/
def P4837821092602285197.Spec : Prop :=
  ∀ n, P4837821092602285197.a n = A007484 n

end A007484

/-! ## A007484.P402715138730004656

`A371301(n+1)-A371301(n)`
-/

namespace A007484.P402715138730004656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371301 (n + 1) - A371301 n

end

end A007484.P402715138730004656

namespace A007484

/-- `A371301(n+1)-A371301(n)` -/
def P402715138730004656.Spec : Prop :=
  ∀ n, P402715138730004656.a n = A007484 n

end A007484

/-! ## A007484.P13514528263968956923

`A055099(n)+A007455(2*n)`
-/

namespace A007484.P13514528263968956923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n + A007455 (2 * n)

end

end A007484.P13514528263968956923

namespace A007484

/-- `A055099(n)+A007455(2*n)` -/
def P13514528263968956923.Spec : Prop :=
  ∀ n, P13514528263968956923.a n = A007484 n

end A007484

/-! ## A007484.P9849955584444312083

`A055099(n)+A007481(2*n)`
-/

namespace A007484.P9849955584444312083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n + A007481 (2 * n)

end

end A007484.P9849955584444312083

namespace A007484

/-- `A055099(n)+A007481(2*n)` -/
def P9849955584444312083.Spec : Prop :=
  ∀ n, P9849955584444312083.a n = A007484 n

end A007484

/-! ## A007484.P10283900168936400190

`record[A007481(n+1)/A000034(n)]`
-/

namespace A007484.P10283900168936400190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007481 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007484.P10283900168936400190

namespace A007484

/-- `record[A007481(n+1)/A000034(n)]` -/
def P10283900168936400190.Spec : Prop :=
  ∀ n, P10283900168936400190.a n = (A007484 n : ℚ)

end A007484

/-! ## A007484.P8236762623875773369

`A206776(n+1)-A189604(n+1)`
-/

namespace A007484.P8236762623875773369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) - A189604 (n + 1)

end

end A007484.P8236762623875773369

namespace A007484

/-- `A206776(n+1)-A189604(n+1)` -/
def P8236762623875773369.Spec : Prop :=
  ∀ n, P8236762623875773369.a n = A007484 n

end A007484

/-! ## A007484.P85912895190818181

`A104934(n)+A007455(2*n+1)`
-/

namespace A007484.P85912895190818181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n + A007455 (2 * n + 1)

end

end A007484.P85912895190818181

namespace A007484

/-- `A104934(n)+A007455(2*n+1)` -/
def P85912895190818181.Spec : Prop :=
  ∀ n, P85912895190818181.a n = A007484 n

end A007484

/-! ## A007484.P2163727333725963218

`A007482(n+1)-A104934(n+1)/2`
-/

namespace A007484.P2163727333725963218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007482 (n + 1) : ℚ) - (A104934 (n + 1) : ℚ) / 2

end

end A007484.P2163727333725963218

namespace A007484

/-- `A007482(n+1)-A104934(n+1)/2` -/
def P2163727333725963218.Spec : Prop :=
  ∀ n, P2163727333725963218.a n = (A007484 n : ℚ)

end A007484

/-!
# A007486: a(n) = a(n-1) + a(n-2) + a(n-3).

The programs for A007486, the canonical program `A007486.P6508023998789392467` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007486 has offset 1).

The definition of A007486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A007486.P6508023998789392467`, by `A007486.P6508023998789392467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007486.P5233224826946517793

`ogf((1+2x)/(1-x-x^2-x^3))`
-/

namespace A007486.P5233224826946517793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -1, -1] n

end

end A007486.P5233224826946517793

namespace A007486

/-- `ogf((1+2x)/(1-x-x^2-x^3))` -/
def P5233224826946517793.Spec : Prop :=
  ∀ n, P5233224826946517793.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P13762382270405553139

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=8`
-/

namespace A007486.P13762382270405553139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 8] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A007486.P13762382270405553139

namespace A007486

/-- `2*a(n-1)-a(n-4)` -/
def P13762382270405553139.Spec : Prop :=
  ∀ n, P13762382270405553139.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P6508023998789392467

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007486

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P6508023998789392467.Spec : Prop :=
  ∀ n, (P6508023998789392467.a n : ℤ) = A007486 (n + 1)

theorem P6508023998789392467.correct : P6508023998789392467.Spec := by
  intro n
  simp only [A007486, Nat.add_sub_cancel]

end A007486

/-! ## A007486.P6760157980636067818

`A001590(n+1)+3*A000073(n+1)`
-/

namespace A007486.P6760157980636067818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + 3 * A000073 (n + 1)

end

end A007486.P6760157980636067818

namespace A007486

/-- `A001590(n+1)+3*A000073(n+1)` -/
def P6760157980636067818.Spec : Prop :=
  ∀ n, P6760157980636067818.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P1971117623835455237

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A007486.P1971117623835455237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 3))

end

end A007486.P1971117623835455237

namespace A007486

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P1971117623835455237.Spec : Prop :=
  ∀ n, (P1971117623835455237.a n : ℤ) = A007486 (n + 1)

theorem P1971117623835455237.correct : P1971117623835455237.Spec := by
  intro n
  simp only [A007486, Nat.add_sub_cancel, A007486.P1971117623835455237.a, A007486.P6508023998789392467.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007486

/-! ## A007486.P11583399300911926802

`∑[a(n-1)-(a(n-4)-a(n-1))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A007486.P11583399300911926802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 4] fun n f1 =>
  f1 (n - 1) - (f1 (n - 4) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007486.P11583399300911926802

namespace A007486

/-- `∑[a(n-1)-(a(n-4)-a(n-1))]` -/
def P11583399300911926802.Spec : Prop :=
  ∀ n, P11583399300911926802.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P12377201632186891407

`∑[A275778(n)]`
-/

namespace A007486.P12377201632186891407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007486.P12377201632186891407

namespace A007486

/-- `∑[A275778(n)]` -/
def P12377201632186891407.Spec : Prop :=
  ∀ n, P12377201632186891407.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P16192581393086180092

`A214825(n)+A000073(n)`
-/

namespace A007486.P16192581393086180092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n + A000073 n

end

end A007486.P16192581393086180092

namespace A007486

/-- `A214825(n)+A000073(n)` -/
def P16192581393086180092.Spec : Prop :=
  ∀ n, P16192581393086180092.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P14442170403246474786

`A214899(n)+A100683(n)`
-/

namespace A007486.P14442170403246474786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A100683 n

end

end A007486.P14442170403246474786

namespace A007486

/-- `A214899(n)+A100683(n)` -/
def P14442170403246474786.Spec : Prop :=
  ∀ n, P14442170403246474786.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P4794450311767193301

`A214826(n)-A001590(n)`
-/

namespace A007486.P4794450311767193301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n - A001590 n

end

end A007486.P4794450311767193301

namespace A007486

/-- `A214826(n)-A001590(n)` -/
def P4794450311767193301.Spec : Prop :=
  ∀ n, P4794450311767193301.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P16395802954956825535

`∑[A001590(n)+A000213(n)]`
-/

namespace A007486.P16395802954956825535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007486.P16395802954956825535

namespace A007486

/-- `∑[A001590(n)+A000213(n)]` -/
def P16395802954956825535.Spec : Prop :=
  ∀ n, P16395802954956825535.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P6182794437587553630

`A214826(n)-Δ[A000073(n)]`
-/

namespace A007486.P6182794437587553630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 n - (f1 (n + 1) - f1 n)

end

end A007486.P6182794437587553630

namespace A007486

/-- `A214826(n)-Δ[A000073(n)]` -/
def P6182794437587553630.Spec : Prop :=
  ∀ n, P6182794437587553630.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P15663932285625543448

`A020992(n)+A000213(n+1)`
-/

namespace A007486.P15663932285625543448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 n + A000213 (n + 1)

end

end A007486.P15663932285625543448

namespace A007486

/-- `A020992(n)+A000213(n+1)` -/
def P15663932285625543448.Spec : Prop :=
  ∀ n, P15663932285625543448.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P11616162617647095484

`A047081(n)+A000073(n+1)`
-/

namespace A007486.P11616162617647095484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n + A000073 (n + 1)

end

end A007486.P11616162617647095484

namespace A007486

/-- `A047081(n)+A000073(n+1)` -/
def P11616162617647095484.Spec : Prop :=
  ∀ n, P11616162617647095484.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P13045407730394743478

`A081172(n+2)+A000213(n)`
-/

namespace A007486.P13045407730394743478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 2) + A000213 n

end

end A007486.P13045407730394743478

namespace A007486

/-- `A081172(n+2)+A000213(n)` -/
def P13045407730394743478.Spec : Prop :=
  ∀ n, P13045407730394743478.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P9696456522807542627

`A214727(n)+A001590(n+2)`
-/

namespace A007486.P9696456522807542627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n + A001590 (n + 2)

end

end A007486.P9696456522807542627

namespace A007486

/-- `A214727(n)+A001590(n+2)` -/
def P9696456522807542627.Spec : Prop :=
  ∀ n, P9696456522807542627.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P13687338618673515202

`A354080(n)-A000073(n+1)`
-/

namespace A007486.P13687338618673515202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354080 n - A000073 (n + 1)

end

end A007486.P13687338618673515202

namespace A007486

/-- `A354080(n)-A000073(n+1)` -/
def P13687338618673515202.Spec : Prop :=
  ∀ n, P13687338618673515202.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P16255879591983798525

`A000213(n+2)-A000073(n)`
-/

namespace A007486.P16255879591983798525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) - A000073 n

end

end A007486.P16255879591983798525

namespace A007486

/-- `A000213(n+2)-A000073(n)` -/
def P16255879591983798525.Spec : Prop :=
  ∀ n, P16255879591983798525.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P16897018955487756579

`A001590(n)+A000073(n+3)`
-/

namespace A007486.P16897018955487756579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + A000073 (n + 3)

end

end A007486.P16897018955487756579

namespace A007486

/-- `A001590(n)+A000073(n+3)` -/
def P16897018955487756579.Spec : Prop :=
  ∀ n, P16897018955487756579.a n = A007486 (n + 1)

end A007486

/-! ## A007486.P15816582979453441048

`A020992(n+2)-A354784(n)`
-/

namespace A007486.P15816582979453441048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 2) - A354784 n

end

end A007486.P15816582979453441048

namespace A007486

/-- `A020992(n+2)-A354784(n)` -/
def P15816582979453441048.Spec : Prop :=
  ∀ n, P15816582979453441048.a n = A007486 (n + 1)

end A007486

/-!
# A007487: Sum of 9th powers.

The programs for A007487, the canonical program `A007487.P367834256939388881` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007487 has offset 0).

The definition of A007487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007487.P367834256939388881

`a(n-1)+n^9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007487

/-- `a(n-1)+n^9` -/
def P367834256939388881.Spec : Prop :=
  ∀ n, (P367834256939388881.a n : ℤ) = A007487 n

theorem P367834256939388881.correct : P367834256939388881.Spec := by
  intro n
  simp only [A007487]

end A007487

/-! ## A007487.P4120218984571085936

`∑[n^9]`
-/

namespace A007487.P4120218984571085936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007487.P4120218984571085936

namespace A007487

/-- `∑[n^9]` -/
def P4120218984571085936.Spec : Prop :=
  ∀ n, (P4120218984571085936.a n : ℤ) = A007487 n

end A007487

/-! ## A007487.P17668390802804911907

`floor(a(n-1)+n*n²²²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A007487.P17668390802804911907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * ((n ^ 2) ^ 2) ^ 2

end

end A007487.P17668390802804911907

namespace A007487

/-- `floor(a(n-1)+n*n²²²)` -/
def P17668390802804911907.Spec : Prop :=
  ∀ n, (P17668390802804911907.a n : ℤ) = A007487 n

theorem P17668390802804911907.correct : P17668390802804911907.Spec := by
  intro n
  simp only [A007487, Nat.add_sub_cancel, A007487.P17668390802804911907.a, A007487.P367834256939388881.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A007487

/-! ## A007487.P7047222013147209793

`abs(∑[1-A024007(n)])`
-/

namespace A007487.P7047222013147209793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A007487.P7047222013147209793

namespace A007487

/-- `abs(∑[1-A024007(n)])` -/
def P7047222013147209793.Spec : Prop :=
  ∀ n, P7047222013147209793.a n = A007487 n

end A007487

/-! ## A007487.P5008161985095019317

`or(∑[A001017(n)], char[1])`
-/

namespace A007487.P5008161985095019317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A007487.P5008161985095019317

namespace A007487

/-- `or(∑[A001017(n)], char[1])` -/
def P5008161985095019317.Spec : Prop :=
  ∀ n, P5008161985095019317.a n = A007487 n

end A007487

/-! ## A007487.P6015595425184534657

`lcm(∑[n*n²²²], A000217(n))`
-/

namespace A007487.P6015595425184534657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000217 n)

end

end A007487.P6015595425184534657

namespace A007487

/-- `lcm(∑[n*n²²²], A000217(n))` -/
def P6015595425184534657.Spec : Prop :=
  ∀ n, (P6015595425184534657.a n : ℤ) = A007487 n

end A007487

/-! ## A007487.P15074517440799758159

`∑[n²*A001015(n)+1]-1-n`
-/

namespace A007487.P15074517440799758159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001015 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A007487.P15074517440799758159

namespace A007487

/-- `∑[n²*A001015(n)+1]-1-n` -/
def P15074517440799758159.Spec : Prop :=
  ∀ n, P15074517440799758159.a n = A007487 n

end A007487

/-! ## A007487.P13623047442745389848

`lcm(∑[A001017(n)], A001057(n))`
-/

namespace A007487.P13623047442745389848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A001057 n)

end

end A007487.P13623047442745389848

namespace A007487

/-- `lcm(∑[A001017(n)], A001057(n))` -/
def P13623047442745389848.Spec : Prop :=
  ∀ n, (P13623047442745389848.a n : ℤ) = A007487 n

end A007487

/-! ## A007487.P7152970645880348916

`∑[A001017(n+1)]-A001017(n+1)`
-/

namespace A007487.P7152970645880348916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001017 (n + 1)

end

end A007487.P7152970645880348916

namespace A007487

/-- `∑[A001017(n+1)]-A001017(n+1)` -/
def P7152970645880348916.Spec : Prop :=
  ∀ n, P7152970645880348916.a n = A007487 n

end A007487

/-! ## A007487.P9244736031266081008

`A036494(n²)+a(n-1)` with `a(0)=0`
-/

namespace A007487.P9244736031266081008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A036494 (n ^ 2) + a (n - 1)

end

end A007487.P9244736031266081008

namespace A007487

/-- `A036494(n²)+a(n-1)` -/
def P9244736031266081008.Spec : Prop :=
  ∀ n, P9244736031266081008.a n = A007487 n

end A007487

/-!
# A007488: Primes whose reversal is a square.

The programs for A007488, there is no canonical definition to state claims against.
-/

/-! ## A007488.P1263604302679326517

`∩[A069798(n+1), A074896(n+1)]`
-/

namespace A007488.P1263604302679326517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007488.P1263604302679326517

/-! ## A007488.P10474641113398997965

`∩[A074896(n+1), A115685(n+1)]`
-/

namespace A007488.P10474641113398997965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007488.P10474641113398997965

/-! ## A007488.P16148377418664914721

`∩[A069798(n+1), A356417(n+1)]`
-/

namespace A007488.P16148377418664914721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007488.P16148377418664914721

/-! ## A007488.P11608992597479902333

`∩[A115685(n+1), A356417(n+1)]`
-/

namespace A007488.P11608992597479902333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007488.P11608992597479902333

/-! ## A007488.P4258465671086411803

`p?[A074896(n+1)]`
-/

namespace A007488.P4258465671086411803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007488.P4258465671086411803

/-! ## A007488.P7681001476869649976

`p?[A356417(n+1)]`
-/

namespace A007488.P7681001476869649976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007488.P7681001476869649976

/-! ## A007488.P8074793242083900460

`p?[record[A074896(A328396(n))]]`
-/

namespace A007488.P8074793242083900460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007488.P8074793242083900460

/-! ## A007488.P7225958384088628524

`∩[A069798(n+1), A161853(n+1)]`
-/

namespace A007488.P7225958384088628524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007488.P7225958384088628524

/-! ## A007488.P9141291043552733868

`∩[A074896(n+1), A161853(n+1)]`
-/

namespace A007488.P9141291043552733868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007488.P9141291043552733868

/-! ## A007488.P11555699772583877081

`∩[A161853(n+1), A356417(n+1)]`
-/

namespace A007488.P11555699772583877081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007488.P11555699772583877081

/-!
# A007489: a(n) = Sum_{k=1..n} k!.

The programs for A007489, the canonical program `A007489.P15792115020538832421` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007489 has offset 0).

The definition of A007489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007489.P15792115020538832421

`a(n-1)+n!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007489

/-- `a(n-1)+n!` -/
def P15792115020538832421.Spec : Prop :=
  ∀ n, (P15792115020538832421.a n : ℤ) = A007489 n

theorem P15792115020538832421.correct : P15792115020538832421.Spec := by
  intro n
  simp only [A007489]

end A007489

/-! ## A007489.P14375789061243066857

`(n+1)*a(n-1)-n*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A007489.P14375789061243066857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - (n : ℤ) * a (n - 2)

end

end A007489.P14375789061243066857

namespace A007489

/-- `(n+1)*a(n-1)-n*a(n-2)` -/
def P14375789061243066857.Spec : Prop :=
  ∀ n, P14375789061243066857.a n = A007489 n

end A007489

/-! ## A007489.P18133240733385180278

`A003422(n+1)-1`
-/

namespace A007489.P18133240733385180278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1) - 1

end

end A007489.P18133240733385180278

namespace A007489

/-- `A003422(n+1)-1` -/
def P18133240733385180278.Spec : Prop :=
  ∀ n, P18133240733385180278.a n = A007489 n

end A007489

/-! ## A007489.P567737792355581589

`∑[n!]-1`
-/

namespace A007489.P567737792355581589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A007489.P567737792355581589

namespace A007489

/-- `∑[n!]-1` -/
def P567737792355581589.Spec : Prop :=
  ∀ n, P567737792355581589.a n = A007489 n

end A007489

/-! ## A007489.P17572093124286400939

`∑[lcm(n!, dr(n))]`
-/

namespace A007489.P17572093124286400939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007489.P17572093124286400939

namespace A007489

/-- `∑[lcm(n!, dr(n))]` -/
def P17572093124286400939.Spec : Prop :=
  ∀ n, (P17572093124286400939.a n : ℤ) = A007489 n

end A007489

/-! ## A007489.P9661952578613495106

`xor(4, ∑[n!]+3)`
-/

namespace A007489.P9661952578613495106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A007489.P9661952578613495106

namespace A007489

/-- `xor(4, ∑[n!]+3)` -/
def P9661952578613495106.Spec : Prop :=
  ∀ n, (P9661952578613495106.a n : ℤ) = A007489 n

end A007489

/-! ## A007489.P14495401297654524094

`xor(-1, ∑[-n!])`
-/

namespace A007489.P14495401297654524094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007489.P14495401297654524094

namespace A007489

/-- `xor(-1, ∑[-n!])` -/
def P14495401297654524094.Spec : Prop :=
  ∀ n, P14495401297654524094.a n = A007489 n

end A007489

/-! ## A007489.P13056175532408739235

`∑[n!%∑[n!]]`
-/

namespace A007489.P13056175532408739235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007489.P13056175532408739235

namespace A007489

/-- `∑[n!%∑[n!]]` -/
def P13056175532408739235.Spec : Prop :=
  ∀ n, (P13056175532408739235.a n : ℤ) = A007489 n

end A007489

/-! ## A007489.P3858518143028828233

`and(∑[n!]+3, -5)`
-/

namespace A007489.P3858518143028828233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) (-5)

end

end A007489.P3858518143028828233

namespace A007489

/-- `and(∑[n!]+3, -5)` -/
def P3858518143028828233.Spec : Prop :=
  ∀ n, P3858518143028828233.a n = A007489 n

end A007489

/-! ## A007489.P17351776034177782895

`∑{#}[n-1, (n-#)!]`
-/

namespace A007489.P17351776034177782895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.factorial ((n : ℤ) - (k : ℤ)).toNat

end

end A007489.P17351776034177782895

namespace A007489

/-- `∑{#}[n-1, (n-#)!]` -/
def P17351776034177782895.Spec : Prop :=
  ∀ n, (P17351776034177782895.a n : ℤ) = A007489 n

end A007489

/-!
# A007490: Primes of form x^3 + y^3 + z^3 where x,y,z > 0.

The programs for A007490, there is no canonical definition to state claims against.
-/

/-! ## A007490.P16046030511803576770

`∪[A122723(n+1), A173587(n+1)]`
-/

namespace A007490.P16046030511803576770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P16046030511803576770

/-! ## A007490.P13455900980094192515

`p?[A003072(n+1)]`
-/

namespace A007490.P13455900980094192515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007490.P13455900980094192515

/-! ## A007490.P15697480300443623512

`A003072(A024967(n+1))`
-/

namespace A007490.P15697480300443623512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (A024967 (n + 1)).toNat

end

end A007490.P15697480300443623512

/-! ## A007490.P8177377654262519486

`∩[A348283(n+1), A003072(n+1)]`
-/

namespace A007490.P8177377654262519486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P8177377654262519486

/-! ## A007490.P605003824349196206

`p?[A334964(n+1)]`
-/

namespace A007490.P605003824349196206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007490.P605003824349196206

/-! ## A007490.P12650504159216859877

`∩[A000040(n+1), A003072(n+1)]`
-/

namespace A007490.P12650504159216859877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P12650504159216859877

/-! ## A007490.P7859391543491346153

`∩[A003072(n+1), A004139(n+1)]`
-/

namespace A007490.P7859391543491346153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P7859391543491346153

/-! ## A007490.P9358428471392897644

`∩[A003072(n+1), A006005(n+1)]`
-/

namespace A007490.P9358428471392897644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P9358428471392897644

/-! ## A007490.P3687818263313234732

`∩[A003072(n+1), A008578(n+1)]`
-/

namespace A007490.P3687818263313234732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P3687818263313234732

/-! ## A007490.P8903948511319174029

`∩[A003072(n+1), A033946(n+1)]`
-/

namespace A007490.P8903948511319174029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P8903948511319174029

/-! ## A007490.P5431499656927141829

`∩[A003072(n+1), A045319(n+1)]`
-/

namespace A007490.P5431499656927141829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P5431499656927141829

/-! ## A007490.P17812915415821663230

`∩[A003072(n+1), A046022(n+1)]`
-/

namespace A007490.P17812915415821663230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P17812915415821663230

/-! ## A007490.P7421907229757916333

`∩[A003072(n+1), A051948(n+1)]`
-/

namespace A007490.P7421907229757916333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P7421907229757916333

/-! ## A007490.P2485846794778738817

`∩[A003072(n+1), A065091(n+1)]`
-/

namespace A007490.P2485846794778738817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P2485846794778738817

/-! ## A007490.P5273163105615959230

`∩[A003072(n+1), A065396(n+1)]`
-/

namespace A007490.P5273163105615959230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P5273163105615959230

/-! ## A007490.P8695785767682272509

`∩[A003072(n+1), A067126(n+1)]`
-/

namespace A007490.P8695785767682272509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P8695785767682272509

/-! ## A007490.P11338271041379858993

`∩[A003072(n+1), A106118(n+1)]`
-/

namespace A007490.P11338271041379858993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P11338271041379858993

/-! ## A007490.P924111508613556642

`∩[A003072(n+1), A116974(n+1)]`
-/

namespace A007490.P924111508613556642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P924111508613556642

/-! ## A007490.P13887273303354884984

`∩[A003072(n+1), A158611(n+1)]`
-/

namespace A007490.P13887273303354884984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P13887273303354884984

/-! ## A007490.P6181531138339479409

`∩[A003072(n+1), A161346(n+1)]`
-/

namespace A007490.P6181531138339479409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007490.P6181531138339479409

/-!
# A007491: Smallest prime > n^2.

The programs for A007491, the canonical program `A007491.P2456272852996360084` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007491 has offset 1).

The definition of A007491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007491.P2456272852996360084

`A007918(A000290(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007491

/-- `A007918(A000290(n+1))` -/
def P2456272852996360084.Spec : Prop :=
  ∀ n, P2456272852996360084.a n = A007491 (n + 1)

theorem P2456272852996360084.correct : P2456272852996360084.Spec := by
  intro n
  simp only [A007491, Nat.add_sub_cancel]

end A007491

/-! ## A007491.P4621832758561648972

`sqrt(A069639(n+1))`
-/

namespace A007491.P4621832758561648972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069639 (n + 1) : ℝ)

end

end A007491.P4621832758561648972

namespace A007491

/-- `sqrt(A069639(n+1))` -/
def P4621832758561648972.Spec : Prop :=
  ∀ n, P4621832758561648972.a n = (A007491 (n + 1) : ℝ)

end A007491

/-! ## A007491.P11939340284699720830

`A053000(n+1)+(n+1)²`
-/

namespace A007491.P11939340284699720830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A007491.P11939340284699720830

namespace A007491

/-- `A053000(n+1)+(n+1)²` -/
def P11939340284699720830.Spec : Prop :=
  ∀ n, P11939340284699720830.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P6899759716272189253

`(n+2)²-A144831(n+1)`
-/

namespace A007491.P6899759716272189253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A144831 (n + 1)

end

end A007491.P6899759716272189253

namespace A007491

/-- `(n+2)²-A144831(n+1)` -/
def P6899759716272189253.Spec : Prop :=
  ∀ n, P6899759716272189253.a n = A007491 (n + 1)

theorem P6899759716272189253.correct : P6899759716272189253.Spec := by
  intro n
  simp only [A007491, Nat.add_sub_cancel, A007491.P6899759716272189253.a, A007491.P2456272852996360084.a, A000290, A000290.P12206242496348924484.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A144831, A144831.P7474642275724404831.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007491

/-! ## A007491.P949147044038947393

`A132657(n+1)/A053001(n+2)`
-/

namespace A007491.P949147044038947393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132657 (n + 1) : ℚ) / (A053001 (n + 2) : ℚ)

end

end A007491.P949147044038947393

namespace A007491

/-- `A132657(n+1)/A053001(n+2)` -/
def P949147044038947393.Spec : Prop :=
  ∀ n, P949147044038947393.a n = (A007491 (n + 1) : ℚ)

end A007491

/-! ## A007491.P7547096408506579560

`gcd(A069639(n+1), A132657(n+1))`
-/

namespace A007491.P7547096408506579560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069639 (n + 1)) (A132657 (n + 1))

end

end A007491.P7547096408506579560

namespace A007491

/-- `gcd(A069639(n+1), A132657(n+1))` -/
def P7547096408506579560.Spec : Prop :=
  ∀ n, (P7547096408506579560.a n : ℤ) = A007491 (n + 1)

end A007491

/-! ## A007491.P12030326114317183104

`A175787(A132635(n+1))`
-/

namespace A007491.P12030326114317183104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A132635 (n + 1)).toNat

end

end A007491.P12030326114317183104

namespace A007491

/-- `A175787(A132635(n+1))` -/
def P12030326114317183104.Spec : Prop :=
  ∀ n, P12030326114317183104.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P4909743355212192965

`A000040(∑[A014085(n)]+1)`
-/

namespace A007491.P4909743355212192965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A007491.P4909743355212192965

namespace A007491

/-- `A000040(∑[A014085(n)]+1)` -/
def P4909743355212192965.Spec : Prop :=
  ∀ n, P4909743355212192965.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P18382465337361776854

`A008578(∑[A014085(n)]+2)`
-/

namespace A007491.P18382465337361776854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A007491.P18382465337361776854

namespace A007491

/-- `A008578(∑[A014085(n)]+2)` -/
def P18382465337361776854.Spec : Prop :=
  ∀ n, P18382465337361776854.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P18186656919578205044

`A000040(A038107(n+1)+1)`
-/

namespace A007491.P18186656919578205044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 (n + 1) + 1).toNat

end

end A007491.P18186656919578205044

namespace A007491

/-- `A000040(A038107(n+1)+1)` -/
def P18186656919578205044.Spec : Prop :=
  ∀ n, P18186656919578205044.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P6335882978285732002

`A008578(A038107(n+1)+2)`
-/

namespace A007491.P6335882978285732002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A038107 (n + 1) + 2).toNat

end

end A007491.P6335882978285732002

namespace A007491

/-- `A008578(A038107(n+1)+2)` -/
def P6335882978285732002.Spec : Prop :=
  ∀ n, P6335882978285732002.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P2342718532542594275

`A182986(A038107(n+1)+2)`
-/

namespace A007491.P2342718532542594275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A038107 (n + 1) + 2).toNat

end

end A007491.P2342718532542594275

namespace A007491

/-- `A182986(A038107(n+1)+2)` -/
def P2342718532542594275.Spec : Prop :=
  ∀ n, P2342718532542594275.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P11979715328991992344

`A000040(A161187(n+1)-n)`
-/

namespace A007491.P11979715328991992344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A161187 (n + 1) - (n : ℤ)).toNat

end

end A007491.P11979715328991992344

namespace A007491

/-- `A000040(A161187(n+1)-n)` -/
def P11979715328991992344.Spec : Prop :=
  ∀ n, P11979715328991992344.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P7188116362090418256

`A000040((n+1)²-A065893(n+1))`
-/

namespace A007491.P7188116362090418256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (((n + 1) ^ 2 : ℤ) - A065893 (n + 1)).toNat

end

end A007491.P7188116362090418256

namespace A007491

/-- `A000040((n+1)²-A065893(n+1))` -/
def P7188116362090418256.Spec : Prop :=
  ∀ n, P7188116362090418256.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P6049488907886928338

`A089237(A161187(n+1)+2)`
-/

namespace A007491.P6049488907886928338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (A161187 (n + 1) + 2).toNat

end

end A007491.P6049488907886928338

namespace A007491

/-- `A089237(A161187(n+1)+2)` -/
def P6049488907886928338.Spec : Prop :=
  ∀ n, P6049488907886928338.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P2978640525932447037

`A151800((1+n)²)`
-/

namespace A007491.P2978640525932447037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((1 + n) ^ 2)

end

end A007491.P2978640525932447037

namespace A007491

/-- `A151800((1+n)²)` -/
def P2978640525932447037.Spec : Prop :=
  ∀ n, P2978640525932447037.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P14763490222453999656

`A151799(A187873(n+1))`
-/

namespace A007491.P14763490222453999656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A187873 (n + 1)).toNat

end

end A007491.P14763490222453999656

namespace A007491

/-- `A151799(A187873(n+1))` -/
def P14763490222453999656.Spec : Prop :=
  ∀ n, P14763490222453999656.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P6380663616252849817

`record[A151800(A078898(n)²)]`
-/

namespace A007491.P6380663616252849817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A078898 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007491.P6380663616252849817

namespace A007491

/-- `record[A151800(A078898(n)²)]` -/
def P6380663616252849817.Spec : Prop :=
  ∀ n, P6380663616252849817.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P15231854130074779224

`A007913(A151800(n*(n+2)))`
-/

namespace A007491.P15231854130074779224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A151800 (n * (n + 2))).toNat

end

end A007491.P15231854130074779224

namespace A007491

/-- `A007913(A151800(n*(n+2)))` -/
def P15231854130074779224.Spec : Prop :=
  ∀ n, P15231854130074779224.a n = A007491 (n + 1)

end A007491

/-! ## A007491.P11110760600810152121

`A000040(A000720((n+1)²)+1)`
-/

namespace A007491.P11110760600810152121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 ((n + 1) ^ 2) + 1).toNat

end

end A007491.P11110760600810152121

namespace A007491

/-- `A000040(A000720((n+1)²)+1)` -/
def P11110760600810152121.Spec : Prop :=
  ∀ n, P11110760600810152121.a n = A007491 (n + 1)

end A007491

/-!
# A007492: Fibonacci(n) - (-1)^n.

The programs for A007492, the canonical program `A007492.P3468359899504453901` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007492 has offset 1).

The definition of A007492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)-(-1)^(n+1)` (program `A007492.P3468359899504453901`, by `A007492.P3468359899504453901.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007492.P3755339211610149668

`ogf((2-x^2)/(1-2x^2-x^3))`
-/

namespace A007492.P3755339211610149668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, 0, -2, -1] n

end

end A007492.P3755339211610149668

namespace A007492

/-- `ogf((2-x^2)/(1-2x^2-x^3))` -/
def P3755339211610149668.Spec : Prop :=
  ∀ n, P3755339211610149668.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P3468359899504453901

`A000045(n+1)-(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007492

/-- `A000045(n+1)-(-1)^(n+1)` -/
def P3468359899504453901.Spec : Prop :=
  ∀ n, P3468359899504453901.a n = A007492 (n + 1)

theorem P3468359899504453901.correct : P3468359899504453901.Spec := by
  intro n
  simp only [A007492, Nat.add_sub_cancel]

end A007492

/-! ## A007492.P12255724621754706366

`2*a(n-2)+a(n-3)` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A007492.P12255724621754706366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A007492.P12255724621754706366

namespace A007492

/-- `2*a(n-2)+a(n-3)` -/
def P12255724621754706366.Spec : Prop :=
  ∀ n, (P12255724621754706366.a n : ℤ) = A007492 (n + 1)

end A007492

/-! ## A007492.P7777763516567602095

`a(n-1)+a(n-2)+(-1)^n` with `a(0)=2, a(1)=0`
-/

namespace A007492.P7777763516567602095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 1) + (a (n - 2) + (-1) ^ n)

end

end A007492.P7777763516567602095

namespace A007492

/-- `a(n-1)+a(n-2)+(-1)^n` -/
def P7777763516567602095.Spec : Prop :=
  ∀ n, P7777763516567602095.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P17253415687178484094

`floor(a(n-2)+a(n-2)+a(n-3))` with `a(0)=2, a(1)=0, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A007492.P17253415687178484094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A007492.P17253415687178484094

namespace A007492

/-- `floor(a(n-2)+a(n-2)+a(n-3))` -/
def P17253415687178484094.Spec : Prop :=
  ∀ n, (P17253415687178484094.a n : ℤ) = A007492 (n + 1)

end A007492

/-! ## A007492.P16554607129719022826

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=2, a(1)=-2, a(2)=3, a(3)=-1`
-/

namespace A007492.P16554607129719022826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2, 3, -1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007492.P16554607129719022826

namespace A007492

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P16554607129719022826.Spec : Prop :=
  ∀ n, P16554607129719022826.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P2026349784632957932

`A052959(n)-and(1, n)`
-/

namespace A007492.P2026349784632957932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n - (Nat.land 1 n : ℤ)

end

end A007492.P2026349784632957932

namespace A007492

/-- `A052959(n)-and(1, n)` -/
def P2026349784632957932.Spec : Prop :=
  ∀ n, P2026349784632957932.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P16335900064836052430

`abs(1-Δ[A119282(n)])`
-/

namespace A007492.P16335900064836052430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A007492.P16335900064836052430

namespace A007492

/-- `abs(1-Δ[A119282(n)])` -/
def P16335900064836052430.Spec : Prop :=
  ∀ n, P16335900064836052430.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P2133081872620419690

`abs(2-A355020(n+1))`
-/

namespace A007492.P2133081872620419690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A355020 (n + 1)|

end

end A007492.P2133081872620419690

namespace A007492

/-- `abs(2-A355020(n+1))` -/
def P2133081872620419690.Spec : Prop :=
  ∀ n, P2133081872620419690.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P5811895497871016157

`A000045(n+1)+cos(π*n)`
-/

namespace A007492.P5811895497871016157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℝ) + Real.cos (Real.pi * (n : ℝ))

end

end A007492.P5811895497871016157

namespace A007492

/-- `A000045(n+1)+cos(π*n)` -/
def P5811895497871016157.Spec : Prop :=
  ∀ n, P5811895497871016157.a n = (A007492 (n + 1) : ℝ)

end A007492

/-! ## A007492.P5537608907756092961

`A000032(n-1)+a(n-4)` with `a(0)=2, a(1)=0, a(2)=3, a(3)=2`
-/

namespace A007492.P5537608907756092961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 3, 2] fun n a =>
  A000032 (n - 1) + a (n - 4)

end

end A007492.P5537608907756092961

namespace A007492

/-- `A000032(n-1)+a(n-4)` -/
def P5537608907756092961.Spec : Prop :=
  ∀ n, P5537608907756092961.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P15333013205192203086

`A226649(A053438(n))`
-/

namespace A007492.P15333013205192203086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (A053438 n).toNat

end

end A007492.P15333013205192203086

namespace A007492

/-- `A226649(A053438(n))` -/
def P15333013205192203086.Spec : Prop :=
  ∀ n, P15333013205192203086.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P3288440911936603019

`A114285(n)+A081659(n)`
-/

namespace A007492.P3288440911936603019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 n + A081659 n

end

end A007492.P3288440911936603019

namespace A007492

/-- `A114285(n)+A081659(n)` -/
def P3288440911936603019.Spec : Prop :=
  ∀ n, P3288440911936603019.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P5101806742851035811

`A212804(n)+A008346(n)`
-/

namespace A007492.P5101806742851035811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A008346 n

end

end A007492.P5101806742851035811

namespace A007492

/-- `A212804(n)+A008346(n)` -/
def P5101806742851035811.Spec : Prop :=
  ∀ n, P5101806742851035811.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P243818987834617838

`A052959(n)-A000035(n)`
-/

namespace A007492.P243818987834617838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n - A000035 n

end

end A007492.P243818987834617838

namespace A007492

/-- `A052959(n)-A000035(n)` -/
def P243818987834617838.Spec : Prop :=
  ∀ n, P243818987834617838.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P8304770452937273389

`A033999(n)+∑[A212804(n)]`
-/

namespace A007492.P8304770452937273389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007492.P8304770452937273389

namespace A007492

/-- `A033999(n)+∑[A212804(n)]` -/
def P8304770452937273389.Spec : Prop :=
  ∀ n, P8304770452937273389.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P15748970655315947215

`A033999(n)+A000045(n+1)`
-/

namespace A007492.P15748970655315947215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000045 (n + 1)

end

end A007492.P15748970655315947215

namespace A007492

/-- `A033999(n)+A000045(n+1)` -/
def P15748970655315947215.Spec : Prop :=
  ∀ n, P15748970655315947215.a n = A007492 (n + 1)

theorem P15748970655315947215.correct : P15748970655315947215.Spec := by
  intro n
  simp only [A007492, Nat.add_sub_cancel, A007492.P15748970655315947215.a, A007492.P3468359899504453901.a, A000045, A000045.P11838749114346432762.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A007492

/-! ## A007492.P10468987886187241177

`A078024(n)+A066983(n+1)`
-/

namespace A007492.P10468987886187241177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n + A066983 (n + 1)

end

end A007492.P10468987886187241177

namespace A007492

/-- `A078024(n)+A066983(n+1)` -/
def P10468987886187241177.Spec : Prop :=
  ∀ n, P10468987886187241177.a n = A007492 (n + 1)

end A007492

/-! ## A007492.P9948916781999534400

`A168361(n+1)+A074331(n)`
-/

namespace A007492.P9948916781999534400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) + A074331 n

end

end A007492.P9948916781999534400

namespace A007492

/-- `A168361(n+1)+A074331(n)` -/
def P9948916781999534400.Spec : Prop :=
  ∀ n, P9948916781999534400.a n = A007492 (n + 1)

end A007492

/-!
# A007494: Numbers that are congruent to 0 or 2 mod 3.

The programs for A007494, the canonical program `A007494.P3893619610466939533` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007494 has offset 0).

The definition of A007494 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A007494.anchor (n : ℕ) : A007494 n = (Nat.nth (fun k => k % 3 ∈ ({0, 2} : Finset ℕ)) (n) : ℤ)` in `Proof.A007.A007494`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007494.P3893619610466939533

`n+ceil(n/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007494

/-- `n+ceil(n/2)` -/
def P3893619610466939533.Spec : Prop :=
  ∀ n, P3893619610466939533.a n = A007494 n

theorem P3893619610466939533.correct : P3893619610466939533.Spec := by
  intro n
  simp only [A007494]

end A007494

/-! ## A007494.P1053816395861971065

`ogf((2x+x^2)/(1-x-x^2+x^3))`
-/

namespace A007494.P1053816395861971065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, -1, -1, 1] n

end

end A007494.P1053816395861971065

namespace A007494

/-- `ogf((2x+x^2)/(1-x-x^2+x^3))` -/
def P1053816395861971065.Spec : Prop :=
  ∀ n, P1053816395861971065.a n = A007494 n

end A007494

/-! ## A007494.P17766189371926681842

`comp[1+lcm(n, 3)]`
-/

namespace A007494.P17766189371926681842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.lcm n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007494.P17766189371926681842

namespace A007494

/-- `comp[1+lcm(n, 3)]` -/
def P17766189371926681842.Spec : Prop :=
  ∀ n, (P17766189371926681842.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P16109818459321243932

`comp[n^(n%3)]`
-/

namespace A007494.P16109818459321243932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007494.P16109818459321243932

namespace A007494

/-- `comp[n^(n%3)]` -/
def P16109818459321243932.Spec : Prop :=
  ∀ n, (P16109818459321243932.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P3170621598554128537

`comp[n^dr(n^3)]`
-/

namespace A007494.P3170621598554128537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n ^ 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007494.P3170621598554128537

namespace A007494

/-- `comp[n^dr(n^3)]` -/
def P3170621598554128537.Spec : Prop :=
  ∀ n, (P3170621598554128537.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P17347789430415077086

`comp[n+record[xor(1, n)]]`
-/

namespace A007494.P17347789430415077086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007494.P17347789430415077086

namespace A007494

/-- `comp[n+record[xor(1, n)]]` -/
def P17347789430415077086.Spec : Prop :=
  ∀ n, (P17347789430415077086.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P5841366713294464531

`comp[3*xor(1, n)+1]`
-/

namespace A007494.P5841366713294464531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007494.P5841366713294464531

namespace A007494

/-- `comp[3*xor(1, n)+1]` -/
def P5841366713294464531.Spec : Prop :=
  ∀ n, (P5841366713294464531.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P5994985611416386290

`comp[a(n-1)+3]` with `a(0)=1`
-/

namespace A007494.P5994985611416386290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007494.P5994985611416386290

namespace A007494

/-- `comp[a(n-1)+3]` -/
def P5994985611416386290.Spec : Prop :=
  ∀ n, (P5994985611416386290.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P6505233299331088424

`∑[a(n-2)!]` with `a(0)=0, a(1)=2`
-/

namespace A007494.P6505233299331088424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.factorial (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007494.P6505233299331088424

namespace A007494

/-- `∑[a(n-2)!]` -/
def P6505233299331088424.Spec : Prop :=
  ∀ n, (P6505233299331088424.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P14504772870478397133

`comp[(1-n)%3+n]`
-/

namespace A007494.P14504772870478397133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 3 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007494.P14504772870478397133

namespace A007494

/-- `comp[(1-n)%3+n]` -/
def P14504772870478397133.Spec : Prop :=
  ∀ n, (P14504772870478397133.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P1142829081321775020

`comp[n-(n-1)%3]`
-/

namespace A007494.P1142829081321775020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007494.P1142829081321775020

namespace A007494

/-- `comp[n-(n-1)%3]` -/
def P1142829081321775020.Spec : Prop :=
  ∀ n, (P1142829081321775020.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P9066281934782034506

`record[n-val(n+2, 3)]`
-/

namespace A007494.P9066281934782034506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 2) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007494.P9066281934782034506

namespace A007494

/-- `record[n-val(n+2, 3)]` -/
def P9066281934782034506.Spec : Prop :=
  ∀ n, P9066281934782034506.a n = A007494 n

end A007494

/-! ## A007494.P15992817213587647080

`comp[or(1, 2*n)+n]`
-/

namespace A007494.P15992817213587647080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007494.P15992817213587647080

namespace A007494

/-- `comp[or(1, 2*n)+n]` -/
def P15992817213587647080.Spec : Prop :=
  ∀ n, (P15992817213587647080.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P13729502511780475044

`∑[1-floor(cos(2)^n)]`
-/

namespace A007494.P13729502511780475044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.cos (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007494.P13729502511780475044

namespace A007494

/-- `∑[1-floor(cos(2)^n)]` -/
def P13729502511780475044.Spec : Prop :=
  ∀ n, P13729502511780475044.a n = A007494 n

end A007494

/-! ## A007494.P14398191406378865987

`∑[1-floor(tan(3)^n)]`
-/

namespace A007494.P14398191406378865987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.tan (3 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007494.P14398191406378865987

namespace A007494

/-- `∑[1-floor(tan(3)^n)]` -/
def P14398191406378865987.Spec : Prop :=
  ∀ n, P14398191406378865987.a n = A007494 n

end A007494

/-! ## A007494.P12131226096305269383

`∑[1-floor(cot(2)^n)]`
-/

namespace A007494.P12131226096305269383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.cot (2 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007494.P12131226096305269383

namespace A007494

/-- `∑[1-floor(cot(2)^n)]` -/
def P12131226096305269383.Spec : Prop :=
  ∀ n, P12131226096305269383.a n = A007494 n

end A007494

/-! ## A007494.P9307230103395932187

`lt[n, n^dr(n^3)]`
-/

namespace A007494.P9307230103395932187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007494.P9307230103395932187

namespace A007494

/-- `lt[n, n^dr(n^3)]` -/
def P9307230103395932187.Spec : Prop :=
  ∀ n, (P9307230103395932187.a n : ℤ) = A007494 n

end A007494

/-! ## A007494.P4055788086206323381

`∑[3-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A007494.P4055788086206323381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007494.P4055788086206323381

namespace A007494

/-- `∑[3-a(n-1)]` -/
def P4055788086206323381.Spec : Prop :=
  ∀ n, P4055788086206323381.a n = A007494 n

end A007494

/-! ## A007494.P1584407425035415289

`∑[∑[ogf((2x+x^2)/(1+x))]]`
-/

namespace A007494.P1584407425035415289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007494.P1584407425035415289

namespace A007494

/-- `∑[∑[ogf((2x+x^2)/(1+x))]]` -/
def P1584407425035415289.Spec : Prop :=
  ∀ n, P1584407425035415289.a n = A007494 n

end A007494

/-!
# A007495: Josephus problem: survivors.

The programs for A007495, there is no canonical definition to state claims against.
-/

/-! ## A007495.P134854594777909368

`A291317(abs(2-n)+1)+floor(atan(n))`
-/

namespace A007495.P134854594777909368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291317 (|2 - (n : ℤ)| + 1).toNat + ⌊Real.arctan (n : ℝ)⌋

end

end A007495.P134854594777909368

/-! ## A007495.P989028785762794964

`A291317(n-1)+a(log2(A006928(n)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A007495.P989028785762794964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A291317 (n - 1) + a (SequenceMachineLib.roundAway (Real.logb 2 (A006928 n : ℝ))).toNat

end

end A007495.P989028785762794964

/-! ## A007495.P5224965897969983889

`A032434(∑[1+n])`
-/

namespace A007495.P5224965897969983889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032434 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007495.P5224965897969983889

/-! ## A007495.P4215978303652194348

`A032434(∑[Δ[n²]-n])%comp[n²]`
-/

namespace A007495.P4215978303652194348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

end

end A007495.P4215978303652194348

/-! ## A007495.P11459203192715259833

`A000027(A032434(∑[Δ[n²]-n]))`
-/

namespace A007495.P11459203192715259833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A032434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A007495.P11459203192715259833

/-! ## A007495.P11384365888308675702

`A033999(n)²*A032434(∑[Δ[n²]-n])`
-/

namespace A007495.P11384365888308675702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A032434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007495.P11384365888308675702

/-! ## A007495.P15620215547778215927

`A000034(2*n)*A032434(∑[Δ[n²]-n])`
-/

namespace A007495.P15620215547778215927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A032434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007495.P15620215547778215927

/-! ## A007495.P8907045860993696185

`A007318(C(2, n))*A032434(A000217(n+1))`
-/

namespace A007495.P8907045860993696185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A032434 (A000217 (n + 1)).toNat

end

end A007495.P8907045860993696185

/-! ## A007495.P5076602866866032961

`A032434(A000217(n+1))*A053150(A004709(n+1))`
-/

namespace A007495.P5076602866866032961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032434 (A000217 (n + 1)).toNat * A053150 (A004709 (n + 1)).toNat

end

end A007495.P5076602866866032961

/-! ## A007495.P1152153595088153325

`A000188(A032434(∑[Δ[n²]-n])²)`
-/

namespace A007495.P1152153595088153325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A032434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2).toNat

end

end A007495.P1152153595088153325

/-! ## A007495.P7641446072323143807

`A019554(A032434(∑[Δ[n²]-n])²)`
-/

namespace A007495.P7641446072323143807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A032434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2).toNat

end

end A007495.P7641446072323143807

/-!
# A007496: Numbers n such that the decimal expansions of 2^n and 5^n contain no 0's (probably 33 is last term).

The programs for A007496, there is no canonical definition to state claims against.
-/

/-! ## A007496.P16211347453537581751

`comp[ceil(sqrt(n+1)-root(n+1, 3))+8+n]`
-/

namespace A007496.P16211347453537581751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ + 8 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007496.P16211347453537581751

/-! ## A007496.P13314305473085126121

`lt[n, A060376(n)]`
-/

namespace A007496.P13314305473085126121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A007496.P13314305473085126121

/-! ## A007496.P7136566025499885347

`lt[A127432(n+1), 5]`
-/

namespace A007496.P7136566025499885347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127432 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007496.P7136566025499885347

/-! ## A007496.P14854887454345939746

`A153835(C(n, 8))+n`
-/

namespace A007496.P14854887454345939746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153835 (Nat.choose n 8) + (n : ℤ)

end

end A007496.P14854887454345939746

/-! ## A007496.P17540338235579671316

`lt[and(n, A135997(n)), 3]`
-/

namespace A007496.P17540338235579671316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A135997 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007496.P17540338235579671316

/-!
# A007497: a(1) = 2, a(n) = sigma(a(n-1)).

The programs for A007497, the canonical program `A007497.P7041758846218109594` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007497 has offset 1).

The definition of A007497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(a(n-1))` (program `A007497.P7041758846218109594`, by `A007497.P7041758846218109594.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007497.P7041758846218109594

`A000203(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007497

/-- `A000203(a(n-1))` -/
def P7041758846218109594.Spec : Prop :=
  ∀ n, P7041758846218109594.a n = A007497 (n + 1)

theorem P7041758846218109594.correct : P7041758846218109594.Spec := by
  intro n
  simp only [A007497, Nat.add_sub_cancel]

end A007497

/-! ## A007497.P1474137449093544401

`A000203(abs(a((2*n)%(n+1))))` with `a(0)=2`
-/

namespace A007497.P1474137449093544401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000203 |a (2 * n % (n + 1))|.toNat

end

end A007497.P1474137449093544401

namespace A007497

/-- `A000203(abs(a((2*n)%(n+1))))` -/
def P1474137449093544401.Spec : Prop :=
  ∀ n, P1474137449093544401.a n = A007497 (n + 1)

end A007497

/-! ## A007497.P3572923107749643102

`A000203(a(xor(-1, -n)))%(6^n)` with `a(0)=2`
-/

namespace A007497.P3572923107749643102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A000203 (a (Int.xor (-1) (-(n : ℤ))).toNat).toNat) (6 ^ n : ℤ)

end

end A007497.P3572923107749643102

namespace A007497

/-- `A000203(a(xor(-1, -n)))%(6^n)` -/
def P3572923107749643102.Spec : Prop :=
  ∀ n, P3572923107749643102.a n = A007497 (n + 1)

end A007497

/-! ## A007497.P6270994006749889872

`A000203(floor(n*a(floor(n²/(n+1))))/n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A007497.P6270994006749889872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000203 (SequenceMachineLib.roundAway (((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat : ℚ) / (n : ℚ))).toNat

end

end A007497.P6270994006749889872

namespace A007497

/-- `A000203(floor(n*a(floor(n²/(n+1))))/n)` -/
def P6270994006749889872.Spec : Prop :=
  ∀ n, P6270994006749889872.a n = A007497 (n + 1)

end A007497

/-! ## A007497.P4243394525670857288

`A000203(abs(a(A023443(n))))` with `a(0)=2`
-/

namespace A007497.P4243394525670857288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000203 |a (A023443 n).toNat|.toNat

end

end A007497.P4243394525670857288

namespace A007497

/-- `A000203(abs(a(A023443(n))))` -/
def P4243394525670857288.Spec : Prop :=
  ∀ n, P4243394525670857288.a n = A007497 (n + 1)

end A007497

/-!
# A007498: Unique period lengths of primes mentioned in A007615.

The programs for A007498, there is no canonical definition to state claims against.
-/

/-! ## A007498.P13362146039250701722

`eq[1, char[A051627(n+1)]]`
-/

namespace A007498.P13362146039250701722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051627 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007498.P13362146039250701722

/-! ## A007498.P15615496015545003939

`eq[1, A112505(n+1)]+1`
-/

namespace A007498.P15615496015545003939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007498.P15615496015545003939

/-! ## A007498.P1894919150033288263

`record[(n+1)/A112505(-xor(n, -1))]`
-/

namespace A007498.P1894919150033288263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A112505 (-Int.xor (n : ℤ) (-1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007498.P1894919150033288263

/-! ## A007498.P14607530254012916545

`record[A000027(n+1)/A112505(n+1)]`
-/

namespace A007498.P14607530254012916545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A112505 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007498.P14607530254012916545

/-! ## A007498.P16964390394959363536

`record[A028310(n+1)/A112505(n+1)]`
-/

namespace A007498.P16964390394959363536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A112505 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007498.P16964390394959363536

/-!
# A007499: Number of cases considered in a particular algorithm for enumerating hexaflexagrams.

The programs for A007499, there is no canonical definition to state claims against.
-/

/-! ## A007499.P17185802105373228320

`A347610(A055498(n+2)+n%2+4)`
-/

namespace A007499.P17185802105373228320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (A055498 (n + 2) + ((n % 2 + 4 : ℕ) : ℤ)).toNat

end

end A007499.P17185802105373228320

/-! ## A007499.P8998514188202075319

`A026819((∑[n+2]+4)*A196420(n+1))`
-/

namespace A007499.P8998514188202075319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ) * A196420 (n + 1)).toNat

end

end A007499.P8998514188202075319

/-! ## A007499.P8295652549920284705

`A321440(A241638(n)+A061095(n+1))`
-/

namespace A007499.P8295652549920284705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321440 (A241638 n + A061095 (n + 1)).toNat

end

end A007499.P8295652549920284705

