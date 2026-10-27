import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A377902: First differences of A377898.

The programs for A377902, the canonical program `A377902.P10934479624454164712` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377902 has offset 1).

The definition of A377902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377902.P10934479624454164712

`Δ[comp[(n%2)^n*A002808(n+1)]]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A377902

/-- `Δ[comp[(n%2)^n*A002808(n+1)]]` -/
def P10934479624454164712.Spec : Prop :=
  ∀ n, P10934479624454164712.a n = A377902 (n + 1)

theorem P10934479624454164712.correct : P10934479624454164712.Spec := by
  intro n
  simp only [A377902, Nat.add_sub_cancel]

end A377902

/-! ## A377902.P6859980765431151980

`Δ[lt[A377900(n+1), A121053(n+1)]]`
-/

namespace A377902.P6859980765431151980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377900 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121053 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A377902.P6859980765431151980

namespace A377902

/-- `Δ[lt[A377900(n+1), A121053(n+1)]]` -/
def P6859980765431151980.Spec : Prop :=
  ∀ n, P6859980765431151980.a n = A377902 (n + 1)

end A377902

/-! ## A377902.P1165319382241208340

`Δ[∪[A018252(2*(n+2)), A008578(n+1)]]`
-/

namespace A377902.P1165319382241208340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A377902.P1165319382241208340

namespace A377902

/-- `Δ[∪[A018252(2*(n+2)), A008578(n+1)]]` -/
def P1165319382241208340.Spec : Prop :=
  ∀ n, P1165319382241208340.a n = A377902 (n + 1)

end A377902

/-! ## A377902.P365858001285305414

`Δ[∪[A002808(2*n+3), A008578(n+1)]]`
-/

namespace A377902.P365858001285305414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A377902.P365858001285305414

namespace A377902

/-- `Δ[∪[A002808(2*n+3), A008578(n+1)]]` -/
def P365858001285305414.Spec : Prop :=
  ∀ n, P365858001285305414.a n = A377902 (n + 1)

end A377902

/-! ## A377902.P12882533749643676069

`Δ[A377898(n+1)]`
-/

namespace A377902.P12882533749643676069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377902.P12882533749643676069

namespace A377902

/-- `Δ[A377898(n+1)]` -/
def P12882533749643676069.Spec : Prop :=
  ∀ n, P12882533749643676069.a n = A377902 (n + 1)

end A377902

/-! ## A377902.P16735815177720401911

`Δ[record[A377898(A133310(n))]]`
-/

namespace A377902.P16735815177720401911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377898 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377902.P16735815177720401911

namespace A377902

/-- `Δ[record[A377898(A133310(n))]]` -/
def P16735815177720401911.Spec : Prop :=
  ∀ n, P16735815177720401911.a n = A377902 (n + 1)

end A377902

/-! ## A377902.P6593594939414024707

`A377898(n+2)-A377898(n+1)`
-/

namespace A377902.P6593594939414024707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377898 (n + 2) - A377898 (n + 1)

end

end A377902.P6593594939414024707

namespace A377902

/-- `A377898(n+2)-A377898(n+1)` -/
def P6593594939414024707.Spec : Prop :=
  ∀ n, P6593594939414024707.a n = A377902 (n + 1)

end A377902

/-! ## A377902.P17585315851979127576

`A070228(A377898(n+2)%A377898(n+1))`
-/

namespace A377902.P17585315851979127576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070228 (Int.tmod (A377898 (n + 2)) (A377898 (n + 1))).toNat

end

end A377902.P17585315851979127576

namespace A377902

/-- `A070228(A377898(n+2)%A377898(n+1))` -/
def P17585315851979127576.Spec : Prop :=
  ∀ n, P17585315851979127576.a n = A377902 (n + 1)

end A377902

/-!
# A377903: Indices of records in A302656.

The programs for A377903, there is no canonical definition to state claims against.
-/

/-! ## A377903.P4827644254711396838

`A190220(A126741(n+1)+n+1)`
-/

namespace A377903.P4827644254711396838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (A126741 (n + 1) + (n + 1 : ℤ)).toNat

end

end A377903.P4827644254711396838

/-! ## A377903.P11508287840344059971

`lt[A014482(A118371(2*(n+2))), A014482(n)]`
-/

namespace A377903.P11508287840344059971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014482 (A118371 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377903.P11508287840344059971

/-!
# A377904: Index of 2*10^((10^n-1)/9) - 1 in A302656, or -1 if that number never appears there.

The programs for A377904, there is no canonical definition to state claims against.
-/

/-! ## A377904.P17200416553830292091

`A377908(n)+A377906(n)`
-/

namespace A377904.P17200416553830292091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377908 n + A377906 n

end

end A377904.P17200416553830292091

/-! ## A377904.P3292104010154902957

`A377908(n)+eq[1, A376769(n+1)]+1`
-/

namespace A377904.P3292104010154902957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377908 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A377904.P3292104010154902957

/-!
# A377905: Irregular triangle read by rows: T(n,k) (n >= 0, k >= 0, T[n,k]>0) is the total number of occurrences of the digit k in terms 0 to n of A329447.

The programs for A377905, there is no canonical definition to state claims against.
-/

/-! ## A377905.P16569158545003267709

`A116452(A359811(n+1))`
-/

namespace A377905.P16569158545003267709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116452 (A359811 (n + 1)).toNat

end

end A377905.P16569158545003267709

/-! ## A377905.P7205071295293007241

`A358134(gcd(A000169(n+1), A000984(n)))`
-/

namespace A377905.P7205071295293007241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (Int.gcd (A000169 (n + 1)) (A000984 n))

end

end A377905.P7205071295293007241

/-!
# A377906: Index of 10^n in A302656, or -1 if 10^n does not appear in A302656.

The programs for A377906, there is no canonical definition to state claims against.
-/

/-! ## A377906.P6381416392160608187

`eq[1, A376769(n+1)]+1`
-/

namespace A377906.P6381416392160608187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377906.P6381416392160608187

/-! ## A377906.P2417763930459083927

`eq[A054977(n), A376769(A028310(n))]`
-/

namespace A377906.P2417763930459083927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377906.P2417763930459083927

/-! ## A377906.P14079000767772919625

`eq[A158388(n), A376769(A028310(n))]`
-/

namespace A377906.P14079000767772919625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377906.P14079000767772919625

/-! ## A377906.P13567283566148243989

`A377904(n)-A377908(n)`
-/

namespace A377906.P13567283566148243989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377904 n - A377908 n

end

end A377906.P13567283566148243989

/-!
# A377907: Number of digits in A376769.

The programs for A377907, there is no canonical definition to state claims against.
-/

/-! ## A377907.P3671757982516828370

`∑{digits}[A376769(n+1), A014482(#)]`
-/

namespace A377907.P3671757982516828370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014482 x).sum

end

end A377907.P3671757982516828370

/-! ## A377907.P7390650269247088791

`∑{digits}[A376769(n+1), A133880(#)]`
-/

namespace A377907.P7390650269247088791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A133880 x).sum

end

end A377907.P7390650269247088791

/-! ## A377907.P10746780083632219120

`∑{digits}[A376769(n+1), A294775(#)]`
-/

namespace A377907.P10746780083632219120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A294775 x).sum

end

end A377907.P10746780083632219120

/-! ## A377907.P4528014211601328860

`A055642(A376769(n+1))`
-/

namespace A377907.P4528014211601328860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A376769 (n + 1)).toNat

end

end A377907.P4528014211601328860

/-! ## A377907.P10383802193816980766

`∑{digits}[∑{digits}[A302656(n+1), #], A014482(#)]`
-/

namespace A377907.P10383802193816980766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302656 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014482 x).sum

end

end A377907.P10383802193816980766

/-!
# A377908: Difference between index of 10^n in A302656 and in A376769.

The programs for A377908, there is no canonical definition to state claims against.
-/

/-! ## A377908.P13371312219122780346

`A377904(n)-A377906(n)`
-/

namespace A377908.P13371312219122780346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377904 n - A377906 n

end

end A377908.P13371312219122780346

/-! ## A377908.P12554797491102588931

`A061395(A355380(n)+A002349(2*n+1))`
-/

namespace A377908.P12554797491102588931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A355380 n + A002349 (2 * n + 1)).toNat

end

end A377908.P12554797491102588931

/-!
# A377911: Indices of the 1's in the digit stream A376771.

The programs for A377911, there is no canonical definition to state claims against.
-/

/-! ## A377911.P7525493737043925374

`eq[1, A376771(n+1)]+1`
-/

namespace A377911.P7525493737043925374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377911.P7525493737043925374

/-! ## A377911.P7153970352086979542

`eq[1, A376771(A000038(n)+n)]`
-/

namespace A377911.P7153970352086979542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376771 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377911.P7153970352086979542

/-! ## A377911.P3077348949002429255

`eq[1, A376771(or(n, A000038(n)))]`
-/

namespace A377911.P3077348949002429255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376771 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377911.P3077348949002429255

/-! ## A377911.P782762495376696847

`eq[A054977(n), A376771(A028310(n))]`
-/

namespace A377911.P782762495376696847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376771 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377911.P782762495376696847

/-!
# A377912: Numbers such that every even digit except the last is immediately followed by a strictly larger digit.

The programs for A377912, there is no canonical definition to state claims against.
-/

/-! ## A377912.P193216754020224939

`A342042(A377916(n+1))`
-/

namespace A377912.P193216754020224939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (A377916 (n + 1)).toNat

end

end A377912.P193216754020224939

/-! ## A377912.P1443448473527901042

`comp[A347298(n+1)]`
-/

namespace A377912.P1443448473527901042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377912.P1443448473527901042

/-! ## A377912.P4584415834846261420

`lt[0, char[A342042(n+1)]]`
-/

namespace A377912.P4584415834846261420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377912.P4584415834846261420

/-! ## A377912.P14372885603584922944

`eq[char[A342042(n+1)], A059841(2*n)]`
-/

namespace A377912.P14372885603584922944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A377912.P14372885603584922944

/-! ## A377912.P17900665453533938777

`eq[char[A347298(n+1)], A007814(2*n+3)]`
-/

namespace A377912.P17900665453533938777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347298 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A377912.P17900665453533938777

/-!
# A377913: Records in A342042.

The programs for A377913, there is no canonical definition to state claims against.
-/

/-! ## A377913.P6853144655970053408

`record[A342042(n+1)]`
-/

namespace A377913.P6853144655970053408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377913.P6853144655970053408

/-! ## A377913.P17487773847479175111

`A342042(A377914(n+1))`
-/

namespace A377913.P17487773847479175111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (A377914 (n + 1)).toNat

end

end A377913.P17487773847479175111

/-! ## A377913.P605192590266401202

`A377912(record[A377915(n+1)])`
-/

namespace A377913.P605192590266401202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377912 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A377913.P605192590266401202

/-! ## A377913.P1828587831050311274

`eq[A035930(n), A351142(n+1)]`
-/

namespace A377913.P1828587831050311274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377913.P1828587831050311274

/-! ## A377913.P9031935357183612926

`eq[A056967(n), A351142(n+1)]`
-/

namespace A377913.P9031935357183612926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377913.P9031935357183612926

/-!
# A377914: Indices of records in A342042.

The programs for A377914, there is no canonical definition to state claims against.
-/

/-! ## A377914.P4071019278392993998

`A377916(record[A377915(n+1)])`
-/

namespace A377914.P4071019278392993998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377916 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A377914.P4071019278392993998

/-! ## A377914.P15805710730288714209

`lt[A096995(n)-2, 4]+1`
-/

namespace A377914.P15805710730288714209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096995 n - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377914.P15805710730288714209

/-! ## A377914.P9211105306621309927

`∑[A335465(∑[A185236(n)])]`
-/

namespace A377914.P9211105306621309927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377914.P9211105306621309927

/-! ## A377914.P4740590706142543613

`lt[∏{p}[A112471(n), #], A001597(n+1)]`
-/

namespace A377914.P4740590706142543613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112471 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A377914.P4740590706142543613

/-! ## A377914.P17842020158140998904

`lt[A017877(3*n+4), A001223(3*(n+1))]+1`
-/

namespace A377914.P17842020158140998904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A377914.P17842020158140998904

/-!
# A377916: Inverse permutation to A377915.

The programs for A377916, there is no canonical definition to state claims against.
-/

/-! ## A377916.P8901671683663407855

`lt[A317631(A116861(n+1)), A326031(2*n+1)]`
-/

namespace A377916.P8901671683663407855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317631 (A116861 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377916.P8901671683663407855

/-! ## A377916.P1506939489124550036

`lt[A217757(A116861(n+1)), A375738(2*n+1)]`
-/

namespace A377916.P1506939489124550036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217757 (A116861 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377916.P1506939489124550036

/-! ## A377916.P17515213290439687871

`lt[A180989(A250120(n+4)), A169942(3*n+2)]`
-/

namespace A377916.P17515213290439687871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180989 (A250120 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377916.P17515213290439687871

/-! ## A377916.P10718044304989639602

`lt[A342042(n+1), 28]+1`
-/

namespace A377916.P10718044304989639602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377916.P10718044304989639602

/-! ## A377916.P14306034453983229550

`A227177(A379362(2*(n+1))+A227327(n+1))`
-/

namespace A377916.P14306034453983229550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A379362 (2 * (n + 1)) + A227327 (n + 1)).toNat

end

end A377916.P14306034453983229550

/-!
# A377917: Number of n-digit terms in A377912.

The programs for A377917, there is no canonical definition to state claims against.
-/

/-! ## A377917.P10058238927562056997

`Δ[A377918(n+1)]`
-/

namespace A377917.P10058238927562056997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377917.P10058238927562056997

/-! ## A377917.P9199892334030475817

`A377918(n+2)-A377918(n+1)`
-/

namespace A377917.P9199892334030475817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377918 (n + 2) - A377918 (n + 1)

end

end A377917.P9199892334030475817

/-!
# A377918: a(n) = index in A377912 (or, equally, in A342042) of the first n-digit term.

The programs for A377918, there is no canonical definition to state claims against.
-/

/-! ## A377918.P3296143151226292115

`A377917(n)+a(n-1)` with `a(0)=1`
-/

namespace A377918.P3296143151226292115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377917 n + a (n - 1)

end

end A377918.P3296143151226292115

/-!
# A377919: a(0) = 0; thereafter a(n) is the lexicographically earliest missing nonnegative integer such that the digits in the sequence (ignoring the commas) alternate in parity.

The programs for A377919, there is no canonical definition to state claims against.
-/

/-! ## A377919.P2131571013909549920

`A112867(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A377919.P2131571013909549920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A112867 (a (n - 1)).toNat

end

end A377919.P2131571013909549920

/-!
# A377921: Number of 3-connected Schnyder labelings with n inner faces in the quadrangular dissection, whose outer white vertices are non-isolated.

The programs for A377921, there is no canonical definition to state claims against.
-/

/-! ## A377921.P2880376184960232447

`A094365(A005246(n))`
-/

namespace A377921.P2880376184960232447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094365 (A005246 n).toNat

end

end A377921.P2880376184960232447

/-! ## A377921.P4120748021899461400

`A027870(2*A293993(n))`
-/

namespace A377921.P4120748021899461400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (2 * A293993 n).toNat

end

end A377921.P4120748021899461400

/-! ## A377921.P5513676619893069263

`A377922(n)+A104515(A015128(n))`
-/

namespace A377921.P5513676619893069263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377922 n + A104515 (A015128 n).toNat

end

end A377921.P5513676619893069263

/-! ## A377921.P17464923324002509910

`A194959(A006627(n+1))-A249351(n+1)`
-/

namespace A377921.P17464923324002509910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A006627 (n + 1)).toNat - A249351 (n + 1)

end

end A377921.P17464923324002509910

/-! ## A377921.P749799537939421783

`A091245(A181796(2*(n+1))+A115981(n))`
-/

namespace A377921.P749799537939421783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A181796 (2 * (n + 1)) + A115981 n).toNat

end

end A377921.P749799537939421783

/-!
# A377922: Number of polyhedral orientations with n inner vertices.

The programs for A377922, there is no canonical definition to state claims against.
-/

/-! ## A377922.P3463083537249405963

`A344987(A165530(n))`
-/

namespace A377922.P3463083537249405963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344987 (A165530 n).toNat

end

end A377922.P3463083537249405963

/-! ## A377922.P10405326059801567903

`xor(1, A273190(A068870(n)))`
-/

namespace A377922.P10405326059801567903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A273190 (A068870 n).toNat)

end

end A377922.P10405326059801567903

/-! ## A377922.P12337694111374611450

`A377923(∑[A264591(n+1)])`
-/

namespace A377922.P12337694111374611450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377923 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377922.P12337694111374611450

/-! ## A377922.P16629472687482190827

`A377923(∑[A000045(floor(n/3))])`
-/

namespace A377922.P16629472687482190827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377923 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377922.P16629472687482190827

/-! ## A377922.P2057197195892020952

`A066247(n+1)+round(Δ[A010364(n+1)/7])`
-/

namespace A377922.P2057197195892020952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010364 (n + 1) : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A377922.P2057197195892020952

/-!
# A377923: Number of corner polyhedra graphs of order n.

The programs for A377923, there is no canonical definition to state claims against.
-/

/-! ## A377923.P416618205041804441

`ogf((-x+2x^2+2x^4+2x^5+3x^6+3x^7)/(-1+2x+3x^2))`
-/

namespace A377923.P416618205041804441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 0, -2, -2, -3, -3] [1, -2, -3] n

end

end A377923.P416618205041804441

/-! ## A377923.P17976167368314364584

`(5*n²)%record[A184720(2*(n+2))]`
-/

namespace A377923.P17976167368314364584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * n ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A377923.P17976167368314364584

/-! ## A377923.P13764257427771138845

`2*a(n-1)+3*a(n-2)-A004526(n)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A377923.P13764257427771138845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 3] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - A004526 n

end

end A377923.P13764257427771138845

/-! ## A377923.P13081846290793709751

`2*a(n-1)+3*a(n-2)-A341132(n+3)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A377923.P13081846290793709751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 3] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - A341132 (n + 3)

end

end A377923.P13081846290793709751

/-!
# A377925: Records in A228407.

The programs for A377925, there is no canonical definition to state claims against.
-/

/-! ## A377925.P7802117309070713223

`record[A228407(n)]`
-/

namespace A377925.P7802117309070713223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377925.P7802117309070713223

/-! ## A377925.P5358875488153863978

`A228407(A377926(n+1))`
-/

namespace A377925.P5358875488153863978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228407 (A377926 (n + 1)).toNat

end

end A377925.P5358875488153863978

/-! ## A377925.P5365573647630701117

`record[A231928(n)]`
-/

namespace A377925.P5365573647630701117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377925.P5365573647630701117

/-! ## A377925.P10895487150140027289

`record[A231924(n)+A000122(n+2)]`
-/

namespace A377925.P10895487150140027289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231924 n + A000122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377925.P10895487150140027289

/-! ## A377925.P8031176481924630340

`record[A231926(comp[3*∑{d}[n+1, #]])]`
-/

namespace A377925.P8031176481924630340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f3 n), d)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231926 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377925.P8031176481924630340

/-!
# A377927: Numbers k such that 4^sigma(k) - k is a prime.

The programs for A377927, there is no canonical definition to state claims against.
-/

/-! ## A377927.P617291967653848321

`A250120(A072639(n))+A007590(n)`
-/

namespace A377927.P617291967653848321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A072639 n).toNat + A007590 n

end

end A377927.P617291967653848321

/-!
# A377929: Quasi-practical numbers: positive integers m such that every k <= sigma(m)-m is a sum of distinct proper divisors of m.

The programs for A377929, there is no canonical definition to state claims against.
-/

/-! ## A377929.P15387604618875982948

`∪[A000040(n+1), A005153(n+1)]`
-/

namespace A377929.P15387604618875982948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377929.P15387604618875982948

/-! ## A377929.P7407672500881630948

`∪[A005153(n+1), A006005(n+1)]`
-/

namespace A377929.P7407672500881630948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377929.P7407672500881630948

/-! ## A377929.P3442182024011615813

`∪[A005153(n+1), A008578(n+1)]`
-/

namespace A377929.P3442182024011615813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377929.P3442182024011615813

/-! ## A377929.P12432680675614389842

`∪[A005153(n+1), A046022(n+1)]`
-/

namespace A377929.P12432680675614389842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377929.P12432680675614389842

/-! ## A377929.P5779173903966385712

`∪[A005153(n+1), A053813(n+1)]`
-/

namespace A377929.P5779173903966385712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377929.P5779173903966385712

/-! ## A377929.P1192372638868070561

`∪[A174090(n+1), A005153(n+1)]`
-/

namespace A377929.P1192372638868070561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377929.P1192372638868070561

/-! ## A377929.P12660625650956219363

`∪[A005153(n+1), A005180(n+1)]`
-/

namespace A377929.P12660625650956219363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377929.P12660625650956219363

/-!
# A377930: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) = max(A007814(n), A007814(k)).

The programs for A377930, the canonical program `A377930.P17544471663374099892` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377930 has offset 1).

The definition of A377930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377930.P17544471663374099892

`val(A003990(n+1), 2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377930

/-- `val(A003990(n+1), 2)` -/
def P17544471663374099892.Spec : Prop :=
  ∀ n, (P17544471663374099892.a n : ℤ) = A377930 (n + 1)

theorem P17544471663374099892.correct : P17544471663374099892.Spec := by
  intro n
  simp only [A377930, Nat.add_sub_cancel]

end A377930

/-! ## A377930.P17513175413386430969

`val(A351962(n)+1, 2)`
-/

namespace A377930.P17513175413386430969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351962 n + 1).toNat 2

end

end A377930.P17513175413386430969

namespace A377930

/-- `val(A351962(n)+1, 2)` -/
def P17513175413386430969.Spec : Prop :=
  ∀ n, (P17513175413386430969.a n : ℤ) = A377930 (n + 1)

end A377930

/-! ## A377930.P16325639496452656417

`A007814(A003990(n+1))`
-/

namespace A377930.P16325639496452656417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003990 (n + 1)).toNat

end

end A377930.P16325639496452656417

namespace A377930

/-- `A007814(A003990(n+1))` -/
def P16325639496452656417.Spec : Prop :=
  ∀ n, P16325639496452656417.a n = A377930 (n + 1)

end A377930

/-! ## A377930.P9101596443544872744

`val(lcm(A128227(n), A257522(n+1)), 2)`
-/

namespace A377930.P9101596443544872744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm (A128227 n) (A257522 (n + 1))) 2

end

end A377930.P9101596443544872744

namespace A377930

/-- `val(lcm(A128227(n), A257522(n+1)), 2)` -/
def P9101596443544872744.Spec : Prop :=
  ∀ n, (P9101596443544872744.a n : ℤ) = A377930 (n + 1)

end A377930

/-! ## A377930.P14778111886194696198

`val(A109042(lt[0, A109042(n)]), 2)`
-/

namespace A377930.P14778111886194696198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A109042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)).toNat 2

end

end A377930.P14778111886194696198

namespace A377930

/-- `val(A109042(lt[0, A109042(n)]), 2)` -/
def P14778111886194696198.Spec : Prop :=
  ∀ n, (P14778111886194696198.a n : ℤ) = A377930 (n + 1)

end A377930

/-! ## A377930.P8088557559862366098

`val(A003983(n+1)*A217029(n+1), 2)`
-/

namespace A377930.P8088557559862366098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003983 (n + 1) * A217029 (n + 1)).toNat 2

end

end A377930.P8088557559862366098

namespace A377930

/-- `val(A003983(n+1)*A217029(n+1), 2)` -/
def P8088557559862366098.Spec : Prop :=
  ∀ n, (P8088557559862366098.a n : ℤ) = A377930 (n + 1)

end A377930

/-! ## A377930.P506624408544559166

`A254990(A355246(n))`
-/

namespace A377930.P506624408544559166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 (A355246 n).toNat

end

end A377930.P506624408544559166

namespace A377930

/-- `A254990(A355246(n))` -/
def P506624408544559166.Spec : Prop :=
  ∀ n, P506624408544559166.a n = A377930 (n + 1)

end A377930

/-! ## A377930.P6782446071138714384

`A007814(A355246(n)+1)`
-/

namespace A377930.P6782446071138714384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A355246 n + 1).toNat

end

end A377930.P6782446071138714384

namespace A377930

/-- `A007814(A355246(n)+1)` -/
def P6782446071138714384.Spec : Prop :=
  ∀ n, P6782446071138714384.a n = A377930 (n + 1)

end A377930

/-! ## A377930.P4581030997952834208

`val(A091256(n+1), 2)`
-/

namespace A377930.P4581030997952834208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091256 (n + 1)).toNat 2

end

end A377930.P4581030997952834208

namespace A377930

/-- `val(A091256(n+1), 2)` -/
def P4581030997952834208.Spec : Prop :=
  ∀ n, (P4581030997952834208.a n : ℤ) = A377930 (n + 1)

end A377930

/-! ## A377930.P744691023727561835

`A007814(A091256(n+1))`
-/

namespace A377930.P744691023727561835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A091256 (n + 1)).toNat

end

end A377930.P744691023727561835

namespace A377930

/-- `A007814(A091256(n+1))` -/
def P744691023727561835.Spec : Prop :=
  ∀ n, P744691023727561835.a n = A377930 (n + 1)

end A377930

/-!
# A377933: First differences of consecutive perfect powers m^k with k>=3 (A076467).

The programs for A377933, there is no canonical definition to state claims against.
-/

/-! ## A377933.P11618024788820953559

`A076467(n+2)-A076467(n+1)`
-/

namespace A377933.P11618024788820953559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 2) - A076467 (n + 1)

end

end A377933.P11618024788820953559

/-! ## A377933.P17875074046987070412

`Δ[∪[A097054(n+1), A340588(n+1)]]`
-/

namespace A377933.P17875074046987070412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A377933.P17875074046987070412

/-! ## A377933.P8931991899496642506

`Δ[A076467(n+1)]`
-/

namespace A377933.P8931991899496642506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377933.P8931991899496642506

/-! ## A377933.P1588284905303952794

`Δ[record[A245713(A304731(n+1))]]`
-/

namespace A377933.P1588284905303952794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A304731 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377933.P1588284905303952794

/-! ## A377933.P7670804160059025662

`Δ[record[A245713(A032742(n+1))]]`
-/

namespace A377933.P7670804160059025662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377933.P7670804160059025662

/-! ## A377933.P13222581709061412917

`Δ[record[A245713(A237593(n+1))]]`
-/

namespace A377933.P13222581709061412917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (A237593 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377933.P13222581709061412917

/-!
# A377934: a(n) is the number of perfect powers m^k with k>=3 (A076467) <= 10^n.

The programs for A377934, there is no canonical definition to state claims against.
-/

/-! ## A377934.P10521449421645715674

`A087158(A027559(n))`
-/

namespace A377934.P10521449421645715674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (A027559 n).toNat

end

end A377934.P10521449421645715674

/-! ## A377934.P17960097266336076975

`A087158(A135492(n))`
-/

namespace A377934.P17960097266336076975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (A135492 n).toNat

end

end A377934.P17960097266336076975

/-! ## A377934.P14658126666076565018

`A087158(A164191(n))`
-/

namespace A377934.P14658126666076565018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087158 (A164191 n).toNat

end

end A377934.P14658126666076565018

/-!
# A377936: Number of matchings in the complete planted binary tree with 2^n leaves.

The programs for A377936, there is no canonical definition to state claims against.
-/

/-! ## A377936.P459478148385789093

`A338293(n+1)+A338293(n)²`
-/

namespace A377936.P459478148385789093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338293 (n + 1) + A338293 n ^ 2

end

end A377936.P459478148385789093

/-!
# A377937: Number of primes in the interval [n - A000005(n), n + A000005(n)].

The programs for A377937, there is no canonical definition to state claims against.
-/

/-! ## A377937.P16870650697594086452

`A001222(A324156(3*(n+1))+A000203(2*n+3))`
-/

namespace A377937.P16870650697594086452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324156 (3 * (n + 1)) + A000203 (2 * n + 3)).toNat

end

end A377937.P16870650697594086452

/-!
# A377939: Nonsquares k such that A377938(k) is not a prime.

The programs for A377939, there is no canonical definition to state claims against.
-/

/-! ## A377939.P10077586136237061135

`lt[A353851(n), A048793(A046746(n))]`
-/

namespace A377939.P10077586136237061135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A046746 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377939.P10077586136237061135

/-!
# A377941: Triangle read by rows: T(n,k) = number of free polyominoes with n cells, where the maximum number of cells in any row or column is k.

The programs for A377941, there is no canonical definition to state claims against.
-/

/-! ## A377941.P9684081933336080183

`A333627(A211399(n)*A317791(n+1))`
-/

namespace A377941.P9684081933336080183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A211399 n * A317791 (n + 1)).toNat

end

end A377941.P9684081933336080183

/-! ## A377941.P6202672943965206145

`A191348(A082532(A298211(A001075(A191348(n)))))`
-/

namespace A377941.P6202672943965206145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191348 (A082532 (A298211 (A001075 (A191348 n).toNat).toNat).toNat).toNat

end

end A377941.P6202672943965206145

/-! ## A377941.P13481086832612395090

`A375766(3^A084938(n))`
-/

namespace A377941.P13481086832612395090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375766 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A084938 n : ℤ))).toNat

end

end A377941.P13481086832612395090

/-! ## A377941.P3260419956856554213

`A353847(A113081(n))%16`
-/

namespace A377941.P3260419956856554213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353847 (A113081 n).toNat) 16

end

end A377941.P3260419956856554213

/-! ## A377941.P4977558700257873335

`A279060(A282201(n)*A361957(n))`
-/

namespace A377941.P4977558700257873335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A282201 n * A361957 n).toNat

end

end A377941.P4977558700257873335

/-!
# A377942: Triangle read by rows: T(n,k) = number of free polyominoes with n cells, where the maximum number of collinear cell centers on any line in the plane is k.

The programs for A377942, there is no canonical definition to state claims against.
-/

/-! ## A377942.P6688962487592349866

`A001511(A342889(n))*A357638(n)`
-/

namespace A377942.P6688962487592349866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A342889 n).toNat * A357638 n

end

end A377942.P6688962487592349866

/-! ## A377942.P13022085776671076116

`A127321(A379638(n+1)^A122201(n))`
-/

namespace A377942.P13022085776671076116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (SequenceMachineLib.roundAway ((A379638 (n + 1) : ℚ) ^ (A122201 n : ℤ))).toNat

end

end A377942.P13022085776671076116

/-! ## A377942.P18405858475110995603

`A306595(A269946(n))`
-/

namespace A377942.P18405858475110995603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306595 (A269946 n).toNat

end

end A377942.P18405858475110995603

/-! ## A377942.P9176385462978921939

`and(A137536(A258829(n)), A258829(n))`
-/

namespace A377942.P9176385462978921939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137536 (A258829 n).toNat) (A258829 n)

end

end A377942.P9176385462978921939

/-! ## A377942.P15686604095715352957

`and(A008277(n+1), A019307(A084938(n)))`
-/

namespace A377942.P15686604095715352957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008277 (n + 1)) (A019307 (A084938 n).toNat)

end

end A377942.P15686604095715352957

/-!
# A377943: Cogrowth sequence of the 16-element Pauli group C4 o D4 = <S,T,U | s^4, T^2, U^2, S^2(TU)^2, [S,T], [S,U]>.

The programs for A377943, the canonical program `A377943.P419477848472387058` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377943 has offset 0).

The definition of A377943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377943.P5673301956334008625

`ogf((1-8x+x^2)/(1-9x-x^2+9x^3))`
-/

namespace A377943.P5673301956334008625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 1] [1, -9, -1, 9] n

end

end A377943.P5673301956334008625

namespace A377943

/-- `ogf((1-8x+x^2)/(1-9x-x^2+9x^3))` -/
def P5673301956334008625.Spec : Prop :=
  ∀ n, P5673301956334008625.a n = A377943 n

end A377943

/-! ## A377943.P419477848472387058

`or(1, A002452(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377943

/-- `or(1, A002452(n))` -/
def P419477848472387058.Spec : Prop :=
  ∀ n, P419477848472387058.a n = A377943 n

theorem P419477848472387058.correct : P419477848472387058.Spec := by
  intro n
  simp only [A377943]

end A377943

/-! ## A377943.P10411867854068742183

`or(1, A099583(2*n))`
-/

namespace A377943.P10411867854068742183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099583 (2 * n))

end

end A377943.P10411867854068742183

namespace A377943

/-- `or(1, A099583(2*n))` -/
def P10411867854068742183.Spec : Prop :=
  ∀ n, P10411867854068742183.a n = A377943 n

end A377943

/-! ## A377943.P5779292806742916847

`or(1, A152298(2*n))`
-/

namespace A377943.P5779292806742916847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152298 (2 * n))

end

end A377943.P5779292806742916847

namespace A377943

/-- `or(1, A152298(2*n))` -/
def P5779292806742916847.Spec : Prop :=
  ∀ n, P5779292806742916847.a n = A377943 n

end A377943

/-! ## A377943.P7432225120994706447

`or(1, ∑[A140429(n)²])`
-/

namespace A377943.P7432225120994706447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377943.P7432225120994706447

namespace A377943

/-- `or(1, ∑[A140429(n)²])` -/
def P7432225120994706447.Spec : Prop :=
  ∀ n, P7432225120994706447.a n = A377943 n

end A377943

/-! ## A377943.P17260156476807595768

`A002452(n)+A000035(n+1)`
-/

namespace A377943.P17260156476807595768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n + A000035 (n + 1)

end

end A377943.P17260156476807595768

namespace A377943

/-- `A002452(n)+A000035(n+1)` -/
def P17260156476807595768.Spec : Prop :=
  ∀ n, P17260156476807595768.a n = A377943 n

end A377943

/-!
# A377944: Cogrowth sequence of the 16-element dicyclic group Q16 = <S,T | S^8, T^4, (ST)^4, TST^3S>.

The programs for A377944, there is no canonical definition to state claims against.
-/

/-! ## A377944.P14840778184710205197

`and(-3, A003963(C(A000040(n+1), n)))`
-/

namespace A377944.P14840778184710205197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A003963 (Nat.choose (A000040 (n + 1)).toNat n))

end

end A377944.P14840778184710205197

/-! ## A377944.P17498840674862130063

`A333220(A371147(n)+ceil(2^(n-1)))`
-/

namespace A377944.P17498840674862130063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (A371147 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A377944.P17498840674862130063

/-!
# A377946: Cogrowth sequence of the 16-element group C2^2:C4 = <S,T | S^4, T^2, (ST)^2, (S^2T)^2>.

The programs for A377946, the canonical program `A377946.P16763880135453843413` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377946 has offset 0).

The definition of A377946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377946.P10300441616100874725

`A377883(n)+A038505(n)`
-/

namespace A377946.P10300441616100874725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377883 n + A038505 n

end

end A377946.P10300441616100874725

namespace A377946

/-- `A377883(n)+A038505(n)` -/
def P10300441616100874725.Spec : Prop :=
  ∀ n, P10300441616100874725.a n = A377946 n

theorem P10300441616100874725.correct : P10300441616100874725.Spec := by
  intro n
  simp only [A377946, Nat.add_sub_cancel, A377946.P10300441616100874725.a, A377946.P16763880135453843413.a, A038503, A038503.P6100478724578909006.a, A038505, A038505.P15386344615957042470.a, A377883, A377883.P11929721113300965405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377946

/-! ## A377946.P16763880135453843413

`A038503(n)²+A038505(n)²`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377946

/-- `A038503(n)²+A038505(n)²` -/
def P16763880135453843413.Spec : Prop :=
  ∀ n, P16763880135453843413.a n = A377946 n

theorem P16763880135453843413.correct : P16763880135453843413.Spec := by
  intro n
  simp only [A377946]

end A377946

/-! ## A377946.P313672170535443134

`A038518(n)²+A038519(n)²`
-/

namespace A377946.P313672170535443134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n ^ 2 + A038519 n ^ 2

end

end A377946.P313672170535443134

namespace A377946

/-- `A038518(n)²+A038519(n)²` -/
def P313672170535443134.Spec : Prop :=
  ∀ n, P313672170535443134.a n = A377946 n

end A377946

/-! ## A377946.P16647282638088401288

`A259549(A377714(n))`
-/

namespace A377946.P16647282638088401288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (A377714 n).toNat

end

end A377946.P16647282638088401288

namespace A377946

/-- `A259549(A377714(n))` -/
def P16647282638088401288.Spec : Prop :=
  ∀ n, P16647282638088401288.a n = A377946 n

end A377946

/-!
# A377948: Numbers that have at least 1 repeated decimal digit and whose decimal digits are nondecreasing as place value decreases.

The programs for A377948, there is no canonical definition to state claims against.
-/

/-! ## A377948.P18322997470391653028

`∩[A009994(n+1), A171901(n+1)]`
-/

namespace A377948.P18322997470391653028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377948.P18322997470391653028

/-! ## A377948.P3866009410385522609

`∩[A009994(n+1), A109303(n+1)]`
-/

namespace A377948.P3866009410385522609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377948.P3866009410385522609

/-! ## A377948.P1203340332192959730

`eq[A097601(n), A178788(n)]`
-/

namespace A377948.P1203340332192959730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377948.P1203340332192959730

/-! ## A377948.P6842880895570008478

`eq[A097601(n), A196368(n)]`
-/

namespace A377948.P6842880895570008478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377948.P6842880895570008478

/-! ## A377948.P7979786009033882895

`eq[A178788(n), A193581(n)]`
-/

namespace A377948.P7979786009033882895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377948.P7979786009033882895

/-! ## A377948.P3089785886987153375

`eq[A193581(n), A196368(n)]`
-/

namespace A377948.P3089785886987153375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377948.P3089785886987153375

/-! ## A377948.P3475175106405081629

`eq[A097601(n), A307651(n)]`
-/

namespace A377948.P3475175106405081629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377948.P3475175106405081629

/-! ## A377948.P8530849935068555036

`eq[A193581(n), A307651(n)]`
-/

namespace A377948.P8530849935068555036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377948.P8530849935068555036

/-!
# A377950: Numbers k that divide A057643(k) = lcm{d+1 : d|k}.

The programs for A377950, there is no canonical definition to state claims against.
-/

/-! ## A377950.P15877998924087286506

`record[gcd(n+1, A057643(n+1))]`
-/

namespace A377950.P15877998924087286506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057643 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377950.P15877998924087286506

/-!
# A377952: Numbers k that divide A084190(k) = lcm{d-1 : d > 1 and d|k}.

The programs for A377952, there is no canonical definition to state claims against.
-/

/-! ## A377952.P15869612032488478068

`A056954(lt[A198290(2*n+1), A056935(n)])`
-/

namespace A377952.P15869612032488478068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198290 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377952.P15869612032488478068

/-! ## A377952.P3539378720482034763

`∩[A056954(n+1), A151716(n+1)]`
-/

namespace A377952.P3539378720482034763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377952.P3539378720482034763

/-!
# A377954: a(n) = n! * Sum_{k=0..n} binomial(k+2,n-k) / k!.

The programs for A377954, there is no canonical definition to state claims against.
-/

/-! ## A377954.P233088075987795825

`A171895(A150777(n+1))`
-/

namespace A377954.P233088075987795825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171895 (A150777 (n + 1)).toNat

end

end A377954.P233088075987795825

/-! ## A377954.P3376300288999752721

`∑[A320296(A077168(2*(n+1)))]`
-/

namespace A377954.P3376300288999752721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320296 (A077168 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377954.P3376300288999752721

/-!
# A377955: a(n) = n! * Sum_{k=0..n} binomial(k+3,n-k) / k!.

The programs for A377955, there is no canonical definition to state claims against.
-/

/-! ## A377955.P4842754751166182527

`∑[A256265(A052910(n))]`
-/

namespace A377955.P4842754751166182527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256265 (A052910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377955.P4842754751166182527

/-!
# A377956: a(n) = n! * Sum_{k=0..n} binomial(k+4,n-k) / k!.

The programs for A377956, there is no canonical definition to state claims against.
-/

/-! ## A377956.P17833186297811538395

`A024811(A212166(2*n+1)+A001412(n))`
-/

namespace A377956.P17833186297811538395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024811 (A212166 (2 * n + 1) + A001412 n).toNat

end

end A377956.P17833186297811538395

/-!
# A377958: Expansion of e.g.f. exp(x - x^2)/(1 - x).

The programs for A377958, there is no canonical definition to state claims against.
-/

/-! ## A377958.P9795217154109693953

`A291149(n*(2*n-1))+n`
-/

namespace A377958.P9795217154109693953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 ((n : ℤ) * ((2 * n : ℤ) - 1)).toNat + (n : ℤ)

end

end A377958.P9795217154109693953

/-! ## A377958.P4457151555456717471

`n^∑{e}[A195899(n+1)+1, #]+1`
-/

namespace A377958.P4457151555456717471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195899 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + 1

end

end A377958.P4457151555456717471

/-!
# A377959: Expansion of e.g.f. exp(x - x^2)/(1 - x)^2.

The programs for A377959, there is no canonical definition to state claims against.
-/

/-! ## A377959.P12727753427618411897

`A001057(floor(Δ[e*n!])+1)+∑[n]`
-/

namespace A377959.P12727753427618411897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (⌊f1 (n + 1) - f1 n⌋ + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A377959.P12727753427618411897

/-! ## A377959.P10027332166576211718

`A008619(A001339(n))+∑[n]`
-/

namespace A377959.P10027332166576211718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001339 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A377959.P10027332166576211718

/-!
# A377960: Expansion of e.g.f. exp(x - x^2)/(1 - x)^3.

The programs for A377960, there is no canonical definition to state claims against.
-/

/-! ## A377960.P7713173332834904487

`A220520(A112844(n))+n`
-/

namespace A377960.P7713173332834904487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 (A112844 n).toNat + (n : ℤ)

end

end A377960.P7713173332834904487

/-!
# A377961: Lexicographically earliest sequence of distinct positive integers such that the successive digits of the odd and even bisections are pairwise distinct.

The programs for A377961, there is no canonical definition to state claims against.
-/

/-! ## A377961.P14032894177917012973

`A002033(Δ[A097876(n)])*A130571(n+1)`
-/

namespace A377961.P14032894177917012973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (f1 (n + 1) - f1 n).toNat * A130571 (n + 1)

end

end A377961.P14032894177917012973

/-! ## A377961.P632701286612332715

`A130571(n+1)%A062294(A177907(n+1))`
-/

namespace A377961.P632701286612332715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130571 (n + 1)) (A062294 (A177907 (n + 1)).toNat)

end

end A377961.P632701286612332715

/-! ## A377961.P1278144111285084144

`lcm(A057077(A376906(3*n+4)), A130571(n+1))`
-/

namespace A377961.P1278144111285084144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 (A376906 (3 * n + 4)).toNat) (A130571 (n + 1))

end

end A377961.P1278144111285084144

/-!
# A377963: Expansion of e.g.f. (1+x) * exp(x*(1+x)^2).

The programs for A377963, the canonical program `A377963.P15226023935025694717` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377963 has offset 0).

The definition of A377963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377963.P15226023935025694717

`a(n-1)+(4*n-3)*a(n-2)+3*(n-2)*n*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A377963

/-- `a(n-1)+(4*n-3)*a(n-2)+3*(n-2)*n*a(n-3)` -/
def P15226023935025694717.Spec : Prop :=
  ∀ n, P15226023935025694717.a n = A377963 n

theorem P15226023935025694717.correct : P15226023935025694717.Spec := by
  intro n
  simp only [A377963]

end A377963

/-!
# A377964: Expansion of e.g.f. (1+x) * exp(x*(1+x)^3).

The programs for A377964, there is no canonical definition to state claims against.
-/

/-! ## A377964.P7010034766285339845

`A285899(A149987(n))`
-/

namespace A377964.P7010034766285339845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285899 (A149987 n).toNat

end

end A377964.P7010034766285339845

/-!
# A377965: Expansion of e.g.f. (1+x)^2 * exp(x*(1+x)^2).

The programs for A377965, there is no canonical definition to state claims against.
-/

/-! ## A377965.P9301414081188968150

`A017666(A007526(n+1)-n²)`
-/

namespace A377965.P9301414081188968150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A007526 (n + 1) - (n ^ 2 : ℤ)).toNat

end

end A377965.P9301414081188968150

/-! ## A377965.P4277950527218795625

`A022998(A000522(n+1)-A002522(n))`
-/

namespace A377965.P4277950527218795625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A000522 (n + 1) - A002522 n).toNat

end

end A377965.P4277950527218795625

/-!
# A377966: Expansion of e.g.f. (1+x)^2 * exp(x*(1+x)^3).

The programs for A377966, there is no canonical definition to state claims against.
-/

/-! ## A377966.P11218857386236760807

`or(1, A020888(A093136(n)))`
-/

namespace A377966.P11218857386236760807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020888 (A093136 n).toNat)

end

end A377966.P11218857386236760807

/-!
# A377967: Expansion of e.g.f. (1+x)^3 * exp(x*(1+x)^3).

The programs for A377967, there is no canonical definition to state claims against.
-/

/-! ## A377967.P14957160090417380051

`∑[A074286(∏[A141832(n+1)])]`
-/

namespace A377967.P14957160090417380051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377967.P14957160090417380051

/-!
# A377972: a(n) is the greatest i such that 2n-prime(i) is also a prime, where prime(i) is the i-th prime.

The programs for A377972, there is no canonical definition to state claims against.
-/

/-! ## A377972.P3520719129029698725

`A000720(A020482(n+2))`
-/

namespace A377972.P3520719129029698725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020482 (n + 2)).toNat

end

end A377972.P3520719129029698725

/-! ## A377972.P1250169899191737820

`A324286(2*A020482(n+2))`
-/

namespace A377972.P1250169899191737820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324286 (2 * A020482 (n + 2)).toNat

end

end A377972.P1250169899191737820

/-! ## A377972.P6350725232531575626

`A378020(n+1)+A377758(n+2)`
-/

namespace A377972.P6350725232531575626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378020 (n + 1) + A377758 (n + 2)

end

end A377972.P6350725232531575626

/-! ## A377972.P8547130476325664251

`A036234(A020482(n+2)-1)`
-/

namespace A377972.P8547130476325664251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A020482 (n + 2) - 1).toNat

end

end A377972.P8547130476325664251

/-! ## A377972.P15813296833766895787

`A000720(A210957(2*n+3))`
-/

namespace A377972.P15813296833766895787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A210957 (2 * n + 3)).toNat

end

end A377972.P15813296833766895787

/-! ## A377972.P11663524181223004371

`A003963(2*A020482(n+2))`
-/

namespace A377972.P11663524181223004371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A020482 (n + 2)).toNat

end

end A377972.P11663524181223004371

/-! ## A377972.P9526060826950185929

`A056172(2*A020482(n+2))`
-/

namespace A377972.P9526060826950185929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A020482 (n + 2)).toNat

end

end A377972.P9526060826950185929

/-! ## A377972.P16361580653889813274

`A061395(A073046(n+2))`
-/

namespace A377972.P16361580653889813274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A073046 (n + 2)).toNat

end

end A377972.P16361580653889813274

/-! ## A377972.P12290829971267423744

`A061395(A084372(n+2))`
-/

namespace A377972.P12290829971267423744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A084372 (n + 2)).toNat

end

end A377972.P12290829971267423744

/-! ## A377972.P12670179123576525649

`A061395(A020482(n+2)²)`
-/

namespace A377972.P12670179123576525649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020482 (n + 2) ^ 2).toNat

end

end A377972.P12670179123576525649

/-! ## A377972.P12766850168538563002

`A066328(A020482(n+2)²)`
-/

namespace A377972.P12766850168538563002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A020482 (n + 2) ^ 2).toNat

end

end A377972.P12766850168538563002

/-!
# A377978: Total number of coronal tilings for a width one length n straight polyiamond with the T2 triangle.

The programs for A377978, there is no canonical definition to state claims against.
-/

/-! ## A377978.P5691198603337487874

`a(n-4)` with `a(0)=2, a(1)=2, a(2)=6, a(3)=11, a(4)=6`
-/

namespace A377978.P5691198603337487874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 6, 11, 6] fun n a =>
  a (n - 4)

end

end A377978.P5691198603337487874

/-! ## A377978.P12027465648281712406

`A222423(gcd(2, ∏{p}[n, #])+4^val(n+1, 4))`
-/

namespace A377978.P12027465648281712406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222423 (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) + 4 ^ SequenceMachineLib.valuation (n + 1) 4)

end

end A377978.P12027465648281712406

/-! ## A377978.P5116732395930013084

`A007684(A324504(n+1))`
-/

namespace A377978.P5116732395930013084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007684 (A324504 (n + 1)).toNat

end

end A377978.P5116732395930013084

/-! ## A377978.P4053496541459993505

`A098167(A324504(n+1)+1)`
-/

namespace A377978.P4053496541459993505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098167 (A324504 (n + 1) + 1).toNat

end

end A377978.P4053496541459993505

/-! ## A377978.P711883409564472291

`A373408(2*A324504(n+1))`
-/

namespace A377978.P711883409564472291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373408 (2 * A324504 (n + 1)).toNat

end

end A377978.P711883409564472291

/-!
# A377979: List of exponents in the expansion of (1 - q)*Sum_{n >= 0} q^(2*n*(n+1))*Product_{k >= 2*n+1} 1 - q^k.

The programs for A377979, the canonical program `A377979.P7080257391251934501` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377979 has offset 1).

The definition of A377979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377979.P7080257391251934501

`ceil(ceil(A135370(n+1)/2)/2)%(n+1)²`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377979

/-- `ceil(ceil(A135370(n+1)/2)/2)%(n+1)²` -/
def P7080257391251934501.Spec : Prop :=
  ∀ n, P7080257391251934501.a n = A377979 (n + 1)

theorem P7080257391251934501.correct : P7080257391251934501.Spec := by
  intro n
  simp only [A377979, Nat.add_sub_cancel]

end A377979

/-! ## A377979.P4607157067425784124

`floor((∑[C(A111701(n+1), n)+n+1]+1)/4)`
-/

namespace A377979.P4607157067425784124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111701 (n + 1)).toNat n + n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 4⌋

end

end A377979.P4607157067425784124

namespace A377979

/-- `floor((∑[C(A111701(n+1), n)+n+1]+1)/4)` -/
def P4607157067425784124.Spec : Prop :=
  ∀ n, P4607157067425784124.a n = A377979 (n + 1)

end A377979

/-! ## A377979.P9114817272017840403

`∪[A340648(n), A387355(n)]`
-/

namespace A377979.P9114817272017840403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377979.P9114817272017840403

namespace A377979

/-- `∪[A340648(n), A387355(n)]` -/
def P9114817272017840403.Spec : Prop :=
  ∀ n, (P9114817272017840403.a n : ℤ) = A377979 (n + 1)

end A377979

/-! ## A377979.P16324704202236922121

`record[A162609(n+1)-ceil(abs((1-n)/2))]`
-/

namespace A377979.P16324704202236922121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) - ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377979.P16324704202236922121

namespace A377979

/-- `record[A162609(n+1)-ceil(abs((1-n)/2))]` -/
def P16324704202236922121.Spec : Prop :=
  ∀ n, P16324704202236922121.a n = A377979 (n + 1)

end A377979

/-! ## A377979.P14613100217340061331

`record[lcm(ceil(n/2), A010815(n))]`
-/

namespace A377979.P14613100217340061331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℚ) / 2⌉ (A010815 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377979.P14613100217340061331

namespace A377979

/-- `record[lcm(ceil(n/2), A010815(n))]` -/
def P14613100217340061331.Spec : Prop :=
  ∀ n, (P14613100217340061331.a n : ℤ) = A377979 (n + 1)

end A377979

/-! ## A377979.P4048219432984547553

`record[A110654(lcm(n, A010815(n)))]`
-/

namespace A377979.P4048219432984547553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lcm (n : ℤ) (A010815 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377979.P4048219432984547553

namespace A377979

/-- `record[A110654(lcm(n, A010815(n)))]` -/
def P4048219432984547553.Spec : Prop :=
  ∀ n, P4048219432984547553.a n = A377979 (n + 1)

end A377979

/-! ## A377979.P13308759285614736009

`record[A307985(∑[n+1])]`
-/

namespace A377979.P13308759285614736009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377979.P13308759285614736009

namespace A377979

/-- `record[A307985(∑[n+1])]` -/
def P13308759285614736009.Spec : Prop :=
  ∀ n, P13308759285614736009.a n = A377979 (n + 1)

end A377979

/-! ## A377979.P11493150764440508068

`A354856(A152749(n+1))`
-/

namespace A377979.P11493150764440508068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354856 (A152749 (n + 1)).toNat

end

end A377979.P11493150764440508068

namespace A377979

/-- `A354856(A152749(n+1))` -/
def P11493150764440508068.Spec : Prop :=
  ∀ n, P11493150764440508068.a n = A377979 (n + 1)

end A377979

/-! ## A377979.P13838310940862061846

`record[ceil(n/2)*A010054(3*n)]`
-/

namespace A377979.P13838310940862061846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A010054 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377979.P13838310940862061846

namespace A377979

/-- `record[ceil(n/2)*A010054(3*n)]` -/
def P13838310940862061846.Spec : Prop :=
  ∀ n, P13838310940862061846.a n = A377979 (n + 1)

end A377979

/-! ## A377979.P15189939859974862791

`record[A110654(n)-A034261(3*n)]`
-/

namespace A377979.P15189939859974862791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A034261 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377979.P15189939859974862791

namespace A377979

/-- `record[A110654(n)-A034261(3*n)]` -/
def P15189939859974862791.Spec : Prop :=
  ∀ n, P15189939859974862791.a n = A377979 (n + 1)

end A377979

/-!
# A377982: a(n) is the number of terms of A048103 (numbers with no p^p divisors) less than or equal to n.

The programs for A377982, the canonical program `A377982.P672932525676510042` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377982 has offset 0).

The definition of A377982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377982.P672932525676510042

`∑[A359550(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A377982

/-- `∑[A359550(n)]` -/
def P672932525676510042.Spec : Prop :=
  ∀ n, P672932525676510042.a n = A377982 n

theorem P672932525676510042.correct : P672932525676510042.Spec := by
  intro n
  simp only [A377982]

end A377982

/-! ## A377982.P9703177663199175191

`∑[char[A048103(n+1)]]`
-/

namespace A377982.P9703177663199175191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377982.P9703177663199175191

namespace A377982

/-- `∑[char[A048103(n+1)]]` -/
def P9703177663199175191.Spec : Prop :=
  ∀ n, (P9703177663199175191.a n : ℤ) = A377982 n

end A377982

/-! ## A377982.P2858560871059259045

`∑[char[A327937(n+1)]]`
-/

namespace A377982.P2858560871059259045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377982.P2858560871059259045

namespace A377982

/-- `∑[char[A327937(n+1)]]` -/
def P2858560871059259045.Spec : Prop :=
  ∀ n, (P2858560871059259045.a n : ℤ) = A377982 n

end A377982

/-! ## A377982.P6046062107083414722

`∑[char[A327938(n+1)]]`
-/

namespace A377982.P6046062107083414722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377982.P6046062107083414722

namespace A377982

/-- `∑[char[A327938(n+1)]]` -/
def P6046062107083414722.Spec : Prop :=
  ∀ n, (P6046062107083414722.a n : ℤ) = A377982 n

end A377982

/-!
# A377983: a(n) is the number of terms in the range of A276087 that are <= n, where A276087(n) = A276086(A276086(n)) [the twofold application of the primorial base exp-function].

The programs for A377983, there is no canonical definition to state claims against.
-/

/-! ## A377983.P11826637643708048274

`∑[char[A377871(n+1)]]`
-/

namespace A377983.P11826637643708048274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377871 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377983.P11826637643708048274

/-! ## A377983.P7664720245249960146

`A377870(n)+a(n-1)` with `a(0)=0`
-/

namespace A377983.P7664720245249960146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A377870 n + a (n - 1)

end

end A377983.P7664720245249960146

/-! ## A377983.P18264563736073956886

`∑[A377870(A028310(n))]`
-/

namespace A377983.P18264563736073956886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377870 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377983.P18264563736073956886

/-! ## A377983.P2098548995072703701

`∑[A377870(n+1)]-A377870(n+1)`
-/

namespace A377983.P2098548995072703701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A377870 (n + 1)

end

end A377983.P2098548995072703701

/-! ## A377983.P6560563344650196667

`∑[A383298(A327859(n)+1)]`
-/

namespace A377983.P6560563344650196667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383298 (A327859 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377983.P6560563344650196667

/-!
# A377984: a(n) = 2*sigma(n) - A003961(n), where sigma is the sum of divisors function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A377984, the canonical program `A377984.P6847932780309628605` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377984 has offset 1).

The definition of A377984 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377984.P6847932780309628605

`2*A000203(n+1)-A003961(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A377984

/-- `2*A000203(n+1)-A003961(n+1)` -/
def P6847932780309628605.Spec : Prop :=
  ∀ n, P6847932780309628605.a n = A377984 (n + 1)

theorem P6847932780309628605.correct : P6847932780309628605.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel]

end A377984

/-! ## A377984.P14056579528243482988

`∑{d}[n+1, A377985(#)]`
-/

namespace A377984.P14056579528243482988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A377985 d

end

end A377984.P14056579528243482988

namespace A377984

/-- `∑{d}[n+1, A377985(#)]` -/
def P14056579528243482988.Spec : Prop :=
  ∀ n, P14056579528243482988.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P3218667697671468206

`2*A378751(n+1)+1`
-/

namespace A377984.P3218667697671468206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378751 (n + 1) + 1

end

end A377984.P3218667697671468206

namespace A377984

/-- `2*A378751(n+1)+1` -/
def P3218667697671468206.Spec : Prop :=
  ∀ n, P3218667697671468206.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P7677095437938167373

`A002659(n+1)-A253885(n)`
-/

namespace A377984.P7677095437938167373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) - A253885 n

end

end A377984.P7677095437938167373

namespace A377984

/-- `A002659(n+1)-A253885(n)` -/
def P7677095437938167373.Spec : Prop :=
  ∀ n, P7677095437938167373.a n = A377984 (n + 1)

theorem P7677095437938167373.correct : P7677095437938167373.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P7677095437938167373.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P8948138163684764047.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, A156552, A156552.P4268073137713085227.a, A252750, A252750.P12930142929614438506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P2695679825082029788

`A378752(n+1)+A336851(n+1)`
-/

namespace A377984.P2695679825082029788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378752 (n + 1) + A336851 (n + 1)

end

end A377984.P2695679825082029788

namespace A377984

/-- `A378752(n+1)+A336851(n+1)` -/
def P2695679825082029788.Spec : Prop :=
  ∀ n, P2695679825082029788.a n = A377984 (n + 1)

theorem P2695679825082029788.correct : P2695679825082029788.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P2695679825082029788.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A336851, A336851.P12982912948484651023.a, A378752, A378752.P11355063342536478967.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P3876427714069781334

`A074400(n+1)-A003961(n+1)`
-/

namespace A377984.P3876427714069781334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A003961 (n + 1)

end

end A377984.P3876427714069781334

namespace A377984

/-- `A074400(n+1)-A003961(n+1)` -/
def P3876427714069781334.Spec : Prop :=
  ∀ n, P3876427714069781334.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P14305847100077412857

`A000203(n+1)-A286385(n+1)`
-/

namespace A377984.P14305847100077412857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A286385 (n + 1)

end

end A377984.P14305847100077412857

namespace A377984

/-- `A000203(n+1)-A286385(n+1)` -/
def P14305847100077412857.Spec : Prop :=
  ∀ n, P14305847100077412857.a n = A377984 (n + 1)

theorem P14305847100077412857.correct : P14305847100077412857.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P14305847100077412857.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P5576590727261905227

`A091818(n+1)-A252748(n+1)`
-/

namespace A377984.P5576590727261905227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A252748 (n + 1)

end

end A377984.P5576590727261905227

namespace A377984

/-- `A091818(n+1)-A252748(n+1)` -/
def P5576590727261905227.Spec : Prop :=
  ∀ n, P5576590727261905227.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P5840721244231668504

`A002659(n+1)+1-A003961(n+1)`
-/

namespace A377984.P5840721244231668504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) + (1 - A003961 (n + 1))

end

end A377984.P5840721244231668504

namespace A377984

/-- `A002659(n+1)+1-A003961(n+1)` -/
def P5840721244231668504.Spec : Prop :=
  ∀ n, P5840721244231668504.a n = A377984 (n + 1)

theorem P5840721244231668504.correct : P5840721244231668504.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P5840721244231668504.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P8948138163684764047.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P257536567092425378

`A088580(n+1)-(A286385(n+1)+1)`
-/

namespace A377984.P257536567092425378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A286385 (n + 1) + 1)

end

end A377984.P257536567092425378

namespace A377984

/-- `A088580(n+1)-(A286385(n+1)+1)` -/
def P257536567092425378.Spec : Prop :=
  ∀ n, P257536567092425378.a n = A377984 (n + 1)

theorem P257536567092425378.correct : P257536567092425378.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P257536567092425378.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A088580, A088580.P3089093194242277422.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P10220960913229156923

`A294015(n+1)-(A252748(n+1)+1)`
-/

namespace A377984.P10220960913229156923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1) - (A252748 (n + 1) + 1)

end

end A377984.P10220960913229156923

namespace A377984

/-- `A294015(n+1)-(A252748(n+1)+1)` -/
def P10220960913229156923.Spec : Prop :=
  ∀ n, P10220960913229156923.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P9644233266610551104

`2*A001065(n+1)-A252748(n+1)`
-/

namespace A377984.P9644233266610551104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A252748 (n + 1)

end

end A377984.P9644233266610551104

namespace A377984

/-- `2*A001065(n+1)-A252748(n+1)` -/
def P9644233266610551104.Spec : Prop :=
  ∀ n, P9644233266610551104.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P3927573482955830625

`A003961(n+1)-2*A286385(n+1)`
-/

namespace A377984.P3927573482955830625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - 2 * A286385 (n + 1)

end

end A377984.P3927573482955830625

namespace A377984

/-- `A003961(n+1)-2*A286385(n+1)` -/
def P3927573482955830625.Spec : Prop :=
  ∀ n, P3927573482955830625.a n = A377984 (n + 1)

theorem P3927573482955830625.correct : P3927573482955830625.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P3927573482955830625.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P8352322063286668072

`A003973(n+1)+A378752(n+1)-A003961(n+1)`
-/

namespace A377984.P8352322063286668072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + (A378752 (n + 1) - A003961 (n + 1))

end

end A377984.P8352322063286668072

namespace A377984

/-- `A003973(n+1)+A378752(n+1)-A003961(n+1)` -/
def P8352322063286668072.Spec : Prop :=
  ∀ n, P8352322063286668072.a n = A377984 (n + 1)

theorem P8352322063286668072.correct : P8352322063286668072.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P8352322063286668072.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A378752, A378752.P11355063342536478967.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P661527658335877931

`A000203(n+1)-(A346473(n+1)+A280692(n+1))`
-/

namespace A377984.P661527658335877931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A346473 (n + 1) + A280692 (n + 1))

end

end A377984.P661527658335877931

namespace A377984

/-- `A000203(n+1)-(A346473(n+1)+A280692(n+1))` -/
def P661527658335877931.Spec : Prop :=
  ∀ n, P661527658335877931.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P4078649327636057569

`A003415(n+1)+A343224(n+1)-A286385(n+1)`
-/

namespace A377984.P4078649327636057569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A343224 (n + 1) - A286385 (n + 1))

end

end A377984.P4078649327636057569

namespace A377984

/-- `A003415(n+1)+A343224(n+1)-A286385(n+1)` -/
def P4078649327636057569.Spec : Prop :=
  ∀ n, P4078649327636057569.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P11812146522625181864

`A000203(n+1)+A336851(n+1)-A336852(n+1)`
-/

namespace A377984.P11812146522625181864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A336851 (n + 1) - A336852 (n + 1))

end

end A377984.P11812146522625181864

namespace A377984

/-- `A000203(n+1)+A336851(n+1)-A336852(n+1)` -/
def P11812146522625181864.Spec : Prop :=
  ∀ n, P11812146522625181864.a n = A377984 (n + 1)

theorem P11812146522625181864.correct : P11812146522625181864.Spec := by
  intro n
  simp only [A377984, Nat.add_sub_cancel, A377984.P11812146522625181864.a, A377984.P6847932780309628605.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A336851, A336851.P12982912948484651023.a, A336852, A336852.P16576241349635200560.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377984

/-! ## A377984.P7093859877414414956

`A000203(n+1)+A343224(n+1)-A348937(n+1)`
-/

namespace A377984.P7093859877414414956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A343224 (n + 1) - A348937 (n + 1))

end

end A377984.P7093859877414414956

namespace A377984

/-- `A000203(n+1)+A343224(n+1)-A348937(n+1)` -/
def P7093859877414414956.Spec : Prop :=
  ∀ n, P7093859877414414956.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P11321774512218455701

`A342671(n+1)*A349162(n+1)-A286385(n+1)`
-/

namespace A377984.P11321774512218455701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (n + 1) * A349162 (n + 1) - A286385 (n + 1)

end

end A377984.P11321774512218455701

namespace A377984

/-- `A342671(n+1)*A349162(n+1)-A286385(n+1)` -/
def P11321774512218455701.Spec : Prop :=
  ∀ n, P11321774512218455701.a n = A377984 (n + 1)

end A377984

/-! ## A377984.P2961936972296568833

`A351545(n+1)*A351547(n+1)-A286385(n+1)`
-/

namespace A377984.P2961936972296568833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351545 (n + 1) * A351547 (n + 1) - A286385 (n + 1)

end

end A377984.P2961936972296568833

namespace A377984

/-- `A351545(n+1)*A351547(n+1)-A286385(n+1)` -/
def P2961936972296568833.Spec : Prop :=
  ∀ n, P2961936972296568833.a n = A377984 (n + 1)

end A377984

/-!
# A377985: a(n) = 2*n - phi(A003961(n)), where phi is Euler totient function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A377985, the canonical program `A377985.P6249672595049724567` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377985 has offset 1).

The definition of A377985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377985.P9265041929129517675

`2*(n+1)-A003972(n+1)`
-/

namespace A377985.P9265041929129517675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A003972 (n + 1)

end

end A377985.P9265041929129517675

namespace A377985

/-- `2*(n+1)-A003972(n+1)` -/
def P9265041929129517675.Spec : Prop :=
  ∀ n, P9265041929129517675.a n = A377985 (n + 1)

end A377985

/-! ## A377985.P6249672595049724567

`2*(n+1)-A000010(A003961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A377985

/-- `2*(n+1)-A000010(A003961(n+1))` -/
def P6249672595049724567.Spec : Prop :=
  ∀ n, P6249672595049724567.a n = A377985 (n + 1)

theorem P6249672595049724567.correct : P6249672595049724567.Spec := by
  intro n
  simp only [A377985, Nat.add_sub_cancel]

end A377985

/-! ## A377985.P3718043720011828301

`1-A337549(n+1)+n`
-/

namespace A377985.P3718043720011828301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A337549 (n + 1) + (n : ℤ)

end

end A377985.P3718043720011828301

namespace A377985

/-- `1-A337549(n+1)+n` -/
def P3718043720011828301.Spec : Prop :=
  ∀ n, P3718043720011828301.a n = A377985 (n + 1)

end A377985

/-! ## A377985.P17890315795534226232

`1-∑{d}[n+1, A346249(#)]+n`
-/

namespace A377985.P17890315795534226232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A346249 d + (n : ℤ)

end

end A377985.P17890315795534226232

namespace A377985

/-- `1-∑{d}[n+1, A346249(#)]+n` -/
def P17890315795534226232.Spec : Prop :=
  ∀ n, P17890315795534226232.a n = A377985 (n + 1)

end A377985

/-! ## A377985.P1469181809287792263

`A053158(n+1)-A347100(n+1)`
-/

namespace A377985.P1469181809287792263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A347100 (n + 1)

end

end A377985.P1469181809287792263

namespace A377985

/-- `A053158(n+1)-A347100(n+1)` -/
def P1469181809287792263.Spec : Prop :=
  ∀ n, P1469181809287792263.a n = A377985 (n + 1)

end A377985

/-! ## A377985.P6251384425779316913

`2*A051953(n+1)-A349754(n+1)`
-/

namespace A377985.P6251384425779316913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051953 (n + 1) - A349754 (n + 1)

end

end A377985.P6251384425779316913

namespace A377985

/-- `2*A051953(n+1)-A349754(n+1)` -/
def P6251384425779316913.Spec : Prop :=
  ∀ n, P6251384425779316913.a n = A377985 (n + 1)

end A377985

/-! ## A377985.P2814655662061303339

`∑{d}[n+1, A008683(#)*A377984((n+1)/#)]`
-/

namespace A377985.P2814655662061303339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A377984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377985.P2814655662061303339

namespace A377985

/-- `∑{d}[n+1, A008683(#)*A377984((n+1)/#)]` -/
def P2814655662061303339.Spec : Prop :=
  ∀ n, P2814655662061303339.a n = A377985 (n + 1)

end A377985

/-! ## A377985.P7453764456722758316

`A003961(n+1)-(A252748(n+1)+A003972(n+1))`
-/

namespace A377985.P7453764456722758316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (A252748 (n + 1) + A003972 (n + 1))

end

end A377985.P7453764456722758316

namespace A377985

/-- `A003961(n+1)-(A252748(n+1)+A003972(n+1))` -/
def P7453764456722758316.Spec : Prop :=
  ∀ n, P7453764456722758316.a n = A377985 (n + 1)

end A377985

/-! ## A377985.P13920552653853003990

`A347136(n+1)-(A347121(n+1)+A003972(n+1))`
-/

namespace A377985.P13920552653853003990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - (A347121 (n + 1) + A003972 (n + 1))

end

end A377985.P13920552653853003990

namespace A377985

/-- `A347136(n+1)-(A347121(n+1)+A003972(n+1))` -/
def P13920552653853003990.Spec : Prop :=
  ∀ n, P13920552653853003990.a n = A377985 (n + 1)

end A377985

/-!
# A377988: a(n) = A359550(A003415(A276085(n))), where A359550 is multiplicative with a(p^e) = 1 if p > e, otherwise 0, A003415 is the arithmetic derivative, and A276085 is fully additive with a(p) = p#/p.

The programs for A377988, there is no canonical definition to state claims against.
-/

/-! ## A377988.P3652302526931098746

`A377868(n+1)*A377868(A334352(n+2))`
-/

namespace A377988.P3652302526931098746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377868 (n + 1) * A377868 (A334352 (n + 2)).toNat

end

end A377988.P3652302526931098746

/-! ## A377988.P17347199217922096734

`and(A046888(n+1), A377868(n+1))`
-/

namespace A377988.P17347199217922096734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046888 (n + 1)) (A377868 (n + 1))

end

end A377988.P17347199217922096734

/-! ## A377988.P2067756847689982553

`and(A074876(n+1), A377868(n+1))`
-/

namespace A377988.P2067756847689982553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074876 (n + 1)) (A377868 (n + 1))

end

end A377988.P2067756847689982553

/-!
# A377989: Numbers k such that A003415(A276085(k)) has no p^p-factors, where A003415 is the arithmetic derivative, and A276085 is fully additive with a(p) = p#/p.

The programs for A377989, there is no canonical definition to state claims against.
-/

/-! ## A377989.P3875635686226450429

`eq[1, A377988(n+1)]+1`
-/

namespace A377989.P3875635686226450429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377989.P3875635686226450429

/-! ## A377989.P12448480040381624944

`eq[1, A377988(A028310(n))]`
-/

namespace A377989.P12448480040381624944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377988 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377989.P12448480040381624944

/-! ## A377989.P4569592027102560319

`eq[1, A377988(A233583(n+1))]`
-/

namespace A377989.P4569592027102560319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377988 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377989.P4569592027102560319

/-! ## A377989.P1369329390738300072

`lt[2, A377988(A000038(n)!+n)+2]+1`
-/

namespace A377989.P1369329390738300072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377988 (Nat.factorial (A000038 n).toNat + n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377989.P1369329390738300072

/-!
# A377990: a(n) = sigma(sigma(A350388(n))) * sigma(sigma(A350389(n))), where A350388 and A350389 are the largest unitary divisor of n that is a square, and the largest unitary divisor of n that is an exponentially odd number, respectively.

The programs for A377990, the canonical program `A377990.P1914433196353605573` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377990 has offset 1).

The definition of A377990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350388, A350389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A377990.P8629976805894675127

`A000203(A351568(n+1))*A000203(A351569(n+1))`
-/

namespace A377990.P8629976805894675127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A351568 (n + 1)).toNat * A000203 (A351569 (n + 1)).toNat

end

end A377990.P8629976805894675127

namespace A377990

/-- `A000203(A351568(n+1))*A000203(A351569(n+1))` -/
def P8629976805894675127.Spec : Prop :=
  ∀ n, P8629976805894675127.a n = A377990 (n + 1)

end A377990

/-! ## A377990.P17241050129781097420

`A051027(A350388(n+1))*A051027(A350389(n+1))`
-/

namespace A377990.P17241050129781097420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A350388 (n + 1)).toNat * A051027 (A350389 (n + 1)).toNat

end

end A377990.P17241050129781097420

namespace A377990

/-- `A051027(A350388(n+1))*A051027(A350389(n+1))` -/
def P17241050129781097420.Spec : Prop :=
  ∀ n, P17241050129781097420.a n = A377990 (n + 1)

end A377990

/-! ## A377990.P1914433196353605573

`A000203(A000203(A350388(n+1)))*A000203(A000203(A350389(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A377990

/-- `A000203(A000203(A350388(n+1)))*A000203(A000203(A350389(n+1)))` -/
def P1914433196353605573.Spec : Prop :=
  ∀ n, P1914433196353605573.a n = A377990 (n + 1)

theorem P1914433196353605573.correct : P1914433196353605573.Spec := by
  intro n
  simp only [A377990, Nat.add_sub_cancel]

end A377990

/-!
# A377994: Numbers k such that k + PrimePi(k) is odd.

The programs for A377994, the canonical program `A377994.P2582031446348663756` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377994 has offset 1).

The definition of A377994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377994.P2582031446348663756

`eq[A062157(n), A065357(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A377994

/-- `eq[A062157(n), A065357(n)]` -/
def P2582031446348663756.Spec : Prop :=
  ∀ n, (P2582031446348663756.a n : ℤ) = A377994 (n + 1)

theorem P2582031446348663756.correct : P2582031446348663756.Spec := by
  intro n
  simp only [A377994, Nat.add_sub_cancel]

end A377994

/-! ## A377994.P7115355136601869219

`eq[1, gcd(2, A095117(n))]`
-/

namespace A377994.P7115355136601869219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A095117 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P7115355136601869219

namespace A377994

/-- `eq[1, gcd(2, A095117(n))]` -/
def P7115355136601869219.Spec : Prop :=
  ∀ n, (P7115355136601869219.a n : ℤ) = A377994 (n + 1)

end A377994

/-! ## A377994.P677359120375922554

`eq[A000035(n), A131377(n)]`
-/

namespace A377994.P677359120375922554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P677359120375922554

namespace A377994

/-- `eq[A000035(n), A131377(n)]` -/
def P677359120375922554.Spec : Prop :=
  ∀ n, (P677359120375922554.a n : ℤ) = A377994 (n + 1)

end A377994

/-! ## A377994.P2976384456916906767

`eq[A059841(n), A131378(n)]`
-/

namespace A377994.P2976384456916906767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P2976384456916906767

namespace A377994

/-- `eq[A059841(n), A131378(n)]` -/
def P2976384456916906767.Spec : Prop :=
  ∀ n, (P2976384456916906767.a n : ℤ) = A377994 (n + 1)

end A377994

/-! ## A377994.P17183145643492536615

`eq[A131377(n), A215036(n+1)]`
-/

namespace A377994.P17183145643492536615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P17183145643492536615

namespace A377994

/-- `eq[A131377(n), A215036(n+1)]` -/
def P17183145643492536615.Spec : Prop :=
  ∀ n, (P17183145643492536615.a n : ℤ) = A377994 (n + 1)

end A377994

/-! ## A377994.P18106104617714450085

`eq[A131378(n), A135528(n+2)]`
-/

namespace A377994.P18106104617714450085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P18106104617714450085

namespace A377994

/-- `eq[A131378(n), A135528(n+2)]` -/
def P18106104617714450085.Spec : Prop :=
  ∀ n, (P18106104617714450085.a n : ℤ) = A377994 (n + 1)

end A377994

/-! ## A377994.P13910871609720368928

`eq[A131378(n), A215036(n+2)]`
-/

namespace A377994.P13910871609720368928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215036 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P13910871609720368928

namespace A377994

/-- `eq[A131378(n), A215036(n+2)]` -/
def P13910871609720368928.Spec : Prop :=
  ∀ n, (P13910871609720368928.a n : ℤ) = A377994 (n + 1)

end A377994

/-! ## A377994.P405245406410855692

`record[A165634(2*n+1)]`
-/

namespace A377994.P405245406410855692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165634 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377994.P405245406410855692

namespace A377994

/-- `record[A165634(2*n+1)]` -/
def P405245406410855692.Spec : Prop :=
  ∀ n, P405245406410855692.a n = A377994 (n + 1)

end A377994

/-! ## A377994.P12103680170368677269

`record[A181642(2*(n+1))]`
-/

namespace A377994.P12103680170368677269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181642 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377994.P12103680170368677269

namespace A377994

/-- `record[A181642(2*(n+1))]` -/
def P12103680170368677269.Spec : Prop :=
  ∀ n, P12103680170368677269.a n = A377994 (n + 1)

end A377994

/-! ## A377994.P11305679089917695207

`lt[A261736(A095117(n)), 0]`
-/

namespace A377994.P11305679089917695207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261736 (A095117 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A377994.P11305679089917695207

namespace A377994

/-- `lt[A261736(A095117(n)), 0]` -/
def P11305679089917695207.Spec : Prop :=
  ∀ n, (P11305679089917695207.a n : ℤ) = A377994 (n + 1)

end A377994

