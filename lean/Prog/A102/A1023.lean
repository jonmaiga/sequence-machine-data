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
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A102300: Number of distinct prime divisors of n where n and n+1 are composite or twin composite numbers.

The programs for A102300, the canonical program `A102300.P15809373364122392367` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102300 has offset 1).

The definition of A102300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102300.P15809373364122392367

`∑{e}[∏{p}[1-A005381(n+1), #], #]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102300

/-- `∑{e}[∏{p}[1-A005381(n+1), #], #]` -/
def P15809373364122392367.Spec : Prop :=
  ∀ n, (P15809373364122392367.a n : ℤ) = A102300 (n + 1)

theorem P15809373364122392367.correct : P15809373364122392367.Spec := by
  intro n
  simp only [A102300, Nat.add_sub_cancel]

end A102300

/-! ## A102300.P17178930538474479302

`A001221(A068780(n+1))`
-/

namespace A102300.P17178930538474479302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A068780 (n + 1)).toNat

end

end A102300.P17178930538474479302

namespace A102300

/-- `A001221(A068780(n+1))` -/
def P17178930538474479302.Spec : Prop :=
  ∀ n, P17178930538474479302.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P8711739023769009410

`A001221(A005381(n+1)-1)`
-/

namespace A102300.P8711739023769009410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005381 (n + 1) - 1).toNat

end

end A102300.P8711739023769009410

namespace A102300

/-- `A001221(A005381(n+1)-1)` -/
def P8711739023769009410.Spec : Prop :=
  ∀ n, P8711739023769009410.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P10055426683149446031

`A087624(A005381(n+1)-1)`
-/

namespace A102300.P10055426683149446031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A005381 (n + 1) - 1).toNat

end

end A102300.P10055426683149446031

namespace A102300

/-- `A087624(A005381(n+1)-1)` -/
def P10055426683149446031.Spec : Prop :=
  ∀ n, P10055426683149446031.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P4492314184959796756

`A001221(A308833(n+2)+1)`
-/

namespace A102300.P4492314184959796756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A308833 (n + 2) + 1).toNat

end

end A102300.P4492314184959796756

namespace A102300

/-- `A001221(A308833(n+2)+1)` -/
def P4492314184959796756.Spec : Prop :=
  ∀ n, P4492314184959796756.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P6219026000257435074

`A001221(lt[0, A323162(n+1)])`
-/

namespace A102300.P6219026000257435074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102300.P6219026000257435074

namespace A102300

/-- `A001221(lt[0, A323162(n+1)])` -/
def P6219026000257435074.Spec : Prop :=
  ∀ n, P6219026000257435074.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P3464852820647206784

`A001221(eq[1, A323162(n+1)])`
-/

namespace A102300.P3464852820647206784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102300.P3464852820647206784

namespace A102300

/-- `A001221(eq[1, A323162(n+1)])` -/
def P3464852820647206784.Spec : Prop :=
  ∀ n, P3464852820647206784.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P15685160174036135363

`A001221(lt[1, A064722(n+1)])`
-/

namespace A102300.P15685160174036135363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102300.P15685160174036135363

namespace A102300

/-- `A001221(lt[1, A064722(n+1)])` -/
def P15685160174036135363.Spec : Prop :=
  ∀ n, P15685160174036135363.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P15224291767071880577

`A001221(lt[2, A175851(n+1)])`
-/

namespace A102300.P15224291767071880577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102300.P15224291767071880577

namespace A102300

/-- `A001221(lt[2, A175851(n+1)])` -/
def P15224291767071880577.Spec : Prop :=
  ∀ n, P15224291767071880577.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P12088508012086263497

`A001221(lt[1, A001222(or(1, n))])`
-/

namespace A102300.P12088508012086263497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102300.P12088508012086263497

namespace A102300

/-- `A001221(lt[1, A001222(or(1, n))])` -/
def P12088508012086263497.Spec : Prop :=
  ∀ n, P12088508012086263497.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P8608357594813164999

`A001221(lt[2, A000005(or(1, n))])`
-/

namespace A102300.P8608357594813164999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102300.P8608357594813164999

namespace A102300

/-- `A001221(lt[2, A000005(or(1, n))])` -/
def P8608357594813164999.Spec : Prop :=
  ∀ n, P8608357594813164999.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P4821458774388366299

`A001221(lt[A006530(or(1, n)), n])`
-/

namespace A102300.P4821458774388366299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102300.P4821458774388366299

namespace A102300

/-- `A001221(lt[A006530(or(1, n)), n])` -/
def P4821458774388366299.Spec : Prop :=
  ∀ n, P4821458774388366299.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P494515395026107851

`A001221(lt[A014963(or(1, n)), n])`
-/

namespace A102300.P494515395026107851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102300.P494515395026107851

namespace A102300

/-- `A001221(lt[A014963(or(1, n)), n])` -/
def P494515395026107851.Spec : Prop :=
  ∀ n, P494515395026107851.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P17139932562266383629

`A001221(lt[A020639(or(1, n)), n])`
-/

namespace A102300.P17139932562266383629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102300.P17139932562266383629

namespace A102300

/-- `A001221(lt[A020639(or(1, n)), n])` -/
def P17139932562266383629.Spec : Prop :=
  ∀ n, P17139932562266383629.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P14384122876422400274

`∑{p}[1-A005381(n+1), A001222(#)]`
-/

namespace A102300.P14384122876422400274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A102300.P14384122876422400274

namespace A102300

/-- `∑{p}[1-A005381(n+1), A001222(#)]` -/
def P14384122876422400274.Spec : Prop :=
  ∀ n, P14384122876422400274.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P6448675247258090925

`A001222(∏{p}[1-A005381(n+1), #])`
-/

namespace A102300.P6448675247258090925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A102300.P6448675247258090925

namespace A102300

/-- `A001222(∏{p}[1-A005381(n+1), #])` -/
def P6448675247258090925.Spec : Prop :=
  ∀ n, P6448675247258090925.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P14195787828297734128

`A001221(lt[n+2, A000203(or(1, n))])`
-/

namespace A102300.P14195787828297734128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102300.P14195787828297734128

namespace A102300

/-- `A001221(lt[n+2, A000203(or(1, n))])` -/
def P14195787828297734128.Spec : Prop :=
  ∀ n, P14195787828297734128.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P4280843220961626915

`A001221(lt[A093074(n+1), n+1]+1)`
-/

namespace A102300.P4280843220961626915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A102300.P4280843220961626915

namespace A102300

/-- `A001221(lt[A093074(n+1), n+1]+1)` -/
def P4280843220961626915.Spec : Prop :=
  ∀ n, P4280843220961626915.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P16215064924426409284

`A001221(lt[3, A001065(n-and(1, n)+1)])`
-/

namespace A102300.P16215064924426409284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ((n : ℤ) - (Nat.land 1 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102300.P16215064924426409284

namespace A102300

/-- `A001221(lt[3, A001065(n-and(1, n)+1)])` -/
def P16215064924426409284.Spec : Prop :=
  ∀ n, P16215064924426409284.a n = A102300 (n + 1)

end A102300

/-! ## A102300.P5350367011392863678

`A001221(lt[A006530((n+1)*a(n-1)), n])` with `a(0)=6`
-/

namespace A102300.P5350367011392863678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A006530 ((n + 1 : ℤ) * f1 (n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102300.P5350367011392863678

namespace A102300

/-- `A001221(lt[A006530((n+1)*a(n-1)), n])` -/
def P5350367011392863678.Spec : Prop :=
  ∀ n, P5350367011392863678.a n = A102300 (n + 1)

end A102300

/-!
# A102301: a(n) = ((3*n + 1)*2^(n+3) + 9 + (-1)^n)/18.

The programs for A102301, the canonical program `A102301.P14924752589516511895` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102301 has offset 0).

The definition of A102301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102301.P14924752589516511895

`((3*n+1)*2^(n+3)+9+(-1)^n)/18`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102301

/-- `((3*n+1)*2^(n+3)+9+(-1)^n)/18` -/
def P14924752589516511895.Spec : Prop :=
  ∀ n, P14924752589516511895.a n = (A102301 n : ℚ)

end A102301

/-! ## A102301.P17785356296142644969

`a(n-2)+(n+1)*2^n` with `a(0)=1, a(1)=4`
-/

namespace A102301.P17785356296142644969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (n + 1) * 2 ^ n

end

end A102301.P17785356296142644969

namespace A102301

/-- `a(n-2)+(n+1)*2^n` -/
def P17785356296142644969.Spec : Prop :=
  ∀ n, (P17785356296142644969.a n : ℤ) = A102301 n

end A102301

/-! ## A102301.P679605042431430369

`a(n-2)%2+4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A102301.P679605042431430369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.tmod (a (n - 2)) 2 + 4 * (a (n - 1) - a (n - 2))

end

end A102301.P679605042431430369

namespace A102301

/-- `a(n-2)%2+4*(a(n-1)-a(n-2))` -/
def P679605042431430369.Spec : Prop :=
  ∀ n, P679605042431430369.a n = A102301 n

end A102301

/-! ## A102301.P5823260755000691605

`∑[A045883(n+1)]`
-/

namespace A102301.P5823260755000691605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102301.P5823260755000691605

namespace A102301

/-- `∑[A045883(n+1)]` -/
def P5823260755000691605.Spec : Prop :=
  ∀ n, P5823260755000691605.a n = A102301 n

end A102301

/-! ## A102301.P7965924991704400047

`∑[∑[A059570(n+1)]]`
-/

namespace A102301.P7965924991704400047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102301.P7965924991704400047

namespace A102301

/-- `∑[∑[A059570(n+1)]]` -/
def P7965924991704400047.Spec : Prop :=
  ∀ n, P7965924991704400047.a n = A102301 n

end A102301

/-! ## A102301.P14693605066605436426

`A048474(n)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A102301.P14693605066605436426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  A048474 n - a (n - 3)

end

end A102301.P14693605066605436426

namespace A102301

/-- `A048474(n)-a(n-3)` -/
def P14693605066605436426.Spec : Prop :=
  ∀ n, P14693605066605436426.a n = A102301 n

end A102301

/-! ## A102301.P3984287287968739686

`A000975(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A102301.P3984287287968739686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000975 (n + 1) + 2 * a (n - 1)

end

end A102301.P3984287287968739686

namespace A102301

/-- `A000975(n+1)+2*a(n-1)` -/
def P3984287287968739686.Spec : Prop :=
  ∀ n, P3984287287968739686.a n = A102301 n

end A102301

/-! ## A102301.P12285597801082415116

`∑[A001045(n+1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A102301.P12285597801082415116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A102301.P12285597801082415116

namespace A102301

/-- `∑[A001045(n+1)]+2*a(n-1)` -/
def P12285597801082415116.Spec : Prop :=
  ∀ n, P12285597801082415116.a n = A102301 n

end A102301

/-! ## A102301.P14350409417810617810

`A283642(n)+2*a(n-1)-n%2` with `a(0)=1`
-/

namespace A102301.P14350409417810617810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283642 n + (2 * a (n - 1) - ((n % 2 : ℕ) : ℤ))

end

end A102301.P14350409417810617810

namespace A102301

/-- `A283642(n)+2*a(n-1)-n%2` -/
def P14350409417810617810.Spec : Prop :=
  ∀ n, P14350409417810617810.a n = A102301 n

end A102301

/-! ## A102301.P1029353944772428332

`A127985(n)+A002064(n)`
-/

namespace A102301.P1029353944772428332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n + A002064 n

end

end A102301.P1029353944772428332

namespace A102301

/-- `A127985(n)+A002064(n)` -/
def P1029353944772428332.Spec : Prop :=
  ∀ n, P1029353944772428332.a n = A102301 n

end A102301

/-! ## A102301.P17785833869861275096

`A113861(n+2)-A000975(n)`
-/

namespace A102301.P17785833869861275096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113861 (n + 2) - A000975 n

end

end A102301.P17785833869861275096

namespace A102301

/-- `A113861(n+2)-A000975(n)` -/
def P17785833869861275096.Spec : Prop :=
  ∀ n, P17785833869861275096.a n = A102301 n

end A102301

/-! ## A102301.P12749644926884982538

`∑[2*A073371(n)]-A073371(n)`
-/

namespace A102301.P12749644926884982538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073371 n

end

end A102301.P12749644926884982538

namespace A102301

/-- `∑[2*A073371(n)]-A073371(n)` -/
def P12749644926884982538.Spec : Prop :=
  ∀ n, P12749644926884982538.a n = A102301 n

end A102301

/-! ## A102301.P9952722301485322493

`A140960(n+2)-A000975(n+1)`
-/

namespace A102301.P9952722301485322493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 (n + 2) - A000975 (n + 1)

end

end A102301.P9952722301485322493

namespace A102301

/-- `A140960(n+2)-A000975(n+1)` -/
def P9952722301485322493.Spec : Prop :=
  ∀ n, P9952722301485322493.a n = A102301 n

end A102301

/-! ## A102301.P5852843539379367020

`A045883(n+2)-A000975(n+2)`
-/

namespace A102301.P5852843539379367020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 2) - A000975 (n + 2)

end

end A102301.P5852843539379367020

namespace A102301

/-- `A045883(n+2)-A000975(n+2)` -/
def P5852843539379367020.Spec : Prop :=
  ∀ n, P5852843539379367020.a n = A102301 n

end A102301

/-! ## A102301.P8481088024451047263

`A059570(n+3)-A000975(n+3)`
-/

namespace A102301.P8481088024451047263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 3) - A000975 (n + 3)

end

end A102301.P8481088024451047263

namespace A102301

/-- `A059570(n+3)-A000975(n+3)` -/
def P8481088024451047263.Spec : Prop :=
  ∀ n, P8481088024451047263.a n = A102301 n

end A102301

/-! ## A102301.P17699061659563119053

`∑[A095977(n+1)]-A095977(n+1)/2`
-/

namespace A102301.P17699061659563119053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095977 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A095977 (n + 1) : ℚ) / 2

end

end A102301.P17699061659563119053

namespace A102301

/-- `∑[A095977(n+1)]-A095977(n+1)/2` -/
def P17699061659563119053.Spec : Prop :=
  ∀ n, P17699061659563119053.a n = (A102301 n : ℚ)

end A102301

/-! ## A102301.P15664541866447556530

`A000975(n+1)+A045883(n)+A000337(n)`
-/

namespace A102301.P15664541866447556530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (A045883 n + A000337 n)

end

end A102301.P15664541866447556530

namespace A102301

/-- `A000975(n+1)+A045883(n)+A000337(n)` -/
def P15664541866447556530.Spec : Prop :=
  ∀ n, P15664541866447556530.a n = A102301 n

end A102301

/-! ## A102301.P3439973224881621068

`A001787(n+1)+A001787(n+1)-A127985(n+1)`
-/

namespace A102301.P3439973224881621068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A001787 (n + 1) - A127985 (n + 1))

end

end A102301.P3439973224881621068

namespace A102301

/-- `A001787(n+1)+A001787(n+1)-A127985(n+1)` -/
def P3439973224881621068.Spec : Prop :=
  ∀ n, P3439973224881621068.a n = A102301 n

end A102301

/-!
# A102302: Largest number < n/2 coprime to n.

The programs for A102302, the canonical program `A102302.P8735497514283435530` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102302 has offset 7).

The definition of A102302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102302.P8735497514283435530

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=3, a(2)=4, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102302

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P8735497514283435530.Spec : Prop :=
  ∀ n, P8735497514283435530.a n = A102302 (n + 7)

theorem P8735497514283435530.correct : P8735497514283435530.Spec := by
  intro n
  simp only [A102302, Nat.add_sub_cancel]

end A102302

/-! ## A102302.P4224024457118100807

`a(n-4)+2` with `a(0)=3, a(1)=3, a(2)=4, a(3)=3`
-/

namespace A102302.P4224024457118100807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 4, 3] fun n a =>
  a (n - 4) + 2

end

end A102302.P4224024457118100807

namespace A102302

/-- `a(n-4)+2` -/
def P4224024457118100807.Spec : Prop :=
  ∀ n, (P4224024457118100807.a n : ℤ) = A102302 (n + 7)

end A102302

/-! ## A102302.P183336528997357897

`(7-gcd(4, n+1)+n)/2`
-/

namespace A102302.P183336528997357897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 - (Nat.gcd 4 (n + 1) : ℤ) + (n : ℤ) : ℚ) / 2

end

end A102302.P183336528997357897

namespace A102302

/-- `(7-gcd(4, n+1)+n)/2` -/
def P183336528997357897.Spec : Prop :=
  ∀ n, P183336528997357897.a n = (A102302 (n + 7) : ℚ)

end A102302

/-! ## A102302.P5489740963855466022

`∑[xor(1, a(n-2))]-n` with `a(0)=3, a(1)=1`
-/

namespace A102302.P5489740963855466022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  Nat.xor 1 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A102302.P5489740963855466022

namespace A102302

/-- `∑[xor(1, a(n-2))]-n` -/
def P5489740963855466022.Spec : Prop :=
  ∀ n, P5489740963855466022.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P15317620106671717383

`∑[∑[n+1]%2]+gcd(2, n)`
-/

namespace A102302.P15317620106671717383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 n

end

end A102302.P15317620106671717383

namespace A102302

/-- `∑[∑[n+1]%2]+gcd(2, n)` -/
def P15317620106671717383.Spec : Prop :=
  ∀ n, (P15317620106671717383.a n : ℤ) = A102302 (n + 7)

end A102302

/-! ## A102302.P14991165260671725086

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=0, a(2)=1, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A102302.P14991165260671725086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 1, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102302.P14991165260671725086

namespace A102302

/-- `∑[floor(a(n-4))]` -/
def P14991165260671725086.Spec : Prop :=
  ∀ n, P14991165260671725086.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P11909449000528148671

`∑[a(n-4)%4]-n` with `a(0)=3, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A102302.P11909449000528148671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 0] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A102302.P11909449000528148671

namespace A102302

/-- `∑[a(n-4)%4]-n` -/
def P11909449000528148671.Spec : Prop :=
  ∀ n, P11909449000528148671.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P7251224361772653346

`∑[char[2*n]]+2-Δ[floor(n/4)]`
-/

namespace A102302.P7251224361772653346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A102302.P7251224361772653346

namespace A102302

/-- `∑[char[2*n]]+2-Δ[floor(n/4)]` -/
def P7251224361772653346.Spec : Prop :=
  ∀ n, P7251224361772653346.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P17928995579905574697

`∑[a(n-2)-(-1)^a(n-2)]` with `a(0)=3, a(1)=0, a(2)=1`
-/

namespace A102302.P17928995579905574697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3, 0, 1] fun n f1 =>
  f1 (n - 2) - (-1 : ℝ) ^ (f1 (n - 2))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102302.P17928995579905574697

namespace A102302

/-- `∑[a(n-2)-(-1)^a(n-2)]` -/
def P17928995579905574697.Spec : Prop :=
  ∀ n, P17928995579905574697.a n = (A102302 (n + 7) : ℝ)

end A102302

/-! ## A102302.P4973716866418790066

`A009056(a(n-4))` with `a(0)=3, a(1)=3, a(2)=4, a(3)=3`
-/

namespace A102302.P4973716866418790066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 4, 3] fun n a =>
  A009056 (a (n - 4)).toNat

end

end A102302.P4973716866418790066

namespace A102302

/-- `A009056(a(n-4))` -/
def P4973716866418790066.Spec : Prop :=
  ∀ n, P4973716866418790066.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P3517912304021194542

`A052938(A392590(n+1))`
-/

namespace A102302.P3517912304021194542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A392590 (n + 1)).toNat

end

end A102302.P3517912304021194542

namespace A102302

/-- `A052938(A392590(n+1))` -/
def P3517912304021194542.Spec : Prop :=
  ∀ n, P3517912304021194542.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P1371377793992407382

`or(A000035(n), A052938(n+1))`
-/

namespace A102302.P1371377793992407382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A052938 (n + 1))

end

end A102302.P1371377793992407382

namespace A102302

/-- `or(A000035(n), A052938(n+1))` -/
def P1371377793992407382.Spec : Prop :=
  ∀ n, P1371377793992407382.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P15015082108257750490

`or(A028242(n)+2, A000035(n))`
-/

namespace A102302.P15015082108257750490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028242 n + 2) (A000035 n)

end

end A102302.P15015082108257750490

namespace A102302

/-- `or(A028242(n)+2, A000035(n))` -/
def P15015082108257750490.Spec : Prop :=
  ∀ n, P15015082108257750490.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P2289700066516266125

`floor((6-(A177704(n)²-A005408(n))-n)/2)`
-/

namespace A102302.P2289700066516266125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 - (A177704 n ^ 2 - A005408 n) - (n : ℤ) : ℚ) / 2⌋

end

end A102302.P2289700066516266125

namespace A102302

/-- `floor((6-(A177704(n)²-A005408(n))-n)/2)` -/
def P2289700066516266125.Spec : Prop :=
  ∀ n, P2289700066516266125.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P3679801248431315625

`A052938(A121262(n+1)+A109613(n))`
-/

namespace A102302.P3679801248431315625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A121262 (n + 1) + A109613 n).toNat

end

end A102302.P3679801248431315625

namespace A102302

/-- `A052938(A121262(n+1)+A109613(n))` -/
def P3679801248431315625.Spec : Prop :=
  ∀ n, P3679801248431315625.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P2719496637588982063

`round((sqrt(A177499(n+1))+n+2)/2)`
-/

namespace A102302.P2719496637588982063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (A177499 (n + 1) : ℝ) + (n + 2 : ℝ)) / 2)

end

end A102302.P2719496637588982063

namespace A102302

/-- `round((sqrt(A177499(n+1))+n+2)/2)` -/
def P2719496637588982063.Spec : Prop :=
  ∀ n, P2719496637588982063.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P4579653460310904345

`A004525(A176059(n)+A176059(n)+n)`
-/

namespace A102302.P4579653460310904345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A176059 n + (A176059 n + (n : ℤ))).toNat

end

end A102302.P4579653460310904345

namespace A102302

/-- `A004525(A176059(n)+A176059(n)+n)` -/
def P4579653460310904345.Spec : Prop :=
  ∀ n, P4579653460310904345.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P11820615536165925205

`A116921(n+7)`
-/

namespace A102302.P11820615536165925205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (n + 7)

end

end A102302.P11820615536165925205

namespace A102302

/-- `A116921(n+7)` -/
def P11820615536165925205.Spec : Prop :=
  ∀ n, P11820615536165925205.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P17549263833747248551

`A173989(n+7)`
-/

namespace A102302.P17549263833747248551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (n + 7)

end

end A102302.P17549263833747248551

namespace A102302

/-- `A173989(n+7)` -/
def P17549263833747248551.Spec : Prop :=
  ∀ n, P17549263833747248551.a n = A102302 (n + 7)

end A102302

/-! ## A102302.P17745895885097637587

`Δ[A007494(A007494(n))+A002620(n)]`
-/

namespace A102302.P17745895885097637587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A007494 n).toNat + A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102302.P17745895885097637587

namespace A102302

/-- `Δ[A007494(A007494(n))+A002620(n)]` -/
def P17745895885097637587.Spec : Prop :=
  ∀ n, P17745895885097637587.a n = A102302 (n + 7)

end A102302

/-!
# A102303: a(n) = (1/6) * (7^(n+1) - 3*(-1)^n + 2).

The programs for A102303, the canonical program `A102303.P12812631952259417812` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102303 has offset 0).

The definition of A102303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102303.P12812631952259417812

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=9, a(2)=57`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102303

/-- `7*a(n-1)+a(n-2)-7*a(n-3)` -/
def P12812631952259417812.Spec : Prop :=
  ∀ n, P12812631952259417812.a n = A102303 n

theorem P12812631952259417812.correct : P12812631952259417812.Spec := by
  intro n
  simp only [A102303]

end A102303

/-! ## A102303.P10430177720442646502

`A023000(n+1)+A000035(n)`
-/

namespace A102303.P10430177720442646502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 1) + A000035 n

end

end A102303.P10430177720442646502

namespace A102303

/-- `A023000(n+1)+A000035(n)` -/
def P10430177720442646502.Spec : Prop :=
  ∀ n, P10430177720442646502.a n = A102303 n

end A102303

/-! ## A102303.P9949444869086173527

`(7^(n+1)-3*(-1)^n+2)/6`
-/

namespace A102303.P9949444869086173527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 1) : ℤ) - 3 * (-1) ^ n + 2 : ℚ) / 6

end

end A102303.P9949444869086173527

namespace A102303

/-- `(7^(n+1)-3*(-1)^n+2)/6` -/
def P9949444869086173527.Spec : Prop :=
  ∀ n, P9949444869086173527.a n = (A102303 n : ℚ)

end A102303

/-! ## A102303.P12737294103515470231

`or(1, ∑[7^n])`
-/

namespace A102303.P12737294103515470231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102303.P12737294103515470231

namespace A102303

/-- `or(1, ∑[7^n])` -/
def P12737294103515470231.Spec : Prop :=
  ∀ n, (P12737294103515470231.a n : ℤ) = A102303 n

end A102303

/-! ## A102303.P2430155101025908581

`∑[7^n]+n%2`
-/

namespace A102303.P2430155101025908581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n % 2

end

end A102303.P2430155101025908581

namespace A102303

/-- `∑[7^n]+n%2` -/
def P2430155101025908581.Spec : Prop :=
  ∀ n, (P2430155101025908581.a n : ℤ) = A102303 n

end A102303

/-! ## A102303.P11347836705377335061

`∑[7^n]+and(1, n)`
-/

namespace A102303.P11347836705377335061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n

end

end A102303.P11347836705377335061

namespace A102303

/-- `∑[7^n]+and(1, n)` -/
def P11347836705377335061.Spec : Prop :=
  ∀ n, (P11347836705377335061.a n : ℤ) = A102303 n

end A102303

/-! ## A102303.P493447801745394046

`xor(and(1, n), ∑[7^n])`
-/

namespace A102303.P493447801745394046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.land 1 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102303.P493447801745394046

namespace A102303

/-- `xor(and(1, n), ∑[7^n])` -/
def P493447801745394046.Spec : Prop :=
  ∀ n, (P493447801745394046.a n : ℤ) = A102303 n

end A102303

/-! ## A102303.P704546382714428481

`2-(gcd(2, n)-∑[7^n])`
-/

namespace A102303.P704546382714428481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.gcd 2 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A102303.P704546382714428481

namespace A102303

/-- `2-(gcd(2, n)-∑[7^n])` -/
def P704546382714428481.Spec : Prop :=
  ∀ n, P704546382714428481.a n = A102303 n

end A102303

/-! ## A102303.P2337304945641663009

`ceil((A000420(n+1)-and(1, n+1))/6)`
-/

namespace A102303.P2337304945641663009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000420 (n + 1) - (Nat.land 1 (n + 1) : ℤ) : ℚ) / 6⌉

end

end A102303.P2337304945641663009

namespace A102303

/-- `ceil((A000420(n+1)-and(1, n+1))/6)` -/
def P2337304945641663009.Spec : Prop :=
  ∀ n, P2337304945641663009.a n = A102303 n

end A102303

/-!
# A102304: Sum of prime factors (counted with multiplicity) of the numbers having exactly three prime factors.

The programs for A102304, the canonical program `A102304.P12298609267666980490` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102304 has offset 1).

The definition of A102304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102304.P12298609267666980490

`A001414(A014612(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102304

/-- `A001414(A014612(n+1))` -/
def P12298609267666980490.Spec : Prop :=
  ∀ n, P12298609267666980490.a n = A102304 (n + 1)

theorem P12298609267666980490.correct : P12298609267666980490.Spec := by
  intro n
  simp only [A102304, Nat.add_sub_cancel]

end A102304

/-! ## A102304.P7033275676704256459

`A001414(eq[3, A001222(n+1)]+1)`
-/

namespace A102304.P7033275676704256459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A102304.P7033275676704256459

namespace A102304

/-- `A001414(eq[3, A001222(n+1)]+1)` -/
def P7033275676704256459.Spec : Prop :=
  ∀ n, P7033275676704256459.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P2105671652460862181

`A001414(∪[A217856(n+1), A033477(n)])`
-/

namespace A102304.P2105671652460862181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A102304.P2105671652460862181

namespace A102304

/-- `A001414(∪[A217856(n+1), A033477(n)])` -/
def P2105671652460862181.Spec : Prop :=
  ∀ n, P2105671652460862181.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P18273096520241542479

`A001414(eq[1, A101637(2*(n+1))]+1)`
-/

namespace A102304.P18273096520241542479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A102304.P18273096520241542479

namespace A102304

/-- `A001414(eq[1, A101637(2*(n+1))]+1)` -/
def P18273096520241542479.Spec : Prop :=
  ∀ n, P18273096520241542479.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P10763886464535368586

`A001414(∩[A046339(n+1), A326111(n+1)])`
-/

namespace A102304.P10763886464535368586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102304.P10763886464535368586

namespace A102304

/-- `A001414(∩[A046339(n+1), A326111(n+1)])` -/
def P10763886464535368586.Spec : Prop :=
  ∀ n, P10763886464535368586.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P9498348691555606081

`A107463(A014612(2*n+1-n))`
-/

namespace A102304.P9498348691555606081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A014612 (2 * n + 1 - n)).toNat

end

end A102304.P9498348691555606081

namespace A102304

/-- `A107463(A014612(2*n+1-n))` -/
def P9498348691555606081.Spec : Prop :=
  ∀ n, P9498348691555606081.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P13910536211361947941

`A001414(∩[A026422(n+1), A326111(n+1)])`
-/

namespace A102304.P13910536211361947941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102304.P13910536211361947941

namespace A102304

/-- `A001414(∩[A026422(n+1), A326111(n+1)])` -/
def P13910536211361947941.Spec : Prop :=
  ∀ n, P13910536211361947941.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P6143471939371631658

`A001414(eq[1, A101605(n+1)]+1)`
-/

namespace A102304.P6143471939371631658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A102304.P6143471939371631658

namespace A102304

/-- `A001414(eq[1, A101605(n+1)]+1)` -/
def P6143471939371631658.Spec : Prop :=
  ∀ n, P6143471939371631658.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P16849001804604841554

`∑{d}[A014612(n+1), A039653(A014963(#))]`
-/

namespace A102304.P16849001804604841554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A039653 (A014963 d).toNat

end

end A102304.P16849001804604841554

namespace A102304

/-- `∑{d}[A014612(n+1), A039653(A014963(#))]` -/
def P16849001804604841554.Spec : Prop :=
  ∀ n, P16849001804604841554.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P5428961215341956368

`A227215(∩[A014612(n+1), A026424(n+1)])`
-/

namespace A102304.P5428961215341956368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227215 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A102304.P5428961215341956368

namespace A102304

/-- `A227215(∩[A014612(n+1), A026424(n+1)])` -/
def P5428961215341956368.Spec : Prop :=
  ∀ n, P5428961215341956368.a n = A102304 (n + 1)

end A102304

/-! ## A102304.P7033818348579432737

`A275314(3*A014612(n+1))`
-/

namespace A102304.P7033818348579432737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (3 * A014612 (n + 1)).toNat

end

end A102304.P7033818348579432737

namespace A102304

/-- `A275314(3*A014612(n+1))` -/
def P7033818348579432737.Spec : Prop :=
  ∀ n, P7033818348579432737.a n = A102304 (n + 1)

end A102304

/-!
# A102305: a(n) = n^2 + 2*n + 3.

The programs for A102305, the canonical program `A102305.P7406913302567102323` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102305 has offset 1).

The definition of A102305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102305.P7406913302567102323

`1/5*A027578(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102305

/-- `1/5*A027578(n)` -/
def P7406913302567102323.Spec : Prop :=
  ∀ n, P7406913302567102323.a n = (A102305 (n + 1) : ℚ)

end A102305

/-! ## A102305.P15357269905492451743

`2+(n+2)²`
-/

namespace A102305.P15357269905492451743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + (n + 2) ^ 2

end

end A102305.P15357269905492451743

namespace A102305

/-- `2+(n+2)²` -/
def P15357269905492451743.Spec : Prop :=
  ∀ n, (P15357269905492451743.a n : ℤ) = A102305 (n + 1)

end A102305

/-! ## A102305.P1711562056248824970

`or(2, (n+2)^2)`
-/

namespace A102305.P1711562056248824970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((n + 2) ^ 2)

end

end A102305.P1711562056248824970

namespace A102305

/-- `or(2, (n+2)^2)` -/
def P1711562056248824970.Spec : Prop :=
  ∀ n, (P1711562056248824970.a n : ℤ) = A102305 (n + 1)

end A102305

/-! ## A102305.P11674623671060329646

`xor(2, (n+2)^2)`
-/

namespace A102305.P11674623671060329646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((n + 2) ^ 2)

end

end A102305.P11674623671060329646

namespace A102305

/-- `xor(2, (n+2)^2)` -/
def P11674623671060329646.Spec : Prop :=
  ∀ n, (P11674623671060329646.a n : ℤ) = A102305 (n + 1)

end A102305

/-! ## A102305.P9048447417236224588

`record[or(2, (2-n)²)]`
-/

namespace A102305.P9048447417236224588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102305.P9048447417236224588

namespace A102305

/-- `record[or(2, (2-n)²)]` -/
def P9048447417236224588.Spec : Prop :=
  ∀ n, P9048447417236224588.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P12610497019261637314

`record[xor(2, (2-n)²)]`
-/

namespace A102305.P12610497019261637314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102305.P12610497019261637314

namespace A102305

/-- `record[xor(2, (2-n)²)]` -/
def P12610497019261637314.Spec : Prop :=
  ∀ n, P12610497019261637314.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P9864074299858771828

`∑[a(n-1)+2]` with `a(0)=6, a(1)=5`
-/

namespace A102305.P9864074299858771828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102305.P9864074299858771828

namespace A102305

/-- `∑[a(n-1)+2]` -/
def P9864074299858771828.Spec : Prop :=
  ∀ n, (P9864074299858771828.a n : ℤ) = A102305 (n + 1)

end A102305

/-! ## A102305.P7649062180999335378

`record[(n-2)^(4/2)+2]`
-/

namespace A102305.P7649062180999335378
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℝ) ^ ((4 : ℚ) / 2 : ℝ) + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102305.P7649062180999335378

namespace A102305

/-- `record[(n-2)^(4/2)+2]` -/
def P7649062180999335378.Spec : Prop :=
  ∀ n, P7649062180999335378.a n = (A102305 (n + 1) : ℝ)

end A102305

/-! ## A102305.P6948112982983450

`abs(2*C(n+3, 2)-n)`
-/

namespace A102305.P6948112982983450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (n + 3) 2 : ℤ) - (n : ℤ)|

end

end A102305.P6948112982983450

namespace A102305

/-- `abs(2*C(n+3, 2)-n)` -/
def P6948112982983450.Spec : Prop :=
  ∀ n, P6948112982983450.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P15001940858045732835

`abs(lcm(n+2, n+3)-n)`
-/

namespace A102305.P15001940858045732835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (n + 2) (n + 3) : ℤ) - (n : ℤ)|

end

end A102305.P15001940858045732835

namespace A102305

/-- `abs(lcm(n+2, n+3)-n)` -/
def P15001940858045732835.Spec : Prop :=
  ∀ n, P15001940858045732835.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P13081621749432167639

`ceil(record[3-(ϕ-(2-n)²)])`
-/

namespace A102305.P13081621749432167639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 - (Real.goldenRatio - ((2 - (n : ℤ)) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A102305.P13081621749432167639

namespace A102305

/-- `ceil(record[3-(ϕ-(2-n)²)])` -/
def P13081621749432167639.Spec : Prop :=
  ∀ n, P13081621749432167639.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P2116465044051475544

`floor(record[4-(ϕ-(2-n)²)])`
-/

namespace A102305.P2116465044051475544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 - (Real.goldenRatio - ((2 - (n : ℤ)) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A102305.P2116465044051475544

namespace A102305

/-- `floor(record[4-(ϕ-(2-n)²)])` -/
def P2116465044051475544.Spec : Prop :=
  ∀ n, P2116465044051475544.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P10214668667831616520

`round(record[4-(ϕ-(2-n)²)])`
-/

namespace A102305.P10214668667831616520
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 - (Real.goldenRatio - ((2 - (n : ℤ)) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A102305.P10214668667831616520

namespace A102305

/-- `round(record[4-(ϕ-(2-n)²)])` -/
def P10214668667831616520.Spec : Prop :=
  ∀ n, P10214668667831616520.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P11047124343387431077

`2*(C(n+3, 2)-n/2)`
-/

namespace A102305.P11047124343387431077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (n + 3) 2 : ℚ) - (n : ℚ) / 2)

end

end A102305.P11047124343387431077

namespace A102305

/-- `2*(C(n+3, 2)-n/2)` -/
def P11047124343387431077.Spec : Prop :=
  ∀ n, P11047124343387431077.a n = (A102305 (n + 1) : ℚ)

end A102305

/-! ## A102305.P8086705075851091702

`floor(2*a(n-1)-n²)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A102305.P8086705075851091702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  2 * a (n - 1) - (n ^ 2 : ℤ)

end

end A102305.P8086705075851091702

namespace A102305

/-- `floor(2*a(n-1)-n²)` -/
def P8086705075851091702.Spec : Prop :=
  ∀ n, P8086705075851091702.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P13411584844379125180

`abs(record[(n-3)*(n-2)]-n)`
-/

namespace A102305.P13411584844379125180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)|

end

end A102305.P13411584844379125180

namespace A102305

/-- `abs(record[(n-3)*(n-2)]-n)` -/
def P13411584844379125180.Spec : Prop :=
  ∀ n, P13411584844379125180.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P8414624642286642420

`ceil((n+2)/acot(n+2)+ϕ)`
-/

namespace A102305.P8414624642286642420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ) + Real.goldenRatio⌉

end

end A102305.P8414624642286642420

namespace A102305

/-- `ceil((n+2)/acot(n+2)+ϕ)` -/
def P8414624642286642420.Spec : Prop :=
  ∀ n, P8414624642286642420.a n = A102305 (n + 1)

end A102305

/-! ## A102305.P13842771965291437417

`round((n+2)/acot(n+2)+ϕ)`
-/

namespace A102305.P13842771965291437417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ) + Real.goldenRatio)

end

end A102305.P13842771965291437417

namespace A102305

/-- `round((n+2)/acot(n+2)+ϕ)` -/
def P13842771965291437417.Spec : Prop :=
  ∀ n, P13842771965291437417.a n = A102305 (n + 1)

end A102305

/-!
# A102306: Numbers k such that A083500(k) differs from A102305(k).

The programs for A102306, there is no canonical definition to state claims against.
-/

/-! ## A102306.P10059670305827941237

`A066498(comp[n²²-1])`
-/

namespace A102306.P10059670305827941237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A102306.P10059670305827941237

/-! ## A102306.P10127413596944996069

`lt[A083501(n+1), n]+1`
-/

namespace A102306.P10127413596944996069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083501 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102306.P10127413596944996069

/-! ## A102306.P9979965086391151575

`lt[A083501(A028310(n)), n]`
-/

namespace A102306.P9979965086391151575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083501 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102306.P9979965086391151575

/-! ## A102306.P2862081709092293910

`∩[A066498(n+1), A081690(n)]`
-/

namespace A102306.P2862081709092293910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081690 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102306.P2862081709092293910

/-! ## A102306.P894514910935444947

`∩[A066498(n+1), A248182(n)]`
-/

namespace A102306.P894514910935444947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248182 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102306.P894514910935444947

/-!
# A102307: a(n) = Fibonacci(2n+1) * binomial(2n,n).

The programs for A102307, the canonical program `A102307.P5713174191708189843` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102307 has offset 0).

The definition of A102307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102307.P5713174191708189843

`A000045(2*n+1)*A000984(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102307

/-- `A000045(2*n+1)*A000984(n)` -/
def P5713174191708189843.Spec : Prop :=
  ∀ n, P5713174191708189843.a n = A102307 n

theorem P5713174191708189843.correct : P5713174191708189843.Spec := by
  intro n
  simp only [A102307]

end A102307

/-! ## A102307.P15727366798324653570

`C(2*n, n)*A000045(Δ[n²])`
-/

namespace A102307.P15727366798324653570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102307.P15727366798324653570

namespace A102307

/-- `C(2*n, n)*A000045(Δ[n²])` -/
def P15727366798324653570.Spec : Prop :=
  ∀ n, P15727366798324653570.a n = A102307 n

end A102307

/-! ## A102307.P17127767508015010787

`C(2*n, n)*Δ[A000045(2*n)]`
-/

namespace A102307.P17127767508015010787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * (f1 (n + 1) - f1 n)

end

end A102307.P17127767508015010787

namespace A102307

/-- `C(2*n, n)*Δ[A000045(2*n)]` -/
def P17127767508015010787.Spec : Prop :=
  ∀ n, P17127767508015010787.a n = A102307 n

end A102307

/-! ## A102307.P11851608846734078016

`A000984(n)*A122367(n)`
-/

namespace A102307.P11851608846734078016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A122367 n

end

end A102307.P11851608846734078016

namespace A102307

/-- `A000984(n)*A122367(n)` -/
def P11851608846734078016.Spec : Prop :=
  ∀ n, P11851608846734078016.a n = A102307 n

end A102307

/-! ## A102307.P13659459312057588664

`A088218(n)*A126358(n)`
-/

namespace A102307.P13659459312057588664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A126358 n

end

end A102307.P13659459312057588664

namespace A102307

/-- `A088218(n)*A126358(n)` -/
def P13659459312057588664.Spec : Prop :=
  ∀ n, P13659459312057588664.a n = A102307 n

end A102307

/-! ## A102307.P704719437553339836

`A000984(n)*A001519(n+1)`
-/

namespace A102307.P704719437553339836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001519 (n + 1)

end

end A102307.P704719437553339836

namespace A102307

/-- `A000984(n)*A001519(n+1)` -/
def P704719437553339836.Spec : Prop :=
  ∀ n, P704719437553339836.a n = A102307 n

end A102307

/-! ## A102307.P3888491107407374104

`A000984(n)*A094967(2*n)`
-/

namespace A102307.P3888491107407374104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A094967 (2 * n)

end

end A102307.P3888491107407374104

namespace A102307

/-- `A000984(n)*A094967(2*n)` -/
def P3888491107407374104.Spec : Prop :=
  ∀ n, P3888491107407374104.a n = A102307 n

end A102307

/-! ## A102307.P11667271918851825295

`Δ[A000045(2*n)]*A000984(n)`
-/

namespace A102307.P11667271918851825295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000984 n

end

end A102307.P11667271918851825295

namespace A102307

/-- `Δ[A000045(2*n)]*A000984(n)` -/
def P11667271918851825295.Spec : Prop :=
  ∀ n, P11667271918851825295.a n = A102307 n

end A102307

/-! ## A102307.P4152122581154953092

`A001405(2*n)*A001519(n+1)`
-/

namespace A102307.P4152122581154953092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A001519 (n + 1)

end

end A102307.P4152122581154953092

namespace A102307

/-- `A001405(2*n)*A001519(n+1)` -/
def P4152122581154953092.Spec : Prop :=
  ∀ n, P4152122581154953092.a n = A102307 n

end A102307

/-! ## A102307.P15418113149809769429

`A001519(n+1)*A063886(2*n)`
-/

namespace A102307.P15418113149809769429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) * A063886 (2 * n)

end

end A102307.P15418113149809769429

namespace A102307

/-- `A001519(n+1)*A063886(2*n)` -/
def P15418113149809769429.Spec : Prop :=
  ∀ n, P15418113149809769429.a n = A102307 n

end A102307

/-! ## A102307.P15206976517660234574

`A000045(2*n+1)*A001405(2*n)`
-/

namespace A102307.P15206976517660234574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A001405 (2 * n)

end

end A102307.P15206976517660234574

namespace A102307

/-- `A000045(2*n+1)*A001405(2*n)` -/
def P15206976517660234574.Spec : Prop :=
  ∀ n, P15206976517660234574.a n = A102307 n

end A102307

/-! ## A102307.P8565255015597075443

`A000045(2*n+1)*A056040(2*n)`
-/

namespace A102307.P8565255015597075443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A056040 (2 * n)

end

end A102307.P8565255015597075443

namespace A102307

/-- `A000045(2*n+1)*A056040(2*n)` -/
def P8565255015597075443.Spec : Prop :=
  ∀ n, P8565255015597075443.a n = A102307 n

end A102307

/-! ## A102307.P9523842985823562578

`A000045(2*n+1)*A128014(2*n)`
-/

namespace A102307.P9523842985823562578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A128014 (2 * n)

end

end A102307.P9523842985823562578

namespace A102307

/-- `A000045(2*n+1)*A128014(2*n)` -/
def P9523842985823562578.Spec : Prop :=
  ∀ n, P9523842985823562578.a n = A102307 n

end A102307

/-! ## A102307.P15503050035095623957

`A000045(2*n+1)*A129383(2*n)`
-/

namespace A102307.P15503050035095623957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A129383 (2 * n)

end

end A102307.P15503050035095623957

namespace A102307

/-- `A000045(2*n+1)*A129383(2*n)` -/
def P15503050035095623957.Spec : Prop :=
  ∀ n, P15503050035095623957.a n = A102307 n

end A102307

/-! ## A102307.P16332791981468665371

`A000045(2*n+1)*A210736(2*n+1)`
-/

namespace A102307.P16332791981468665371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * A210736 (2 * n + 1)

end

end A102307.P16332791981468665371

namespace A102307

/-- `A000045(2*n+1)*A210736(2*n+1)` -/
def P16332791981468665371.Spec : Prop :=
  ∀ n, P16332791981468665371.a n = A102307 n

end A102307

/-! ## A102307.P449911624670485339

`A116697(2*n+1)*A210736(2*n+1)`
-/

namespace A102307.P449911624670485339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116697 (2 * n + 1) * A210736 (2 * n + 1)

end

end A102307.P449911624670485339

namespace A102307

/-- `A116697(2*n+1)*A210736(2*n+1)` -/
def P449911624670485339.Spec : Prop :=
  ∀ n, P449911624670485339.a n = A102307 n

end A102307

/-! ## A102307.P9281527627097407300

`(A007598(n+1)+A007598(n))*A000984(n)`
-/

namespace A102307.P9281527627097407300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007598 (n + 1) + A007598 n) * A000984 n

end

end A102307.P9281527627097407300

namespace A102307

/-- `(A007598(n+1)+A007598(n))*A000984(n)` -/
def P9281527627097407300.Spec : Prop :=
  ∀ n, P9281527627097407300.a n = A102307 n

end A102307

/-! ## A102307.P9505454392639881703

`(A055588(n+1)-A055588(n))*A000984(n)`
-/

namespace A102307.P9505454392639881703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055588 (n + 1) - A055588 n) * A000984 n

end

end A102307.P9505454392639881703

namespace A102307

/-- `(A055588(n+1)-A055588(n))*A000984(n)` -/
def P9505454392639881703.Spec : Prop :=
  ∀ n, P9505454392639881703.a n = A102307 n

end A102307

/-!
# A102308: If n = product{primes p(k)|n} p(k)^b(n,p(k)), where p(k) is the k-th prime that divides n (when these primes are listed from smallest to largest) and each b(n,p(k)) is a positive integer, then the sequence contains the non-prime-powers n such that p(k)^b(n,p(k)) > p(k+1) for all k, 1<=k<= -1 + number of distinct prime divisors of n.

The programs for A102308, there is no canonical definition to state claims against.
-/

/-! ## A102308.P10641655650129774421

`filter[A381097(n+1), A215480(#)]`
-/

namespace A102308.P10641655650129774421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A102308.P10641655650129774421

/-! ## A102308.P3450811190998290763

`∩[A056760(n+1), A381097(n+1)]`
-/

namespace A102308.P3450811190998290763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102308.P3450811190998290763

/-! ## A102308.P16550965928507598400

`∩[A123711(n+1), A381097(n+1)]`
-/

namespace A102308.P16550965928507598400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102308.P16550965928507598400

/-! ## A102308.P7510488531406371931

`∩[A299992(n+1), A381097(n+1)]`
-/

namespace A102308.P7510488531406371931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102308.P7510488531406371931

/-! ## A102308.P12552767620769689066

`∩[A007774(n+1), A381097(n+1)]`
-/

namespace A102308.P12552767620769689066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102308.P12552767620769689066

/-!
# A102309: a(n) = Sum_{d divides n} moebius(d) * binomial(n/d,2).

The programs for A102309, the canonical program `A102309.P13404708069646192111` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102309 has offset 0).

The definition of A102309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102309.P16794300273963476162

`A157928(n)*A326419(A028310(n))`
-/

namespace A102309.P16794300273963476162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A326419 (A028310 n).toNat

end

end A102309.P16794300273963476162

namespace A102309

/-- `A157928(n)*A326419(A028310(n))` -/
def P16794300273963476162.Spec : Prop :=
  ∀ n, P16794300273963476162.a n = A102309 n

end A102309

/-! ## A102309.P13404708069646192111

`Δ[A100448(A065033(A004275(n)))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A102309

/-- `Δ[A100448(A065033(A004275(n)))]` -/
def P13404708069646192111.Spec : Prop :=
  ∀ n, P13404708069646192111.a n = A102309 n

theorem P13404708069646192111.correct : P13404708069646192111.Spec := by
  intro n
  simp only [A102309]

end A102309

/-! ## A102309.P5033266269468972609

`A326419(A028310(n))%A001255(n)`
-/

namespace A102309.P5033266269468972609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326419 (A028310 n).toNat) (A001255 n)

end

end A102309.P5033266269468972609

namespace A102309

/-- `A326419(A028310(n))%A001255(n)` -/
def P5033266269468972609.Spec : Prop :=
  ∀ n, P5033266269468972609.a n = A102309 n

end A102309

/-! ## A102309.P12209974229520613357

`A157928(n)*A326419(A233583(n+1))`
-/

namespace A102309.P12209974229520613357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A326419 (A233583 (n + 1)).toNat

end

end A102309.P12209974229520613357

namespace A102309

/-- `A157928(n)*A326419(A233583(n+1))` -/
def P12209974229520613357.Spec : Prop :=
  ∀ n, P12209974229520613357.a n = A102309 n

end A102309

/-! ## A102309.P1371920171039549030

`round(A326419(A233583(n+1))-1/A000041(n))`
-/

namespace A102309.P1371920171039549030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A326419 (A233583 (n + 1)).toNat : ℚ) - 1 / (A000041 n : ℚ))

end

end A102309.P1371920171039549030

namespace A102309

/-- `round(A326419(A233583(n+1))-1/A000041(n))` -/
def P1371920171039549030.Spec : Prop :=
  ∀ n, P1371920171039549030.a n = A102309 n

end A102309

/-! ## A102309.P7409031868823115807

`Δ[A100448(A233583(n+1)-1)]`
-/

namespace A102309.P7409031868823115807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100448 (A233583 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102309.P7409031868823115807

namespace A102309

/-- `Δ[A100448(A233583(n+1)-1)]` -/
def P7409031868823115807.Spec : Prop :=
  ∀ n, P7409031868823115807.a n = A102309 n

end A102309

/-! ## A102309.P2744148006083481937

`A326419(A233583(n+1))-A008683(A127473(n+1))`
-/

namespace A102309.P2744148006083481937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (A233583 (n + 1)).toNat - A008683 (A127473 (n + 1)).toNat

end

end A102309.P2744148006083481937

namespace A102309

/-- `A326419(A233583(n+1))-A008683(A127473(n+1))` -/
def P2744148006083481937.Spec : Prop :=
  ∀ n, P2744148006083481937.a n = A102309 n

end A102309

/-! ## A102309.P11053139644997844355

`A326419(A233583(n+1))%A232230(n)`
-/

namespace A102309.P11053139644997844355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326419 (A233583 (n + 1)).toNat) (A232230 n)

end

end A102309.P11053139644997844355

namespace A102309

/-- `A326419(A233583(n+1))%A232230(n)` -/
def P11053139644997844355.Spec : Prop :=
  ∀ n, P11053139644997844355.a n = A102309 n

end A102309

/-! ## A102309.P2109613272923316505

`A326419(A233583(n+1))-A008683(A187778(n+1))`
-/

namespace A102309.P2109613272923316505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326419 (A233583 (n + 1)).toNat - A008683 (A187778 (n + 1)).toNat

end

end A102309.P2109613272923316505

namespace A102309

/-- `A326419(A233583(n+1))-A008683(A187778(n+1))` -/
def P2109613272923316505.Spec : Prop :=
  ∀ n, P2109613272923316505.a n = A102309 n

end A102309

/-!
# A102310: Square array read by antidiagonals: Fibonacci(k*n).

The programs for A102310, the canonical program `A102310.P8236849000317575610` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102310 has offset 1).

The definition of A102310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102310.P8236849000317575610

`A000045(A003991(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A102310

/-- `A000045(A003991(n+1))` -/
def P8236849000317575610.Spec : Prop :=
  ∀ n, P8236849000317575610.a n = A102310 (n + 1)

theorem P8236849000317575610.correct : P8236849000317575610.Spec := by
  intro n
  simp only [A102310, Nat.add_sub_cancel]

end A102310

/-! ## A102310.P12605592970896530901

`A000045(A059036(n)+1)`
-/

namespace A102310.P12605592970896530901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A059036 n + 1).toNat

end

end A102310.P12605592970896530901

namespace A102310

/-- `A000045(A059036(n)+1)` -/
def P12605592970896530901.Spec : Prop :=
  ∀ n, P12605592970896530901.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P16213833915834358103

`A280688(A098352(n+1))`
-/

namespace A102310.P16213833915834358103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (A098352 (n + 1)).toNat

end

end A102310.P16213833915834358103

namespace A102310

/-- `A280688(A098352(n+1))` -/
def P16213833915834358103.Spec : Prop :=
  ∀ n, P16213833915834358103.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P10322630145085866009

`A028412(n)*A104762(n+1)`
-/

namespace A102310.P10322630145085866009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n * A104762 (n + 1)

end

end A102310.P10322630145085866009

namespace A102310

/-- `A028412(n)*A104762(n+1)` -/
def P10322630145085866009.Spec : Prop :=
  ∀ n, P10322630145085866009.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P10114261294696147064

`A104763(n+1)*A214978(n+1)`
-/

namespace A102310.P10114261294696147064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A214978 (n + 1)

end

end A102310.P10114261294696147064

namespace A102310

/-- `A104763(n+1)*A214978(n+1)` -/
def P10114261294696147064.Spec : Prop :=
  ∀ n, P10114261294696147064.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P16485732470915010521

`A000045(A086416(A247714(n)))`
-/

namespace A102310.P16485732470915010521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A086416 (A247714 n).toNat).toNat

end

end A102310.P16485732470915010521

namespace A102310

/-- `A000045(A086416(A247714(n)))` -/
def P16485732470915010521.Spec : Prop :=
  ∀ n, P16485732470915010521.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P18338049736680684641

`A000045(A002260(n+1)*A004736(n+1))`
-/

namespace A102310.P18338049736680684641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) * A004736 (n + 1)).toNat

end

end A102310.P18338049736680684641

namespace A102310

/-- `A000045(A002260(n+1)*A004736(n+1))` -/
def P18338049736680684641.Spec : Prop :=
  ∀ n, P18338049736680684641.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P8608078018397931689

`A000045((A002262(n)+1)*A004736(n+1))`
-/

namespace A102310.P8608078018397931689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A002262 n + 1) * A004736 (n + 1)).toNat

end

end A102310.P8608078018397931689

namespace A102310

/-- `A000045((A002262(n)+1)*A004736(n+1))` -/
def P8608078018397931689.Spec : Prop :=
  ∀ n, P8608078018397931689.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P16571190065942246346

`A000045((A025581(n)+1)*A002260(n+1))`
-/

namespace A102310.P16571190065942246346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A025581 n + 1) * A002260 (n + 1)).toNat

end

end A102310.P16571190065942246346

namespace A102310

/-- `A000045((A025581(n)+1)*A002260(n+1))` -/
def P16571190065942246346.Spec : Prop :=
  ∀ n, P16571190065942246346.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P8958161990783940336

`A000045(A001283(n+2)-A055096(n+2))`
-/

namespace A102310.P8958161990783940336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001283 (n + 2) - A055096 (n + 2)).toNat

end

end A102310.P8958161990783940336

namespace A102310

/-- `A000045(A001283(n+2)-A055096(n+2))` -/
def P8958161990783940336.Spec : Prop :=
  ∀ n, P8958161990783940336.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P6496493196090707967

`A000045(A001283(n+2)%A055096(n+2))`
-/

namespace A102310.P6496493196090707967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A001283 (n + 2)) (A055096 (n + 2))).toNat

end

end A102310.P6496493196090707967

namespace A102310

/-- `A000045(A001283(n+2)%A055096(n+2))` -/
def P6496493196090707967.Spec : Prop :=
  ∀ n, P6496493196090707967.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P3805350930598140304

`A212804(A002260(n+1)*A004736(n+1)+1)`
-/

namespace A102310.P3805350930598140304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002260 (n + 1) * A004736 (n + 1) + 1).toNat

end

end A102310.P3805350930598140304

namespace A102310

/-- `A212804(A002260(n+1)*A004736(n+1)+1)` -/
def P3805350930598140304.Spec : Prop :=
  ∀ n, P3805350930598140304.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P2080031632613794791

`A000045(A002260(n+1)*A057555(2*(n+1)))`
-/

namespace A102310.P2080031632613794791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) * A057555 (2 * (n + 1))).toNat

end

end A102310.P2080031632613794791

namespace A102310

/-- `A000045(A002260(n+1)*A057555(2*(n+1)))` -/
def P2080031632613794791.Spec : Prop :=
  ∀ n, P2080031632613794791.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P1490970312280481788

`A000045(A057555(2*n+1)*A057555(2*(n+1)))`
-/

namespace A102310.P1490970312280481788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A057555 (2 * n + 1) * A057555 (2 * (n + 1))).toNat

end

end A102310.P1490970312280481788

namespace A102310

/-- `A000045(A057555(2*n+1)*A057555(2*(n+1)))` -/
def P1490970312280481788.Spec : Prop :=
  ∀ n, P1490970312280481788.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P512923368470310689

`A000045(A004736(n+1)*A004736(A038722(n+1)))`
-/

namespace A102310.P512923368470310689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) * A004736 (A038722 (n + 1)).toNat).toNat

end

end A102310.P512923368470310689

namespace A102310

/-- `A000045(A004736(n+1)*A004736(A038722(n+1)))` -/
def P512923368470310689.Spec : Prop :=
  ∀ n, P512923368470310689.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P4841303137486364624

`A000045((A003057(n+2)-A003983(n+1))*A003983(n+1))`
-/

namespace A102310.P4841303137486364624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((A003057 (n + 2) - A003983 (n + 1)) * A003983 (n + 1)).toNat

end

end A102310.P4841303137486364624

namespace A102310

/-- `A000045((A003057(n+2)-A003983(n+1))*A003983(n+1))` -/
def P4841303137486364624.Spec : Prop :=
  ∀ n, P4841303137486364624.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P6056762429296293549

`A115338(A098359(n+1))`
-/

namespace A102310.P6056762429296293549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A098359 (n + 1)).toNat

end

end A102310.P6056762429296293549

namespace A102310

/-- `A115338(A098359(n+1))` -/
def P6056762429296293549.Spec : Prop :=
  ∀ n, P6056762429296293549.a n = A102310 (n + 1)

end A102310

/-! ## A102310.P15298785128676717990

`A104763(2*A003991(n+1)²)`
-/

namespace A102310.P15298785128676717990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (2 * A003991 (n + 1) ^ 2).toNat

end

end A102310.P15298785128676717990

namespace A102310

/-- `A104763(2*A003991(n+1)²)` -/
def P15298785128676717990.Spec : Prop :=
  ∀ n, P15298785128676717990.a n = A102310 (n + 1)

end A102310

/-!
# A102311: a(n) = Sum_{k=1..n} Fibonacci(k*(n-k)).

The programs for A102311, there is no canonical definition to state claims against.
-/

/-! ## A102311.P1431022217068543086

`∑[A008612(∑[A136127(n+1)])]`
-/

namespace A102311.P1431022217068543086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136127 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102311.P1431022217068543086

/-! ## A102311.P11034231769152140483

`A230980(A002927(n))+floor(∑[n^(1/3)])`
-/

namespace A102311.P11034231769152140483
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A002927 n).toNat + ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A102311.P11034231769152140483

/-! ## A102311.P15364090735508843304

`A002104(n)-A001222(A025168(n))`
-/

namespace A102311.P15364090735508843304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n - A001222 (A025168 n).toNat

end

end A102311.P15364090735508843304

/-!
# A102312: a(n) = Fibonacci(5*n).

The programs for A102312, the canonical program `A102312.P18172477447826399528` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102312 has offset 0).

The definition of A102312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102312.P18172477447826399528

`11*a(n-1)+a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102312

/-- `11*a(n-1)+a(n-2)` -/
def P18172477447826399528.Spec : Prop :=
  ∀ n, (P18172477447826399528.a n : ℤ) = A102312 n

theorem P18172477447826399528.correct : P18172477447826399528.Spec := by
  intro n
  simp only [A102312]

end A102312

/-! ## A102312.P7271382235639897733

`A000045(5*n)`
-/

namespace A102312.P7271382235639897733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (5 * n)

end

end A102312.P7271382235639897733

namespace A102312

/-- `A000045(5*n)` -/
def P7271382235639897733.Spec : Prop :=
  ∀ n, P7271382235639897733.a n = A102312 n

end A102312

/-! ## A102312.P2932615530242813869

`5*A049666(n)`
-/

namespace A102312.P2932615530242813869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049666 n

end

end A102312.P2932615530242813869

namespace A102312

/-- `5*A049666(n)` -/
def P2932615530242813869.Spec : Prop :=
  ∀ n, P2932615530242813869.a n = A102312 n

end A102312

/-! ## A102312.P5591976895286527844

`round(ϕ^5*a(n-1))` with `a(0)=0, a(1)=5`
-/

namespace A102312.P5591976895286527844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 5 * (a (n - 1) : ℝ))

end

end A102312.P5591976895286527844

namespace A102312

/-- `round(ϕ^5*a(n-1))` -/
def P5591976895286527844.Spec : Prop :=
  ∀ n, P5591976895286527844.a n = A102312 n

end A102312

/-! ## A102312.P8221910018062214563

`A103609(10*n)`
-/

namespace A102312.P8221910018062214563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (10 * n)

end

end A102312.P8221910018062214563

namespace A102312

/-- `A103609(10*n)` -/
def P8221910018062214563.Spec : Prop :=
  ∀ n, P8221910018062214563.a n = A102312 n

end A102312

/-! ## A102312.P11217513095337908785

`A001611(5*n)-1`
-/

namespace A102312.P11217513095337908785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (5 * n) - 1

end

end A102312.P11217513095337908785

namespace A102312

/-- `A001611(5*n)-1` -/
def P11217513095337908785.Spec : Prop :=
  ∀ n, P11217513095337908785.a n = A102312 n

end A102312

/-! ## A102312.P11788640725922757437

`A157725(5*n)-2`
-/

namespace A102312.P11788640725922757437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (5 * n) - 2

end

end A102312.P11788640725922757437

namespace A102312

/-- `A157725(5*n)-2` -/
def P11788640725922757437.Spec : Prop :=
  ∀ n, P11788640725922757437.a n = A102312 n

end A102312

/-! ## A102312.P13343234430246979458

`record[-A051111(n+1)]`
-/

namespace A102312.P13343234430246979458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102312.P13343234430246979458

namespace A102312

/-- `record[-A051111(n+1)]` -/
def P13343234430246979458.Spec : Prop :=
  ∀ n, P13343234430246979458.a n = A102312 n

end A102312

/-! ## A102312.P5431224574590818782

`record[lcm(6%gcd(5, n), A000045(n))]`
-/

namespace A102312.P5431224574590818782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((6 % Nat.gcd 5 n : ℕ) : ℤ) (A000045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102312.P5431224574590818782

namespace A102312

/-- `record[lcm(6%gcd(5, n), A000045(n))]` -/
def P5431224574590818782.Spec : Prop :=
  ∀ n, (P5431224574590818782.a n : ℤ) = A102312 n

end A102312

/-!
# A102313: Least number k such that k^3 is the sum of n positive squares.

The programs for A102313, there is no canonical definition to state claims against.
-/

/-! ## A102313.P15623387914149516514

`root(A100499(n+1), 3)`
-/

namespace A102313.P15623387914149516514
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100499 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A102313.P15623387914149516514

/-! ## A102313.P3524479306469822642

`A100499(1-(n-2*n))%6`
-/

namespace A102313.P3524479306469822642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100499 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) 6

end

end A102313.P3524479306469822642

/-! ## A102313.P713962440306077877

`A010875(A100499(n+1))`
-/

namespace A102313.P713962440306077877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A100499 (n + 1)).toNat

end

end A102313.P713962440306077877

/-! ## A102313.P16557912948217957829

`A038698(A100499(n+1)+1)`
-/

namespace A102313.P16557912948217957829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A100499 (n + 1) + 1).toNat

end

end A102313.P16557912948217957829

/-! ## A102313.P8041438874748085302

`A048766(A100499(n+1)+1)`
-/

namespace A102313.P8041438874748085302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A100499 (n + 1) + 1).toNat

end

end A102313.P8041438874748085302

/-! ## A102313.P4155448708059282231

`A053150(2*A100499(n+1))`
-/

namespace A102313.P4155448708059282231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (2 * A100499 (n + 1)).toNat

end

end A102313.P4155448708059282231

/-! ## A102313.P16096716374332651811

`A255270(5*A100499(n+1))`
-/

namespace A102313.P16096716374332651811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (5 * A100499 (n + 1)).toNat

end

end A102313.P16096716374332651811

/-! ## A102313.P15489758399481494260

`A038387(9*A100499(n+1))`
-/

namespace A102313.P15489758399481494260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (9 * A100499 (n + 1)).toNat

end

end A102313.P15489758399481494260

/-! ## A102313.P15937680692897306366

`A255270(lcm(7, A100499(n+1)))`
-/

namespace A102313.P15937680692897306366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (Int.lcm 7 (A100499 (n + 1)))

end

end A102313.P15937680692897306366

/-! ## A102313.P15459517897101313512

`A002024(floor(sqrt(A100499(n+1))))`
-/

namespace A102313.P15459517897101313512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.sqrt (A100499 (n + 1))).toNat

end

end A102313.P15459517897101313512

/-!
# A102314: McKay-Thompson series of class 42C for the Monster group.

The programs for A102314, there is no canonical definition to state claims against.
-/

/-! ## A102314.P13675856612131531110

`(-1)^n*A112212(n)`
-/

namespace A102314.P13675856612131531110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112212 n

end

end A102314.P13675856612131531110

/-! ## A102314.P4753930949463073658

`A112212(n)/A033999(n)`
-/

namespace A102314.P4753930949463073658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112212 n : ℚ) / (A033999 n : ℚ)

end

end A102314.P4753930949463073658

/-! ## A102314.P9932658005591251212

`A093950(n)*A112212(n)/A246762(n)`
-/

namespace A102314.P9932658005591251212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093950 n * A112212 n : ℚ) / (A246762 n : ℚ)

end

end A102314.P9932658005591251212

/-! ## A102314.P6846036434044928515

`A112212(n)/A056594(2*n)`
-/

namespace A102314.P6846036434044928515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112212 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A102314.P6846036434044928515

/-!
# A102315: Expansion of (b(q^6) * c(q^6)) / (b(q^3) * c(q^3)) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A102315, there is no canonical definition to state claims against.
-/

/-! ## A102315.P5360704956533371135

`A112173(Δ[n²])/2`
-/

namespace A102315.P5360704956533371135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A102315.P5360704956533371135

/-! ## A102315.P17966229318476025240

`abs(A058543(2*n+1)/2)`
-/

namespace A102315.P17966229318476025240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A058543 (2 * n + 1) : ℚ) / 2|

end

end A102315.P17966229318476025240

/-! ## A102315.P8793042415995502121

`record[A112173(n)/A141056(n)]`
-/

namespace A102315.P8793042415995502121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112173 n : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102315.P8793042415995502121

/-! ## A102315.P3428841674839345717

`gcd(A000038(n), A058543(2*n+1))/2`
-/

namespace A102315.P3428841674839345717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A058543 (2 * n + 1)) : ℚ) / 2

end

end A102315.P3428841674839345717

/-! ## A102315.P500237806328079402

`A058543(2*n+1)/(A000038(n+1)-2)`
-/

namespace A102315.P500237806328079402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058543 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A102315.P500237806328079402

/-! ## A102315.P14290706654437884070

`A058543(2*n+1)/(A000035(2*n)-2)`
-/

namespace A102315.P14290706654437884070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058543 (2 * n + 1) : ℚ) / (A000035 (2 * n) - 2 : ℚ)

end

end A102315.P14290706654437884070

/-! ## A102315.P5857715083077499350

`lcm(A000034(n+1), A058543(2*n+1))/2`
-/

namespace A102315.P5857715083077499350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A058543 (2 * n + 1)) : ℚ) / 2

end

end A102315.P5857715083077499350

/-! ## A102315.P14084758057447385072

`A058543(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A102315.P14084758057447385072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058543 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A102315.P14084758057447385072

/-! ## A102315.P17251704330528138699

`A058543(2*n+1)/A000034(2*n+1)-A058543(2*n+1)`
-/

namespace A102315.P17251704330528138699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058543 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A058543 (2 * n + 1) : ℚ)

end

end A102315.P17251704330528138699

/-!
# A102317: Row sums of triangle A102316.

The programs for A102317, there is no canonical definition to state claims against.
-/

/-! ## A102317.P8833847623584114185

`ceil(A326337(n+2)^γ)`
-/

namespace A102317.P8833847623584114185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326337 (n + 2) : ℝ) ^ Real.eulerMascheroniConstant⌉

end

end A102317.P8833847623584114185

/-!
# A102318: A mean binomial transform of the Catalan numbers.

The programs for A102318, the canonical program `A102318.P7695360913830832486` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102318 has offset 0).

The definition of A102318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102318.P6312591365931176849

`A098465(n)+A005043(A093178(n))`
-/

namespace A102318.P6312591365931176849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098465 n + A005043 (A093178 n).toNat

end

end A102318.P6312591365931176849

namespace A102318

/-- `A098465(n)+A005043(A093178(n))` -/
def P6312591365931176849.Spec : Prop :=
  ∀ n, P6312591365931176849.a n = A102318 n

end A102318

/-! ## A102318.P7695360913830832486

`(A005043(n)+∑[A002212(n)])/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102318

/-- `(A005043(n)+∑[A002212(n)])/2` -/
def P7695360913830832486.Spec : Prop :=
  ∀ n, P7695360913830832486.a n = (A102318 n : ℚ)

end A102318

/-! ## A102318.P16319832402185390515

`(A007317(n+1)+A005043(n))/2`
-/

namespace A102318.P16319832402185390515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007317 (n + 1) + A005043 n : ℚ) / 2

end

end A102318.P16319832402185390515

namespace A102318

/-- `(A007317(n+1)+A005043(n))/2` -/
def P16319832402185390515.Spec : Prop :=
  ∀ n, P16319832402185390515.a n = (A102318 n : ℚ)

end A102318

/-! ## A102318.P9068807824261590246

`(A005043(n)+A181768(n+1))/2`
-/

namespace A102318.P9068807824261590246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005043 n + A181768 (n + 1) : ℚ) / 2

end

end A102318.P9068807824261590246

namespace A102318

/-- `(A005043(n)+A181768(n+1))/2` -/
def P9068807824261590246.Spec : Prop :=
  ∀ n, P9068807824261590246.a n = (A102318 n : ℚ)

end A102318

/-! ## A102318.P9840210782413796779

`A102319(n)-A106391(n)`
-/

namespace A102318.P9840210782413796779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102319 n - A106391 n

end

end A102318.P9840210782413796779

namespace A102318

/-- `A102319(n)-A106391(n)` -/
def P9840210782413796779.Spec : Prop :=
  ∀ n, P9840210782413796779.a n = A102318 n

end A102318

/-!
# A102319: A mean binomial transform of the central binomial numbers.

The programs for A102319, the canonical program `A102319.P7762194831115780730` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102319 has offset 0).

The definition of A102319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102319.P6361900856967873281

`A106391(n)+A102318(n)`
-/

namespace A102319.P6361900856967873281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106391 n + A102318 n

end

end A102319.P6361900856967873281

namespace A102319

/-- `A106391(n)+A102318(n)` -/
def P6361900856967873281.Spec : Prop :=
  ∀ n, P6361900856967873281.a n = A102319 n

end A102319

/-! ## A102319.P7762194831115780730

`A242586(n)+A097861(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102319

/-- `A242586(n)+A097861(n)` -/
def P7762194831115780730.Spec : Prop :=
  ∀ n, P7762194831115780730.a n = A102319 n

theorem P7762194831115780730.correct : P7762194831115780730.Spec := by
  intro n
  simp only [A102319]

end A102319

/-! ## A102319.P18360267403762749570

`A242586(n)+A257520(n)-1`
-/

namespace A102319.P18360267403762749570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n + (A257520 n - 1)

end

end A102319.P18360267403762749570

namespace A102319

/-- `A242586(n)+A257520(n)-1` -/
def P18360267403762749570.Spec : Prop :=
  ∀ n, P18360267403762749570.a n = A102319 n

end A102319

/-! ## A102319.P547921556905807204

`A027914(n)+A242586(n)-A007051(n)`
-/

namespace A102319.P547921556905807204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n + (A242586 n - A007051 n)

end

end A102319.P547921556905807204

namespace A102319

/-- `A027914(n)+A242586(n)-A007051(n)` -/
def P547921556905807204.Spec : Prop :=
  ∀ n, P547921556905807204.a n = A102319 n

end A102319

/-! ## A102319.P9754724712055411342

`A002426(n)-(A257520(n)-A242586(n))`
-/

namespace A102319.P9754724712055411342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - (A257520 n - A242586 n)

end

end A102319.P9754724712055411342

namespace A102319

/-- `A002426(n)-(A257520(n)-A242586(n))` -/
def P9754724712055411342.Spec : Prop :=
  ∀ n, P9754724712055411342.a n = A102319 n

end A102319

/-! ## A102319.P16081924109017305902

`(A026375(n)+A002426(n))/2`
-/

namespace A102319.P16081924109017305902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026375 n + A002426 n : ℚ) / 2

end

end A102319.P16081924109017305902

namespace A102319

/-- `(A026375(n)+A002426(n))/2` -/
def P16081924109017305902.Spec : Prop :=
  ∀ n, P16081924109017305902.a n = (A102319 n : ℚ)

end A102319

/-!
# A102321: Column 0 of triangular matrix A102320, which satisfies T(n,k) = [T^2](n-1,k) when n>k>=0, with T(n,n) = (2*n+1).

The programs for A102321, there is no canonical definition to state claims against.
-/

/-! ## A102321.P2697457994888039752

`A102320(∑[n])`
-/

namespace A102321.P2697457994888039752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102321.P2697457994888039752

/-! ## A102321.P1240071489856059011

`and(-1, A102320(n*(n+1)/2))`
-/

namespace A102321.P1240071489856059011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A102320 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A102321.P1240071489856059011

/-! ## A102321.P10557925642650778846

`A102320(n*(n+1)/2)%A198298(n+1)`
-/

namespace A102321.P10557925642650778846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102320 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (A198298 (n + 1))

end

end A102321.P10557925642650778846

/-! ## A102321.P16612709902275492643

`A105519(n)+A102320(A000217(n))`
-/

namespace A102321.P16612709902275492643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 n + A102320 (A000217 n).toNat

end

end A102321.P16612709902275492643

/-! ## A102321.P18045121625594007699

`A173068(n)+A102320(A000217(n))`
-/

namespace A102321.P18045121625594007699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 n + A102320 (A000217 n).toNat

end

end A102321.P18045121625594007699

/-!
# A102322: Column 1 of triangular matrix A102320, which that satisfies: T(n,k) = [T^2](n-1,k) when n>k>=0, with T(n,n) = (2*n+1).

The programs for A102322, there is no canonical definition to state claims against.
-/

/-! ## A102322.P4281129459092554312

`record[char[∑[n+1]]*A102320(n+1)]`
-/

namespace A102322.P4281129459092554312
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A102320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102322.P4281129459092554312

/-! ## A102322.P7316191271602446438

`record[A102320(n)*A141169(n)]`
-/

namespace A102322.P7316191271602446438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102320 n * A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102322.P7316191271602446438

/-! ## A102322.P8833266995493433603

`record[A102320(n)*A316101(n)]`
-/

namespace A102322.P8833266995493433603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102320 n * A316101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102322.P8833266995493433603

/-! ## A102322.P9853209199283708735

`record[A102320(n)*A318753(n)]`
-/

namespace A102322.P9853209199283708735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102320 n * A318753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102322.P9853209199283708735

/-! ## A102322.P12210573546034218260

`A102320(A000124(n))-floor(acot(n))`
-/

namespace A102322.P12210573546034218260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102320 (A000124 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A102322.P12210573546034218260

/-!
# A102323: Triangle, read by rows, where T(n,k) = T(n,k-1) + (2*k+1)*T(n-1,k) for n>k>0, T(n,0)=1 and T(n,n) = T(n,n-1) for n>=0.

The programs for A102323, there is no canonical definition to state claims against.
-/

/-! ## A102323.P8333095791636102603

`A144303(A154436(n)+A004915(n+1))`
-/

namespace A102323.P8333095791636102603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A154436 n + A004915 (n + 1)).toNat

end

end A102323.P8333095791636102603

/-! ## A102323.P5856561099653694317

`A003963(2*A302915(n+1))`
-/

namespace A102323.P5856561099653694317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A302915 (n + 1)).toNat

end

end A102323.P5856561099653694317

/-! ## A102323.P11661302222866363419

`A290103(2*A302915(n+1))`
-/

namespace A102323.P11661302222866363419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A302915 (n + 1)).toNat

end

end A102323.P11661302222866363419

/-! ## A102323.P6919043158942701182

`A003963(lcm(64, A302915(n+1)))`
-/

namespace A102323.P6919043158942701182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 64 (A302915 (n + 1)))

end

end A102323.P6919043158942701182

/-! ## A102323.P9373091106359937690

`A079430(A288069(n+1)+A026300(n))`
-/

namespace A102323.P9373091106359937690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079430 (A288069 (n + 1) + A026300 n).toNat

end

end A102323.P9373091106359937690

/-!
# A102325: Primes p such that the largest prime divisor of p^3 + 1 is less than p.

The programs for A102325, there is no canonical definition to state claims against.
-/

/-! ## A102325.P4642021428394109029

`p?[A081258(n+1)+1]`
-/

namespace A102325.P4642021428394109029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102325.P4642021428394109029

/-! ## A102325.P6880888456839572918

`record[A020639(A081258(n+1)+1)]`
-/

namespace A102325.P6880888456839572918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A081258 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102325.P6880888456839572918

/-! ## A102325.P11364221292541989395

`∩[A000040(n+1), A081258(n+1)+1]`
-/

namespace A102325.P11364221292541989395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P11364221292541989395

/-! ## A102325.P8257295588416839834

`∩[A004139(n+1), A081258(n+1)+1]`
-/

namespace A102325.P8257295588416839834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P8257295588416839834

/-! ## A102325.P1587791036869634259

`∩[A006005(n+1), A081258(n+1)+1]`
-/

namespace A102325.P1587791036869634259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P1587791036869634259

/-! ## A102325.P1566538907489277972

`∩[A008578(n+1), A081258(n+1)+1]`
-/

namespace A102325.P1566538907489277972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P1566538907489277972

/-! ## A102325.P13482331108931115455

`∩[A045319(n+1), A081258(n+1)+1]`
-/

namespace A102325.P13482331108931115455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P13482331108931115455

/-! ## A102325.P7265417237065104162

`∩[A045344(n+1), A081258(n+1)+1]`
-/

namespace A102325.P7265417237065104162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P7265417237065104162

/-! ## A102325.P1936171738877325393

`∩[A046022(n+1), A081258(n+1)+1]`
-/

namespace A102325.P1936171738877325393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P1936171738877325393

/-! ## A102325.P2869123434399514201

`∩[A053813(n+1), A081258(n+1)+1]`
-/

namespace A102325.P2869123434399514201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P2869123434399514201

/-! ## A102325.P13760311337193675516

`∩[A065091(n+1), A081258(n+1)+1]`
-/

namespace A102325.P13760311337193675516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P13760311337193675516

/-! ## A102325.P5460235169576900543

`∩[A066050(n+1), A081258(n+1)+1]`
-/

namespace A102325.P5460235169576900543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P5460235169576900543

/-! ## A102325.P11798324585253293929

`∩[A067126(n+1), A081258(n+1)+1]`
-/

namespace A102325.P11798324585253293929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P11798324585253293929

/-! ## A102325.P439638740271555871

`∩[A081258(n+1)+1, A161346(n+1)]`
-/

namespace A102325.P439638740271555871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P439638740271555871

/-! ## A102325.P3691548383867267022

`∩[A081258(n+1)+1, A182986(n+1)]`
-/

namespace A102325.P3691548383867267022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P3691548383867267022

/-! ## A102325.P8557994583670404722

`∩[A081258(n+1)+1, A193339(n+1)]`
-/

namespace A102325.P8557994583670404722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P8557994583670404722

/-! ## A102325.P3767752950590334930

`∩[A081258(n+1)+1, A216495(n+1)]`
-/

namespace A102325.P3767752950590334930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P3767752950590334930

/-! ## A102325.P2582377649073039024

`record[A014963(A081258(n+1)+1)]`
-/

namespace A102325.P2582377649073039024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A081258 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102325.P2582377649073039024

/-! ## A102325.P1405380926263640291

`∩[A005180(n+1), A081258(n+1)+1]`
-/

namespace A102325.P1405380926263640291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102325.P1405380926263640291

/-!
# A102326: Primes p such that the largest prime divisor of p^4+1 is less than p.

The programs for A102326, there is no canonical definition to state claims against.
-/

/-! ## A102326.P5677300483710152456

`p?[A309562(n+1)]`
-/

namespace A102326.P5677300483710152456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102326.P5677300483710152456

/-! ## A102326.P3725078636283188261

`or(1, p?[A309562(-xor(n, -1))])`
-/

namespace A102326.P3725078636283188261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309562 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A102326.P3725078636283188261

/-! ## A102326.P14430649114137367014

`record[p?[A309562(A052938(n))]]`
-/

namespace A102326.P14430649114137367014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309562 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102326.P14430649114137367014

/-! ## A102326.P11118565756726738544

`record[p?[A309562(A133310(n))]]`
-/

namespace A102326.P11118565756726738544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309562 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102326.P11118565756726738544

/-! ## A102326.P5846290102459819102

`record[p?[A309562(A328399(n))]]`
-/

namespace A102326.P5846290102459819102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309562 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102326.P5846290102459819102

/-!
# A102331: Initial members of quintuplets (p, p+4, p+12, p+16, p+24) of consecutive primes with the corresponding difference pattern is {4,8,4,8}.

The programs for A102331, there is no canonical definition to state claims against.
-/

/-! ## A102331.P3007514589494380505

`p?[A052377(n+1)-4]`
-/

namespace A102331.P3007514589494380505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052377 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102331.P3007514589494380505

/-! ## A102331.P1393742763292245582

`p?[A189925(A328479(2*n+1))+A052377(n+1)]`
-/

namespace A102331.P1393742763292245582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189925 (A328479 (2 * n + 1)).toNat + A052377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102331.P1393742763292245582

/-!
# A102338: Numbers k such that 10k+3 is prime.

The programs for A102338, the canonical program `A102338.P67437949773924713` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102338 has offset 1).

The definition of A102338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102338.P67437949773924713

`A024913(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102338

/-- `A024913(n+1)-1` -/
def P67437949773924713.Spec : Prop :=
  ∀ n, P67437949773924713.a n = A102338 (n + 1)

theorem P67437949773924713.correct : P67437949773924713.Spec := by
  intro n
  simp only [A102338, Nat.add_sub_cancel]

end A102338

/-! ## A102338.P10696952771233826534

`A087505(n+1)/2`
-/

namespace A102338.P10696952771233826534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087505 (n + 1) : ℚ) / 2

end

end A102338.P10696952771233826534

namespace A102338

/-- `A087505(n+1)/2` -/
def P10696952771233826534.Spec : Prop :=
  ∀ n, P10696952771233826534.a n = (A102338 (n + 1) : ℚ)

end A102338

/-! ## A102338.P18355529106604409615

`floor(A024896(n+1)/2)`
-/

namespace A102338.P18355529106604409615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024896 (n + 1) : ℚ) / 2⌋

end

end A102338.P18355529106604409615

namespace A102338

/-- `floor(A024896(n+1)/2)` -/
def P18355529106604409615.Spec : Prop :=
  ∀ n, P18355529106604409615.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P6039612854241711073

`floor(A030431(n+1)/10)`
-/

namespace A102338.P6039612854241711073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030431 (n + 1) : ℚ) / 10⌋

end

end A102338.P6039612854241711073

namespace A102338

/-- `floor(A030431(n+1)/10)` -/
def P6039612854241711073.Spec : Prop :=
  ∀ n, P6039612854241711073.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P5405943736309382181

`A107304(n+1)/2-1`
-/

namespace A102338.P5405943736309382181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107304 (n + 1) : ℚ) / 2 - 1

end

end A102338.P5405943736309382181

namespace A102338

/-- `A107304(n+1)/2-1` -/
def P5405943736309382181.Spec : Prop :=
  ∀ n, P5405943736309382181.a n = (A102338 (n + 1) : ℚ)

end A102338

/-! ## A102338.P4400094904829638290

`A024896(n+1)%A024913(n+1)`
-/

namespace A102338.P4400094904829638290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024896 (n + 1)) (A024913 (n + 1))

end

end A102338.P4400094904829638290

namespace A102338

/-- `A024896(n+1)%A024913(n+1)` -/
def P4400094904829638290.Spec : Prop :=
  ∀ n, P4400094904829638290.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P11958699283381779700

`A108584(n+1)+A023452(n)-n`
-/

namespace A102338.P11958699283381779700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108584 (n + 1) + (A023452 n - (n : ℤ))

end

end A102338.P11958699283381779700

namespace A102338

/-- `A108584(n+1)+A023452(n)-n` -/
def P11958699283381779700.Spec : Prop :=
  ∀ n, P11958699283381779700.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P11927351175175904636

`A185322(A049508(n+1))-1`
-/

namespace A102338.P11927351175175904636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A049508 (n + 1)).toNat - 1

end

end A102338.P11927351175175904636

namespace A102338

/-- `A185322(A049508(n+1))-1` -/
def P11927351175175904636.Spec : Prop :=
  ∀ n, P11927351175175904636.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P8376965836860312442

`A185322(A244739(n+2))-1`
-/

namespace A102338.P8376965836860312442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A244739 (n + 2)).toNat - 1

end

end A102338.P8376965836860312442

namespace A102338

/-- `A185322(A244739(n+2))-1` -/
def P8376965836860312442.Spec : Prop :=
  ∀ n, P8376965836860312442.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P9957943742178355249

`eq[1, A001222(10*n+3)]`
-/

namespace A102338.P9957943742178355249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102338.P9957943742178355249

namespace A102338

/-- `eq[1, A001222(10*n+3)]` -/
def P9957943742178355249.Spec : Prop :=
  ∀ n, (P9957943742178355249.a n : ℤ) = A102338 (n + 1)

end A102338

/-! ## A102338.P17476577178203729417

`eq[2, A000005(10*n+3)]`
-/

namespace A102338.P17476577178203729417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102338.P17476577178203729417

namespace A102338

/-- `eq[2, A000005(10*n+3)]` -/
def P17476577178203729417.Spec : Prop :=
  ∀ n, (P17476577178203729417.a n : ℤ) = A102338 (n + 1)

end A102338

/-! ## A102338.P8162093069165221304

`lt[n, A020639(10*n+3)]`
-/

namespace A102338.P8162093069165221304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102338.P8162093069165221304

namespace A102338

/-- `lt[n, A020639(10*n+3)]` -/
def P8162093069165221304.Spec : Prop :=
  ∀ n, (P8162093069165221304.a n : ℤ) = A102338 (n + 1)

end A102338

/-! ## A102338.P9297640995164828103

`lt[A001222(20*n/2+3), 2]`
-/

namespace A102338.P9297640995164828103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (20 * ((n : ℚ) / 2) + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102338.P9297640995164828103

namespace A102338

/-- `lt[A001222(20*n/2+3), 2]` -/
def P9297640995164828103.Spec : Prop :=
  ∀ n, (P9297640995164828103.a n : ℤ) = A102338 (n + 1)

end A102338

/-! ## A102338.P9108786259029525839

`lt[A000005(5*(2*n+1)-2), 3]`
-/

namespace A102338.P9108786259029525839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (2 * n + 1) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102338.P9108786259029525839

namespace A102338

/-- `lt[A000005(5*(2*n+1)-2), 3]` -/
def P9108786259029525839.Spec : Prop :=
  ∀ n, (P9108786259029525839.a n : ℤ) = A102338 (n + 1)

end A102338

/-! ## A102338.P14520171686412765554

`A023443(A024913(n+1))`
-/

namespace A102338.P14520171686412765554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A024913 (n + 1)).toNat

end

end A102338.P14520171686412765554

namespace A102338

/-- `A023443(A024913(n+1))` -/
def P14520171686412765554.Spec : Prop :=
  ∀ n, P14520171686412765554.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P12429810376352947848

`A023444(A024913(n+1)+1)`
-/

namespace A102338.P12429810376352947848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A024913 (n + 1) + 1).toNat

end

end A102338.P12429810376352947848

namespace A102338

/-- `A023444(A024913(n+1)+1)` -/
def P12429810376352947848.Spec : Prop :=
  ∀ n, P12429810376352947848.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P11448476172391336176

`A023452(A108584(n+1))`
-/

namespace A102338.P11448476172391336176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A108584 (n + 1)).toNat

end

end A102338.P11448476172391336176

namespace A102338

/-- `A023452(A108584(n+1))` -/
def P11448476172391336176.Spec : Prop :=
  ∀ n, P11448476172391336176.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P8111586964237434589

`A023455(A108854(n+1))`
-/

namespace A102338.P8111586964237434589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023455 (A108854 (n + 1)).toNat

end

end A102338.P8111586964237434589

namespace A102338

/-- `A023455(A108854(n+1))` -/
def P8111586964237434589.Spec : Prop :=
  ∀ n, P8111586964237434589.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P9473695825361788085

`A023453(A108584(n+1)+1)`
-/

namespace A102338.P9473695825361788085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A108584 (n + 1) + 1).toNat

end

end A102338.P9473695825361788085

namespace A102338

/-- `A023453(A108584(n+1)+1)` -/
def P9473695825361788085.Spec : Prop :=
  ∀ n, P9473695825361788085.a n = A102338 (n + 1)

end A102338

/-! ## A102338.P10862761511250119811

`A023456(A108854(n+1)+1)`
-/

namespace A102338.P10862761511250119811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 (A108854 (n + 1) + 1).toNat

end

end A102338.P10862761511250119811

namespace A102338

/-- `A023456(A108854(n+1)+1)` -/
def P10862761511250119811.Spec : Prop :=
  ∀ n, P10862761511250119811.a n = A102338 (n + 1)

end A102338

/-!
# A102341: Areas of 'close-to-equilateral' integer triangles.

The programs for A102341, there is no canonical definition to state claims against.
-/

/-! ## A102341.P12140680841785741476

`Δ[Δ[A006253(n)/2]²]`
-/

namespace A102341.P12140680841785741476
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006253 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102341.P12140680841785741476

/-! ## A102341.P8012916021882284114

`Δ[(A217233(n+1)/2)²]`
-/

namespace A102341.P8012916021882284114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A217233 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102341.P8012916021882284114

/-! ## A102341.P17200445558457349221

`A010905(n)*A195499(n+1)`
-/

namespace A102341.P17200445558457349221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n * A195499 (n + 1)

end

end A102341.P17200445558457349221

/-! ## A102341.P4214930769340534107

`A010905(n)*A120892(n+2)`
-/

namespace A102341.P4214930769340534107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n * A120892 (n + 2)

end

end A102341.P4214930769340534107

/-! ## A102341.P6237203232240387508

`Δ[A109437(n+2)*A109437(n)]`
-/

namespace A102341.P6237203232240387508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (n + 2) * A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102341.P6237203232240387508

/-! ## A102341.P4467202281875642007

`A001353(n+2)*A195499(n+1)`
-/

namespace A102341.P4467202281875642007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 2) * A195499 (n + 1)

end

end A102341.P4467202281875642007

/-! ## A102341.P4446310880756516244

`A001353(n+2)*A120892(n+2)`
-/

namespace A102341.P4446310880756516244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 2) * A120892 (n + 2)

end

end A102341.P4446310880756516244

/-!
# A102342: Numbers k such that 10k + 7 is prime.

The programs for A102342, the canonical program `A102342.P12936931481854029338` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102342 has offset 1).

The definition of A102342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102342.P12936931481854029338

`floor(p?[5*n+7]/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102342

/-- `floor(p?[5*n+7]/10)` -/
def P12936931481854029338.Spec : Prop :=
  ∀ n, P12936931481854029338.a n = A102342 (n + 1)

theorem P12936931481854029338.correct : P12936931481854029338.Spec := by
  intro n
  simp only [A102342, Nat.add_sub_cancel]

end A102342

/-! ## A102342.P3089846727420767181

`A024914(n+1)-1`
-/

namespace A102342.P3089846727420767181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1) - 1

end

end A102342.P3089846727420767181

namespace A102342

/-- `A024914(n+1)-1` -/
def P3089846727420767181.Spec : Prop :=
  ∀ n, P3089846727420767181.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P1154630744064910295

`A111224(n+1)/2`
-/

namespace A102342.P1154630744064910295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111224 (n + 1) : ℚ) / 2

end

end A102342.P1154630744064910295

namespace A102342

/-- `A111224(n+1)/2` -/
def P1154630744064910295.Spec : Prop :=
  ∀ n, P1154630744064910295.a n = (A102342 (n + 1) : ℚ)

end A102342

/-! ## A102342.P1688337406047884474

`floor(A030432(n+1)/10)`
-/

namespace A102342.P1688337406047884474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030432 (n + 1) : ℚ) / 10⌋

end

end A102342.P1688337406047884474

namespace A102342

/-- `floor(A030432(n+1)/10)` -/
def P1688337406047884474.Spec : Prop :=
  ∀ n, P1688337406047884474.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P3160046150360122119

`A024912(n+1)-A139368(n+1)`
-/

namespace A102342.P3160046150360122119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) - A139368 (n + 1)

end

end A102342.P3160046150360122119

namespace A102342

/-- `A024912(n+1)-A139368(n+1)` -/
def P3160046150360122119.Spec : Prop :=
  ∀ n, P3160046150360122119.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P3834038794744102907

`A102700(n+1)-A139367(n+1)`
-/

namespace A102342.P3834038794744102907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) - A139367 (n + 1)

end

end A102342.P3834038794744102907

namespace A102342

/-- `A102700(n+1)-A139367(n+1)` -/
def P3834038794744102907.Spec : Prop :=
  ∀ n, P3834038794744102907.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P14715810575995852826

`A105042(n+1)-(A139367(n+1)+1)`
-/

namespace A102342.P14715810575995852826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - (A139367 (n + 1) + 1)

end

end A102342.P14715810575995852826

namespace A102342

/-- `A105042(n+1)-(A139367(n+1)+1)` -/
def P14715810575995852826.Spec : Prop :=
  ∀ n, P14715810575995852826.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P5182150937894642531

`floor(A111223(n+2)/2)`
-/

namespace A102342.P5182150937894642531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111223 (n + 2) : ℚ) / 2⌋

end

end A102342.P5182150937894642531

namespace A102342

/-- `floor(A111223(n+2)/2)` -/
def P5182150937894642531.Spec : Prop :=
  ∀ n, P5182150937894642531.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P6126515308135096985

`A024895(n+2)/2-1`
-/

namespace A102342.P6126515308135096985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024895 (n + 2) : ℚ) / 2 - 1

end

end A102342.P6126515308135096985

namespace A102342

/-- `A024895(n+2)/2-1` -/
def P6126515308135096985.Spec : Prop :=
  ∀ n, P6126515308135096985.a n = (A102342 (n + 1) : ℚ)

end A102342

/-! ## A102342.P15505888225872080019

`A185322(A049509(n+1))-1`
-/

namespace A102342.P15505888225872080019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A049509 (n + 1)).toNat - 1

end

end A102342.P15505888225872080019

namespace A102342

/-- `A185322(A049509(n+1))-1` -/
def P15505888225872080019.Spec : Prop :=
  ∀ n, P15505888225872080019.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P11171980562274481332

`A185322(A244741(n+2))-1`
-/

namespace A102342.P11171980562274481332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A244741 (n + 2)).toNat - 1

end

end A102342.P11171980562274481332

namespace A102342

/-- `A185322(A244741(n+2))-1` -/
def P11171980562274481332.Spec : Prop :=
  ∀ n, P11171980562274481332.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P14378724860522536132

`lt[∏{e}[10*n+7, #+1], 3]`
-/

namespace A102342.P14378724860522536132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A102342.P14378724860522536132

namespace A102342

/-- `lt[∏{e}[10*n+7, #+1], 3]` -/
def P14378724860522536132.Spec : Prop :=
  ∀ n, (P14378724860522536132.a n : ℤ) = A102342 (n + 1)

end A102342

/-! ## A102342.P12285176262969212791

`eq[1, A001222(10*n+7)]`
-/

namespace A102342.P12285176262969212791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102342.P12285176262969212791

namespace A102342

/-- `eq[1, A001222(10*n+7)]` -/
def P12285176262969212791.Spec : Prop :=
  ∀ n, (P12285176262969212791.a n : ℤ) = A102342 (n + 1)

end A102342

/-! ## A102342.P1693272184546321410

`eq[2, A000005(10*n+7)]`
-/

namespace A102342.P1693272184546321410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102342.P1693272184546321410

namespace A102342

/-- `eq[2, A000005(10*n+7)]` -/
def P1693272184546321410.Spec : Prop :=
  ∀ n, (P1693272184546321410.a n : ℤ) = A102342 (n + 1)

end A102342

/-! ## A102342.P1499918328227544964

`lt[A001222(2*5*n+7), 2]`
-/

namespace A102342.P1499918328227544964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (5 * n) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102342.P1499918328227544964

namespace A102342

/-- `lt[A001222(2*5*n+7), 2]` -/
def P1499918328227544964.Spec : Prop :=
  ∀ n, (P1499918328227544964.a n : ℤ) = A102342 (n + 1)

end A102342

/-! ## A102342.P2856267208061812242

`lt[n+1, A020639(10*n+7)]`
-/

namespace A102342.P2856267208061812242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102342.P2856267208061812242

namespace A102342

/-- `lt[n+1, A020639(10*n+7)]` -/
def P2856267208061812242.Spec : Prop :=
  ∀ n, (P2856267208061812242.a n : ℤ) = A102342 (n + 1)

end A102342

/-! ## A102342.P7113832748346332304

`record[floor(A000010(10*n+7)/10)]`
-/

namespace A102342.P7113832748346332304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (10 * n + 7) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102342.P7113832748346332304

namespace A102342

/-- `record[floor(A000010(10*n+7)/10)]` -/
def P7113832748346332304.Spec : Prop :=
  ∀ n, P7113832748346332304.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P5116669369769871480

`record[n/A001222(10*(n+1)-3)]`
-/

namespace A102342.P5116669369769871480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A001222 (10 * (n + 1) - 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102342.P5116669369769871480

namespace A102342

/-- `record[n/A001222(10*(n+1)-3)]` -/
def P5116669369769871480.Spec : Prop :=
  ∀ n, P5116669369769871480.a n = (A102342 (n + 1) : ℚ)

end A102342

/-! ## A102342.P1206567763355911704

`A004483(A024914(n+1))`
-/

namespace A102342.P1206567763355911704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A024914 (n + 1)).toNat

end

end A102342.P1206567763355911704

namespace A102342

/-- `A004483(A024914(n+1))` -/
def P1206567763355911704.Spec : Prop :=
  ∀ n, P1206567763355911704.a n = A102342 (n + 1)

end A102342

/-! ## A102342.P14702739287796652418

`A004483(A024895(n+2)/2)`
-/

namespace A102342.P14702739287796652418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (SequenceMachineLib.roundAway ((A024895 (n + 2) : ℚ) / 2)).toNat

end

end A102342.P14702739287796652418

namespace A102342

/-- `A004483(A024895(n+2)/2)` -/
def P14702739287796652418.Spec : Prop :=
  ∀ n, P14702739287796652418.a n = A102342 (n + 1)

end A102342

/-!
# A102344: Numbers n such that the Diophantine equation (x+2)^3-x^3=2*n^2 has solutions.

The programs for A102344, the canonical program `A102344.P11202309194794206854` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102344 has offset 1).

The definition of A102344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102344.P11202309194794206854

`14*a(n-1)-a(n-2)` with `a(0)=2, a(1)=7, a(2)=97`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102344

/-- `14*a(n-1)-a(n-2)` -/
def P11202309194794206854.Spec : Prop :=
  ∀ n, P11202309194794206854.a n = A102344 (n + 1)

theorem P11202309194794206854.correct : P11202309194794206854.Spec := by
  intro n
  simp only [A102344, Nat.add_sub_cancel]

end A102344

/-! ## A102344.P17379039082599759056

`floor((sqrt(3)+2)²*a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A102344.P17379039082599759056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋

end

end A102344.P17379039082599759056

namespace A102344

/-- `floor((sqrt(3)+2)²*a(n-1))` -/
def P17379039082599759056.Spec : Prop :=
  ∀ n, P17379039082599759056.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P5910060210269741001

`record[round(a(n-1)/(sqrt(3)-2))]` with `a(0)=2, a(1)=7`
-/

namespace A102344.P5910060210269741001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102344.P5910060210269741001

namespace A102344

/-- `record[round(a(n-1)/(sqrt(3)-2))]` -/
def P5910060210269741001.Spec : Prop :=
  ∀ n, P5910060210269741001.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P11564391341978636818

`floor(A011943(n+1)+acot(n))`
-/

namespace A102344.P11564391341978636818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011943 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A102344.P11564391341978636818

namespace A102344

/-- `floor(A011943(n+1)+acot(n))` -/
def P11564391341978636818.Spec : Prop :=
  ∀ n, P11564391341978636818.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P5681351368049392410

`floor(A001075(2*n)+acot(n))`
-/

namespace A102344.P5681351368049392410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001075 (2 * n) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A102344.P5681351368049392410

namespace A102344

/-- `floor(A001075(2*n)+acot(n))` -/
def P5681351368049392410.Spec : Prop :=
  ∀ n, P5681351368049392410.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P12299736083293434544

`A001075(or(2*n, floor(acot(n))))`
-/

namespace A102344.P12299736083293434544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (Int.lor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A102344.P12299736083293434544

namespace A102344

/-- `A001075(or(2*n, floor(acot(n))))` -/
def P12299736083293434544.Spec : Prop :=
  ∀ n, P12299736083293434544.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P12299071449876860628

`A001075(comp[2*(n+1)]+1)`
-/

namespace A102344.P12299071449876860628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A102344.P12299071449876860628

namespace A102344

/-- `A001075(comp[2*(n+1)]+1)` -/
def P12299071449876860628.Spec : Prop :=
  ∀ n, P12299071449876860628.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P1183321631653931634

`A102206(comp[2*(n+1)])-1`
-/

namespace A102344.P1183321631653931634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102206 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A102344.P1183321631653931634

namespace A102344

/-- `A102206(comp[2*(n+1)])-1` -/
def P1183321631653931634.Spec : Prop :=
  ∀ n, P1183321631653931634.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P3173760131975956880

`A259593(A130824(n))`
-/

namespace A102344.P3173760131975956880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A130824 n).toNat

end

end A102344.P3173760131975956880

namespace A102344

/-- `A259593(A130824(n))` -/
def P3173760131975956880.Spec : Prop :=
  ∀ n, P3173760131975956880.a n = A102344 (n + 1)

end A102344

/-! ## A102344.P1042699718319216049

`A259592(A131098(n+1))`
-/

namespace A102344.P1042699718319216049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (A131098 (n + 1)).toNat

end

end A102344.P1042699718319216049

namespace A102344

/-- `A259592(A131098(n+1))` -/
def P1042699718319216049.Spec : Prop :=
  ∀ n, P1042699718319216049.a n = A102344 (n + 1)

end A102344

/-!
# A102345: a(n) = 3^n + (-1)^n.

The programs for A102345, the canonical program `A102345.P8967953284378148336` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102345 has offset 0).

The definition of A102345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+(-1)^n` (program `A102345.P8967953284378148336`, by `A102345.P8967953284378148336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102345.P8967953284378148336

`3^n+(-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102345

/-- `3^n+(-1)^n` -/
def P8967953284378148336.Spec : Prop :=
  ∀ n, P8967953284378148336.a n = A102345 n

theorem P8967953284378148336.correct : P8967953284378148336.Spec := by
  intro n
  simp only [A102345]

end A102345

/-! ## A102345.P18093562894435736135

`2*A046717(n)`
-/

namespace A102345.P18093562894435736135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046717 n

end

end A102345.P18093562894435736135

namespace A102345

/-- `2*A046717(n)` -/
def P18093562894435736135.Spec : Prop :=
  ∀ n, P18093562894435736135.a n = A102345 n

end A102345

/-! ## A102345.P5913827437173740138

`or(2, 3^n-1)`
-/

namespace A102345.P5913827437173740138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((3 ^ n : ℤ) - 1)

end

end A102345.P5913827437173740138

namespace A102345

/-- `or(2, 3^n-1)` -/
def P5913827437173740138.Spec : Prop :=
  ∀ n, P5913827437173740138.a n = A102345 n

end A102345

/-! ## A102345.P5182803292848137051

`xor(1, or(2, 3^n))`
-/

namespace A102345.P5182803292848137051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 2 (3 ^ n))

end

end A102345.P5182803292848137051

namespace A102345

/-- `xor(1, or(2, 3^n))` -/
def P5182803292848137051.Spec : Prop :=
  ∀ n, (P5182803292848137051.a n : ℤ) = A102345 n

end A102345

/-! ## A102345.P6085173374614762

`lcm(2, (-3)^n+1)`
-/

namespace A102345.P6085173374614762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((-3) ^ n + 1)

end

end A102345.P6085173374614762

namespace A102345

/-- `lcm(2, (-3)^n+1)` -/
def P6085173374614762.Spec : Prop :=
  ∀ n, (P6085173374614762.a n : ℤ) = A102345 n

end A102345

/-! ## A102345.P9574329300120160691

`and(-2, or(2, 3^n))`
-/

namespace A102345.P9574329300120160691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (Nat.lor 2 (3 ^ n) : ℤ)

end

end A102345.P9574329300120160691

namespace A102345

/-- `and(-2, or(2, 3^n))` -/
def P9574329300120160691.Spec : Prop :=
  ∀ n, P9574329300120160691.a n = A102345 n

end A102345

/-! ## A102345.P847177244580098508

`xor(2, and(-4, 3^n))`
-/

namespace A102345.P847177244580098508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.land (-4) (3 ^ n : ℤ))

end

end A102345.P847177244580098508

namespace A102345

/-- `xor(2, and(-4, 3^n))` -/
def P847177244580098508.Spec : Prop :=
  ∀ n, P847177244580098508.a n = A102345 n

end A102345

/-! ## A102345.P8584448300066022913

`3*(a(n-1)-(a(n-1)/3-a(n-2)))` with `a(0)=2, a(1)=2`
-/

namespace A102345.P8584448300066022913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 * (a (n - 1) - (a (n - 1) / 3 - a (n - 2)))

end

end A102345.P8584448300066022913

namespace A102345

/-- `3*(a(n-1)-(a(n-1)/3-a(n-2)))` -/
def P8584448300066022913.Spec : Prop :=
  ∀ n, P8584448300066022913.a n = (A102345 n : ℚ)

end A102345

/-! ## A102345.P13551084957834960074

`Δ[A103425(n)]`
-/

namespace A102345.P13551084957834960074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102345.P13551084957834960074

namespace A102345

/-- `Δ[A103425(n)]` -/
def P13551084957834960074.Spec : Prop :=
  ∀ n, P13551084957834960074.a n = A102345 n

end A102345

/-! ## A102345.P10781963548806906717

`Δ[2*A015518(n)]`
-/

namespace A102345.P10781963548806906717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102345.P10781963548806906717

namespace A102345

/-- `Δ[2*A015518(n)]` -/
def P10781963548806906717.Spec : Prop :=
  ∀ n, P10781963548806906717.a n = A102345 n

end A102345

/-! ## A102345.P1840158439584108425

`Δ[or(1, A007051(n))]`
-/

namespace A102345.P1840158439584108425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102345.P1840158439584108425

namespace A102345

/-- `Δ[or(1, A007051(n))]` -/
def P1840158439584108425.Spec : Prop :=
  ∀ n, P1840158439584108425.a n = A102345 n

end A102345

/-! ## A102345.P731759895567957862

`2*or(1, A003462(n))`
-/

namespace A102345.P731759895567957862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A003462 n)

end

end A102345.P731759895567957862

namespace A102345

/-- `2*or(1, A003462(n))` -/
def P731759895567957862.Spec : Prop :=
  ∀ n, P731759895567957862.a n = A102345 n

end A102345

/-! ## A102345.P1606857463322284138

`Δ[abs(1-A165553(n))]`
-/

namespace A102345.P1606857463322284138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A165553 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102345.P1606857463322284138

namespace A102345

/-- `Δ[abs(1-A165553(n))]` -/
def P1606857463322284138.Spec : Prop :=
  ∀ n, P1606857463322284138.a n = A102345 n

end A102345

/-!
# A102346: Number of partitions of 2n in which odd parts and multiples of 3 and 5 occur with even multiplicities. There is no restriction on the other even parts.

The programs for A102346, there is no canonical definition to state claims against.
-/

/-! ## A102346.P6892333333382959180

`A178489(A184955(n))+A100823(n)`
-/

namespace A102346.P6892333333382959180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A184955 n).toNat + A100823 n

end

end A102346.P6892333333382959180

/-! ## A102346.P14379678141031362973

`A100823(n)+A025466(A069646(n))`
-/

namespace A102346.P14379678141031362973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100823 n + A025466 (A069646 n).toNat

end

end A102346.P14379678141031362973

/-! ## A102346.P15350791147932382309

`A185284(A020742(n))+A100823(n)`
-/

namespace A102346.P15350791147932382309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A020742 n).toNat + A100823 n

end

end A102346.P15350791147932382309

/-! ## A102346.P9326602276596030843

`or(A016389(A007089(n)), A100823(n))`
-/

namespace A102346.P9326602276596030843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 (A007089 n).toNat) (A100823 n)

end

end A102346.P9326602276596030843

/-! ## A102346.P3852175766435914088

`or(A050605(A001891(n)), A100823(n))`
-/

namespace A102346.P3852175766435914088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050605 (A001891 n).toNat) (A100823 n)

end

end A102346.P3852175766435914088

/-!
# A102347: Number of distinct prime factors of 10^n - 1.

The programs for A102347, there is no canonical definition to state claims against.
-/

/-! ## A102347.P11306371795861728983

`∑{d}[n+1, A112505(#)]`
-/

namespace A102347.P11306371795861728983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112505 d

end

end A102347.P11306371795861728983

/-! ## A102347.P10422775443225653898

`A095370(n+1)+(n+1)²%3`
-/

namespace A102347.P10422775443225653898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1) + (((n + 1) ^ 2 % 3 : ℕ) : ℤ)

end

end A102347.P10422775443225653898

/-! ## A102347.P3624258338147445128

`A095370(n+1)+abs(A049347(n))`
-/

namespace A102347.P3624258338147445128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1) + |A049347 n|

end

end A102347.P3624258338147445128

/-! ## A102347.P14917681550148980244

`A095370(n+1)+A010892(n)²`
-/

namespace A102347.P14917681550148980244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1) + A010892 n ^ 2

end

end A102347.P14917681550148980244

/-! ## A102347.P13142122041845084423

`A095370(n+1)+char[A061800(n)]`
-/

namespace A102347.P13142122041845084423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102347.P13142122041845084423

/-! ## A102347.P9403922071615477304

`A095370(n+1)+A059841(A004523(n))`
-/

namespace A102347.P9403922071615477304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1) + A059841 (A004523 n).toNat

end

end A102347.P9403922071615477304

/-! ## A102347.P2655886722374770049

`A266591(A047244(n+1))+A095370(n+1)`
-/

namespace A102347.P2655886722374770049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (A047244 (n + 1)).toNat + A095370 (n + 1)

end

end A102347.P2655886722374770049

/-! ## A102347.P11496126994568720292

`∑{d}[n+1, A001222(A064126(#))]`
-/

namespace A102347.P11496126994568720292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A064126 d).toNat

end

end A102347.P11496126994568720292

/-! ## A102347.P16765878860777872980

`log2(A285273(n+1))`
-/

namespace A102347.P16765878860777872980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A285273 (n + 1) : ℝ)

end

end A102347.P16765878860777872980

/-! ## A102347.P18005377266776610048

`A000005(A285273(n+1)/2)`
-/

namespace A102347.P18005377266776610048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A285273 (n + 1) : ℚ) / 2)).toNat

end

end A102347.P18005377266776610048

/-!
# A102348: Decimated primes: every 10th prime has been omitted.

The programs for A102348, there is no canonical definition to state claims against.
-/

/-! ## A102348.P1610396764296823545

`A000040(comp[10*n])`
-/

namespace A102348.P1610396764296823545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102348.P1610396764296823545

/-! ## A102348.P9260159054208708374

`sqrt(A001248(comp[10*n]))`
-/

namespace A102348.P9260159054208708374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A102348.P9260159054208708374

/-! ## A102348.P8520012346720278031

`A006093(comp[10*n])+1`
-/

namespace A102348.P8520012346720278031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A102348.P8520012346720278031

/-! ## A102348.P17172354146494351264

`A008578(comp[10*n]+1)`
-/

namespace A102348.P17172354146494351264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A102348.P17172354146494351264

/-! ## A102348.P16657574228074559115

`A040976(comp[10*n])+2`
-/

namespace A102348.P16657574228074559115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 2

end

end A102348.P16657574228074559115

/-! ## A102348.P941640797311981746

`A073846(2*comp[10*n])`
-/

namespace A102348.P941640797311981746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102348.P941640797311981746

/-! ## A102348.P14089772813644861805

`A001747(comp[10*n]+1)/2`
-/

namespace A102348.P14089772813644861805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A102348.P14089772813644861805

/-! ## A102348.P5044701534347801297

`record[A000040(n+1)/(val(n+1, 10)+1)]`
-/

namespace A102348.P5044701534347801297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 10 + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102348.P5044701534347801297

/-! ## A102348.P6634859107818319579

`A216884(A007095(n)+1)`
-/

namespace A102348.P6634859107818319579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (A007095 n + 1).toNat

end

end A102348.P6634859107818319579

/-!
# A102349: Numbers n such that binomial(n+1,2) is in A027568.

The programs for A102349, there is no canonical definition to state claims against.
-/

/-! ## A102349.P9892967901836229228

`record[abs(1-3*n)*∏{p}[n, #-1]]-1`
-/

namespace A102349.P9892967901836229228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)| * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A102349.P9892967901836229228

/-!
# A102350: Prime(144*n).

The programs for A102350, the canonical program `A102350.P10623588059510317665` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102350 has offset 1).

The definition of A102350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102350.P10623588059510317665

`A246933(9*(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102350

/-- `A246933(9*(n+1))` -/
def P10623588059510317665.Spec : Prop :=
  ∀ n, P10623588059510317665.a n = A102350 (n + 1)

theorem P10623588059510317665.correct : P10623588059510317665.Spec := by
  intro n
  simp only [A102350, Nat.add_sub_cancel]

end A102350

/-! ## A102350.P5028467338983379776

`A246930(12*(n+1))`
-/

namespace A102350.P5028467338983379776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246930 (12 * (n + 1))

end

end A102350.P5028467338983379776

namespace A102350

/-- `A246930(12*(n+1))` -/
def P5028467338983379776.Spec : Prop :=
  ∀ n, P5028467338983379776.a n = A102350 (n + 1)

end A102350

/-! ## A102350.P15941214495677705594

`A031342(16*(n+1))`
-/

namespace A102350.P15941214495677705594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031342 (16 * (n + 1))

end

end A102350.P15941214495677705594

namespace A102350

/-- `A031342(16*(n+1))` -/
def P15941214495677705594.Spec : Prop :=
  ∀ n, P15941214495677705594.a n = A102350 (n + 1)

end A102350

/-! ## A102350.P14510884991170781713

`∩[A031342(n+1), A246933(n+1)]`
-/

namespace A102350.P14510884991170781713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102350.P14510884991170781713

namespace A102350

/-- `∩[A031342(n+1), A246933(n+1)]` -/
def P14510884991170781713.Spec : Prop :=
  ∀ n, (P14510884991170781713.a n : ℤ) = A102350 (n + 1)

end A102350

/-! ## A102350.P1794736317304707381

`A031341(18*(n+1))`
-/

namespace A102350.P1794736317304707381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031341 (18 * (n + 1))

end

end A102350.P1794736317304707381

namespace A102350

/-- `A031341(18*(n+1))` -/
def P1794736317304707381.Spec : Prop :=
  ∀ n, P1794736317304707381.a n = A102350 (n + 1)

end A102350

/-! ## A102350.P11143279075694214743

`A031339(A008606(n+1))`
-/

namespace A102350.P11143279075694214743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031339 (A008606 (n + 1)).toNat

end

end A102350.P11143279075694214743

namespace A102350

/-- `A031339(A008606(n+1))` -/
def P11143279075694214743.Spec : Prop :=
  ∀ n, P11143279075694214743.a n = A102350 (n + 1)

end A102350

/-! ## A102350.P70242211125368524

`A031337(A044102(n+1))`
-/

namespace A102350.P70242211125368524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (A044102 (n + 1)).toNat

end

end A102350.P70242211125368524

namespace A102350

/-- `A031337(A044102(n+1))` -/
def P70242211125368524.Spec : Prop :=
  ∀ n, P70242211125368524.a n = A102350 (n + 1)

end A102350

/-! ## A102350.P2956005165618779497

`A031215(72*(n+1))`
-/

namespace A102350.P2956005165618779497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (72 * (n + 1))

end

end A102350.P2956005165618779497

namespace A102350

/-- `A031215(72*(n+1))` -/
def P2956005165618779497.Spec : Prop :=
  ∀ n, P2956005165618779497.a n = A102350 (n + 1)

end A102350

/-! ## A102350.P18153609864290210350

`A060191(A157921(n+1))`
-/

namespace A102350.P18153609864290210350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A157921 (n + 1)).toNat

end

end A102350.P18153609864290210350

namespace A102350

/-- `A060191(A157921(n+1))` -/
def P18153609864290210350.Spec : Prop :=
  ∀ n, P18153609864290210350.a n = A102350 (n + 1)

end A102350

/-! ## A102350.P8331886754941375388

`A008578(A158133(n+1))`
-/

namespace A102350.P8331886754941375388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A158133 (n + 1)).toNat

end

end A102350.P8331886754941375388

namespace A102350

/-- `A008578(A158133(n+1))` -/
def P8331886754941375388.Spec : Prop :=
  ∀ n, P8331886754941375388.a n = A102350 (n + 1)

end A102350

/-!
# A102351: Let p = prime(n); then a(n) = number of residues p mod q which are prime, as q runs through the primes less than p.

The programs for A102351, there is no canonical definition to state claims against.
-/

/-! ## A102351.P9904484601588181635

`A072530(p?[xor(1, n)])`
-/

namespace A102351.P9904484601588181635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A102351.P9904484601588181635

/-! ## A102351.P15254897918304075597

`A072530(Δ[A007504(n)])`
-/

namespace A102351.P15254897918304075597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (f1 (n + 1) - f1 n).toNat

end

end A102351.P15254897918304075597

/-! ## A102351.P214110889342803653

`A072530(A000040(n+1))`
-/

namespace A102351.P214110889342803653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A000040 (n + 1)).toNat

end

end A102351.P214110889342803653

/-! ## A102351.P7771555994954211277

`A072530(A006005(n+1))`
-/

namespace A102351.P7771555994954211277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A006005 (n + 1)).toNat

end

end A102351.P7771555994954211277

/-! ## A102351.P9080233302402419600

`A072530(A008578(n+2))`
-/

namespace A102351.P9080233302402419600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A008578 (n + 2)).toNat

end

end A102351.P9080233302402419600

/-! ## A102351.P5863185728704640831

`A072530(A075643(n+2))`
-/

namespace A102351.P5863185728704640831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A075643 (n + 2)).toNat

end

end A102351.P5863185728704640831

/-! ## A102351.P3505438846018994171

`A072530(A171525(n+2))`
-/

namespace A102351.P3505438846018994171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A171525 (n + 2)).toNat

end

end A102351.P3505438846018994171

/-! ## A102351.P4900808532978802318

`A072530(A175787(n+2))`
-/

namespace A102351.P4900808532978802318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A175787 (n + 2)).toNat

end

end A102351.P4900808532978802318

/-! ## A102351.P4568942608026220439

`A072530(A182986(n+2))`
-/

namespace A102351.P4568942608026220439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A182986 (n + 2)).toNat

end

end A102351.P4568942608026220439

/-!
# A102353: a(n) is the n-th digit of the sequence multiplied by 17. This is the first such sequence showing every digit from 0 to 9.

The programs for A102353, there is no canonical definition to state claims against.
-/

/-! ## A102353.P7666025691111946796

`lcm(17, A173630(lcm(2, ∑[5*n])/2))`
-/

namespace A102353.P7666025691111946796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 17 (A173630 (SequenceMachineLib.roundAway ((Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)).toNat)

end

end A102353.P7666025691111946796

/-!
# A102354: a(n) is the number of ways n can be written as k^2 * j, 0 < j <= k.

The programs for A102354, there is no canonical definition to state claims against.
-/

/-! ## A102354.P9026969123619334935

`∑{d}[n+1, A010057(#)*A102448((n+1)/#)]`
-/

namespace A102354.P9026969123619334935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 d * A102448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A102354.P9026969123619334935

/-! ## A102354.P6238722373305440289

`A034836(n+1)+A034836(n+1)+A088432(n+1)-A140773(n+1)`
-/

namespace A102354.P6238722373305440289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) + (A034836 (n + 1) + (A088432 (n + 1) - A140773 (n + 1)))

end

end A102354.P6238722373305440289

/-! ## A102354.P5337724260925685414

`A034836(n+1)-A088433(n+1)`
-/

namespace A102354.P5337724260925685414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A088433 (n + 1)

end

end A102354.P5337724260925685414

/-! ## A102354.P1086874318928642688

`A046951(n+1)+A088434(n+1)-A088433(n+1)`
-/

namespace A102354.P1086874318928642688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A088434 (n + 1) - A088433 (n + 1))

end

end A102354.P1086874318928642688

/-! ## A102354.P8272737193568753572

`A038548(n+1)+A122179(n+1)-A088433(n+1)`
-/

namespace A102354.P8272737193568753572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A122179 (n + 1) - A088433 (n + 1))

end

end A102354.P8272737193568753572

/-! ## A102354.P8837309069425579662

`A140773(n+1)-(A088432(n+1)+A088433(n+1)+A088433(n+1))`
-/

namespace A102354.P8837309069425579662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140773 (n + 1) - (A088432 (n + 1) + (A088433 (n + 1) + A088433 (n + 1)))

end

end A102354.P8837309069425579662

/-! ## A102354.P6579223748973775493

`floor(A000188(n+1)/A102095(n+1))`
-/

namespace A102354.P6579223748973775493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (n + 1) : ℚ) / (A102095 (n + 1) : ℚ)⌋

end

end A102354.P6579223748973775493

/-! ## A102354.P3724868959048002084

`ceil(A325045(n+1)/A261247(n+1))`
-/

namespace A102354.P3724868959048002084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A325045 (n + 1) : ℚ) / (A261247 (n + 1) : ℚ)⌉

end

end A102354.P3724868959048002084

/-! ## A102354.P15289744000745043403

`A243287(ceil(A181118(2*n+1)/7)+n)%2`
-/

namespace A102354.P15289744000745043403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243287 (⌈(A181118 (2 * n + 1) : ℚ) / 7⌉ + (n : ℤ)).toNat) 2

end

end A102354.P15289744000745043403

/-!
# A102355: Any digit "d" (except the first two) is the absolute difference between x and y -> x=sum of the 2 digits standing immediately to the left of "d", y=sum of the 2 digits standing immediately to the right of "d".

The programs for A102355, there is no canonical definition to state claims against.
-/

/-! ## A102355.P16433007517030047881

`eq[A018252(A076984(n+1)), A045503(n)]`
-/

namespace A102355.P16433007517030047881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A076984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102355.P16433007517030047881

/-! ## A102355.P16468719201201005169

`A007089(eq[A014682(n), A277383(n+1)])`
-/

namespace A102355.P16468719201201005169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A102355.P16468719201201005169

/-!
# A102356: Problem 66 in Knuth's Art of Computer Programming, vol. 4, section 7.2.1.5 asks which integer partition of n produces the most set partitions. The n-th term of this sequence is the number of set partitions produced by that integer partition.

The programs for A102356, there is no canonical definition to state claims against.
-/

/-! ## A102356.P2471857637182765286

`n!/A102456(n)`
-/

namespace A102356.P2471857637182765286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A102456 n : ℚ)

end

end A102356.P2471857637182765286

/-! ## A102356.P552274877750272206

`A000142(n)/A102456(n)`
-/

namespace A102356.P552274877750272206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A102456 n : ℚ)

end

end A102356.P552274877750272206

/-! ## A102356.P6105660254415656056

`A098361(∑[n])/A102456(n)`
-/

namespace A102356.P6105660254415656056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A102456 n : ℚ)

end

end A102356.P6105660254415656056

/-! ## A102356.P13114679356635891159

`∏[A028310(n)]/A102456(n)`
-/

namespace A102356.P13114679356635891159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A102456 n : ℚ)

end

end A102356.P13114679356635891159

/-!
# A102358: Finite sequence of iterations at which Langton's Ant passes through the origin.

The programs for A102358, there is no canonical definition to state claims against.
-/

/-! ## A102358.P6764085392156326200

`eq[tan(A274369(n)), A274370(n)]`
-/

namespace A102358.P6764085392156326200
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A274369 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A102358.P6764085392156326200

/-! ## A102358.P16001291791531309190

`eq[A126978(n)*A274369(n), A274370(n)]`
-/

namespace A102358.P16001291791531309190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126978 n * A274369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102358.P16001291791531309190

/-! ## A102358.P1335716869967955480

`eq[A255938(n)*A274369(n), A274370(n)]`
-/

namespace A102358.P1335716869967955480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n * A274369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102358.P1335716869967955480

/-! ## A102358.P4807896756148431505

`eq[A269757(n)*A274369(n), A274370(n)]`
-/

namespace A102358.P4807896756148431505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 n * A274369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102358.P4807896756148431505

/-! ## A102358.P17122733581028560185

`eq[A274369(n)*A275302(n+1), A274370(n)]`
-/

namespace A102358.P17122733581028560185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274369 n * A275302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102358.P17122733581028560185

/-!
# A102359: a(n) = sigma((4^n - 1)/3), where sigma(n) is the sum of positive divisors of n.

The programs for A102359, there is no canonical definition to state claims against.
-/

/-! ## A102359.P1437226140575952710

`A366772(2*(n+1))`
-/

namespace A102359.P1437226140575952710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366772 (2 * (n + 1))

end

end A102359.P1437226140575952710

/-! ## A102359.P5477078179005616103

`∑{d}[∑[4^n], #]`
-/

namespace A102359.P5477078179005616103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A102359.P5477078179005616103

/-! ## A102359.P11637946096933122862

`record[∑{d}[4*a(n-1)+1, #]]` with `a(0)=1, a(1)=0`
-/

namespace A102359.P11637946096933122862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  4 * f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102359.P11637946096933122862

/-! ## A102359.P4728852987004525416

`record[∑{d}[or(1, 4*a(n-1)), #]]` with `a(0)=1, a(1)=0`
-/

namespace A102359.P4728852987004525416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  Nat.lor 1 (4 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102359.P4728852987004525416

/-! ## A102359.P1317039278234089626

`record[∑{d}[floor(gcd(2, n)^(n+2)/3), #]]`
-/

namespace A102359.P1317039278234089626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n ^ (n + 2) : ℚ) / 3⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102359.P1317039278234089626

/-!
# A102360: a(n) = sigma((7^n - 1)/6), where sigma(n) is the sum of positive divisors of n.

The programs for A102360, there is no canonical definition to state claims against.
-/

/-! ## A102360.P14724726508725080880

`∑{d}[∑[7^n], #]`
-/

namespace A102360.P14724726508725080880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A102360.P14724726508725080880

/-! ## A102360.P7468453427004415172

`round(sqrt(∑{d}[∑{d}[7^n, #], #]²+1))`
-/

namespace A102360.P7468453427004415172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ d ∈ Nat.divisors (f1 n), d) ^ 2 + 1 : ℕ) : ℝ))

end

end A102360.P7468453427004415172

/-! ## A102360.P7818191399688041495

`record[∑{d}[7*a(n-2)+1, #]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A102360.P7818191399688041495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  7 * f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102360.P7818191399688041495

/-! ## A102360.P15074299701450093283

`∑{d}[7*a(n-1)+1, #]-A308975(n)-A308977(n)` with `a(0)=1`
-/

namespace A102360.P15074299701450093283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A308975 n - A308977 n

end

end A102360.P15074299701450093283

/-!
# A102361: This finite sequence describes itself completely: there is 1 "0" in it, 1 "4", 1 "5", ..., 3 "2" and 7 "1".

The programs for A102361, there is no canonical definition to state claims against.
-/

/-! ## A102361.P11338105719220869987

`lt[A016825(n), A007954(A336496(n+1))]`
-/

namespace A102361.P11338105719220869987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A336496 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102361.P11338105719220869987

/-!
# A102363: Triangle read by rows, constructed by a Pascal-like rule with left edge = 2^k, right edge = 2^(k+1)-1 (k >= 0).

The programs for A102363, the canonical program `A102363.P15098294147514921799` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102363 has offset 0).

The definition of A102363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102363.P15098294147514921799

`A007318(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A102363

/-- `A007318(n-1)+a(n-1)` -/
def P15098294147514921799.Spec : Prop :=
  ∀ n, P15098294147514921799.a n = A102363 n

theorem P15098294147514921799.correct : P15098294147514921799.Spec := by
  intro n
  simp only [A102363]

end A102363

/-! ## A102363.P1147254253008183660

`∑[A007318(abs(1-n))]`
-/

namespace A102363.P1147254253008183660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102363.P1147254253008183660

namespace A102363

/-- `∑[A007318(abs(1-n))]` -/
def P1147254253008183660.Spec : Prop :=
  ∀ n, P1147254253008183660.a n = A102363 n

end A102363

/-! ## A102363.P9623017034899629511

`A204206(n)-a(n-1)` with `a(0)=1`
-/

namespace A102363.P9623017034899629511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204206 n - a (n - 1)

end

end A102363.P9623017034899629511

namespace A102363

/-- `A204206(n)-a(n-1)` -/
def P9623017034899629511.Spec : Prop :=
  ∀ n, P9623017034899629511.a n = A102363 n

end A102363

/-! ## A102363.P2596751117102753836

`∑[ceil(A134059(abs(1-n))/3)]`
-/

namespace A102363.P2596751117102753836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 |1 - (n : ℤ)|.toNat : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102363.P2596751117102753836

namespace A102363

/-- `∑[ceil(A134059(abs(1-n))/3)]` -/
def P2596751117102753836.Spec : Prop :=
  ∀ n, P2596751117102753836.a n = A102363 n

end A102363

/-! ## A102363.P16321153178001736453

`A140513(n)-A055248(n)`
-/

namespace A102363.P16321153178001736453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A055248 n

end

end A102363.P16321153178001736453

namespace A102363

/-- `A140513(n)-A055248(n)` -/
def P16321153178001736453.Spec : Prop :=
  ∀ n, P16321153178001736453.a n = A102363 n

end A102363

/-! ## A102363.P6926974688998736669

`∑[A007318(n)]-A014473(n)`
-/

namespace A102363.P6926974688998736669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014473 n

end

end A102363.P6926974688998736669

namespace A102363

/-- `∑[A007318(n)]-A014473(n)` -/
def P6926974688998736669.Spec : Prop :=
  ∀ n, P6926974688998736669.a n = A102363 n

end A102363

/-! ## A102363.P6973759307472838863

`A163866(n+1)-A014473(n)`
-/

namespace A102363.P6973759307472838863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (n + 1) - A014473 n

end

end A102363.P6973759307472838863

namespace A102363

/-- `A163866(n+1)-A014473(n)` -/
def P6973759307472838863.Spec : Prop :=
  ∀ n, P6973759307472838863.a n = A102363 n

end A102363

/-! ## A102363.P3248211123545278470

`2*A308663(n)-A097805(n)`
-/

namespace A102363.P3248211123545278470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308663 n - A097805 n

end

end A102363.P3248211123545278470

namespace A102363

/-- `2*A308663(n)-A097805(n)` -/
def P3248211123545278470.Spec : Prop :=
  ∀ n, P3248211123545278470.a n = A102363 n

end A102363

/-! ## A102363.P9086623219086041367

`A054143(n)+A055248(n)-A007318(n)`
-/

namespace A102363.P9086623219086041367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + (A055248 n - A007318 n)

end

end A102363.P9086623219086041367

namespace A102363

/-- `A054143(n)+A055248(n)-A007318(n)` -/
def P9086623219086041367.Spec : Prop :=
  ∀ n, P9086623219086041367.a n = A102363 n

end A102363

/-! ## A102363.P7447039156783007367

`A054143(n)+A104709(n)-A055248(n)`
-/

namespace A102363.P7447039156783007367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + (A104709 n - A055248 n)

end

end A102363.P7447039156783007367

namespace A102363

/-- `A054143(n)+A104709(n)-A055248(n)` -/
def P7447039156783007367.Spec : Prop :=
  ∀ n, P7447039156783007367.a n = A102363 n

end A102363

/-! ## A102363.P9727206473271183894

`A204206(n+1)-(A308663(n+1)+A308663(n))`
-/

namespace A102363.P9727206473271183894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204206 (n + 1) - (A308663 (n + 1) + A308663 n)

end

end A102363.P9727206473271183894

namespace A102363

/-- `A204206(n+1)-(A308663(n+1)+A308663(n))` -/
def P9727206473271183894.Spec : Prop :=
  ∀ n, P9727206473271183894.a n = A102363 n

end A102363

/-! ## A102363.P15729731305619942079

`A308663(comp[∑[n+1]])`
-/

namespace A102363.P15729731305619942079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102363.P15729731305619942079

namespace A102363

/-- `A308663(comp[∑[n+1]])` -/
def P15729731305619942079.Spec : Prop :=
  ∀ n, P15729731305619942079.a n = A102363 n

end A102363

/-! ## A102363.P15859941168987182001

`∑[A135225(∑[A035214(n)]-1)]`
-/

namespace A102363.P15859941168987182001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102363.P15859941168987182001

namespace A102363

/-- `∑[A135225(∑[A035214(n)]-1)]` -/
def P15859941168987182001.Spec : Prop :=
  ∀ n, P15859941168987182001.a n = A102363 n

end A102363

/-! ## A102363.P4104617046352044878

`record[∑[A159854(n)]]`
-/

namespace A102363.P4104617046352044878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102363.P4104617046352044878

namespace A102363

/-- `record[∑[A159854(n)]]` -/
def P4104617046352044878.Spec : Prop :=
  ∀ n, P4104617046352044878.a n = A102363 n

end A102363

/-! ## A102363.P18327068897854928242

`∑[ceil(A134060(n)/3)]-A014473(n)`
-/

namespace A102363.P18327068897854928242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014473 n

end

end A102363.P18327068897854928242

namespace A102363

/-- `∑[ceil(A134060(n)/3)]-A014473(n)` -/
def P18327068897854928242.Spec : Prop :=
  ∀ n, P18327068897854928242.a n = A102363 n

end A102363

/-! ## A102363.P16746032534661357303

`eq[1, A152884(n)]+1`
-/

namespace A102363.P16746032534661357303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102363.P16746032534661357303

namespace A102363

/-- `eq[1, A152884(n)]+1` -/
def P16746032534661357303.Spec : Prop :=
  ∀ n, (P16746032534661357303.a n : ℤ) = A102363 n

end A102363

/-! ## A102363.P10720167758418430569

`A209861(A023758(n+1))+1`
-/

namespace A102363.P10720167758418430569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (A023758 (n + 1)).toNat + 1

end

end A102363.P10720167758418430569

namespace A102363

/-- `A209861(A023758(n+1))+1` -/
def P10720167758418430569.Spec : Prop :=
  ∀ n, P10720167758418430569.a n = A102363 n

end A102363

/-! ## A102363.P14116067771524318075

`A209861(A099627(n))`
-/

namespace A102363.P14116067771524318075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (A099627 n).toNat

end

end A102363.P14116067771524318075

namespace A102363

/-- `A209861(A099627(n))` -/
def P14116067771524318075.Spec : Prop :=
  ∀ n, P14116067771524318075.a n = A102363 n

end A102363

/-! ## A102363.P10480498917540602583

`A209861(A048645(n+2)-1)`
-/

namespace A102363.P10480498917540602583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (A048645 (n + 2) - 1).toNat

end

end A102363.P10480498917540602583

namespace A102363

/-- `A209861(A048645(n+2)-1)` -/
def P10480498917540602583.Spec : Prop :=
  ∀ n, P10480498917540602583.a n = A102363 n

end A102363

/-!
# A102364: Number of terms in Fibonacci sequence less than n not used in Zeckendorf representation of n (the Zeckendorf representation of n is a sum of non-consecutive distinct Fibonacci numbers).

The programs for A102364, the canonical program `A102364.P14950148720451937594` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102364 has offset 0).

The definition of A102364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102364.P2958323498722546871

`A135817(n+1)-1`
-/

namespace A102364.P2958323498722546871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135817 (n + 1) - 1

end

end A102364.P2958323498722546871

namespace A102364

/-- `A135817(n+1)-1` -/
def P2958323498722546871.Spec : Prop :=
  ∀ n, P2958323498722546871.a n = A102364 n

end A102364

/-! ## A102364.P3383222375282262270

`A213911(n)+A212278(n)`
-/

namespace A102364.P3383222375282262270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + A212278 n

end

end A102364.P3383222375282262270

namespace A102364

/-- `A213911(n)+A212278(n)` -/
def P3383222375282262270.Spec : Prop :=
  ∀ n, P3383222375282262270.a n = A102364 n

end A102364

/-! ## A102364.P4010701184375929005

`A131234(n+1)-(A007895(n)+1)`
-/

namespace A102364.P4010701184375929005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) - (A007895 n + 1)

end

end A102364.P4010701184375929005

namespace A102364

/-- `A131234(n+1)-(A007895(n)+1)` -/
def P4010701184375929005.Spec : Prop :=
  ∀ n, P4010701184375929005.a n = A102364 n

end A102364

/-! ## A102364.P17010553800934043838

`A135818(n+1)+A007895(n)-1`
-/

namespace A102364.P17010553800934043838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135818 (n + 1) + (A007895 n - 1)

end

end A102364.P17010553800934043838

namespace A102364

/-- `A135818(n+1)+A007895(n)-1` -/
def P17010553800934043838.Spec : Prop :=
  ∀ n, P17010553800934043838.a n = A102364 n

end A102364

/-! ## A102364.P10583014847429563213

`A131234(n+1)-A143299(n+1)`
-/

namespace A102364.P10583014847429563213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) - A143299 (n + 1)

end

end A102364.P10583014847429563213

namespace A102364

/-- `A131234(n+1)-A143299(n+1)` -/
def P10583014847429563213.Spec : Prop :=
  ∀ n, P10583014847429563213.a n = A102364 n

end A102364

/-! ## A102364.P7099404869847788707

`∑[char[A000045(n+1)]]-A007895(n)`
-/

namespace A102364.P7099404869847788707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A007895 n

end

end A102364.P7099404869847788707

namespace A102364

/-- `∑[char[A000045(n+1)]]-A007895(n)` -/
def P7099404869847788707.Spec : Prop :=
  ∀ n, P7099404869847788707.a n = A102364 n

end A102364

/-! ## A102364.P15637550078648532063

`A261101(A219642(n))-A007895(n)`
-/

namespace A102364.P15637550078648532063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261101 (A219642 n).toNat - A007895 n

end

end A102364.P15637550078648532063

namespace A102364

/-- `A261101(A219642(n))-A007895(n)` -/
def P15637550078648532063.Spec : Prop :=
  ∀ n, P15637550078648532063.a n = A102364 n

end A102364

/-! ## A102364.P14950148720451937594

`A072649(n+1)-(A010056(n+1)+A007895(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A102364

/-- `A072649(n+1)-(A010056(n+1)+A007895(n))` -/
def P14950148720451937594.Spec : Prop :=
  ∀ n, P14950148720451937594.a n = A102364 n

theorem P14950148720451937594.correct : P14950148720451937594.Spec := by
  intro n
  simp only [A102364]

end A102364

/-! ## A102364.P1139211436543701468

`A290251(A118113(n))-1`
-/

namespace A102364.P1139211436543701468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A118113 n).toNat - 1

end

end A102364.P1139211436543701468

namespace A102364

/-- `A290251(A118113(n))-1` -/
def P1139211436543701468.Spec : Prop :=
  ∀ n, P1139211436543701468.a n = A102364 n

end A102364

/-! ## A102364.P13254452717622677033

`A070939(A048679(n))-1`
-/

namespace A102364.P13254452717622677033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A048679 n).toNat - 1

end

end A102364.P13254452717622677033

namespace A102364

/-- `A070939(A048679(n))-1` -/
def P13254452717622677033.Spec : Prop :=
  ∀ n, P13254452717622677033.a n = A102364 n

end A102364

/-! ## A102364.P11277235751596181735

`A080791(eq[n, and(n, 3*n)])`
-/

namespace A102364.P11277235751596181735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A102364.P11277235751596181735

namespace A102364

/-- `A080791(eq[n, and(n, 3*n)])` -/
def P11277235751596181735.Spec : Prop :=
  ∀ n, P11277235751596181735.a n = A102364 n

end A102364

/-! ## A102364.P17632699429858433860

`A080791(A003714(n))`
-/

namespace A102364.P17632699429858433860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A003714 n).toNat

end

end A102364.P17632699429858433860

namespace A102364

/-- `A080791(A003714(n))` -/
def P17632699429858433860.Spec : Prop :=
  ∀ n, P17632699429858433860.a n = A102364 n

end A102364

/-! ## A102364.P14213859637842885350

`A080791(record[A003188(n)-n])`
-/

namespace A102364.P14213859637842885350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102364.P14213859637842885350

namespace A102364

/-- `A080791(record[A003188(n)-n])` -/
def P14213859637842885350.Spec : Prop :=
  ∀ n, P14213859637842885350.a n = A102364 n

end A102364

/-! ## A102364.P15107696089759777076

`A008687(A003714(n)+1)-1`
-/

namespace A102364.P15107696089759777076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A003714 n + 1).toNat - 1

end

end A102364.P15107696089759777076

namespace A102364

/-- `A008687(A003714(n)+1)-1` -/
def P15107696089759777076.Spec : Prop :=
  ∀ n, P15107696089759777076.a n = A102364 n

end A102364

/-! ## A102364.P4562328211489154405

`A023416(A003714(n))%A294477(n)`
-/

namespace A102364.P4562328211489154405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (A003714 n).toNat) (A294477 n)

end

end A102364.P4562328211489154405

namespace A102364

/-- `A023416(A003714(n))%A294477(n)` -/
def P4562328211489154405.Spec : Prop :=
  ∀ n, P4562328211489154405.a n = A102364 n

end A102364

/-! ## A102364.P10820013337881709906

`A080791(lt[A000120(n), A089080(n+1)])`
-/

namespace A102364.P10820013337881709906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102364.P10820013337881709906

namespace A102364

/-- `A080791(lt[A000120(n), A089080(n+1)])` -/
def P10820013337881709906.Spec : Prop :=
  ∀ n, P10820013337881709906.a n = A102364 n

end A102364

/-! ## A102364.P13587416016217606417

`A080791(lt[n, A089080(n+1)+A011371(n)])`
-/

namespace A102364.P13587416016217606417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1) + A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102364.P13587416016217606417

namespace A102364

/-- `A080791(lt[n, A089080(n+1)+A011371(n)])` -/
def P13587416016217606417.Spec : Prop :=
  ∀ n, P13587416016217606417.a n = A102364 n

end A102364

/-! ## A102364.P17083783637790066158

`A346633(A295897(n+1))`
-/

namespace A102364.P17083783637790066158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (A295897 (n + 1)).toNat

end

end A102364.P17083783637790066158

namespace A102364

/-- `A346633(A295897(n+1))` -/
def P17083783637790066158.Spec : Prop :=
  ∀ n, P17083783637790066158.a n = A102364 n

end A102364

/-! ## A102364.P8812180745174295393

`A070939(A227351(n))-1`
-/

namespace A102364.P8812180745174295393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A227351 n).toNat - 1

end

end A102364.P8812180745174295393

namespace A102364

/-- `A070939(A227351(n))-1` -/
def P8812180745174295393.Spec : Prop :=
  ∀ n, P8812180745174295393.a n = A102364 n

end A102364

/-! ## A102364.P8800371597875636928

`A080791(lt[A272604(n), 2])`
-/

namespace A102364.P8800371597875636928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102364.P8800371597875636928

namespace A102364

/-- `A080791(lt[A272604(n), 2])` -/
def P8800371597875636928.Spec : Prop :=
  ∀ n, P8800371597875636928.a n = A102364 n

end A102364

/-!
# A102365: Triangle T(n,k), 0 <= k <= n, read by rows: given by [ 1, 0, 3, 0, 5, 0, 7, 0, 9, 0, ...] DELTA [ 0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, ...] where DELTA is the operator defined in A084938.

The programs for A102365, there is no canonical definition to state claims against.
-/

/-! ## A102365.P16391044375955855573

`A211399(A061579(n))`
-/

namespace A102365.P16391044375955855573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 (A061579 n).toNat

end

end A102365.P16391044375955855573

/-! ## A102365.P7919553484922018736

`A185410(n)/A059268(n)`
-/

namespace A102365.P7919553484922018736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185410 n : ℚ) / (A059268 n : ℚ)

end

end A102365.P7919553484922018736

/-! ## A102365.P426531957517898826

`A185410(n)/Δ[A099627(n)]`
-/

namespace A102365.P426531957517898826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185410 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A102365.P426531957517898826

/-! ## A102365.P17082925093889063535

`A185410(n)/A000079(A002262(n))`
-/

namespace A102365.P17082925093889063535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185410 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A102365.P17082925093889063535

/-! ## A102365.P3043011311531327250

`A185410(n)/A011782(A002260(n+1))`
-/

namespace A102365.P3043011311531327250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185410 n : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A102365.P3043011311531327250

/-! ## A102365.P17308919049500395383

`A185411(A061579(n))/A059268(n)`
-/

namespace A102365.P17308919049500395383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185411 (A061579 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A102365.P17308919049500395383

/-! ## A102365.P5715052490197046148

`A185410(n)/A340082(A036561(n))`
-/

namespace A102365.P5715052490197046148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185410 n : ℚ) / (A340082 (A036561 n).toNat : ℚ)

end

end A102365.P5715052490197046148

/-!
# A102366: Number of subsets of {1,2,...,n} in which exactly half of the elements are less than or equal to sqrt(n).

The programs for A102366, the canonical program `A102366.P3291033051181767012` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102366 has offset 0).

The definition of A102366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102366.P3291033051181767012

`C(n, floor(sqrt(n)))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102366

/-- `C(n, floor(sqrt(n)))` -/
def P3291033051181767012.Spec : Prop :=
  ∀ n, (P3291033051181767012.a n : ℤ) = A102366 n

theorem P3291033051181767012.correct : P3291033051181767012.Spec := by
  intro n
  simp only [A102366]

end A102366

/-! ## A102366.P2152985186198359270

`a(n-1)+A084919(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A102366.P2152985186198359270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A084919 (n - 1)

end

end A102366.P2152985186198359270

namespace A102366

/-- `a(n-1)+A084919(n-1)` -/
def P2152985186198359270.Spec : Prop :=
  ∀ n, P2152985186198359270.a n = A102366 n

end A102366

/-! ## A102366.P310201707049142135

`A048093(C(2, n+2)+n)+1`
-/

namespace A102366.P310201707049142135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048093 (Nat.choose 2 (n + 2) + n) + 1

end

end A102366.P310201707049142135

namespace A102366

/-- `A048093(C(2, n+2)+n)+1` -/
def P310201707049142135.Spec : Prop :=
  ∀ n, P310201707049142135.a n = A102366 n

end A102366

/-! ## A102366.P18301208655502924680

`A048093(A028310(n))+1`
-/

namespace A102366.P18301208655502924680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048093 (A028310 n).toNat + 1

end

end A102366.P18301208655502924680

namespace A102366

/-- `A048093(A028310(n))+1` -/
def P18301208655502924680.Spec : Prop :=
  ∀ n, P18301208655502924680.a n = A102366 n

end A102366

/-! ## A102366.P15353111679520081971

`A048093(A000007(n)+n)+1`
-/

namespace A102366.P15353111679520081971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048093 (A000007 n + (n : ℤ)).toNat + 1

end

end A102366.P15353111679520081971

namespace A102366

/-- `A048093(A000007(n)+n)+1` -/
def P15353111679520081971.Spec : Prop :=
  ∀ n, P15353111679520081971.a n = A102366 n

end A102366

/-! ## A102366.P6166258267881498194

`A074909(∑[n]-floor(sqrt(n)))`
-/

namespace A102366.P6166258267881498194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.sqrt n)

end

end A102366.P6166258267881498194

namespace A102366

/-- `A074909(∑[n]-floor(sqrt(n)))` -/
def P6166258267881498194.Spec : Prop :=
  ∀ n, P6166258267881498194.a n = A102366 n

end A102366

/-! ## A102366.P12967375961449693474

`A007318(floor(∑[n]+sqrt(n)))`
-/

namespace A102366.P12967375961449693474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (n : ℝ)⌋.toNat

end

end A102366.P12967375961449693474

namespace A102366

/-- `A007318(floor(∑[n]+sqrt(n)))` -/
def P12967375961449693474.Spec : Prop :=
  ∀ n, P12967375961449693474.a n = A102366 n

end A102366

/-! ## A102366.P17515695068751714331

`A206735(floor(∑[n]+sqrt(n)))`
-/

namespace A102366.P17515695068751714331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (n : ℝ)⌋.toNat

end

end A102366.P17515695068751714331

namespace A102366

/-- `A206735(floor(∑[n]+sqrt(n)))` -/
def P17515695068751714331.Spec : Prop :=
  ∀ n, P17515695068751714331.a n = A102366 n

end A102366

/-!
# A102368: Smallest k>0 such that n^k + 1 is not prime.

The programs for A102368, there is no canonical definition to state claims against.
-/

/-! ## A102368.P12944657929493812254

`A245509(n+2)^((n+1)%2)`
-/

namespace A102368.P12944657929493812254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245509 (n + 2) ^ ((n + 1) % 2)

end

end A102368.P12944657929493812254

/-! ## A102368.P16338780170472066336

`gcd(A010170(n), A245509(n+2))`
-/

namespace A102368.P16338780170472066336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010170 n) (A245509 (n + 2))

end

end A102368.P16338780170472066336

/-! ## A102368.P5446786606062507843

`A245509(n+2)^Δ[A110654(n)]`
-/

namespace A102368.P5446786606062507843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245509 (n + 2) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A102368.P5446786606062507843

/-! ## A102368.P7387443638909929495

`A245509(n+2)^(1-A000035(n))`
-/

namespace A102368.P7387443638909929495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245509 (n + 2) : ℚ) ^ (1 - A000035 n : ℤ)

end

end A102368.P7387443638909929495

/-! ## A102368.P15799799442118495313

`A274459(A245509(n+2)^A001511(n+1))`
-/

namespace A102368.P15799799442118495313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (SequenceMachineLib.roundAway ((A245509 (n + 2) : ℚ) ^ (A001511 (n + 1) : ℤ))).toNat

end

end A102368.P15799799442118495313

/-!
# A102369: Intervals between successive arrivals of Langton's Ant at the origin.

The programs for A102369, there is no canonical definition to state claims against.
-/

/-! ## A102369.P14515290873495888650

`Δ[A102358(A061497(n+1))]`
-/

namespace A102369.P14515290873495888650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102358 (A061497 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102369.P14515290873495888650

/-! ## A102369.P3679384763071947494

`Δ[A102358(A285769(n+1))]`
-/

namespace A102369.P3679384763071947494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102358 (A285769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102369.P3679384763071947494

/-! ## A102369.P3579048513494702195

`Δ[A102358(A000005(3^n))]`
-/

namespace A102369.P3579048513494702195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102358 (A000005 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102369.P3579048513494702195

/-! ## A102369.P2888860786186453421

`Δ[A102358(n+1)]%A095643(n)`
-/

namespace A102369.P2888860786186453421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A095643 n)

end

end A102369.P2888860786186453421

/-! ## A102369.P9353494542931914372

`Δ[A102358(n+1)%A004023(n+1)]`
-/

namespace A102369.P9353494542931914372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102358 (n + 1)) (A004023 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102369.P9353494542931914372

/-!
# A102370: "Sloping binary numbers": write numbers in binary under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A102370, there is no canonical definition to state claims against.
-/

/-! ## A102370.P14604248985249856164

`A105023(n)+n`
-/

namespace A102370.P14604248985249856164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n + (n : ℤ)

end

end A102370.P14604248985249856164

/-! ## A102370.P9812993774565309274

`A105228(n+1)-1`
-/

namespace A102370.P9812993774565309274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105228 (n + 1) - 1

end

end A102370.P9812993774565309274

/-! ## A102370.P3228528920166575369

`2*A103185(n)+n`
-/

namespace A102370.P3228528920166575369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103185 n + (n : ℤ)

end

end A102370.P3228528920166575369

/-! ## A102370.P1617877122556984739

`A005843(A103185(n))+n`
-/

namespace A102370.P1617877122556984739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A103185 n).toNat + (n : ℤ)

end

end A102370.P1617877122556984739

/-! ## A102370.P9014369587290422502

`∑[A104378(n)]-A104378(n)`
-/

namespace A102370.P9014369587290422502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104378 n

end

end A102370.P9014369587290422502

/-! ## A102370.P16129714447449341547

`A047540(A103185(n)+1)+n`
-/

namespace A102370.P16129714447449341547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (A103185 n + 1).toNat + (n : ℤ)

end

end A102370.P16129714447449341547

/-! ## A102370.P15283345433877178688

`A023443(n)+A005408(A103185(n))`
-/

namespace A102370.P15283345433877178688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A005408 (A103185 n).toNat

end

end A102370.P15283345433877178688

/-! ## A102370.P11136232020203693617

`A005408(A103185(n))-A024000(n)`
-/

namespace A102370.P11136232020203693617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A103185 n).toNat - A024000 n

end

end A102370.P11136232020203693617

/-! ## A102370.P79965773169736180

`A103205(A105023(n))-A001489(n)`
-/

namespace A102370.P79965773169736180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A105023 n).toNat - A001489 n

end

end A102370.P79965773169736180

/-! ## A102370.P9145386303622952614

`A103205(A103185(n)+A103185(n))+n`
-/

namespace A102370.P9145386303622952614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A103185 n + A103185 n).toNat + (n : ℤ)

end

end A102370.P9145386303622952614

/-! ## A102370.P2104548355464533686

`A005843(n)-(n-A005843(A103185(n)))`
-/

namespace A102370.P2104548355464533686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A005843 (A103185 n).toNat)

end

end A102370.P2104548355464533686

/-! ## A102370.P9161645922509957595

`A105027(record[(n+1)%(1-A246601(n+2))])`
-/

namespace A102370.P9161645922509957595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (1 - A246601 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102370.P9161645922509957595

/-! ## A102370.P10421074710025951730

`A023443(A105228(n+1))`
-/

namespace A102370.P10421074710025951730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105228 (n + 1)).toNat

end

end A102370.P10421074710025951730

/-! ## A102370.P5418000845794698567

`A109043(A103185(n)+n)+A103185(n)`
-/

namespace A102370.P5418000845794698567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A103185 n + (n : ℤ)).toNat + A103185 n

end

end A102370.P5418000845794698567

/-! ## A102370.P14267803621297061123

`A159966(A103185(n)+n)+A103185(n)`
-/

namespace A102370.P14267803621297061123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A103185 n + (n : ℤ)).toNat + A103185 n

end

end A102370.P14267803621297061123

/-! ## A102370.P13450968945073519277

`A103185(n)-A001489(A103185(n)+n)`
-/

namespace A102370.P13450968945073519277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n - A001489 (A103185 n + (n : ℤ)).toNat

end

end A102370.P13450968945073519277

/-!
# A102371: Numbers missing from A102370.

The programs for A102371, the canonical program `A102371.P2136896047363056187` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102371 has offset 1).

The definition of A102371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102371.P2136896047363056187

`xor(a(n-1)+1+n, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102371

/-- `xor(a(n-1)+1+n, a(n-1))` -/
def P2136896047363056187.Spec : Prop :=
  ∀ n, (P2136896047363056187.a n : ℤ) = A102371 (n + 1)

theorem P2136896047363056187.correct : P2136896047363056187.Spec := by
  intro n
  simp only [A102371, Nat.add_sub_cancel]

end A102371

/-! ## A102371.P5914256736667368102

`2*A103745(n+1)-(n+1)`
-/

namespace A102371.P5914256736667368102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103745 (n + 1) - (n + 1 : ℤ)

end

end A102371.P5914256736667368102

namespace A102371

/-- `2*A103745(n+1)-(n+1)` -/
def P5914256736667368102.Spec : Prop :=
  ∀ n, P5914256736667368102.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P509578358451274414

`2^(n+1)-A103530(n+2)`
-/

namespace A102371.P509578358451274414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A103530 (n + 2)

end

end A102371.P509578358451274414

namespace A102371

/-- `2^(n+1)-A103530(n+2)` -/
def P509578358451274414.Spec : Prop :=
  ∀ n, P509578358451274414.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P14793369809574449020

`A000051(n+1)-(A103530(n+2)+1)`
-/

namespace A102371.P14793369809574449020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A103530 (n + 2) + 1)

end

end A102371.P14793369809574449020

namespace A102371

/-- `A000051(n+1)-(A103530(n+2)+1)` -/
def P14793369809574449020.Spec : Prop :=
  ∀ n, P14793369809574449020.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P12723321488205013699

`A000225(n+1)+1-A103530(n+2)`
-/

namespace A102371.P12723321488205013699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (1 - A103530 (n + 2))

end

end A102371.P12723321488205013699

namespace A102371

/-- `A000225(n+1)+1-A103530(n+2)` -/
def P12723321488205013699.Spec : Prop :=
  ∀ n, P12723321488205013699.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P6415116443866807711

`A000051(n)+A000225(n)-A103530(n+2)`
-/

namespace A102371.P6415116443866807711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000225 n - A103530 (n + 2))

end

end A102371.P6415116443866807711

namespace A102371

/-- `A000051(n)+A000225(n)-A103530(n+2)` -/
def P6415116443866807711.Spec : Prop :=
  ∀ n, P6415116443866807711.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P954986866159027359

`A000325(n+1)+A103528(n+1)+A103528(n+1)`
-/

namespace A102371.P954986866159027359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 1) + (A103528 (n + 1) + A103528 (n + 1))

end

end A102371.P954986866159027359

namespace A102371

/-- `A000325(n+1)+A103528(n+1)+A103528(n+1)` -/
def P954986866159027359.Spec : Prop :=
  ∀ n, P954986866159027359.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P9779952659772607522

`A126646(n)-A105033(n)`
-/

namespace A102371.P9779952659772607522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A105033 n

end

end A102371.P9779952659772607522

namespace A102371

/-- `A126646(n)-A105033(n)` -/
def P9779952659772607522.Spec : Prop :=
  ∀ n, P9779952659772607522.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P832597878064805670

`∑[A000079(n)]-A105033(n)`
-/

namespace A102371.P832597878064805670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105033 n

end

end A102371.P832597878064805670

namespace A102371

/-- `∑[A000079(n)]-A105033(n)` -/
def P832597878064805670.Spec : Prop :=
  ∀ n, P832597878064805670.a n = A102371 (n + 1)

end A102371

/-! ## A102371.P17514860498752825015

`∑[A000051(n)-1]-A105033(n)`
-/

namespace A102371.P17514860498752825015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105033 n

end

end A102371.P17514860498752825015

namespace A102371

/-- `∑[A000051(n)-1]-A105033(n)` -/
def P17514860498752825015.Spec : Prop :=
  ∀ n, P17514860498752825015.a n = A102371 (n + 1)

end A102371

/-!
# A102376: a(n) = 4^A000120(n).

The programs for A102376, the canonical program `A102376.P15707539213794308439` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102376 has offset 0).

The definition of A102376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102376.P15707539213794308439

`4^A000120(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102376

/-- `4^A000120(n)` -/
def P15707539213794308439.Spec : Prop :=
  ∀ n, P15707539213794308439.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P8811615882811703507

`4*a(and(n, n-1))` with `a(0)=1`
-/

namespace A102376.P8811615882811703507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A102376.P8811615882811703507

namespace A102376

/-- `4*a(and(n, n-1))` -/
def P8811615882811703507.Spec : Prop :=
  ∀ n, (P8811615882811703507.a n : ℤ) = A102376 n

end A102376

/-! ## A102376.P3280676813094763276

`4^∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A102376.P3280676813094763276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A102376.P3280676813094763276

namespace A102376

/-- `4^∑[∑{e}[xor(n, -n), 2-#]]` -/
def P3280676813094763276.Spec : Prop :=
  ∀ n, P3280676813094763276.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P1319570442375132794

`∏[4^∑{e}[xor(n, -n), 2-#]]`
-/

namespace A102376.P1319570442375132794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102376.P1319570442375132794

namespace A102376

/-- `∏[4^∑{e}[xor(n, -n), 2-#]]` -/
def P1319570442375132794.Spec : Prop :=
  ∀ n, P1319570442375132794.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P4617999004388282056

`8/abs(2/a(and(n, n-1)))` with `a(0)=1`
-/

namespace A102376.P4617999004388282056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 / |2 / a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

end

end A102376.P4617999004388282056

namespace A102376

/-- `8/abs(2/a(and(n, n-1)))` -/
def P4617999004388282056.Spec : Prop :=
  ∀ n, P4617999004388282056.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P15293544170464298760

`a(floor(n/2))*a(n%2)` with `a(0)=1, a(1)=4`
-/

namespace A102376.P15293544170464298760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A102376.P15293544170464298760

namespace A102376

/-- `a(floor(n/2))*a(n%2)` -/
def P15293544170464298760.Spec : Prop :=
  ∀ n, (P15293544170464298760.a n : ℤ) = A102376 n

end A102376

/-! ## A102376.P6567310113577746183

`4*a(n-gcd(n, a(n-1)))` with `a(0)=1`
-/

namespace A102376.P6567310113577746183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - Nat.gcd n (a (n - 1)))

end

end A102376.P6567310113577746183

namespace A102376

/-- `4*a(n-gcd(n, a(n-1)))` -/
def P6567310113577746183.Spec : Prop :=
  ∀ n, (P6567310113577746183.a n : ℤ) = A102376 n

end A102376

/-! ## A102376.P1555180263451178185

`(2/n*lcm(n, a(n-1)))²/a(n-1)` with `a(0)=1`
-/

namespace A102376.P1555180263451178185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 / (n : ℚ) * (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) ^ 2 / a (n - 1)

end

end A102376.P1555180263451178185

namespace A102376

/-- `(2/n*lcm(n, a(n-1)))²/a(n-1)` -/
def P1555180263451178185.Spec : Prop :=
  ∀ n, P1555180263451178185.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P17175869222147824853

`A001316(n)²`
-/

namespace A102376.P17175869222147824853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

end

end A102376.P17175869222147824853

namespace A102376

/-- `A001316(n)²` -/
def P17175869222147824853.Spec : Prop :=
  ∀ n, P17175869222147824853.a n = A102376 n

end A102376

/-! ## A102376.P13847288967927663268

`Δ[A116520(n)]`
-/

namespace A102376.P13847288967927663268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102376.P13847288967927663268

namespace A102376

/-- `Δ[A116520(n)]` -/
def P13847288967927663268.Spec : Prop :=
  ∀ n, P13847288967927663268.a n = A102376 n

end A102376

/-! ## A102376.P16247728389019292324

`Δ[A006046(n)]²`
-/

namespace A102376.P16247728389019292324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A102376.P16247728389019292324

namespace A102376

/-- `Δ[A006046(n)]²` -/
def P16247728389019292324.Spec : Prop :=
  ∀ n, P16247728389019292324.a n = A102376 n

end A102376

/-! ## A102376.P10962571980098261895

`(A038573(n)+1)²`
-/

namespace A102376.P10962571980098261895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) ^ 2

end

end A102376.P10962571980098261895

namespace A102376

/-- `(A038573(n)+1)²` -/
def P10962571980098261895.Spec : Prop :=
  ∀ n, P10962571980098261895.a n = A102376 n

end A102376

/-! ## A102376.P7970267809937611447

`A060632(2*n)²`
-/

namespace A102376.P7970267809937611447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) ^ 2

end

end A102376.P7970267809937611447

namespace A102376

/-- `A060632(2*n)²` -/
def P7970267809937611447.Spec : Prop :=
  ∀ n, P7970267809937611447.a n = A102376 n

end A102376

/-! ## A102376.P11786629542677587123

`(A117973(n)/2)²`
-/

namespace A102376.P11786629542677587123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A117973 n : ℚ) / 2) ^ 2

end

end A102376.P11786629542677587123

namespace A102376

/-- `(A117973(n)/2)²` -/
def P11786629542677587123.Spec : Prop :=
  ∀ n, P11786629542677587123.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P13352912272025897743

`(A160713(n)/3)²`
-/

namespace A102376.P13352912272025897743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160713 n : ℚ) / 3) ^ 2

end

end A102376.P13352912272025897743

namespace A102376

/-- `(A160713(n)/3)²` -/
def P13352912272025897743.Spec : Prop :=
  ∀ n, P13352912272025897743.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P16771089812141549064

`(A256257(n)/6)²`
-/

namespace A102376.P16771089812141549064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A256257 n : ℚ) / 6) ^ 2

end

end A102376.P16771089812141549064

namespace A102376

/-- `(A256257(n)/6)²` -/
def P16771089812141549064.Spec : Prop :=
  ∀ n, P16771089812141549064.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P14432668946357581646

`4^∑[A088705(n)]`
-/

namespace A102376.P14432668946357581646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A102376.P14432668946357581646

namespace A102376

/-- `4^∑[A088705(n)]` -/
def P14432668946357581646.Spec : Prop :=
  ∀ n, P14432668946357581646.a n = (A102376 n : ℚ)

end A102376

/-! ## A102376.P18050596151311995529

`round(A071051(n)/2)²`
-/

namespace A102376.P18050596151311995529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071051 n : ℚ) / 2) ^ 2

end

end A102376.P18050596151311995529

namespace A102376

/-- `round(A071051(n)/2)²` -/
def P18050596151311995529.Spec : Prop :=
  ∀ n, P18050596151311995529.a n = A102376 n

end A102376

/-! ## A102376.P17513003146185204095

`round(A167275(n)/2)²`
-/

namespace A102376.P17513003146185204095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A167275 n : ℚ) / 2) ^ 2

end

end A102376.P17513003146185204095

namespace A102376

/-- `round(A167275(n)/2)²` -/
def P17513003146185204095.Spec : Prop :=
  ∀ n, P17513003146185204095.a n = A102376 n

end A102376

/-! ## A102376.P13964348253426808140

`Δ[A080978(n)/2]²`
-/

namespace A102376.P13964348253426808140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080978 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A102376.P13964348253426808140

namespace A102376

/-- `Δ[A080978(n)/2]²` -/
def P13964348253426808140.Spec : Prop :=
  ∀ n, P13964348253426808140.a n = (A102376 n : ℚ)

end A102376

/-!
# A102377: Gould's sequence A001316 in binary.

The programs for A102377, the canonical program `A102377.P13436876123217032879` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102377 has offset 0).

The definition of A102377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102377.P13436876123217032879

`10^A000120(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102377

/-- `10^A000120(n)` -/
def P13436876123217032879.Spec : Prop :=
  ∀ n, P13436876123217032879.a n = (A102377 n : ℚ)

end A102377

/-! ## A102377.P16655062964674845585

`10*a(and(n, n-1))` with `a(0)=1`
-/

namespace A102377.P16655062964674845585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A102377.P16655062964674845585

namespace A102377

/-- `10*a(and(n, n-1))` -/
def P16655062964674845585.Spec : Prop :=
  ∀ n, (P16655062964674845585.a n : ℤ) = A102377 n

end A102377

/-! ## A102377.P8983947832010704695

`10^(n-∑[∑{e}[and(n, -n), #]])`
-/

namespace A102377.P8983947832010704695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A102377.P8983947832010704695

namespace A102377

/-- `10^(n-∑[∑{e}[and(n, -n), #]])` -/
def P8983947832010704695.Spec : Prop :=
  ∀ n, P8983947832010704695.a n = (A102377 n : ℚ)

end A102377

/-! ## A102377.P3849873476447991807

`10^and(1, n)*a(floor(n/2))` with `a(0)=1`
-/

namespace A102377.P3849873476447991807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 ^ Nat.land 1 n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A102377.P3849873476447991807

namespace A102377

/-- `10^and(1, n)*a(floor(n/2))` -/
def P3849873476447991807.Spec : Prop :=
  ∀ n, (P3849873476447991807.a n : ℤ) = A102377 n

end A102377

/-! ## A102377.P10497849714914548865

`a(floor(n/2))*a(n%2)` with `a(0)=1, a(1)=10`
-/

namespace A102377.P10497849714914548865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A102377.P10497849714914548865

namespace A102377

/-- `a(floor(n/2))*a(n%2)` -/
def P10497849714914548865.Spec : Prop :=
  ∀ n, (P10497849714914548865.a n : ℤ) = A102377 n

end A102377

/-! ## A102377.P15274139110822471611

`10^∑[1-val(abs(1-n)+1, 2)]`
-/

namespace A102377.P15274139110822471611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A102377.P15274139110822471611

namespace A102377

/-- `10^∑[1-val(abs(1-n)+1, 2)]` -/
def P15274139110822471611.Spec : Prop :=
  ∀ n, P15274139110822471611.a n = (A102377 n : ℚ)

end A102377

/-! ## A102377.P8521912285518499932

`10^(val(n+1, 2)+n-∑[val(n+1, 2)])`
-/

namespace A102377.P8521912285518499932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℤ)

end

end A102377.P8521912285518499932

namespace A102377

/-- `10^(val(n+1, 2)+n-∑[val(n+1, 2)])` -/
def P8521912285518499932.Spec : Prop :=
  ∀ n, P8521912285518499932.a n = (A102377 n : ℚ)

end A102377

/-! ## A102377.P3615765714336183769

`Δ[A116525(n)]`
-/

namespace A102377.P3615765714336183769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102377.P3615765714336183769

namespace A102377

/-- `Δ[A116525(n)]` -/
def P3615765714336183769.Spec : Prop :=
  ∀ n, P3615765714336183769.a n = A102377 n

end A102377

/-! ## A102377.P11297492152662372485

`10^log2(A001316(n))`
-/

namespace A102377.P11297492152662372485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ (Real.logb 2 (A001316 n : ℝ))

end

end A102377.P11297492152662372485

namespace A102377

/-- `10^log2(A001316(n))` -/
def P11297492152662372485.Spec : Prop :=
  ∀ n, P11297492152662372485.a n = (A102377 n : ℝ)

end A102377

/-! ## A102377.P14018491905463075840

`A001739(A001316(n))`
-/

namespace A102377.P14018491905463075840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001739 (A001316 n).toNat

end

end A102377.P14018491905463075840

namespace A102377

/-- `A001739(A001316(n))` -/
def P14018491905463075840.Spec : Prop :=
  ∀ n, P14018491905463075840.a n = A102377 n

end A102377

/-! ## A102377.P15353175496348676519

`A011557(A000120(n))`
-/

namespace A102377.P15353175496348676519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A000120 n).toNat

end

end A102377.P15353175496348676519

namespace A102377

/-- `A011557(A000120(n))` -/
def P15353175496348676519.Spec : Prop :=
  ∀ n, P15353175496348676519.a n = A102377 n

end A102377

/-! ## A102377.P5642268767407123301

`A007924(A057334(n))`
-/

namespace A102377.P5642268767407123301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007924 (A057334 n).toNat

end

end A102377.P5642268767407123301

namespace A102377

/-- `A007924(A057334(n))` -/
def P5642268767407123301.Spec : Prop :=
  ∀ n, P5642268767407123301.a n = A102377 n

end A102377

/-! ## A102377.P2744205881581071356

`A165831(A268444(n))`
-/

namespace A102377.P2744205881581071356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A268444 n).toNat

end

end A102377.P2744205881581071356

namespace A102377

/-- `A165831(A268444(n))` -/
def P2744205881581071356.Spec : Prop :=
  ∀ n, P2744205881581071356.a n = A102377 n

end A102377

/-! ## A102377.P17582120661406342803

`A007088(A038573(n)+1)`
-/

namespace A102377.P17582120661406342803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A038573 n + 1).toNat

end

end A102377.P17582120661406342803

namespace A102377

/-- `A007088(A038573(n)+1)` -/
def P17582120661406342803.Spec : Prop :=
  ∀ n, P17582120661406342803.a n = A102377 n

end A102377

/-! ## A102377.P11412768526527930637

`A178501(A000120(n)+1)`
-/

namespace A102377.P11412768526527930637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (A000120 n + 1).toNat

end

end A102377.P11412768526527930637

namespace A102377

/-- `A178501(A000120(n)+1)` -/
def P11412768526527930637.Spec : Prop :=
  ∀ n, P11412768526527930637.a n = A102377 n

end A102377

/-! ## A102377.P10015182090727440398

`A221714(A038573(n)+1)`
-/

namespace A102377.P10015182090727440398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221714 (A038573 n + 1).toNat

end

end A102377.P10015182090727440398

namespace A102377

/-- `A221714(A038573(n)+1)` -/
def P10015182090727440398.Spec : Prop :=
  ∀ n, P10015182090727440398.a n = A102377 n

end A102377

/-! ## A102377.P785302226809262556

`A004643(2*A000120(n))`
-/

namespace A102377.P785302226809262556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (2 * A000120 n).toNat

end

end A102377.P785302226809262556

namespace A102377

/-- `A004643(2*A000120(n))` -/
def P785302226809262556.Spec : Prop :=
  ∀ n, P785302226809262556.a n = A102377 n

end A102377

/-! ## A102377.P4144976830045361982

`A167334(A001316(2*n))`
-/

namespace A102377.P4144976830045361982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167334 (A001316 (2 * n)).toNat

end

end A102377.P4144976830045361982

namespace A102377

/-- `A167334(A001316(2*n))` -/
def P4144976830045361982.Spec : Prop :=
  ∀ n, P4144976830045361982.a n = A102377 n

end A102377

/-! ## A102377.P3346279635180801435

`A011557(n-A011371(n))`
-/

namespace A102377.P3346279635180801435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 ((n : ℤ) - A011371 n).toNat

end

end A102377.P3346279635180801435

namespace A102377

/-- `A011557(n-A011371(n))` -/
def P3346279635180801435.Spec : Prop :=
  ∀ n, P3346279635180801435.a n = A102377 n

end A102377

/-! ## A102377.P5508453342013205049

`A001316(n)*A256135(n)`
-/

namespace A102377.P5508453342013205049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A256135 n

end

end A102377.P5508453342013205049

namespace A102377

/-- `A001316(n)*A256135(n)` -/
def P5508453342013205049.Spec : Prop :=
  ∀ n, P5508453342013205049.a n = A102377 n

end A102377

/-!
# A102378: a(n) = a(n-1) + a([n/2]) + 1, a(1) = 1.

The programs for A102378, the canonical program `A102378.P5274581237603314747` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102378 has offset 1).

The definition of A102378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102378.P5274581237603314747

`∑[floor(Δ[a(n-1)+a(floor(n/2))])]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102378

/-- `∑[floor(Δ[a(n-1)+a(floor(n/2))])]` -/
def P5274581237603314747.Spec : Prop :=
  ∀ n, P5274581237603314747.a n = A102378 (n + 1)

theorem P5274581237603314747.correct : P5274581237603314747.Spec := by
  intro n
  simp only [A102378, Nat.add_sub_cancel]

end A102378

/-! ## A102378.P18050518388421926453

`a(floor((n-1)/2))+a(n-1)+1` with `a(0)=1`
-/

namespace A102378.P18050518388421926453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (a (n - 1) + 1)

end

end A102378.P18050518388421926453

namespace A102378

/-- `a(floor((n-1)/2))+a(n-1)+1` -/
def P18050518388421926453.Spec : Prop :=
  ∀ n, (P18050518388421926453.a n : ℤ) = A102378 (n + 1)

end A102378

/-! ## A102378.P7781042169139845548

`a(ceil(n/2)-1)+a(n-1)+1` with `a(0)=1`
-/

namespace A102378.P7781042169139845548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + a (n - 1) + 1

end

end A102378.P7781042169139845548

namespace A102378

/-- `a(ceil(n/2)-1)+a(n-1)+1` -/
def P7781042169139845548.Spec : Prop :=
  ∀ n, (P7781042169139845548.a n : ℤ) = A102378 (n + 1)

end A102378

/-! ## A102378.P14766599077731053663

`or(1, a(n-1))+a(round(n/2)-1)+1` with `a(0)=1`
-/

namespace A102378.P14766599077731053663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (a (n - 1)) + (a (SequenceMachineLib.roundAway ((n : ℚ) / 2) - 1).toNat + 1)

end

end A102378.P14766599077731053663

namespace A102378

/-- `or(1, a(n-1))+a(round(n/2)-1)+1` -/
def P14766599077731053663.Spec : Prop :=
  ∀ n, (P14766599077731053663.a n : ℤ) = A102378 (n + 1)

end A102378

/-! ## A102378.P17530877188066832632

`A000123(n+1)-1`
-/

namespace A102378.P17530877188066832632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (n + 1) - 1

end

end A102378.P17530877188066832632

namespace A102378

/-- `A000123(n+1)-1` -/
def P17530877188066832632.Spec : Prop :=
  ∀ n, P17530877188066832632.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P3966985930772177949

`2*A102379(n+1)+1`
-/

namespace A102378.P3966985930772177949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102379 (n + 1) + 1

end

end A102378.P3966985930772177949

namespace A102378

/-- `2*A102379(n+1)+1` -/
def P3966985930772177949.Spec : Prop :=
  ∀ n, P3966985930772177949.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P4920996394200783173

`2*A033485(n+1)-1`
-/

namespace A102378.P4920996394200783173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033485 (n + 1) - 1

end

end A102378.P4920996394200783173

namespace A102378

/-- `2*A033485(n+1)-1` -/
def P4920996394200783173.Spec : Prop :=
  ∀ n, P4920996394200783173.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P7839277957852311909

`(A346912(n+1)-1)/2`
-/

namespace A102378.P7839277957852311909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346912 (n + 1) - 1 : ℚ) / 2

end

end A102378.P7839277957852311909

namespace A102378

/-- `(A346912(n+1)-1)/2` -/
def P7839277957852311909.Spec : Prop :=
  ∀ n, P7839277957852311909.a n = (A102378 (n + 1) : ℚ)

end A102378

/-! ## A102378.P6213694034202579863

`∑[A000123(∑[A000035(n)])]`
-/

namespace A102378.P6213694034202579863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102378.P6213694034202579863

namespace A102378

/-- `∑[A000123(∑[A000035(n)])]` -/
def P6213694034202579863.Spec : Prop :=
  ∀ n, P6213694034202579863.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P11999939885747315148

`∑[A000123(A007494(n)-n)]`
-/

namespace A102378.P11999939885747315148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A007494 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102378.P11999939885747315148

namespace A102378

/-- `∑[A000123(A007494(n)-n)]` -/
def P11999939885747315148.Spec : Prop :=
  ∀ n, P11999939885747315148.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P17357338894921785102

`A102379(n+1)+A033485(n+1)`
-/

namespace A102378.P17357338894921785102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102379 (n + 1) + A033485 (n + 1)

end

end A102378.P17357338894921785102

namespace A102378

/-- `A102379(n+1)+A033485(n+1)` -/
def P17357338894921785102.Spec : Prop :=
  ∀ n, P17357338894921785102.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P7667586846487490123

`A346912(n+1)-A033485(n+1)-A033485(n+1)`
-/

namespace A102378.P7667586846487490123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346912 (n + 1) - A033485 (n + 1) - A033485 (n + 1)

end

end A102378.P7667586846487490123

namespace A102378

/-- `A346912(n+1)-A033485(n+1)-A033485(n+1)` -/
def P7667586846487490123.Spec : Prop :=
  ∀ n, P7667586846487490123.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P7914084907065327758

`∑[A018819(n+1)]`
-/

namespace A102378.P7914084907065327758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102378.P7914084907065327758

namespace A102378

/-- `∑[A018819(n+1)]` -/
def P7914084907065327758.Spec : Prop :=
  ∀ n, P7914084907065327758.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P17196868584688541778

`Δ[∑[A000123(n)]-n]`
-/

namespace A102378.P17196868584688541778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102378.P17196868584688541778

namespace A102378

/-- `Δ[∑[A000123(n)]-n]` -/
def P17196868584688541778.Spec : Prop :=
  ∀ n, P17196868584688541778.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P4197513770425788089

`Δ[A131205(n+1)]-1`
-/

namespace A102378.P4197513770425788089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102378.P4197513770425788089

namespace A102378

/-- `Δ[A131205(n+1)]-1` -/
def P4197513770425788089.Spec : Prop :=
  ∀ n, P4197513770425788089.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P5658655232429244606

`∑[A304909(n+1)/(n+1)]`
-/

namespace A102378.P5658655232429244606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304909 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102378.P5658655232429244606

namespace A102378

/-- `∑[A304909(n+1)/(n+1)]` -/
def P5658655232429244606.Spec : Prop :=
  ∀ n, P5658655232429244606.a n = (A102378 (n + 1) : ℚ)

end A102378

/-! ## A102378.P7350843929125696723

`A022907(n+2)-A033485(n+1)`
-/

namespace A102378.P7350843929125696723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 2) - A033485 (n + 1)

end

end A102378.P7350843929125696723

namespace A102378

/-- `A022907(n+2)-A033485(n+1)` -/
def P7350843929125696723.Spec : Prop :=
  ∀ n, P7350843929125696723.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P9772047138838962145

`A022907(n+2)+A022907(n+2)-A346912(n+1)`
-/

namespace A102378.P9772047138838962145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 2) + (A022907 (n + 2) - A346912 (n + 1))

end

end A102378.P9772047138838962145

namespace A102378

/-- `A022907(n+2)+A022907(n+2)-A346912(n+1)` -/
def P9772047138838962145.Spec : Prop :=
  ∀ n, P9772047138838962145.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P3492796551964830670

`A022907(n+2)-A040039(2*n)`
-/

namespace A102378.P3492796551964830670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 2) - A040039 (2 * n)

end

end A102378.P3492796551964830670

namespace A102378

/-- `A022907(n+2)-A040039(2*n)` -/
def P3492796551964830670.Spec : Prop :=
  ∀ n, P3492796551964830670.a n = A102378 (n + 1)

end A102378

/-! ## A102378.P17512266272536186198

`A018819(2*(n+1))-1`
-/

namespace A102378.P17512266272536186198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (2 * (n + 1)) - 1

end

end A102378.P17512266272536186198

namespace A102378

/-- `A018819(2*(n+1))-1` -/
def P17512266272536186198.Spec : Prop :=
  ∀ n, P17512266272536186198.a n = A102378 (n + 1)

end A102378

/-!
# A102379: a(n) is the minimal number of nodes in a height-ratio-balanced binary tree of order 1/2 and height n.

The programs for A102379, the canonical program `A102379.P813537360149096559` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102379 has offset 1).

The definition of A102379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102379.P813537360149096559

`a(floor((n-1)/2))+a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102379

/-- `a(floor((n-1)/2))+a(n-1)+1` -/
def P813537360149096559.Spec : Prop :=
  ∀ n, (P813537360149096559.a n : ℤ) = A102379 (n + 1)

theorem P813537360149096559.correct : P813537360149096559.Spec := by
  intro n
  simp only [A102379, Nat.add_sub_cancel]

end A102379

/-! ## A102379.P11243316978414897043

`a(ceil(n/2)-1)+a(n-1)+1` with `a(0)=0`
-/

namespace A102379.P11243316978414897043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + a (n - 1) + 1

end

end A102379.P11243316978414897043

namespace A102379

/-- `a(ceil(n/2)-1)+a(n-1)+1` -/
def P11243316978414897043.Spec : Prop :=
  ∀ n, (P11243316978414897043.a n : ℤ) = A102379 (n + 1)

end A102379

/-! ## A102379.P1938772641765327682

`A033485(n+1)-1`
-/

namespace A102379.P1938772641765327682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 1) - 1

end

end A102379.P1938772641765327682

namespace A102379

/-- `A033485(n+1)-1` -/
def P1938772641765327682.Spec : Prop :=
  ∀ n, P1938772641765327682.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P6514420153972867453

`floor(sinh(log(A000123(n+1))))`
-/

namespace A102379.P6514420153972867453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000123 (n + 1) : ℝ))⌋

end

end A102379.P6514420153972867453

namespace A102379

/-- `floor(sinh(log(A000123(n+1))))` -/
def P6514420153972867453.Spec : Prop :=
  ∀ n, P6514420153972867453.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P5686394850569546141

`(A102378(n+1)-1)/2`
-/

namespace A102379.P5686394850569546141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102378 (n + 1) - 1 : ℚ) / 2

end

end A102379.P5686394850569546141

namespace A102379

/-- `(A102378(n+1)-1)/2` -/
def P5686394850569546141.Spec : Prop :=
  ∀ n, P5686394850569546141.a n = (A102379 (n + 1) : ℚ)

end A102379

/-! ## A102379.P122513502995087840

`∑[A040039(n)]-A040039(n)`
-/

namespace A102379.P122513502995087840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A040039 n

end

end A102379.P122513502995087840

namespace A102379

/-- `∑[A040039(n)]-A040039(n)` -/
def P122513502995087840.Spec : Prop :=
  ∀ n, P122513502995087840.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P6954348538122571267

`A075535(n+1)+A062188(n)-1`
-/

namespace A102379.P6954348538122571267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075535 (n + 1) + (A062188 n - 1)

end

end A102379.P6954348538122571267

namespace A102379

/-- `A075535(n+1)+A062188(n)-1` -/
def P6954348538122571267.Spec : Prop :=
  ∀ n, P6954348538122571267.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P288478612833939350

`A102378(n+1)%A033485(n+1)`
-/

namespace A102379.P288478612833939350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102378 (n + 1)) (A033485 (n + 1))

end

end A102379.P288478612833939350

namespace A102379

/-- `A102378(n+1)%A033485(n+1)` -/
def P288478612833939350.Spec : Prop :=
  ∀ n, P288478612833939350.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P5640358174095165360

`floor(A022907(n+2)/3)`
-/

namespace A102379.P5640358174095165360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022907 (n + 2) : ℚ) / 3⌋

end

end A102379.P5640358174095165360

namespace A102379

/-- `floor(A022907(n+2)/3)` -/
def P5640358174095165360.Spec : Prop :=
  ∀ n, P5640358174095165360.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P5440891011428457581

`Δ[∑[A000123(n)]/2]-1`
-/

namespace A102379.P5440891011428457581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102379.P5440891011428457581

namespace A102379

/-- `Δ[∑[A000123(n)]/2]-1` -/
def P5440891011428457581.Spec : Prop :=
  ∀ n, P5440891011428457581.a n = (A102379 (n + 1) : ℚ)

end A102379

/-! ## A102379.P14306563469243305980

`Δ[A131205(n+1)/2]-1`
-/

namespace A102379.P14306563469243305980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131205 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102379.P14306563469243305980

namespace A102379

/-- `Δ[A131205(n+1)/2]-1` -/
def P14306563469243305980.Spec : Prop :=
  ∀ n, P14306563469243305980.a n = (A102379 (n + 1) : ℚ)

end A102379

/-! ## A102379.P7292910049937657628

`Δ[A022905(n+1)/3]-1`
-/

namespace A102379.P7292910049937657628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022905 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102379.P7292910049937657628

namespace A102379

/-- `Δ[A022905(n+1)/3]-1` -/
def P7292910049937657628.Spec : Prop :=
  ∀ n, P7292910049937657628.a n = (A102379 (n + 1) : ℚ)

end A102379

/-! ## A102379.P8107095246374323682

`A022907(n+2)-A000123(n+1)`
-/

namespace A102379.P8107095246374323682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 2) - A000123 (n + 1)

end

end A102379.P8107095246374323682

namespace A102379

/-- `A022907(n+2)-A000123(n+1)` -/
def P8107095246374323682.Spec : Prop :=
  ∀ n, P8107095246374323682.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P6556234160533449260

`A346912(n+1)-(A022907(n+2)+1)`
-/

namespace A102379.P6556234160533449260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346912 (n + 1) - (A022907 (n + 2) + 1)

end

end A102379.P6556234160533449260

namespace A102379

/-- `A346912(n+1)-(A022907(n+2)+1)` -/
def P6556234160533449260.Spec : Prop :=
  ∀ n, P6556234160533449260.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P7767313708874724243

`A102378(n+1)+A102378(n+1)-A022907(n+2)`
-/

namespace A102379.P7767313708874724243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102378 (n + 1) + (A102378 (n + 1) - A022907 (n + 2))

end

end A102379.P7767313708874724243

namespace A102379

/-- `A102378(n+1)+A102378(n+1)-A022907(n+2)` -/
def P7767313708874724243.Spec : Prop :=
  ∀ n, P7767313708874724243.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P4862549366488962201

`A022905(n+1)+A346912(n+1)-A022905(n+2)`
-/

namespace A102379.P4862549366488962201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (n + 1) + (A346912 (n + 1) - A022905 (n + 2))

end

end A102379.P4862549366488962201

namespace A102379

/-- `A022905(n+1)+A346912(n+1)-A022905(n+2)` -/
def P4862549366488962201.Spec : Prop :=
  ∀ n, P4862549366488962201.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P1719747893121579860

`A022905(n+2)-(A022908(n+2)+A000123(n+1))`
-/

namespace A102379.P1719747893121579860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (n + 2) - (A022908 (n + 2) + A000123 (n + 1))

end

end A102379.P1719747893121579860

namespace A102379

/-- `A022905(n+2)-(A022908(n+2)+A000123(n+1))` -/
def P1719747893121579860.Spec : Prop :=
  ∀ n, P1719747893121579860.a n = A102379 (n + 1)

end A102379

/-! ## A102379.P1891402769600364865

`A040039(2*n)-1`
-/

namespace A102379.P1891402769600364865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 (2 * n) - 1

end

end A102379.P1891402769600364865

namespace A102379

/-- `A040039(2*n)-1` -/
def P1891402769600364865.Spec : Prop :=
  ∀ n, P1891402769600364865.a n = A102379 (n + 1)

end A102379

/-!
# A102380: Irregular triangle read by rows in which row n lists prime factors (with multiplicity) of the repunit (10^n - 1)/9 (A002275(n)).

The programs for A102380, there is no canonical definition to state claims against.
-/

/-! ## A102380.P17381279001320102396

`A204846(A010785(2*n+1)+1)`
-/

namespace A102380.P17381279001320102396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204846 (A010785 (2 * n + 1) + 1).toNat

end

end A102380.P17381279001320102396

/-! ## A102380.P767954577781541342

`A204846(A105801(n+2))`
-/

namespace A102380.P767954577781541342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204846 (A105801 (n + 2)).toNat

end

end A102380.P767954577781541342

/-!
# A102381: Number of permutations of 1..n in which every pair of adjacent numbers as well as the first and the last entries are relatively prime.

The programs for A102381, there is no canonical definition to state claims against.
-/

/-! ## A102381.P4522767113949699335

`(n+1)*A086595(n+1)`
-/

namespace A102381.P4522767113949699335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086595 (n + 1)

end

end A102381.P4522767113949699335

/-! ## A102381.P15688167176944258874

`(n+1)*A020639(A152763(n))*A242529(n+1)`
-/

namespace A102381.P15688167176944258874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020639 (A152763 n).toNat * A242529 (n + 1))

end

end A102381.P15688167176944258874

/-! ## A102381.P14342080599723127821

`(n+1)*A020639(A219654(n))*A242529(n+1)`
-/

namespace A102381.P14342080599723127821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A020639 (A219654 n).toNat * A242529 (n + 1))

end

end A102381.P14342080599723127821

/-! ## A102381.P16742110585301159525

`A110592(A061775(3*n+5))*A242529(n+1)*(n+1)`
-/

namespace A102381.P16742110585301159525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A061775 (3 * n + 5)).toNat * A242529 (n + 1) * (n + 1 : ℤ)

end

end A102381.P16742110585301159525

/-!
# A102382: a(n) = A001221(A004094(n)).

The programs for A102382, there is no canonical definition to state claims against.
-/

/-! ## A102382.P3067269405805233833

`∑{e}[∏{p}[A004094(n), #], #]`
-/

namespace A102382.P3067269405805233833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102382.P3067269405805233833

/-! ## A102382.P2678844589168318236

`∑{e}[∏{p}[A341718(n)+1, #], #]`
-/

namespace A102382.P2678844589168318236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341718 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102382.P2678844589168318236

/-! ## A102382.P8387381768707710170

`∑{e}[A004094(n), A000001(#)]`
-/

namespace A102382.P8387381768707710170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000001 (Nat.factorization (f1 n).natAbs p)

end

end A102382.P8387381768707710170

/-! ## A102382.P11818968913499698830

`∑{e}[A004094(n), A000577(#)]`
-/

namespace A102382.P11818968913499698830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000577 (Nat.factorization (f1 n).natAbs p)

end

end A102382.P11818968913499698830

/-! ## A102382.P11215654859942695811

`∑{e}[A004094(n), A000924(#)]`
-/

namespace A102382.P11215654859942695811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000924 (Nat.factorization (f1 n).natAbs p)

end

end A102382.P11215654859942695811

/-!
# A102383: a(n) = A001222(A004094(n)).

The programs for A102383, there is no canonical definition to state claims against.
-/

/-! ## A102383.P17354624200859810696

`A001222(A004094(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102383.P17354624200859810696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004094 n).toNat

end

end A102383.P17354624200859810696

/-! ## A102383.P10966503482008457614

`∑{e}[A341718(n)+1, #]`
-/

namespace A102383.P10966503482008457614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341718 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102383.P10966503482008457614

/-! ## A102383.P7838698899692312647

`∑{e}[A004094(n), A000027(#)]`
-/

namespace A102383.P7838698899692312647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (Nat.factorization (f1 n).natAbs p)

end

end A102383.P7838698899692312647

/-! ## A102383.P11106174821924376439

`∑{e}[A004094(n), A001405(#)]`
-/

namespace A102383.P11106174821924376439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001405 (Nat.factorization (f1 n).natAbs p)

end

end A102383.P11106174821924376439

/-! ## A102383.P6306884445949375728

`∑{e}[A004094(n), A005117(#)]`
-/

namespace A102383.P6306884445949375728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005117 (Nat.factorization (f1 n).natAbs p)

end

end A102383.P6306884445949375728

/-!
# A102384: a(n) = A020639(A004094(n)).

The programs for A102384, there is no canonical definition to state claims against.
-/

/-! ## A102384.P9049840087096790070

`A020639(A004094(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102384.P9049840087096790070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004094 n).toNat

end

end A102384.P9049840087096790070

/-! ## A102384.P13349878727722021662

`A020639(A341718(n)+1)`
-/

namespace A102384.P13349878727722021662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A341718 n + 1).toNat

end

end A102384.P13349878727722021662

/-! ## A102384.P5533017815294630148

`A020639(A004086(2^A056962(n)))`
-/

namespace A102384.P5533017815294630148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004086 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A056962 n : ℤ))).toNat).toNat

end

end A102384.P5533017815294630148

/-! ## A102384.P9091624540274649773

`A020639(n-(A023443(n)-A341718(n)))`
-/

namespace A102384.P9091624540274649773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n : ℤ) - (A023443 n - A341718 n)).toNat

end

end A102384.P9091624540274649773

/-! ## A102384.P14803447271588845695

`A020639(2-(A054143(∑[n])-A341718(n)))`
-/

namespace A102384.P14803447271588845695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 - (A054143 (∑ j ∈ Finset.range (n + 1), f1 j) - A341718 n)).toNat

end

end A102384.P14803447271588845695

/-!
# A102385: Primes in A004094.

The programs for A102385, there is no canonical definition to state claims against.
-/

/-! ## A102385.P17009358976297338832

`record[A101896(A052938(n))]`
-/

namespace A102385.P17009358976297338832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101896 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102385.P17009358976297338832

/-! ## A102385.P17363973331100481564

`record[A102384(A004442(n))]`
-/

namespace A102385.P17363973331100481564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102384 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102385.P17363973331100481564

/-! ## A102385.P9839948924127053930

`record[A102384(A263426(n))]`
-/

namespace A102385.P9839948924127053930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102384 (A263426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102385.P9839948924127053930

/-! ## A102385.P6939150235390731654

`record[A102384(A057036(n+1))]`
-/

namespace A102385.P6939150235390731654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102384 (A057036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102385.P6939150235390731654

/-! ## A102385.P5772633345328392416

`A101896(A035043(n)+1)`
-/

namespace A102385.P5772633345328392416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101896 (A035043 n + 1).toNat

end

end A102385.P5772633345328392416

/-!
# A102386: Numbers k such that k99999 is prime.

The programs for A102386, there is no canonical definition to state claims against.
-/

/-! ## A102386.P12652095684865281783

`A105059(n+1)-1`
-/

namespace A102386.P12652095684865281783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105059 (n + 1) - 1

end

end A102386.P12652095684865281783

/-! ## A102386.P7970612326484343622

`A260196(n+2)+A105059(n+1)`
-/

namespace A102386.P7970612326484343622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A105059 (n + 1)

end

end A102386.P7970612326484343622

/-! ## A102386.P3025758083892275424

`A107393(p?[2*n+1])+A105059(n+1)`
-/

namespace A102386.P3025758083892275424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A105059 (n + 1)

end

end A102386.P3025758083892275424

/-! ## A102386.P575013083023312000

`A130472(2*n+1)+A105059(n+1)+n`
-/

namespace A102386.P575013083023312000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (2 * n + 1) + (A105059 (n + 1) + (n : ℤ))

end

end A102386.P575013083023312000

/-! ## A102386.P1889628966095244822

`A107393(A027748(2*n+3))+A105059(n+1)`
-/

namespace A102386.P1889628966095244822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A027748 (2 * n + 3)).toNat + A105059 (n + 1)

end

end A102386.P1889628966095244822

/-! ## A102386.P18280006359679940518

`A107393(A134204(n))+A105059(n+1)`
-/

namespace A102386.P18280006359679940518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A134204 n).toNat + A105059 (n + 1)

end

end A102386.P18280006359679940518

/-! ## A102386.P8280470396818416558

`A023443(A105059(n+1))`
-/

namespace A102386.P8280470396818416558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105059 (n + 1)).toNat

end

end A102386.P8280470396818416558

/-! ## A102386.P11006969276846851227

`A321804(A006047(n))+A105059(n+1)`
-/

namespace A102386.P11006969276846851227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A006047 n).toNat + A105059 (n + 1)

end

end A102386.P11006969276846851227

/-! ## A102386.P17452041230736640440

`A107393(A275785(n+1))+A105059(n+1)`
-/

namespace A102386.P17452041230736640440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A275785 (n + 1)).toNat + A105059 (n + 1)

end

end A102386.P17452041230736640440

/-!
# A102389: An evil count.

The programs for A102389, the canonical program `A102389.P18440078432427521282` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102389 has offset 0).

The definition of A102389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102389.P18440078432427521282

`(1+floor(n/2))*(1+(-1)^A000120(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102389

/-- `(1+floor(n/2))*(1+(-1)^A000120(n))/2` -/
def P18440078432427521282.Spec : Prop :=
  ∀ n, P18440078432427521282.a n = (A102389 n : ℚ)

end A102389

/-! ## A102389.P13681063013632441449

`∑[log2(gcd(2, n))]*char[xor(n, 2*n)]`
-/

namespace A102389.P13681063013632441449
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

end

end A102389.P13681063013632441449

namespace A102389

/-- `∑[log2(gcd(2, n))]*char[xor(n, 2*n)]` -/
def P13681063013632441449.Spec : Prop :=
  ∀ n, P13681063013632441449.a n = (A102389 n : ℝ)

end A102389

/-! ## A102389.P8381317234858816685

`∑[char[2*n]]*char[xor(n, 2*n)]`
-/

namespace A102389.P8381317234858816685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f3 j = n then 1 else 0)

end

end A102389.P8381317234858816685

namespace A102389

/-- `∑[char[2*n]]*char[xor(n, 2*n)]` -/
def P8381317234858816685.Spec : Prop :=
  ∀ n, (P8381317234858816685.a n : ℤ) = A102389 n

end A102389

/-! ## A102389.P7168579375893718361

`ceil(char[xor(n, 2*n)]/acot(n/2))`
-/

namespace A102389.P7168579375893718361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ)⌉

end

end A102389.P7168579375893718361

namespace A102389

/-- `ceil(char[xor(n, 2*n)]/acot(n/2))` -/
def P7168579375893718361.Spec : Prop :=
  ∀ n, P7168579375893718361.a n = A102389 n

end A102389

/-! ## A102389.P7856834683233012561

`ceil((n+1)/2*char[xor(n, 2*n)])`
-/

namespace A102389.P7856834683233012561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)⌉

end

end A102389.P7856834683233012561

namespace A102389

/-- `ceil((n+1)/2*char[xor(n, 2*n)])` -/
def P7856834683233012561.Spec : Prop :=
  ∀ n, P7856834683233012561.a n = A102389 n

end A102389

/-! ## A102389.P3204448562399671816

`floor((n+2)*char[xor(n, 2*n)]/2)`
-/

namespace A102389.P3204448562399671816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 2) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℚ) / 2⌋

end

end A102389.P3204448562399671816

namespace A102389

/-- `floor((n+2)*char[xor(n, 2*n)]/2)` -/
def P3204448562399671816.Spec : Prop :=
  ∀ n, P3204448562399671816.a n = A102389 n

end A102389

/-! ## A102389.P12482175767669385502

`round((n+1)/2*char[xor(n, 2*n)])`
-/

namespace A102389.P12482175767669385502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2 * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ))

end

end A102389.P12482175767669385502

namespace A102389

/-- `round((n+1)/2*char[xor(n, 2*n)])` -/
def P12482175767669385502.Spec : Prop :=
  ∀ n, P12482175767669385502.a n = A102389 n

end A102389

/-! ## A102389.P16194733726975578390

`(floor(n/2)+1)*and(1, comp[xor(n, 2*n)])`
-/

namespace A102389.P16194733726975578390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1) * (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A102389.P16194733726975578390

namespace A102389

/-- `(floor(n/2)+1)*and(1, comp[xor(n, 2*n)])` -/
def P16194733726975578390.Spec : Prop :=
  ∀ n, P16194733726975578390.a n = A102389 n

end A102389

/-! ## A102389.P4994816913834504456

`(floor(n/2)+1)*(comp[xor(n, 2*n)]-2*n)`
-/

namespace A102389.P4994816913834504456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (2 * n : ℤ))

end

end A102389.P4994816913834504456

namespace A102389

/-- `(floor(n/2)+1)*(comp[xor(n, 2*n)]-2*n)` -/
def P4994816913834504456.Spec : Prop :=
  ∀ n, P4994816913834504456.a n = A102389 n

end A102389

/-! ## A102389.P18131723331600037041

`A102390(xor(1, n))`
-/

namespace A102389.P18131723331600037041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 (Nat.xor 1 n)

end

end A102389.P18131723331600037041

namespace A102389

/-- `A102390(xor(1, n))` -/
def P18131723331600037041.Spec : Prop :=
  ∀ n, P18131723331600037041.a n = A102389 n

end A102389

/-! ## A102389.P10802136585569313525

`∑[char[2*n]]*A010059(n)`
-/

namespace A102389.P10802136585569313525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010059 n

end

end A102389.P10802136585569313525

namespace A102389

/-- `∑[char[2*n]]*A010059(n)` -/
def P10802136585569313525.Spec : Prop :=
  ∀ n, P10802136585569313525.a n = A102389 n

end A102389

/-! ## A102389.P1512905588510371355

`A102390(A004442(n))`
-/

namespace A102389.P1512905588510371355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 (A004442 n).toNat

end

end A102389.P1512905588510371355

namespace A102389

/-- `A102390(A004442(n))` -/
def P1512905588510371355.Spec : Prop :=
  ∀ n, P1512905588510371355.a n = A102389 n

end A102389

/-! ## A102389.P13969661152366836163

`A027656(A160017(n))`
-/

namespace A102389.P13969661152366836163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A160017 n).toNat

end

end A102389.P13969661152366836163

namespace A102389

/-- `A027656(A160017(n))` -/
def P13969661152366836163.Spec : Prop :=
  ∀ n, P13969661152366836163.a n = A102389 n

end A102389

/-! ## A102389.P197023729408837706

`A110654(A102393(n))`
-/

namespace A102389.P197023729408837706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A102393 n).toNat

end

end A102389.P197023729408837706

namespace A102389

/-- `A110654(A102393(n))` -/
def P197023729408837706.Spec : Prop :=
  ∀ n, P197023729408837706.a n = A102389 n

end A102389

/-! ## A102389.P2167510123490383282

`A008619(n)-A102390(n)`
-/

namespace A102389.P2167510123490383282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A102390 n

end

end A102389.P2167510123490383282

namespace A102389

/-- `A008619(n)-A102390(n)` -/
def P2167510123490383282.Spec : Prop :=
  ∀ n, P2167510123490383282.a n = A102389 n

end A102389

/-! ## A102389.P10916426495963935008

`A010059(n)*A159481(n)`
-/

namespace A102389.P10916426495963935008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n * A159481 n

end

end A102389.P10916426495963935008

namespace A102389

/-- `A010059(n)*A159481(n)` -/
def P10916426495963935008.Spec : Prop :=
  ∀ n, P10916426495963935008.a n = A102389 n

end A102389

/-! ## A102389.P16628210501015060876

`A010059(n)*A263997(n+1)`
-/

namespace A102389.P16628210501015060876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n * A263997 (n + 1)

end

end A102389.P16628210501015060876

namespace A102389

/-- `A010059(n)*A263997(n+1)` -/
def P16628210501015060876.Spec : Prop :=
  ∀ n, P16628210501015060876.a n = A102389 n

end A102389

/-! ## A102389.P14973589513605697254

`(1-A010060(n))*A008619(n)`
-/

namespace A102389.P14973589513605697254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010060 n) * A008619 n

end

end A102389.P14973589513605697254

namespace A102389

/-- `(1-A010060(n))*A008619(n)` -/
def P14973589513605697254.Spec : Prop :=
  ∀ n, P14973589513605697254.a n = A102389 n

end A102389

/-! ## A102389.P4012782941313639586

`(2-A001285(n))*A008619(n)`
-/

namespace A102389.P4012782941313639586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A001285 n) * A008619 n

end

end A102389.P4012782941313639586

namespace A102389

/-- `(2-A001285(n))*A008619(n)` -/
def P4012782941313639586.Spec : Prop :=
  ∀ n, P4012782941313639586.a n = A102389 n

end A102389

/-! ## A102389.P7453770034421224780

`A008619(n)*A254651(2*n)`
-/

namespace A102389.P7453770034421224780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A254651 (2 * n)

end

end A102389.P7453770034421224780

namespace A102389

/-- `A008619(n)*A254651(2*n)` -/
def P7453770034421224780.Spec : Prop :=
  ∀ n, P7453770034421224780.a n = A102389 n

end A102389

/-!
# A102390: An odious count.

The programs for A102390, the canonical program `A102390.P7831391285118689562` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102390 has offset 0).

The definition of A102390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102390.P7831391285118689562

`(1+floor(n/2))*(1-(-1)^A000120(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102390

/-- `(1+floor(n/2))*(1-(-1)^A000120(n))/2` -/
def P7831391285118689562.Spec : Prop :=
  ∀ n, P7831391285118689562.a n = (A102390 n : ℚ)

end A102390

/-! ## A102390.P6278710673687701469

`∑[log2(gcd(2, n))]*char[xor(n, Δ[n²])]`
-/

namespace A102390.P6278710673687701469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

end

end A102390.P6278710673687701469

namespace A102390

/-- `∑[log2(gcd(2, n))]*char[xor(n, Δ[n²])]` -/
def P6278710673687701469.Spec : Prop :=
  ∀ n, P6278710673687701469.a n = (A102390 n : ℝ)

end A102390

/-! ## A102390.P12652264362217324169

`(floor(n/2)+1)*char[xor(n, Δ[n²])]`
-/

namespace A102390.P12652264362217324169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102390.P12652264362217324169

namespace A102390

/-- `(floor(n/2)+1)*char[xor(n, Δ[n²])]` -/
def P12652264362217324169.Spec : Prop :=
  ∀ n, P12652264362217324169.a n = A102390 n

end A102390

/-! ## A102390.P3529171042136110641

`ceil((n+1)/2*char[xor(n, Δ[n²])])`
-/

namespace A102390.P3529171042136110641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)⌉

end

end A102390.P3529171042136110641

namespace A102390

/-- `ceil((n+1)/2*char[xor(n, Δ[n²])])` -/
def P3529171042136110641.Spec : Prop :=
  ∀ n, P3529171042136110641.a n = A102390 n

end A102390

/-! ## A102390.P2341354173952508720

`round((n+1)/2*char[xor(n, Δ[n²])])`
-/

namespace A102390.P2341354173952508720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ))

end

end A102390.P2341354173952508720

namespace A102390

/-- `round((n+1)/2*char[xor(n, Δ[n²])])` -/
def P2341354173952508720.Spec : Prop :=
  ∀ n, P2341354173952508720.a n = A102390 n

end A102390

/-! ## A102390.P2109852434940040305

`(floor(n/2)+1)*char[comp[xor(n, 2*n)]]`
-/

namespace A102390.P2109852434940040305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A102390.P2109852434940040305

namespace A102390

/-- `(floor(n/2)+1)*char[comp[xor(n, 2*n)]]` -/
def P2109852434940040305.Spec : Prop :=
  ∀ n, P2109852434940040305.a n = A102390 n

end A102390

/-! ## A102390.P15987849073132265858

`ceil((n+1)*char[comp[xor(n, 2*n)]]/2)`
-/

namespace A102390.P15987849073132265858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℚ) / 2⌉

end

end A102390.P15987849073132265858

namespace A102390

/-- `ceil((n+1)*char[comp[xor(n, 2*n)]]/2)` -/
def P15987849073132265858.Spec : Prop :=
  ∀ n, P15987849073132265858.a n = A102390 n

end A102390

/-! ## A102390.P6914164598795445121

`round((n+1)*char[comp[xor(n, 2*n)]]/2)`
-/

namespace A102390.P6914164598795445121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℚ) / 2)

end

end A102390.P6914164598795445121

namespace A102390

/-- `round((n+1)*char[comp[xor(n, 2*n)]]/2)` -/
def P6914164598795445121.Spec : Prop :=
  ∀ n, P6914164598795445121.a n = A102390 n

end A102390

/-! ## A102390.P14835303740320088502

`(1-char[xor(n, 2*n)])*∑[char[2*n]]`
-/

namespace A102390.P14835303740320088502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A102390.P14835303740320088502

namespace A102390

/-- `(1-char[xor(n, 2*n)])*∑[char[2*n]]` -/
def P14835303740320088502.Spec : Prop :=
  ∀ n, P14835303740320088502.a n = A102390 n

end A102390

/-! ## A102390.P17580010771015159441

`round((n+1)*char[xor(n, 2*n+1)]/2)`
-/

namespace A102390.P17580010771015159441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℚ) / 2)

end

end A102390.P17580010771015159441

namespace A102390

/-- `round((n+1)*char[xor(n, 2*n+1)]/2)` -/
def P17580010771015159441.Spec : Prop :=
  ∀ n, P17580010771015159441.a n = A102390 n

end A102390

/-! ## A102390.P12417339205598713462

`A102389(xor(1, n))`
-/

namespace A102390.P12417339205598713462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 (Nat.xor 1 n)

end

end A102390.P12417339205598713462

namespace A102390

/-- `A102389(xor(1, n))` -/
def P12417339205598713462.Spec : Prop :=
  ∀ n, P12417339205598713462.a n = A102390 n

end A102390

/-! ## A102390.P16374171080199402353

`A102389(A004442(n))`
-/

namespace A102390.P16374171080199402353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 (A004442 n).toNat

end

end A102390.P16374171080199402353

namespace A102390

/-- `A102389(A004442(n))` -/
def P16374171080199402353.Spec : Prop :=
  ∀ n, P16374171080199402353.a n = A102390 n

end A102390

/-! ## A102390.P1861113835995769813

`A027656(A143579(n))`
-/

namespace A102390.P1861113835995769813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A143579 n).toNat

end

end A102390.P1861113835995769813

namespace A102390

/-- `A027656(A143579(n))` -/
def P1861113835995769813.Spec : Prop :=
  ∀ n, P1861113835995769813.a n = A102390 n

end A102390

/-! ## A102390.P4203183742331042034

`A110654(A102394(n))`
-/

namespace A102390.P4203183742331042034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A102394 n).toNat

end

end A102390.P4203183742331042034

namespace A102390

/-- `A110654(A102394(n))` -/
def P4203183742331042034.Spec : Prop :=
  ∀ n, P4203183742331042034.a n = A102390 n

end A102390

/-! ## A102390.P1073281522361595682

`A115384(A102392(n))`
-/

namespace A102390.P1073281522361595682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A102392 n).toNat

end

end A102390.P1073281522361595682

namespace A102390

/-- `A115384(A102392(n))` -/
def P1073281522361595682.Spec : Prop :=
  ∀ n, P1073281522361595682.a n = A102390 n

end A102390

/-! ## A102390.P16676808409997823958

`A008619(n)-A102389(n)`
-/

namespace A102390.P16676808409997823958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A102389 n

end

end A102390.P16676808409997823958

namespace A102390

/-- `A008619(n)-A102389(n)` -/
def P16676808409997823958.Spec : Prop :=
  ∀ n, P16676808409997823958.a n = A102390 n

end A102390

/-! ## A102390.P1987566438887849863

`A115384(n-A102391(n))`
-/

namespace A102390.P1987566438887849863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 ((n : ℤ) - A102391 n).toNat

end

end A102390.P1987566438887849863

namespace A102390

/-- `A115384(n-A102391(n))` -/
def P1987566438887849863.Spec : Prop :=
  ∀ n, P1987566438887849863.a n = A102390 n

end A102390

/-! ## A102390.P2675912550975829261

`A008619(n)*A010060(n)`
-/

namespace A102390.P2675912550975829261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A010060 n

end

end A102390.P2675912550975829261

namespace A102390

/-- `A008619(n)*A010060(n)` -/
def P2675912550975829261.Spec : Prop :=
  ∀ n, P2675912550975829261.a n = A102390 n

end A102390

/-! ## A102390.P1855590350917329502

`A115384(n*A010060(n))`
-/

namespace A102390.P1855590350917329502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 ((n : ℤ) * A010060 n).toNat

end

end A102390.P1855590350917329502

namespace A102390

/-- `A115384(n*A010060(n))` -/
def P1855590350917329502.Spec : Prop :=
  ∀ n, P1855590350917329502.a n = A102390 n

end A102390

/-! ## A102390.P5750158784336340171

`(A001285(n)-1)*A008619(n)`
-/

namespace A102390.P5750158784336340171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001285 n - 1) * A008619 n

end

end A102390.P5750158784336340171

namespace A102390

/-- `(A001285(n)-1)*A008619(n)` -/
def P5750158784336340171.Spec : Prop :=
  ∀ n, P5750158784336340171.a n = A102390 n

end A102390

/-!
# A102391: Evil numbers in evil places.

The programs for A102391, the canonical program `A102391.P3511077763120289553` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102391 has offset 0).

The definition of A102391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102391.P14682981876079808070

`n*char[xor(n, 2*n)]`
-/

namespace A102391.P14682981876079808070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A102391.P14682981876079808070

namespace A102391

/-- `n*char[xor(n, 2*n)]` -/
def P14682981876079808070.Spec : Prop :=
  ∀ n, (P14682981876079808070.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P16261781313395933875

`and(n, -char[xor(n, n+n)])`
-/

namespace A102391.P16261781313395933875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A102391.P16261781313395933875

namespace A102391

/-- `and(n, -char[xor(n, n+n)])` -/
def P16261781313395933875.Spec : Prop :=
  ∀ n, P16261781313395933875.a n = A102391 n

end A102391

/-! ## A102391.P7226659399519857527

`n*comp[xor(n, 2*n)]%2`
-/

namespace A102391.P7226659399519857527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2)

end

end A102391.P7226659399519857527

namespace A102391

/-- `n*comp[xor(n, 2*n)]%2` -/
def P7226659399519857527.Spec : Prop :=
  ∀ n, (P7226659399519857527.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P10149225629834662361

`n*and(1, comp[xor(n, 2*n)])`
-/

namespace A102391.P10149225629834662361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102391.P10149225629834662361

namespace A102391

/-- `n*and(1, comp[xor(n, 2*n)])` -/
def P10149225629834662361.Spec : Prop :=
  ∀ n, (P10149225629834662361.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P1945034071325640593

`lcm(n, 1-char[xor(n, Δ[n²])])`
-/

namespace A102391.P1945034071325640593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A102391.P1945034071325640593

namespace A102391

/-- `lcm(n, 1-char[xor(n, Δ[n²])])` -/
def P1945034071325640593.Spec : Prop :=
  ∀ n, (P1945034071325640593.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P14155992224705266519

`and(n, char[xor(n, Δ[n²])]-1)`
-/

namespace A102391.P14155992224705266519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1)

end

end A102391.P14155992224705266519

namespace A102391

/-- `and(n, char[xor(n, Δ[n²])]-1)` -/
def P14155992224705266519.Spec : Prop :=
  ∀ n, P14155992224705266519.a n = A102391 n

end A102391

/-! ## A102391.P3511077763120289553

`n*∑[∏{e}[xor(n, -n), #]]%2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A102391

/-- `n*∑[∏{e}[xor(n, -n), #]]%2` -/
def P3511077763120289553.Spec : Prop :=
  ∀ n, (P3511077763120289553.a n : ℤ) = A102391 n

theorem P3511077763120289553.correct : P3511077763120289553.Spec := by
  intro n
  simp only [A102391]

end A102391

/-! ## A102391.P13045813928581678396

`n*(comp[xor(n, 2*n)]-2*n)`
-/

namespace A102391.P13045813928581678396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (2 * n : ℤ))

end

end A102391.P13045813928581678396

namespace A102391

/-- `n*(comp[xor(n, 2*n)]-2*n)` -/
def P13045813928581678396.Spec : Prop :=
  ∀ n, P13045813928581678396.a n = A102391 n

end A102391

/-! ## A102391.P2786972013828674789

`n*xor(2*n, comp[xor(n, 2*n)])`
-/

namespace A102391.P2786972013828674789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor (2 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102391.P2786972013828674789

namespace A102391

/-- `n*xor(2*n, comp[xor(n, 2*n)])` -/
def P2786972013828674789.Spec : Prop :=
  ∀ n, (P2786972013828674789.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P4615299040103549419

`(char[xor(n, Δ[n²])]+n)%(n+1)`
-/

namespace A102391.P4615299040103549419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) % (n + 1)

end

end A102391.P4615299040103549419

namespace A102391

/-- `(char[xor(n, Δ[n²])]+n)%(n+1)` -/
def P4615299040103549419.Spec : Prop :=
  ∀ n, (P4615299040103549419.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P16705287259619413829

`n-A102392(n)`
-/

namespace A102391.P16705287259619413829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102392 n

end

end A102391.P16705287259619413829

namespace A102391

/-- `n-A102392(n)` -/
def P16705287259619413829.Spec : Prop :=
  ∀ n, P16705287259619413829.a n = A102391 n

end A102391

/-! ## A102391.P5164613176026645504

`n*A010059(n)`
-/

namespace A102391.P5164613176026645504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010059 n

end

end A102391.P5164613176026645504

namespace A102391

/-- `n*A010059(n)` -/
def P5164613176026645504.Spec : Prop :=
  ∀ n, P5164613176026645504.a n = A102391 n

end A102391

/-! ## A102391.P11059249125213858264

`n*char[A038556(n)]`
-/

namespace A102391.P11059249125213858264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102391.P11059249125213858264

namespace A102391

/-- `n*char[A038556(n)]` -/
def P11059249125213858264.Spec : Prop :=
  ∀ n, (P11059249125213858264.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P6630656763832085502

`n*char[A048724(n)]`
-/

namespace A102391.P6630656763832085502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102391.P6630656763832085502

namespace A102391

/-- `n*char[A048724(n)]` -/
def P6630656763832085502.Spec : Prop :=
  ∀ n, (P6630656763832085502.a n : ℤ) = A102391 n

end A102391

/-! ## A102391.P13751566045444119079

`n*(1-A010060(n))`
-/

namespace A102391.P13751566045444119079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A010060 n)

end

end A102391.P13751566045444119079

namespace A102391

/-- `n*(1-A010060(n))` -/
def P13751566045444119079.Spec : Prop :=
  ∀ n, P13751566045444119079.a n = A102391 n

end A102391

/-! ## A102391.P7073952505892484549

`n*(2-A001285(n))`
-/

namespace A102391.P7073952505892484549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A001285 n)

end

end A102391.P7073952505892484549

namespace A102391

/-- `n*(2-A001285(n))` -/
def P7073952505892484549.Spec : Prop :=
  ∀ n, P7073952505892484549.a n = A102391 n

end A102391

/-! ## A102391.P15861240397881609305

`n*A254651(2*n)`
-/

namespace A102391.P15861240397881609305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A254651 (2 * n)

end

end A102391.P15861240397881609305

namespace A102391

/-- `n*A254651(2*n)` -/
def P15861240397881609305.Spec : Prop :=
  ∀ n, P15861240397881609305.a n = A102391 n

end A102391

/-! ## A102391.P14655745299410680793

`and(n, A101671(n)-1)`
-/

namespace A102391.P14655745299410680793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A101671 n - 1)

end

end A102391.P14655745299410680793

namespace A102391

/-- `and(n, A101671(n)-1)` -/
def P14655745299410680793.Spec : Prop :=
  ∀ n, P14655745299410680793.a n = A102391 n

end A102391

/-! ## A102391.P10399684769081988629

`and(n, A268726(n)-1)`
-/

namespace A102391.P10399684769081988629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A268726 n - 1)

end

end A102391.P10399684769081988629

namespace A102391

/-- `and(n, A268726(n)-1)` -/
def P10399684769081988629.Spec : Prop :=
  ∀ n, P10399684769081988629.a n = A102391 n

end A102391

/-! ## A102391.P17927627471636897086

`and(n, 1-A277822(n))`
-/

namespace A102391.P17927627471636897086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A277822 n)

end

end A102391.P17927627471636897086

namespace A102391

/-- `and(n, 1-A277822(n))` -/
def P17927627471636897086.Spec : Prop :=
  ∀ n, P17927627471636897086.a n = A102391 n

end A102391

/-!
# A102392: Odious numbers in odious places.

The programs for A102392, the canonical program `A102392.P6267888131439325102` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102392 has offset 0).

The definition of A102392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102392.P6267888131439325102

`n*A010060(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102392

/-- `n*A010060(n)` -/
def P6267888131439325102.Spec : Prop :=
  ∀ n, P6267888131439325102.a n = A102392 n

theorem P6267888131439325102.correct : P6267888131439325102.Spec := by
  intro n
  simp only [A102392]

end A102392

/-! ## A102392.P1390647996735625319

`n*char[xor(n, Δ[n²])]`
-/

namespace A102392.P1390647996735625319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102392.P1390647996735625319

namespace A102392

/-- `n*char[xor(n, Δ[n²])]` -/
def P1390647996735625319.Spec : Prop :=
  ∀ n, (P1390647996735625319.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P2768387074653517417

`n*char[comp[xor(n, 2*n)]]`
-/

namespace A102392.P2768387074653517417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = n then 1 else 0)

end

end A102392.P2768387074653517417

namespace A102392

/-- `n*char[comp[xor(n, 2*n)]]` -/
def P2768387074653517417.Spec : Prop :=
  ∀ n, (P2768387074653517417.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P9160468280571008760

`and(n, -char[xor(n, Δ[n²])])`
-/

namespace A102392.P9160468280571008760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A102392.P9160468280571008760

namespace A102392

/-- `and(n, -char[xor(n, Δ[n²])])` -/
def P9160468280571008760.Spec : Prop :=
  ∀ n, P9160468280571008760.a n = A102392 n

end A102392

/-! ## A102392.P14714242396485638047

`n*(1-char[xor(n, 2*n)])`
-/

namespace A102392.P14714242396485638047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A102392.P14714242396485638047

namespace A102392

/-- `n*(1-char[xor(n, 2*n)])` -/
def P14714242396485638047.Spec : Prop :=
  ∀ n, P14714242396485638047.a n = A102392 n

end A102392

/-! ## A102392.P17564275074280574431

`n*xor(1, char[xor(n, 2*n)])`
-/

namespace A102392.P17564275074280574431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A102392.P17564275074280574431

namespace A102392

/-- `n*xor(1, char[xor(n, 2*n)])` -/
def P17564275074280574431.Spec : Prop :=
  ∀ n, (P17564275074280574431.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P10446216269205869948

`n*comp[xor(n, 2*n+1)]%2`
-/

namespace A102392.P10446216269205869948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2)

end

end A102392.P10446216269205869948

namespace A102392

/-- `n*comp[xor(n, 2*n+1)]%2` -/
def P10446216269205869948.Spec : Prop :=
  ∀ n, (P10446216269205869948.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P2143493138569002568

`C(n, a(and(n, n-1))+n-1)` with `a(0)=0`
-/

namespace A102392.P2143493138569002568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose n ((a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ) + ((n : ℤ) - 1)).toNat

end

end A102392.P2143493138569002568

namespace A102392

/-- `C(n, a(and(n, n-1))+n-1)` -/
def P2143493138569002568.Spec : Prop :=
  ∀ n, (P2143493138569002568.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P12393776552699617445

`C(n-a(and(n, n-1)), n-1)` with `a(0)=0`
-/

namespace A102392.P12393776552699617445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ((n : ℤ) - (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ)).toNat ((n : ℤ) - 1).toNat

end

end A102392.P12393776552699617445

namespace A102392

/-- `C(n-a(and(n, n-1)), n-1)` -/
def P12393776552699617445.Spec : Prop :=
  ∀ n, (P12393776552699617445.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P3862304658020260480

`n-A102391(n)`
-/

namespace A102392.P3862304658020260480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102391 n

end

end A102392.P3862304658020260480

namespace A102392

/-- `n-A102391(n)` -/
def P3862304658020260480.Spec : Prop :=
  ∀ n, P3862304658020260480.a n = A102392 n

end A102392

/-! ## A102392.P10122040458631092343

`lcm(n, A101671(n))`
-/

namespace A102392.P10122040458631092343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A101671 n)

end

end A102392.P10122040458631092343

namespace A102392

/-- `lcm(n, A101671(n))` -/
def P10122040458631092343.Spec : Prop :=
  ∀ n, (P10122040458631092343.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P5887595824197166151

`n*log2(A001285(n))`
-/

namespace A102392.P5887595824197166151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (A001285 n : ℝ)

end

end A102392.P5887595824197166151

namespace A102392

/-- `n*log2(A001285(n))` -/
def P5887595824197166151.Spec : Prop :=
  ∀ n, P5887595824197166151.a n = (A102392 n : ℝ)

end A102392

/-! ## A102392.P11145830785332068722

`n*(1-A010059(n))`
-/

namespace A102392.P11145830785332068722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A010059 n)

end

end A102392.P11145830785332068722

namespace A102392

/-- `n*(1-A010059(n))` -/
def P11145830785332068722.Spec : Prop :=
  ∀ n, P11145830785332068722.a n = A102392 n

end A102392

/-! ## A102392.P8965712850566337588

`n*A254379(2*n)`
-/

namespace A102392.P8965712850566337588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A254379 (2 * n)

end

end A102392.P8965712850566337588

namespace A102392

/-- `n*A254379(2*n)` -/
def P8965712850566337588.Spec : Prop :=
  ∀ n, P8965712850566337588.a n = A102392 n

end A102392

/-! ## A102392.P3251235505672507675

`n*A316828(2*n)`
-/

namespace A102392.P3251235505672507675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316828 (2 * n)

end

end A102392.P3251235505672507675

namespace A102392

/-- `n*A316828(2*n)` -/
def P3251235505672507675.Spec : Prop :=
  ∀ n, P3251235505672507675.a n = A102392 n

end A102392

/-! ## A102392.P12531207034454212134

`n*A000120(n)%2`
-/

namespace A102392.P12531207034454212134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A000120 n) 2

end

end A102392.P12531207034454212134

namespace A102392

/-- `n*A000120(n)%2` -/
def P12531207034454212134.Spec : Prop :=
  ∀ n, P12531207034454212134.a n = A102392 n

end A102392

/-! ## A102392.P17984650311444607139

`n*val(A283475(n), 2)`
-/

namespace A102392.P17984650311444607139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A283475 n).toNat 2

end

end A102392.P17984650311444607139

namespace A102392

/-- `n*val(A283475(n), 2)` -/
def P17984650311444607139.Spec : Prop :=
  ∀ n, (P17984650311444607139.a n : ℤ) = A102392 n

end A102392

/-! ## A102392.P1905199875521223992

`n*val(A365810(n), 2)`
-/

namespace A102392.P1905199875521223992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A365810 n).toNat 2

end

end A102392.P1905199875521223992

namespace A102392

/-- `n*val(A365810(n), 2)` -/
def P1905199875521223992.Spec : Prop :=
  ∀ n, (P1905199875521223992.a n : ℤ) = A102392 n

end A102392

/-!
# A102393: A wicked evil sequence.

The programs for A102393, the canonical program `A102393.P2823819576195353877` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102393 has offset 0).

The definition of A102393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102393.P2823819576195353877

`(n+1)*(1+(-1)^A000120(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102393

/-- `(n+1)*(1+(-1)^A000120(n))/2` -/
def P2823819576195353877.Spec : Prop :=
  ∀ n, P2823819576195353877.a n = (A102393 n : ℚ)

end A102393

/-! ## A102393.P14830493573605826621

`(n+1)*char[xor(n, 2*n)]`
-/

namespace A102393.P14830493573605826621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A102393.P14830493573605826621

namespace A102393

/-- `(n+1)*char[xor(n, 2*n)]` -/
def P14830493573605826621.Spec : Prop :=
  ∀ n, (P14830493573605826621.a n : ℤ) = A102393 n

end A102393

/-! ## A102393.P17560061781988805300

`ceil(char[xor(n, 2*n)]/acot(n))`
-/

namespace A102393.P17560061781988805300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

end

end A102393.P17560061781988805300

namespace A102393

/-- `ceil(char[xor(n, 2*n)]/acot(n))` -/
def P17560061781988805300.Spec : Prop :=
  ∀ n, P17560061781988805300.a n = A102393 n

end A102393

/-! ## A102393.P4266315765716974252

`and(n+1, -char[xor(n, n+n)])`
-/

namespace A102393.P4266315765716974252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A102393.P4266315765716974252

namespace A102393

/-- `and(n+1, -char[xor(n, n+n)])` -/
def P4266315765716974252.Spec : Prop :=
  ∀ n, P4266315765716974252.a n = A102393 n

end A102393

/-! ## A102393.P18407087693815815199

`or(n, -char[xor(n, Δ[n²])])+1`
-/

namespace A102393.P18407087693815815199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) + 1

end

end A102393.P18407087693815815199

namespace A102393

/-- `or(n, -char[xor(n, Δ[n²])])+1` -/
def P18407087693815815199.Spec : Prop :=
  ∀ n, P18407087693815815199.a n = A102393 n

end A102393

/-! ## A102393.P5179845987495322413

`(n+1)*comp[xor(n, 2*n)]%2`
-/

namespace A102393.P5179845987495322413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2)

end

end A102393.P5179845987495322413

namespace A102393

/-- `(n+1)*comp[xor(n, 2*n)]%2` -/
def P5179845987495322413.Spec : Prop :=
  ∀ n, (P5179845987495322413.a n : ℤ) = A102393 n

end A102393

/-! ## A102393.P18217964379229896904

`(n+1)*and(1, comp[xor(n, 2*n)])`
-/

namespace A102393.P18217964379229896904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102393.P18217964379229896904

namespace A102393

/-- `(n+1)*and(1, comp[xor(n, 2*n)])` -/
def P18217964379229896904.Spec : Prop :=
  ∀ n, (P18217964379229896904.a n : ℤ) = A102393 n

end A102393

/-! ## A102393.P12905975488861468272

`abs(xor(n, -1)*char[xor(n, 2*n)])`
-/

namespace A102393.P12905975488861468272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)|

end

end A102393.P12905975488861468272

namespace A102393

/-- `abs(xor(n, -1)*char[xor(n, 2*n)])` -/
def P12905975488861468272.Spec : Prop :=
  ∀ n, P12905975488861468272.a n = A102393 n

end A102393

/-! ## A102393.P2431117839012653210

`-xor(n, -1)*char[xor(n, 2*n)]`
-/

namespace A102393.P2431117839012653210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A102393.P2431117839012653210

namespace A102393

/-- `-xor(n, -1)*char[xor(n, 2*n)]` -/
def P2431117839012653210.Spec : Prop :=
  ∀ n, P2431117839012653210.a n = A102393 n

end A102393

/-! ## A102393.P10218619353940913639

`lcm(n+1, 1-char[xor(n, Δ[n²])])`
-/

namespace A102393.P10218619353940913639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A102393.P10218619353940913639

namespace A102393

/-- `lcm(n+1, 1-char[xor(n, Δ[n²])])` -/
def P10218619353940913639.Spec : Prop :=
  ∀ n, (P10218619353940913639.a n : ℤ) = A102393 n

end A102393

/-! ## A102393.P2164506311872484044

`1-A102394(n)+n`
-/

namespace A102393.P2164506311872484044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A102394 n + (n : ℤ)

end

end A102393.P2164506311872484044

namespace A102393

/-- `1-A102394(n)+n` -/
def P2164506311872484044.Spec : Prop :=
  ∀ n, P2164506311872484044.a n = A102393 n

end A102393

/-! ## A102393.P620825613222899010

`(n+1)*A010059(n)`
-/

namespace A102393.P620825613222899010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010059 n

end

end A102393.P620825613222899010

namespace A102393

/-- `(n+1)*A010059(n)` -/
def P620825613222899010.Spec : Prop :=
  ∀ n, P620825613222899010.a n = A102393 n

end A102393

/-! ## A102393.P10421117277055269045

`C(A106400(n)+n, n)`
-/

namespace A102393.P10421117277055269045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106400 n + (n : ℤ)).toNat n

end

end A102393.P10421117277055269045

namespace A102393

/-- `C(A106400(n)+n, n)` -/
def P10421117277055269045.Spec : Prop :=
  ∀ n, (P10421117277055269045.a n : ℤ) = A102393 n

end A102393

/-! ## A102393.P7964589477338425704

`(n+1)*char[A038556(n)]`
-/

namespace A102393.P7964589477338425704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102393.P7964589477338425704

namespace A102393

/-- `(n+1)*char[A038556(n)]` -/
def P7964589477338425704.Spec : Prop :=
  ∀ n, (P7964589477338425704.a n : ℤ) = A102393 n

end A102393

/-! ## A102393.P4478060331190651979

`(n+1)*char[A048724(n)]`
-/

namespace A102393.P4478060331190651979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102393.P4478060331190651979

namespace A102393

/-- `(n+1)*char[A048724(n)]` -/
def P4478060331190651979.Spec : Prop :=
  ∀ n, (P4478060331190651979.a n : ℤ) = A102393 n

end A102393

/-! ## A102393.P7563858039332973494

`(n+1)*(1-A010060(n))`
-/

namespace A102393.P7563858039332973494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A010060 n)

end

end A102393.P7563858039332973494

namespace A102393

/-- `(n+1)*(1-A010060(n))` -/
def P7563858039332973494.Spec : Prop :=
  ∀ n, P7563858039332973494.a n = A102393 n

end A102393

/-! ## A102393.P13828147827048214365

`(n+1)*(2-A001285(n))`
-/

namespace A102393.P13828147827048214365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A001285 n)

end

end A102393.P13828147827048214365

namespace A102393

/-- `(n+1)*(2-A001285(n))` -/
def P13828147827048214365.Spec : Prop :=
  ∀ n, P13828147827048214365.a n = A102393 n

end A102393

/-! ## A102393.P1773663302737472775

`(n+1)*A254651(2*n)`
-/

namespace A102393.P1773663302737472775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254651 (2 * n)

end

end A102393.P1773663302737472775

namespace A102393

/-- `(n+1)*A254651(2*n)` -/
def P1773663302737472775.Spec : Prop :=
  ∀ n, P1773663302737472775.a n = A102393 n

end A102393

/-! ## A102393.P16540942247001187391

`(n+1)*A228495(Δ[n²])`
-/

namespace A102393.P16540942247001187391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A228495 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102393.P16540942247001187391

namespace A102393

/-- `(n+1)*A228495(Δ[n²])` -/
def P16540942247001187391.Spec : Prop :=
  ∀ n, P16540942247001187391.a n = A102393 n

end A102393

/-! ## A102393.P12928152022169667933

`(n+1)*Δ[A341121(n)]²`
-/

namespace A102393.P12928152022169667933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A102393.P12928152022169667933

namespace A102393

/-- `(n+1)*Δ[A341121(n)]²` -/
def P12928152022169667933.Spec : Prop :=
  ∀ n, P12928152022169667933.a n = A102393 n

end A102393

/-!
# A102394: A wicked odious sequence.

The programs for A102394, the canonical program `A102394.P7384347515423375254` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102394 has offset 0).

The definition of A102394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102394.P7384347515423375254

`(n+1)*(1-(-1)^A000120(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102394

/-- `(n+1)*(1-(-1)^A000120(n))/2` -/
def P7384347515423375254.Spec : Prop :=
  ∀ n, P7384347515423375254.a n = (A102394 n : ℚ)

end A102394

/-! ## A102394.P10705993472537888529

`(n+1)*char[xor(n, Δ[n²])]`
-/

namespace A102394.P10705993472537888529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102394.P10705993472537888529

namespace A102394

/-- `(n+1)*char[xor(n, Δ[n²])]` -/
def P10705993472537888529.Spec : Prop :=
  ∀ n, (P10705993472537888529.a n : ℤ) = A102394 n

end A102394

/-! ## A102394.P7833669435335167715

`(n+1)*char[comp[xor(n, 2*n)]]`
-/

namespace A102394.P7833669435335167715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = n then 1 else 0)

end

end A102394.P7833669435335167715

namespace A102394

/-- `(n+1)*char[comp[xor(n, 2*n)]]` -/
def P7833669435335167715.Spec : Prop :=
  ∀ n, (P7833669435335167715.a n : ℤ) = A102394 n

end A102394

/-! ## A102394.P11549899712271088353

`and(n+1, -char[xor(n, Δ[n²])])`
-/

namespace A102394.P11549899712271088353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A102394.P11549899712271088353

namespace A102394

/-- `and(n+1, -char[xor(n, Δ[n²])])` -/
def P11549899712271088353.Spec : Prop :=
  ∀ n, P11549899712271088353.a n = A102394 n

end A102394

/-! ## A102394.P6464091295657021463

`-xor(n, -1)*char[xor(n, Δ[n²])]`
-/

namespace A102394.P6464091295657021463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A102394.P6464091295657021463

namespace A102394

/-- `-xor(n, -1)*char[xor(n, Δ[n²])]` -/
def P6464091295657021463.Spec : Prop :=
  ∀ n, P6464091295657021463.a n = A102394 n

end A102394

/-! ## A102394.P2387051440729273865

`(n+1)*(1-char[xor(n, 2*n)])`
-/

namespace A102394.P2387051440729273865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A102394.P2387051440729273865

namespace A102394

/-- `(n+1)*(1-char[xor(n, 2*n)])` -/
def P2387051440729273865.Spec : Prop :=
  ∀ n, P2387051440729273865.a n = A102394 n

end A102394

/-! ## A102394.P1977491478229919665

`(comp[xor(n, 2*n)]+3)%(n+2)`
-/

namespace A102394.P1977491478229919665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3) % (n + 2)

end

end A102394.P1977491478229919665

namespace A102394

/-- `(comp[xor(n, 2*n)]+3)%(n+2)` -/
def P1977491478229919665.Spec : Prop :=
  ∀ n, (P1977491478229919665.a n : ℤ) = A102394 n

end A102394

/-! ## A102394.P16680429396490211412

`(n+1)*C(2, a(and(n, n-1)))` with `a(0)=0`
-/

namespace A102394.P16680429396490211412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1) * Nat.choose 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A102394.P16680429396490211412

namespace A102394

/-- `(n+1)*C(2, a(and(n, n-1)))` -/
def P16680429396490211412.Spec : Prop :=
  ∀ n, (P16680429396490211412.a n : ℤ) = A102394 n

end A102394

/-! ## A102394.P3321068105253789850

`C(n+1, a(and(n, n-1))+n)` with `a(0)=0`
-/

namespace A102394.P3321068105253789850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (n + 1) (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + n)

end

end A102394.P3321068105253789850

namespace A102394

/-- `C(n+1, a(and(n, n-1))+n)` -/
def P3321068105253789850.Spec : Prop :=
  ∀ n, (P3321068105253789850.a n : ℤ) = A102394 n

end A102394

/-! ## A102394.P2902376303747679311

`(n+1)%(char[xor(n, 2*n+1)]+n+1)`
-/

namespace A102394.P2902376303747679311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A102394.P2902376303747679311

namespace A102394

/-- `(n+1)%(char[xor(n, 2*n+1)]+n+1)` -/
def P2902376303747679311.Spec : Prop :=
  ∀ n, (P2902376303747679311.a n : ℤ) = A102394 n

end A102394

/-! ## A102394.P13157390578188857596

`and(n+1, comp[xor(n, 2*n)]-(2*n+1))`
-/

namespace A102394.P13157390578188857596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (2 * n + 1 : ℤ))

end

end A102394.P13157390578188857596

namespace A102394

/-- `and(n+1, comp[xor(n, 2*n)]-(2*n+1))` -/
def P13157390578188857596.Spec : Prop :=
  ∀ n, P13157390578188857596.a n = A102394 n

end A102394

/-! ## A102394.P10370318101783487253

`1-A102393(n)+n`
-/

namespace A102394.P10370318101783487253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A102393 n + (n : ℤ)

end

end A102394.P10370318101783487253

namespace A102394

/-- `1-A102393(n)+n` -/
def P10370318101783487253.Spec : Prop :=
  ∀ n, P10370318101783487253.a n = A102394 n

end A102394

/-! ## A102394.P16075743149397618255

`(n+1)*A010060(n)`
-/

namespace A102394.P16075743149397618255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010060 n

end

end A102394.P16075743149397618255

namespace A102394

/-- `(n+1)*A010060(n)` -/
def P16075743149397618255.Spec : Prop :=
  ∀ n, P16075743149397618255.a n = A102394 n

end A102394

/-! ## A102394.P15305739413544757192

`(n+1)*log2(A001285(n))`
-/

namespace A102394.P15305739413544757192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (A001285 n : ℝ)

end

end A102394.P15305739413544757192

namespace A102394

/-- `(n+1)*log2(A001285(n))` -/
def P15305739413544757192.Spec : Prop :=
  ∀ n, P15305739413544757192.a n = (A102394 n : ℝ)

end A102394

/-! ## A102394.P15513574060756898823

`(n+1)*(1-A010059(n))`
-/

namespace A102394.P15513574060756898823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A010059 n)

end

end A102394.P15513574060756898823

namespace A102394

/-- `(n+1)*(1-A010059(n))` -/
def P15513574060756898823.Spec : Prop :=
  ∀ n, P15513574060756898823.a n = A102394 n

end A102394

/-! ## A102394.P11560039427785719945

`(n+1)*A254379(2*n)`
-/

namespace A102394.P11560039427785719945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254379 (2 * n)

end

end A102394.P11560039427785719945

namespace A102394

/-- `(n+1)*A254379(2*n)` -/
def P11560039427785719945.Spec : Prop :=
  ∀ n, P11560039427785719945.a n = A102394 n

end A102394

/-! ## A102394.P16360732595595314626

`(n+1)*A316828(2*n)`
-/

namespace A102394.P16360732595595314626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316828 (2 * n)

end

end A102394.P16360732595595314626

namespace A102394

/-- `(n+1)*A316828(2*n)` -/
def P16360732595595314626.Spec : Prop :=
  ∀ n, P16360732595595314626.a n = A102394 n

end A102394

/-! ## A102394.P5906816272126063243

`(n+1)*A000120(n)%2`
-/

namespace A102394.P5906816272126063243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000120 n) 2

end

end A102394.P5906816272126063243

namespace A102394

/-- `(n+1)*A000120(n)%2` -/
def P5906816272126063243.Spec : Prop :=
  ∀ n, P5906816272126063243.a n = A102394 n

end A102394

/-! ## A102394.P15219971727609747402

`(n+1)*A254377(Δ[n²])`
-/

namespace A102394.P15219971727609747402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102394.P15219971727609747402

namespace A102394

/-- `(n+1)*A254377(Δ[n²])` -/
def P15219971727609747402.Spec : Prop :=
  ∀ n, P15219971727609747402.a n = A102394 n

end A102394

/-! ## A102394.P18324424647605515019

`(n+1)*Δ[A341120(n)]²`
-/

namespace A102394.P18324424647605515019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A102394.P18324424647605515019

namespace A102394

/-- `(n+1)*Δ[A341120(n)]²` -/
def P18324424647605515019.Spec : Prop :=
  ∀ n, P18324424647605515019.a n = A102394 n

end A102394

/-!
# A102395: A mod 2 related Jacobsthal sequence.

The programs for A102395, the canonical program `A102395.P9889113456198764165` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102395 has offset 0).

The definition of A102395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102395.P9889113456198764165

`A078008(∑[∑{e}[xor(n, -n), 2-#]])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102395

/-- `A078008(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P9889113456198764165.Spec : Prop :=
  ∀ n, P9889113456198764165.a n = A102395 n

theorem P9889113456198764165.correct : P9889113456198764165.Spec := by
  intro n
  simp only [A102395]

end A102395

/-! ## A102395.P118773651107416379

`A078008(n-∑[∑{e}[and(n, -n), #]])`
-/

namespace A102395.P118773651107416379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102395.P118773651107416379

namespace A102395

/-- `A078008(n-∑[∑{e}[and(n, -n), #]])` -/
def P118773651107416379.Spec : Prop :=
  ∀ n, P118773651107416379.a n = A102395 n

end A102395

/-! ## A102395.P12347651638557811552

`A048896(n-1)-a(and(n, n-1))` with `a(0)=1`
-/

namespace A102395.P12347651638557811552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048896 (n - 1) - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A102395.P12347651638557811552

namespace A102395

/-- `A048896(n-1)-a(and(n, n-1))` -/
def P12347651638557811552.Spec : Prop :=
  ∀ n, P12347651638557811552.a n = A102395 n

end A102395

/-! ## A102395.P15728533727382395999

`A078008(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A102395.P15728533727382395999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A102395.P15728533727382395999

namespace A102395

/-- `A078008(∑[1-∑{e}[or(n, -n), #]]-1)` -/
def P15728533727382395999.Spec : Prop :=
  ∀ n, P15728533727382395999.a n = A102395 n

end A102395

/-! ## A102395.P6635416932373167420

`A153772(∑[∑{e}[xor(n, -n), 2-#]])+2`
-/

namespace A102395.P6635416932373167420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A102395.P6635416932373167420

namespace A102395

/-- `A153772(∑[∑{e}[xor(n, -n), 2-#]])+2` -/
def P6635416932373167420.Spec : Prop :=
  ∀ n, P6635416932373167420.a n = A102395 n

end A102395

/-! ## A102395.P2592054933281521388

`A068639(2^∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A102395.P2592054933281521388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A102395.P2592054933281521388

namespace A102395

/-- `A068639(2^∑[∑{e}[xor(n, -n), 2-#]])` -/
def P2592054933281521388.Spec : Prop :=
  ∀ n, P2592054933281521388.a n = A102395 n

end A102395

/-! ## A102395.P500030165919820034

`A153772(∑[1-∑{e}[or(n, -n), #]]-1)+2`
-/

namespace A102395.P500030165919820034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat + 2

end

end A102395.P500030165919820034

namespace A102395

/-- `A153772(∑[1-∑{e}[or(n, -n), #]]-1)+2` -/
def P500030165919820034.Spec : Prop :=
  ∀ n, P500030165919820034.a n = A102395 n

end A102395

/-! ## A102395.P3255293452280783345

`A078008(val(n+1, 2)+n-∑[val(n+1, 2)])`
-/

namespace A102395.P3255293452280783345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A102395.P3255293452280783345

namespace A102395

/-- `A078008(val(n+1, 2)+n-∑[val(n+1, 2)])` -/
def P3255293452280783345.Spec : Prop :=
  ∀ n, P3255293452280783345.a n = A102395 n

end A102395

/-! ## A102395.P4709665138482675049

`A008611(A038573(n))`
-/

namespace A102395.P4709665138482675049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A038573 n).toNat

end

end A102395.P4709665138482675049

namespace A102395

/-- `A008611(A038573(n))` -/
def P4709665138482675049.Spec : Prop :=
  ∀ n, P4709665138482675049.a n = A102395 n

end A102395

/-! ## A102395.P2161166336042080675

`A068639(A001316(n))`
-/

namespace A102395.P2161166336042080675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (A001316 n).toNat

end

end A102395.P2161166336042080675

namespace A102395

/-- `A068639(A001316(n))` -/
def P2161166336042080675.Spec : Prop :=
  ∀ n, P2161166336042080675.a n = A102395 n

end A102395

/-! ## A102395.P9206724328406043713

`A078008(A000120(n))`
-/

namespace A102395.P9206724328406043713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A000120 n).toNat

end

end A102395.P9206724328406043713

namespace A102395

/-- `A078008(A000120(n))` -/
def P9206724328406043713.Spec : Prop :=
  ∀ n, P9206724328406043713.a n = A102395 n

end A102395

/-! ## A102395.P9046593435798027046

`A068639(A038573(n)+1)`
-/

namespace A102395.P9046593435798027046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (A038573 n + 1).toNat

end

end A102395.P9046593435798027046

namespace A102395

/-- `A068639(A038573(n)+1)` -/
def P9046593435798027046.Spec : Prop :=
  ∀ n, P9046593435798027046.a n = A102395 n

end A102395

/-! ## A102395.P14837744856001783956

`A008611(A001316(n)-1)`
-/

namespace A102395.P14837744856001783956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n - 1).toNat

end

end A102395.P14837744856001783956

namespace A102395

/-- `A008611(A001316(n)-1)` -/
def P14837744856001783956.Spec : Prop :=
  ∀ n, P14837744856001783956.a n = A102395 n

end A102395

/-! ## A102395.P11261971444518886293

`A106400(n)+A102396(n)`
-/

namespace A102395.P11261971444518886293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n + A102396 n

end

end A102395.P11261971444518886293

namespace A102395

/-- `A106400(n)+A102396(n)` -/
def P11261971444518886293.Spec : Prop :=
  ∀ n, P11261971444518886293.a n = A102395 n

end A102395

/-! ## A102395.P17046652329950256201

`A001316(n)-2*A102396(n)`
-/

namespace A102395.P17046652329950256201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - 2 * A102396 n

end

end A102395.P17046652329950256201

namespace A102395

/-- `A001316(n)-2*A102396(n)` -/
def P17046652329950256201.Spec : Prop :=
  ∀ n, P17046652329950256201.a n = A102395 n

end A102395

/-! ## A102395.P108044510788158397

`A008611(A073138(n)/A080100(n))`
-/

namespace A102395.P108044510788158397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A073138 n : ℚ) / (A080100 n : ℚ))).toNat

end

end A102395.P108044510788158397

namespace A102395

/-- `A008611(A073138(n)/A080100(n))` -/
def P108044510788158397.Spec : Prop :=
  ∀ n, P108044510788158397.a n = A102395 n

end A102395

/-! ## A102395.P17661658460220881159

`A008611(A048896(2*n)-1)`
-/

namespace A102395.P17661658460220881159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A048896 (2 * n) - 1).toNat

end

end A102395.P17661658460220881159

namespace A102395

/-- `A008611(A048896(2*n)-1)` -/
def P17661658460220881159.Spec : Prop :=
  ∀ n, P17661658460220881159.a n = A102395 n

end A102395

/-! ## A102395.P9466147027540995046

`A102396(2*n+1)-A102396(n)`
-/

namespace A102395.P9466147027540995046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102396 (2 * n + 1) - A102396 n

end

end A102395.P9466147027540995046

namespace A102395

/-- `A102396(2*n+1)-A102396(n)` -/
def P9466147027540995046.Spec : Prop :=
  ∀ n, P9466147027540995046.a n = A102395 n

end A102395

/-! ## A102395.P11271656665850981728

`A008611(A102563(A000079(A000120(2*n+1))))`
-/

namespace A102395.P11271656665850981728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A102563 (A000079 (A000120 (2 * n + 1)).toNat).toNat).toNat

end

end A102395.P11271656665850981728

namespace A102395

/-- `A008611(A102563(A000079(A000120(2*n+1))))` -/
def P11271656665850981728.Spec : Prop :=
  ∀ n, P11271656665850981728.a n = A102395 n

end A102395

/-! ## A102395.P5539956940465792117

`A074722(A160713(n))`
-/

namespace A102395.P5539956940465792117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074722 (A160713 n).toNat

end

end A102395.P5539956940465792117

namespace A102395

/-- `A074722(A160713(n))` -/
def P5539956940465792117.Spec : Prop :=
  ∀ n, P5539956940465792117.a n = A102395 n

end A102395

/-!
# A102396: A mod 2 related Jacobsthal sequence.

The programs for A102396, the canonical program `A102396.P11203045017586188520` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102396 has offset 0).

The definition of A102396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102396.P13954376326758168798

`round(2^∑[∑{e}[xor(n, -n), 2-#]]/3)`
-/

namespace A102396.P13954376326758168798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) / 3)

end

end A102396.P13954376326758168798

namespace A102396

/-- `round(2^∑[∑{e}[xor(n, -n), 2-#]]/3)` -/
def P13954376326758168798.Spec : Prop :=
  ∀ n, P13954376326758168798.a n = A102396 n

end A102396

/-! ## A102396.P11495437527543957484

`round(∏[2^∑{e}[xor(n, -n), 2-#]]/3)`
-/

namespace A102396.P11495437527543957484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j) / 3)

end

end A102396.P11495437527543957484

namespace A102396

/-- `round(∏[2^∑{e}[xor(n, -n), 2-#]]/3)` -/
def P11495437527543957484.Spec : Prop :=
  ∀ n, P11495437527543957484.a n = A102396 n

end A102396

/-! ## A102396.P11203045017586188520

`ceil(A038573(n)/3)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102396

/-- `ceil(A038573(n)/3)` -/
def P11203045017586188520.Spec : Prop :=
  ∀ n, P11203045017586188520.a n = A102396 n

theorem P11203045017586188520.correct : P11203045017586188520.Spec := by
  intro n
  simp only [A102396]

end A102396

/-! ## A102396.P2750648073700697705

`round(A001316(n)/3)`
-/

namespace A102396.P2750648073700697705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001316 n : ℚ) / 3)

end

end A102396.P2750648073700697705

namespace A102396

/-- `round(A001316(n)/3)` -/
def P2750648073700697705.Spec : Prop :=
  ∀ n, P2750648073700697705.a n = A102396 n

end A102396

/-! ## A102396.P2654175114105428572

`round(A071051(n)/6)`
-/

namespace A102396.P2654175114105428572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071051 n : ℚ) / 6)

end

end A102396.P2654175114105428572

namespace A102396

/-- `round(A071051(n)/6)` -/
def P2654175114105428572.Spec : Prop :=
  ∀ n, P2654175114105428572.a n = A102396 n

end A102396

/-! ## A102396.P4150487087792835723

`round(A167275(n)/6)`
-/

namespace A102396.P4150487087792835723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A167275 n : ℚ) / 6)

end

end A102396.P4150487087792835723

namespace A102396

/-- `round(A167275(n)/6)` -/
def P4150487087792835723.Spec : Prop :=
  ∀ n, P4150487087792835723.a n = A102396 n

end A102396

/-! ## A102396.P4334681201962713473

`round(A267447(n)/6)`
-/

namespace A102396.P4334681201962713473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A267447 n : ℚ) / 6)

end

end A102396.P4334681201962713473

namespace A102396

/-- `round(A267447(n)/6)` -/
def P4334681201962713473.Spec : Prop :=
  ∀ n, P4334681201962713473.a n = A102396 n

end A102396

/-! ## A102396.P5222270229751480604

`round(A160713(n)/9)`
-/

namespace A102396.P5222270229751480604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A160713 n : ℚ) / 9)

end

end A102396.P5222270229751480604

namespace A102396

/-- `round(A160713(n)/9)` -/
def P5222270229751480604.Spec : Prop :=
  ∀ n, P5222270229751480604.a n = A102396 n

end A102396

/-! ## A102396.P2692947318559087247

`round(A256257(n)/18)`
-/

namespace A102396.P2692947318559087247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A256257 n : ℚ) / 18)

end

end A102396.P2692947318559087247

namespace A102396

/-- `round(A256257(n)/18)` -/
def P2692947318559087247.Spec : Prop :=
  ∀ n, P2692947318559087247.a n = A102396 n

end A102396

/-! ## A102396.P13336090875611929108

`round(sqrt(A102376(n))/3)`
-/

namespace A102396.P13336090875611929108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A102376 n : ℝ) / 3)

end

end A102396.P13336090875611929108

namespace A102396

/-- `round(sqrt(A102376(n))/3)` -/
def P13336090875611929108.Spec : Prop :=
  ∀ n, P13336090875611929108.a n = A102396 n

end A102396

/-! ## A102396.P13398911677409975106

`A001045(A000120(n))`
-/

namespace A102396.P13398911677409975106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A000120 n).toNat

end

end A102396.P13398911677409975106

namespace A102396

/-- `A001045(A000120(n))` -/
def P13398911677409975106.Spec : Prop :=
  ∀ n, P13398911677409975106.a n = A102396 n

end A102396

/-! ## A102396.P8381622242188003940

`A008611(A001316(n))`
-/

namespace A102396.P8381622242188003940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n).toNat

end

end A102396.P8381622242188003940

namespace A102396

/-- `A008611(A001316(n))` -/
def P8381622242188003940.Spec : Prop :=
  ∀ n, P8381622242188003940.a n = A102396 n

end A102396

/-! ## A102396.P5729215411121834797

`A068639(A038573(n))`
-/

namespace A102396.P5729215411121834797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (A038573 n).toNat

end

end A102396.P5729215411121834797

namespace A102396

/-- `A068639(A038573(n))` -/
def P5729215411121834797.Spec : Prop :=
  ∀ n, P5729215411121834797.a n = A102396 n

end A102396

/-! ## A102396.P10478063890420152838

`A083206(A160713(n))`
-/

namespace A102396.P10478063890420152838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A160713 n).toNat

end

end A102396.P10478063890420152838

namespace A102396

/-- `A083206(A160713(n))` -/
def P10478063890420152838.Spec : Prop :=
  ∀ n, P10478063890420152838.a n = A102396 n

end A102396

/-! ## A102396.P8240841009025631019

`A002264(A001316(n)+1)`
-/

namespace A102396.P8240841009025631019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001316 n + 1).toNat

end

end A102396.P8240841009025631019

namespace A102396

/-- `A002264(A001316(n)+1)` -/
def P8240841009025631019.Spec : Prop :=
  ∀ n, P8240841009025631019.a n = A102396 n

end A102396

/-! ## A102396.P843631962691332163

`A008611(A038573(n)+1)`
-/

namespace A102396.P843631962691332163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A038573 n + 1).toNat

end

end A102396.P843631962691332163

namespace A102396

/-- `A008611(A038573(n)+1)` -/
def P843631962691332163.Spec : Prop :=
  ∀ n, P843631962691332163.a n = A102396 n

end A102396

/-! ## A102396.P12410075058996957241

`A068639(A001316(n)-1)`
-/

namespace A102396.P12410075058996957241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (A001316 n - 1).toNat

end

end A102396.P12410075058996957241

namespace A102396

/-- `A068639(A001316(n)-1)` -/
def P12410075058996957241.Spec : Prop :=
  ∀ n, P12410075058996957241.a n = A102396 n

end A102396

/-! ## A102396.P7926018654578813754

`A102395(n)-A106400(n)`
-/

namespace A102396.P7926018654578813754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102395 n - A106400 n

end

end A102396.P7926018654578813754

namespace A102396

/-- `A102395(n)-A106400(n)` -/
def P7926018654578813754.Spec : Prop :=
  ∀ n, P7926018654578813754.a n = A102396 n

end A102396

/-! ## A102396.P2165353478051016514

`A110654(n)-A102563(n)`
-/

namespace A102396.P2165353478051016514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A102563 n

end

end A102396.P2165353478051016514

namespace A102396

/-- `A110654(n)-A102563(n)` -/
def P2165353478051016514.Spec : Prop :=
  ∀ n, P2165353478051016514.a n = A102396 n

end A102396

/-! ## A102396.P14687345978390350700

`A008611(abs(1-A038573(n)))`
-/

namespace A102396.P14687345978390350700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 |1 - A038573 n|.toNat

end

end A102396.P14687345978390350700

namespace A102396

/-- `A008611(abs(1-A038573(n)))` -/
def P14687345978390350700.Spec : Prop :=
  ∀ n, P14687345978390350700.a n = A102396 n

end A102396

/-!
# A102397: a(n) = concatenation of first n elements of Thue-Morse sequence A010059.

The programs for A102397, the canonical program `A102397.P15234207466118283205` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102397 has offset 0).

The definition of A102397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102397.P10042141610653234220

`char[xor(n, 2*n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A102397.P10042141610653234220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 10 * a (n - 1)

end

end A102397.P10042141610653234220

namespace A102397

/-- `char[xor(n, 2*n)]+10*a(n-1)` -/
def P10042141610653234220.Spec : Prop :=
  ∀ n, (P10042141610653234220.a n : ℤ) = A102397 n

end A102397

/-! ## A102397.P5363390893854532229

`or(10*a(n-1), char[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A102397.P5363390893854532229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A102397.P5363390893854532229

namespace A102397

/-- `or(10*a(n-1), char[xor(n, 2*n)])` -/
def P5363390893854532229.Spec : Prop :=
  ∀ n, (P5363390893854532229.a n : ℤ) = A102397 n

end A102397

/-! ## A102397.P15802843001686403426

`xor(10*a(n-1), char[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A102397.P15802843001686403426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (10 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A102397.P15802843001686403426

namespace A102397

/-- `xor(10*a(n-1), char[xor(n, 2*n)])` -/
def P15802843001686403426.Spec : Prop :=
  ∀ n, (P15802843001686403426.a n : ℤ) = A102397 n

end A102397

/-! ## A102397.P15234207466118283205

`A010059(n)+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102397

/-- `A010059(n)+10*a(n-1)` -/
def P15234207466118283205.Spec : Prop :=
  ∀ n, P15234207466118283205.a n = A102397 n

theorem P15234207466118283205.correct : P15234207466118283205.Spec := by
  intro n
  simp only [A102397]

end A102397

/-! ## A102397.P13549957276984330976

`xor(10*a(n-1), 1-A010060(n))` with `a(0)=1`
-/

namespace A102397.P13549957276984330976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (1 - A010060 n)

end

end A102397.P13549957276984330976

namespace A102397

/-- `xor(10*a(n-1), 1-A010060(n))` -/
def P13549957276984330976.Spec : Prop :=
  ∀ n, P13549957276984330976.a n = A102397 n

end A102397

/-!
# A102398: A permutation of the positive integers where a(2n-1) is smallest positive integer not previously in the sequence, a(2n) is A102399(n)th smallest positive integer not yet in the sequence, where sequence A102399 is this sequence's inverse permutation.

The programs for A102398, there is no canonical definition to state claims against.
-/

/-! ## A102398.P14314124501306846311

`A118317(n+1)-A010051(A160463(n+1))`
-/

namespace A102398.P14314124501306846311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118317 (n + 1) - A010051 (A160463 (n + 1)).toNat

end

end A102398.P14314124501306846311

/-! ## A102398.P571171258865434083

`A118317(n+1)-A010054(A147576(n+3))`
-/

namespace A102398.P571171258865434083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118317 (n + 1) - A010054 (A147576 (n + 3)).toNat

end

end A102398.P571171258865434083

/-! ## A102398.P8674391608632695426

`A118317(n+1)+A088194(A264399(3*n+2))`
-/

namespace A102398.P8674391608632695426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118317 (n + 1) + A088194 (A264399 (3 * n + 2)).toNat

end

end A102398.P8674391608632695426

/-!
# A102399: Inverse permutation to sequence A102398.

The programs for A102399, there is no canonical definition to state claims against.
-/

/-! ## A102399.P5815824781146601140

`A118318(n+1)-and(2, A185274(n+1))`
-/

namespace A102399.P5815824781146601140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118318 (n + 1) - Int.land 2 (A185274 (n + 1))

end

end A102399.P5815824781146601140

