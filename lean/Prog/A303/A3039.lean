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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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

/-!
# A303901: Triangle read by rows of coefficients in expansion of (3-2x)^n, where n is a nonnegative integer.

The programs for A303901, the canonical program `A303901.P18251698055895516582` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303901 has offset 0).

The definition of A303901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303901.P49627618138174761

`2^(n-C(∑[char[∑[n]]], 2))*A164942(n)`
-/

namespace A303901.P49627618138174761
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A164942 n : ℚ)

end

end A303901.P49627618138174761

namespace A303901

/-- `2^(n-C(∑[char[∑[n]]], 2))*A164942(n)` -/
def P49627618138174761.Spec : Prop :=
  ∀ n, P49627618138174761.a n = (A303901 n : ℚ)

end A303901

/-! ## A303901.P18251698055895516582

`A059268(n)*A164942(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A303901

/-- `A059268(n)*A164942(n)` -/
def P18251698055895516582.Spec : Prop :=
  ∀ n, P18251698055895516582.a n = A303901 n

theorem P18251698055895516582.correct : P18251698055895516582.Spec := by
  intro n
  simp only [A303901]

end A303901

/-! ## A303901.P11524227821423761327

`A118801(n)%2*A038220(n)`
-/

namespace A303901.P11524227821423761327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118801 n) 2 * A038220 n

end

end A303901.P11524227821423761327

namespace A303901

/-- `A118801(n)%2*A038220(n)` -/
def P11524227821423761327.Spec : Prop :=
  ∀ n, P11524227821423761327.a n = A303901 n

end A303901

/-! ## A303901.P7200770203972777968

`A027465(n)*A122803(A002262(n))`
-/

namespace A303901.P7200770203972777968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A122803 (A002262 n).toNat

end

end A303901.P7200770203972777968

namespace A303901

/-- `A027465(n)*A122803(A002262(n))` -/
def P7200770203972777968.Spec : Prop :=
  ∀ n, P7200770203972777968.a n = A303901 n

end A303901

/-! ## A303901.P56856017411695157

`A000079(A002262(n))*A164942(n)`
-/

namespace A303901.P56856017411695157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A164942 n

end

end A303901.P56856017411695157

namespace A303901

/-- `A000079(A002262(n))*A164942(n)` -/
def P56856017411695157.Spec : Prop :=
  ∀ n, P56856017411695157.a n = A303901 n

end A303901

/-! ## A303901.P15262203345491289717

`A317498(∑[2*n]%comp[∑[n]])`
-/

namespace A303901.P15262203345491289717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317498 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A303901.P15262203345491289717

namespace A303901

/-- `A317498(∑[2*n]%comp[∑[n]])` -/
def P15262203345491289717.Spec : Prop :=
  ∀ n, P15262203345491289717.a n = A303901 n

end A303901

/-! ## A303901.P7062338786716678405

`A317498(∑[char[∑[n]]]²-(n+1))`
-/

namespace A303901.P7062338786716678405
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317498 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A303901.P7062338786716678405

namespace A303901

/-- `A317498(∑[char[∑[n]]]²-(n+1))` -/
def P7062338786716678405.Spec : Prop :=
  ∀ n, P7062338786716678405.a n = A303901 n

end A303901

/-! ## A303901.P7059681691430625692

`A027465(n)*A059268(n)*A165591(A059268(n))`
-/

namespace A303901.P7059681691430625692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A059268 n * A165591 (A059268 n).toNat

end

end A303901.P7059681691430625692

namespace A303901

/-- `A027465(n)*A059268(n)*A165591(A059268(n))` -/
def P7059681691430625692.Spec : Prop :=
  ∀ n, P7059681691430625692.a n = A303901 n

end A303901

/-! ## A303901.P4545667796996335734

`A004718(A059268(n))*A038220(n)`
-/

namespace A303901.P4545667796996335734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n).toNat * A038220 n

end

end A303901.P4545667796996335734

namespace A303901

/-- `A004718(A059268(n))*A038220(n)` -/
def P4545667796996335734.Spec : Prop :=
  ∀ n, P4545667796996335734.a n = A303901 n

end A303901

/-!
# A303902: Expansion of (1 - x^2)*Product_{k>=2} (1 + x^k)^k.

The programs for A303902, there is no canonical definition to state claims against.
-/

/-! ## A303902.P797467476415831501

`Δ[A277938(A061579(∑[n]+1))]`
-/

namespace A303902.P797467476415831501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A061579 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303902.P797467476415831501

/-! ## A303902.P2986467639289145927

`Δ[A026007(abs(1-n))%A011557(n)]`
-/

namespace A303902.P2986467639289145927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026007 |1 - (n : ℤ)|.toNat) (A011557 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303902.P2986467639289145927

/-! ## A303902.P6884339315978212999

`A000045(n+1)-A337005(A014138(n))`
-/

namespace A303902.P6884339315978212999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A337005 (A014138 n).toNat

end

end A303902.P6884339315978212999

/-! ## A303902.P17857644409502325739

`A056556(xor(A023896(n+1), A139818(n)))`
-/

namespace A303902.P17857644409502325739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Int.xor (A023896 (n + 1)) (A139818 n)).toNat

end

end A303902.P17857644409502325739

/-! ## A303902.P3552726296546863788

`A000045(n+1)-A319395(A111560(3*n+1))`
-/

namespace A303902.P3552726296546863788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A319395 (A111560 (3 * n + 1)).toNat

end

end A303902.P3552726296546863788

/-!
# A303903: Expansion of (1 - x^2)*Product_{k>=3} (1 + x^Fibonacci(k)).

The programs for A303903, there is no canonical definition to state claims against.
-/

/-! ## A303903.P16924492058075623487

`A000119(n)+A239002(n)-A350240(n)`
-/

namespace A303903.P16924492058075623487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n + (A239002 n - A350240 n)

end

end A303903.P16924492058075623487

/-! ## A303903.P17357411755410637716

`2*A000119(n)-A000121(n)`
-/

namespace A303903.P17357411755410637716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A000121 n

end

end A303903.P17357411755410637716

/-! ## A303903.P5930117044757610746

`2*A000121(A019586(n+1))-A000121(n)`
-/

namespace A303903.P5930117044757610746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000121 (A019586 (n + 1)).toNat - A000121 n

end

end A303903.P5930117044757610746

/-! ## A303903.P4598982374907951953

`2*A239002(A022342(n+1))-A000121(n)`
-/

namespace A303903.P4598982374907951953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239002 (A022342 (n + 1)).toNat - A000121 n

end

end A303903.P4598982374907951953

/-! ## A303903.P15790295901826306766

`Δ[A000121(n)-A000119(n)]`
-/

namespace A303903.P15790295901826306766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 n - A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303903.P15790295901826306766

/-! ## A303903.P12079683122502773305

`Δ[A000121(n)-A239002(A022342(n+1))]`
-/

namespace A303903.P12079683122502773305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 n - A239002 (A022342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303903.P12079683122502773305

/-! ## A303903.P11778304265523547016

`A000121(n+1)-(A350240(n)+A239002(n+1))`
-/

namespace A303903.P11778304265523547016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (n + 1) - (A350240 n + A239002 (n + 1))

end

end A303903.P11778304265523547016

/-! ## A303903.P7782332903907281178

`2*A000119(n)-A067595(A054770(n+1))`
-/

namespace A303903.P7782332903907281178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A067595 (A054770 (n + 1)).toNat

end

end A303903.P7782332903907281178

/-! ## A303903.P12433535112206563728

`2*A000119(n)-A104450(A285679(n+1))`
-/

namespace A303903.P12433535112206563728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A104450 (A285679 (n + 1)).toNat

end

end A303903.P12433535112206563728

/-! ## A303903.P6913463229753113552

`Δ[A067595(A054770(n+1))-A000119(n)]`
-/

namespace A303903.P6913463229753113552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A054770 (n + 1)).toNat - A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303903.P6913463229753113552

/-! ## A303903.P9088897924299272737

`Δ[A104450(A285679(n+1))-A000119(n)]`
-/

namespace A303903.P9088897924299272737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104450 (A285679 (n + 1)).toNat - A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303903.P9088897924299272737

/-! ## A303903.P17809925963023314638

`2*A000119(n)-A000119(A004957(n))`
-/

namespace A303903.P17809925963023314638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A000119 (A004957 n).toNat

end

end A303903.P17809925963023314638

/-! ## A303903.P653628010247282800

`2*A000119(n)-A000119(A026352(n))`
-/

namespace A303903.P653628010247282800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A000119 (A026352 n).toNat

end

end A303903.P653628010247282800

/-! ## A303903.P2741827647665705773

`Δ[A000119(A004957(n))-A000119(n)]`
-/

namespace A303903.P2741827647665705773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A004957 n).toNat - A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303903.P2741827647665705773

/-! ## A303903.P17437724330046802236

`Δ[A000119(A001950(n+1)-2)-A000119(n)]`
-/

namespace A303903.P17437724330046802236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A001950 (n + 1) - 2).toNat - A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303903.P17437724330046802236

/-! ## A303903.P11854646587868217061

`2*A000119(n)-A000119(A188434(n+1))`
-/

namespace A303903.P11854646587868217061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A000119 (A188434 (n + 1)).toNat

end

end A303903.P11854646587868217061

/-! ## A303903.P12021780041379318468

`2*A000119(n)-A003263(A214971(n+1))`
-/

namespace A303903.P12021780041379318468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A003263 (A214971 (n + 1)).toNat

end

end A303903.P12021780041379318468

/-! ## A303903.P5224424572368284750

`Δ[A003263(A214971(n+1))-A000119(n)]`
-/

namespace A303903.P5224424572368284750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003263 (A214971 (n + 1)).toNat - A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303903.P5224424572368284750

/-!
# A303904: Expansion of (1/(1 - x))*Product_{k>=1} (1 + x^(k^3)).

The programs for A303904, there is no canonical definition to state claims against.
-/

/-! ## A303904.P15869934872490967334

`∑[A279329(n)]`
-/

namespace A303904.P15869934872490967334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P15869934872490967334

/-! ## A303904.P2986016786915104702

`A279329(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A303904.P2986016786915104702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A279329 n + a (A023443 n).toNat

end

end A303904.P2986016786915104702

/-! ## A303904.P11038874014847664124

`∑[2*A280130(n)]-A280130(n)`
-/

namespace A303904.P11038874014847664124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A280130 n

end

end A303904.P11038874014847664124

/-! ## A303904.P4009582999827209845

`∑[A280130(abs(1-n))+A280130(n)]`
-/

namespace A303904.P4009582999827209845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 |1 - (n : ℤ)|.toNat + A280130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P4009582999827209845

/-! ## A303904.P14654936180586527646

`a(n-1)+A279329(n)+A008683(12*comp[5*n])` with `a(0)=1`
-/

namespace A303904.P14654936180586527646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A279329 n + A008683 (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A303904.P14654936180586527646

/-! ## A303904.P9707372720723353042

`∑[A034968(A331845(n))]`
-/

namespace A303904.P9707372720723353042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A331845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P9707372720723353042

/-! ## A303904.P8388780796939506262

`∑[(A279484(n)^n)²]`
-/

namespace A303904.P8388780796939506262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P8388780796939506262

/-! ## A303904.P6088706278480260580

`∑[A279484(n)^n^A002378(n)]`
-/

namespace A303904.P6088706278480260580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n : ℚ) ^ (A002378 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P6088706278480260580

/-! ## A303904.P2267609256282323474

`∑[A279484(n)^n^A014681(n)]`
-/

namespace A303904.P2267609256282323474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n : ℚ) ^ (A014681 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P2267609256282323474

/-! ## A303904.P10470231553353387467

`∑[A279484(n)^n^A017641(n)]`
-/

namespace A303904.P10470231553353387467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n : ℚ) ^ (A017641 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P10470231553353387467

/-! ## A303904.P8002427321666380049

`∑[A279484(n)^n^A074148(n+1)]`
-/

namespace A303904.P8002427321666380049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n : ℚ) ^ (A074148 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P8002427321666380049

/-! ## A303904.P1378925219067191346

`∑[A279484(n)^n^A156635(n+1)]`
-/

namespace A303904.P1378925219067191346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n : ℚ) ^ (A156635 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P1378925219067191346

/-! ## A303904.P2383594975479411955

`∑[A279484(n)^n^A033496(n+2)]`
-/

namespace A303904.P2383594975479411955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n : ℚ) ^ (A033496 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P2383594975479411955

/-! ## A303904.P1882128919915031026

`∑[A279484(n)^record[A006530(n+2)+1]]`
-/

namespace A303904.P1882128919915031026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P1882128919915031026

/-! ## A303904.P7077227472856459132

`∑[A279484(n)^n^(A000040(n+3)-3)]`
-/

namespace A303904.P7077227472856459132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279484 n ^ n : ℚ) ^ (A000040 (n + 3) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P7077227472856459132

/-! ## A303904.P14370748506908358340

`∑[abs(A324672(A331845(n)²))]`
-/

namespace A303904.P14370748506908358340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324672 (A331845 n ^ 2).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P14370748506908358340

/-! ## A303904.P4022858049655104510

`∑[A324672(A331845(n)²)^A016116(n)]`
-/

namespace A303904.P4022858049655104510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A016116 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P4022858049655104510

/-! ## A303904.P12065559943953906509

`∑[A324672(A331845(n)²)^A005114(n+1)]`
-/

namespace A303904.P12065559943953906509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A005114 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P12065559943953906509

/-! ## A303904.P16268555627885099345

`∑[A324672(A331845(n)²)^A105174(n+1)]`
-/

namespace A303904.P16268555627885099345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A105174 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P16268555627885099345

/-! ## A303904.P8176120568697951252

`∑[A324672(A331845(n)²)^A185974(n+1)]`
-/

namespace A303904.P8176120568697951252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324672 (A331845 n ^ 2).toNat : ℚ) ^ (A185974 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303904.P8176120568697951252

/-!
# A303905: Expansion of (1/(1 - x))*Product_{k>=1} (1 + x^(k*(k+1)/2)).

The programs for A303905, there is no canonical definition to state claims against.
-/

/-! ## A303905.P4376242470079009988

`∑[A024940(n)]`
-/

namespace A303905.P4376242470079009988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303905.P4376242470079009988

/-! ## A303905.P15780791037072795194

`A024940(char[3]+n)+a(n-1)` with `a(0)=1`
-/

namespace A303905.P15780791037072795194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024940 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A303905.P15780791037072795194

/-! ## A303905.P13901327920485998782

`∑[A303907(abs(1-n))+A303907(n)]`
-/

namespace A303905.P13901327920485998782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303907 |1 - (n : ℤ)|.toNat + A303907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303905.P13901327920485998782

/-! ## A303905.P2404281890240902261

`a(n-1)+abs(A024940(n)*A033999(n))` with `a(0)=1, a(1)=2`
-/

namespace A303905.P2404281890240902261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + |A024940 n * A033999 n|

end

end A303905.P2404281890240902261

/-! ## A303905.P5774437327670989389

`A024940(n-1)+A024940(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A303905.P5774437327670989389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A024940 (n - 1) + (A024940 n + a (n - 2))

end

end A303905.P5774437327670989389

/-! ## A303905.P6008891994549727065

`A063946(A063946(a(n-1)))+A024940(n)` with `a(0)=1`
-/

namespace A303905.P6008891994549727065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063946 (A063946 (a (n - 1)).toNat).toNat + A024940 n

end

end A303905.P6008891994549727065

/-! ## A303905.P524417931663239677

`∑[A339376(n)+A339375(n)]`
-/

namespace A303905.P524417931663239677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339376 n + A339375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303905.P524417931663239677

/-! ## A303905.P5442084298976500221

`A028310(a(n-1))+A024940(n)` with `a(0)=1`
-/

namespace A303905.P5442084298976500221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A024940 n

end

end A303905.P5442084298976500221

/-! ## A303905.P4777086687001160559

`∑[A348528(n)+A010054(n)]`
-/

namespace A303905.P4777086687001160559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 n + A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303905.P4777086687001160559

/-! ## A303905.P10642013419427714224

`∑[A348528(n)+char[A000217(n)]]`
-/

namespace A303905.P10642013419427714224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303905.P10642013419427714224

/-!
# A303906: Expansion of Product_{k>=2} 1/(1 - x^(k*(k+1)/2)).

The programs for A303906, there is no canonical definition to state claims against.
-/

/-! ## A303906.P14250566891954732163

`Δ[A007294(n-a(2%n))]` with `a(0)=0`
-/

namespace A303906.P14250566891954732163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A007294 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303906.P14250566891954732163

/-! ## A303906.P16216341552615853028

`Δ[A264034(A174794(n))%A028387(n)]`
-/

namespace A303906.P16216341552615853028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264034 (A174794 n).toNat) (A028387 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303906.P16216341552615853028

/-! ## A303906.P2265325000111569897

`A286389(A029301(n)^A319099(n+1))`
-/

namespace A303906.P2265325000111569897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (SequenceMachineLib.roundAway ((A029301 n : ℚ) ^ (A319099 (n + 1) : ℤ))).toNat

end

end A303906.P2265325000111569897

/-! ## A303906.P5460207801413115676

`A029301(n)-A037800(A071356(A029301(n)))`
-/

namespace A303906.P5460207801413115676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029301 n - A037800 (A071356 (A029301 n).toNat).toNat

end

end A303906.P5460207801413115676

/-! ## A303906.P17354604758205595116

`A057427(A118658(n))*A286389(A029301(n))`
-/

namespace A303906.P17354604758205595116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A118658 n).toNat * A286389 (A029301 n).toNat

end

end A303906.P17354604758205595116

/-!
# A303907: Expansion of Product_{k>=2} (1 + x^(k*(k+1)/2)).

The programs for A303907, there is no canonical definition to state claims against.
-/

/-! ## A303907.P14616500850264307997

`A024940(n)-a(n-1)` with `a(0)=1`
-/

namespace A303907.P14616500850264307997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024940 n - a (n - 1)

end

end A303907.P14616500850264307997

/-! ## A303907.P13566855581981020569

`abs(∑[A024940(n)*A033999(n)])`
-/

namespace A303907.P13566855581981020569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A303907.P13566855581981020569

/-! ## A303907.P4774064855088769521

`(1-A010673(n))*∑[A024940(n)*A033999(n)]`
-/

namespace A303907.P4774064855088769521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303907.P4774064855088769521

/-! ## A303907.P6643058305307495370

`(A004442(n)-n)*∑[A024940(n)*A033999(n)]`
-/

namespace A303907.P6643058305307495370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303907.P6643058305307495370

/-! ## A303907.P8278117106424045976

`∑[A024940(n)*A033999(n)]*A087960(2*n)`
-/

namespace A303907.P8278117106424045976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A087960 (2 * n)

end

end A303907.P8278117106424045976

/-! ## A303907.P13406672182938641244

`A339375(n)+A339376(n)-a(n-1)` with `a(0)=1`
-/

namespace A303907.P13406672182938641244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339375 n + (A339376 n - a (n - 1))

end

end A303907.P13406672182938641244

/-!
# A303908: Expansion of 1/(2 + x - theta_2(sqrt(x))/(2*x^(1/8))), where theta_2() is the Jacobi theta function.

The programs for A303908, there is no canonical definition to state claims against.
-/

/-! ## A303908.P15388212301802890437

`A029302(lt[A029244(n), 2])`
-/

namespace A303908.P15388212301802890437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A303908.P15388212301802890437

/-! ## A303908.P14354502321141455366

`A029302(lt[A029357(n), 2])`
-/

namespace A303908.P14354502321141455366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A303908.P14354502321141455366

/-!
# A303911: Triangle T(w>=1,1<=n<=w) read by rows: the number of rooted weighted trees with n nodes and weight w.

The programs for A303911, there is no canonical definition to state claims against.
-/

/-! ## A303911.P18328646317883536977

`A108611(6*A160232(n+1))`
-/

namespace A303911.P18328646317883536977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A160232 (n + 1)).toNat

end

end A303911.P18328646317883536977

/-! ## A303911.P2335203951793066867

`A227568(A242474(A160232(n+1))²)`
-/

namespace A303911.P2335203951793066867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A242474 (A160232 (n + 1)).toNat ^ 2).toNat

end

end A303911.P2335203951793066867

/-! ## A303911.P2091379226115278411

`A270428(A160232(n+1)%A219043(n+1))`
-/

namespace A303911.P2091379226115278411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (Int.tmod (A160232 (n + 1)) (A219043 (n + 1))).toNat

end

end A303911.P2091379226115278411

/-! ## A303911.P5819553003689996929

`A001462(A087854(n+1)%A268448(2*(n+2)))`
-/

namespace A303911.P5819553003689996929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A087854 (n + 1)) (A268448 (2 * (n + 2)))).toNat

end

end A303911.P5819553003689996929

/-! ## A303911.P7994763979373109525

`A228352(A077168(n))`
-/

namespace A303911.P7994763979373109525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228352 (A077168 n).toNat

end

end A303911.P7994763979373109525

/-!
# A303912: Array read by antidiagonals: T(n,k) is the number of (planar) unlabeled k-ary cacti having n polygons.

The programs for A303912, there is no canonical definition to state claims against.
-/

/-! ## A303912.P3095154551075499574

`A097688(A090628(n))`
-/

namespace A303912.P3095154551075499574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A090628 n).toNat

end

end A303912.P3095154551075499574

/-! ## A303912.P11373779586989684477

`A120257(C(abs(A133815(n)), 2))`
-/

namespace A303912.P11373779586989684477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120257 (Nat.choose |A133815 n|.toNat 2)

end

end A303912.P11373779586989684477

/-! ## A303912.P8070049191955822138

`A293551(n)+A016396(A294582(n))`
-/

namespace A303912.P8070049191955822138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 n + A016396 (A294582 n).toNat

end

end A303912.P8070049191955822138

/-! ## A303912.P16120455418910515645

`A293551(n)+A262693(A261568(n))`
-/

namespace A303912.P16120455418910515645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 n + A262693 (A261568 n).toNat

end

end A303912.P16120455418910515645

/-!
# A303913: Array read by antidiagonals: T(n,k) is the number of (planar) unlabeled asymmetric k-ary cacti having n polygons.

The programs for A303913, there is no canonical definition to state claims against.
-/

/-! ## A303913.P296278225515469475

`A165592(A287417(n))^A303694(3*n)`
-/

namespace A303913.P296278225515469475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165592 (A287417 n).toNat : ℚ) ^ (A303694 (3 * n) : ℤ)

end

end A303913.P296278225515469475

/-! ## A303913.P17677425023679325185

`A109036(A269129(n)%A060166(n+1))`
-/

namespace A303913.P17677425023679325185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 (Int.tmod (A269129 n) (A060166 (n + 1))).toNat

end

end A303913.P17677425023679325185

/-! ## A303913.P260386514060358514

`A165592(A287417(n)%A098069(n+1))`
-/

namespace A303913.P260386514060358514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165592 (Int.tmod (A287417 n) (A098069 (n + 1))).toNat

end

end A303913.P260386514060358514

/-! ## A303913.P5692955722650416165

`A324570(A336707(n))%A001222(2*(n+2))`
-/

namespace A303913.P5692955722650416165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324570 (A336707 n).toNat) (A001222 (2 * (n + 2)))

end

end A303913.P5692955722650416165

/-! ## A303913.P8038768031485394901

`A170846(A276999(n))`
-/

namespace A303913.P8038768031485394901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170846 (A276999 n).toNat

end

end A303913.P8038768031485394901

/-!
# A303914: a(n) = [x^n] (1/(1 - x))*Product_{k>=1} 1/(1 - n*x^k).

The programs for A303914, there is no canonical definition to state claims against.
-/

/-! ## A303914.P10868702767516325519

`n*n*A342524(n!)+1`
-/

namespace A303914.P10868702767516325519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A342524 (Nat.factorial n)) + 1

end

end A303914.P10868702767516325519

/-!
# A303915: a(n) = lambda(n)*E(n), where lambda(n) = A008836(n) and E(n) = A005361(n).

The programs for A303915, the canonical program `A303915.P16222696876000941455` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303915 has offset 1).

The definition of A303915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303915.P16222696876000941455

`∏{e}[n+1, #*(-1)^#]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A303915

/-- `∏{e}[n+1, #*(-1)^#]` -/
def P16222696876000941455.Spec : Prop :=
  ∀ n, P16222696876000941455.a n = A303915 (n + 1)

theorem P16222696876000941455.correct : P16222696876000941455.Spec := by
  intro n
  simp only [A303915, Nat.add_sub_cancel]

end A303915

/-! ## A303915.P17169034710146318584

`(-1)^∑{e}[n+1, #]*∏{e}[n+1, #]`
-/

namespace A303915.P17169034710146318584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A303915.P17169034710146318584

namespace A303915

/-- `(-1)^∑{e}[n+1, #]*∏{e}[n+1, #]` -/
def P17169034710146318584.Spec : Prop :=
  ∀ n, P17169034710146318584.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P14596784700423779419

`∏{e}[n+1, #]/(-1)^∑{e}[n+1, #]`
-/

namespace A303915.P14596784700423779419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)

end

end A303915.P14596784700423779419

namespace A303915

/-- `∏{e}[n+1, #]/(-1)^∑{e}[n+1, #]` -/
def P14596784700423779419.Spec : Prop :=
  ∀ n, P14596784700423779419.a n = (A303915 (n + 1) : ℚ)

end A303915

/-! ## A303915.P11516054042861270551

`∏{e}[n+1, #]/∏{e}[n+1, (-1)^#]`
-/

namespace A303915.P11516054042861270551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (-1) ^ Nat.factorization (f2 n) p : ℤ) : ℚ)

end

end A303915.P11516054042861270551

namespace A303915

/-- `∏{e}[n+1, #]/∏{e}[n+1, (-1)^#]` -/
def P11516054042861270551.Spec : Prop :=
  ∀ n, P11516054042861270551.a n = (A303915 (n + 1) : ℚ)

end A303915

/-! ## A303915.P17748945003344565469

`∏{e}[n+1, #]*cos(π*∑{e}[n+1, #])`
-/

namespace A303915.P17748945003344565469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) * Real.cos (Real.pi * ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ))

end

end A303915.P17748945003344565469

namespace A303915

/-- `∏{e}[n+1, #]*cos(π*∑{e}[n+1, #])` -/
def P17748945003344565469.Spec : Prop :=
  ∀ n, P17748945003344565469.a n = (A303915 (n + 1) : ℝ)

end A303915

/-! ## A303915.P10243477996289761952

`A000005((n+1)/∏{p}[n+1, #])/(-1)^∑{e}[n+1, #]`
-/

namespace A303915.P10243477996289761952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)

end

end A303915.P10243477996289761952

namespace A303915

/-- `A000005((n+1)/∏{p}[n+1, #])/(-1)^∑{e}[n+1, #]` -/
def P10243477996289761952.Spec : Prop :=
  ∀ n, P10243477996289761952.a n = (A303915 (n + 1) : ℚ)

end A303915

/-! ## A303915.P3402182916838748687

`A005361(n+1)*A008836(n+1)`
-/

namespace A303915.P3402182916838748687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A008836 (n + 1)

end

end A303915.P3402182916838748687

namespace A303915

/-- `A005361(n+1)*A008836(n+1)` -/
def P3402182916838748687.Spec : Prop :=
  ∀ n, P3402182916838748687.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P8829583955662444394

`A322327(n+1)/A158522(n+1)`
-/

namespace A303915.P8829583955662444394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322327 (n + 1) : ℚ) / (A158522 (n + 1) : ℚ)

end

end A303915.P8829583955662444394

namespace A303915

/-- `A322327(n+1)/A158522(n+1)` -/
def P8829583955662444394.Spec : Prop :=
  ∀ n, P8829583955662444394.a n = (A303915 (n + 1) : ℚ)

end A303915

/-! ## A303915.P13667054118393992778

`A304411(n+1)/A323363(n+1)`
-/

namespace A303915.P13667054118393992778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304411 (n + 1) : ℚ) / (A323363 (n + 1) : ℚ)

end

end A303915.P13667054118393992778

namespace A303915

/-- `A304411(n+1)/A323363(n+1)` -/
def P13667054118393992778.Spec : Prop :=
  ∀ n, P13667054118393992778.a n = (A303915 (n + 1) : ℚ)

end A303915

/-! ## A303915.P15904946462856740285

`∑{d}[n+1, A056624(#)*A158522((n+1)/#)]`
-/

namespace A303915.P15904946462856740285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303915.P15904946462856740285

namespace A303915

/-- `∑{d}[n+1, A056624(#)*A158522((n+1)/#)]` -/
def P15904946462856740285.Spec : Prop :=
  ∀ n, P15904946462856740285.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P1936572519984074043

`∑{d}[n+1, A008836(#)*A307423((n+1)/#)]`
-/

namespace A303915.P1936572519984074043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A307423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303915.P1936572519984074043

namespace A303915

/-- `∑{d}[n+1, A008836(#)*A307423((n+1)/#)]` -/
def P1936572519984074043.Spec : Prop :=
  ∀ n, P1936572519984074043.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P3399624624631017283

`∑{d}[n+1, A008683(#)*A389887((n+1)/#)]`
-/

namespace A303915.P3399624624631017283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A389887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303915.P3399624624631017283

namespace A303915

/-- `∑{d}[n+1, A008683(#)*A389887((n+1)/#)]` -/
def P3399624624631017283.Spec : Prop :=
  ∀ n, P3399624624631017283.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P1973609790960143225

`∑{d}[n+1, A092520(#)*A326415((n+1)/#)]`
-/

namespace A303915.P1973609790960143225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303915.P1973609790960143225

namespace A303915

/-- `∑{d}[n+1, A092520(#)*A326415((n+1)/#)]` -/
def P1973609790960143225.Spec : Prop :=
  ∀ n, P1973609790960143225.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P75214073672570894

`∑{d}[n+1, A212793(#)*A329484((n+1)/#)]`
-/

namespace A303915.P75214073672570894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212793 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A303915.P75214073672570894

namespace A303915

/-- `∑{d}[n+1, A212793(#)*A329484((n+1)/#)]` -/
def P75214073672570894.Spec : Prop :=
  ∀ n, P75214073672570894.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P16213277400280697361

`∏{d}[n+1, A008683(A014963(#))]*∏{e}[n+1, #]`
-/

namespace A303915.P16213277400280697361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), A008683 (A014963 d).toNat) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A303915.P16213277400280697361

namespace A303915

/-- `∏{d}[n+1, A008683(A014963(#))]*∏{e}[n+1, #]` -/
def P16213277400280697361.Spec : Prop :=
  ∀ n, P16213277400280697361.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P9729585170024679792

`(-1)^∑{e}[n+1, #]*A000005(A003557(n+1))`
-/

namespace A303915.P9729585170024679792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A000005 (A003557 (n + 1)).toNat

end

end A303915.P9729585170024679792

namespace A303915

/-- `(-1)^∑{e}[n+1, #]*A000005(A003557(n+1))` -/
def P9729585170024679792.Spec : Prop :=
  ∀ n, P9729585170024679792.a n = A303915 (n + 1)

end A303915

/-! ## A303915.P4853239226246382932

`(-1)^A001222(n+1)*A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A303915.P4853239226246382932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A303915.P4853239226246382932

namespace A303915

/-- `(-1)^A001222(n+1)*A000005((n+1)/∏{p}[n+1, #])` -/
def P4853239226246382932.Spec : Prop :=
  ∀ n, P4853239226246382932.a n = (A303915 (n + 1) : ℚ)

end A303915

/-! ## A303915.P13789142996076987125

`A008836(n+1)/A074816(n+1)*A226602(n+1)`
-/

namespace A303915.P13789142996076987125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) : ℚ) / (A074816 (n + 1) : ℚ) * (A226602 (n + 1) : ℚ)

end

end A303915.P13789142996076987125

namespace A303915

/-- `A008836(n+1)/A074816(n+1)*A226602(n+1)` -/
def P13789142996076987125.Spec : Prop :=
  ∀ n, P13789142996076987125.a n = (A303915 (n + 1) : ℚ)

end A303915

/-!
# A303916: Constant term in the expansion of (Sum_{k=0..n} k*(x^k + x^(-k)))^3.

The programs for A303916, the canonical program `A303916.P626264809860975388` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303916 has offset 0).

The definition of A303916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303916.P626264809860975388

`(n-1)*n*(n+1)*(n+2)*(2*n+1)/10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A303916

/-- `(n-1)*n*(n+1)*(n+2)*(2*n+1)/10` -/
def P626264809860975388.Spec : Prop :=
  ∀ n, P626264809860975388.a n = (A303916 n : ℚ)

end A303916

/-! ## A303916.P4807252457543214602

`∑[2*C(n², 2)]`
-/

namespace A303916.P4807252457543214602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P4807252457543214602

namespace A303916

/-- `∑[2*C(n², 2)]` -/
def P4807252457543214602.Spec : Prop :=
  ∀ n, (P4807252457543214602.a n : ℤ) = A303916 n

end A303916

/-! ## A303916.P16825799868717436679

`lcm(2, ∑[n²-n²²])`
-/

namespace A303916.P16825799868717436679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303916.P16825799868717436679

namespace A303916

/-- `lcm(2, ∑[n²-n²²])` -/
def P16825799868717436679.Spec : Prop :=
  ∀ n, (P16825799868717436679.a n : ℤ) = A303916 n

end A303916

/-! ## A303916.P13388337124092002092

`Δ[4*n*C(n+2, 5)]`
-/

namespace A303916.P13388337124092002092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.choose (n + 2) 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A303916.P13388337124092002092

namespace A303916

/-- `Δ[4*n*C(n+2, 5)]` -/
def P13388337124092002092.Spec : Prop :=
  ∀ n, P13388337124092002092.a n = A303916 n

end A303916

/-! ## A303916.P9313662827976266583

`a(n-1)+2*C(n², 2)` with `a(0)=0`
-/

namespace A303916.P9313662827976266583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * Nat.choose (n ^ 2) 2

end

end A303916.P9313662827976266583

namespace A303916

/-- `a(n-1)+2*C(n², 2)` -/
def P9313662827976266583.Spec : Prop :=
  ∀ n, (P9313662827976266583.a n : ℤ) = A303916 n

end A303916

/-! ## A303916.P9837696489746782046

`a(n-1)+n^4-n²` with `a(0)=0`
-/

namespace A303916.P9837696489746782046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 4 : ℤ) - (n ^ 2 : ℤ))

end

end A303916.P9837696489746782046

namespace A303916

/-- `a(n-1)+n^4-n²` -/
def P9837696489746782046.Spec : Prop :=
  ∀ n, P9837696489746782046.a n = A303916 n

end A303916

/-! ## A303916.P2290833531665157992

`n^4-(n²-a(n-1))` with `a(0)=0`
-/

namespace A303916.P2290833531665157992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 4 : ℤ) - ((n ^ 2 : ℤ) - a (n - 1))

end

end A303916.P2290833531665157992

namespace A303916

/-- `n^4-(n²-a(n-1))` -/
def P2290833531665157992.Spec : Prop :=
  ∀ n, P2290833531665157992.a n = A303916 n

end A303916

/-! ## A303916.P10623808772629932922

`a(n-1)+n²²-n²` with `a(0)=0`
-/

namespace A303916.P10623808772629932922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n ^ 2) ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A303916.P10623808772629932922

namespace A303916

/-- `a(n-1)+n²²-n²` -/
def P10623808772629932922.Spec : Prop :=
  ∀ n, P10623808772629932922.a n = A303916 n

end A303916

/-! ## A303916.P3678664888203197349

`floor(a(n-1)-(n²-n²²))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A303916.P3678664888203197349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n ^ 2 : ℤ) - ((n ^ 2) ^ 2 : ℤ))

end

end A303916.P3678664888203197349

namespace A303916

/-- `floor(a(n-1)-(n²-n²²))` -/
def P3678664888203197349.Spec : Prop :=
  ∀ n, P3678664888203197349.a n = A303916 n

end A303916

/-! ## A303916.P5960165136076591524

`∑[A060886(n)-1]`
-/

namespace A303916.P5960165136076591524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P5960165136076591524

namespace A303916

/-- `∑[A060886(n)-1]` -/
def P5960165136076591524.Spec : Prop :=
  ∀ n, P5960165136076591524.a n = A303916 n

end A303916

/-! ## A303916.P9225487005462955317

`∑[3*A112742(n)]`
-/

namespace A303916.P9225487005462955317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A112742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P9225487005462955317

namespace A303916

/-- `∑[3*A112742(n)]` -/
def P9225487005462955317.Spec : Prop :=
  ∀ n, P9225487005462955317.a n = A303916 n

end A303916

/-! ## A303916.P4959619007548339707

`∑[4*A006011(n)]`
-/

namespace A303916.P4959619007548339707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P4959619007548339707

namespace A303916

/-- `∑[4*A006011(n)]` -/
def P4959619007548339707.Spec : Prop :=
  ∀ n, P4959619007548339707.a n = A303916 n

end A303916

/-! ## A303916.P14048030623626775358

`∑[A173121(n)/4]`
-/

namespace A303916.P14048030623626775358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173121 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P14048030623626775358

namespace A303916

/-- `∑[A173121(n)/4]` -/
def P14048030623626775358.Spec : Prop :=
  ∀ n, P14048030623626775358.a n = (A303916 n : ℚ)

end A303916

/-! ## A303916.P17617342994233464196

`∑[A178392(n)+n²]`
-/

namespace A303916.P17617342994233464196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178392 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P17617342994233464196

namespace A303916

/-- `∑[A178392(n)+n²]` -/
def P17617342994233464196.Spec : Prop :=
  ∀ n, P17617342994233464196.a n = A303916 n

end A303916

/-! ## A303916.P13049891666527260002

`A000538(n)-∑[n²]`
-/

namespace A303916.P13049891666527260002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A303916.P13049891666527260002

namespace A303916

/-- `A000538(n)-∑[n²]` -/
def P13049891666527260002.Spec : Prop :=
  ∀ n, P13049891666527260002.a n = A303916 n

end A303916

/-! ## A303916.P6463685590677429585

`∑[A000583(n)-n²]`
-/

namespace A303916.P6463685590677429585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P6463685590677429585

namespace A303916

/-- `∑[A000583(n)-n²]` -/
def P6463685590677429585.Spec : Prop :=
  ∀ n, P6463685590677429585.a n = A303916 n

end A303916

/-! ## A303916.P13779946063284661056

`∑[(n+1)*A045991(n)]`
-/

namespace A303916.P13779946063284661056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303916.P13779946063284661056

namespace A303916

/-- `∑[(n+1)*A045991(n)]` -/
def P13779946063284661056.Spec : Prop :=
  ∀ n, P13779946063284661056.a n = A303916 n

end A303916

/-! ## A303916.P3532099060946129769

`∑[n²²]-A000330(n)`
-/

namespace A303916.P3532099060946129769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000330 n

end

end A303916.P3532099060946129769

namespace A303916

/-- `∑[n²²]-A000330(n)` -/
def P3532099060946129769.Spec : Prop :=
  ∀ n, P3532099060946129769.a n = A303916 n

end A303916

/-! ## A303916.P17248744724787839355

`∑[A047928(n+2)]-A047928(n+2)`
-/

namespace A303916.P17248744724787839355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047928 (n + 2)

end

end A303916.P17248744724787839355

namespace A303916

/-- `∑[A047928(n+2)]-A047928(n+2)` -/
def P17248744724787839355.Spec : Prop :=
  ∀ n, P17248744724787839355.a n = A303916 n

end A303916

/-! ## A303916.P5659470872815753386

`A000583(n)+A267691(n)-A056520(n)`
-/

namespace A303916.P5659470872815753386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (A267691 n - A056520 n)

end

end A303916.P5659470872815753386

namespace A303916

/-- `A000583(n)+A267691(n)-A056520(n)` -/
def P5659470872815753386.Spec : Prop :=
  ∀ n, P5659470872815753386.a n = A303916 n

end A303916

/-!
# A303917: Number of ordered pairs of primes (p,q) such that p < q <= n and p*q > n.

The programs for A303917, there is no canonical definition to state claims against.
-/

/-! ## A303917.P8941264542424945515

`∑[round(-∏{p}[n+1, -#]/(n+3))*A338713(n+1)]`
-/

namespace A303917.P8941264542424945515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ))) * A338713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303917.P8941264542424945515

/-! ## A303917.P4899455136155456

`∑[A157658(n+1)*A338713(n+1)]`
-/

namespace A303917.P4899455136155456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) * A338713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303917.P4899455136155456

/-! ## A303917.P3478646978069194694

`A000124(A033270(n+1))-A070548(n+1)`
-/

namespace A303917.P3478646978069194694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A033270 (n + 1)).toNat - A070548 (n + 1)

end

end A303917.P3478646978069194694

/-! ## A303917.P3384888605517563389

`A000217(A033270(n+1))-A072613(n+1)`
-/

namespace A303917.P3384888605517563389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033270 (n + 1)).toNat - A072613 (n + 1)

end

end A303917.P3384888605517563389

/-! ## A303917.P15606731291838312574

`A161680(A000720(n+1))-A072613(n+1)`
-/

namespace A303917.P15606731291838312574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A000720 (n + 1)).toNat - A072613 (n + 1)

end

end A303917.P15606731291838312574

/-! ## A303917.P15504813406368675733

`∑[A049084(n+1)-A010051(A140773(n+1))]`
-/

namespace A303917.P15504813406368675733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) - A010051 (A140773 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303917.P15504813406368675733

/-!
# A303918: Prime numbers with property that left half and right half have the same pattern of consecutive increasing/decreasing/equal digits:.

The programs for A303918, there is no canonical definition to state claims against.
-/

/-! ## A303918.P17962138545324172363

`A371378(A032555(n+1))`
-/

namespace A303918.P17962138545324172363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371378 (A032555 (n + 1)).toNat

end

end A303918.P17962138545324172363

/-! ## A303918.P3514643395027717761

`A371378(A032559(n+1))`
-/

namespace A303918.P3514643395027717761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371378 (A032559 (n + 1)).toNat

end

end A303918.P3514643395027717761

/-! ## A303918.P8581926068560100571

`A050367(A371378(n+1))`
-/

namespace A303918.P8581926068560100571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A371378 (n + 1)).toNat

end

end A303918.P8581926068560100571

/-! ## A303918.P15290776937562705286

`A371378(A077739(n+1))`
-/

namespace A303918.P15290776937562705286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371378 (A077739 (n + 1)).toNat

end

end A303918.P15290776937562705286

/-! ## A303918.P11073736425943722545

`A371378(A078213(n+1))`
-/

namespace A303918.P11073736425943722545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371378 (A078213 (n + 1)).toNat

end

end A303918.P11073736425943722545

/-!
# A303919: G.f.: Sum_{n>=0} ((1+x)^n - 1)^n / (1+x - x*(1+x)^n)^(n+1).

The programs for A303919, there is no canonical definition to state claims against.
-/

/-! ## A303919.P16211117811410933953

`A341440(n^(n+1))+char[3]`
-/

namespace A303919.P16211117811410933953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341440 (n ^ (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303919.P16211117811410933953

/-!
# A303921: Main diagonal of triangle A303920: a(n) = A303920(n,n) for n>=0.

The programs for A303921, there is no canonical definition to state claims against.
-/

/-! ## A303921.P9277028705174556173

`A303920(∑[2*n])`
-/

namespace A303921.P9277028705174556173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303921.P9277028705174556173

/-! ## A303921.P3514119964987298894

`A221074(2*(n+1))*A303920(A002378(n))`
-/

namespace A303921.P3514119964987298894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221074 (2 * (n + 1)) * A303920 (A002378 n).toNat

end

end A303921.P3514119964987298894

/-! ## A303921.P4604437172848400128

`A057427(3*(n+1))*A303920(A002378(n))`
-/

namespace A303921.P4604437172848400128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * (n + 1)) * A303920 (A002378 n).toNat

end

end A303921.P4604437172848400128

/-! ## A303921.P10799991400891029055

`A010054(A008805(n))*A303920(A002378(n))`
-/

namespace A303921.P10799991400891029055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A008805 n).toNat * A303920 (A002378 n).toNat

end

end A303921.P10799991400891029055

/-! ## A303921.P11389558026291519703

`A303920(A002378(n))+A010054(A060661(n+1))`
-/

namespace A303921.P11389558026291519703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303920 (A002378 n).toNat + A010054 (A060661 (n + 1)).toNat

end

end A303921.P11389558026291519703

/-!
# A303923: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( 1 + x*A(x)^n - A(x) )^n.

The programs for A303923, there is no canonical definition to state claims against.
-/

/-! ## A303923.P8196246972710120201

`A187185(A119430(n)+2)`
-/

namespace A303923.P8196246972710120201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A119430 n + 2).toNat

end

end A303923.P8196246972710120201

/-! ## A303923.P9966501763605778431

`A187185(or(2, A119430(n)))`
-/

namespace A303923.P9966501763605778431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (Int.lor 2 (A119430 n)).toNat

end

end A303923.P9966501763605778431

/-! ## A303923.P6816514448013108624

`A061017(∏[A064952(n+1)!])`
-/

namespace A303923.P6816514448013108624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A064952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A303923.P6816514448013108624

/-! ## A303923.P16594133228991113360

`A342696(A011968(n))+A046854(n)`
-/

namespace A303923.P16594133228991113360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A011968 n).toNat + A046854 n

end

end A303923.P16594133228991113360

/-!
# A303924: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( 1 + x*A(x)^(n+1) - A(x) )^n.

The programs for A303924, there is no canonical definition to state claims against.
-/

/-! ## A303924.P333555555936633875

`A060773(A000579(n))+A000110(n)`
-/

namespace A303924.P333555555936633875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060773 (A000579 n).toNat + A000110 n

end

end A303924.P333555555936633875

/-! ## A303924.P2954309614586738769

`A025442(A344605(n))+A000110(n)`
-/

namespace A303924.P2954309614586738769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A344605 n).toNat + A000110 n

end

end A303924.P2954309614586738769

/-! ## A303924.P4284390092762078687

`A025442(A345194(n))+A000110(n)`
-/

namespace A303924.P4284390092762078687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A345194 n).toNat + A000110 n

end

end A303924.P4284390092762078687

/-!
# A303925: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( 1 + x*A(x)^(n+2) - A(x) )^n.

The programs for A303925, there is no canonical definition to state claims against.
-/

/-! ## A303925.P7991414365678685714

`A025459(A000272(n))+A000257(n)`
-/

namespace A303925.P7991414365678685714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A000272 n).toNat + A000257 n

end

end A303925.P7991414365678685714

/-! ## A303925.P4448695796784461043

`A014082(A058307(n))+A000257(n)`
-/

namespace A303925.P4448695796784461043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A058307 n).toNat + A000257 n

end

end A303925.P4448695796784461043

/-! ## A303925.P8240958540823561616

`A054907(A089472(n))+A000257(n)`
-/

namespace A303925.P8240958540823561616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 (A089472 n).toNat + A000257 n

end

end A303925.P8240958540823561616

/-!
# A303926: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( (1 + x*A(x))^n - A(x) )^n.

The programs for A303926, there is no canonical definition to state claims against.
-/

/-! ## A303926.P13702628017174195040

`A000010(A228855(n*a(n-1)))` with `a(0)=1`
-/

namespace A303926.P13702628017174195040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (A228855 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A303926.P13702628017174195040

/-! ## A303926.P14328128217129294879

`A020654(A063420(n)+A014500(n))`
-/

namespace A303926.P14328128217129294879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A063420 n + A014500 n).toNat

end

end A303926.P14328128217129294879

/-!
# A303927: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( (1 + x*A(x)^2)^n - A(x) )^n.

The programs for A303927, there is no canonical definition to state claims against.
-/

/-! ## A303927.P3878964550103810042

`A077028(A331726(n)+A000041(n))`
-/

namespace A303927.P3878964550103810042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A331726 n + A000041 n).toNat

end

end A303927.P3878964550103810042

/-! ## A303927.P17377587928551153761

`or(A000041(n), A333536(A216135(n)))`
-/

namespace A303927.P17377587928551153761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 n) (A333536 (A216135 n).toNat)

end

end A303927.P17377587928551153761

/-!
# A303928: G.f. A(x) satisfies: 1 = Sum_{n>=0} ( (1 + x*A(x)^3)^n - A(x) )^n.

The programs for A303928, there is no canonical definition to state claims against.
-/

/-! ## A303928.P15629558366152959352

`A028310(A265133(A282190(n)+n))`
-/

namespace A303928.P15629558366152959352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A265133 (A282190 n + (n : ℤ)).toNat).toNat

end

end A303928.P15629558366152959352

/-!
# A303929: Array read by antidiagonals: T(n,k) is the number of noncrossing partitions up to rotation and reflection composed of n blocks of size k.

The programs for A303929, there is no canonical definition to state claims against.
-/

/-! ## A303929.P2373956443367182495

`(A369929(n)+A303694(n))/2`
-/

namespace A303929.P2373956443367182495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369929 n + A303694 n : ℚ) / 2

end

end A303929.P2373956443367182495

/-! ## A303929.P6520198593874553197

`A006370(A369929(n)+A303694(n))`
-/

namespace A303929.P6520198593874553197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A369929 n + A303694 n).toNat

end

end A303929.P6520198593874553197

/-! ## A303929.P3039983496784261871

`A065262(A369929(n)+A303694(n))`
-/

namespace A303929.P3039983496784261871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A369929 n + A303694 n).toNat

end

end A303929.P3039983496784261871

/-! ## A303929.P12218889659843473538

`A060789(3*(A369929(n)+A303694(n)))`
-/

namespace A303929.P12218889659843473538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * (A369929 n + A303694 n)).toNat

end

end A303929.P12218889659843473538

/-! ## A303929.P8156597748235423110

`A187446(A362378(n))`
-/

namespace A303929.P8156597748235423110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187446 (A362378 n).toNat

end

end A303929.P8156597748235423110

/-!
# A303930: Number of no-leaf subgraphs of the 2 X n grid up to horizontal and vertical reflection.

The programs for A303930, there is no canonical definition to state claims against.
-/

/-! ## A303930.P911240758496659899

`A007123(n+2)-A326528(A032557(n+1))`
-/

namespace A303930.P911240758496659899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) - A326528 (A032557 (n + 1)).toNat

end

end A303930.P911240758496659899

/-! ## A303930.P7890539000199158987

`A007123(A329254(n+1))`
-/

namespace A303930.P7890539000199158987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (A329254 (n + 1)).toNat

end

end A303930.P7890539000199158987

/-! ## A303930.P12111180458754530543

`A007123(A032555(n+2))`
-/

namespace A303930.P12111180458754530543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (A032555 (n + 2)).toNat

end

end A303930.P12111180458754530543

/-! ## A303930.P14592465751529898506

`A007123(A032557(n+2))`
-/

namespace A303930.P14592465751529898506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (A032557 (n + 2)).toNat

end

end A303930.P14592465751529898506

/-!
# A303931: Number of noncrossing partitions up to rotation and reflection of an n-set without singleton blocks.

The programs for A303931, there is no canonical definition to state claims against.
-/

/-! ## A303931.P7892708196402043292

`A211359(∑[n])`
-/

namespace A303931.P7892708196402043292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303931.P7892708196402043292

/-! ## A303931.P12975153010176459708

`A211359(A000217(n))+C(n, n+2)`
-/

namespace A303931.P12975153010176459708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A000217 n).toNat + (Nat.choose n (n + 2) : ℤ)

end

end A303931.P12975153010176459708

/-! ## A303931.P11256245959007691071

`A211359(A000217(n))%A107464(n)`
-/

namespace A303931.P11256245959007691071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211359 (A000217 n).toNat) (A107464 n)

end

end A303931.P11256245959007691071

/-! ## A303931.P15675229940485331143

`gcd(A000038(n), A211359(A000217(n)))`
-/

namespace A303931.P15675229940485331143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A211359 (A000217 n).toNat)

end

end A303931.P15675229940485331143

/-! ## A303931.P14702996652060393380

`lcm(A033999(n), A211359(A000217(n)))`
-/

namespace A303931.P14702996652060393380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A211359 (A000217 n).toNat)

end

end A303931.P14702996652060393380

/-! ## A303931.P7492736665491109147

`or(A151878(n), A211359(A000217(n)))`
-/

namespace A303931.P7492736665491109147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A211359 (A000217 n).toNat)

end

end A303931.P7492736665491109147

/-! ## A303931.P14922363498639032156

`A211359(A000217(n))+A064458(A000120(n))`
-/

namespace A303931.P14922363498639032156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A000217 n).toNat + A064458 (A000120 n).toNat

end

end A303931.P14922363498639032156

/-! ## A303931.P5180281075859315965

`A211359(A000217(n))+A064458(A032741(n))`
-/

namespace A303931.P5180281075859315965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A000217 n).toNat + A064458 (A032741 n).toNat

end

end A303931.P5180281075859315965

/-! ## A303931.P7002576121060921292

`A211359(A000217(n))+A064458(A037213(n))`
-/

namespace A303931.P7002576121060921292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211359 (A000217 n).toNat + A064458 (A037213 n).toNat

end

end A303931.P7002576121060921292

/-!
# A303932: Number of ways to write 2*n as p + 2^k + 3^m, where p is a prime with 11 a quadratic residue modulo p, and k and m are nonnegative integers.

The programs for A303932, there is no canonical definition to state claims against.
-/

/-! ## A303932.P17342377920355185880

`A037870(A075746(n+1)^3)`
-/

namespace A303932.P17342377920355185880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A075746 (n + 1) ^ 3).toNat

end

end A303932.P17342377920355185880

/-! ## A303932.P14579188914657513497

`A302242(A070939(n)+A038373(n))`
-/

namespace A303932.P14579188914657513497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A070939 n + A038373 n).toNat

end

end A303932.P14579188914657513497

/-! ## A303932.P9712373289390755370

`A250120(n)%A296658(A001694(n+1))`
-/

namespace A303932.P9712373289390755370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 n) (A296658 (A001694 (n + 1)).toNat)

end

end A303932.P9712373289390755370

/-! ## A303932.P9513674122798735875

`A037870(A075746(n+1)²*A075746(n+1))`
-/

namespace A303932.P9513674122798735875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A075746 (n + 1) ^ 2 * A075746 (n + 1)).toNat

end

end A303932.P9513674122798735875

/-!
# A303934: Number of ways to write 2*n as p + 2^k + 5^m with p prime and 2^k + 5^m squarefree, where k and m are nonnegative integers.

The programs for A303934, there is no canonical definition to state claims against.
-/

/-! ## A303934.P6247635109113879921

`A069010(∑[A008738(A055998(n))])`
-/

namespace A303934.P6247635109113879921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303934.P6247635109113879921

/-! ## A303934.P5622485235967062476

`A000120(A199886(n+1)%A187829(n+1)²)`
-/

namespace A303934.P5622485235967062476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A199886 (n + 1)) (A187829 (n + 1) ^ 2)).toNat

end

end A303934.P5622485235967062476

/-!
# A303935: Size of orbit of n under repeated application of sum of factorial of digits of n.

The programs for A303935, there is no canonical definition to state claims against.
-/

/-! ## A303935.P7827585702416433775

`A173447(n)+1`
-/

namespace A303935.P7827585702416433775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173447 n + 1

end

end A303935.P7827585702416433775

/-! ## A303935.P1989132810536544876

`A008619(2*A173447(n))`
-/

namespace A303935.P1989132810536544876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A173447 n).toNat

end

end A303935.P1989132810536544876

/-! ## A303935.P14043453110054008503

`A027656(2*A173447(n))`
-/

namespace A303935.P14043453110054008503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A173447 n).toNat

end

end A303935.P14043453110054008503

/-! ## A303935.P16137328921671966315

`A028242(2*A173447(n))`
-/

namespace A303935.P16137328921671966315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A173447 n).toNat

end

end A303935.P16137328921671966315

/-! ## A303935.P18107749191921262687

`A029579(2*A173447(n))`
-/

namespace A303935.P18107749191921262687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A173447 n).toNat

end

end A303935.P18107749191921262687

/-! ## A303935.P11066175092369359905

`A052938(2*A173447(n))`
-/

namespace A303935.P11066175092369359905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A173447 n).toNat

end

end A303935.P11066175092369359905

/-! ## A303935.P6973827585771787853

`A008611(3*A173447(n))`
-/

namespace A303935.P6973827585771787853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A173447 n).toNat

end

end A303935.P6973827585771787853

/-! ## A303935.P17988850001181350696

`A008620(3*A173447(n))`
-/

namespace A303935.P17988850001181350696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A173447 n).toNat

end

end A303935.P17988850001181350696

/-! ## A303935.P11099365605075869006

`A008621(4*A173447(n))`
-/

namespace A303935.P11099365605075869006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A173447 n).toNat

end

end A303935.P11099365605075869006

/-! ## A303935.P9769045673200710606

`A008624(4*A173447(n))`
-/

namespace A303935.P9769045673200710606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A173447 n).toNat

end

end A303935.P9769045673200710606

/-!
# A303937: Numbers k such that k!-1 reversed is a prime.

The programs for A303937, there is no canonical definition to state claims against.
-/

/-! ## A303937.P5422454633953930449

`A223702(2*n+3)+C(A137536(n), 2)`
-/

namespace A303937.P5422454633953930449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223702 (2 * n + 3) + (Nat.choose (A137536 n).toNat 2 : ℤ)

end

end A303937.P5422454633953930449

/-!
# A303938: Row sums of A303638.

The programs for A303938, there is no canonical definition to state claims against.
-/

/-! ## A303938.P5355521750554042219

`(n+1)*A139462(3^n)`
-/

namespace A303938.P5355521750554042219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139462 (3 ^ n)

end

end A303938.P5355521750554042219

/-!
# A303939: Number of partitions of n into at most 2 copies of 1, 3 copies of 2, 4 copies of 3, ... .

The programs for A303939, there is no canonical definition to state claims against.
-/

/-! ## A303939.P16379512609303035951

`A303940(∑[n+3])`
-/

namespace A303939.P16379512609303035951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303939.P16379512609303035951

/-! ## A303939.P10242006683285071513

`or(char[1], A303940(A027379(n+1)))`
-/

namespace A303939.P10242006683285071513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303940 (A027379 (n + 1)).toNat)

end

end A303939.P10242006683285071513

/-! ## A303939.P5046326529036641755

`A303940(A027379(n+1))%A020876(n)`
-/

namespace A303939.P5046326529036641755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303940 (A027379 (n + 1)).toNat) (A020876 n)

end

end A303939.P5046326529036641755

/-! ## A303939.P14665064485335816483

`and(A126646(n), A303940(A027379(n+1)))`
-/

namespace A303939.P14665064485335816483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A303940 (A027379 (n + 1)).toNat)

end

end A303939.P14665064485335816483

/-! ## A303939.P1305883215345170400

`char[A025480(n)]*A303940(A027379(n+1))`
-/

namespace A303939.P1305883215345170400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A303940 (A027379 (n + 1)).toNat

end

end A303939.P1305883215345170400

/-! ## A303939.P13358751331197890614

`char[A057979(n)]*A303940(A027379(n+1))`
-/

namespace A303939.P13358751331197890614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A303940 (A027379 (n + 1)).toNat

end

end A303939.P13358751331197890614

/-! ## A303939.P5201395383902075144

`A303940(A027379(n+1))+A000007(n+1)`
-/

namespace A303939.P5201395383902075144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A303939.P5201395383902075144

/-! ## A303939.P11208198086948459510

`A057979(2*n)*A303940(A027379(n+1))`
-/

namespace A303939.P11208198086948459510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A303940 (A027379 (n + 1)).toNat

end

end A303939.P11208198086948459510

/-! ## A303939.P15216294104870355628

`A007318(C(2, n))*A303940(A027379(n+1))`
-/

namespace A303939.P15216294104870355628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303940 (A027379 (n + 1)).toNat

end

end A303939.P15216294104870355628

/-! ## A303939.P12322339582943148305

`A303940(A027379(n+1))^A000041(C(2, n))`
-/

namespace A303939.P12322339582943148305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303940 (A027379 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A303939.P12322339582943148305

/-! ## A303939.P11180056089547757784

`A303940(A027379(n+1))^A014963(C(2, n)!)`
-/

namespace A303939.P11180056089547757784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303940 (A027379 (n + 1)).toNat : ℚ) ^ (A014963 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A303939.P11180056089547757784

/-! ## A303939.P12248555285700708736

`A303940(A027379(n+1))+char[A000108(n+12)]`
-/

namespace A303939.P12248555285700708736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (A027379 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A303939.P12248555285700708736

/-! ## A303939.P5469806015620549849

`A014963(6*(n+1))*A303940(A027379(n+1))`
-/

namespace A303939.P5469806015620549849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A303940 (A027379 (n + 1)).toNat

end

end A303939.P5469806015620549849

/-! ## A303939.P10295264314405407588

`A000040(n+2)%2*A303940(A027379(n+1))`
-/

namespace A303939.P10295264314405407588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A303940 (A027379 (n + 1)).toNat

end

end A303939.P10295264314405407588

/-! ## A303939.P7780649380463653843

`A303940(A027379(n+1))/A000005(gcd(n, n+1))`
-/

namespace A303939.P7780649380463653843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303940 (A027379 (n + 1)).toNat : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A303939.P7780649380463653843

/-! ## A303939.P8291664985958236292

`∑{e}[A000040(n+1), #]*A303940(A027379(n+1))`
-/

namespace A303939.P8291664985958236292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A303940 (A027379 (n + 1)).toNat

end

end A303939.P8291664985958236292

/-! ## A303939.P15178209503091991925

`A303940(A027379(n+1))+A008683(4*(2*n+1))`
-/

namespace A303939.P15178209503091991925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 (A027379 (n + 1)).toNat + A008683 (4 * (2 * n + 1))

end

end A303939.P15178209503091991925

/-! ## A303939.P3506016375298944589

`A001221(C(2, n+2)+2)*A303940(A027379(n+1))`
-/

namespace A303939.P3506016375298944589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose 2 (n + 2) + 2) * A303940 (A027379 (n + 1)).toNat

end

end A303939.P3506016375298944589

/-! ## A303939.P13491804144717163268

`A303940(A027379(n+1))^A000010(C(2, n+2)+2)`
-/

namespace A303939.P13491804144717163268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303940 (A027379 (n + 1)).toNat : ℚ) ^ (A000010 (Nat.choose 2 (n + 2) + 2) : ℤ)

end

end A303939.P13491804144717163268

/-!
# A303940: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1-x^(j*(j+k)))/(1-x^j). in powers of x.

The programs for A303940, there is no canonical definition to state claims against.
-/

/-! ## A303940.P6754553752123610171

`A055640(A306100(n)+A266878(n+1))`
-/

namespace A303940.P6754553752123610171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A306100 n + A266878 (n + 1)).toNat

end

end A303940.P6754553752123610171

/-! ## A303940.P11770921984515999374

`A000120(C(A292745(n)², A000120(a(n-1))))` with `a(0)=1`
-/

namespace A303940.P11770921984515999374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000120 (Nat.choose (A292745 n ^ 2).toNat (A000120 (a (n - 1)).toNat).toNat)

end

end A303940.P11770921984515999374

/-! ## A303940.P17965100178866844664

`A008615(A162908(A199909(n+1)))`
-/

namespace A303940.P17965100178866844664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A162908 (A199909 (n + 1)).toNat).toNat

end

end A303940.P17965100178866844664

/-! ## A303940.P633220556603042712

`A001221(A266455(n+1)+A247507(n))`
-/

namespace A303940.P633220556603042712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A266455 (n + 1) + A247507 n).toNat

end

end A303940.P633220556603042712

/-! ## A303940.P18418264486982946567

`A099042(A046216(n+1)^A292745(n))`
-/

namespace A303940.P18418264486982946567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099042 (SequenceMachineLib.roundAway ((A046216 (n + 1) : ℚ) ^ (A292745 n : ℤ))).toNat

end

end A303940.P18418264486982946567

/-!
# A303941: Triangle read by rows: T(0,0) = 1; T(n,k) = 3*T(n-1,k) - 2*T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0. Triangle of coefficients of Fermat polynomials.

The programs for A303941, there is no canonical definition to state claims against.
-/

/-! ## A303941.P5981035842484401859

`A303901(A091018(n))`
-/

namespace A303941.P5981035842484401859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303901 (A091018 n).toNat

end

end A303941.P5981035842484401859

/-! ## A303941.P6297976416798903200

`A303901(A056536(n+1)-1)`
-/

namespace A303941.P6297976416798903200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303901 (A056536 (n + 1) - 1).toNat

end

end A303941.P6297976416798903200

/-! ## A303941.P7807440012567085165

`A122803(A055087(n))*A304249(n)`
-/

namespace A303941.P7807440012567085165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A055087 n).toNat * A304249 n

end

end A303941.P7807440012567085165

/-! ## A303941.P2558042908501561200

`A115139(n+1)*A175840(A091018(n))`
-/

namespace A303941.P2558042908501561200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (n + 1) * A175840 (A091018 n).toNat

end

end A303941.P2558042908501561200

/-! ## A303941.P4122151299351375961

`A014451(A055087(n))*A038220(A091018(n))`
-/

namespace A303941.P4122151299351375961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A055087 n).toNat * A038220 (A091018 n).toNat

end

end A303941.P4122151299351375961

/-!
# A303942: Number of partitions of n into at most 1 copy of 1^2, 2 copies of 2^2, 3 copies of 3^2, ... .

The programs for A303942, there is no canonical definition to state claims against.
-/

/-! ## A303942.P12140249156448196820

`and(A060142(2*(n+1)), A333806(A000578(n+3)))`
-/

namespace A303942.P12140249156448196820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060142 (2 * (n + 1))) (A333806 (A000578 (n + 3)).toNat)

end

end A303942.P12140249156448196820

/-! ## A303942.P14069811875878714839

`A002828(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²*A285242(n))`
-/

namespace A303942.P14069811875878714839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2 * (A285242 n : ℚ))).toNat

end

end A303942.P14069811875878714839

/-! ## A303942.P4078158049652855656

`A286627(A288219(n)+A001844(n))`
-/

namespace A303942.P4078158049652855656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (A288219 n + A001844 n).toNat

end

end A303942.P4078158049652855656

/-! ## A303942.P4720017441818939249

`A284171(n)-A242249(A242249(n)!)`
-/

namespace A303942.P4720017441818939249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284171 n - A242249 (Nat.factorial (A242249 n).toNat)

end

end A303942.P4720017441818939249

/-! ## A303942.P8162637160743449005

`and(A001221(n+3), A250120(A046668(n+4)))`
-/

namespace A303942.P8162637160743449005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (n + 3)) (A250120 (A046668 (n + 4)).toNat)

end

end A303942.P8162637160743449005

/-!
# A303943: Expansion of 1/(1 - x/(1 - 1^2*x/(1 - 2^2*x/(1 - 3^2*x/(1 - 4^2*x/(1 - ...)))))), a continued fraction.

The programs for A303943, there is no canonical definition to state claims against.
-/

/-! ## A303943.P14875556277231751105

`A319534(floor(A294361(n)/2)+1)`
-/

namespace A303943.P14875556277231751105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319534 (⌊(A294361 n : ℚ) / 2⌋ + 1).toNat

end

end A303943.P14875556277231751105

/-! ## A303943.P15036094074723423394

`A346040(∑[A027306(floor(n²/2))])`
-/

namespace A303943.P15036094074723423394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303943.P15036094074723423394

/-!
# A303944: Number of partitions of n into at most 1^2 copy of 1, 2^2 copies of 2, 3^2 copies of 3, ... .

The programs for A303944, there is no canonical definition to state claims against.
-/

/-! ## A303944.P7842114864308470802

`A132217(n)+∑[A340998(A008766(n))]`
-/

namespace A303944.P7842114864308470802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A008766 n).toNat + 140)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132217 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303944.P7842114864308470802

/-! ## A303944.P4040917840771795216

`A340998(A265254(n)+1)+A265254(n)`
-/

namespace A303944.P4040917840771795216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A265254 n + 1).toNat + 140) + A265254 n

end

end A303944.P4040917840771795216

/-! ## A303944.P9666250796984898863

`or(A265245(A000096(n)), A265254(n))`
-/

namespace A303944.P9666250796984898863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265245 (A000096 n).toNat) (A265254 n)

end

end A303944.P9666250796984898863

/-! ## A303944.P14422097369790506604

`or(A085974(A297595(3*n+5)), A265254(n))`
-/

namespace A303944.P14422097369790506604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085974 (A297595 (3 * n + 5)).toNat) (A265254 n)

end

end A303944.P14422097369790506604

/-!
# A303945: Triangle whose n-th row lists the multiset of prime indices of the n-th number that is not a perfect power A007916(n).

The programs for A303945, there is no canonical definition to state claims against.
-/

/-! ## A303945.P2869071764442711465

`A112798(lt[A057505(2*(n+1)), A089850(3*n+2)])`
-/

namespace A303945.P2869071764442711465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303945.P2869071764442711465

/-! ## A303945.P7543676385901232848

`A327392(lt[A327448(n), A327443(n+1)])`
-/

namespace A303945.P7543676385901232848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327448 (n + 23)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327392 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303945.P7543676385901232848

/-!
# A303946: Numbers that are neither squarefree nor perfect powers.

The programs for A303946, the canonical program `A303946.P306985777119807509` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303946 has offset 1).

The definition of A303946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303946.P1161331918311044089

`eq[A295924(n+1), A355447(n+1)]+1`
-/

namespace A303946.P1161331918311044089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A303946.P1161331918311044089

namespace A303946

/-- `eq[A295924(n+1), A355447(n+1)]+1` -/
def P1161331918311044089.Spec : Prop :=
  ∀ n, (P1161331918311044089.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P306985777119807509

`A052410(eq[n+1, A052410(n+1)+A008683(n+1)]+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A303946

/-- `A052410(eq[n+1, A052410(n+1)+A008683(n+1)]+1)` -/
def P306985777119807509.Spec : Prop :=
  ∀ n, P306985777119807509.a n = A303946 (n + 1)

theorem P306985777119807509.correct : P306985777119807509.Spec := by
  intro n
  simp only [A303946, Nat.add_sub_cancel]

end A303946

/-! ## A303946.P16616540762653040334

`filter[A106543(n+1), A087049(#)]`
-/

namespace A303946.P16616540762653040334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A303946.P16616540762653040334

namespace A303946

/-- `filter[A106543(n+1), A087049(#)]` -/
def P16616540762653040334.Spec : Prop :=
  ∀ n, P16616540762653040334.a n = A303946 (n + 1)

end A303946

/-! ## A303946.P5667963857416142468

`filter[A106543(n+1), A355447(#)]`
-/

namespace A303946.P5667963857416142468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A303946.P5667963857416142468

namespace A303946

/-- `filter[A106543(n+1), A355447(#)]` -/
def P5667963857416142468.Spec : Prop :=
  ∀ n, P5667963857416142468.a n = A303946 (n + 1)

end A303946

/-! ## A303946.P2808108299868527344

`∩[A013929(n+1), A106543(n+1)]`
-/

namespace A303946.P2808108299868527344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P2808108299868527344

namespace A303946

/-- `∩[A013929(n+1), A106543(n+1)]` -/
def P2808108299868527344.Spec : Prop :=
  ∀ n, (P2808108299868527344.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P10474829582521547298

`∩[A051144(n+1), A106543(n+1)]`
-/

namespace A303946.P10474829582521547298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P10474829582521547298

namespace A303946

/-- `∩[A051144(n+1), A106543(n+1)]` -/
def P10474829582521547298.Spec : Prop :=
  ∀ n, (P10474829582521547298.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P9930071163010586345

`∩[A059404(n+1), A106543(n+1)]`
-/

namespace A303946.P9930071163010586345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P9930071163010586345

namespace A303946

/-- `∩[A059404(n+1), A106543(n+1)]` -/
def P9930071163010586345.Spec : Prop :=
  ∀ n, (P9930071163010586345.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P6488380149409867073

`filter[A007916(n+1), A087049(#)]`
-/

namespace A303946.P6488380149409867073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A303946.P6488380149409867073

namespace A303946

/-- `filter[A007916(n+1), A087049(#)]` -/
def P6488380149409867073.Spec : Prop :=
  ∀ n, P6488380149409867073.a n = A303946 (n + 1)

end A303946

/-! ## A303946.P12257698128448495300

`filter[A007916(n+1), A355447(#)]`
-/

namespace A303946.P12257698128448495300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A303946.P12257698128448495300

namespace A303946

/-- `filter[A007916(n+1), A355447(#)]` -/
def P12257698128448495300.Spec : Prop :=
  ∀ n, P12257698128448495300.a n = A303946 (n + 1)

end A303946

/-! ## A303946.P4116235087149642079

`∩[A007916(n+1), A013929(n+1)]`
-/

namespace A303946.P4116235087149642079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P4116235087149642079

namespace A303946

/-- `∩[A007916(n+1), A013929(n+1)]` -/
def P4116235087149642079.Spec : Prop :=
  ∀ n, (P4116235087149642079.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P13170388215682669332

`∩[A007916(n+1), A051144(n+1)]`
-/

namespace A303946.P13170388215682669332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P13170388215682669332

namespace A303946

/-- `∩[A007916(n+1), A051144(n+1)]` -/
def P13170388215682669332.Spec : Prop :=
  ∀ n, (P13170388215682669332.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P327128121718048956

`∩[A007916(n+1), A059404(n+1)]`
-/

namespace A303946.P327128121718048956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P327128121718048956

namespace A303946

/-- `∩[A007916(n+1), A059404(n+1)]` -/
def P327128121718048956.Spec : Prop :=
  ∀ n, (P327128121718048956.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P7409205671512057722

`∩[A007916(n+1), A080756(n+1)]`
-/

namespace A303946.P7409205671512057722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P7409205671512057722

namespace A303946

/-- `∩[A007916(n+1), A080756(n+1)]` -/
def P7409205671512057722.Spec : Prop :=
  ∀ n, (P7409205671512057722.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P9244960435210919955

`∩[A007916(n+1), A126706(n+1)]`
-/

namespace A303946.P9244960435210919955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P9244960435210919955

namespace A303946

/-- `∩[A007916(n+1), A126706(n+1)]` -/
def P9244960435210919955.Spec : Prop :=
  ∀ n, (P9244960435210919955.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P12589911234021201266

`∩[A059404(n+1), A094784(n+1)]`
-/

namespace A303946.P12589911234021201266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303946.P12589911234021201266

namespace A303946

/-- `∩[A059404(n+1), A094784(n+1)]` -/
def P12589911234021201266.Spec : Prop :=
  ∀ n, (P12589911234021201266.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P8242491868511715860

`eq[A249442(n), A253641(n)]`
-/

namespace A303946.P8242491868511715860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303946.P8242491868511715860

namespace A303946

/-- `eq[A249442(n), A253641(n)]` -/
def P8242491868511715860.Spec : Prop :=
  ∀ n, (P8242491868511715860.a n : ℤ) = A303946 (n + 1)

end A303946

/-! ## A303946.P7922480600858406576

`filter[A007916(n+1), A107078(#)]`
-/

namespace A303946.P7922480600858406576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A303946.P7922480600858406576

namespace A303946

/-- `filter[A007916(n+1), A107078(#)]` -/
def P7922480600858406576.Spec : Prop :=
  ∀ n, P7922480600858406576.a n = A303946 (n + 1)

end A303946

/-! ## A303946.P16748655950255217371

`filter[A013929(n+1), A132350(#)]`
-/

namespace A303946.P16748655950255217371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A303946.P16748655950255217371

namespace A303946

/-- `filter[A013929(n+1), A132350(#)]` -/
def P16748655950255217371.Spec : Prop :=
  ∀ n, P16748655950255217371.a n = A303946 (n + 1)

end A303946

/-! ## A303946.P3443183865865034639

`filter[A051144(n+1), A132350(#)]`
-/

namespace A303946.P3443183865865034639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A303946.P3443183865865034639

namespace A303946

/-- `filter[A051144(n+1), A132350(#)]` -/
def P3443183865865034639.Spec : Prop :=
  ∀ n, P3443183865865034639.a n = A303946 (n + 1)

end A303946

/-! ## A303946.P9069351209187801953

`filter[A059404(n+1), A132350(#)]`
-/

namespace A303946.P9069351209187801953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A303946.P9069351209187801953

namespace A303946

/-- `filter[A059404(n+1), A132350(#)]` -/
def P9069351209187801953.Spec : Prop :=
  ∀ n, P9069351209187801953.a n = A303946 (n + 1)

end A303946

/-!
# A303947: Number of partitions of n into at most 1 copy of 2^2, 2 copies of 3^2, 3 copies of 4^2, ... .

The programs for A303947, there is no canonical definition to state claims against.
-/

/-! ## A303947.P2711499298013898128

`A123547(2^A280586(n))`
-/

namespace A303947.P2711499298013898128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123547 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A280586 n : ℤ))).toNat

end

end A303947.P2711499298013898128

/-! ## A303947.P7574595742992804882

`A330168(15*A280586(n))`
-/

namespace A303947.P7574595742992804882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330168 (15 * A280586 n).toNat

end

end A303947.P7574595742992804882

/-! ## A303947.P8098229458191570525

`A193426(round(cosh(A280586(n))))`
-/

namespace A303947.P8098229458191570525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (SequenceMachineLib.roundAway (Real.cosh (A280586 n : ℝ))).toNat

end

end A303947.P8098229458191570525

/-! ## A303947.P16912756325631496902

`val(A048167(3^A280586(n)), 2)`
-/

namespace A303947.P16912756325631496902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048167 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A280586 n : ℤ))).toNat).toNat 2

end

end A303947.P16912756325631496902

/-! ## A303947.P4664542441994365172

`and(A025872(n), A068723(n))`
-/

namespace A303947.P4664542441994365172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025872 n) (A068723 n)

end

end A303947.P4664542441994365172

/-!
# A303952: a(n) is the number of monic polynomials P(z) of degree n over the complex numbers such that P(z) divides P(z^2).

The programs for A303952, there is no canonical definition to state claims against.
-/

/-! ## A303952.P15611584773576928300

`A128730(n+1)+1`
-/

namespace A303952.P15611584773576928300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128730 (n + 1) + 1

end

end A303952.P15611584773576928300

/-! ## A303952.P2528944817683672854

`A262664(n)+A138415(n)`
-/

namespace A303952.P2528944817683672854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262664 n + A138415 n

end

end A303952.P2528944817683672854

/-! ## A303952.P4330375665710417222

`∑[A128740(n)+A033321(n)]`
-/

namespace A303952.P4330375665710417222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n + A033321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303952.P4330375665710417222

/-! ## A303952.P9103067479835373577

`A242586(n)-∑[A128732(n)]`
-/

namespace A303952.P9103067479835373577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242586 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303952.P9103067479835373577

/-! ## A303952.P9478270735689592578

`A126568(n)-∑[2*A128732(n)]`
-/

namespace A303952.P9478270735689592578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303952.P9478270735689592578

/-! ## A303952.P12081416839030463266

`A138415(n+1)+A128726(n+1)`
-/

namespace A303952.P12081416839030463266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138415 (n + 1) + A128726 (n + 1)

end

end A303952.P12081416839030463266

/-! ## A303952.P5182807334483089410

`A128732(n+1)+1-A128726(n+1)`
-/

namespace A303952.P5182807334483089410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (n + 1) + (1 - A128726 (n + 1))

end

end A303952.P5182807334483089410

/-! ## A303952.P397975526878657698

`A026375(n)+1-A126568(n)`
-/

namespace A303952.P397975526878657698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 n + (1 - A126568 n)

end

end A303952.P397975526878657698

/-!
# A303955: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303955, there is no canonical definition to state claims against.
-/

/-! ## A303955.P4601714599523383957

`A303961(∑[4*n]+1)`
-/

namespace A303955.P4601714599523383957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303955.P4601714599523383957

/-! ## A303955.P5718020224692338919

`record[A077606(n+1)*A303961(n+1)]`
-/

namespace A303955.P5718020224692338919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A303961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303955.P5718020224692338919

/-! ## A303955.P1732176583318181614

`record[A203994(n+1)*A303961(n+1)]`
-/

namespace A303955.P1732176583318181614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A303961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303955.P1732176583318181614

/-! ## A303955.P7062395156715694042

`record[and(A185917(n+1), A303961(n+1))]`
-/

namespace A303955.P7062395156715694042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A303961 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303955.P7062395156715694042

/-! ## A303955.P7036463818002568192

`gcd(A000038(n), A303961(A001844(n)))`
-/

namespace A303955.P7036463818002568192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A303961 (A001844 n).toNat)

end

end A303955.P7036463818002568192

/-!
# A303956: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303956, there is no canonical definition to state claims against.
-/

/-! ## A303956.P10380329327450411757

`A303961(∑[n+2]+4)`
-/

namespace A303956.P10380329327450411757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303956.P10380329327450411757

/-! ## A303956.P16893954759460797331

`lcm((-1)^n, A303961(A167614(n+1)))`
-/

namespace A303956.P16893954759460797331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A303961 (A167614 (n + 1)).toNat)

end

end A303956.P16893954759460797331

/-! ## A303956.P2874747788838410534

`A303961(A167614(n+1))+A025439(n)`
-/

namespace A303956.P2874747788838410534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A167614 (n + 1)).toNat + A025439 n

end

end A303956.P2874747788838410534

/-! ## A303956.P5002185810527759202

`A303961(A167614(n+1))%A041118(n)`
-/

namespace A303956.P5002185810527759202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303961 (A167614 (n + 1)).toNat) (A041118 n)

end

end A303956.P5002185810527759202

/-! ## A303956.P15118051493588003988

`A339012(2*n)+A303961(A167614(n+1))`
-/

namespace A303956.P15118051493588003988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339012 (2 * n) + A303961 (A167614 (n + 1)).toNat

end

end A303956.P15118051493588003988

/-!
# A303957: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303957, there is no canonical definition to state claims against.
-/

/-! ## A303957.P9452302877753369380

`A303961(∑[n+3]+7)`
-/

namespace A303957.P9452302877753369380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303957.P9452302877753369380

/-! ## A303957.P3860446346861001168

`lcm(-(-1)^n, A303961(A155212(n)+5))`
-/

namespace A303957.P3860446346861001168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-((-1) ^ n)) (A303961 (A155212 n + 5).toNat)

end

end A303957.P3860446346861001168

/-! ## A303957.P1746294880835492228

`A303961(A155212(n)+5)+A000007(n+1)`
-/

namespace A303957.P1746294880835492228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A155212 n + 5).toNat + A000007 (n + 1)

end

end A303957.P1746294880835492228

/-! ## A303957.P17827699170665431970

`A303961(A155212(n)+5)+char[A000124(n+9)]`
-/

namespace A303957.P17827699170665431970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A155212 n + 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A303957.P17827699170665431970

/-! ## A303957.P14538488481795870743

`A020639(gcd(n, n+1))*A303961(A155212(n)+5)`
-/

namespace A303957.P14538488481795870743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A303961 (A155212 n + 5).toNat

end

end A303957.P14538488481795870743

/-!
# A303958: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303958, there is no canonical definition to state claims against.
-/

/-! ## A303958.P12375419559117731491

`A303961(A167499(n+3))`
-/

namespace A303958.P12375419559117731491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A167499 (n + 3)).toNat

end

end A303958.P12375419559117731491

/-! ## A303958.P3768366778965334577

`A303961(A155212(n)+13)`
-/

namespace A303958.P3768366778965334577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A155212 n + 13).toNat

end

end A303958.P3768366778965334577

/-! ## A303958.P10095304545783988561

`A303961(A167487(n+3)-2)`
-/

namespace A303958.P10095304545783988561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A167487 (n + 3) - 2).toNat

end

end A303958.P10095304545783988561

/-! ## A303958.P3626852009833525011

`A303961(A141214(n+1)+8)`
-/

namespace A303958.P3626852009833525011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A141214 (n + 1) + 8).toNat

end

end A303958.P3626852009833525011

/-! ## A303958.P15457350932110505385

`A303961(A027379(n+2)+8)`
-/

namespace A303958.P15457350932110505385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A027379 (n + 2) + 8).toNat

end

end A303958.P15457350932110505385

/-!
# A303959: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303959, there is no canonical definition to state claims against.
-/

/-! ## A303959.P13499053457182493297

`A303961(A166136(n+4))`
-/

namespace A303959.P13499053457182493297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A166136 (n + 4)).toNat

end

end A303959.P13499053457182493297

/-! ## A303959.P15682631356527015427

`A303961(A000124(n+5)+5)`
-/

namespace A303959.P15682631356527015427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A000124 (n + 5) + 5).toNat

end

end A303959.P15682631356527015427

/-! ## A303959.P13230192661127945809

`A303961(A000217(n+5)+6)`
-/

namespace A303959.P13230192661127945809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A000217 (n + 5) + 6).toNat

end

end A303959.P13230192661127945809

/-! ## A303959.P1816754774728659462

`A303961(A141214(n+2)+9)`
-/

namespace A303959.P1816754774728659462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A141214 (n + 2) + 9).toNat

end

end A303959.P1816754774728659462

/-! ## A303959.P3659754795253491351

`A303961(A027379(n+3)+9)`
-/

namespace A303959.P3659754795253491351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A027379 (n + 3) + 9).toNat

end

end A303959.P3659754795253491351

/-!
# A303960: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303960, there is no canonical definition to state claims against.
-/

/-! ## A303960.P15488575689437257599

`A303961(A167614(n+5)+4)`
-/

namespace A303960.P15488575689437257599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A167614 (n + 5) + 4).toNat

end

end A303960.P15488575689437257599

/-! ## A303960.P14335317762481536020

`A303961(A000217(n+6)+7)`
-/

namespace A303960.P14335317762481536020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A000217 (n + 6) + 7).toNat

end

end A303960.P14335317762481536020

/-! ## A303960.P14404112647307500547

`A303961(A374008(n+1))`
-/

namespace A303960.P14404112647307500547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A374008 (n + 1)).toNat

end

end A303960.P14404112647307500547

/-! ## A303960.P3791969889204744863

`A303961(A055999(n+4))`
-/

namespace A303960.P3791969889204744863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A055999 (n + 4)).toNat

end

end A303960.P3791969889204744863

/-! ## A303960.P13725574243665789259

`A303961(A000124(n+7)-7)`
-/

namespace A303960.P13725574243665789259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303961 (A000124 (n + 7) - 7).toNat

end

end A303960.P13725574243665789259

/-!
# A303961: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303961, there is no canonical definition to state claims against.
-/

/-! ## A303961.P10632761577352326692

`A304604(n+1)-A082858(A059441(n+1))`
-/

namespace A303961.P10632761577352326692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (n + 1) - A082858 (A059441 (n + 1)).toNat

end

end A303961.P10632761577352326692

/-! ## A303961.P10210516007873251819

`A304604(n+1)-A289618(A317525(n+1))`
-/

namespace A303961.P10210516007873251819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (n + 1) - A289618 (A317525 (n + 1)).toNat

end

end A303961.P10210516007873251819

/-! ## A303961.P18244751621353729426

`A305340(n+1)-A321936(A001263(n+1))²`
-/

namespace A303961.P18244751621353729426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305340 (n + 1) - A321936 (A001263 (n + 1)).toNat ^ 2

end

end A303961.P18244751621353729426

/-! ## A303961.P8999319860279354993

`A304604(n+1)-A112609(A208567(n+1))`
-/

namespace A303961.P8999319860279354993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304604 (n + 1) - A112609 (A208567 (n + 1)).toNat

end

end A303961.P8999319860279354993

/-! ## A303961.P12375048892738970875

`A267112(A304926(n+1)%A372733(n))`
-/

namespace A303961.P12375048892738970875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (Int.tmod (A304926 (n + 1)) (A372733 n)).toNat

end

end A303961.P12375048892738970875

/-!
# A303962: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303962, there is no canonical definition to state claims against.
-/

/-! ## A303962.P6583899209960673594

`A303969(∑[4*n]+1)`
-/

namespace A303962.P6583899209960673594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303962.P6583899209960673594

/-! ## A303962.P9927708705766254232

`record[A303969(Δ[A235355(n)])]`
-/

namespace A303962.P9927708705766254232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303962.P9927708705766254232

/-! ## A303962.P1328347339538863623

`record[A303969(A330613(n+1))]`
-/

namespace A303962.P1328347339538863623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303962.P1328347339538863623

/-! ## A303962.P5207947476206774253

`A303969(A001844(n))+char[15]`
-/

namespace A303962.P5207947476206774253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303962.P5207947476206774253

/-! ## A303962.P6509596148243856288

`A303969(A001844(n))/A007318(∑[n])`
-/

namespace A303962.P6509596148243856288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303969 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A303962.P6509596148243856288

/-!
# A303963: Number of nX2 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303963, the canonical program `A303963.P5866001824104862808` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303963 has offset 1).

The definition of A303963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303963.P5866001824104862808

`a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=5, a(2)=9, a(3)=21`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A303963

/-- `a(n-1)+8*a(n-3)-4*a(n-4)` -/
def P5866001824104862808.Spec : Prop :=
  ∀ n, P5866001824104862808.a n = A303963 (n + 1)

theorem P5866001824104862808.correct : P5866001824104862808.Spec := by
  intro n
  simp only [A303963, Nat.add_sub_cancel]

end A303963

/-! ## A303963.P2499496667377555164

`A297883(n+1)-A155559(n)`
-/

namespace A303963.P2499496667377555164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297883 (n + 1) - A155559 n

end

end A303963.P2499496667377555164

namespace A303963

/-- `A297883(n+1)-A155559(n)` -/
def P2499496667377555164.Spec : Prop :=
  ∀ n, P2499496667377555164.a n = A303963 (n + 1)

end A303963

/-! ## A303963.P13628655477072784668

`or(1, A297883(n+1))-A000079(n)`
-/

namespace A303963.P13628655477072784668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A297883 (n + 1)) - A000079 n

end

end A303963.P13628655477072784668

namespace A303963

/-- `or(1, A297883(n+1))-A000079(n)` -/
def P13628655477072784668.Spec : Prop :=
  ∀ n, P13628655477072784668.a n = A303963 (n + 1)

end A303963

/-! ## A303963.P2281488659455099736

`A297883(n+1)+A000007(n)-A000079(n)`
-/

namespace A303963.P2281488659455099736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297883 (n + 1) + (A000007 n - A000079 n)

end

end A303963.P2281488659455099736

namespace A303963

/-- `A297883(n+1)+A000007(n)-A000079(n)` -/
def P2281488659455099736.Spec : Prop :=
  ∀ n, P2281488659455099736.a n = A303963 (n + 1)

end A303963

/-! ## A303963.P6362617679761933090

`A297883(n+1)-A000079(n)%A000244(n)`
-/

namespace A303963.P6362617679761933090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297883 (n + 1) - Int.tmod (A000079 n) (A000244 n)

end

end A303963.P6362617679761933090

namespace A303963

/-- `A297883(n+1)-A000079(n)%A000244(n)` -/
def P6362617679761933090.Spec : Prop :=
  ∀ n, P6362617679761933090.a n = A303963 (n + 1)

end A303963

/-!
# A303964: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303964, there is no canonical definition to state claims against.
-/

/-! ## A303964.P5218931007786836713

`A303969(∑[n+2]+4)`
-/

namespace A303964.P5218931007786836713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303964.P5218931007786836713

/-! ## A303964.P17528376615376503434

`or(char[1], A303969(A167614(n+1)))`
-/

namespace A303964.P17528376615376503434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303969 (A167614 (n + 1)).toNat)

end

end A303964.P17528376615376503434

/-! ## A303964.P13768133511935819354

`or(char[1], A303969(A046691(n)+7))`
-/

namespace A303964.P13768133511935819354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303969 (A046691 n + 7).toNat)

end

end A303964.P13768133511935819354

/-! ## A303964.P8241265903513340943

`A303969(A167614(n+1))%A041354(n)`
-/

namespace A303964.P8241265903513340943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303969 (A167614 (n + 1)).toNat) (A041354 n)

end

end A303964.P8241265903513340943

/-! ## A303964.P6230901590160130173

`A303969(A167614(n+1))+A070097(n+1)`
-/

namespace A303964.P6230901590160130173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A167614 (n + 1)).toNat + A070097 (n + 1)

end

end A303964.P6230901590160130173

/-!
# A303965: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303965, there is no canonical definition to state claims against.
-/

/-! ## A303965.P10204524124567549314

`A303969(∑[n+3]+7)`
-/

namespace A303965.P10204524124567549314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303965.P10204524124567549314

/-! ## A303965.P11082585534698404597

`or(char[1], A303969(A141214(n)+7))`
-/

namespace A303965.P11082585534698404597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303969 (A141214 n + 7).toNat)

end

end A303965.P11082585534698404597

/-! ## A303965.P18300551631805874076

`A303969(A052905(n)+9)%A306170(n+1)`
-/

namespace A303965.P18300551631805874076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303969 (A052905 n + 9).toNat) (A306170 (n + 1))

end

end A303965.P18300551631805874076

/-! ## A303965.P9488643182975926992

`A007318(C(2, n))*A303969(A141214(n)+7)`
-/

namespace A303965.P9488643182975926992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303969 (A141214 n + 7).toNat

end

end A303965.P9488643182975926992

/-! ## A303965.P6456428437189992498

`A000041(C(2, n+2))*A303969(A141214(n)+7)`
-/

namespace A303965.P6456428437189992498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A303969 (A141214 n + 7).toNat

end

end A303965.P6456428437189992498

/-!
# A303966: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303966, there is no canonical definition to state claims against.
-/

/-! ## A303966.P8406802563512465517

`A303969(A374005(n+1))`
-/

namespace A303966.P8406802563512465517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A374005 (n + 1)).toNat

end

end A303966.P8406802563512465517

/-! ## A303966.P12940760449134510121

`A303969(A167499(n+3))`
-/

namespace A303966.P12940760449134510121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A167499 (n + 3)).toNat

end

end A303966.P12940760449134510121

/-! ## A303966.P13829935082130034068

`A303969(A155212(n)+13)`
-/

namespace A303966.P13829935082130034068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A155212 n + 13).toNat

end

end A303966.P13829935082130034068

/-! ## A303966.P8773174183642878474

`A303969(A056000(n)+15)`
-/

namespace A303966.P8773174183642878474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A056000 n + 15).toNat

end

end A303966.P8773174183642878474

/-! ## A303966.P1916765555764695838

`A303969(A166136(n+3)-1)`
-/

namespace A303966.P1916765555764695838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A166136 (n + 3) - 1).toNat

end

end A303966.P1916765555764695838

/-!
# A303967: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303967, there is no canonical definition to state claims against.
-/

/-! ## A303967.P9645138080360911859

`A303969(∑[n+5]+16)`
-/

namespace A303967.P9645138080360911859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303967.P9645138080360911859

/-! ## A303967.P14034240215821265905

`A303969(A027379(n+4)-2)%A305346(n+1)`
-/

namespace A303967.P14034240215821265905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303969 (A027379 (n + 4) - 2).toNat) (A305346 (n + 1))

end

end A303967.P14034240215821265905

/-!
# A303968: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303968, there is no canonical definition to state claims against.
-/

/-! ## A303968.P3165925310331749858

`A303969(A374008(n+1))`
-/

namespace A303968.P3165925310331749858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A374008 (n + 1)).toNat

end

end A303968.P3165925310331749858

/-! ## A303968.P11100468546090126834

`A303969(A056119(n)+28)`
-/

namespace A303968.P11100468546090126834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A056119 n + 28).toNat

end

end A303968.P11100468546090126834

/-! ## A303968.P16532611790893456297

`A303969(A166136(n+5)+1)`
-/

namespace A303968.P16532611790893456297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A166136 (n + 5) + 1).toNat

end

end A303968.P16532611790893456297

/-! ## A303968.P10773400143877123787

`A303969(A133263(n+6)+5)`
-/

namespace A303968.P10773400143877123787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A133263 (n + 6) + 5).toNat

end

end A303968.P10773400143877123787

/-! ## A303968.P3978185462971040453

`A303969(A000124(n+6)+6)`
-/

namespace A303968.P3978185462971040453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303969 (A000124 (n + 6) + 6).toNat

end

end A303968.P3978185462971040453

/-!
# A303969: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303969, there is no canonical definition to state claims against.
-/

/-! ## A303969.P38931010687416200

`A304931(n+1)%record[A252192(n+1)]`
-/

namespace A303969.P38931010687416200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304931 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A303969.P38931010687416200

/-! ## A303969.P3579844078039007869

`A010052(A008459(n))*A304931(n+1)`
-/

namespace A303969.P3579844078039007869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008459 n).toNat * A304931 (n + 1)

end

end A303969.P3579844078039007869

/-! ## A303969.P7012824641241382762

`A047999(A027468(n))*A304931(n+1)`
-/

namespace A303969.P7012824641241382762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A027468 n).toNat * A304931 (n + 1)

end

end A303969.P7012824641241382762

/-! ## A303969.P7714665326607797259

`A057427(A188461(n))*A304931(n+1)`
-/

namespace A303969.P7714665326607797259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A188461 n).toNat * A304931 (n + 1)

end

end A303969.P7714665326607797259

/-! ## A303969.P15550879990212784424

`A304931(n+1)%A198167(A368401(n))`
-/

namespace A303969.P15550879990212784424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304931 (n + 1)) (A198167 (A368401 n).toNat)

end

end A303969.P15550879990212784424

/-!
# A303970: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^k)^H(k), where H(k) is the k-th harmonic number.

The programs for A303970, there is no canonical definition to state claims against.
-/

/-! ## A303970.P4545454162760447943

`A074286(A330515(n)+A243659(n))`
-/

namespace A303970.P4545454162760447943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A330515 n + A243659 n).toNat

end

end A303970.P4545454162760447943

/-! ## A303970.P7505385671764491522

`or(A001349(n), A008620(A220878(n)))`
-/

namespace A303970.P7505385671764491522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001349 n) (A008620 (A220878 n).toNat)

end

end A303970.P7505385671764491522

/-!
# A303971: Primes p such that 2*p + 1 and (5*p^2 + 4*p + 1)/2 are prime.

The programs for A303971, there is no canonical definition to state claims against.
-/

/-! ## A303971.P3249524445758611430

`A005384(eq[A296150(n+1), A376939(n+1)])`
-/

namespace A303971.P3249524445758611430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A303971.P3249524445758611430

/-!
# A303972: Total volume of all cubes with side length n which can be split such that n = p + q, p divides q and p < q.

The programs for A303972, the canonical program `A303972.P11388176725645930891` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303972 has offset 1).

The definition of A303972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303873, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303972.P11388176725645930891

`(n+1)*A303873(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303972

/-- `(n+1)*A303873(n+1)` -/
def P11388176725645930891.Spec : Prop :=
  ∀ n, P11388176725645930891.a n = A303972 (n + 1)

theorem P11388176725645930891.correct : P11388176725645930891.Spec := by
  intro n
  simp only [A303972, Nat.add_sub_cancel]

end A303972

/-! ## A303972.P15321559429092980167

`(n+1)*(n+1)²*∑{d}[n+1, 2%#/2]`
-/

namespace A303972.P15321559429092980167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((n + 1) ^ 2 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2))

end

end A303972.P15321559429092980167

namespace A303972

/-- `(n+1)*(n+1)²*∑{d}[n+1, 2%#/2]` -/
def P15321559429092980167.Spec : Prop :=
  ∀ n, P15321559429092980167.a n = (A303972 (n + 1) : ℚ)

end A303972

/-! ## A303972.P6699077079137401677

`(n+1)*(n+1)²*∑{d}[n+1, 1-round(1/#)]`
-/

namespace A303972.P6699077079137401677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 2 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (1 - SequenceMachineLib.roundAway (1 / (d : ℚ)))))

end

end A303972.P6699077079137401677

namespace A303972

/-- `(n+1)*(n+1)²*∑{d}[n+1, 1-round(1/#)]` -/
def P6699077079137401677.Spec : Prop :=
  ∀ n, P6699077079137401677.a n = A303972 (n + 1)

end A303972

/-! ## A303972.P12061564932381623547

`(n+1)²*A296966(n+1)`
-/

namespace A303972.P12061564932381623547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A296966 (n + 1)

end

end A303972.P12061564932381623547

namespace A303972

/-- `(n+1)²*A296966(n+1)` -/
def P12061564932381623547.Spec : Prop :=
  ∀ n, P12061564932381623547.a n = A303972 (n + 1)

end A303972

/-! ## A303972.P9222242725032861341

`(n+1)^3*A023645(n+1)`
-/

namespace A303972.P9222242725032861341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A023645 (n + 1)

end

end A303972.P9222242725032861341

namespace A303972

/-- `(n+1)^3*A023645(n+1)` -/
def P9222242725032861341.Spec : Prop :=
  ∀ n, P9222242725032861341.a n = A303972 (n + 1)

end A303972

/-! ## A303972.P12043452706229899914

`A023645(n+1)*A184628(n+1)`
-/

namespace A303972.P12043452706229899914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) * A184628 (n + 1)

end

end A303972.P12043452706229899914

namespace A303972

/-- `A023645(n+1)*A184628(n+1)` -/
def P12043452706229899914.Spec : Prop :=
  ∀ n, P12043452706229899914.a n = A303972 (n + 1)

end A303972

/-! ## A303972.P9774083212963498276

`A023645(n+1)*A066023(n+1)`
-/

namespace A303972.P9774083212963498276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) * A066023 (n + 1)

end

end A303972.P9774083212963498276

namespace A303972

/-- `A023645(n+1)*A066023(n+1)` -/
def P9774083212963498276.Spec : Prop :=
  ∀ n, P9774083212963498276.a n = A303972 (n + 1)

end A303972

/-!
# A303973: Total volume of all rectangular prisms with dimensions (p,p,q) such that n = p + q, p divides q and p < q.

The programs for A303973, the canonical program `A303973.P17946534861844191776` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303973 has offset 1).

The definition of A303973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303973.P7530472682602042040

`(A303481(n+1)-A303479(n+1))/2`
-/

namespace A303973.P7530472682602042040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303481 (n + 1) - A303479 (n + 1) : ℚ) / 2

end

end A303973.P7530472682602042040

namespace A303973

/-- `(A303481(n+1)-A303479(n+1))/2` -/
def P7530472682602042040.Spec : Prop :=
  ∀ n, P7530472682602042040.a n = (A303973 (n + 1) : ℚ)

end A303973

/-! ## A303973.P17946534861844191776

`∑{d}[n+1, A053191(#)*A303385((n+1)/#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A303973

/-- `∑{d}[n+1, A053191(#)*A303385((n+1)/#)]` -/
def P17946534861844191776.Spec : Prop :=
  ∀ n, P17946534861844191776.a n = A303973 (n + 1)

theorem P17946534861844191776.correct : P17946534861844191776.Spec := by
  intro n
  simp only [A303973, Nat.add_sub_cancel]

end A303973

/-! ## A303973.P17639528267378034431

`A014682(A303481(n+1)-A303479(n+1))`
-/

namespace A303973.P17639528267378034431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A303481 (n + 1) - A303479 (n + 1)).toNat

end

end A303973.P17639528267378034431

namespace A303973

/-- `A014682(A303481(n+1)-A303479(n+1))` -/
def P17639528267378034431.Spec : Prop :=
  ∀ n, P17639528267378034431.a n = A303973 (n + 1)

end A303973

/-! ## A303973.P12263355150235737186

`A038572(A303481(n+1)-A303479(n+1))`
-/

namespace A303973.P12263355150235737186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A303481 (n + 1) - A303479 (n + 1)).toNat

end

end A303973.P12263355150235737186

namespace A303973

/-- `A038572(A303481(n+1)-A303479(n+1))` -/
def P12263355150235737186.Spec : Prop :=
  ∀ n, P12263355150235737186.a n = A303973 (n + 1)

end A303973

/-! ## A303973.P4453844596516993491

`A001281(A303481(n+1)-A303479(n+1))`
-/

namespace A303973.P4453844596516993491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A303481 (n + 1) - A303479 (n + 1)).toNat

end

end A303973.P4453844596516993491

namespace A303973

/-- `A001281(A303481(n+1)-A303479(n+1))` -/
def P4453844596516993491.Spec : Prop :=
  ∀ n, P4453844596516993491.a n = A303973 (n + 1)

end A303973

/-!
# A303974: Regular triangle where T(n,k) is the number of aperiodic multisets of size k that fit within some normal multiset of size n.

The programs for A303974, there is no canonical definition to state claims against.
-/

/-! ## A303974.P8690825837483505878

`A282782(A319254(n+1))+A034380(3*n+1)`
-/

namespace A303974.P8690825837483505878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282782 (A319254 (n + 1)).toNat + A034380 (3 * n + 1)

end

end A303974.P8690825837483505878

/-! ## A303974.P14824265544368843632

`A382172(A118922(2*n+3))+A319254(n+1)`
-/

namespace A303974.P14824265544368843632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382172 (A118922 (2 * n + 3)).toNat + A319254 (n + 1)

end

end A303974.P14824265544368843632

/-! ## A303974.P13655887510468887158

`A345228(n)+A001222(3^A192001(n+1))*A127568(n)`
-/

namespace A303974.P13655887510468887158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345228 n + A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A192001 (n + 1) : ℤ))).toNat * A127568 n

end

end A303974.P13655887510468887158

/-! ## A303974.P12284273144003179803

`A053166(A159881(n)²²)*A127568(n)+1-A299038(n)`
-/

namespace A303974.P12284273144003179803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((A159881 n ^ 2) ^ 2).toNat * A127568 n + 1 - A299038 n

end

end A303974.P12284273144003179803

/-!
# A303975: Number of distinct prime factors in the product of prime indices of n.

The programs for A303975, the canonical program `A303975.P10388066123834061487` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303975 has offset 1).

The definition of A303975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A156061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303975.P10388066123834061487

`A001221(A156061(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A303975

/-- `A001221(A156061(n+1))` -/
def P10388066123834061487.Spec : Prop :=
  ∀ n, P10388066123834061487.a n = A303975 (n + 1)

theorem P10388066123834061487.correct : P10388066123834061487.Spec := by
  intro n
  simp only [A303975, Nat.add_sub_cancel]

end A303975

/-! ## A303975.P16608970298171341487

`∑{e}[∏{p}[A003963(n+1), #], #]`
-/

namespace A303975.P16608970298171341487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A303975.P16608970298171341487

namespace A303975

/-- `∑{e}[∏{p}[A003963(n+1), #], #]` -/
def P16608970298171341487.Spec : Prop :=
  ∀ n, (P16608970298171341487.a n : ℤ) = A303975 (n + 1)

end A303975

/-! ## A303975.P521446761794991497

`∑{e}[∏{p}[∏{p}[n+1, A000720(#)], #], #]`
-/

namespace A303975.P521446761794991497
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A000720 p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A303975.P521446761794991497

namespace A303975

/-- `∑{e}[∏{p}[∏{p}[n+1, A000720(#)], #], #]` -/
def P521446761794991497.Spec : Prop :=
  ∀ n, (P521446761794991497.a n : ℤ) = A303975 (n + 1)

end A303975

/-! ## A303975.P12734233827329668287

`A001221(A003963(n+1))`
-/

namespace A303975.P12734233827329668287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003963 (n + 1)).toNat

end

end A303975.P12734233827329668287

namespace A303975

/-- `A001221(A003963(n+1))` -/
def P12734233827329668287.Spec : Prop :=
  ∀ n, P12734233827329668287.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P1120685116183044534

`A001221(A225395(n+1))`
-/

namespace A303975.P1120685116183044534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A225395 (n + 1)).toNat

end

end A303975.P1120685116183044534

namespace A303975

/-- `A001221(A225395(n+1))` -/
def P1120685116183044534.Spec : Prop :=
  ∀ n, P1120685116183044534.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P13904397497147261469

`A001221(A290103(n+1))`
-/

namespace A303975.P13904397497147261469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A290103 (n + 1)).toNat

end

end A303975.P13904397497147261469

namespace A303975

/-- `A001221(A290103(n+1))` -/
def P13904397497147261469.Spec : Prop :=
  ∀ n, P13904397497147261469.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P17487644543542755904

`A001221(A316431(2*(n+1)))`
-/

namespace A303975.P17487644543542755904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A316431 (2 * (n + 1))).toNat

end

end A303975.P17487644543542755904

namespace A303975

/-- `A001221(A316431(2*(n+1)))` -/
def P17487644543542755904.Spec : Prop :=
  ∀ n, P17487644543542755904.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P799730810158400254

`∑{p}[A003963(n+1), A064547(#)]`
-/

namespace A303975.P799730810158400254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064547 p

end

end A303975.P799730810158400254

namespace A303975

/-- `∑{p}[A003963(n+1), A064547(#)]` -/
def P799730810158400254.Spec : Prop :=
  ∀ n, P799730810158400254.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P1826354545903548774

`∑{p}[A156061(n+1), A064547(#)]`
-/

namespace A303975.P1826354545903548774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064547 p

end

end A303975.P1826354545903548774

namespace A303975

/-- `∑{p}[A156061(n+1), A064547(#)]` -/
def P1826354545903548774.Spec : Prop :=
  ∀ n, P1826354545903548774.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P11828924644739453237

`∑{e}[A003963(n+1), A290105(#)]`
-/

namespace A303975.P11828924644739453237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A290105 (Nat.factorization (f1 n).natAbs p)

end

end A303975.P11828924644739453237

namespace A303975

/-- `∑{e}[A003963(n+1), A290105(#)]` -/
def P11828924644739453237.Spec : Prop :=
  ∀ n, P11828924644739453237.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P13620314170924887159

`A056170(A003963(n+1)²)`
-/

namespace A303975.P13620314170924887159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A003963 (n + 1) ^ 2).toNat

end

end A303975.P13620314170924887159

namespace A303975

/-- `A056170(A003963(n+1)²)` -/
def P13620314170924887159.Spec : Prop :=
  ∀ n, P13620314170924887159.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P14314085575736559495

`A087624(A156061(n+1)²)`
-/

namespace A303975.P14314085575736559495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A156061 (n + 1) ^ 2).toNat

end

end A303975.P14314085575736559495

namespace A303975

/-- `A087624(A156061(n+1)²)` -/
def P14314085575736559495.Spec : Prop :=
  ∀ n, P14314085575736559495.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P1669257388615472143

`A001221(A290104((n+1)²))`
-/

namespace A303975.P1669257388615472143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A290104 ((n + 1) ^ 2)).toNat

end

end A303975.P1669257388615472143

namespace A303975

/-- `A001221(A290104((n+1)²))` -/
def P1669257388615472143.Spec : Prop :=
  ∀ n, P1669257388615472143.a n = A303975 (n + 1)

end A303975

/-! ## A303975.P1508052089695874401

`A001221(A290106((n+1)²))`
-/

namespace A303975.P1508052089695874401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A290106 ((n + 1) ^ 2)).toNat

end

end A303975.P1508052089695874401

namespace A303975

/-- `A001221(A290106((n+1)²))` -/
def P1508052089695874401.Spec : Prop :=
  ∀ n, P1508052089695874401.a n = A303975 (n + 1)

end A303975

/-!
# A303976: Number of different aperiodic multisets that fit within some normal multiset of size n.

The programs for A303976, there is no canonical definition to state claims against.
-/

/-! ## A303976.P9212496841798479163

`A027941(n+1)-A304648(n+1)`
-/

namespace A303976.P9212496841798479163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) - A304648 (n + 1)

end

end A303976.P9212496841798479163

/-! ## A303976.P3244156802557366404

`∑[A001906(n+1)]-A304648(n+1)`
-/

namespace A303976.P3244156802557366404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A304648 (n + 1)

end

end A303976.P3244156802557366404

/-! ## A303976.P12642987055652199040

`Δ[A054452(n+1)]-A304648(n+1)`
-/

namespace A303976.P12642987055652199040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A304648 (n + 1)

end

end A303976.P12642987055652199040

/-!
# A303979: Triangle read by rows: T(n,k) is the number of cyclic unimodal permutations of length n with a peak at position k.

The programs for A303979, there is no canonical definition to state claims against.
-/

/-! ## A303979.P14224334493775739477

`floor(∑{e}[A084422(A208510(n+1)), #]/3)`
-/

namespace A303979.P14224334493775739477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 (A208510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 3⌋

end

end A303979.P14224334493775739477

/-! ## A303979.P4219637637339051233

`A161796(n+1)%A355802(n)`
-/

namespace A303979.P4219637637339051233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161796 (n + 1)) (A355802 n)

end

end A303979.P4219637637339051233

/-! ## A303979.P4400992806963994983

`A280773(n+1)%A355802(n)`
-/

namespace A303979.P4400992806963994983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280773 (n + 1)) (A355802 n)

end

end A303979.P4400992806963994983

/-! ## A303979.P15117869286834435360

`A294147(n+1)%A355802(n)`
-/

namespace A303979.P15117869286834435360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294147 (n + 1)) (A355802 n)

end

end A303979.P15117869286834435360

/-! ## A303979.P16545244107256266160

`A156784(lcm(4, 1-(n+2)²)/4)%A204026(n+1)`
-/

namespace A303979.P16545244107256266160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156784 (SequenceMachineLib.roundAway ((Int.lcm 4 (1 - ((n + 2) ^ 2 : ℤ)) : ℚ) / 4)).toNat) (A204026 (n + 1))

end

end A303979.P16545244107256266160

/-!
# A303980: a(n) is the number of cyclic permutations that admit a [1,1,-1]-gridding.

The programs for A303980, there is no canonical definition to state claims against.
-/

/-! ## A303980.P15018137379628604050

`A304201(n)-A303979(A074473(n+1))`
-/

namespace A303980.P15018137379628604050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304201 n - A303979 (A074473 (n + 1)).toNat

end

end A303980.P15018137379628604050

/-! ## A303980.P10723423226037704755

`A304201(n)-A102683(A028495(n))`
-/

namespace A303980.P10723423226037704755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304201 n - A102683 (A028495 n).toNat

end

end A303980.P10723423226037704755

/-! ## A303980.P1043698231327997659

`A304201(n)-A014029(A090977(n))`
-/

namespace A303980.P1043698231327997659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304201 n - A014029 (A090977 n).toNat

end

end A303980.P1043698231327997659

/-! ## A303980.P1528060718799268475

`A304201(n)-A343344(A193795(n))`
-/

namespace A303980.P1528060718799268475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304201 n - A343344 (A193795 n).toNat

end

end A303980.P1528060718799268475

/-! ## A303980.P12963965839608317100

`A304201(n)-A090750(A304195(n+1))`
-/

namespace A303980.P12963965839608317100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304201 n - A090750 (A304195 (n + 1)).toNat

end

end A303980.P12963965839608317100

/-!
# A303981: Coordination sequence for a node with global 8-fold symmetry in the Ammann-Beenker tiling (also known as the Standard Octagonal tiling).

The programs for A303981, there is no canonical definition to state claims against.
-/

/-! ## A303981.P361762768261166240

`A022144(A085898(n)%A141598(n+1))`
-/

namespace A303981.P361762768261166240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.tmod (A085898 n) (A141598 (n + 1))).toNat

end

end A303981.P361762768261166240

/-!
# A303986: Triangle of derivatives of the Niven polynomials evaluated at 0.

The programs for A303986, the canonical program `A303986.P14807797264890215683` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303986 has offset 0).

The definition of A303986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303986.P17698321996341989294

`A124320(n)*A293600(n+1)`
-/

namespace A303986.P17698321996341989294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 n * A293600 (n + 1)

end

end A303986.P17698321996341989294

namespace A303986

/-- `A124320(n)*A293600(n+1)` -/
def P17698321996341989294.Spec : Prop :=
  ∀ n, P17698321996341989294.a n = A303986 n

end A303986

/-! ## A303986.P14807797264890215683

`A033999(A002262(n))*A113025(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A303986

/-- `A033999(A002262(n))*A113025(n)` -/
def P14807797264890215683.Spec : Prop :=
  ∀ n, P14807797264890215683.a n = A303986 n

theorem P14807797264890215683.correct : P14807797264890215683.Spec := by
  intro n
  simp only [A303986]

end A303986

/-! ## A303986.P9130937983239005497

`A063007(n)*A133942(A002262(n))`
-/

namespace A303986.P9130937983239005497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A133942 (A002262 n).toNat

end

end A303986.P9130937983239005497

namespace A303986

/-- `A063007(n)*A133942(A002262(n))` -/
def P9130937983239005497.Spec : Prop :=
  ∀ n, P9130937983239005497.a n = A303986 n

end A303986

/-! ## A303986.P5593458183896775538

`A097807(A061579(n))*A113025(n)`
-/

namespace A303986.P5593458183896775538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A113025 n

end

end A303986.P5593458183896775538

namespace A303986

/-- `A097807(A061579(n))*A113025(n)` -/
def P5593458183896775538.Spec : Prop :=
  ∀ n, P5593458183896775538.a n = A303986 n

end A303986

/-! ## A303986.P12445195077687925270

`A033999(A294317(n))*A113025(n)`
-/

namespace A303986.P12445195077687925270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A113025 n

end

end A303986.P12445195077687925270

namespace A303986

/-- `A033999(A294317(n))*A113025(n)` -/
def P12445195077687925270.Spec : Prop :=
  ∀ n, P12445195077687925270.a n = A303986 n

end A303986

/-! ## A303986.P11002338058755641562

`A063007(n)*A133942(log2(A059268(n)))`
-/

namespace A303986.P11002338058755641562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A133942 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A303986.P11002338058755641562

namespace A303986

/-- `A063007(n)*A133942(log2(A059268(n)))` -/
def P11002338058755641562.Spec : Prop :=
  ∀ n, P11002338058755641562.a n = A303986 n

end A303986

/-! ## A303986.P12949171975124247359

`A008279(n)*A027555(A007401(n+1))`
-/

namespace A303986.P12949171975124247359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A027555 (A007401 (n + 1)).toNat

end

end A303986.P12949171975124247359

namespace A303986

/-- `A008279(n)*A027555(A007401(n+1))` -/
def P12949171975124247359.Spec : Prop :=
  ∀ n, P12949171975124247359.a n = A303986 n

end A303986

/-! ## A303986.P17823562369916209033

`A062157(A133819(n+1))*A113025(n)`
-/

namespace A303986.P17823562369916209033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A133819 (n + 1)).toNat * A113025 n

end

end A303986.P17823562369916209033

namespace A303986

/-- `A062157(A133819(n+1))*A113025(n)` -/
def P17823562369916209033.Spec : Prop :=
  ∀ n, P17823562369916209033.a n = A303986 n

end A303986

/-! ## A303986.P10778008426223581494

`A113025(n)*A209615(A059268(n))`
-/

namespace A303986.P10778008426223581494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113025 n * A209615 (A059268 n).toNat

end

end A303986.P10778008426223581494

namespace A303986

/-- `A113025(n)*A209615(A059268(n))` -/
def P10778008426223581494.Spec : Prop :=
  ∀ n, P10778008426223581494.a n = A303986 n

end A303986

/-! ## A303986.P9146655211255975215

`A020985(A043569(n+1))*A113025(n)`
-/

namespace A303986.P9146655211255975215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A043569 (n + 1)).toNat * A113025 n

end

end A303986.P9146655211255975215

namespace A303986

/-- `A020985(A043569(n+1))*A113025(n)` -/
def P9146655211255975215.Spec : Prop :=
  ∀ n, P9146655211255975215.a n = A303986 n

end A303986

/-!
# A303987: Triangle read by rows: T(n, k) = (binomial(n,k)*binomial(n+k,k))^2 = A063007(n, k)^2, for n >= 0, k = 0..n.

The programs for A303987, there is no canonical definition to state claims against.
-/

/-! ## A303987.P16139336143979389221

`(floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n-C(∑[char[∑[n]]], 2))!)²`
-/

namespace A303987.P16139336143979389221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℚ)) ^ 2

end

end A303987.P16139336143979389221

/-! ## A303987.P12564043751365504108

`(floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n-C(∑[char[∑[n]]], 2))!)^2`
-/

namespace A303987.P12564043751365504108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℚ)) ^ 2

end

end A303987.P12564043751365504108

/-! ## A303987.P17736356070215003132

`floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n-C(∑[char[∑[n]]], 2))!*floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n-C(∑[char[∑[n]]], 2))!`
-/

namespace A303987.P17736356070215003132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f13 j = n then 1 else 0

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

open Classical in
def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f16 j = n then 1 else 0

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f19 j

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f22 j

open Classical in
def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f21 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℚ) * ((⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f12 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f15 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f18 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f20 j) 2 : ℤ)).toNat : ℚ))

end

end A303987.P17736356070215003132

/-! ## A303987.P13355975681054435274

`A063007(n)²`
-/

namespace A303987.P13355975681054435274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n ^ 2

end

end A303987.P13355975681054435274

/-! ## A303987.P17067716083960317506

`A331430(n)²`
-/

namespace A303987.P17067716083960317506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331430 n ^ 2

end

end A303987.P17067716083960317506

/-!
# A303988: Triangle read by rows: numerators of c_{n,k}, n >= 0, 0 <= k <= n, used in the proof that Zeta(3) is irrational.

The programs for A303988, there is no canonical definition to state claims against.
-/

/-! ## A303988.P1619201619148832735

`A261387(∑[A198277(n)])`
-/

namespace A303988.P1619201619148832735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261387 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303988.P1619201619148832735

/-! ## A303988.P15047044002038944680

`A234808(A242985(n+1))`
-/

namespace A303988.P15047044002038944680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234808 (A242985 (n + 1)).toNat

end

end A303988.P15047044002038944680

/-!
# A303989: Triangle read by rows: denominators of c_{n,k}, n >= 0, k = 0..n, used in the proof that Zeta(3) is irrational.

The programs for A303989, there is no canonical definition to state claims against.
-/

/-! ## A303989.P927270368305077487

`∑{d}[A202304(A143549(n)), #]`
-/

namespace A303989.P927270368305077487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A143549 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A303989.P927270368305077487

/-! ## A303989.P8757962209860371438

`A102443(A052980(n)*A190660(n+2))`
-/

namespace A303989.P8757962209860371438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A052980 n * A190660 (n + 2)).toNat

end

end A303989.P8757962209860371438

/-!
# A303990: Triangle, read by rows: n^k * k^n, for n >= 1 and k = 1..n.

The programs for A303990, there is no canonical definition to state claims against.
-/

/-! ## A303990.P10399994441626358969

`A062275(A245300(comp[∑[n]]))`
-/

namespace A303990.P10399994441626358969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062275 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A303990.P10399994441626358969

/-! ## A303990.P14163090379435857019

`A075363(n+1)*A089072(n+1)`
-/

namespace A303990.P14163090379435857019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (n + 1) * A089072 (n + 1)

end

end A303990.P14163090379435857019

/-! ## A303990.P14879700107270663812

`A075363(n+1)*A076014(comp[∑[n]])`
-/

namespace A303990.P14879700107270663812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (n + 1) * A076014 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A303990.P14879700107270663812

/-! ## A303990.P9821587831333557462

`A079901(comp[∑[n]])*A089072(n+1)`
-/

namespace A303990.P9821587831333557462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A089072 (n + 1)

end

end A303990.P9821587831333557462

/-! ## A303990.P16832235083818175042

`round(sqrt(2*n+1))*A076112(n+1)*A089072(n+1)`
-/

namespace A303990.P16832235083818175042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) * A076112 (n + 1) * A089072 (n + 1)

end

end A303990.P16832235083818175042

/-!
# A303991: Row sums of triangle A303990.

The programs for A303991, there is no canonical definition to state claims against.
-/

/-! ## A303991.P166129868110837940

`A368486(∑[4*(n+1)])`
-/

namespace A303991.P166129868110837940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303991.P166129868110837940

/-!
# A303993: Numbers whose sum of divisors is the cube of one of their divisors.

The programs for A303993, there is no canonical definition to state claims against.
-/

/-! ## A303993.P7846138066529369896

`∩[A020477(n+1), A356410(n+1)]`
-/

namespace A303993.P7846138066529369896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303993.P7846138066529369896

/-!
# A303997: Number of ways to write 2*n as p + 3^k + binomial(2*m,m), where p is a prime, and k and m are nonnegative integers.

The programs for A303997, there is no canonical definition to state claims against.
-/

/-! ## A303997.P1344739830661269886

`A000120(lcm(A054429(2*n+1), A345362(n+1)))`
-/

namespace A303997.P1344739830661269886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A054429 (2 * n + 1)) (A345362 (n + 1)))

end

end A303997.P1344739830661269886

