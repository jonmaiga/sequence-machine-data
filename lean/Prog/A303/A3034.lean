import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A303401: Number of ways to write n as a*(3*a-1)/2 + b*(3*b-1)/2 + 3^c + 3^d with a,b,c,d nonnegative integers.

The programs for A303401, there is no canonical definition to state claims against.
-/

/-! ## A303401.P4013179034622692291

`A001221(A160120(n)+A054432(n+1))`
-/

namespace A303401.P4013179034622692291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160120 n + A054432 (n + 1)).toNat

end

end A303401.P4013179034622692291

/-! ## A303401.P7827508891748958140

`A349258(∑[A013597(n)]²)`
-/

namespace A303401.P7827508891748958140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A303401.P7827508891748958140

/-! ## A303401.P13416743878243519336

`A001221(A083329(n)+9*and(1, n))`
-/

namespace A303401.P13416743878243519336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083329 n + (9 * Nat.land 1 n : ℤ)).toNat

end

end A303401.P13416743878243519336

/-!
# A303403: Even numbers that are not the sum of two prime-indexed primes.

The programs for A303403, there is no canonical definition to state claims against.
-/

/-! ## A303403.P3067491286093344200

`2*A174682(1+n)`
-/

namespace A303403.P3067491286093344200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174682 (1 + n)

end

end A303403.P3067491286093344200

/-! ## A303403.P9961442578375386622

`A004277(A174682(1+n))`
-/

namespace A303403.P9961442578375386622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A174682 (1 + n)).toNat

end

end A303403.P9961442578375386622

/-! ## A303403.P14051614425661678551

`A004275(A174682(1+n)+1)`
-/

namespace A303403.P14051614425661678551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A174682 (1 + n) + 1).toNat

end

end A303403.P14051614425661678551

/-! ## A303403.P269934711679407005

`A005843(A174682(Δ[n²]-n))`
-/

namespace A303403.P269934711679407005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A174682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A303403.P269934711679407005

/-! ## A303403.P465491537719014339

`A004273(A174682(n+1)+1)-1`
-/

namespace A303403.P465491537719014339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A174682 (n + 1) + 1).toNat - 1

end

end A303403.P465491537719014339

/-! ## A303403.P18363135420134855564

`A317440(A174682(n+1)+1)-2`
-/

namespace A303403.P18363135420134855564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (A174682 (n + 1) + 1).toNat - 2

end

end A303403.P18363135420134855564

/-! ## A303403.P3889680310221935360

`A174682(A000027(n+1))+A174682(n+1)`
-/

namespace A303403.P3889680310221935360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174682 (A000027 (n + 1)).toNat + A174682 (n + 1)

end

end A303403.P3889680310221935360

/-!
# A303405: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303405, there is no canonical definition to state claims against.
-/

/-! ## A303405.P14874153334611706492

`A303410(∑[4*n]+1)`
-/

namespace A303405.P14874153334611706492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303405.P14874153334611706492

/-! ## A303405.P8889211159918563910

`record[A303410(∑[A113072(n)])]`
-/

namespace A303405.P8889211159918563910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303405.P8889211159918563910

/-! ## A303405.P13627837451857549837

`record[A303410(A330613(n+1))]`
-/

namespace A303405.P13627837451857549837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303405.P13627837451857549837

/-!
# A303406: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303406, there is no canonical definition to state claims against.
-/

/-! ## A303406.P16013535182655886902

`A303410(∑[n+3]+1)`
-/

namespace A303406.P16013535182655886902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303406.P16013535182655886902

/-! ## A303406.P2860889076734370841

`record[A303410(abs(2-∑[n]))]`
-/

namespace A303406.P2860889076734370841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303406.P2860889076734370841

/-! ## A303406.P15403351518647546341

`record[gcd(A092921(n+4), A303410(n+3))]`
-/

namespace A303406.P15403351518647546341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 (n + 4)) (A303410 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303406.P15403351518647546341

/-!
# A303407: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303407, there is no canonical definition to state claims against.
-/

/-! ## A303407.P6373631544131319924

`A303410(Δ[A264443(n)])`
-/

namespace A303407.P6373631544131319924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (f1 (n + 1) - f1 n).toNat

end

end A303407.P6373631544131319924

/-!
# A303408: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303408, there is no canonical definition to state claims against.
-/

/-! ## A303408.P8474104141091990229

`A303410(A052905(n+3))`
-/

namespace A303408.P8474104141091990229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (A052905 (n + 3)).toNat

end

end A303408.P8474104141091990229

/-!
# A303409: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303409, there is no canonical definition to state claims against.
-/

/-! ## A303409.P9212687260933280895

`A303410(A055999(n+4))`
-/

namespace A303409.P9212687260933280895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (A055999 (n + 4)).toNat

end

end A303409.P9212687260933280895

/-!
# A303410: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303410, there is no canonical definition to state claims against.
-/

/-! ## A303410.P13902421969484463024

`or(A185264(A216556(n)), A302528(n+1))`
-/

namespace A303410.P13902421969484463024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185264 (A216556 n).toNat) (A302528 (n + 1))

end

end A303410.P13902421969484463024

/-! ## A303410.P5267108706670042299

`or(A302528(n+1), A304065(A195644(n+1)))`
-/

namespace A303410.P5267108706670042299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A302528 (n + 1)) (A304065 (A195644 (n + 1)).toNat)

end

end A303410.P5267108706670042299

/-! ## A303410.P5614123558959895863

`A302528(n+1)+A046092(A185284(2*n+1))`
-/

namespace A303410.P5614123558959895863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (n + 1) + A046092 (A185284 (2 * n + 1)).toNat

end

end A303410.P5614123558959895863

/-!
# A303411: Number of 4Xn 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303411, there is no canonical definition to state claims against.
-/

/-! ## A303411.P17930862861241038218

`A303410(∑[n+3]+7)`
-/

namespace A303411.P17930862861241038218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303411.P17930862861241038218

/-!
# A303412: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303412, there is no canonical definition to state claims against.
-/

/-! ## A303412.P8879267544333142585

`A303410(C(n+2, 2)+3*n+14)`
-/

namespace A303412.P8879267544333142585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (Nat.choose (n + 2) 2 + (3 * n + 14))

end

end A303412.P8879267544333142585

/-!
# A303413: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303413, there is no canonical definition to state claims against.
-/

/-! ## A303413.P2117230946351642648

`A303410(∑[n+5]+16)`
-/

namespace A303413.P2117230946351642648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303413.P2117230946351642648

/-!
# A303414: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303414, there is no canonical definition to state claims against.
-/

/-! ## A303414.P2232927457411442125

`A303410(A167487(n+5))`
-/

namespace A303414.P2232927457411442125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303410 (A167487 (n + 5)).toNat

end

end A303414.P2232927457411442125

/-!
# A303415: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303415, there is no canonical definition to state claims against.
-/

/-! ## A303415.P16655278325163362335

`A303421(∑[4*n]+1)`
-/

namespace A303415.P16655278325163362335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303415.P16655278325163362335

/-!
# A303416: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303416, the canonical program `A303416.P7099389972717451502` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303416 has offset 1).

The definition of A303416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303416.P5158279090369130191

`ogf((4+4x+4x^2)/(1-7x-6x^2-8x^3))`
-/

namespace A303416.P5158279090369130191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 4] [1, -7, -6, -8] n

end

end A303416.P5158279090369130191

namespace A303416

/-- `ogf((4+4x+4x^2)/(1-7x-6x^2-8x^3))` -/
def P5158279090369130191.Spec : Prop :=
  ∀ n, P5158279090369130191.a n = A303416 (n + 1)

end A303416

/-! ## A303416.P7099389972717451502

`7*a(n-1)+6*a(n-2)+8*a(n-3)` with `a(0)=4, a(1)=32, a(2)=252`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A303416

/-- `7*a(n-1)+6*a(n-2)+8*a(n-3)` -/
def P7099389972717451502.Spec : Prop :=
  ∀ n, (P7099389972717451502.a n : ℤ) = A303416 (n + 1)

theorem P7099389972717451502.correct : P7099389972717451502.Spec := by
  intro n
  simp only [A303416, Nat.add_sub_cancel]

end A303416

/-! ## A303416.P6285792439617113565

`A303421(∑[n+3]+1)`
-/

namespace A303416.P6285792439617113565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303416.P6285792439617113565

namespace A303416

/-- `A303421(∑[n+3]+1)` -/
def P6285792439617113565.Spec : Prop :=
  ∀ n, P6285792439617113565.a n = A303416 (n + 1)

end A303416

/-!
# A303417: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303417, there is no canonical definition to state claims against.
-/

/-! ## A303417.P3532195521670885417

`A303421(A141214(n+1))`
-/

namespace A303417.P3532195521670885417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (A141214 (n + 1)).toNat

end

end A303417.P3532195521670885417

/-!
# A303418: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303418, there is no canonical definition to state claims against.
-/

/-! ## A303418.P18086236639526336159

`A303421(A046691(n+3))`
-/

namespace A303418.P18086236639526336159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (A046691 (n + 3)).toNat

end

end A303418.P18086236639526336159

/-!
# A303419: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303419, there is no canonical definition to state claims against.
-/

/-! ## A303419.P15451656391911823232

`A303421(A052905(n+3))`
-/

namespace A303419.P15451656391911823232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (A052905 (n + 3)).toNat

end

end A303419.P15451656391911823232

/-!
# A303420: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303420, there is no canonical definition to state claims against.
-/

/-! ## A303420.P5249672405639261721

`A303421(A055999(n+4))`
-/

namespace A303420.P5249672405639261721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (A055999 (n + 4)).toNat

end

end A303420.P5249672405639261721

/-!
# A303421: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303421, there is no canonical definition to state claims against.
-/

/-! ## A303421.P2672155072608453563

`A145342(A301784(n+1))-A066281(A321014(3*n+5))`
-/

namespace A303421.P2672155072608453563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A301784 (n + 1)).toNat - A066281 (A321014 (3 * n + 5)).toNat

end

end A303421.P2672155072608453563

/-! ## A303421.P15876583765309784621

`A145342(A302010(n+1))-A066281(A321014(3*n+5))`
-/

namespace A303421.P15876583765309784621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A302010 (n + 1)).toNat - A066281 (A321014 (3 * n + 5)).toNat

end

end A303421.P15876583765309784621

/-! ## A303421.P8848262296151780637

`A301407(n+1)-A185238(A222488(n+1))`
-/

namespace A303421.P8848262296151780637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (n + 1) - A185238 (A222488 (n + 1)).toNat

end

end A303421.P8848262296151780637

/-! ## A303421.P2504697624416296833

`A145342(A301784(n+1))-A185238(A222488(n+1))`
-/

namespace A303421.P2504697624416296833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A301784 (n + 1)).toNat - A185238 (A222488 (n + 1)).toNat

end

end A303421.P2504697624416296833

/-! ## A303421.P7201402131398540733

`A145342(A302010(n+1))-A185238(A222488(n+1))`
-/

namespace A303421.P7201402131398540733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A302010 (n + 1)).toNat - A185238 (A222488 (n + 1)).toNat

end

end A303421.P7201402131398540733

/-!
# A303422: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303422, there is no canonical definition to state claims against.
-/

/-! ## A303422.P7016318542848676293

`A303421(∑[n+2]+4)`
-/

namespace A303422.P7016318542848676293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303422.P7016318542848676293

/-!
# A303423: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303423, there is no canonical definition to state claims against.
-/

/-! ## A303423.P11419088863485352316

`A303421(∑[n+3]+7)`
-/

namespace A303423.P11419088863485352316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303423.P11419088863485352316

/-!
# A303424: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303424, there is no canonical definition to state claims against.
-/

/-! ## A303424.P5389743620466522960

`A303421(A167499(n+3))`
-/

namespace A303424.P5389743620466522960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (A167499 (n + 3)).toNat

end

end A303424.P5389743620466522960

/-!
# A303425: Number of 6 X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303425, there is no canonical definition to state claims against.
-/

/-! ## A303425.P5498793835730096221

`A303421(∑[n+1]+4*(n+5))`
-/

namespace A303425.P5498793835730096221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (∑ j ∈ Finset.range (n + 1), f1 j + 4 * (n + 5))

end

end A303425.P5498793835730096221

/-!
# A303426: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303426, there is no canonical definition to state claims against.
-/

/-! ## A303426.P17644053209887566020

`A303421(A056119(n)+28)`
-/

namespace A303426.P17644053209887566020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (A056119 n + 28).toNat

end

end A303426.P17644053209887566020

/-!
# A303427: Interleaved Lucas and Fibonacci numbers.

The programs for A303427, the canonical program `A303427.P18184235038652700757` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303427 has offset 0).

The definition of A303427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303427.P10006960908171955196

`ogf((2-x^2+x^3)/(1-x^2-x^4))`
-/

namespace A303427.P10006960908171955196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, 1] [1, 0, -1, 0, -1] n

end

end A303427.P10006960908171955196

namespace A303427

/-- `ogf((2-x^2+x^3)/(1-x^2-x^4))` -/
def P10006960908171955196.Spec : Prop :=
  ∀ n, P10006960908171955196.a n = A303427 n

end A303427

/-! ## A303427.P18184235038652700757

`a(n-2)+a(n-4)` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A303427

/-- `a(n-2)+a(n-4)` -/
def P18184235038652700757.Spec : Prop :=
  ∀ n, (P18184235038652700757.a n : ℤ) = A303427 n

theorem P18184235038652700757.correct : P18184235038652700757.Spec := by
  intro n
  simp only [A303427]

end A303427

/-! ## A303427.P5931319133038597119

`A302126(xor(1, n))`
-/

namespace A303427.P5931319133038597119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (Nat.xor 1 n)

end

end A303427.P5931319133038597119

namespace A303427

/-- `A302126(xor(1, n))` -/
def P5931319133038597119.Spec : Prop :=
  ∀ n, P5931319133038597119.a n = A303427 n

end A303427

/-! ## A303427.P3864291240319704600

`A103609(n+1)+Δ[A302126(n)]`
-/

namespace A303427.P3864291240319704600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 1) + (f1 (n + 1) - f1 n)

end

end A303427.P3864291240319704600

namespace A303427

/-- `A103609(n+1)+Δ[A302126(n)]` -/
def P3864291240319704600.Spec : Prop :=
  ∀ n, P3864291240319704600.a n = A303427 n

end A303427

/-! ## A303427.P1588103794719593239

`A103609(n)+Δ[A214927(n+3)]`
-/

namespace A303427.P1588103794719593239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + (f1 (n + 1) - f1 n)

end

end A303427.P1588103794719593239

namespace A303427

/-- `A103609(n)+Δ[A214927(n+3)]` -/
def P1588103794719593239.Spec : Prop :=
  ∀ n, P1588103794719593239.a n = A303427 n

end A303427

/-! ## A303427.P13982939173960462135

`2*A103609(A165754(n))-A103609(n)`
-/

namespace A303427.P13982939173960462135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (A165754 n).toNat - A103609 n

end

end A303427.P13982939173960462135

namespace A303427

/-- `2*A103609(A165754(n))-A103609(n)` -/
def P13982939173960462135.Spec : Prop :=
  ∀ n, P13982939173960462135.a n = A303427 n

end A303427

/-! ## A303427.P6381204713863361420

`2*A103609(A065168(n+1))-A103609(n)`
-/

namespace A303427.P6381204713863361420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (A065168 (n + 1)).toNat - A103609 n

end

end A303427.P6381204713863361420

namespace A303427

/-- `2*A103609(A065168(n+1))-A103609(n)` -/
def P6381204713863361420.Spec : Prop :=
  ∀ n, P6381204713863361420.a n = A303427 n

end A303427

/-! ## A303427.P124157262032655955

`2*A103609(A067060(n+1))-A103609(n)`
-/

namespace A303427.P124157262032655955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (A067060 (n + 1)).toNat - A103609 n

end

end A303427.P124157262032655955

namespace A303427

/-- `2*A103609(A067060(n+1))-A103609(n)` -/
def P124157262032655955.Spec : Prop :=
  ∀ n, P124157262032655955.a n = A303427 n

end A303427

/-! ## A303427.P2302559249293850408

`2*A103609(A103889(n+1))-A103609(n)`
-/

namespace A303427.P2302559249293850408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (A103889 (n + 1)).toNat - A103609 n

end

end A303427.P2302559249293850408

namespace A303427

/-- `2*A103609(A103889(n+1))-A103609(n)` -/
def P2302559249293850408.Spec : Prop :=
  ∀ n, P2302559249293850408.a n = A303427 n

end A303427

/-! ## A303427.P10704999597857533306

`2*A103609(A168232(n+1))-A103609(n)`
-/

namespace A303427.P10704999597857533306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103609 (A168232 (n + 1)).toNat - A103609 n

end

end A303427.P10704999597857533306

namespace A303427

/-- `2*A103609(A168232(n+1))-A103609(n)` -/
def P10704999597857533306.Spec : Prop :=
  ∀ n, P10704999597857533306.a n = A303427 n

end A303427

/-! ## A303427.P7953511805916983133

`A096748(n+1)+A079977(n)-A096748(n)`
-/

namespace A303427.P7953511805916983133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (n + 1) + (A079977 n - A096748 n)

end

end A303427.P7953511805916983133

namespace A303427

/-- `A096748(n+1)+A079977(n)-A096748(n)` -/
def P7953511805916983133.Spec : Prop :=
  ∀ n, P7953511805916983133.a n = A303427 n

end A303427

/-! ## A303427.P419041147692793079

`A090888(A101881(n))`
-/

namespace A303427.P419041147692793079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090888 (A101881 n).toNat

end

end A303427.P419041147692793079

namespace A303427

/-- `A090888(A101881(n))` -/
def P419041147692793079.Spec : Prop :=
  ∀ n, P419041147692793079.a n = A303427 n

end A303427

/-!
# A303428: Number of ways to write n as x*(3*x-2) + y*(3*y-2) + 3^u + 3^v, where x,y,u,v are integers with x <= y and 0 <= u <= v.

The programs for A303428, there is no canonical definition to state claims against.
-/

/-! ## A303428.P7361427941826594305

`A001222(or(A169819(n+1), A279504(n)))`
-/

namespace A303428.P7361427941826594305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A169819 (n + 1)) (A279504 n)).toNat

end

end A303428.P7361427941826594305

/-! ## A303428.P17462966200576358241

`A001222(lcm(n, A164390(n))+1)`
-/

namespace A303428.P17462966200576358241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (n : ℤ) (A164390 n) + 1)

end

end A303428.P17462966200576358241

/-! ## A303428.P13795159782285309344

`A033264(A342892(n)+A000695(n)²)`
-/

namespace A303428.P13795159782285309344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A342892 n + A000695 n ^ 2).toNat

end

end A303428.P13795159782285309344

/-! ## A303428.P3747977910789384073

`A001221(A001045(A322942(n))+A000975(n))`
-/

namespace A303428.P3747977910789384073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001045 (A322942 n).toNat + A000975 n).toNat

end

end A303428.P3747977910789384073

/-!
# A303429: Number of ordered pairs (k, m) of nonnegative integers such that n - 3^k - 5^m can be written as the sum of two squares.

The programs for A303429, there is no canonical definition to state claims against.
-/

/-! ## A303429.P3844653812605686638

`A245092(A303656(n+1))`
-/

namespace A303429.P3844653812605686638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A303656 (n + 1)).toNat

end

end A303429.P3844653812605686638

/-! ## A303429.P14629952062733496114

`A004218(6^A303656(n+1))`
-/

namespace A303429.P14629952062733496114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A303656 (n + 1) : ℤ))).toNat

end

end A303429.P14629952062733496114

/-! ## A303429.P12180561650768816790

`A339895(8^A303656(n+1))`
-/

namespace A303429.P12180561650768816790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A303656 (n + 1) : ℤ))).toNat

end

end A303429.P12180561650768816790

/-! ## A303429.P15202590709946140806

`A001221(A000108(2*A303656(n+1)))`
-/

namespace A303429.P15202590709946140806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000108 (2 * A303656 (n + 1)).toNat).toNat

end

end A303429.P15202590709946140806

/-!
# A303430: Number of binary words of length n with exactly twice as many occurrences of subword 101 as occurrences of subword 010.

The programs for A303430, there is no canonical definition to state claims against.
-/

/-! ## A303430.P515531514342483041

`A303696(∑[n+3])`
-/

namespace A303430.P515531514342483041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303430.P515531514342483041

/-! ## A303430.P3286970111963879490

`record[A303696(A027379(A028242(n)))]`
-/

namespace A303430.P3286970111963879490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303430.P3286970111963879490

/-! ## A303430.P8818394060709844467

`record[A303696(A027379(A110657(n)))]`
-/

namespace A303430.P8818394060709844467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (A027379 (A110657 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303430.P8818394060709844467

/-! ## A303430.P8176387335239069254

`record[A303696(A027379(A110659(n)))]`
-/

namespace A303430.P8176387335239069254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (A027379 (A110659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303430.P8176387335239069254

/-! ## A303430.P5237161466801429034

`record[A303696(A027379(A134478(n)))]`
-/

namespace A303430.P5237161466801429034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (A027379 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303430.P5237161466801429034

/-! ## A303430.P7364774726107640005

`record[A303696(A055998(A175126(n)))]`
-/

namespace A303430.P7364774726107640005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303696 (A055998 (A175126 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303430.P7364774726107640005

/-!
# A303431: Aperiodic tree numbers. Matula-Goebel numbers of aperiodic rooted trees.

The programs for A303431, there is no canonical definition to state claims against.
-/

/-! ## A303431.P6097552239431011586

`A317709(n+1)-A154557(A006983(n+1))`
-/

namespace A303431.P6097552239431011586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1) - A154557 (A006983 (n + 1)).toNat

end

end A303431.P6097552239431011586

/-! ## A303431.P3840872564909812256

`A317709(n+1)-A185264(A326628(n))`
-/

namespace A303431.P3840872564909812256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1) - A185264 (A326628 n).toNat

end

end A303431.P3840872564909812256

/-! ## A303431.P17669879322809443877

`A317709(n+1)-A185284(A318611(n+1))`
-/

namespace A303431.P17669879322809443877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1) - A185284 (A318611 (n + 1)).toNat

end

end A303431.P17669879322809443877

/-! ## A303431.P2928782575674130725

`A317709(n+1)-∑[A105700(A034473(2*(n+2)))]`
-/

namespace A303431.P2928782575674130725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A034473 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303431.P2928782575674130725

/-! ## A303431.P8036989301184404792

`A317709(n+1)-A036987(A317709(3*n+2))`
-/

namespace A303431.P8036989301184404792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 (n + 1) - A036987 (A317709 (3 * n + 2)).toNat

end

end A303431.P8036989301184404792

/-!
# A303433: "Wondrous representation" [right to left] of positive integer n, n >= 2.

The programs for A303433, there is no canonical definition to state claims against.
-/

/-! ## A303433.P9446959398973922342

`A007931(A125711(n+2)-1)`
-/

namespace A303433.P9446959398973922342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A125711 (n + 2) - 1).toNat

end

end A303433.P9446959398973922342

/-!
# A303435: Numbers n such that uphi(n) (the unitary totient function A047994) is a power of the number of unitary divisors of n (A034444).

The programs for A303435, there is no canonical definition to state claims against.
-/

/-! ## A303435.P14104995651264960574

`record[A320266(3*(n+1))-A320311(n+1)]`
-/

namespace A303435.P14104995651264960574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (3 * (n + 1)) - A320311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303435.P14104995651264960574

/-! ## A303435.P17936085433619347490

`A048715(n)+A007953(A361675(n))`
-/

namespace A303435.P17936085433619347490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n + A007953 (A361675 n).toNat

end

end A303435.P17936085433619347490

/-! ## A303435.P17015082615828992438

`record[A309286(n)+A072376(A089646(n+1))]`
-/

namespace A303435.P17015082615828992438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309286 n + A072376 (A089646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303435.P17015082615828992438

/-! ## A303435.P7659947462578151666

`A056556(∪[A037093(2*n+3), A016127(n)])`
-/

namespace A303435.P7659947462578151666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037093 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016127 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A303435.P7659947462578151666

/-!
# A303436: Primes p such that all the composite numbers between p and its next prime have no more than 2 distinct prime factors.

The programs for A303436, there is no canonical definition to state claims against.
-/

/-! ## A303436.P5479388563690905205

`A139637(A077500(n+2))`
-/

namespace A303436.P5479388563690905205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A077500 (n + 2)).toNat

end

end A303436.P5479388563690905205

/-!
# A303437: Sum-prime (SP) numbers: numbers k that are not divisible by 4 such that (a + b)/gcd(k+1, 4) is prime for every factorization k = a*b.

The programs for A303437, there is no canonical definition to state claims against.
-/

/-! ## A303437.P12026535079661037483

`lt[A171664(n+1), A151726(A173562(n))]`
-/

namespace A303437.P12026535079661037483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 (A173562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303437.P12026535079661037483

/-! ## A303437.P2466140944488952426

`record[A151962(A047010(n+3))+A113881(2*n+5)]`
-/

namespace A303437.P2466140944488952426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (A047010 (n + 3)).toNat + A113881 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303437.P2466140944488952426

/-!
# A303438: Expansion of Product_{k>=1} ((1 + 2^k*x^k)/(1 - 2^k*x^k))^(1/2^k).

The programs for A303438, there is no canonical definition to state claims against.
-/

/-! ## A303438.P3970797650926238448

`A006843(A087208(n))+A000225(n)`
-/

namespace A303438.P3970797650926238448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A087208 n).toNat + A000225 n

end

end A303438.P3970797650926238448

/-! ## A303438.P9248801129919913750

`A349177(A011782(n))+A347232(n)`
-/

namespace A303438.P9248801129919913750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (A011782 n).toNat + A347232 n

end

end A303438.P9248801129919913750

/-! ## A303438.P6238593345694898103

`A082447(A337262(n))-A325325(n)`
-/

namespace A303438.P6238593345694898103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A337262 n).toNat - A325325 n

end

end A303438.P6238593345694898103

/-! ## A303438.P12122104495349083349

`A197049(n)+A115346(A309210(n+1))`
-/

namespace A303438.P12122104495349083349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197049 n + A115346 (A309210 (n + 1)).toNat

end

end A303438.P12122104495349083349

/-!
# A303440: Expansion of Product_{k>=1} ((1 + (2^k*x)^k)/(1 - (2^k*x)^k))^(1/2^k).

The programs for A303440, there is no canonical definition to state claims against.
-/

/-! ## A303440.P3288571116225655896

`∑[A270804(A000307(n))]`
-/

namespace A303440.P3288571116225655896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 (A000307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303440.P3288571116225655896

/-!
# A303449: Denominator of (2*n+1)/(2^(2*n+1)-1).

The programs for A303449, the canonical program `A303449.P9379731540711879324` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303449 has offset 0).

The definition of A303449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303449.P8230921118500275393

`(2*4^n-1)/gcd(2*4^n-1, Δ[n²]-char[1])`
-/

namespace A303449.P8230921118500275393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 4 ^ n : ℤ) - 1 : ℚ) / (Int.gcd ((2 * 4 ^ n : ℤ) - 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) : ℚ)

end

end A303449.P8230921118500275393

namespace A303449

/-- `(2*4^n-1)/gcd(2*4^n-1, Δ[n²]-char[1])` -/
def P8230921118500275393.Spec : Prop :=
  ∀ n, P8230921118500275393.a n = (A303449 n : ℚ)

end A303449

/-! ## A303449.P9379731540711879324

`A090633(Δ[n²])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A303449

/-- `A090633(Δ[n²])` -/
def P9379731540711879324.Spec : Prop :=
  ∀ n, P9379731540711879324.a n = A303449 n

theorem P9379731540711879324.correct : P9379731540711879324.Spec := by
  intro n
  simp only [A303449]

end A303449

/-! ## A303449.P9010226501567871571

`∏{d}[Δ[n²], A064078(#)]`
-/

namespace A303449.P9010226501567871571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A064078 d

end

end A303449.P9010226501567871571

namespace A303449

/-- `∏{d}[Δ[n²], A064078(#)]` -/
def P9010226501567871571.Spec : Prop :=
  ∀ n, P9010226501567871571.a n = A303449 n

end A303449

/-! ## A303449.P16524306593443361486

`A083420(n)/A014491(2*n+1)`
-/

namespace A303449.P16524306593443361486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083420 n : ℚ) / (A014491 (2 * n + 1) : ℚ)

end

end A303449.P16524306593443361486

namespace A303449

/-- `A083420(n)/A014491(2*n+1)` -/
def P16524306593443361486.Spec : Prop :=
  ∀ n, P16524306593443361486.a n = (A303449 n : ℚ)

end A303449

/-! ## A303449.P3767681176814518012

`A126646(2*n)/A014491(2*n+1)`
-/

namespace A303449.P3767681176814518012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (2 * n) : ℚ) / (A014491 (2 * n + 1) : ℚ)

end

end A303449.P3767681176814518012

namespace A303449

/-- `A126646(2*n)/A014491(2*n+1)` -/
def P3767681176814518012.Spec : Prop :=
  ∀ n, P3767681176814518012.a n = (A303449 n : ℚ)

end A303449

/-! ## A303449.P6258678877942935198

`lcm(A069112(2*n+1), A116419(2*n))`
-/

namespace A303449.P6258678877942935198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069112 (2 * n + 1)) (A116419 (2 * n))

end

end A303449.P6258678877942935198

namespace A303449

/-- `lcm(A069112(2*n+1), A116419(2*n))` -/
def P6258678877942935198.Spec : Prop :=
  ∀ n, (P6258678877942935198.a n : ℤ) = A303449 n

end A303449

/-! ## A303449.P12053188407952799045

`A000225(2*n+1)/A014491(2*n+1)`
-/

namespace A303449.P12053188407952799045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (2 * n + 1) : ℚ) / (A014491 (2 * n + 1) : ℚ)

end

end A303449.P12053188407952799045

namespace A303449

/-- `A000225(2*n+1)/A014491(2*n+1)` -/
def P12053188407952799045.Spec : Prop :=
  ∀ n, P12053188407952799045.a n = (A303449 n : ℚ)

end A303449

/-!
# A303450: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303450, there is no canonical definition to state claims against.
-/

/-! ## A303450.P8913022633603197143

`A303456(∑[4*n]+1)`
-/

namespace A303450.P8913022633603197143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303450.P8913022633603197143

/-! ## A303450.P13488756015591602678

`record[A303456(A001844(col(n)))]`
-/

namespace A303450.P13488756015591602678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (A001844 (SequenceMachineLib.triCol n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303450.P13488756015591602678

/-!
# A303451: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303451, there is no canonical definition to state claims against.
-/

/-! ## A303451.P83651988912670510

`A303456(∑[n+3]+1)`
-/

namespace A303451.P83651988912670510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303451.P83651988912670510

/-!
# A303452: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303452, there is no canonical definition to state claims against.
-/

/-! ## A303452.P11047521608043520127

`A303456(A141214(n+1))`
-/

namespace A303452.P11047521608043520127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (A141214 (n + 1)).toNat

end

end A303452.P11047521608043520127

/-!
# A303453: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303453, there is no canonical definition to state claims against.
-/

/-! ## A303453.P8459394087359810260

`A303456(Δ[A264443(n)])`
-/

namespace A303453.P8459394087359810260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (f1 (n + 1) - f1 n).toNat

end

end A303453.P8459394087359810260

/-!
# A303454: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303454, there is no canonical definition to state claims against.
-/

/-! ## A303454.P15945501687018901470

`A303456(A052905(n+3))`
-/

namespace A303454.P15945501687018901470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (A052905 (n + 3)).toNat

end

end A303454.P15945501687018901470

/-!
# A303455: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303455, there is no canonical definition to state claims against.
-/

/-! ## A303455.P10457173755745930157

`A303456(A055999(n+4))`
-/

namespace A303455.P10457173755745930157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (A055999 (n + 4)).toNat

end

end A303455.P10457173755745930157

/-!
# A303456: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303456, there is no canonical definition to state claims against.
-/

/-! ## A303456.P5922012265010847822

`A301443(n+1)`
-/

namespace A303456.P5922012265010847822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301443 (n + 1)

end

end A303456.P5922012265010847822

/-!
# A303457: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303457, there is no canonical definition to state claims against.
-/

/-! ## A303457.P10733673482874185594

`A303456(∑[n+2]+4)`
-/

namespace A303457.P10733673482874185594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303457.P10733673482874185594

/-!
# A303458: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303458, there is no canonical definition to state claims against.
-/

/-! ## A303458.P13374169786974954853

`A303456(A141214(n)+7)`
-/

namespace A303458.P13374169786974954853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (A141214 n + 7).toNat

end

end A303458.P13374169786974954853

/-!
# A303459: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303459, there is no canonical definition to state claims against.
-/

/-! ## A303459.P2595331394200423772

`A303456(∑[n+4]+11)`
-/

namespace A303459.P2595331394200423772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303459.P2595331394200423772

/-!
# A303460: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303460, there is no canonical definition to state claims against.
-/

/-! ## A303460.P18241479174732418716

`A303456(A056115(n)+21)`
-/

namespace A303460.P18241479174732418716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (A056115 n + 21).toNat

end

end A303460.P18241479174732418716

/-!
# A303461: Number of 7 X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303461, there is no canonical definition to state claims against.
-/

/-! ## A303461.P16788545272138175197

`A303456(A167487(n+5))`
-/

namespace A303461.P16788545272138175197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303456 (A167487 (n + 5)).toNat

end

end A303461.P16788545272138175197

/-!
# A303462: Lexicographically earliest sequence of distinct terms such that the digits succession stays the same if every second digit among all sequence terms is erased.

The programs for A303462, there is no canonical definition to state claims against.
-/

/-! ## A303462.P7190429932125875294

`gcd(A007926(A007902(2*(n+1))), A007927(2*n+1))`
-/

namespace A303462.P7190429932125875294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007926 (A007902 (2 * (n + 1))).toNat) (A007927 (2 * n + 1))

end

end A303462.P7190429932125875294

/-!
# A303463: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303463, there is no canonical definition to state claims against.
-/

/-! ## A303463.P17429270111057175801

`A303469(∑[4*n]+1)`
-/

namespace A303463.P17429270111057175801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303463.P17429270111057175801

/-! ## A303463.P17368286657762486942

`record[A003982(n)*A303469(n+1)]`
-/

namespace A303463.P17368286657762486942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A303469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303463.P17368286657762486942

/-! ## A303463.P10079916619781069123

`record[gcd(A008482(n), A303469(n+1))]`
-/

namespace A303463.P10079916619781069123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A303469 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303463.P10079916619781069123

/-!
# A303464: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303464, there is no canonical definition to state claims against.
-/

/-! ## A303464.P6793069601953952621

`A303469(∑[n+3]+1)`
-/

namespace A303464.P6793069601953952621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303464.P6793069601953952621

/-!
# A303465: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303465, there is no canonical definition to state claims against.
-/

/-! ## A303465.P2323781045628440743

`A303469(A141214(n+1))`
-/

namespace A303465.P2323781045628440743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (A141214 (n + 1)).toNat

end

end A303465.P2323781045628440743

/-!
# A303466: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303466, there is no canonical definition to state claims against.
-/

/-! ## A303466.P12830964918387100835

`A303469(Δ[A264443(n)])`
-/

namespace A303466.P12830964918387100835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (f1 (n + 1) - f1 n).toNat

end

end A303466.P12830964918387100835

/-!
# A303467: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303467, there is no canonical definition to state claims against.
-/

/-! ## A303467.P421243918586933849

`A303469(A052905(n+3))`
-/

namespace A303467.P421243918586933849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (A052905 (n + 3)).toNat

end

end A303467.P421243918586933849

/-!
# A303468: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303468, there is no canonical definition to state claims against.
-/

/-! ## A303468.P5634025468847197845

`A303469(A055999(n+4))`
-/

namespace A303468.P5634025468847197845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (A055999 (n + 4)).toNat

end

end A303468.P5634025468847197845

/-!
# A303469: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303469, there is no canonical definition to state claims against.
-/

/-! ## A303469.P9762676440688715537

`A302808(n+1)+A011731(A022171(n))`
-/

namespace A303469.P9762676440688715537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (n + 1) + A011731 (A022171 n).toNat

end

end A303469.P9762676440688715537

/-! ## A303469.P1946835393772463622

`A302808(n+1)+A025465(A018791(n))`
-/

namespace A303469.P1946835393772463622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (n + 1) + A025465 (A018791 n).toNat

end

end A303469.P1946835393772463622

/-! ## A303469.P17136514526582547067

`A302808(n+1)+A025465(A022345(n))`
-/

namespace A303469.P17136514526582547067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (n + 1) + A025465 (A022345 n).toNat

end

end A303469.P17136514526582547067

/-! ## A303469.P9418151668472790240

`A318950(A008459(n))+A302808(n+1)`
-/

namespace A303469.P9418151668472790240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A008459 n).toNat + A302808 (n + 1)

end

end A303469.P9418151668472790240

/-! ## A303469.P5028685590080696906

`A302808(n+1)+A045701(A309807(n))`
-/

namespace A303469.P5028685590080696906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (n + 1) + A045701 (A309807 n).toNat

end

end A303469.P5028685590080696906

/-!
# A303470: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303470, there is no canonical definition to state claims against.
-/

/-! ## A303470.P8550732639446194290

`A303469(∑[n+2]+4)`
-/

namespace A303470.P8550732639446194290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303470.P8550732639446194290

/-!
# A303471: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303471, there is no canonical definition to state claims against.
-/

/-! ## A303471.P8853844140424099758

`A303469(A141214(n)+7)`
-/

namespace A303471.P8853844140424099758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (A141214 n + 7).toNat

end

end A303471.P8853844140424099758

/-!
# A303472: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303472, there is no canonical definition to state claims against.
-/

/-! ## A303472.P15341442604586980840

`A303469(A167499(n+3))`
-/

namespace A303472.P15341442604586980840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (A167499 (n + 3)).toNat

end

end A303472.P15341442604586980840

/-!
# A303473: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303473, there is no canonical definition to state claims against.
-/

/-! ## A303473.P7615959513544428059

`A303469(A056115(n)+21)`
-/

namespace A303473.P7615959513544428059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (A056115 n + 21).toNat

end

end A303473.P7615959513544428059

/-!
# A303474: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303474, there is no canonical definition to state claims against.
-/

/-! ## A303474.P6128568390884930035

`A303469(A167487(n+5))`
-/

namespace A303474.P6128568390884930035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (A167487 (n + 5)).toNat

end

end A303474.P6128568390884930035

/-!
# A303476: Square array T(n, k) read by antidiagonals, n > 0 and k > 0: T(n, k) is the number of distinct shuffles of the words corresponding to the binary representations of n and of k.

The programs for A303476, there is no canonical definition to state claims against.
-/

/-! ## A303476.P5976154803580190855

`A297037(A110769(A184548(n+1)))`
-/

namespace A303476.P5976154803580190855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A110769 (A184548 (n + 1)).toNat).toNat

end

end A303476.P5976154803580190855

/-! ## A303476.P2093253993439949719

`A367858(A196696(n+1))`
-/

namespace A303476.P2093253993439949719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367858 (A196696 (n + 1)).toNat

end

end A303476.P2093253993439949719

/-! ## A303476.P11622727731857963841

`A349258(A184467(n+1)-1)`
-/

namespace A303476.P11622727731857963841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (A184467 (n + 1) - 1).toNat

end

end A303476.P11622727731857963841

/-! ## A303476.P4044446418262779503

`A339351(A074911(n+1))`
-/

namespace A303476.P4044446418262779503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339351 (A074911 (n + 1)).toNat

end

end A303476.P4044446418262779503

/-!
# A303477: Number of self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restrictions that (0,1) and (1,-1) are never used above the diagonal and (1,0) and (-1,1) are never used below the diagonal and (1,1) can only be used below the diagonal.

The programs for A303477, there is no canonical definition to state claims against.
-/

/-! ## A303477.P7043039402035782909

`A023055(A222589(n))`
-/

namespace A303477.P7043039402035782909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023055 (A222589 n).toNat

end

end A303477.P7043039402035782909

/-! ## A303477.P7663289563371050023

`A129700(n+1)+A054899(A002450(n))`
-/

namespace A303477.P7663289563371050023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129700 (n + 1) + A054899 (A002450 n).toNat

end

end A303477.P7663289563371050023

/-! ## A303477.P3756020754960243923

`A119269(2*n+5)+A002265(A119254(n))`
-/

namespace A303477.P3756020754960243923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (2 * n + 5) + A002265 (A119254 n).toNat

end

end A303477.P3756020754960243923

/-!
# A303478: Total number of nodes summed over all self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) with the restrictions that (0,1) and (1,-1) are never used above the diagonal and (1,0) and (-1,1) are never used below the diagonal and (1,1) can only be used below the diagonal.

The programs for A303478, there is no canonical definition to state claims against.
-/

/-! ## A303478.P2415072867924976852

`Δ[A007866(n+1)-A360783(n+1)]`
-/

namespace A303478.P2415072867924976852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007866 (n + 1) - A360783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303478.P2415072867924976852

/-! ## A303478.P16048973299133712954

`A007897(A189886(n+1))+3^n-2^n-n*2^(n-1)`
-/

namespace A303478.P16048973299133712954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007897 (A189886 (n + 1)).toNat : ℚ) + (((3 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) - (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A303478.P16048973299133712954

/-!
# A303479: Total volume of the family of rectangular prisms with dimensions p, q, and |q - p| where p divides q, n = p + q and p < q.

The programs for A303479, the canonical program `A303479.P8152554123791237719` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303479 has offset 1).

The definition of A303479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303479.P8152554123791237719

`A303481(n+1)-2*A303973(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A303479

/-- `A303481(n+1)-2*A303973(n+1)` -/
def P8152554123791237719.Spec : Prop :=
  ∀ n, P8152554123791237719.a n = A303479 (n + 1)

theorem P8152554123791237719.correct : P8152554123791237719.Spec := by
  intro n
  simp only [A303479, Nat.add_sub_cancel]

end A303479

/-! ## A303479.P13617892558399813710

`A303481(n+1)-A005843(A303973(n+1))`
-/

namespace A303479.P13617892558399813710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303481 (n + 1) - A005843 (A303973 (n + 1)).toNat

end

end A303479.P13617892558399813710

namespace A303479

/-- `A303481(n+1)-A005843(A303973(n+1))` -/
def P13617892558399813710.Spec : Prop :=
  ∀ n, P13617892558399813710.a n = A303479 (n + 1)

end A303479

/-! ## A303479.P9058843228192225310

`(n+1)*A303385(n+1)-A005843(A303973(n+1))`
-/

namespace A303479.P9058843228192225310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303385 (n + 1) - A005843 (A303973 (n + 1)).toNat

end

end A303479.P9058843228192225310

namespace A303479

/-- `(n+1)*A303385(n+1)-A005843(A303973(n+1))` -/
def P9058843228192225310.Spec : Prop :=
  ∀ n, P9058843228192225310.a n = A303479 (n + 1)

end A303479

/-! ## A303479.P12831978703314494384

`(n+1)*(A303384(n+1)-A142150(n+1)²)-A005843(A303973(n+1))`
-/

namespace A303479.P12831978703314494384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A303384 (n + 1) - A142150 (n + 1) ^ 2) - A005843 (A303973 (n + 1)).toNat

end

end A303479.P12831978703314494384

namespace A303479

/-- `(n+1)*(A303384(n+1)-A142150(n+1)²)-A005843(A303973(n+1))` -/
def P12831978703314494384.Spec : Prop :=
  ∀ n, P12831978703314494384.a n = A303479 (n + 1)

end A303479

/-!
# A303480: Numbers k such that the average of squarefree kernels of all positive integers <= k is an integer.

The programs for A303480, there is no canonical definition to state claims against.
-/

/-! ## A303480.P6934155895728166270

`record[gcd(A028233(n+1), A073355(n+1))]`
-/

namespace A303480.P6934155895728166270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028233 (n + 1)) (A073355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303480.P6934155895728166270

/-! ## A303480.P1175595380440577207

`A330474(n)+A007359(A049417(3*n+1))`
-/

namespace A303480.P1175595380440577207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330474 n + A007359 (A049417 (3 * n + 1)).toNat

end

end A303480.P1175595380440577207

/-!
# A303481: Total volume of the family of rectangular prisms with dimensions p, q and p + q where p divides q, n = p + q and p < q.

The programs for A303481, the canonical program `A303481.P903145872744022410` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303481 has offset 1).

The definition of A303481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303385, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303481.P903145872744022410

`(n+1)*A303385(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A303481

/-- `(n+1)*A303385(n+1)` -/
def P903145872744022410.Spec : Prop :=
  ∀ n, P903145872744022410.a n = A303481 (n + 1)

theorem P903145872744022410.correct : P903145872744022410.Spec := by
  intro n
  simp only [A303481, Nat.add_sub_cancel]

end A303481

/-! ## A303481.P3181082939015148370

`A303479(n+1)+2*A303973(n+1)`
-/

namespace A303481.P3181082939015148370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303479 (n + 1) + 2 * A303973 (n + 1)

end

end A303481.P3181082939015148370

namespace A303481

/-- `A303479(n+1)+2*A303973(n+1)` -/
def P3181082939015148370.Spec : Prop :=
  ∀ n, P3181082939015148370.a n = A303481 (n + 1)

theorem P3181082939015148370.correct : P3181082939015148370.Spec := by
  intro n
  simp only [A303481, Nat.add_sub_cancel, A303481.P3181082939015148370.a, A303481.P903145872744022410.a, A303385, A303385.P10215678749723591520.f1, A303385.P10215678749723591520.a, A303479, A303479.P8152554123791237719.a, A303973, A303973.P17946534861844191776.f1, A303973.P17946534861844191776.a, A001057, A001057.P5698194758103254717.a, A053191, A053191.P11924660880443654901.a, A303384, A303384.P10676162683554511722.a, A000010, A000010.P4673923239450215316.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A064987, A064987.P14181610018234257040.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A303481

/-! ## A303481.P10351199870897691214

`abs(xor(n, -1)*A303385(A005408(n)-n))`
-/

namespace A303481.P10351199870897691214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A303385 (A005408 n - (n : ℤ)).toNat|

end

end A303481.P10351199870897691214

namespace A303481

/-- `abs(xor(n, -1)*A303385(A005408(n)-n))` -/
def P10351199870897691214.Spec : Prop :=
  ∀ n, P10351199870897691214.a n = A303481 (n + 1)

end A303481

/-! ## A303481.P16066751097870616087

`(n+1)*(A303384(n+1)-∑[A001057(n)]²)`
-/

namespace A303481.P16066751097870616087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A303384 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A303481.P16066751097870616087

namespace A303481

/-- `(n+1)*(A303384(n+1)-∑[A001057(n)]²)` -/
def P16066751097870616087.Spec : Prop :=
  ∀ n, P16066751097870616087.a n = A303481 (n + 1)

end A303481

/-! ## A303481.P7613650864860340943

`(n+1)*(A303384(n+1)-A142150(n+1)²)`
-/

namespace A303481.P7613650864860340943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A303384 (n + 1) - A142150 (n + 1) ^ 2)

end

end A303481.P7613650864860340943

namespace A303481

/-- `(n+1)*(A303384(n+1)-A142150(n+1)²)` -/
def P7613650864860340943.Spec : Prop :=
  ∀ n, P7613650864860340943.a n = A303481 (n + 1)

end A303481

/-!
# A303483: a(n) = [x^n] Product_{k=1..n} ((1 + x^k)/(1 - x^k))^(n-k+1).

The programs for A303483, there is no canonical definition to state claims against.
-/

/-! ## A303483.P11634712227701692338

`A214048(A000522(n)-A200522(n))`
-/

namespace A303483.P11634712227701692338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214048 (A000522 n - A200522 n).toNat

end

end A303483.P11634712227701692338

/-! ## A303483.P4074988053519669643

`A122797(A245269(n+1)*A245311(n))`
-/

namespace A303483.P4074988053519669643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A245269 (n + 1) * A245311 n).toNat

end

end A303483.P4074988053519669643

/-!
# A303484: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals: A(n,k) = [x^(n^3)] (1/(1 - x))*(Sum_{j>=0} x^(j^3))^k.

The programs for A303484, there is no canonical definition to state claims against.
-/

/-! ## A303484.P8271481917420831202

`A299703(A302998(n))`
-/

namespace A303484.P8271481917420831202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299703 (A302998 n).toNat

end

end A303484.P8271481917420831202

/-! ## A303484.P9980161746353620849

`A302998(n)+A198314(A198317(n))`
-/

namespace A303484.P9980161746353620849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 n + A198314 (A198317 n).toNat

end

end A303484.P9980161746353620849

/-! ## A303484.P16836379971192038470

`A302998(n)+A011742(A055570(n))`
-/

namespace A303484.P16836379971192038470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 n + A011742 (A055570 n).toNat

end

end A303484.P16836379971192038470

/-! ## A303484.P12422232589651453751

`A302998(n)+A198317(A198317(n)²)`
-/

namespace A303484.P12422232589651453751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 n + A198317 (A198317 n ^ 2).toNat

end

end A303484.P12422232589651453751

/-!
# A303485: a(n) = [x^(n^3)] (1/(1 - x))*(Sum_{k>=1} x^(k^3))^n.

The programs for A303485, there is no canonical definition to state claims against.
-/

/-! ## A303485.P13864058244971506978

`A093783(8^floor(n-atan(n)))`
-/

namespace A303485.P13864058244971506978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A303485.P13864058244971506978

/-! ## A303485.P9969894942032894471

`A248186(A293528(n))`
-/

namespace A303485.P9969894942032894471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (A293528 n).toNat

end

end A303485.P9969894942032894471

/-!
# A303486: a(n) = n! * [x^n] 1/(1 - 3*x)^(n/3).

The programs for A303486, there is no canonical definition to state claims against.
-/

/-! ## A303486.P3756383679585115153

`ceil(A343446(n+1)/4)`
-/

namespace A303486.P3756383679585115153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A343446 (n + 1) : ℚ) / 4⌉

end

end A303486.P3756383679585115153

/-! ## A303486.P962631938252546237

`A343446(A028310(n)+1)/4`
-/

namespace A303486.P962631938252546237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343446 (A028310 n + 1).toNat : ℚ) / 4

end

end A303486.P962631938252546237

/-! ## A303486.P13481802822405627680

`A371077(∑[4*n])`
-/

namespace A303486.P13481802822405627680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371077 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303486.P13481802822405627680

/-! ## A303486.P10428856264408135250

`A303489(∑[n+3])`
-/

namespace A303486.P10428856264408135250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303489 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303486.P10428856264408135250

/-!
# A303487: a(n) = n! * [x^n] 1/(1 - 4*x)^(n/4).

The programs for A303487, there is no canonical definition to state claims against.
-/

/-! ## A303487.P14023578879964200640

`A370915(∑[4*n])`
-/

namespace A303487.P14023578879964200640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303487.P14023578879964200640

/-!
# A303488: a(n) = n! * [x^n] 1/(1 - 5*x)^(n/5).

The programs for A303488, there is no canonical definition to state claims against.
-/

/-! ## A303488.P10294818766511078530

`A303489(∑[5+n]+5)`
-/

namespace A303488.P10294818766511078530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303489 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A303488.P10294818766511078530

/-!
# A303489: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals: A(n,k) = n! * [x^n] 1/(1 - k*x)^(n/k).

The programs for A303489, there is no canonical definition to state claims against.
-/

/-! ## A303489.P8718446892502374999

`A225640(xor(1, A126728(n+1)))`
-/

namespace A303489.P8718446892502374999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225640 (Int.xor 1 (A126728 (n + 1))).toNat

end

end A303489.P8718446892502374999

/-! ## A303489.P12476350109878451030

`gcd(A305376(n+1)%10, A275692(2*(n+2)))`
-/

namespace A303489.P12476350109878451030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A305376 (n + 1)) 10) (A275692 (2 * (n + 2)))

end

end A303489.P12476350109878451030

/-! ## A303489.P470835396984447582

`A128227(A039897(n)*A328078(n))`
-/

namespace A303489.P470835396984447582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A039897 n * A328078 n).toNat

end

end A303489.P470835396984447582

/-! ## A303489.P14628178825739287005

`A000005(A052889(n^A238212(n)))`
-/

namespace A303489.P14628178825739287005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052889 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A238212 n : ℤ))).toNat).toNat

end

end A303489.P14628178825739287005

/-! ## A303489.P4882350533407325330

`A349393(A078778(n+1)^A282838(n+2))`
-/

namespace A303489.P4882350533407325330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349393 (SequenceMachineLib.roundAway ((A078778 (n + 1) : ℚ) ^ (A282838 (n + 2) : ℤ))).toNat

end

end A303489.P4882350533407325330

/-!
# A303492: Numbers m such that m divides A302205(m).

The programs for A303492, there is no canonical definition to state claims against.
-/

/-! ## A303492.P17381143979976286718

`eq[A007318(A109375(n)), A275811(n)]`
-/

namespace A303492.P17381143979976286718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A109375 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303492.P17381143979976286718

/-! ## A303492.P12657233030492703043

`lt[A066048(n+1), A305938(n)]+1`
-/

namespace A303492.P12657233030492703043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303492.P12657233030492703043

