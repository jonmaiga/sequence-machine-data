import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A383900: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of Product_{j=0..k} (1 + j*x)/(1 - j*x).

The programs for A383900, there is no canonical definition to state claims against.
-/

/-! ## A383900.P9927081474851818523

`A175197(A249157(n+1))`
-/

namespace A383900.P9927081474851818523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175197 (A249157 (n + 1)).toNat

end

end A383900.P9927081474851818523

/-! ## A383900.P477495681592749454

`A195310(A277410(n+1)+1)`
-/

namespace A383900.P477495681592749454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195310 (A277410 (n + 1) + 1).toNat

end

end A383900.P477495681592749454

/-! ## A383900.P984849216757574263

`gcd(A176129(n), A373078(A325830(n)))`
-/

namespace A383900.P984849216757574263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176129 n) (A373078 (A325830 n).toNat)

end

end A383900.P984849216757574263

/-! ## A383900.P12613923814537193063

`gcd(A341935(A362787(n)), A362787(n))`
-/

namespace A383900.P12613923814537193063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341935 (A362787 n).toNat) (A362787 n)

end

end A383900.P12613923814537193063

/-! ## A383900.P16578442550804149250

`and(A059299(n), A226967(A026615(n)))`
-/

namespace A383900.P16578442550804149250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059299 n) (A226967 (A026615 n).toNat)

end

end A383900.P16578442550804149250

/-!
# A383902: Square table read by ascending antidiagonals where T(n,k) = binomial(k+2^n-2,k).

The programs for A383902, there is no canonical definition to state claims against.
-/

/-! ## A383902.P18191892785687271928

`A383905(∑[char[∑[n]]]²-n-1)`
-/

namespace A383902.P18191892785687271928
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383905 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A383902.P18191892785687271928

/-! ## A383902.P7526706109717214993

`A209859(A323837(n))`
-/

namespace A383902.P7526706109717214993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A323837 n).toNat

end

end A383902.P7526706109717214993

/-! ## A383902.P4941044635898073610

`A151509(A015161(n)+n+1)`
-/

namespace A383902.P4941044635898073610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151509 (A015161 n + (n + 1 : ℤ)).toNat

end

end A383902.P4941044635898073610

/-! ## A383902.P7692279035428663041

`A048993(A302051(Δ[or(1, 2^n)]))`
-/

namespace A383902.P7692279035428663041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A302051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A383902.P7692279035428663041

/-! ## A383902.P462664769989244150

`A048993((n+1)%A369764(3*n+2))`
-/

namespace A383902.P462664769989244150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Int.tmod (n + 1 : ℤ) (A369764 (3 * n + 2))).toNat

end

end A383902.P462664769989244150

/-!
# A383904: a(n) is the number of complement pairs of primitive 2n-bead balanced binary necklaces.

The programs for A383904, there is no canonical definition to state claims against.
-/

/-! ## A383904.P1735089894574574994

`(A022553(n)-A000048(n))/2`
-/

namespace A383904.P1735089894574574994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022553 n - A000048 n : ℚ) / 2

end

end A383904.P1735089894574574994

/-! ## A383904.P17659117679453345840

`A045632(n)-A000048(n)`
-/

namespace A383904.P17659117679453345840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045632 n - A000048 n

end

end A383904.P17659117679453345840

/-! ## A383904.P17215183851483063962

`A386388(n)-A387130(n)`
-/

namespace A383904.P17215183851483063962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386388 n - A387130 n

end

end A383904.P17215183851483063962

/-! ## A383904.P15135425397410556311

`A022553(n)-A045632(n)`
-/

namespace A383904.P15135425397410556311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n - A045632 n

end

end A383904.P15135425397410556311

/-! ## A383904.P6988952675593351777

`A059995(A008683(n+1)+A006190(n))`
-/

namespace A383904.P6988952675593351777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A008683 (n + 1) + A006190 n).toNat

end

end A383904.P6988952675593351777

/-!
# A383905: Square table read by descending antidiagonals where T(n,k) = binomial(k+2^n-2,k).

The programs for A383905, there is no canonical definition to state claims against.
-/

/-! ## A383905.P9008143679952479076

`A383902(∑[char[∑[n]]]²-n-1)`
-/

namespace A383905.P9008143679952479076
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383902 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A383905.P9008143679952479076

/-!
# A383906: Semiprimes k such that the sums of the even digits of k and of the odd digits of k are equal.

The programs for A383906, the canonical program `A383906.P235347200383278698` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383906 has offset 1).

The definition of A383906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383906.P235347200383278698

`∩[A001358(n+1), A036301(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A383906

/-- `∩[A001358(n+1), A036301(n+1)]` -/
def P235347200383278698.Spec : Prop :=
  ∀ n, (P235347200383278698.a n : ℤ) = A383906 (n + 1)

theorem P235347200383278698.correct : P235347200383278698.Spec := by
  intro n
  simp only [A383906, Nat.add_sub_cancel]

end A383906

/-! ## A383906.P12337121569453182169

`filter[A036301(n+2), A064911(#)]`
-/

namespace A383906.P12337121569453182169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A383906.P12337121569453182169

namespace A383906

/-- `filter[A036301(n+2), A064911(#)]` -/
def P12337121569453182169.Spec : Prop :=
  ∀ n, P12337121569453182169.a n = A383906 (n + 1)

end A383906

/-! ## A383906.P11313800302053482231

`∩[A036301(n+1), A176540(n+1)]`
-/

namespace A383906.P11313800302053482231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383906.P11313800302053482231

namespace A383906

/-- `∩[A036301(n+1), A176540(n+1)]` -/
def P11313800302053482231.Spec : Prop :=
  ∀ n, (P11313800302053482231.a n : ℤ) = A383906 (n + 1)

end A383906

/-! ## A383906.P9398305782103069050

`eq[n, A374897(A304439(n))]`
-/

namespace A383906.P9398305782103069050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A304439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A383906.P9398305782103069050

namespace A383906

/-- `eq[n, A374897(A304439(n))]` -/
def P9398305782103069050.Spec : Prop :=
  ∀ n, (P9398305782103069050.a n : ℤ) = A383906 (n + 1)

end A383906

/-!
# A383907: Echo primes: primes p such that the greatest prime factor of p-1 is a suffix of p.

The programs for A383907, there is no canonical definition to state claims against.
-/

/-! ## A383907.P14342879224734299981

`p?[A383896(n+1)]`
-/

namespace A383907.P14342879224734299981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383907.P14342879224734299981

/-! ## A383907.P12343816359742996516

`∩[A009087(n+1), A383896(n+1)]`
-/

namespace A383907.P12343816359742996516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P12343816359742996516

/-! ## A383907.P15787896506732821782

`∩[A038680(n+1), A383896(n+1)]`
-/

namespace A383907.P15787896506732821782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P15787896506732821782

/-! ## A383907.P4338680495047268742

`∩[A000040(n+1), A383896(n+1)]`
-/

namespace A383907.P4338680495047268742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P4338680495047268742

/-! ## A383907.P14081541917677284789

`∩[A004139(n+1), A383896(n+1)]`
-/

namespace A383907.P14081541917677284789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P14081541917677284789

/-! ## A383907.P13367348474130892814

`∩[A006005(n+1), A383896(n+1)]`
-/

namespace A383907.P13367348474130892814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P13367348474130892814

/-! ## A383907.P1812861506771461068

`∩[A008578(n+1), A383896(n+1)]`
-/

namespace A383907.P1812861506771461068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P1812861506771461068

/-! ## A383907.P7392522788062168703

`∩[A033946(n+1), A383896(n+1)]`
-/

namespace A383907.P7392522788062168703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P7392522788062168703

/-! ## A383907.P2264818103995482815

`∩[A045319(n+1), A383896(n+1)]`
-/

namespace A383907.P2264818103995482815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P2264818103995482815

/-! ## A383907.P4814310187010151046

`∩[A045344(n+1), A383896(n+1)]`
-/

namespace A383907.P4814310187010151046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383907.P4814310187010151046

/-!
# A383909: In the base 4 expansion of n, map: 0 -> 20, 1 -> 21, 2 -> 30, 3 -> 31.

The programs for A383909, there is no canonical definition to state claims against.
-/

/-! ## A383909.P14614951862091439844

`A206074(A124516(n+1))+n+5`
-/

namespace A383909.P14614951862091439844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (A124516 (n + 1)).toNat + (n + 5 : ℤ)

end

end A383909.P14614951862091439844

/-!
# A383910: Expansion of Product_{k=0..3} (1 + k*x)/(1 - k*x).

The programs for A383910, the canonical program `A383910.P8211624234500359538` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383910 has offset 0).

The definition of A383910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383910.P8211624234500359538

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=12, a(2)=72, a(3)=312`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383910

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P8211624234500359538.Spec : Prop :=
  ∀ n, P8211624234500359538.a n = A383910 n

theorem P8211624234500359538.correct : P8211624234500359538.Spec := by
  intro n
  simp only [A383910]

end A383910

/-! ## A383910.P3566006510358094041

`A383900(A000217(n+3)+n)`
-/

namespace A383910.P3566006510358094041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383900 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A383910.P3566006510358094041

namespace A383910

/-- `A383900(A000217(n+3)+n)` -/
def P3566006510358094041.Spec : Prop :=
  ∀ n, P3566006510358094041.a n = A383910 n

end A383910

/-! ## A383910.P7138866802084336088

`A047216(A366058(n))`
-/

namespace A383910.P7138866802084336088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (A366058 n).toNat

end

end A383910.P7138866802084336088

namespace A383910

/-- `A047216(A366058(n))` -/
def P7138866802084336088.Spec : Prop :=
  ∀ n, P7138866802084336088.a n = A383910 n

end A383910

/-!
# A383911: Expansion of Product_{k=0..4} (1 + k*x)/(1 - k*x).

The programs for A383911, the canonical program `A383911.P13606611818806099941` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383911 has offset 0).

The definition of A383911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383911.P13606611818806099941

`A383913(n)+A383913(n)-A383910(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383911

/-- `A383913(n)+A383913(n)-A383910(n)` -/
def P13606611818806099941.Spec : Prop :=
  ∀ n, P13606611818806099941.a n = A383911 n

theorem P13606611818806099941.correct : P13606611818806099941.Spec := by
  intro n
  simp only [A383911]

end A383911

/-! ## A383911.P11260645837644839247

`A383900(lt[A008277(n+5), A127672(n)])`
-/

namespace A383911.P11260645837644839247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383900 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383911.P11260645837644839247

namespace A383911

/-- `A383900(lt[A008277(n+5), A127672(n)])` -/
def P11260645837644839247.Spec : Prop :=
  ∀ n, P11260645837644839247.a n = A383911 n

end A383911

/-!
# A383912: Expansion of (1+x) * (1+2*x)/((1-x) * (1-2*x) * (1-3*x)).

The programs for A383912, the canonical program `A383912.P10099894049125275689` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383912 has offset 0).

The definition of A383912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-6x+11x^2-6x^3))` (program `A383912.P10099894049125275689`, by `A383912.P10099894049125275689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383912.P10099894049125275689

`ogf((1+3x+2x^2)/(1-6x+11x^2-6x^3))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383912

/-- `ogf((1+3x+2x^2)/(1-6x+11x^2-6x^3))` -/
def P10099894049125275689.Spec : Prop :=
  ∀ n, P10099894049125275689.a n = A383912 n

theorem P10099894049125275689.correct : P10099894049125275689.Spec := by
  intro n
  simp only [A383912]

end A383912

/-! ## A383912.P5514200527146293953

`10*3^n-3*2^(n+2)+3`
-/

namespace A383912.P5514200527146293953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * 3 ^ n : ℤ) - (3 * 2 ^ (n + 2) : ℤ) + 3

end

end A383912.P5514200527146293953

namespace A383912

/-- `10*3^n-3*2^(n+2)+3` -/
def P5514200527146293953.Spec : Prop :=
  ∀ n, P5514200527146293953.a n = A383912 n

end A383912

/-! ## A383912.P9847970224435123594

`A172107(A167614(n+1))`
-/

namespace A383912.P9847970224435123594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172107 (A167614 (n + 1)).toNat

end

end A383912.P9847970224435123594

namespace A383912

/-- `A172107(A167614(n+1))` -/
def P9847970224435123594.Spec : Prop :=
  ∀ n, P9847970224435123594.a n = A383912 n

end A383912

/-! ## A383912.P16010119536480942419

`A172107(A046691(n)+7)`
-/

namespace A383912.P16010119536480942419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172107 (A046691 n + 7).toNat

end

end A383912.P16010119536480942419

namespace A383912

/-- `A172107(A046691(n)+7)` -/
def P16010119536480942419.Spec : Prop :=
  ∀ n, P16010119536480942419.a n = A383912 n

end A383912

/-! ## A383912.P1918663414677337466

`A172107(A000124(n+2)+2)`
-/

namespace A383912.P1918663414677337466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172107 (A000124 (n + 2) + 2).toNat

end

end A383912.P1918663414677337466

namespace A383912

/-- `A172107(A000124(n+2)+2)` -/
def P1918663414677337466.Spec : Prop :=
  ∀ n, P1918663414677337466.a n = A383912 n

end A383912

/-!
# A383913: Expansion of (1+x) * (1+2*x) * (1+3*x)/((1-x) * (1-2*x) * (1-3*x) * (1-4*x)).

The programs for A383913, the canonical program `A383913.P8870609054975775532` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383913 has offset 0).

The definition of A383913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+11x^2+6x^3)/(1-10x+35x^2-50x^3+24x^4))` (program `A383913.P8870609054975775532`, by `A383913.P8870609054975775532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383913.P12591266012079778789

`35*4^n-20*3^(n+1)+15*2^(n+1)-4`
-/

namespace A383913.P12591266012079778789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * 4 ^ n : ℤ) - (20 * 3 ^ (n + 1) : ℤ) + (15 * 2 ^ (n + 1) : ℤ) - 4

end

end A383913.P12591266012079778789

namespace A383913

/-- `35*4^n-20*3^(n+1)+15*2^(n+1)-4` -/
def P12591266012079778789.Spec : Prop :=
  ∀ n, P12591266012079778789.a n = A383913 n

end A383913

/-! ## A383913.P8870609054975775532

`ogf((1+6x+11x^2+6x^3)/(1-10x+35x^2-50x^3+24x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383913

/-- `ogf((1+6x+11x^2+6x^3)/(1-10x+35x^2-50x^3+24x^4))` -/
def P8870609054975775532.Spec : Prop :=
  ∀ n, P8870609054975775532.a n = A383913 n

theorem P8870609054975775532.correct : P8870609054975775532.Spec := by
  intro n
  simp only [A383913]

end A383913

/-! ## A383913.P640324098651992930

`A172108(A000217(n+4)-n)`
-/

namespace A383913.P640324098651992930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172108 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A383913.P640324098651992930

namespace A383913

/-- `A172108(A000217(n+4)-n)` -/
def P640324098651992930.Spec : Prop :=
  ∀ n, P640324098651992930.a n = A383913 n

end A383913

/-!
# A383915: Number of points enclosed by the unique circle that goes through the 8 points (-n, 0), (-n, 1), (0, n+1), (1, n+1), (n+1, 1), (n+1, 0), (1, -n), (0, -n).

The programs for A383915, there is no canonical definition to state claims against.
-/

/-! ## A383915.P3719227171690609631

`∑[4*A162431(n)]`
-/

namespace A383915.P3719227171690609631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383915.P3719227171690609631

/-! ## A383915.P9297091114429268698

`A053415(2*n+3)`
-/

namespace A383915.P9297091114429268698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 (2 * n + 3)

end

end A383915.P9297091114429268698

/-! ## A383915.P18387763370783872728

`A008586(∑[A162431(n)])`
-/

namespace A383915.P18387763370783872728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383915.P18387763370783872728

/-! ## A383915.P16429647108199810061

`lcm(2, A053415(A004273(n+2)))`
-/

namespace A383915.P16429647108199810061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A053415 (A004273 (n + 2)).toNat)

end

end A383915.P16429647108199810061

/-! ## A383915.P6115582718986202185

`record[A053415(n+3)/A038712(n+1)]`
-/

namespace A383915.P6115582718986202185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 (n + 3) : ℚ) / (A038712 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383915.P6115582718986202185

/-! ## A383915.P4341262066001607245

`A053415(A004273(n+2))%A050997(n+1)`
-/

namespace A383915.P4341262066001607245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053415 (A004273 (n + 2)).toNat) (A050997 (n + 1))

end

end A383915.P4341262066001607245

/-!
# A383918: Primes made up of 0's and five 1's only.

The programs for A383918, there is no canonical definition to state claims against.
-/

/-! ## A383918.P11087294087778261320

`∩[A020449(n+1), A062341(n+1)]`
-/

namespace A383918.P11087294087778261320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P11087294087778261320

/-! ## A383918.P14594943790174695676

`∩[A020449(n+1), A038447(n+1)]`
-/

namespace A383918.P14594943790174695676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P14594943790174695676

/-! ## A383918.P11065989694748698364

`∩[A038447(n+1), A062341(n+1)]`
-/

namespace A383918.P11065989694748698364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P11065989694748698364

/-! ## A383918.P11532385201887479427

`∩[A038447(n+1), A069598(n+1)]`
-/

namespace A383918.P11532385201887479427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P11532385201887479427

/-! ## A383918.P15453442388700333158

`∩[A038447(n+1), A385345(n+1)]`
-/

namespace A383918.P15453442388700333158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P15453442388700333158

/-! ## A383918.P2692049420289874749

`∩[A062341(n+1), A385345(n+1)]`
-/

namespace A383918.P2692049420289874749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P2692049420289874749

/-! ## A383918.P6151288457693494327

`∩[A062341(n+1), A007088(n)]`
-/

namespace A383918.P6151288457693494327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P6151288457693494327

/-! ## A383918.P13648217035134748065

`∩[A062341(n+1), A077813(n+1)]`
-/

namespace A383918.P13648217035134748065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P13648217035134748065

/-! ## A383918.P469914133044997719

`∩[A062341(n+1), A280049(n+1)]`
-/

namespace A383918.P469914133044997719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P469914133044997719

/-! ## A383918.P1773910990434048910

`∩[A037415(n+1), A062341(n+1)]`
-/

namespace A383918.P1773910990434048910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383918.P1773910990434048910

/-!
# A383919: Primes made up of 0's and seven 1's only.

The programs for A383919, there is no canonical definition to state claims against.
-/

/-! ## A383919.P18442885720959723355

`∩[A020449(n+1), A038449(n+1)]`
-/

namespace A383919.P18442885720959723355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383919.P18442885720959723355

/-! ## A383919.P3301695252425909185

`∩[A038449(n+1), A069598(n+1)]`
-/

namespace A383919.P3301695252425909185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383919.P3301695252425909185

/-! ## A383919.P5593535796475467892

`∩[A038449(n+1), A385345(n+1)]`
-/

namespace A383919.P5593535796475467892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383919.P5593535796475467892

/-!
# A383920: Smallest m such that sigma(m) >= n*m/2.

The programs for A383920, there is no canonical definition to state claims against.
-/

/-! ## A383920.P10632184255279099470

`A136339(A069916(n+1))`
-/

namespace A383920.P10632184255279099470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136339 (A069916 (n + 1)).toNat

end

end A383920.P10632184255279099470

/-! ## A383920.P18024247435552683048

`A333665(A070211(n+1))`
-/

namespace A383920.P18024247435552683048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333665 (A070211 (n + 1)).toNat

end

end A383920.P18024247435552683048

/-! ## A383920.P10819027905456218733

`A333665(A328423(n+1))`
-/

namespace A383920.P10819027905456218733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333665 (A328423 (n + 1)).toNat

end

end A383920.P10819027905456218733

/-!
# A383922: a(n) = A002104(n) + A002104(n+1) - 1.

The programs for A383922, the canonical program `A383922.P6416788775665426922` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383922 has offset 0).

The definition of A383922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383922.P16274343366181194762

`n*a(n-1)-a(n-2)-(n-2)*a(n-3)+4` with `a(0)=0, a(1)=3, a(2)=10`
-/

namespace A383922.P16274343366181194762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 10] fun n a =>
  (n : ℤ) * a (n - 1) - a (n - 2) - ((n : ℤ) - 2) * a (n - 3) + 4

end

end A383922.P16274343366181194762

namespace A383922

/-- `n*a(n-1)-a(n-2)-(n-2)*a(n-3)+4` -/
def P16274343366181194762.Spec : Prop :=
  ∀ n, P16274343366181194762.a n = A383922 n

end A383922

/-! ## A383922.P6416788775665426922

`A002104(n)+A002104(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383922

/-- `A002104(n)+A002104(n+1)-1` -/
def P6416788775665426922.Spec : Prop :=
  ∀ n, P6416788775665426922.a n = A383922 n

theorem P6416788775665426922.correct : P6416788775665426922.Spec := by
  intro n
  simp only [A383922]

end A383922

/-! ## A383922.P7641225744630374526

`A002104(n)+A001338(n+1)`
-/

namespace A383922.P7641225744630374526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n + A001338 (n + 1)

end

end A383922.P7641225744630374526

namespace A383922

/-- `A002104(n)+A001338(n+1)` -/
def P7641225744630374526.Spec : Prop :=
  ∀ n, P7641225744630374526.a n = A383922 n

end A383922

/-! ## A383922.P8624712837576069158

`A001338(n+1)+(∑[A054091(n)]-1)/2`
-/

namespace A383922.P8624712837576069158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001338 (n + 1) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A383922.P8624712837576069158

namespace A383922

/-- `A001338(n+1)+(∑[A054091(n)]-1)/2` -/
def P8624712837576069158.Spec : Prop :=
  ∀ n, P8624712837576069158.a n = (A383922 n : ℚ)

end A383922

/-! ## A383922.P1533908801289406803

`A002104(n)+A007526(n)+A002104(n)`
-/

namespace A383922.P1533908801289406803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n + (A007526 n + A002104 n)

end

end A383922.P1533908801289406803

namespace A383922

/-- `A002104(n)+A007526(n)+A002104(n)` -/
def P1533908801289406803.Spec : Prop :=
  ∀ n, P1533908801289406803.a n = A383922 n

end A383922

/-!
# A383923: Numbers of the form m^p where both p and (m^(p^2) - 1)/(m^p - 1) are prime.

The programs for A383923, there is no canonical definition to state claims against.
-/

/-! ## A383923.P12504003499434600188

`A395985(A383924(n+1))`
-/

namespace A383923.P12504003499434600188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395985 (A383924 (n + 1)).toNat

end

end A383923.P12504003499434600188

/-!
# A383925: Primes of the form (m^(p^2) - 1)/(m^p - 1) with prime p and integer m >= 2.

The programs for A383925, there is no canonical definition to state claims against.
-/

/-! ## A383925.P12341534819330788899

`A331806(A383926(n+1))`
-/

namespace A383925.P12341534819330788899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331806 (A383926 (n + 1)).toNat

end

end A383925.P12341534819330788899

/-! ## A383925.P14691757499586911695

`∩[A249410(n+1), A339955(n+1)]`
-/

namespace A383925.P14691757499586911695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383925.P14691757499586911695

/-! ## A383925.P4636939807657588647

`∩[A078324(n+1), A161682(n+1)]`
-/

namespace A383925.P4636939807657588647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383925.P4636939807657588647

/-! ## A383925.P5482449410721929969

`∩[A078325(n+1), A161682(n+1)]`
-/

namespace A383925.P5482449410721929969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383925.P5482449410721929969

/-!
# A383926: Powers m^p with prime p, producing primes (m^(p^2) - 1)/(m^p - 1) in A383925.

The programs for A383926, there is no canonical definition to state claims against.
-/

/-! ## A383926.P288651121668041149

`A059711(A383925(n+1))`
-/

namespace A383926.P288651121668041149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A383925 (n + 1)).toNat

end

end A383926.P288651121668041149

/-! ## A383926.P12172399772268204716

`filter[A086930(n+2), A075802(#)]`
-/

namespace A383926.P12172399772268204716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A383926.P12172399772268204716

/-! ## A383926.P6371665838261595735

`A096503(2*(n+1))^A061395(A291713(n+1))`
-/

namespace A383926.P6371665838261595735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096503 (2 * (n + 1)) : ℚ) ^ (A061395 (A291713 (n + 1)).toNat : ℤ)

end

end A383926.P6371665838261595735

/-!
# A383928: Expansion of g.f. cosh(9*arctanh(4*sqrt(x))).

The programs for A383928, there is no canonical definition to state claims against.
-/

/-! ## A383928.P9231409762547551843

`A000302(n)*A285046(n)`
-/

namespace A383928.P9231409762547551843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A285046 n

end

end A383928.P9231409762547551843

/-! ## A383928.P11081929697813337709

`A000079(n)²*A285046(n)`
-/

namespace A383928.P11081929697813337709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A285046 n

end

end A383928.P11081929697813337709

/-! ## A383928.P6806726865919789144

`record[A262616(n)]*A285046(n)`
-/

namespace A383928.P6806726865919789144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A285046 n

end

end A383928.P6806726865919789144

/-! ## A383928.P14348447816863668419

`A262616(A000217(n))*A285046(n)`
-/

namespace A383928.P14348447816863668419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 (A000217 n).toNat * A285046 n

end

end A383928.P14348447816863668419

/-! ## A383928.P11516110160469891392

`A384417(n)/A000079(n)²`
-/

namespace A383928.P11516110160469891392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384417 n : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A383928.P11516110160469891392

/-! ## A383928.P4910619620376763916

`A384417(n)/record[A262616(n)]`
-/

namespace A383928.P4910619620376763916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384417 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A383928.P4910619620376763916

/-!
# A383935: Expansion of 1 / ( (1-3*x) * (1-6*x) )^(1/3).

The programs for A383935, there is no canonical definition to state claims against.
-/

/-! ## A383935.P14590663259532774534

`A107264(n)-A392374(A000079(n))`
-/

namespace A383935.P14590663259532774534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107264 n - A392374 (A000079 n).toNat

end

end A383935.P14590663259532774534

/-!
# A383936: Expansion of 1 / ( (1-6*x) * (1+3*x)^2 )^(1/3).

The programs for A383936, there is no canonical definition to state claims against.
-/

/-! ## A383936.P8481859064378750883

`A145366(A387215(n+3))`
-/

namespace A383936.P8481859064378750883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145366 (A387215 (n + 3)).toNat

end

end A383936.P8481859064378750883

/-!
# A383937: Expansion of 1 / ( (1-3*x) * (1-6*x) )^(2/3).

The programs for A383937, there is no canonical definition to state claims against.
-/

/-! ## A383937.P9297379281110985705

`A026538(2*A032546(n+1))`
-/

namespace A383937.P9297379281110985705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026538 (2 * A032546 (n + 1)).toNat

end

end A383937.P9297379281110985705

/-!
# A383942: a(n) = (8*10^(2n) - 10^(n+1) + 2) / 9.

The programs for A383942, the canonical program `A383942.P9378418643718104757` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383942 has offset 1).

The definition of A383942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383942.P9378418643718104757

`(8*10^(2*(n+1))-10^(n+2)+2)/9`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383942

/-- `(8*10^(2*(n+1))-10^(n+2)+2)/9` -/
def P9378418643718104757.Spec : Prop :=
  ∀ n, P9378418643718104757.a n = (A383942 (n + 1) : ℚ)

end A383942

/-! ## A383942.P14251850588528015651

`A178635(n+1)+A002280(n+1)`
-/

namespace A383942.P14251850588528015651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178635 (n + 1) + A002280 (n + 1)

end

end A383942.P14251850588528015651

namespace A383942

/-- `A178635(n+1)+A002280(n+1)` -/
def P14251850588528015651.Spec : Prop :=
  ∀ n, P14251850588528015651.a n = A383942 (n + 1)

end A383942

/-! ## A383942.P2180114698778240739

`(A350995(n)+A097166(n))*A097166(n+1)`
-/

namespace A383942.P2180114698778240739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A350995 n + A097166 n) * A097166 (n + 1)

end

end A383942.P2180114698778240739

namespace A383942

/-- `(A350995(n)+A097166(n))*A097166(n+1)` -/
def P2180114698778240739.Spec : Prop :=
  ∀ n, P2180114698778240739.a n = A383942 (n + 1)

end A383942

/-! ## A383942.P17528485841051294541

`(A246057(n+1)-A002277(n+1))*A002280(n+1)`
-/

namespace A383942.P17528485841051294541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246057 (n + 1) - A002277 (n + 1)) * A002280 (n + 1)

end

end A383942.P17528485841051294541

namespace A383942

/-- `(A246057(n+1)-A002277(n+1))*A002280(n+1)` -/
def P17528485841051294541.Spec : Prop :=
  ∀ n, P17528485841051294541.a n = A383942 (n + 1)

end A383942

/-! ## A383942.P16630082461727388756

`C(A097166(n+1), 2)`
-/

namespace A383942.P16630082461727388756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097166 (n + 1)).toNat 2

end

end A383942.P16630082461727388756

namespace A383942

/-- `C(A097166(n+1), 2)` -/
def P16630082461727388756.Spec : Prop :=
  ∀ n, (P16630082461727388756.a n : ℤ) = A383942 (n + 1)

end A383942

/-!
# A383943: GCD of the psi-amicable pairs: a(n) = gcd(A323329(n), A323330(n)).

The programs for A383943, there is no canonical definition to state claims against.
-/

/-! ## A383943.P261592083245885808

`gcd(A323329(n+1), A323330(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383943.P261592083245885808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323329 (n + 1)) (A323330 (n + 1))

end

end A383943.P261592083245885808

/-! ## A383943.P11386856241025214725

`A387885(n+1)/A389098(n+1)`
-/

namespace A383943.P11386856241025214725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387885 (n + 1) : ℚ) / (A389098 (n + 1) : ℚ)

end

end A383943.P11386856241025214725

/-! ## A383943.P1780292071845633619

`gcd(A387641(n+1), A389098(n+1))`
-/

namespace A383943.P1780292071845633619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A387641 (n + 1)) (A389098 (n + 1))

end

end A383943.P1780292071845633619

/-! ## A383943.P15089017774160708239

`A323329(n+1)*A323330(n+1)/A389098(n+1)`
-/

namespace A383943.P15089017774160708239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323329 (n + 1) * A323330 (n + 1) : ℚ) / (A389098 (n + 1) : ℚ)

end

end A383943.P15089017774160708239

/-! ## A383943.P11183605758276629370

`A324873(A323329(n+1))`
-/

namespace A383943.P11183605758276629370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324873 (A323329 (n + 1)).toNat

end

end A383943.P11183605758276629370

/-!
# A383946: Expansion of 1/sqrt((1-9*x)^3 * (1-x)).

The programs for A383946, the canonical program `A383946.P16362307403769968417` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383946 has offset 0).

The definition of A383946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383946.P4506102044966084819

`∑[A387208(n)]`
-/

namespace A383946.P4506102044966084819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383946.P4506102044966084819

namespace A383946

/-- `∑[A387208(n)]` -/
def P4506102044966084819.Spec : Prop :=
  ∀ n, P4506102044966084819.a n = A383946 n

end A383946

/-! ## A383946.P16362307403769968417

`Δ[A000217(n)*A059231(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383946

/-- `Δ[A000217(n)*A059231(n)]` -/
def P16362307403769968417.Spec : Prop :=
  ∀ n, P16362307403769968417.a n = A383946 n

theorem P16362307403769968417.correct : P16362307403769968417.Spec := by
  intro n
  simp only [A383946]

end A383946

/-! ## A383946.P10451962249003919940

`Δ[A000217(n)*A127846(n)]`
-/

namespace A383946.P10451962249003919940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A127846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383946.P10451962249003919940

namespace A383946

/-- `Δ[A000217(n)*A127846(n)]` -/
def P10451962249003919940.Spec : Prop :=
  ∀ n, P10451962249003919940.a n = A383946 n

end A383946

/-! ## A383946.P8594552353407184849

`(n+1)*A368773(Δ[n²])`
-/

namespace A383946.P8594552353407184849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A368773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A383946.P8594552353407184849

namespace A383946

/-- `(n+1)*A368773(Δ[n²])` -/
def P8594552353407184849.Spec : Prop :=
  ∀ n, P8594552353407184849.a n = A383946 n

end A383946

/-!
# A383947: Expansion of 1/sqrt((1+x)^3 * (1-7*x)).

The programs for A383947, there is no canonical definition to state claims against.
-/

/-! ## A383947.P13128102155206720107

`abs(∑[∑[A085456(n)]])`
-/

namespace A383947.P13128102155206720107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A383947.P13128102155206720107

/-! ## A383947.P17439414539123745278

`(n+1)*A337168(n)`
-/

namespace A383947.P17439414539123745278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337168 n

end

end A383947.P17439414539123745278

/-! ## A383947.P10287532368323470964

`A322242(n)-a(n-1)` with `a(0)=1`
-/

namespace A383947.P10287532368323470964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322242 n - a (n - 1)

end

end A383947.P10287532368323470964

/-! ## A383947.P14361355146896828025

`A000984(n)*A337168(n)/A000108(n)`
-/

namespace A383947.P14361355146896828025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n * A337168 n : ℚ) / (A000108 n : ℚ)

end

end A383947.P14361355146896828025

/-!
# A383948: Expansion of 1/sqrt((1-3*x)^3 * (1-7*x)).

The programs for A383948, there is no canonical definition to state claims against.
-/

/-! ## A383948.P10971274123354708614

`(n+1)*A104455(n)`
-/

namespace A383948.P10971274123354708614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104455 n

end

end A383948.P10971274123354708614

/-! ## A383948.P17412879436399347019

`(n+1)*A126331(∑[n])`
-/

namespace A383948.P17412879436399347019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A126331 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383948.P17412879436399347019

/-! ## A383948.P13286612369128867548

`(n+1)*A171589(∑[n])`
-/

namespace A383948.P13286612369128867548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171589 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383948.P13286612369128867548

/-! ## A383948.P15578150405597352812

`record[A126331(n)*A131818(n+1)]`
-/

namespace A383948.P15578150405597352812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126331 n * A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383948.P15578150405597352812

/-! ## A383948.P14264716923484762396

`record[A126331(n)/A323718(n)]*(n+1)`
-/

namespace A383948.P14264716923484762396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126331 n : ℚ) / (A323718 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n + 1 : ℚ)

end

end A383948.P14264716923484762396

/-!
# A383949: Expansion of 1/sqrt((1-x)^3 * (1-5*x)).

The programs for A383949, the canonical program `A383949.P7939067795881425462` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383949 has offset 0).

The definition of A383949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383949.P7939067795881425462

`∑[A026375(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A383949

/-- `∑[A026375(n)]` -/
def P7939067795881425462.Spec : Prop :=
  ∀ n, P7939067795881425462.a n = A383949 n

theorem P7939067795881425462.correct : P7939067795881425462.Spec := by
  intro n
  simp only [A383949]

end A383949

/-! ## A383949.P15565543764344279661

`∑[∑[A085362(n)]]`
-/

namespace A383949.P15565543764344279661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383949.P15565543764344279661

namespace A383949

/-- `∑[∑[A085362(n)]]` -/
def P15565543764344279661.Spec : Prop :=
  ∀ n, P15565543764344279661.a n = A383949 n

end A383949

/-! ## A383949.P9141857697430016083

`(n+1)*∑[A002212(n)]`
-/

namespace A383949.P9141857697430016083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383949.P9141857697430016083

namespace A383949

/-- `(n+1)*∑[A002212(n)]` -/
def P9141857697430016083.Spec : Prop :=
  ∀ n, P9141857697430016083.a n = A383949 n

end A383949

/-! ## A383949.P6753015222952111241

`(n+1)*A007317(n+1)`
-/

namespace A383949.P6753015222952111241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007317 (n + 1)

end

end A383949.P6753015222952111241

namespace A383949

/-- `(n+1)*A007317(n+1)` -/
def P6753015222952111241.Spec : Prop :=
  ∀ n, P6753015222952111241.a n = A383949 n

end A383949

/-! ## A383949.P3720907204252035378

`(n+1)*A181768(n+1)`
-/

namespace A383949.P3720907204252035378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181768 (n + 1)

end

end A383949.P3720907204252035378

namespace A383949

/-- `(n+1)*A181768(n+1)` -/
def P3720907204252035378.Spec : Prop :=
  ∀ n, P3720907204252035378.a n = A383949 n

end A383949

/-! ## A383949.P15709896809917810747

`(n+1)*A055879(Δ[n²])`
-/

namespace A383949.P15709896809917810747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055879 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A383949.P15709896809917810747

namespace A383949

/-- `(n+1)*A055879(Δ[n²])` -/
def P15709896809917810747.Spec : Prop :=
  ∀ n, P15709896809917810747.a n = A383949 n

end A383949

/-! ## A383949.P11831346376503481234

`∑[A110165(∑[n])]`
-/

namespace A383949.P11831346376503481234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110165 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383949.P11831346376503481234

namespace A383949

/-- `∑[A110165(∑[n])]` -/
def P11831346376503481234.Spec : Prop :=
  ∀ n, P11831346376503481234.a n = A383949 n

end A383949

/-! ## A383949.P10432934903816546669

`∑[A111965(∑[n])]`
-/

namespace A383949.P10432934903816546669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111965 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383949.P10432934903816546669

namespace A383949

/-- `∑[A111965(∑[n])]` -/
def P10432934903816546669.Spec : Prop :=
  ∀ n, P10432934903816546669.a n = A383949 n

end A383949

/-! ## A383949.P11282489393554420645

`(n+1)*A104259(∑[n])`
-/

namespace A383949.P11282489393554420645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104259 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383949.P11282489393554420645

namespace A383949

/-- `(n+1)*A104259(∑[n])` -/
def P11282489393554420645.Spec : Prop :=
  ∀ n, P11282489393554420645.a n = A383949 n

end A383949

/-! ## A383949.P13198763376471470700

`∑[A272866(∑[2*n])]`
-/

namespace A383949.P13198763376471470700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272866 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383949.P13198763376471470700

namespace A383949

/-- `∑[A272866(∑[2*n])]` -/
def P13198763376471470700.Spec : Prop :=
  ∀ n, P13198763376471470700.a n = A383949 n

end A383949

/-!
# A383950: Expansion of 1/sqrt((1-2*x)^3 * (1-6*x)).

The programs for A383950, there is no canonical definition to state claims against.
-/

/-! ## A383950.P8606240765591494548

`(n+1)*A064613(n)`
-/

namespace A383950.P8606240765591494548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064613 n

end

end A383950.P8606240765591494548

/-! ## A383950.P12225581392654371545

`(n+1)*A171568(∑[n])`
-/

namespace A383950.P12225581392654371545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383950.P12225581392654371545

/-! ## A383950.P16026248516333791668

`A081671(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A383950.P16026248516333791668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081671 n + 2 * a (n - 1)

end

end A383950.P16026248516333791668

/-! ## A383950.P15844454573302039637

`(n+1)*A124574(A000124(n))`
-/

namespace A383950.P15844454573302039637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A124574 (A000124 n).toNat

end

end A383950.P15844454573302039637

/-! ## A383950.P8064513362945151753

`A064613(n)*A070939(A000079(n))`
-/

namespace A383950.P8064513362945151753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064613 n * A070939 (A000079 n).toNat

end

end A383950.P8064513362945151753

/-!
# A383951: Expansion of 1/sqrt((1-x)^3 * (1-13*x)).

The programs for A383951, there is no canonical definition to state claims against.
-/

/-! ## A383951.P13445595806651217675

`∑[A340973(n)]`
-/

namespace A383951.P13445595806651217675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383951.P13445595806651217675

/-! ## A383951.P8835978113523391575

`∑[∑[A085364(n)]]`
-/

namespace A383951.P8835978113523391575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383951.P8835978113523391575

/-! ## A383951.P2586413109879759745

`(n+1)*A337167(n)`
-/

namespace A383951.P2586413109879759745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337167 n

end

end A383951.P2586413109879759745

/-! ## A383951.P1490745932460468231

`(n+1)*A340968(∑[n+3]+n+3)`
-/

namespace A383951.P1490745932460468231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340968 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A383951.P1490745932460468231

/-!
# A383953: a(0) = 4, a(n) = 2*a(n-1) + (-1)^n.

The programs for A383953, the canonical program `A383953.P14880962730702107597` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383953 has offset 0).

The definition of A383953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(-1)^n` (program `A383953.P14880962730702107597`, by `A383953.P14880962730702107597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383953.P14880962730702107597

`2*a(n-1)+(-1)^n` with `a(0)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A383953

/-- `2*a(n-1)+(-1)^n` -/
def P14880962730702107597.Spec : Prop :=
  ∀ n, P14880962730702107597.a n = A383953 n

theorem P14880962730702107597.correct : P14880962730702107597.Spec := by
  intro n
  simp only [A383953]

end A383953

/-! ## A383953.P17843804863871591433

`a(n-4)+55*2^(n-4)` with `a(0)=4, a(1)=7, a(2)=15, a(3)=29`
-/

namespace A383953.P17843804863871591433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 7, 15, 29] fun n a =>
  a (n - 4) + 55 * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)

end

end A383953.P17843804863871591433

namespace A383953

/-- `a(n-4)+55*2^(n-4)` -/
def P17843804863871591433.Spec : Prop :=
  ∀ n, P17843804863871591433.a n = (A383953 n : ℚ)

end A383953

/-! ## A383953.P2359502018506765511

`11*A001045(n)+(-1)^n*4`
-/

namespace A383953.P2359502018506765511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A001045 n + (-1) ^ n * 4

end

end A383953.P2359502018506765511

namespace A383953

/-- `11*A001045(n)+(-1)^n*4` -/
def P2359502018506765511.Spec : Prop :=
  ∀ n, P2359502018506765511.a n = A383953 n

end A383953

/-! ## A383953.P17032738694696576253

`A340627(n+1)/2`
-/

namespace A383953.P17032738694696576253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340627 (n + 1) : ℚ) / 2

end

end A383953.P17032738694696576253

namespace A383953

/-- `A340627(n+1)/2` -/
def P17032738694696576253.Spec : Prop :=
  ∀ n, P17032738694696576253.a n = (A383953 n : ℚ)

end A383953

/-! ## A383953.P5179300806136956205

`(11*2^n+(-1)^n)/3`
-/

namespace A383953.P5179300806136956205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 2 ^ n : ℤ) + (-1) ^ n : ℚ) / 3

end

end A383953.P5179300806136956205

namespace A383953

/-- `(11*2^n+(-1)^n)/3` -/
def P5179300806136956205.Spec : Prop :=
  ∀ n, P5179300806136956205.a n = (A383953 n : ℚ)

theorem P5179300806136956205.correct : P5179300806136956205.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A383953, Nat.add_sub_cancel, A383953.P5179300806136956205.a, A383953.P14880962730702107597.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A383953, Nat.add_sub_cancel, A383953.P5179300806136956205.a, A383953.P14880962730702107597.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A383953

/-! ## A383953.P1435847757475778235

`ogf((4+3x)/(1-x-2x^2))`
-/

namespace A383953.P1435847757475778235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, -1, -2] n

end

end A383953.P1435847757475778235

namespace A383953

/-- `ogf((4+3x)/(1-x-2x^2))` -/
def P1435847757475778235.Spec : Prop :=
  ∀ n, P1435847757475778235.a n = A383953 n

end A383953

/-! ## A383953.P4194308521876553000

`(-1)^n+2*a(n-1)` with `a(0)=4`
-/

namespace A383953.P4194308521876553000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (-1) ^ n + 2 * a (n - 1)

end

end A383953.P4194308521876553000

namespace A383953

/-- `(-1)^n+2*a(n-1)` -/
def P4194308521876553000.Spec : Prop :=
  ∀ n, P4194308521876553000.a n = A383953 n

theorem P4194308521876553000.correct : P4194308521876553000.Spec := by
  intro n
  simp only [A383953, Nat.add_sub_cancel, A383953.P4194308521876553000.a, A383953.P14880962730702107597.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A383953

/-! ## A383953.P5544716773832602190

`2*(a(n-1)-n%2)+1` with `a(0)=4`
-/

namespace A383953.P5544716773832602190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * (a (n - 1) - ((n % 2 : ℕ) : ℤ)) + 1

end

end A383953.P5544716773832602190

namespace A383953

/-- `2*(a(n-1)-n%2)+1` -/
def P5544716773832602190.Spec : Prop :=
  ∀ n, P5544716773832602190.a n = A383953 n

end A383953

/-! ## A383953.P17389682972313205374

`2*(a(n-1)+gcd(2, n))-3` with `a(0)=4`
-/

namespace A383953.P17389682972313205374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * (a (n - 1) + (Nat.gcd 2 n : ℤ)) - 3

end

end A383953.P17389682972313205374

namespace A383953

/-- `2*(a(n-1)+gcd(2, n))-3` -/
def P17389682972313205374.Spec : Prop :=
  ∀ n, P17389682972313205374.a n = A383953 n

end A383953

/-! ## A383953.P11163857875621150546

`floor(a(n-1)+2*a(n-2))` with `a(0)=4, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A383953.P11163857875621150546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A383953.P11163857875621150546

namespace A383953

/-- `floor(a(n-1)+2*a(n-2))` -/
def P11163857875621150546.Spec : Prop :=
  ∀ n, (P11163857875621150546.a n : ℤ) = A383953 n

end A383953

/-! ## A383953.P15893220938512992137

`2*(a(n-2)+a(n-1)/2)` with `a(0)=4, a(1)=7`
-/

namespace A383953.P15893220938512992137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 7] fun n a =>
  2 * (a (n - 2) + a (n - 1) / 2)

end

end A383953.P15893220938512992137

namespace A383953

/-- `2*(a(n-2)+a(n-1)/2)` -/
def P15893220938512992137.Spec : Prop :=
  ∀ n, P15893220938512992137.a n = (A383953 n : ℚ)

end A383953

/-! ## A383953.P668137649821488828

`∑[a(n-1)+2*a(n-2)]` with `a(0)=4, a(1)=3, a(2)=8`
-/

namespace A383953.P668137649821488828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3, 8] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383953.P668137649821488828

namespace A383953

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P668137649821488828.Spec : Prop :=
  ∀ n, (P668137649821488828.a n : ℤ) = A383953 n

end A383953

/-! ## A383953.P11037476070646128509

`floor(a(n-2)+a(n-1)+a(n-2))` with `a(0)=4, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A383953.P11037476070646128509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A383953.P11037476070646128509

namespace A383953

/-- `floor(a(n-2)+a(n-1)+a(n-2))` -/
def P11037476070646128509.Spec : Prop :=
  ∀ n, (P11037476070646128509.a n : ℤ) = A383953 n

end A383953

/-! ## A383953.P15501214696561031550

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=4, a(1)=3, a(2)=8`
-/

namespace A383953.P15501214696561031550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3, 8] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383953.P15501214696561031550

namespace A383953

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P15501214696561031550.Spec : Prop :=
  ∀ n, (P15501214696561031550.a n : ℤ) = A383953 n

end A383953

/-! ## A383953.P16795009153805487763

`A048573(n)+2^(n+1)`
-/

namespace A383953.P16795009153805487763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n + (2 ^ (n + 1) : ℤ)

end

end A383953.P16795009153805487763

namespace A383953

/-- `A048573(n)+2^(n+1)` -/
def P16795009153805487763.Spec : Prop :=
  ∀ n, P16795009153805487763.a n = A383953 n

end A383953

/-! ## A383953.P16915690866705932056

`A283642(n+1)+2^n`
-/

namespace A383953.P16915690866705932056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (n + 1) + (2 ^ n : ℤ)

end

end A383953.P16915690866705932056

namespace A383953

/-- `A283642(n+1)+2^n` -/
def P16915690866705932056.Spec : Prop :=
  ∀ n, P16915690866705932056.a n = A383953 n

end A383953

/-! ## A383953.P8867387015645229975

`A084170(n)+A048578(n)`
-/

namespace A383953.P8867387015645229975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 n + A048578 n

end

end A383953.P8867387015645229975

namespace A383953

/-- `A084170(n)+A048578(n)` -/
def P8867387015645229975.Spec : Prop :=
  ∀ n, P8867387015645229975.a n = A383953 n

end A383953

/-! ## A383953.P11102526316853823564

`A153893(n)+A052953(n)`
-/

namespace A383953.P11102526316853823564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n + A052953 n

end

end A383953.P11102526316853823564

namespace A383953

/-- `A153893(n)+A052953(n)` -/
def P11102526316853823564.Spec : Prop :=
  ∀ n, P11102526316853823564.a n = A383953 n

end A383953

/-! ## A383953.P1406649847094402761

`A159290(n)+A128209(n)`
-/

namespace A383953.P1406649847094402761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159290 n + A128209 n

end

end A383953.P1406649847094402761

namespace A383953

/-- `A159290(n)+A128209(n)` -/
def P1406649847094402761.Spec : Prop :=
  ∀ n, P1406649847094402761.a n = A383953 n

end A383953

/-! ## A383953.P2884861846093506388

`A171559(n)+A168642(n)`
-/

namespace A383953.P2884861846093506388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 n + A168642 n

end

end A383953.P2884861846093506388

namespace A383953

/-- `A171559(n)+A168642(n)` -/
def P2884861846093506388.Spec : Prop :=
  ∀ n, P2884861846093506388.a n = A383953 n

end A383953

/-!
# A383954: a(n) = Product_{i} (phi(p_i^e_i)-1) where n = Product_{i} p_i^e_i and phi is the Euler phi function.

The programs for A383954, there is no canonical definition to state claims against.
-/

/-! ## A383954.P8813670860861851459

`∑{d}[n+1, A008683(#)*A360523((n+1)/#)]`
-/

namespace A383954.P8813670860861851459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A360523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383954.P8813670860861851459

/-! ## A383954.P1993171918790749433

`or(A003849(A197365(n+4)), A007431(n+1))`
-/

namespace A383954.P1993171918790749433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A197365 (n + 4)).toNat) (A007431 (n + 1))

end

end A383954.P1993171918790749433

/-!
# A383957: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A383957, the canonical program `A383957.P8900195989436403223` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383957 has offset 0).

The definition of A383957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383957.P8900195989436403223

`2*A000108(n)²+4*A000108(n)+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383957

/-- `2*A000108(n)²+4*A000108(n)+1` -/
def P8900195989436403223.Spec : Prop :=
  ∀ n, P8900195989436403223.a n = A383957 n

theorem P8900195989436403223.correct : P8900195989436403223.Spec := by
  intro n
  simp only [A383957]

end A383957

/-! ## A383957.P10884330076381224194

`A382114(n)+A000108(n)`
-/

namespace A383957.P10884330076381224194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382114 n + A000108 n

end

end A383957.P10884330076381224194

namespace A383957

/-- `A382114(n)+A000108(n)` -/
def P10884330076381224194.Spec : Prop :=
  ∀ n, P10884330076381224194.a n = A383957 n

theorem P10884330076381224194.correct : P10884330076381224194.Spec := by
  intro n
  simp only [A383957, Nat.add_sub_cancel, A383957.P10884330076381224194.a, A383957.P8900195989436403223.a, A000108, A000108.P17551949696095299361.a, A382114, A382114.P18285456847627497086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383957

/-! ## A383957.P8401352517209305553

`A386291(n)+A383251(n)`
-/

namespace A383957.P8401352517209305553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386291 n + A383251 n

end

end A383957.P8401352517209305553

namespace A383957

/-- `A386291(n)+A383251(n)` -/
def P8401352517209305553.Spec : Prop :=
  ∀ n, P8401352517209305553.a n = A383957 n

theorem P8401352517209305553.correct : P8401352517209305553.Spec := by
  intro n
  simp only [A383957, Nat.add_sub_cancel, A383957.P8401352517209305553.a, A383957.P8900195989436403223.a, A000108, A000108.P17551949696095299361.a, A383251, A383251.P10776672623636940607.a, A386291, A386291.P6378607592052834356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383957

/-! ## A383957.P1292093595439195697

`A000108(n)+A381483(n)/A000108(n)`
-/

namespace A383957.P1292093595439195697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) + (A381483 n : ℚ) / (A000108 n : ℚ)

end

end A383957.P1292093595439195697

namespace A383957

/-- `A000108(n)+A381483(n)/A000108(n)` -/
def P1292093595439195697.Spec : Prop :=
  ∀ n, P1292093595439195697.a n = (A383957 n : ℚ)

end A383957

/-! ## A383957.P114333111243072512

`A382114(n)+A381483(n)/A382114(n)`
-/

namespace A383957.P114333111243072512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382114 n : ℚ) + (A381483 n : ℚ) / (A382114 n : ℚ)

end

end A383957.P114333111243072512

namespace A383957

/-- `A382114(n)+A381483(n)/A382114(n)` -/
def P114333111243072512.Spec : Prop :=
  ∀ n, P114333111243072512.a n = (A383957 n : ℚ)

end A383957

/-!
# A383958: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000108(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A383958, the canonical program `A383958.P9624006830103847093` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383958 has offset 0).

The definition of A383958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383958.P9624006830103847093

`2*A001246(n)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A383958

/-- `2*A001246(n)-1` -/
def P9624006830103847093.Spec : Prop :=
  ∀ n, P9624006830103847093.a n = A383958 n

theorem P9624006830103847093.correct : P9624006830103847093.Spec := by
  intro n
  simp only [A383958]

end A383958

/-! ## A383958.P13554302666530694050

`2*A000108(n)²-1`
-/

namespace A383958.P13554302666530694050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n ^ 2 - 1

end

end A383958.P13554302666530694050

namespace A383958

/-- `2*A000108(n)²-1` -/
def P13554302666530694050.Spec : Prop :=
  ∀ n, P13554302666530694050.a n = A383958 n

end A383958

/-! ## A383958.P12969803310273729068

`A386291(n)-A383251(n)`
-/

namespace A383958.P12969803310273729068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386291 n - A383251 n

end

end A383958.P12969803310273729068

namespace A383958

/-- `A386291(n)-A383251(n)` -/
def P12969803310273729068.Spec : Prop :=
  ∀ n, P12969803310273729068.a n = A383958 n

theorem P12969803310273729068.correct : P12969803310273729068.Spec := by
  intro n
  simp only [A383958, Nat.add_sub_cancel, A383958.P12969803310273729068.a, A383958.P9624006830103847093.a, A001246, A001246.P6480413615949402633.a, A383251, A383251.P10776672623636940607.a, A386291, A386291.P6378607592052834356.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383958

/-! ## A383958.P10945785400479507281

`A383957(n)-2*A383251(n)`
-/

namespace A383958.P10945785400479507281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383957 n - 2 * A383251 n

end

end A383958.P10945785400479507281

namespace A383958

/-- `A383957(n)-2*A383251(n)` -/
def P10945785400479507281.Spec : Prop :=
  ∀ n, P10945785400479507281.a n = A383958 n

theorem P10945785400479507281.correct : P10945785400479507281.Spec := by
  intro n
  simp only [A383958, Nat.add_sub_cancel, A383958.P10945785400479507281.a, A383958.P9624006830103847093.a, A001246, A001246.P6480413615949402633.a, A383251, A383251.P10776672623636940607.a, A383957, A383957.P8900195989436403223.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383958

/-! ## A383958.P15050974099686901844

`A386291(n)+A386291(n)-A383957(n)`
-/

namespace A383958.P15050974099686901844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386291 n + (A386291 n - A383957 n)

end

end A383958.P15050974099686901844

namespace A383958

/-- `A386291(n)+A386291(n)-A383957(n)` -/
def P15050974099686901844.Spec : Prop :=
  ∀ n, P15050974099686901844.a n = A383958 n

theorem P15050974099686901844.correct : P15050974099686901844.Spec := by
  intro n
  simp only [A383958, Nat.add_sub_cancel, A383958.P15050974099686901844.a, A383958.P9624006830103847093.a, A001246, A001246.P6480413615949402633.a, A383957, A383957.P8900195989436403223.a, A386291, A386291.P6378607592052834356.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383958

/-!
# A383959: The number of prime powers p^e having the property that e is a unitary divisor of the p-adic valuation of n.

The programs for A383959, the canonical program `A383959.P7740077937827887255` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383959 has offset 1).

The definition of A383959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383959.P7740077937827887255

`∑{e}[n+1, A034444(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A383959

/-- `∑{e}[n+1, A034444(#)]` -/
def P7740077937827887255.Spec : Prop :=
  ∀ n, P7740077937827887255.a n = A383959 (n + 1)

theorem P7740077937827887255.correct : P7740077937827887255.Spec := by
  intro n
  simp only [A383959, Nat.add_sub_cancel]

end A383959

/-! ## A383959.P2291204915791562271

`∑{e}[n+1, A365499(#)]`
-/

namespace A383959.P2291204915791562271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A365499 (Nat.factorization (f1 n) p)

end

end A383959.P2291204915791562271

namespace A383959

/-- `∑{e}[n+1, A365499(#)]` -/
def P2291204915791562271.Spec : Prop :=
  ∀ n, P2291204915791562271.a n = A383959 (n + 1)

end A383959

/-!
# A383960: 

The programs for A383960, there is no canonical definition to state claims against.
-/

/-! ## A383960.P11533475383942918886

`∑{e}[n+1, A037445(#)]`
-/

namespace A383960.P11533475383942918886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A037445 (Nat.factorization (f1 n) p)

end

end A383960.P11533475383942918886

/-!
# A383962: Irregular triangle read by rows: T(n,k) is the index of the k-th odd divisor in the list of divisors of n, with n >= 1, k >= 1.

The programs for A383962, there is no canonical definition to state claims against.
-/

/-! ## A383962.P10360968208577501734

`A341970(n+1)-A341995(A063509(n+1))`
-/

namespace A383962.P10360968208577501734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341970 (n + 1) - A341995 (A063509 (n + 1)).toNat

end

end A383962.P10360968208577501734

/-! ## A383962.P3399665488532230710

`A341970(n+1)-A185284(A000009(n))`
-/

namespace A383962.P3399665488532230710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341970 (n + 1) - A185284 (A000009 n).toNat

end

end A383962.P3399665488532230710

/-! ## A383962.P8806714174093803481

`A374998(A226080(n+1)^A374985(n))`
-/

namespace A383962.P8806714174093803481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374998 (SequenceMachineLib.roundAway ((A226080 (n + 1) : ℚ) ^ (A374985 n : ℤ))).toNat

end

end A383962.P8806714174093803481

/-! ## A383962.P5150426416043678166

`A208906(A226080(n+1)%A109101(n+2))`
-/

namespace A383962.P5150426416043678166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208906 (Int.tmod (A226080 (n + 1)) (A109101 (n + 2))).toNat

end

end A383962.P5150426416043678166

/-! ## A383962.P10850552475849654586

`A194921(A226080(n+1))%A354910(n+4)`
-/

namespace A383962.P10850552475849654586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194921 (A226080 (n + 1)).toNat) (A354910 (n + 4))

end

end A383962.P10850552475849654586

/-!
# A383963: Irregular triangle read by rows: T(n,k) is the sum of the k-th pair of conjugate divisors of n. If n is a square then the central term in the row n is equal to 2*sqrt(n), with n >= 1, 1 <= k <= A000005(n).

The programs for A383963, there is no canonical definition to state claims against.
-/

/-! ## A383963.P1704055795041714286

`A002024(A056534(n+1))+1`
-/

namespace A383963.P1704055795041714286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A056534 (n + 1)).toNat + 1

end

end A383963.P1704055795041714286

/-! ## A383963.P8402617054075503970

`A056538(n+1)+A027750(n+1)`
-/

namespace A383963.P8402617054075503970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + A027750 (n + 1)

end

end A383963.P8402617054075503970

/-! ## A383963.P4055376437066815705

`A056538(n+1)+abs(A233773(n+1))`
-/

namespace A383963.P4055376437066815705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + |A233773 (n + 1)|

end

end A383963.P4055376437066815705

/-! ## A383963.P14425792525745918012

`A056538(n+1)+A263730(n+2)+1`
-/

namespace A383963.P14425792525745918012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + (A263730 (n + 2) + 1)

end

end A383963.P14425792525745918012

/-! ## A383963.P8131541182399208581

`A027750(n+1)+A004736(A056534(n+1))`
-/

namespace A383963.P8131541182399208581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + A004736 (A056534 (n + 1)).toNat

end

end A383963.P8131541182399208581

/-! ## A383963.P11312976905707990642

`A056538(n+1)+A002260(A056534(n+1))`
-/

namespace A383963.P11312976905707990642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + A002260 (A056534 (n + 1)).toNat

end

end A383963.P11312976905707990642

/-! ## A383963.P7330754599365621502

`A004736(A056538(n+1)+A056534(n+1))`
-/

namespace A383963.P7330754599365621502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A056538 (n + 1) + A056534 (n + 1)).toNat

end

end A383963.P7330754599365621502

/-! ## A383963.P16729671617991864122

`A056538(n+1)+gcd(A000038(n), A233773(n+1))`
-/

namespace A383963.P16729671617991864122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + (Int.gcd (A000038 n) (A233773 (n + 1)) : ℤ)

end

end A383963.P16729671617991864122

/-! ## A383963.P8901737532793826380

`A056538(n+1)+A002260(eq[1, A051731(n+1)]+1)`
-/

namespace A383963.P8901737532793826380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) + A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A383963.P8901737532793826380

/-!
# A383966: Numbers k such that floor(2^k / 5) is a prime.

The programs for A383966, there is no canonical definition to state claims against.
-/

/-! ## A383966.P7424751832213886692

`eq[A010726(n), A074717(n+1)]`
-/

namespace A383966.P7424751832213886692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383966.P7424751832213886692

/-! ## A383966.P13931952474529358856

`eq[A074717(n+1), A086064(n)]`
-/

namespace A383966.P13931952474529358856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383966.P13931952474529358856

/-!
# A383967: Inventory sequence recording number of terms with 1,2,3,... decimal digits. Count until occurrence of a term = 0, whereupon reset the count; continue.

The programs for A383967, there is no canonical definition to state claims against.
-/

/-! ## A383967.P18397813940440936830

`∏{e}[A001969(A219531(n))+1, #]-1`
-/

namespace A383967.P18397813940440936830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A219531 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A383967.P18397813940440936830

/-! ## A383967.P626947330944141353

`A060575(A166467(n))`
-/

namespace A383967.P626947330944141353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060575 (A166467 n).toNat

end

end A383967.P626947330944141353

/-! ## A383967.P18310477058480918428

`A119387(A288298(n))`
-/

namespace A383967.P18310477058480918428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (A288298 n).toNat

end

end A383967.P18310477058480918428

/-! ## A383967.P5993640107976378956

`A151843(A286115(n))`
-/

namespace A383967.P5993640107976378956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A286115 n).toNat

end

end A383967.P5993640107976378956

/-! ## A383967.P17775741155619292831

`A287730(A278595(n))`
-/

namespace A383967.P17775741155619292831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (A278595 n).toNat

end

end A383967.P17775741155619292831

/-!
# A383968: Number of distinct subsets S of [1..n] such that for all 1 <= k <= n, there exists two elements x,y in S (not necessarily distinct) such that x+y = 2k.

The programs for A383968, there is no canonical definition to state claims against.
-/

/-! ## A383968.P4089180447620898068

`A225687(A182299(n+2))`
-/

namespace A383968.P4089180447620898068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A182299 (n + 2)).toNat

end

end A383968.P4089180447620898068

/-! ## A383968.P6670293801576508202

`A120039(n+1)+A002024(A000108(n))`
-/

namespace A383968.P6670293801576508202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120039 (n + 1) + A002024 (A000108 n).toNat

end

end A383968.P6670293801576508202

/-! ## A383968.P13079237654295725329

`A071860(A272463(n+1))-A156659(n)`
-/

namespace A383968.P13079237654295725329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A272463 (n + 1)).toNat - A156659 n

end

end A383968.P13079237654295725329

/-! ## A383968.P6798236281144190526

`A204164(∑[C(n, ceil(n/2))²])`
-/

namespace A383968.P6798236281144190526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌈(n : ℚ) / 2⌉.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383968.P6798236281144190526

/-! ## A383968.P6224739793480970554

`A000194(A148802(n))`
-/

namespace A383968.P6224739793480970554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148802 n).toNat

end

end A383968.P6224739793480970554

/-!
# A383969: a(n) is the smallest even number m such that the set {m+1, m+3, m+5, ..., m+(2*n-1)} contains no prime numbers.

The programs for A383969, there is no canonical definition to state claims against.
-/

/-! ## A383969.P11908307187473913025

`A030296(2*(n+1))-A048298(n²+8)`
-/

namespace A383969.P11908307187473913025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (2 * (n + 1)) - A048298 (n ^ 2 + 8)

end

end A383969.P11908307187473913025

/-! ## A383969.P13851665810567033985

`A030296(2*n+3)%∑[A030296(2*n+3)]`
-/

namespace A383969.P13851665810567033985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030296 (2 * n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383969.P13851665810567033985

/-! ## A383969.P5423404174060673376

`A030296(2*n+3)*A355820(A320276(n))`
-/

namespace A383969.P5423404174060673376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (2 * n + 3) * A355820 (A320276 n).toNat

end

end A383969.P5423404174060673376

/-! ## A383969.P7918424250169285474

`A030296(2*n+3)%A092076(A065721(n+1))`
-/

namespace A383969.P7918424250169285474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030296 (2 * n + 3)) (A092076 (A065721 (n + 1)).toNat)

end

end A383969.P7918424250169285474

/-! ## A383969.P2683452529356969440

`A030296(2*n+3)%A065721(A299263(n))`
-/

namespace A383969.P2683452529356969440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030296 (2 * n + 3)) (A065721 (A299263 n).toNat)

end

end A383969.P2683452529356969440

/-!
# A383971: Triprimes with sum of digits 3.

The programs for A383971, there is no canonical definition to state claims against.
-/

/-! ## A383971.P3433553905803164571

`∩[A050689(n+1), A052217(n+1)]`
-/

namespace A383971.P3433553905803164571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383971.P3433553905803164571

/-!
# A383972: Smallest number m such that (m*(m + 1)/2)^2 is divisible by n.

The programs for A383972, there is no canonical definition to state claims against.
-/

/-! ## A383972.P10151525527452484486

`A011772((n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A383972.P10151525527452484486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A383972.P10151525527452484486

/-! ## A383972.P11964562115021513367

`A011772(A019554(n+1))`
-/

namespace A383972.P11964562115021513367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A019554 (n + 1)).toNat

end

end A383972.P11964562115021513367

/-! ## A383972.P17000072712562161904

`A011772(A254732(n+1)-(n+1))`
-/

namespace A383972.P17000072712562161904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A254732 (n + 1) - (n + 1 : ℤ)).toNat

end

end A383972.P17000072712562161904

/-! ## A383972.P1132214797166737646

`A011772((n+1)/A000188(n+1))`
-/

namespace A383972.P1132214797166737646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A383972.P1132214797166737646

/-! ## A383972.P14068731234908910103

`A011772(gcd(n+1, A254732(n+1)))`
-/

namespace A383972.P14068731234908910103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (Int.gcd (n + 1 : ℤ) (A254732 (n + 1)))

end

end A383972.P14068731234908910103

/-! ## A383972.P9879917639934368185

`A344005(2*(n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A383972.P9879917639934368185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)))).toNat

end

end A383972.P9879917639934368185

/-! ## A383972.P2055409367353500853

`A011772(A053166((n+1)²))`
-/

namespace A383972.P2055409367353500853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A053166 ((n + 1) ^ 2)).toNat

end

end A383972.P2055409367353500853

/-!
# A383974: Number of connected subsets of n edges of the icosahedron up to the 120 rotations and reflections of the icosahedron.

The programs for A383974, there is no canonical definition to state claims against.
-/

/-! ## A383974.P13884569933988923694

`A147680(A027040(n))`
-/

namespace A383974.P13884569933988923694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A027040 n).toNat

end

end A383974.P13884569933988923694

/-! ## A383974.P1163906109207707932

`A129595(floor(sqrt(A252766(n))))`
-/

namespace A383974.P1163906109207707932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129595 (Int.sqrt (A252766 n)).toNat

end

end A383974.P1163906109207707932

/-!
# A383976: In the binary expansion of n, expand bits 1 -> 11 and 0 -> 10.

The programs for A383976, the canonical program `A383976.P7510107597376292456` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383976 has offset 0).

The definition of A383976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383976.P7510107597376292456

`A374625(n)+A062880(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A383976

/-- `A374625(n)+A062880(n)` -/
def P7510107597376292456.Spec : Prop :=
  ∀ n, P7510107597376292456.a n = A383976 n

theorem P7510107597376292456.correct : P7510107597376292456.Spec := by
  intro n
  simp only [A383976]

end A383976

/-! ## A383976.P14994062571274318265

`A020988(A070939(n))+A000695(n)`
-/

namespace A383976.P14994062571274318265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (A070939 n).toNat + A000695 n

end

end A383976.P14994062571274318265

namespace A383976

/-- `A020988(A070939(n))+A000695(n)` -/
def P14994062571274318265.Spec : Prop :=
  ∀ n, P14994062571274318265.a n = A383976 n

theorem P14994062571274318265.correct : P14994062571274318265.Spec := by
  intro n
  simp only [A383976, Nat.add_sub_cancel, A383976.P14994062571274318265.a, A383976.P7510107597376292456.a, A000695, A000695.P14587171459336407380.a, A020988, A020988.P12877403195261082283.a, A062880, A062880.P2055745413581106128.a, A070939, A070939.P14677302147902843740.a, A374625, A374625.P6516257093902246467.a, A145812, A145812.P7040268425871068342.f1, A145812.P7040268425871068342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383976

/-! ## A383976.P17380734667706244669

`A000695(n)+A374625(n)+A000695(n)`
-/

namespace A383976.P17380734667706244669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + (A374625 n + A000695 n)

end

end A383976.P17380734667706244669

namespace A383976

/-- `A000695(n)+A374625(n)+A000695(n)` -/
def P17380734667706244669.Spec : Prop :=
  ∀ n, P17380734667706244669.a n = A383976 n

theorem P17380734667706244669.correct : P17380734667706244669.Spec := by
  intro n
  simp only [A383976, Nat.add_sub_cancel, A383976.P17380734667706244669.a, A383976.P7510107597376292456.a, A000695, A000695.P14587171459336407380.a, A062880, A062880.P2055745413581106128.a, A374625, A374625.P6516257093902246467.a, A020988, A020988.P12877403195261082283.a, A070939, A070939.P14677302147902843740.a, A145812, A145812.P7040268425871068342.f1, A145812.P7040268425871068342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383976

/-! ## A383976.P8215968866617135895

`or(A001196(n), A266530(A053644(2*(n+2))))`
-/

namespace A383976.P8215968866617135895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001196 n) (A266530 (A053644 (2 * (n + 2))).toNat)

end

end A383976.P8215968866617135895

namespace A383976

/-- `or(A001196(n), A266530(A053644(2*(n+2))))` -/
def P8215968866617135895.Spec : Prop :=
  ∀ n, P8215968866617135895.a n = A383976 n

end A383976

/-! ## A383976.P5592627203857704910

`A032804(A346303(n+1)-n)`
-/

namespace A383976.P5592627203857704910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032804 (A346303 (n + 1) - (n : ℤ)).toNat

end

end A383976.P5592627203857704910

namespace A383976

/-- `A032804(A346303(n+1)-n)` -/
def P5592627203857704910.Spec : Prop :=
  ∀ n, P5592627203857704910.a n = A383976 n

end A383976

/-! ## A383976.P13764866010419293373

`A374625(n)+A023717(A005823(n+1))`
-/

namespace A383976.P13764866010419293373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374625 n + A023717 (A005823 (n + 1)).toNat

end

end A383976.P13764866010419293373

namespace A383976

/-- `A374625(n)+A023717(A005823(n+1))` -/
def P13764866010419293373.Spec : Prop :=
  ∀ n, P13764866010419293373.a n = A383976 n

end A383976

/-! ## A383976.P13738864637384600832

`A005352(A374625(n))`
-/

namespace A383976.P13738864637384600832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005352 (A374625 n).toNat

end

end A383976.P13738864637384600832

namespace A383976

/-- `A005352(A374625(n))` -/
def P13738864637384600832.Spec : Prop :=
  ∀ n, P13738864637384600832.a n = A383976 n

end A383976

/-! ## A383976.P11005415127946919094

`A374625(n)+A005843(A098871(n)-1)`
-/

namespace A383976.P11005415127946919094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374625 n + A005843 (A098871 n - 1).toNat

end

end A383976.P11005415127946919094

namespace A383976

/-- `A374625(n)+A005843(A098871(n)-1)` -/
def P11005415127946919094.Spec : Prop :=
  ∀ n, P11005415127946919094.a n = A383976 n

end A383976

/-! ## A383976.P8837021774827457644

`xor(A004442(A374625(n)), A145812(n+1))`
-/

namespace A383976.P8837021774827457644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 (A374625 n).toNat) (A145812 (n + 1))

end

end A383976.P8837021774827457644

namespace A383976

/-- `xor(A004442(A374625(n)), A145812(n+1))` -/
def P8837021774827457644.Spec : Prop :=
  ∀ n, P8837021774827457644.a n = A383976 n

end A383976

/-! ## A383976.P10271464042574514494

`A374625(n)+A005843(floor(A145812(n+1)/2))`
-/

namespace A383976.P10271464042574514494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374625 n + A005843 ⌊(A145812 (n + 1) : ℚ) / 2⌋.toNat

end

end A383976.P10271464042574514494

namespace A383976

/-- `A374625(n)+A005843(floor(A145812(n+1)/2))` -/
def P10271464042574514494.Spec : Prop :=
  ∀ n, P10271464042574514494.a n = A383976 n

end A383976

/-! ## A383976.P627883386098124704

`A374625(n)+A005843(A001196(n)+1-A145812(n+1))`
-/

namespace A383976.P627883386098124704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374625 n + A005843 (A001196 n + (1 - A145812 (n + 1))).toNat

end

end A383976.P627883386098124704

namespace A383976

/-- `A374625(n)+A005843(A001196(n)+1-A145812(n+1))` -/
def P627883386098124704.Spec : Prop :=
  ∀ n, P627883386098124704.a n = A383976 n

end A383976

/-!
# A383978: Primes with at least two identical trailing digits.

The programs for A383978, there is no canonical definition to state claims against.
-/

/-! ## A383978.P3859877711995540676

`p?[A314181(2*n)]`
-/

namespace A383978.P3859877711995540676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A383978.P3859877711995540676

/-! ## A383978.P10470349020574502362

`filter[A314181(2*n), A010051(#)]`
-/

namespace A383978.P10470349020574502362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A383978.P10470349020574502362

/-! ## A383978.P4150274736230996756

`filter[A314181(2*n), A174275(#)]`
-/

namespace A383978.P4150274736230996756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A383978.P4150274736230996756

/-! ## A383978.P10700545603313691575

`filter[A314181(2*n), A323153(#)]`
-/

namespace A383978.P10700545603313691575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A383978.P10700545603313691575

/-! ## A383978.P16248946475592415264

`filter[A314181(2*n), A353817(#)]`
-/

namespace A383978.P16248946475592415264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A383978.P16248946475592415264

/-! ## A383978.P12593629262515107349

`∩[A003626(n+1), A314181(n)]`
-/

namespace A383978.P12593629262515107349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383978.P12593629262515107349

/-! ## A383978.P16863166166620021632

`∩[A296923(n+1), A314181(n)]`
-/

namespace A383978.P16863166166620021632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383978.P16863166166620021632

/-! ## A383978.P245365373888827636

`filter[A314181(2*n), A171387(#)]`
-/

namespace A383978.P245365373888827636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A383978.P245365373888827636

/-!
# A383979: a(n) is the number of n-digit terms in A383978.

The programs for A383979, there is no canonical definition to state claims against.
-/

/-! ## A383979.P4864764705461377878

`A370245(n)-A136762(A064093(n))`
-/

namespace A383979.P4864764705461377878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370245 n - A136762 (A064093 n).toNat

end

end A383979.P4864764705461377878

/-!
# A383980: Length of shortest path (in Chebyshev distance) that touches all cells in an n X n grid.

The programs for A383980, there is no canonical definition to state claims against.
-/

/-! ## A383980.P11385104344832231554

`A156878(A075641(n+2))`
-/

namespace A383980.P11385104344832231554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156878 (A075641 (n + 2)).toNat

end

end A383980.P11385104344832231554

/-! ## A383980.P4169107048301835760

`A272058(n)-A280618(n)`
-/

namespace A383980.P4169107048301835760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272058 n - A280618 n

end

end A383980.P4169107048301835760

/-! ## A383980.P321260443962851145

`A389317(n)-A359339(n)`
-/

namespace A383980.P321260443962851145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389317 n - A359339 n

end

end A383980.P321260443962851145

/-! ## A383980.P13449335169226363311

`A272058(n)-A355860(n+1)`
-/

namespace A383980.P13449335169226363311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272058 n - A355860 (n + 1)

end

end A383980.P13449335169226363311

/-! ## A383980.P12190513980977842406

`∑[A047994(n+5)%A333219(n+1)]`
-/

namespace A383980.P12190513980977842406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047994 (n + 5)) (A333219 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383980.P12190513980977842406

/-!
# A383981: Number of connected subsets of n edges of the rhombic dodecahedron up to the 48 rotations and reflections of the rhombic dodecahedron.

The programs for A383981, there is no canonical definition to state claims against.
-/

/-! ## A383981.P4518860612191972017

`A220844(A148184(n))`
-/

namespace A383981.P4518860612191972017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220844 (A148184 n).toNat

end

end A383981.P4518860612191972017

/-! ## A383981.P5227148190465143957

`A220844(A148185(n))`
-/

namespace A383981.P5227148190465143957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220844 (A148185 n).toNat

end

end A383981.P5227148190465143957

/-! ## A383981.P14828182209448550621

`A325131(A206432(n))`
-/

namespace A383981.P14828182209448550621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A206432 n).toNat

end

end A383981.P14828182209448550621

/-!
# A383982: Number of connected subsets of n edges of the cuboctahedron up to the 48 rotations and reflections of the cuboctahedron.

The programs for A383982, there is no canonical definition to state claims against.
-/

/-! ## A383982.P5833358560450248766

`A023193(A150440(n))`
-/

namespace A383982.P5833358560450248766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150440 n).toNat

end

end A383982.P5833358560450248766

/-!
# A383983: Number of connected subsets of n edges of the rhombic triacontahedron up to the 120 rotations and reflections of the rhombic triacontahedron.

The programs for A383983, there is no canonical definition to state claims against.
-/

/-! ## A383983.P2593973063501454570

`A156562(A148915(n))`
-/

namespace A383983.P2593973063501454570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A148915 n).toNat

end

end A383983.P2593973063501454570

/-! ## A383983.P10841488260536741953

`A215935(A007889(n))+A000228(n+1)`
-/

namespace A383983.P10841488260536741953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215935 (A007889 n).toNat + A000228 (n + 1)

end

end A383983.P10841488260536741953

/-! ## A383983.P10871413451523953741

`A370222(A006455(n))+A000228(n+1)`
-/

namespace A383983.P10871413451523953741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370222 (A006455 n).toNat + A000228 (n + 1)

end

end A383983.P10871413451523953741

/-!
# A383984: Number of connected subsets of n edges of the icosidodecahedron up to the 120 rotations and reflections of the icosidodecahedron.

The programs for A383984, there is no canonical definition to state claims against.
-/

/-! ## A383984.P17366786348815436140

`A351567(A109283(n))+A106228(n)`
-/

namespace A383984.P17366786348815436140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351567 (A109283 n).toNat + A106228 n

end

end A383984.P17366786348815436140

/-! ## A383984.P1084997718560360991

`A326622(A365773(n))+A106228(n)`
-/

namespace A383984.P1084997718560360991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A365773 n).toNat + A106228 n

end

end A383984.P1084997718560360991

/-! ## A383984.P17957370694291386732

`A036234(A091768(n))-A033265(n+1)`
-/

namespace A383984.P17957370694291386732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A091768 n).toNat - A033265 (n + 1)

end

end A383984.P17957370694291386732

/-!
# A383987: Series expansion of the exponential generating function -tridend(-(1-exp(x))) where tridend(x) = (1 - 3*x - sqrt(1+6*x+x^2)) / (4*x) (A001003).

The programs for A383987, there is no canonical definition to state claims against.
-/

/-! ## A383987.P10229635704600462144

`A383991(n)+A112437(A067096(n+1))`
-/

namespace A383987.P10229635704600462144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383991 n + A112437 (A067096 (n + 1)).toNat

end

end A383987.P10229635704600462144

/-!
# A383988: Series expansion of the exponential generating function -postLie(1-exp(x)) where postLie(x) = -log((1 + sqrt(1-4*x)) / 2) (given by A006963).

The programs for A383988, there is no canonical definition to state claims against.
-/

/-! ## A383988.P620335794211831597

`A084179(n)*A351005(A000142(n))`
-/

namespace A383988.P620335794211831597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 n * A351005 (A000142 n).toNat

end

end A383988.P620335794211831597

/-!
# A383989: Series expansion of the exponential generating function ff6^!(exp(x)-1) where ff6^!(x) = x * (1-3*x-x^2+x^3) / (1+3*x+x^2-x^3).

The programs for A383989, there is no canonical definition to state claims against.
-/

/-! ## A383989.P16668136779682939539

`A000367(n)*A182838(A183125(n))`
-/

namespace A383989.P16668136779682939539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n * A182838 (A183125 n).toNat

end

end A383989.P16668136779682939539

/-!
# A383990: Series expansion of the exponential generating function exp(-dend(-x))-1 where dend(x) = (1 - sqrt(1+4*x)) / (2*x) + 1 (given by A000108).

The programs for A383990, there is no canonical definition to state claims against.
-/

/-! ## A383990.P3447190431947098076

`A208975(n)-A357924(A000751(n))`
-/

namespace A383990.P3447190431947098076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208975 n - A357924 (A000751 n).toNat

end

end A383990.P3447190431947098076

/-!
# A383993: Series expansion of the exponential generating function exp(tridup^!(x)) - 1 where tridup^!(x) = x / ((1+x) * (1+2*x)).

The programs for A383993, there is no canonical definition to state claims against.
-/

/-! ## A383993.P16213476509341587119

`A174859(A299123(n+1))`
-/

namespace A383993.P16213476509341587119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174859 (A299123 (n + 1)).toNat

end

end A383993.P16213476509341587119

/-!
# A383997: a(n) = Product_{k=0..n-1} (n-5*k).

The programs for A383997, there is no canonical definition to state claims against.
-/

/-! ## A383997.P15405645358595556170

`A384216(A056115(n)+10)`
-/

namespace A383997.P15405645358595556170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 (A056115 n + 10).toNat

end

end A383997.P15405645358595556170

/-! ## A383997.P844030098483748883

`A384216(A000217(n+4)+n)`
-/

namespace A383997.P844030098483748883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A383997.P844030098483748883

/-!
# A383998: Number of distinct truncated Graham sequences (as in Graham's Tree Reconstruction Conjecture) of length 4 on trees of order n.

The programs for A383998, there is no canonical definition to state claims against.
-/

/-! ## A383998.P6018698165393306530

`A000196(A024175(n))`
-/

namespace A383998.P6018698165393306530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024175 n).toNat

end

end A383998.P6018698165393306530

/-! ## A383998.P12817241207315449353

`A000196(A036767(n))`
-/

namespace A383998.P12817241207315449353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A036767 n).toNat

end

end A383998.P12817241207315449353

/-! ## A383998.P17193084017541072423

`A000196(A054393(n))`
-/

namespace A383998.P17193084017541072423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A054393 n).toNat

end

end A383998.P17193084017541072423

/-! ## A383998.P13308102700373766962

`A000196(A148326(n))`
-/

namespace A383998.P13308102700373766962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A148326 n).toNat

end

end A383998.P13308102700373766962

/-! ## A383998.P11053691636322143198

`A111654(A125809(n))`
-/

namespace A383998.P11053691636322143198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A125809 n).toNat

end

end A383998.P11053691636322143198

/-!
# A383999: Sequence obtained by replacing 3-term subwords of A003849 by 0,1,2,3 as described in Comments.

The programs for A383999, the canonical program `A383999.P17329043194853492655` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383999 has offset 1).

The definition of A383999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383999.P2431843943098482909

`xor(log2(A003842(n+2)), A003842(n))`
-/

namespace A383999.P2431843943098482909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A003842 (n + 2) : ℝ))) (A003842 n)

end

end A383999.P2431843943098482909

namespace A383999

/-- `xor(log2(A003842(n+2)), A003842(n))` -/
def P2431843943098482909.Spec : Prop :=
  ∀ n, P2431843943098482909.a n = A383999 (n + 1)

end A383999

/-! ## A383999.P17329043194853492655

`xor(A003849(n)+1, A003849(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383999

/-- `xor(A003849(n)+1, A003849(n+2))` -/
def P17329043194853492655.Spec : Prop :=
  ∀ n, P17329043194853492655.a n = A383999 (n + 1)

theorem P17329043194853492655.correct : P17329043194853492655.Spec := by
  intro n
  simp only [A383999, Nat.add_sub_cancel]

end A383999

/-! ## A383999.P13606958635089539219

`xor(A014675(n+2)+1, A014675(n))`
-/

namespace A383999.P13606958635089539219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014675 (n + 2) + 1) (A014675 n)

end

end A383999.P13606958635089539219

namespace A383999

/-- `xor(A014675(n+2)+1, A014675(n))` -/
def P13606958635089539219.Spec : Prop :=
  ∀ n, P13606958635089539219.a n = A383999 (n + 1)

end A383999

/-! ## A383999.P2907531454742683940

`xor(A000035(A104324(n+2)), A003842(n))`
-/

namespace A383999.P2907531454742683940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A104324 (n + 2)).toNat) (A003842 n)

end

end A383999.P2907531454742683940

namespace A383999

/-- `xor(A000035(A104324(n+2)), A003842(n))` -/
def P2907531454742683940.Spec : Prop :=
  ∀ n, P2907531454742683940.a n = A383999 (n + 1)

end A383999

/-! ## A383999.P15174351755347153055

`val(Δ[A003714(n)²]+1, 2)`
-/

namespace A383999.P15174351755347153055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 2

end

end A383999.P15174351755347153055

namespace A383999

/-- `val(Δ[A003714(n)²]+1, 2)` -/
def P15174351755347153055.Spec : Prop :=
  ∀ n, (P15174351755347153055.a n : ℤ) = A383999 (n + 1)

end A383999

/-! ## A383999.P16501398268447068397

`xor(A003842(n), A096270(A002251(n+3)))`
-/

namespace A383999.P16501398268447068397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003842 n) (A096270 (A002251 (n + 3)).toNat)

end

end A383999.P16501398268447068397

namespace A383999

/-- `xor(A003842(n), A096270(A002251(n+3)))` -/
def P16501398268447068397.Spec : Prop :=
  ∀ n, P16501398268447068397.a n = A383999 (n + 1)

end A383999

/-! ## A383999.P13272996444439329948

`A372257(A085358(n))`
-/

namespace A383999.P13272996444439329948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372257 (A085358 n).toNat

end

end A383999.P13272996444439329948

namespace A383999

/-- `A372257(A085358(n))` -/
def P13272996444439329948.Spec : Prop :=
  ∀ n, P13272996444439329948.a n = A383999 (n + 1)

end A383999

