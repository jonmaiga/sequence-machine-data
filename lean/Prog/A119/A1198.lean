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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A119800: Array of coordination sequences for cubic lattices (rows) and of numbers of L1 forms in cubic lattices (columns) (array read by antidiagonals).

The programs for A119800, there is no canonical definition to state claims against.
-/

/-! ## A119800.P1796136895552536309

`2*A142978(comp[∑[n]]+1)`
-/

namespace A119800.P1796136895552536309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142978 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A119800.P1796136895552536309

/-! ## A119800.P2520394121948414267

`A113413(eq[0, A103452(n)])`
-/

namespace A119800.P2520394121948414267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119800.P2520394121948414267

/-! ## A119800.P11850440062569023872

`A113413(lt[2, A113413(n)])`
-/

namespace A119800.P11850440062569023872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A119800.P11850440062569023872

/-! ## A119800.P12164344814838736391

`A113413(2*A003057(n+2)+n)`
-/

namespace A119800.P12164344814838736391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A119800.P12164344814838736391

/-! ## A119800.P677649408511857424

`A113413(2*A014132(n+1)-n)`
-/

namespace A119800.P677649408511857424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A119800.P677649408511857424

/-! ## A119800.P13119027971789463532

`A113413(A014132(n+1)+A003057(n+2))`
-/

namespace A119800.P13119027971789463532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A014132 (n + 1) + A003057 (n + 2)).toNat

end

end A119800.P13119027971789463532

/-! ## A119800.P4925923727698806346

`A113413(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A119800.P4925923727698806346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A119800.P4925923727698806346

/-! ## A119800.P5032391234165327880

`A113413(A003057(n+2)+A003057(n+2)+n)`
-/

namespace A119800.P5032391234165327880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ))).toNat

end

end A119800.P5032391234165327880

/-! ## A119800.P7498381916097216081

`A035607(A003057(n+2)²-n)`
-/

namespace A119800.P7498381916097216081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A119800.P7498381916097216081

/-! ## A119800.P16353153469420994189

`A035607((A002024(n+1)+1)²-n)`
-/

namespace A119800.P16353153469420994189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 ((A002024 (n + 1) + 1) ^ 2 - (n : ℤ)).toNat

end

end A119800.P16353153469420994189

/-! ## A119800.P6405429976674660712

`A122542(lt[2, A122542(n)])`
-/

namespace A119800.P6405429976674660712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A119800.P6405429976674660712

/-!
# A119803: a(0) = 0. For m >= 0 and 0 <= k <= 2^m -1, a(2^m +k) = number of earlier terms of the sequence which equal a(k).

The programs for A119803, there is no canonical definition to state claims against.
-/

/-! ## A119803.P1132663691778198738

`A004526(A119802(2*(n+1))%A325038(3*n+1))`
-/

namespace A119803.P1132663691778198738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A119802 (2 * (n + 1))) (A325038 (3 * n + 1))).toNat

end

end A119803.P1132663691778198738

/-!
# A119805: a(1) = 1. For m >= 0 and 1 <= k <= 2^m, a(2^m +k) = number of earlier terms of the sequence which equal k.

The programs for A119805, there is no canonical definition to state claims against.
-/

/-! ## A119805.P6602781086934996950

`ceil(C(A274061(A060818(n))+1, n)/2)`
-/

namespace A119805.P6602781086934996950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (A274061 (A060818 n).toNat + 1).toNat n : ℚ) / 2⌉

end

end A119805.P6602781086934996950

/-! ## A119805.P18316695635856485256

`A113504(n)^A238342(A220479(n+1))`
-/

namespace A119805.P18316695635856485256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113504 n : ℚ) ^ (A238342 (A220479 (n + 1)).toNat : ℤ)

end

end A119805.P18316695635856485256

/-! ## A119805.P1293266457988918842

`(floor(n/2)+1)^A009357(A038573(n))`
-/

namespace A119805.P1293266457988918842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1 : ℚ) ^ (A009357 (A038573 n).toNat : ℤ)

end

end A119805.P1293266457988918842

/-! ## A119805.P14442585938293439251

`A113504(A102392(A000120(A000225(n))))`
-/

namespace A119805.P14442585938293439251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113504 (A102392 (A000120 (A000225 n).toNat).toNat).toNat

end

end A119805.P14442585938293439251

/-! ## A119805.P13517133299202714876

`C(A106466(n), A327197(A333939(n)))`
-/

namespace A119805.P13517133299202714876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106466 n).toNat (A327197 (A333939 n).toNat).toNat

end

end A119805.P13517133299202714876

/-!
# A119810: Partial quotients of the continued fraction of the constant defined by binary sums involving Beatty sequences: c = Sum_{n>=1} 1/2^A049472(n) = Sum_{n>=1} A001951(n)/2^n.

The programs for A119810, there is no canonical definition to state claims against.
-/

/-! ## A119810.P4608915199236806249

`floor(ratio[A095121(A000129(n))])`
-/

namespace A119810.P4608915199236806249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (A000129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A119810.P4608915199236806249

/-!
# A119813: Partial quotients of the continued fraction of the constant A119812 defined by binary sums involving Beatty sequences: c = Sum_{n>=1} A049472(n)/2^n = Sum_{n>=1} 1/2^A001951(n).

The programs for A119813, there is no canonical definition to state claims against.
-/

/-! ## A119813.P16544641774543693118

`∑{e}[p?[A231383(a(n-1)+1)]+1, n^#]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=1, a(4)=4`
-/

namespace A119813.P16544641774543693118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 1, 4] fun n f2 =>
  A231383 (f2 (n - 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, n ^ Nat.factorization (f1 n).natAbs p

end

end A119813.P16544641774543693118

/-!
# A119814: Numerators of the convergents to the continued fraction for the constant A119812 defined by binary sums involving Beatty sequences: c = Sum_{n>=1} A049472(n)/2^n = Sum_{n>=1} 1/2^A001951(n).

The programs for A119814, there is no canonical definition to state claims against.
-/

/-! ## A119814.P12001178362084515865

`A088697(A196168(a(n-1)))` with `a(0)=0`
-/

namespace A119814.P12001178362084515865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A088697 (A196168 (a (n - 1)).toNat).toNat

end

end A119814.P12001178362084515865

/-!
# A119819: a(n) equals the coefficient of x^(n-1) in the (n-1)-th iteration of g.f. A(x) for n>1, with a(1)=1.

The programs for A119819, there is no canonical definition to state claims against.
-/

/-! ## A119819.P9928055984255888303

`A060000(A162404(n!))`
-/

namespace A119819.P9928055984255888303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A162404 (Nat.factorial n)).toNat

end

end A119819.P9928055984255888303

/-! ## A119819.P8769010985968134621

`A000010(val(n+2, 2)!*A162404(n!))`
-/

namespace A119819.P8769010985968134621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((Nat.factorial (SequenceMachineLib.valuation (n + 2) 2) : ℤ) * A162404 (Nat.factorial n)).toNat

end

end A119819.P8769010985968134621

/-!
# A119820: Coefficients of x^n in the n-th iteration of x*(1+x)^2 for n>=1.

The programs for A119820, there is no canonical definition to state claims against.
-/

/-! ## A119820.P17758348593335384246

`A332808((n+1)*A080638(n))`
-/

namespace A119820.P17758348593335384246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 ((n + 1 : ℤ) * A080638 n).toNat

end

end A119820.P17758348593335384246

/-!
# A119821: Coefficients of x^n in the n-th iteration of x/(1-x)^2 for n>=1.

The programs for A119821, there is no canonical definition to state claims against.
-/

/-! ## A119821.P18238713602151625181

`A094417(n)-A302479(A005260(n))`
-/

namespace A119821.P18238713602151625181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094417 n - A302479 (A005260 n).toNat

end

end A119821.P18238713602151625181

/-!
# A119823: a(n) = a(n-1) + number of distinct digits of a(n-1) in decimal representation, a(0)=0.

The programs for A119823, the canonical program `A119823.P17884441349240890966` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119823 has offset 0).

The definition of A119823 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043537, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119823.P17884441349240890966

`a(n-1)+A043537(a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A119823

/-- `a(n-1)+A043537(a(n-1))` -/
def P17884441349240890966.Spec : Prop :=
  ∀ n, P17884441349240890966.a n = A119823 n

theorem P17884441349240890966.correct : P17884441349240890966.Spec := by
  intro n
  simp only [A119823]

end A119823

/-! ## A119823.P18310184464948180496

`lt[A377047(n+1), 55*n+16]`
-/

namespace A119823.P18310184464948180496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377047 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119823.P18310184464948180496

namespace A119823

/-- `lt[A377047(n+1), 55*n+16]` -/
def P18310184464948180496.Spec : Prop :=
  ∀ n, (P18310184464948180496.a n : ℤ) = A119823 n

end A119823

/-! ## A119823.P16817126001800101080

`lt[A377047(n+1)+1, A126980(n)]`
-/

namespace A119823.P16817126001800101080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377047 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119823.P16817126001800101080

namespace A119823

/-- `lt[A377047(n+1)+1, A126980(n)]` -/
def P16817126001800101080.Spec : Prop :=
  ∀ n, (P16817126001800101080.a n : ℤ) = A119823 n

end A119823

/-! ## A119823.P1833612169861642288

`lt[A377047(n+1)+1, A000928(n+1)]`
-/

namespace A119823.P1833612169861642288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377047 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119823.P1833612169861642288

namespace A119823

/-- `lt[A377047(n+1)+1, A000928(n+1)]` -/
def P1833612169861642288.Spec : Prop :=
  ∀ n, (P1833612169861642288.a n : ℤ) = A119823 n

end A119823

/-! ## A119823.P14964001672324456064

`lt[A377047(n+1)+1, A030433(n+1)]`
-/

namespace A119823.P14964001672324456064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377047 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119823.P14964001672324456064

namespace A119823

/-- `lt[A377047(n+1)+1, A030433(n+1)]` -/
def P14964001672324456064.Spec : Prop :=
  ∀ n, (P14964001672324456064.a n : ℤ) = A119823 n

end A119823

/-!
# A119826: Number of ternary words of length n with no 000's.

The programs for A119826, the canonical program `A119826.P8393455807672853933` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119826 has offset 0).

The definition of A119826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119826.P9131911823029125188

`ogf((1+x+x^2)/(1-2x-2x^2-2x^3))`
-/

namespace A119826.P9131911823029125188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -2, -2, -2] n

end

end A119826.P9131911823029125188

namespace A119826

/-- `ogf((1+x+x^2)/(1-2x-2x^2-2x^3))` -/
def P9131911823029125188.Spec : Prop :=
  ∀ n, P9131911823029125188.a n = A119826 n

end A119826

/-! ## A119826.P8393455807672853933

`2*(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119826

/-- `2*(a(n-1)+a(n-2)+a(n-3))` -/
def P8393455807672853933.Spec : Prop :=
  ∀ n, (P8393455807672853933.a n : ℤ) = A119826 n

theorem P8393455807672853933.correct : P8393455807672853933.Spec := by
  intro n
  simp only [A119826]

end A119826

/-! ## A119826.P10032080443267082817

`A077835(n+1)/2`
-/

namespace A119826.P10032080443267082817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077835 (n + 1) : ℚ) / 2

end

end A119826.P10032080443267082817

namespace A119826

/-- `A077835(n+1)/2` -/
def P10032080443267082817.Spec : Prop :=
  ∀ n, P10032080443267082817.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P16405829752163234678

`abs(A077984(n+1)/2)`
-/

namespace A119826.P16405829752163234678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A077984 (n + 1) : ℚ) / 2|

end

end A119826.P16405829752163234678

namespace A119826

/-- `abs(A077984(n+1)/2)` -/
def P16405829752163234678.Spec : Prop :=
  ∀ n, P16405829752163234678.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P242693718961135265

`gcd(A077984(n+1)/2, A000038(n)²)`
-/

namespace A119826.P242693718961135265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A077984 (n + 1) : ℚ) / 2)) (A000038 n ^ 2)

end

end A119826.P242693718961135265

namespace A119826

/-- `gcd(A077984(n+1)/2, A000038(n)²)` -/
def P242693718961135265.Spec : Prop :=
  ∀ n, (P242693718961135265.a n : ℤ) = A119826 n

end A119826

/-! ## A119826.P8699286168883466138

`A033999(n+1)/2*A077984(n+1)`
-/

namespace A119826.P8699286168883466138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A077984 (n + 1) : ℚ)

end

end A119826.P8699286168883466138

namespace A119826

/-- `A033999(n+1)/2*A077984(n+1)` -/
def P8699286168883466138.Spec : Prop :=
  ∀ n, P8699286168883466138.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P5170230360758404104

`gcd(A000038(n+1), A077984(n+1))/2`
-/

namespace A119826.P5170230360758404104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A077984 (n + 1)) : ℚ) / 2

end

end A119826.P5170230360758404104

namespace A119826

/-- `gcd(A000038(n+1), A077984(n+1))/2` -/
def P5170230360758404104.Spec : Prop :=
  ∀ n, P5170230360758404104.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P681078484345890073

`lcm(A000034(n+1), A077984(n+1))/2`
-/

namespace A119826.P681078484345890073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A077984 (n + 1)) : ℚ) / 2

end

end A119826.P681078484345890073

namespace A119826

/-- `lcm(A000034(n+1), A077984(n+1))/2` -/
def P681078484345890073.Spec : Prop :=
  ∀ n, P681078484345890073.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P3901007566745244883

`Δ[A077827(n)/2]`
-/

namespace A119826.P3901007566745244883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077827 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119826.P3901007566745244883

namespace A119826

/-- `Δ[A077827(n)/2]` -/
def P3901007566745244883.Spec : Prop :=
  ∀ n, P3901007566745244883.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P9445601242899013774

`A181137(n+1)/3`
-/

namespace A119826.P9445601242899013774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181137 (n + 1) : ℚ) / 3

end

end A119826.P9445601242899013774

namespace A119826

/-- `A181137(n+1)/3` -/
def P9445601242899013774.Spec : Prop :=
  ∀ n, P9445601242899013774.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P7201716962162913726

`Δ[∑[A077835(n)]/2]`
-/

namespace A119826.P7201716962162913726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077835 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119826.P7201716962162913726

namespace A119826

/-- `Δ[∑[A077835(n)]/2]` -/
def P7201716962162913726.Spec : Prop :=
  ∀ n, P7201716962162913726.a n = (A119826 n : ℚ)

end A119826

/-! ## A119826.P13676461291501004734

`A181137(n+1)-A077835(n+1)`
-/

namespace A119826.P13676461291501004734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181137 (n + 1) - A077835 (n + 1)

end

end A119826.P13676461291501004734

namespace A119826

/-- `A181137(n+1)-A077835(n+1)` -/
def P13676461291501004734.Spec : Prop :=
  ∀ n, P13676461291501004734.a n = A119826 n

end A119826

/-! ## A119826.P10695628861323921419

`3^n-A231430(n)`
-/

namespace A119826.P10695628861323921419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A231430 n

end

end A119826.P10695628861323921419

namespace A119826

/-- `3^n-A231430(n)` -/
def P10695628861323921419.Spec : Prop :=
  ∀ n, P10695628861323921419.a n = A119826 n

end A119826

/-! ## A119826.P4589151429033581938

`A028859(n)+A186244(n)-A231430(n)`
-/

namespace A119826.P4589151429033581938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n + (A186244 n - A231430 n)

end

end A119826.P4589151429033581938

namespace A119826

/-- `A028859(n)+A186244(n)-A231430(n)` -/
def P4589151429033581938.Spec : Prop :=
  ∀ n, P4589151429033581938.a n = A119826 n

end A119826

/-!
# A119827: Number of ternary words of length n with exactly one 000.

The programs for A119827, there is no canonical definition to state claims against.
-/

/-! ## A119827.P4921689183697408705

`floor(A237420(n*ceil(3^(n-1)/4)-n)/6)`
-/

namespace A119827.P4921689183697408705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237420 ((n : ℤ) * ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 4⌉ - (n : ℤ)).toNat : ℚ) / 6⌋

end

end A119827.P4921689183697408705

/-! ## A119827.P15606527918299148123

`A152467(A360036(n))`
-/

namespace A119827.P15606527918299148123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A360036 n).toNat

end

end A119827.P15606527918299148123

/-! ## A119827.P3382960432813178996

`floor(A006949(floor(A050914(n)/6))/6)`
-/

namespace A119827.P3382960432813178996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006949 ⌊(A050914 n : ℚ) / 6⌋.toNat : ℚ) / 6⌋

end

end A119827.P3382960432813178996

/-! ## A119827.P16727264539648971795

`floor(A244478(floor(A050914(n)/6))/6)`
-/

namespace A119827.P16727264539648971795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244478 ⌊(A050914 n : ℚ) / 6⌋.toNat : ℚ) / 6⌋

end

end A119827.P16727264539648971795

/-! ## A119827.P6207662170318260573

`A097992(n*(3^(n-1)+(-1)^(n-1)+2)/4)-A363337(n)`
-/

namespace A119827.P6207662170318260573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (SequenceMachineLib.roundAway ((n : ℚ) * (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2) / 4))).toNat - A363337 n

end

end A119827.P6207662170318260573

/-!
# A119828: Number triangle T(n,k)=(2n)!/(2k)!.

The programs for A119828, the canonical program `A119828.P7443773389000211575` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119828 has offset 0).

The definition of A119828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119828.P11029429534877856299

`(C(comp[∑[n]]-n, 2)-(n+1))!*A048854(n)`
-/

namespace A119828.P11029429534877856299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A048854 n

end

end A119828.P11029429534877856299

namespace A119828

/-- `(C(comp[∑[n]]-n, 2)-(n+1))!*A048854(n)` -/
def P11029429534877856299.Spec : Prop :=
  ∀ n, P11029429534877856299.a n = A119828 n

end A119828

/-! ## A119828.P7443773389000211575

`A094587(eq[0, A155998(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A119828

/-- `A094587(eq[0, A155998(n)])` -/
def P7443773389000211575.Spec : Prop :=
  ∀ n, P7443773389000211575.a n = A119828 n

theorem P7443773389000211575.correct : P7443773389000211575.Spec := by
  intro n
  simp only [A119828]

end A119828

/-! ## A119828.P8354044363776860431

`A048854(n)*A119502(n)`
-/

namespace A119828.P8354044363776860431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 n * A119502 n

end

end A119828.P8354044363776860431

namespace A119828

/-- `A048854(n)*A119502(n)` -/
def P8354044363776860431.Spec : Prop :=
  ∀ n, P8354044363776860431.a n = A119828 n

end A119828

/-! ## A119828.P7001231644151694976

`A094587(comp[A132118(n+1)])`
-/

namespace A119828.P7001231644151694976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A119828.P7001231644151694976

namespace A119828

/-- `A094587(comp[A132118(n+1)])` -/
def P7001231644151694976.Spec : Prop :=
  ∀ n, P7001231644151694976.a n = A119828 n

end A119828

/-! ## A119828.P15676652402897476121

`A048854(n)*A081123(A099375(n))`
-/

namespace A119828.P15676652402897476121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 n * A081123 (A099375 n).toNat

end

end A119828.P15676652402897476121

namespace A119828

/-- `A048854(n)*A081123(A099375(n))` -/
def P15676652402897476121.Spec : Prop :=
  ∀ n, P15676652402897476121.a n = A119828 n

end A119828

/-!
# A119830: Bi-diagonal inverse of (2n)!/(2k)!.

The programs for A119830, the canonical program `A119830.P10829120068690796242` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119830 has offset 0).

The definition of A119830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119830.P10829120068690796242

`A046521(n)*A132013(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A119830

/-- `A046521(n)*A132013(n)` -/
def P10829120068690796242.Spec : Prop :=
  ∀ n, P10829120068690796242.a n = A119830 n

theorem P10829120068690796242.correct : P10829120068690796242.Spec := by
  intro n
  simp only [A119830]

end A119830

/-! ## A119830.P1002792596961356245

`A055905(n)*A134082(n)`
-/

namespace A119830.P1002792596961356245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055905 n * A134082 n

end

end A119830.P1002792596961356245

namespace A119830

/-- `A055905(n)*A134082(n)` -/
def P1002792596961356245.Spec : Prop :=
  ∀ n, P1002792596961356245.a n = A119830 n

end A119830

/-! ## A119830.P1643843558080655815

`A048854(n)*A167374(n)`
-/

namespace A119830.P1643843558080655815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 n * A167374 n

end

end A119830.P1643843558080655815

namespace A119830

/-- `A048854(n)*A167374(n)` -/
def P1643843558080655815.Spec : Prop :=
  ∀ n, P1643843558080655815.a n = A119830 n

end A119830

/-! ## A119830.P4201700099463393074

`A038207(n)*A112295(n)`
-/

namespace A119830.P4201700099463393074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A112295 n

end

end A119830.P4201700099463393074

namespace A119830

/-- `A038207(n)*A112295(n)` -/
def P4201700099463393074.Spec : Prop :=
  ∀ n, P4201700099463393074.a n = A119830 n

end A119830

/-! ## A119830.P10363569412809581797

`A039598(n)*A112295(n)`
-/

namespace A119830.P10363569412809581797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n * A112295 n

end

end A119830.P10363569412809581797

namespace A119830

/-- `A039598(n)*A112295(n)` -/
def P10363569412809581797.Spec : Prop :=
  ∀ n, P10363569412809581797.a n = A119830 n

end A119830

/-! ## A119830.P15268404381354556361

`A054335(n)*A112295(n)`
-/

namespace A119830.P15268404381354556361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 n * A112295 n

end

end A119830.P15268404381354556361

namespace A119830

/-- `A054335(n)*A112295(n)` -/
def P15268404381354556361.Spec : Prop :=
  ∀ n, P15268404381354556361.a n = A119830 n

end A119830

/-! ## A119830.P11277464618732697083

`A054456(n)*A112295(n)`
-/

namespace A119830.P11277464618732697083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 n * A112295 n

end

end A119830.P11277464618732697083

namespace A119830

/-- `A054456(n)*A112295(n)` -/
def P11277464618732697083.Spec : Prop :=
  ∀ n, P11277464618732697083.a n = A119830 n

end A119830

/-! ## A119830.P8232646833512825320

`A073107(n)*A112295(n)`
-/

namespace A119830.P8232646833512825320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 n * A112295 n

end

end A119830.P8232646833512825320

namespace A119830

/-- `A073107(n)*A112295(n)` -/
def P8232646833512825320.Spec : Prop :=
  ∀ n, P8232646833512825320.a n = A119830 n

end A119830

/-! ## A119830.P9954394717988985819

`A073135(n)*A112295(n)`
-/

namespace A119830.P9954394717988985819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073135 n * A112295 n

end

end A119830.P9954394717988985819

namespace A119830

/-- `A073135(n)*A112295(n)` -/
def P9954394717988985819.Spec : Prop :=
  ∀ n, P9954394717988985819.a n = A119830 n

end A119830

/-! ## A119830.P17090288550981200741

`A073387(n)*A112295(n)`
-/

namespace A119830.P17090288550981200741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 n * A112295 n

end

end A119830.P17090288550981200741

namespace A119830

/-- `A073387(n)*A112295(n)` -/
def P17090288550981200741.Spec : Prop :=
  ∀ n, P17090288550981200741.a n = A119830 n

end A119830

/-! ## A119830.P17313940365027819771

`A078812(n)*A112295(n)`
-/

namespace A119830.P17313940365027819771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A112295 n

end

end A119830.P17313940365027819771

namespace A119830

/-- `A078812(n)*A112295(n)` -/
def P17313940365027819771.Spec : Prop :=
  ∀ n, P17313940365027819771.a n = A119830 n

end A119830

/-! ## A119830.P5789209968842629127

`A078937(n)*A112295(n)`
-/

namespace A119830.P5789209968842629127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078937 n * A112295 n

end

end A119830.P5789209968842629127

namespace A119830

/-- `A078937(n)*A112295(n)` -/
def P5789209968842629127.Spec : Prop :=
  ∀ n, P5789209968842629127.a n = A119830 n

end A119830

/-! ## A119830.P16201389188122000207

`A080247(n)*A112295(n)`
-/

namespace A119830.P16201389188122000207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n * A112295 n

end

end A119830.P16201389188122000207

namespace A119830

/-- `A080247(n)*A112295(n)` -/
def P16201389188122000207.Spec : Prop :=
  ∀ n, P16201389188122000207.a n = A119830 n

end A119830

/-! ## A119830.P8500605744559569746

`A089460(n)*A112295(n)`
-/

namespace A119830.P8500605744559569746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089460 n * A112295 n

end

end A119830.P8500605744559569746

namespace A119830

/-- `A089460(n)*A112295(n)` -/
def P8500605744559569746.Spec : Prop :=
  ∀ n, P8500605744559569746.a n = A119830 n

end A119830

/-! ## A119830.P4802412895273837969

`A094442(n)*A112295(n)`
-/

namespace A119830.P4802412895273837969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n * A112295 n

end

end A119830.P4802412895273837969

namespace A119830

/-- `A094442(n)*A112295(n)` -/
def P4802412895273837969.Spec : Prop :=
  ∀ n, P4802412895273837969.a n = A119830 n

end A119830

/-! ## A119830.P79281708643366326

`A094527(n)*A112295(n)`
-/

namespace A119830.P79281708643366326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A112295 n

end

end A119830.P79281708643366326

namespace A119830

/-- `A094527(n)*A112295(n)` -/
def P79281708643366326.Spec : Prop :=
  ∀ n, P79281708643366326.a n = A119830 n

end A119830

/-! ## A119830.P4129631105334138010

`A103415(n)*A112295(n)`
-/

namespace A119830.P4129631105334138010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103415 n * A112295 n

end

end A119830.P4129631105334138010

namespace A119830

/-- `A103415(n)*A112295(n)` -/
def P4129631105334138010.Spec : Prop :=
  ∀ n, P4129631105334138010.a n = A119830 n

end A119830

/-! ## A119830.P10045350240368412943

`A104259(n)*A112295(n)`
-/

namespace A119830.P10045350240368412943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 n * A112295 n

end

end A119830.P10045350240368412943

namespace A119830

/-- `A104259(n)*A112295(n)` -/
def P10045350240368412943.Spec : Prop :=
  ∀ n, P10045350240368412943.a n = A119830 n

end A119830

/-! ## A119830.P12257759867361529759

`A104698(n)*A112295(n)`
-/

namespace A119830.P12257759867361529759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104698 n * A112295 n

end

end A119830.P12257759867361529759

namespace A119830

/-- `A104698(n)*A112295(n)` -/
def P12257759867361529759.Spec : Prop :=
  ∀ n, P12257759867361529759.a n = A119830 n

end A119830

/-! ## A119830.P1831540320805480661

`A104988(n)*A112295(n)`
-/

namespace A119830.P1831540320805480661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104988 n * A112295 n

end

end A119830.P1831540320805480661

namespace A119830

/-- `A104988(n)*A112295(n)` -/
def P1831540320805480661.Spec : Prop :=
  ∀ n, P1831540320805480661.a n = A119830 n

end A119830

/-!
# A119831: Number triangle (3n)!/(3k)!.

The programs for A119831, there is no canonical definition to state claims against.
-/

/-! ## A119831.P10443749936954748096

`lcm(or(1, and(n, -(n+2))), A225246(n+1))!`
-/

namespace A119831.P10443749936954748096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.lcm (Int.lor 1 (Int.land (n : ℤ) (-(n + 2 : ℤ)))) (A225246 (n + 1)))

end

end A119831.P10443749936954748096

/-! ## A119831.P9782741843504095993

`(∏{p}[n+1, (n+1)/#]%(n+1)*A282221(n))!`
-/

namespace A119831.P9782741843504095993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ) * A282221 n).toNat

end

end A119831.P9782741843504095993

/-! ## A119831.P16335504875432496776

`A221913(A370258(n+1))`
-/

namespace A119831.P16335504875432496776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221913 (A370258 (n + 1)).toNat

end

end A119831.P16335504875432496776

/-!
# A119832: Bi-diagonal inverse of (3n)!/(3k)!.

The programs for A119832, the canonical program `A119832.P6835891889042031517` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119832 has offset 0).

The definition of A119832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119832.P6835891889042031517

`A112334(n)*A143051(A112334(n)²)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A119832

/-- `A112334(n)*A143051(A112334(n)²)` -/
def P6835891889042031517.Spec : Prop :=
  ∀ n, P6835891889042031517.a n = A119832 n

theorem P6835891889042031517.correct : P6835891889042031517.Spec := by
  intro n
  simp only [A119832]

end A119832

/-! ## A119832.P17385290177371784228

`A119831(n)*A167374(n)`
-/

namespace A119832.P17385290177371784228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119831 n * A167374 n

end

end A119832.P17385290177371784228

namespace A119832

/-- `A119831(n)*A167374(n)` -/
def P17385290177371784228.Spec : Prop :=
  ∀ n, P17385290177371784228.a n = A119832 n

end A119832

/-! ## A119832.P16845588133802463007

`Δ[A023532(n)]*A119831(n)`
-/

namespace A119832.P16845588133802463007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A119831 n

end

end A119832.P16845588133802463007

namespace A119832

/-- `Δ[A023532(n)]*A119831(n)` -/
def P16845588133802463007.Spec : Prop :=
  ∀ n, P16845588133802463007.a n = A119832 n

end A119832

/-! ## A119832.P5913848534652417732

`A119830(n)/A119828(n)*A119831(n)`
-/

namespace A119832.P5913848534652417732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119830 n : ℚ) / (A119828 n : ℚ) * (A119831 n : ℚ)

end

end A119832.P5913848534652417732

namespace A119832

/-- `A119830(n)/A119828(n)*A119831(n)` -/
def P5913848534652417732.Spec : Prop :=
  ∀ n, P5913848534652417732.a n = (A119832 n : ℚ)

end A119832

/-! ## A119832.P13364157445483647855

`A008683(A130321(n))*A119831(n)`
-/

namespace A119832.P13364157445483647855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130321 n).toNat * A119831 n

end

end A119832.P13364157445483647855

namespace A119832

/-- `A008683(A130321(n))*A119831(n)` -/
def P13364157445483647855.Spec : Prop :=
  ∀ n, P13364157445483647855.a n = A119832 n

end A119832

/-! ## A119832.P17740557681328443373

`A008683(A140303(n))*A119831(n)`
-/

namespace A119832.P17740557681328443373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A140303 n).toNat * A119831 n

end

end A119832.P17740557681328443373

namespace A119832

/-- `A008683(A140303(n))*A119831(n)` -/
def P17740557681328443373.Spec : Prop :=
  ∀ n, P17740557681328443373.a n = A119832 n

end A119832

/-!
# A119833: Primes p such that 2*p#-1 is prime.

The programs for A119833, there is no canonical definition to state claims against.
-/

/-! ## A119833.P12086057073234230799

`p?[Δ[A007504(n)]*A097099(n+1)]`
-/

namespace A119833.P12086057073234230799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A097099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119833.P12086057073234230799

/-! ## A119833.P14270615373355381031

`p?[p?[A259153(n)]*A097099(n+1)]`
-/

namespace A119833.P14270615373355381031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A097099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119833.P14270615373355381031

/-! ## A119833.P2942213022988103862

`p?[A000040(n+1)*A097099(n+1)]`
-/

namespace A119833.P2942213022988103862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A097099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119833.P2942213022988103862

/-! ## A119833.P1213778789634081649

`p?[(A014692(n+1)+n)*A097099(n+1)]`
-/

namespace A119833.P1213778789634081649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A097099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119833.P1213778789634081649

/-! ## A119833.P14210896035195368900

`p?[p?[A018252(n+1)-7]*A097099(n+1)]`
-/

namespace A119833.P14210896035195368900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A097099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119833.P14210896035195368900

/-!
# A119834: Primes p such that 2*p#+1 is prime.

The programs for A119834, there is no canonical definition to state claims against.
-/

/-! ## A119834.P12720909546930436255

`A000040(A051800(n+1))`
-/

namespace A119834.P12720909546930436255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051800 (n + 1)).toNat

end

end A119834.P12720909546930436255

/-! ## A119834.P17500948698486962020

`A008578(A051800(n+1)+1)`
-/

namespace A119834.P17500948698486962020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A051800 (n + 1) + 1).toNat

end

end A119834.P17500948698486962020

/-! ## A119834.P12609651485011093654

`A000040(eq[1, A098929(n+1)]+1)`
-/

namespace A119834.P12609651485011093654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A119834.P12609651485011093654

/-! ## A119834.P6754425583675754973

`A000040(eq[2, A051887(n+1)]+1)`
-/

namespace A119834.P6754425583675754973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A119834.P6754425583675754973

/-! ## A119834.P49127465492986838

`p?[A051887(n+1)+A040976(n+1)]`
-/

namespace A119834.P49127465492986838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051887 (n + 1) + A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119834.P49127465492986838

/-!
# A119835: Primes p such that 2*p#-1 and 2*p#+1 are twin primes.

The programs for A119835, there is no canonical definition to state claims against.
-/

/-! ## A119835.P17564495285475440874

`p?[A342343(n)-floor(n/2)]`
-/

namespace A119835.P17564495285475440874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342343 n - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119835.P17564495285475440874

/-!
# A119836: Bi-diagonal inverse of [k<=n]*n!/(2k)!.

The programs for A119836, there is no canonical definition to state claims against.
-/

/-! ## A119836.P3548073745723712923

`A164961(n)*A167374(n)`
-/

namespace A119836.P3548073745723712923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164961 n * A167374 n

end

end A119836.P3548073745723712923

/-! ## A119836.P16867839454811953667

`A048854(A057944(n))*A132013(n)`
-/

namespace A119836.P16867839454811953667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 (A057944 n).toNat * A132013 n

end

end A119836.P16867839454811953667

/-! ## A119836.P11523545997494456255

`A109767(A061579(n))*A132013(n)`
-/

namespace A119836.P11523545997494456255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109767 (A061579 n).toNat * A132013 n

end

end A119836.P11523545997494456255

/-! ## A119836.P16542487942701619473

`A048854(A061579(n))*A251635(n)`
-/

namespace A119836.P16542487942701619473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 (A061579 n).toNat * A251635 n

end

end A119836.P16542487942701619473

/-! ## A119836.P17787682329979409047

`A094587(A292564(n))*A167374(n)`
-/

namespace A119836.P17787682329979409047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A292564 n).toNat * A167374 n

end

end A119836.P17787682329979409047

/-! ## A119836.P7557827706459435211

`A094587(∑[4*A132440(n)])*A132013(n)`
-/

namespace A119836.P7557827706459435211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A132440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A132013 n

end

end A119836.P7557827706459435211

/-! ## A119836.P7621906750198274629

`A008683(A130321(n))*A094587(A292564(n))`
-/

namespace A119836.P7621906750198274629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130321 n).toNat * A094587 (A292564 n).toNat

end

end A119836.P7621906750198274629

/-!
# A119837: a(n) = (2n)!/n! - (2n)!/(n-1)!.

The programs for A119837, there is no canonical definition to state claims against.
-/

/-! ## A119837.P16723590663968023527

`-((n-1)*n!*C(2*n, n))`
-/

namespace A119837.P16723590663968023527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * (Nat.factorial n * Nat.choose (2 * n) n : ℤ))

end

end A119837.P16723590663968023527

/-! ## A119837.P2897085236030336337

`(1-n)*∏[a(n-1)+4]/7` with `a(0)=7, a(1)=2`
-/

namespace A119837.P2897085236030336337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ) : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7)

end

end A119837.P2897085236030336337

/-! ## A119837.P8754132261419524587

`(4*n-2)*a(n-1)-n!*C(2*n, n)` with `a(0)=1`
-/

namespace A119837.P8754132261419524587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 2) * a (n - 1) - (Nat.factorial n * Nat.choose (2 * n) n : ℤ)

end

end A119837.P8754132261419524587

/-! ## A119837.P11726237789340393615

`(4*n-2)*a(n-1)-∏[floor(abs(4*n-ϕ))]` with `a(0)=1`
-/

namespace A119837.P11726237789340393615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 2) * a (n - 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A119837.P11726237789340393615

/-! ## A119837.P17993008844469558790

`(1-n)*A001813(n)`
-/

namespace A119837.P17993008844469558790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A001813 n

end

end A119837.P17993008844469558790

/-! ## A119837.P6771428625492059205

`(1-n)*abs(A097388(n))`
-/

namespace A119837.P6771428625492059205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * |A097388 n|

end

end A119837.P6771428625492059205

/-! ## A119837.P7431202303321431946

`(1-n²)*A001761(n)`
-/

namespace A119837.P7431202303321431946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 2 : ℤ)) * A001761 n

end

end A119837.P7431202303321431946

/-! ## A119837.P5421598877765830063

`(1-n)*record[A109767(n)]`
-/

namespace A119837.P5421598877765830063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119837.P5421598877765830063

/-! ## A119837.P7785278760930825373

`(1-n)*record[A122670(n)]`
-/

namespace A119837.P7785278760930825373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119837.P7785278760930825373

/-! ## A119837.P12035829820282293152

`(1-n)*A081125(2*n)`
-/

namespace A119837.P12035829820282293152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A081125 (2 * n)

end

end A119837.P12035829820282293152

/-!
# A119840: Positions where new distinct values appear in A114717.

The programs for A119840, there is no canonical definition to state claims against.
-/

/-! ## A119840.P6519577255669577854

`record[A328479(3*(n+1))%A230307(n)]`
-/

namespace A119840.P6519577255669577854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328479 (3 * (n + 1))) (A230307 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119840.P6519577255669577854

/-! ## A119840.P11943707367058876447

`A384010(A060106(n+1))`
-/

namespace A119840.P11943707367058876447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (A060106 (n + 1)).toNat

end

end A119840.P11943707367058876447

/-! ## A119840.P8540170379754857730

`A384010(A189926(n+1))`
-/

namespace A119840.P8540170379754857730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (A189926 (n + 1)).toNat

end

end A119840.P8540170379754857730

/-! ## A119840.P8508311960757241287

`A384010(A379413(n+1))`
-/

namespace A119840.P8508311960757241287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (A379413 (n + 1)).toNat

end

end A119840.P8508311960757241287

/-! ## A119840.P228110377551263937

`record[gcd(A047225(n+1), A330997(n+1))]`
-/

namespace A119840.P228110377551263937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047225 (n + 1)) (A330997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119840.P228110377551263937

/-!
# A119841: Distinct values in A114717 in order of appearance.

The programs for A119841, there is no canonical definition to state claims against.
-/

/-! ## A119841.P3927749447964203540

`A114717(A119840(n+1))`
-/

namespace A119841.P3927749447964203540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (A119840 (n + 1)).toNat

end

end A119841.P3927749447964203540

/-! ## A119841.P13220359730124438751

`A114717(record[A328479(3*(n+1))%A230307(n)])`
-/

namespace A119841.P13220359730124438751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328479 (3 * (n + 1))) (A230307 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A119841.P13220359730124438751

/-!
# A119842: Number of alternating linear extensions of the divisor lattice of n.

The programs for A119842, there is no canonical definition to state claims against.
-/

/-! ## A119842.P11384556149218487475

`A046920(A324837(n+1)^3)`
-/

namespace A119842.P11384556149218487475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A324837 (n + 1) ^ 3).toNat

end

end A119842.P11384556149218487475

/-! ## A119842.P15305328836676246303

`and(A033630(A114717(n+1)), A114717(n+1))`
-/

namespace A119842.P15305328836676246303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033630 (A114717 (n + 1)).toNat) (A114717 (n + 1))

end

end A119842.P15305328836676246303

/-! ## A119842.P16415835672967152034

`A046920(A324837(n+1)²*A324837(n+1))`
-/

namespace A119842.P16415835672967152034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A324837 (n + 1) ^ 2 * A324837 (n + 1)).toNat

end

end A119842.P16415835672967152034

/-! ## A119842.P16979850792792807468

`A339016(A281116(n+1)%A028872(n²+2))`
-/

namespace A119842.P16979850792792807468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339016 (Int.tmod (A281116 (n + 1)) (A028872 (n ^ 2 + 2))).toNat

end

end A119842.P16979850792792807468

/-! ## A119842.P8299855768980511819

`A275325(A343653(n+1))`
-/

namespace A119842.P8299855768980511819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275325 (A343653 (n + 1)).toNat

end

end A119842.P8299855768980511819

/-! ## A119842.P14787944135901195587

`A003056(A126120(A343653(n+1))²)`
-/

namespace A119842.P14787944135901195587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A126120 (A343653 (n + 1)).toNat ^ 2).toNat

end

end A119842.P14787944135901195587

/-! ## A119842.P1106970690513365503

`∑{d}[A126120(A343653(n+1)), A000045(#)]`
-/

namespace A119842.P1106970690513365503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (A343653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 d

end

end A119842.P1106970690513365503

/-! ## A119842.P2013590388866721123

`floor(A327012(n+1)/A020639(A001055(n+1)))`
-/

namespace A119842.P2013590388866721123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327012 (n + 1) : ℚ) / (A020639 (A001055 (n + 1)).toNat : ℚ)⌋

end

end A119842.P2013590388866721123

/-! ## A119842.P11574012637974402385

`A317581(A317581(A067824(n+1)²))`
-/

namespace A119842.P11574012637974402385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317581 (A317581 (A067824 (n + 1) ^ 2).toNat).toNat

end

end A119842.P11574012637974402385

/-! ## A119842.P3450282178635117501

`A380959(A086165(n+1))`
-/

namespace A119842.P3450282178635117501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (A086165 (n + 1)).toNat

end

end A119842.P3450282178635117501

/-!
# A119843: A119842(n) sets a new record.

The programs for A119843, there is no canonical definition to state claims against.
-/

/-! ## A119843.P17879012164033728183

`A119845(A084919(n+2))`
-/

namespace A119843.P17879012164033728183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119845 (A084919 (n + 2)).toNat

end

end A119843.P17879012164033728183

/-!
# A119844: Records in A119842.

The programs for A119844, there is no canonical definition to state claims against.
-/

/-! ## A119844.P5718029056528738297

`record[A119842(n+1)]`
-/

namespace A119844.P5718029056528738297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119844.P5718029056528738297

/-! ## A119844.P13458822747962606549

`record[A119846(n+1)]`
-/

namespace A119844.P13458822747962606549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119844.P13458822747962606549

/-! ## A119844.P606732060625961283

`record[A119849(n+1)]`
-/

namespace A119844.P606732060625961283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119844.P606732060625961283

/-! ## A119844.P220202592063729770

`A119842(A119843(n+1))`
-/

namespace A119844.P220202592063729770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A119843 (n + 1)).toNat

end

end A119844.P220202592063729770

/-! ## A119844.P3732055202231189280

`record[lcm((-1)^n, A119842(A008574(n)))]`
-/

namespace A119844.P3732055202231189280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A119842 (A008574 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119844.P3732055202231189280

/-!
# A119845: Positions where new distinct values appear in A119842.

The programs for A119845, there is no canonical definition to state claims against.
-/

/-! ## A119845.P17350910406920469696

`A340082(lcm(∑[round(sqrt(2*n))]+1, (n+1)*Δ[n^3]))`
-/

namespace A119845.P17350910406920469696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340082 (Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))))

end

end A119845.P17350910406920469696

/-! ## A119845.P15051271654445243755

`abs(A349382(A164072(n)))`
-/

namespace A119845.P15051271654445243755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349382 (A164072 n).toNat|

end

end A119845.P15051271654445243755

/-!
# A119846: Distinct values in A119842, in order of appearance.

The programs for A119846, there is no canonical definition to state claims against.
-/

/-! ## A119846.P9295337805226375973

`A119842(A119845(n+1))`
-/

namespace A119846.P9295337805226375973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A119845 (n + 1)).toNat

end

end A119846.P9295337805226375973

/-! ## A119846.P10063318017020214484

`abs(record[A038608(A119842(n+1))])`
-/

namespace A119846.P10063318017020214484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A119842 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A119846.P10063318017020214484

/-!
# A119847: Positions where A119842 is zero.

The programs for A119847, the canonical program `A119847.P2369807592707394206` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119847 has offset 1).

The definition of A119847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119847.P5698573696518135955

`eq[0, A119842(n+1)]+1`
-/

namespace A119847.P5698573696518135955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119847.P5698573696518135955

namespace A119847

/-- `eq[0, A119842(n+1)]+1` -/
def P5698573696518135955.Spec : Prop :=
  ∀ n, (P5698573696518135955.a n : ℤ) = A119847 (n + 1)

end A119847

/-! ## A119847.P13162925606938986116

`lt[A119842(A028310(n)), 1]`
-/

namespace A119847.P13162925606938986116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119847.P13162925606938986116

namespace A119847

/-- `lt[A119842(A028310(n)), 1]` -/
def P13162925606938986116.Spec : Prop :=
  ∀ n, (P13162925606938986116.a n : ℤ) = A119847 (n + 1)

end A119847

/-! ## A119847.P12007465957321005207

`A153152(eq[0, A119842(n+1)])`
-/

namespace A119847.P12007465957321005207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119847.P12007465957321005207

namespace A119847

/-- `A153152(eq[0, A119842(n+1)])` -/
def P12007465957321005207.Spec : Prop :=
  ∀ n, P12007465957321005207.a n = A119847 (n + 1)

end A119847

/-! ## A119847.P14487005718043450185

`A020725(lt[A119842(n+1), 1])`
-/

namespace A119847.P14487005718043450185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119847.P14487005718043450185

namespace A119847

/-- `A020725(lt[A119842(n+1), 1])` -/
def P14487005718043450185.Spec : Prop :=
  ∀ n, P14487005718043450185.a n = A119847 (n + 1)

end A119847

/-! ## A119847.P10637630237041335544

`A065475(lt[A119842(n+1), 1])`
-/

namespace A119847.P10637630237041335544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119847.P10637630237041335544

namespace A119847

/-- `A065475(lt[A119842(n+1), 1])` -/
def P10637630237041335544.Spec : Prop :=
  ∀ n, P10637630237041335544.a n = A119847 (n + 1)

end A119847

/-! ## A119847.P2369807592707394206

`∪[A119899(n+1), A120944(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A119847

/-- `∪[A119899(n+1), A120944(n+1)]` -/
def P2369807592707394206.Spec : Prop :=
  ∀ n, (P2369807592707394206.a n : ℤ) = A119847 (n + 1)

theorem P2369807592707394206.correct : P2369807592707394206.Spec := by
  intro n
  simp only [A119847, Nat.add_sub_cancel]

end A119847

/-! ## A119847.P2620393418124328085

`∪[A119899(n+1), A327829(n+1)]`
-/

namespace A119847.P2620393418124328085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119847.P2620393418124328085

namespace A119847

/-- `∪[A119899(n+1), A327829(n+1)]` -/
def P2620393418124328085.Spec : Prop :=
  ∀ n, (P2620393418124328085.a n : ℤ) = A119847 (n + 1)

end A119847

/-! ## A119847.P2254123189210006213

`record[A229153(n+1)-A119842(A229153(n+1))]`
-/

namespace A119847.P2254123189210006213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1) - A119842 (A229153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119847.P2254123189210006213

namespace A119847

/-- `record[A229153(n+1)-A119842(A229153(n+1))]` -/
def P2254123189210006213.Spec : Prop :=
  ∀ n, P2254123189210006213.a n = A119847 (n + 1)

end A119847

/-! ## A119847.P13901991936266666330

`lt[A119842(A123108(2*n)), 1]`
-/

namespace A119847.P13901991936266666330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A123108 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119847.P13901991936266666330

namespace A119847

/-- `lt[A119842(A123108(2*n)), 1]` -/
def P13901991936266666330.Spec : Prop :=
  ∀ n, (P13901991936266666330.a n : ℤ) = A119847 (n + 1)

end A119847

/-! ## A119847.P13648229257077002415

`A113484(eq[0, A119842(n+1)])`
-/

namespace A119847.P13648229257077002415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119847.P13648229257077002415

namespace A119847

/-- `A113484(eq[0, A119842(n+1)])` -/
def P13648229257077002415.Spec : Prop :=
  ∀ n, P13648229257077002415.a n = A119847 (n + 1)

end A119847

/-! ## A119847.P18179150881704910954

`eq[0, A119842(A233583(n+1))]`
-/

namespace A119847.P18179150881704910954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119847.P18179150881704910954

namespace A119847

/-- `eq[0, A119842(A233583(n+1))]` -/
def P18179150881704910954.Spec : Prop :=
  ∀ n, (P18179150881704910954.a n : ℤ) = A119847 (n + 1)

end A119847

/-!
# A119848: Positions where A119842 is not zero.

The programs for A119848, the canonical program `A119848.P16621179210956495199` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119848 has offset 1).

The definition of A119848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119848.P16098965934821663871

`lt[0, A119842(n+1)]+1`
-/

namespace A119848.P16098965934821663871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119848.P16098965934821663871

namespace A119848

/-- `lt[0, A119842(n+1)]+1` -/
def P16098965934821663871.Spec : Prop :=
  ∀ n, (P16098965934821663871.a n : ℤ) = A119848 (n + 1)

end A119848

/-! ## A119848.P16621179210956495199

`∩[A344609(n+1), A363597(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A119848

/-- `∩[A344609(n+1), A363597(n+1)]` -/
def P16621179210956495199.Spec : Prop :=
  ∀ n, (P16621179210956495199.a n : ℤ) = A119848 (n + 1)

theorem P16621179210956495199.correct : P16621179210956495199.Spec := by
  intro n
  simp only [A119848, Nat.add_sub_cancel]

end A119848

/-! ## A119848.P1983710949855593903

`lt[round(cos(4)^n), A119842(A123108(2*n))]`
-/

namespace A119848.P1983710949855593903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119848.P1983710949855593903

namespace A119848

/-- `lt[round(cos(4)^n), A119842(A123108(2*n))]` -/
def P1983710949855593903.Spec : Prop :=
  ∀ n, (P1983710949855593903.a n : ℤ) = A119848 (n + 1)

end A119848

/-! ## A119848.P10741991185341517991

`eq[1, A323022(A119842(n+1)+1)]+1`
-/

namespace A119848.P10741991185341517991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A119842 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119848.P10741991185341517991

namespace A119848

/-- `eq[1, A323022(A119842(n+1)+1)]+1` -/
def P10741991185341517991.Spec : Prop :=
  ∀ n, (P10741991185341517991.a n : ℤ) = A119848 (n + 1)

end A119848

/-! ## A119848.P18130119131669400472

`record[A000027(n+1)*A323022(A119842(n+1)+1)]`
-/

namespace A119848.P18130119131669400472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A323022 (A119842 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119848.P18130119131669400472

namespace A119848

/-- `record[A000027(n+1)*A323022(A119842(n+1)+1)]` -/
def P18130119131669400472.Spec : Prop :=
  ∀ n, P18130119131669400472.a n = A119848 (n + 1)

end A119848

/-! ## A119848.P14961508160091924836

`record[A008619(2*n)*A323022(A119842(n+1)+1)]`
-/

namespace A119848.P14961508160091924836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A323022 (A119842 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119848.P14961508160091924836

namespace A119848

/-- `record[A008619(2*n)*A323022(A119842(n+1)+1)]` -/
def P14961508160091924836.Spec : Prop :=
  ∀ n, P14961508160091924836.a n = A119848 (n + 1)

end A119848

/-!
# A119849: Nonzero values of A119842, in order of appearance.

The programs for A119849, there is no canonical definition to state claims against.
-/

/-! ## A119849.P1925080419153221719

`A119842(A119848(n+1))`
-/

namespace A119849.P1925080419153221719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A119848 (n + 1)).toNat

end

end A119849.P1925080419153221719

/-! ## A119849.P5050069799782802586

`filter[A119842(n+1), A022932(#)]`
-/

namespace A119849.P5050069799782802586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A119849.P5050069799782802586

/-! ## A119849.P5675211165948530441

`p?[A119842(n+1)+1]-A151935(n)!`
-/

namespace A119849.P5675211165948530441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.factorial (A151935 n).toNat : ℤ)

end

end A119849.P5675211165948530441

/-! ## A119849.P15405301074475651315

`A049559(gcd(A002260(n+1), A093886(n+1)))`
-/

namespace A119849.P15405301074475651315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (Int.gcd (A002260 (n + 1)) (A093886 (n + 1)))

end

end A119849.P15405301074475651315

/-! ## A119849.P9090722778391690058

`gcd(A077028(A233308(n)), A080577(n+1))`
-/

namespace A119849.P9090722778391690058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077028 (A233308 n).toNat) (A080577 (n + 1))

end

end A119849.P9090722778391690058

/-!
# A119850: Positions where A119842 is greater than one.

The programs for A119850, the canonical program `A119850.P7905821077674988705` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119850 has offset 1).

The definition of A119850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119850.P17948093363169045762

`lt[1, A119842(n+1)]+1`
-/

namespace A119850.P17948093363169045762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119850.P17948093363169045762

namespace A119850

/-- `lt[1, A119842(n+1)]+1` -/
def P17948093363169045762.Spec : Prop :=
  ∀ n, (P17948093363169045762.a n : ℤ) = A119850 (n + 1)

end A119850

/-! ## A119850.P17177644030471493386

`lt[1, A119842(A028310(n))]`
-/

namespace A119850.P17177644030471493386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119850.P17177644030471493386

namespace A119850

/-- `lt[1, A119842(A028310(n))]` -/
def P17177644030471493386.Spec : Prop :=
  ∀ n, (P17177644030471493386.a n : ℤ) = A119850 (n + 1)

end A119850

/-! ## A119850.P4694850652215679780

`A020725(lt[1, A119842(n+1)])`
-/

namespace A119850.P4694850652215679780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A119850.P4694850652215679780

namespace A119850

/-- `A020725(lt[1, A119842(n+1)])` -/
def P4694850652215679780.Spec : Prop :=
  ∀ n, P4694850652215679780.a n = A119850 (n + 1)

end A119850

/-! ## A119850.P5719837708077180298

`A065475(lt[1, A119842(n+1)])`
-/

namespace A119850.P5719837708077180298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A119850.P5719837708077180298

namespace A119850

/-- `A065475(lt[1, A119842(n+1)])` -/
def P5719837708077180298.Spec : Prop :=
  ∀ n, P5719837708077180298.a n = A119850 (n + 1)

end A119850

/-! ## A119850.P7905821077674988705

`∩[A119848(n+1), A376271(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A119850

/-- `∩[A119848(n+1), A376271(n+1)]` -/
def P7905821077674988705.Spec : Prop :=
  ∀ n, (P7905821077674988705.a n : ℤ) = A119850 (n + 1)

theorem P7905821077674988705.correct : P7905821077674988705.Spec := by
  intro n
  simp only [A119850, Nat.add_sub_cancel]

end A119850

/-! ## A119850.P5949808254684173352

`∩[A344609(n+1), A376271(n+1)]`
-/

namespace A119850.P5949808254684173352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119850.P5949808254684173352

namespace A119850

/-- `∩[A344609(n+1), A376271(n+1)]` -/
def P5949808254684173352.Spec : Prop :=
  ∀ n, (P5949808254684173352.a n : ℤ) = A119850 (n + 1)

end A119850

/-! ## A119850.P13793977059089326668

`lt[1, A119842(A123108(2*n))]`
-/

namespace A119850.P13793977059089326668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119850.P13793977059089326668

namespace A119850

/-- `lt[1, A119842(A123108(2*n))]` -/
def P13793977059089326668.Spec : Prop :=
  ∀ n, (P13793977059089326668.a n : ℤ) = A119850 (n + 1)

end A119850

/-! ## A119850.P12526186625063592005

`lt[1, A119842(A233583(n+1))]`
-/

namespace A119850.P12526186625063592005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119850.P12526186625063592005

namespace A119850

/-- `lt[1, A119842(A233583(n+1))]` -/
def P12526186625063592005.Spec : Prop :=
  ∀ n, (P12526186625063592005.a n : ℤ) = A119850 (n + 1)

end A119850

/-!
# A119852: Number of ternary words with exactly one 012.

The programs for A119852, the canonical program `A119852.P13090645802049692301` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119852 has offset 0).

The definition of A119852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119852.P13090645802049692301

`6*a(n-1)-9*a(n-2)-2*a(n-3)+6*a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=6, a(5)=27`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119852

/-- `6*a(n-1)-9*a(n-2)-2*a(n-3)+6*a(n-4)-a(n-6)` -/
def P13090645802049692301.Spec : Prop :=
  ∀ n, P13090645802049692301.a n = A119852 n

theorem P13090645802049692301.correct : P13090645802049692301.Spec := by
  intro n
  simp only [A119852]

end A119852

/-! ## A119852.P5077522288030337689

`A081134(A005774(n+1))`
-/

namespace A119852.P5077522288030337689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A005774 (n + 1)).toNat

end

end A119852.P5077522288030337689

namespace A119852

/-- `A081134(A005774(n+1))` -/
def P5077522288030337689.Spec : Prop :=
  ∀ n, P5077522288030337689.a n = A119852 n

end A119852

/-! ## A119852.P15957729516422119400

`A003602(3^n)-A057960(n)`
-/

namespace A119852.P15957729516422119400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (3 ^ n) - A057960 n

end

end A119852.P15957729516422119400

namespace A119852

/-- `A003602(3^n)-A057960(n)` -/
def P15957729516422119400.Spec : Prop :=
  ∀ n, P15957729516422119400.a n = A119852 n

end A119852

/-! ## A119852.P2156246347875747708

`A008619(3^n)-A057960(n)`
-/

namespace A119852.P2156246347875747708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 ^ n) - A057960 n

end

end A119852.P2156246347875747708

namespace A119852

/-- `A008619(3^n)-A057960(n)` -/
def P2156246347875747708.Spec : Prop :=
  ∀ n, P2156246347875747708.a n = A119852 n

end A119852

/-! ## A119852.P4349753267407780224

`A152271(3^n)-A057960(n)`
-/

namespace A119852.P4349753267407780224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (3 ^ n) - A057960 n

end

end A119852.P4349753267407780224

namespace A119852

/-- `A152271(3^n)-A057960(n)` -/
def P4349753267407780224.Spec : Prop :=
  ∀ n, P4349753267407780224.a n = A119852 n

end A119852

/-!
# A119853: Related to numbers of equicolorable trees (see Pippenger article for definition).

The programs for A119853, there is no canonical definition to state claims against.
-/

/-! ## A119853.P17349272471337111735

`A325371(A105152(n))-A277822(n)`
-/

namespace A119853.P17349272471337111735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325371 (A105152 n).toNat - A277822 n

end

end A119853.P17349272471337111735

/-! ## A119853.P14195951299650852712

`A008618(Δ[A321680(n+1)])`
-/

namespace A119853.P14195951299650852712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (f1 (n + 1) - f1 n).toNat

end

end A119853.P14195951299650852712

/-! ## A119853.P13957966620026512654

`A118168(A287141(n))-char[∏{p}[n, #]]`
-/

namespace A119853.P13957966620026512654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A287141 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A119853.P13957966620026512654

/-! ## A119853.P1145455821933176153

`A081031(A122347(6*a(n-2)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2`
-/

namespace A119853.P1145455821933176153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 2] fun n a =>
  A081031 (A122347 (6 * a (n - 2) - a (n - 4)).toNat).toNat

end

end A119853.P1145455821933176153

/-! ## A119853.P17098893891097837162

`A075853(n)-A000120(A075873(n+1))`
-/

namespace A119853.P17098893891097837162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075853 n - A000120 (A075873 (n + 1)).toNat

end

end A119853.P17098893891097837162

/-!
# A119854: Related to numbers of equicolorable trees (see Pippenger article for definition).

The programs for A119854, there is no canonical definition to state claims against.
-/

/-! ## A119854.P15345722387566313736

`A026819(A151150(n))-A037468(n)`
-/

namespace A119854.P15345722387566313736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A151150 n).toNat - A037468 n

end

end A119854.P15345722387566313736

/-! ## A119854.P7917937203610578773

`A104309(A001519(n))-A273943(n)`
-/

namespace A119854.P7917937203610578773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104309 (A001519 n).toNat - A273943 n

end

end A119854.P7917937203610578773

/-! ## A119854.P1697275687863237989

`A185283(xor(A015565(n), A355337(n)))`
-/

namespace A119854.P1697275687863237989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (Int.xor (A015565 n) (A355337 n)).toNat

end

end A119854.P1697275687863237989

/-!
# A119855: Number of equicolorable rooted trees on 2n nodes.

The programs for A119855, there is no canonical definition to state claims against.
-/

/-! ## A119855.P16208602708794037077

`A122084(∑[4*n]+2)`
-/

namespace A119855.P16208602708794037077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122084 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A119855.P16208602708794037077

/-! ## A119855.P16853053956913129548

`record[A122084(n+1)/A122087(2*n+1)]`
-/

namespace A119855.P16853053956913129548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122084 (n + 1) : ℚ) / (A122087 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119855.P16853053956913129548

/-!
# A119856: Number of equicolorable (unrooted) trees on 2n nodes.

The programs for A119856, there is no canonical definition to state claims against.
-/

/-! ## A119856.P17339635483826325841

`(A000081(n+1)+A119857(n+1))/2`
-/

namespace A119856.P17339635483826325841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 (n + 1) + A119857 (n + 1) : ℚ) / 2

end

end A119856.P17339635483826325841

/-! ## A119856.P5208869647491351613

`A122087((n+1)²+1)`
-/

namespace A119856.P5208869647491351613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122087 ((n + 1) ^ 2 + 1)

end

end A119856.P5208869647491351613

/-! ## A119856.P4858460863777453315

`A027923(A211210(n)-A054938(n+1))`
-/

namespace A119856.P4858460863777453315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A211210 n - A054938 (n + 1)).toNat

end

end A119856.P4858460863777453315

/-!
# A119857: Number of equicolored (unrooted) trees on 2n nodes.

The programs for A119857, there is no canonical definition to state claims against.
-/

/-! ## A119857.P6637037639866650544

`A119856(n+1)+A119856(n+1)-A000081(n+1)`
-/

namespace A119857.P6637037639866650544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119856 (n + 1) + (A119856 (n + 1) - A000081 (n + 1))

end

end A119857.P6637037639866650544

/-! ## A119857.P10771500909581715695

`A329054(∑[4*(n+1)])`
-/

namespace A119857.P10771500909581715695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119857.P10771500909581715695

/-! ## A119857.P13525233291749571497

`or(A000007(n), A329054(A046092(n+1)))`
-/

namespace A119857.P13525233291749571497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A329054 (A046092 (n + 1)).toNat)

end

end A119857.P13525233291749571497

/-! ## A119857.P13102679060573107702

`A122085((n+1)*2*n+3)`
-/

namespace A119857.P13102679060573107702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122085 ((n + 1) * (2 * n) + 3)

end

end A119857.P13102679060573107702

/-!
# A119859: Lesser of the twin primes formed by 8x^4-1 and 8x^4+1 where x is a multiple of 3.

The programs for A119859, there is no canonical definition to state claims against.
-/

/-! ## A119859.P13960361908289227893

`A119860(n+1)-2`
-/

namespace A119859.P13960361908289227893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119860 (n + 1) - 2

end

end A119859.P13960361908289227893

/-! ## A119859.P11475258976893393755

`A152620(A000108(n²%(n+1)))+A119860(n+1)`
-/

namespace A119859.P11475258976893393755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152620 (A000108 (n ^ 2 % (n + 1))).toNat + A119860 (n + 1)

end

end A119859.P11475258976893393755

/-! ## A119859.P9775819706363165026

`A178412(A045319(2*(n+1)))+A119860(n+1)`
-/

namespace A119859.P9775819706363165026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178412 (A045319 (2 * (n + 1))).toNat + A119860 (n + 1)

end

end A119859.P9775819706363165026

/-! ## A119859.P15725102321376153603

`A119910(A119872(n+1))+A119860(n+1)`
-/

namespace A119859.P15725102321376153603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119910 (A119872 (n + 1)).toNat + A119860 (n + 1)

end

end A119859.P15725102321376153603

/-! ## A119859.P5013624626200580463

`A119910(A119877(n))+A119860(n+1)`
-/

namespace A119859.P5013624626200580463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119910 (A119877 n).toNat + A119860 (n + 1)

end

end A119859.P5013624626200580463

/-!
# A119860: Greater of the twin primes of the form 8*k^4 - 1 and 8*k^4 + 1 where k is a multiple of 3.

The programs for A119860, there is no canonical definition to state claims against.
-/

/-! ## A119860.P7582098079708747427

`A119859(n+1)+2`
-/

namespace A119860.P7582098079708747427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119859 (n + 1) + 2

end

end A119860.P7582098079708747427

/-!
# A119861: Number of distinct prime factors of the n-th odd Catalan number, A038003(n).

The programs for A119861, there is no canonical definition to state claims against.
-/

/-! ## A119861.P17689050145359487248

`A080405(2^(n+1)-1)`
-/

namespace A119861.P17689050145359487248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (2 ^ (n + 1) - 1)

end

end A119861.P17689050145359487248

/-! ## A119861.P6680111613733942181

`A067434(∑[2^n])-1`
-/

namespace A119861.P6680111613733942181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A119861.P6680111613733942181

/-! ## A119861.P7155204120478221746

`record[Δ[A067434(A094024(n))]]`
-/

namespace A119861.P7155204120478221746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A094024 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119861.P7155204120478221746

/-! ## A119861.P3730630874350926520

`A023443(A067434(∑[2^n]))`
-/

namespace A119861.P3730630874350926520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067434 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A119861.P3730630874350926520

/-! ## A119861.P8288419871143138843

`A034973(A000225(n+2)-1)-1`
-/

namespace A119861.P8288419871143138843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A000225 (n + 2) - 1).toNat - 1

end

end A119861.P8288419871143138843

/-!
# A119862: Smallest number not yet used that is either a divisor or multiple of both n and a(n-1).

The programs for A119862, there is no canonical definition to state claims against.
-/

/-! ## A119862.P5800100716595609491

`gcd(A074199(3*(n+1)), A233583((n+1)*a(n-1)+1))` with `a(0)=1`
-/

namespace A119862.P5800100716595609491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A074199 (3 * (n + 1))) (A233583 ((n + 1) * a (n - 1) + 1))

end

end A119862.P5800100716595609491

/-!
# A119863: Numbers k such that k^3 + k^2 + 1 is prime.

The programs for A119863, there is no canonical definition to state claims against.
-/

/-! ## A119863.P15987304777110040322

`floor(root(A120479(n+1), 3))`
-/

namespace A119863.P15987304777110040322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120479 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A119863.P15987304777110040322

/-! ## A119863.P13202599521390057370

`A000027(round(root(A120479(n+1), 3)))`
-/

namespace A119863.P13202599521390057370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A120479 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A119863.P13202599521390057370

/-! ## A119863.P12789983493017352213

`round(root(A120479(n+1), 3))%A002144(n+1)`
-/

namespace A119863.P12789983493017352213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A120479 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A002144 (n + 1))

end

end A119863.P12789983493017352213

/-! ## A119863.P2693342947088994332

`A265643(n+1)²*round(root(A120479(n+1), 3))`
-/

namespace A119863.P2693342947088994332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265643 (n + 1) ^ 2 * SequenceMachineLib.roundAway ((A120479 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A119863.P2693342947088994332

/-! ## A119863.P11249095132121732490

`A164677(2*n+1)²*round(root(A120479(n+1), 3))`
-/

namespace A119863.P11249095132121732490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (2 * n + 1) ^ 2 * SequenceMachineLib.roundAway ((A120479 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A119863.P11249095132121732490

/-!
# A119864: Numbers m such that the numerator of BernoulliB(m) is divisible by 691.

The programs for A119864, there is no canonical definition to state claims against.
-/

/-! ## A119864.P11316095229253591189

`2*A281502(n+1)`
-/

namespace A119864.P11316095229253591189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281502 (n + 1)

end

end A119864.P11316095229253591189

/-! ## A119864.P15297449433327628296

`A004277(A281502(n+1))`
-/

namespace A119864.P15297449433327628296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A281502 (n + 1)).toNat

end

end A119864.P15297449433327628296

/-! ## A119864.P4992272950704013185

`A004275(A281502(n+1)+1)`
-/

namespace A119864.P4992272950704013185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A281502 (n + 1) + 1).toNat

end

end A119864.P4992272950704013185

/-! ## A119864.P11452591788650733416

`A051755(A281502(n+1)+1)`
-/

namespace A119864.P11452591788650733416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A281502 (n + 1) + 1).toNat

end

end A119864.P11452591788650733416

/-! ## A119864.P15692654713704749059

`A316571(A281502(n+1)+1)`
-/

namespace A119864.P15692654713704749059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A281502 (n + 1) + 1).toNat

end

end A119864.P15692654713704749059

/-!
# A119865: Triangle T(n,k), 0<=k<=n, read by rows, given by [1, 1, 0, 1, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 1, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A119865, there is no canonical definition to state claims against.
-/

/-! ## A119865.P6790456384446766207

`A212207(A061579(n))+A055672(A000141(n))`
-/

namespace A119865.P6790456384446766207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212207 (A061579 n).toNat + A055672 (A000141 n).toNat

end

end A119865.P6790456384446766207

/-! ## A119865.P637326821781837599

`A212207(A061579(n))+A055672(A212207(n)²)`
-/

namespace A119865.P637326821781837599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212207 (A061579 n).toNat + A055672 (A212207 n ^ 2).toNat

end

end A119865.P637326821781837599

/-! ## A119865.P15429653308156834463

`A212207(A061579(n))+A003982(A054801(n+1))`
-/

namespace A119865.P15429653308156834463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212207 (A061579 n).toNat + A003982 (A054801 (n + 1)).toNat

end

end A119865.P15429653308156834463

/-! ## A119865.P10788571219272982159

`A212207(A061579(n))+A088917(A094394(n+1))`
-/

namespace A119865.P10788571219272982159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212207 (A061579 n).toNat + A088917 (A094394 (n + 1)).toNat

end

end A119865.P10788571219272982159

/-! ## A119865.P12557250655491888024

`A212207(A061579(n)%A220507(n+4))`
-/

namespace A119865.P12557250655491888024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212207 (Int.tmod (A061579 n) (A220507 (n + 4))).toNat

end

end A119865.P12557250655491888024

/-!
# A119867: Number of different values assumed by a*b+c*d as a,b,c,d range between 1 and n.

The programs for A119867, there is no canonical definition to state claims against.
-/

/-! ## A119867.P18423777045407135242

`A225253(n+1)-2`
-/

namespace A119867.P18423777045407135242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225253 (n + 1) - 2

end

end A119867.P18423777045407135242

/-! ## A119867.P11176565539209770008

`∑{e}[A000040(n+1), A225253(n+1)+A208604(#)]`
-/

namespace A119867.P11176565539209770008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A225253 (n + 1) + A208604 (Nat.factorization (f1 n).natAbs p))

end

end A119867.P11176565539209770008

/-! ## A119867.P10217890621625106601

`∑{e}[A107008(n+1), A225253(n+1)+A208604(#)]`
-/

namespace A119867.P10217890621625106601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A225253 (n + 1) + A208604 (Nat.factorization (f1 n).natAbs p))

end

end A119867.P10217890621625106601

/-! ## A119867.P11855398520075935468

`∑{e}[A166307(n+1), A225253(n+1)+A208604(#)]`
-/

namespace A119867.P11855398520075935468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A225253 (n + 1) + A208604 (Nat.factorization (f1 n).natAbs p))

end

end A119867.P11855398520075935468

/-! ## A119867.P16697688499278221619

`∑{e}[A067747(2*n+1), A225253(n+1)+A208604(#)]`
-/

namespace A119867.P16697688499278221619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A225253 (n + 1) + A208604 (Nat.factorization (f1 n).natAbs p))

end

end A119867.P16697688499278221619

/-! ## A119867.P17544529005937407843

`A023444(A225253(n+1))`
-/

namespace A119867.P17544529005937407843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A225253 (n + 1)).toNat

end

end A119867.P17544529005937407843

/-! ## A119867.P3801221364785929491

`A289207(A225253(n+1)%A158658(n+1))`
-/

namespace A119867.P3801221364785929491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.tmod (A225253 (n + 1)) (A158658 (n + 1))).toNat

end

end A119867.P3801221364785929491

/-! ## A119867.P13099080201055704177

`A289207(lcm(A225253(n+1), A309873(n+1)))`
-/

namespace A119867.P13099080201055704177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.lcm (A225253 (n + 1)) (A309873 (n + 1)))

end

end A119867.P13099080201055704177

/-! ## A119867.P16783571254179567544

`A004274(A225253(n+1)+1)%(A225253(n+1)+1)`
-/

namespace A119867.P16783571254179567544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004274 (A225253 (n + 1) + 1).toNat) (A225253 (n + 1) + 1)

end

end A119867.P16783571254179567544

/-! ## A119867.P9208189625986635612

`A225252(∑[n+1]+2)-2`
-/

namespace A119867.P9208189625986635612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225252 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 2

end

end A119867.P9208189625986635612

/-!
# A119868: Number of different values assumed by a/b+c/d as a,b,c,d range between 1 and n.

The programs for A119868, there is no canonical definition to state claims against.
-/

/-! ## A119868.P6540814480174907418

`A350945(A028377(n+1)+n)`
-/

namespace A119868.P6540814480174907418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (A028377 (n + 1) + (n : ℤ)).toNat

end

end A119868.P6540814480174907418

/-!
# A119869: Sizes of successive clusters in f.c.c. lattice centered at a lattice point.

The programs for A119869, there is no canonical definition to state claims against.
-/

/-! ## A119869.P12041681582319211362

`∑[A004015(n)]`
-/

namespace A119869.P12041681582319211362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P12041681582319211362

/-! ## A119869.P16017718277661055077

`∑[A005875(2*n)]`
-/

namespace A119869.P16017718277661055077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P16017718277661055077

/-! ## A119869.P13708936227785344405

`∑[A213384(2*n)]`
-/

namespace A119869.P13708936227785344405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P13708936227785344405

/-! ## A119869.P15670171471239165771

`A213384(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A119869.P15670171471239165771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213384 (n + n) + a (n - 1)

end

end A119869.P15670171471239165771

/-! ## A119869.P6050671656766366871

`∑[abs(A213384(A005843(n)))]`
-/

namespace A119869.P6050671656766366871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 (A005843 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P6050671656766366871

/-! ## A119869.P6157758789084545173

`∑[sqrt(A138202(2*n))]`
-/

namespace A119869.P6157758789084545173
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P6157758789084545173

/-! ## A119869.P13182261675288887946

`∑[A084101(2*n)*A246631(2*n)]`
-/

namespace A119869.P13182261675288887946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (2 * n) * A246631 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P13182261675288887946

/-! ## A119869.P3018623127355029232

`∑[A014455(4*n)]`
-/

namespace A119869.P3018623127355029232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P3018623127355029232

/-! ## A119869.P6698116130324802699

`∑[A132429(2*n+1)*A319078(2*n)]`
-/

namespace A119869.P6698116130324802699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * n + 1) * A319078 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P6698116130324802699

/-! ## A119869.P9000166496059398473

`∑[A004013(8*n)]`
-/

namespace A119869.P9000166496059398473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P9000166496059398473

/-! ## A119869.P10844003089051707508

`∑[A005925(8*n)]`
-/

namespace A119869.P10844003089051707508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P10844003089051707508

/-! ## A119869.P2779060488136840956

`A005875(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A119869.P2779060488136840956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005875 (8 * n) + a (n - 1)

end

end A119869.P2779060488136840956

/-! ## A119869.P5425340958756468060

`A212885(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A119869.P5425340958756468060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212885 (8 * n) + a (n - 1)

end

end A119869.P5425340958756468060

/-! ## A119869.P12581143646124579628

`A246631(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A119869.P12581143646124579628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246631 (8 * n) + a (n - 1)

end

end A119869.P12581143646124579628

/-! ## A119869.P7785651370598355387

`∑[A014457(A008590(2*n))]`
-/

namespace A119869.P7785651370598355387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (A008590 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P7785651370598355387

/-! ## A119869.P7574085668116598634

`∑[A319078(2*n+6*n)]`
-/

namespace A119869.P7574085668116598634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (2 * n + 6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119869.P7574085668116598634

/-!
# A119870: Number of vertices of the root-n Waterman polyhedron.

The programs for A119870, there is no canonical definition to state claims against.
-/

/-! ## A119870.P8236759111805117260

`A119872(n+1)+2-A119871(n+1)`
-/

namespace A119870.P8236759111805117260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119872 (n + 1) + (2 - A119871 (n + 1))

end

end A119870.P8236759111805117260

/-! ## A119870.P6918168470245191626

`A004443(A119872(n+1))-A119871(n+1)`
-/

namespace A119870.P6918168470245191626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A119872 (n + 1)).toNat - A119871 (n + 1)

end

end A119870.P6918168470245191626

/-! ## A119870.P3905293301265510971

`A009056(A119872(n+1)-A119871(n+1))`
-/

namespace A119870.P3905293301265510971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A119872 (n + 1) - A119871 (n + 1)).toNat

end

end A119870.P3905293301265510971

/-! ## A119870.P16050989052945235166

`A097362(A119872(n+1)-A119871(n+1))`
-/

namespace A119870.P16050989052945235166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A119872 (n + 1) - A119871 (n + 1)).toNat

end

end A119870.P16050989052945235166

/-!
# A119871: Number of faces of the root-n Waterman polyhedron as defined in A119870.

The programs for A119871, there is no canonical definition to state claims against.
-/

/-! ## A119871.P16264124875114989837

`A119872(n+1)+2-A119870(n+1)`
-/

namespace A119871.P16264124875114989837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119872 (n + 1) + (2 - A119870 (n + 1))

end

end A119871.P16264124875114989837

/-! ## A119871.P11652844723956705619

`A004443(A119872(n+1))-A119870(n+1)`
-/

namespace A119871.P11652844723956705619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A119872 (n + 1)).toNat - A119870 (n + 1)

end

end A119871.P11652844723956705619

/-! ## A119871.P9484018813997904305

`A009056(A119872(n+1)-A119870(n+1))`
-/

namespace A119871.P9484018813997904305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A119872 (n + 1) - A119870 (n + 1)).toNat

end

end A119871.P9484018813997904305

/-! ## A119871.P8948774910130292611

`A097362(A119872(n+1)-A119870(n+1))`
-/

namespace A119871.P8948774910130292611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A119872 (n + 1) - A119870 (n + 1)).toNat

end

end A119871.P8948774910130292611

/-!
# A119872: Number of edges of the root-n Waterman polyhedron as defined in A119870.

The programs for A119872, there is no canonical definition to state claims against.
-/

/-! ## A119872.P8538644510679442299

`A119870(n+1)+A119871(n+1)-2`
-/

namespace A119872.P8538644510679442299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119870 (n + 1) + (A119871 (n + 1) - 2)

end

end A119872.P8538644510679442299

/-! ## A119872.P16445899535112077736

`A004443(A119871(n+1)+A119870(n+1))`
-/

namespace A119872.P16445899535112077736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A119871 (n + 1) + A119870 (n + 1)).toNat

end

end A119872.P16445899535112077736

/-! ## A119872.P10593648292883418650

`A129760(A119871(n+1)+A119870(n+1))`
-/

namespace A119872.P10593648292883418650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A119871 (n + 1) + A119870 (n + 1)).toNat

end

end A119872.P10593648292883418650

/-! ## A119872.P11884260787814215438

`A273724(A119871(n+1)+A119870(n+1))`
-/

namespace A119872.P11884260787814215438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (A119871 (n + 1) + A119870 (n + 1)).toNat

end

end A119872.P11884260787814215438

/-! ## A119872.P15742795035756212713

`A289207(A119871(n+1)+A119870(n+1))`
-/

namespace A119872.P15742795035756212713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A119871 (n + 1) + A119870 (n + 1)).toNat

end

end A119872.P15742795035756212713

/-!
# A119873: 3*Volume of the root-n Waterman polyhedron as defined in A119870.

The programs for A119873, there is no canonical definition to state claims against.
-/

/-! ## A119873.P13098660617970496938

`A065984(A337854(n+1))`
-/

namespace A119873.P13098660617970496938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065984 (A337854 (n + 1)).toNat

end

end A119873.P13098660617970496938

/-!
# A119874: Sizes of successive clusters in f.c.c. lattice centered at an octahedral hole.

The programs for A119874, there is no canonical definition to state claims against.
-/

/-! ## A119874.P8471158259776314421

`∑[A005887(n)]`
-/

namespace A119874.P8471158259776314421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P8471158259776314421

/-! ## A119874.P8199383841022490802

`∑[2*A045826(n)]`
-/

namespace A119874.P8199383841022490802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P8199383841022490802

/-! ## A119874.P11437183289363770912

`∑[A005875(Δ[n²])]`
-/

namespace A119874.P11437183289363770912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P11437183289363770912

/-! ## A119874.P6887212003986950758

`∑[sqrt(A138202(comp[2*n]))]`
-/

namespace A119874.P6887212003986950758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P6887212003986950758

/-! ## A119874.P947133264563386027

`∑[abs(A213384(2*n+1))]`
-/

namespace A119874.P947133264563386027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P947133264563386027

/-! ## A119874.P16963412947194758575

`∑[lcm(2, A005875(2*n+1))]`
-/

namespace A119874.P16963412947194758575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A005875 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P16963412947194758575

/-! ## A119874.P1900749418399775891

`abs(∑[A213384(A005408(n))])`
-/

namespace A119874.P1900749418399775891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A119874.P1900749418399775891

/-! ## A119874.P10562873646247603902

`∑[A005875(2*n+1)%A017485(n)]`
-/

namespace A119874.P10562873646247603902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005875 (2 * n + 1)) (A017485 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P10562873646247603902

/-! ## A119874.P4850351934137024989

`∑[A000038(n+1)-A213384(2*n+1)]`
-/

namespace A119874.P4850351934137024989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A213384 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P4850351934137024989

/-! ## A119874.P12177003608190109312

`∑[A117609(2*n+1)-A117609(2*n)]`
-/

namespace A119874.P12177003608190109312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 (2 * n + 1) - A117609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P12177003608190109312

/-! ## A119874.P4000006455307433597

`lcm(∑[A213384(2*n+1)], A087960(n+1))`
-/

namespace A119874.P4000006455307433597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A087960 (n + 1))

end

end A119874.P4000006455307433597

/-! ## A119874.P7933509976403056372

`∑[A084101(2*n+1)*A246631(2*n+1)]`
-/

namespace A119874.P7933509976403056372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (2 * n + 1) * A246631 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P7933509976403056372

/-! ## A119874.P11684426873772581203

`∑[gcd(A000038(2*n+1), A213384(2*n+1))]`
-/

namespace A119874.P11684426873772581203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (2 * n + 1)) (A213384 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P11684426873772581203

/-! ## A119874.P3724224648972713639

`A000007(2*(n+2))+∑[A005875(2*n+1)]`
-/

namespace A119874.P3724224648972713639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * (n + 2)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P3724224648972713639

/-! ## A119874.P7132564128272836016

`∑[A005875(2*n+1)]%A103773(n+1)`
-/

namespace A119874.P7132564128272836016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A103773 (n + 1))

end

end A119874.P7132564128272836016

/-! ## A119874.P1841524212554172740

`∑[A004015(4*n+2)]`
-/

namespace A119874.P1841524212554172740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P1841524212554172740

/-! ## A119874.P7445120447436110096

`∑[A014455(2*(2*n+1))]`
-/

namespace A119874.P7445120447436110096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P7445120447436110096

/-! ## A119874.P1313282537652882510

`∑[A132429(2*n)*A319078(2*n+1)]`
-/

namespace A119874.P1313282537652882510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * n) * A319078 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P1313282537652882510

/-! ## A119874.P12802669651231942915

`∑[A004013(8*n+4)]`
-/

namespace A119874.P12802669651231942915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P12802669651231942915

/-! ## A119874.P1300079547250593370

`∑[A213384(8*n+4)]`
-/

namespace A119874.P1300079547250593370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119874.P1300079547250593370

/-!
# A119875: Number of vertices of the root-n Waterman polyhedron of void-center type as defined in A119870.

The programs for A119875, there is no canonical definition to state claims against.
-/

/-! ## A119875.P6872433832207717054

`A119877(n)+2-A119876(n)`
-/

namespace A119875.P6872433832207717054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119877 n + (2 - A119876 n)

end

end A119875.P6872433832207717054

/-! ## A119875.P2295898910879516432

`2-(A119876(or(n, char[1]))-A119877(n))`
-/

namespace A119875.P2295898910879516432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A119876 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) - A119877 n)

end

end A119875.P2295898910879516432

/-! ## A119875.P13784649145709438041

`2-(A119876(2*n-n)-A119877(n))`
-/

namespace A119875.P13784649145709438041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A119876 (2 * n - n) - A119877 n)

end

end A119875.P13784649145709438041

/-! ## A119875.P8462796342161999214

`A004443(A119877(n))-A119876(n)`
-/

namespace A119875.P8462796342161999214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A119877 n).toNat - A119876 n

end

end A119875.P8462796342161999214

/-! ## A119875.P2195547667263357365

`A009056(A119877(n)-A119876(n))`
-/

namespace A119875.P2195547667263357365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A119877 n - A119876 n).toNat

end

end A119875.P2195547667263357365

/-! ## A119875.P8610385667134439246

`A000027(2-(A119876(n)-A119877(n)))`
-/

namespace A119875.P8610385667134439246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 - (A119876 n - A119877 n)).toNat

end

end A119875.P8610385667134439246

/-! ## A119875.P15104636704313708914

`or(2-(A119876(n)-A119877(n)), A000038(n))`
-/

namespace A119875.P15104636704313708914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - (A119876 n - A119877 n)) (A000038 n)

end

end A119875.P15104636704313708914

/-! ## A119875.P12726563293546870085

`∑{d}[2-(A119876(n)-A119877(n)), A000010(#)]`
-/

namespace A119875.P12726563293546870085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A119876 n - A119877 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A119875.P12726563293546870085

/-! ## A119875.P7555291697323832188

`∏{d}[2-(A119876(n)-A119877(n)), A014963(#)]`
-/

namespace A119875.P7555291697323832188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A119876 n - A119877 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A119875.P7555291697323832188

/-! ## A119875.P16404102627930840765

`(2-(A119876(n)-A119877(n)))/A007318(C(2, n))`
-/

namespace A119875.P16404102627930840765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (A119876 n - A119877 n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A119875.P16404102627930840765

/-!
# A119876: Number of faces of the root-n Waterman polyhedron of void-center type as defined in A119870.

The programs for A119876, there is no canonical definition to state claims against.
-/

/-! ## A119876.P16343012386642339076

`A119877(n)+2-A119875(n)`
-/

namespace A119876.P16343012386642339076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119877 n + (2 - A119875 n)

end

end A119876.P16343012386642339076

/-! ## A119876.P5822546219682621295

`A004443(A119877(n))-A119875(n)`
-/

namespace A119876.P5822546219682621295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A119877 n).toNat - A119875 n

end

end A119876.P5822546219682621295

/-! ## A119876.P4280842228000936536

`A009056(A119877(n)-A119875(n))`
-/

namespace A119876.P4280842228000936536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A119877 n - A119875 n).toNat

end

end A119876.P4280842228000936536

/-! ## A119876.P1046466097521690188

`A097362(A119877(n)-A119875(n))`
-/

namespace A119876.P1046466097521690188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A119877 n - A119875 n).toNat

end

end A119876.P1046466097521690188

/-! ## A119876.P1204386032089234809

`A001316(A001316(n))-(A119875(n)-A119877(n))`
-/

namespace A119876.P1204386032089234809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (A119875 n - A119877 n)

end

end A119876.P1204386032089234809

/-! ## A119876.P17499769612793341540

`3-(A014963(A008458(n))-(A119877(n)-A119875(n)))`
-/

namespace A119876.P17499769612793341540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A014963 (A008458 n).toNat - (A119877 n - A119875 n))

end

end A119876.P17499769612793341540

/-!
# A119877: Number of edges of the root-n Waterman polyhedron of void-center type as defined in A119870.

The programs for A119877, there is no canonical definition to state claims against.
-/

/-! ## A119877.P9259659563133616603

`A119875(n)+A119876(n)-2`
-/

namespace A119877.P9259659563133616603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119875 n + (A119876 n - 2)

end

end A119877.P9259659563133616603

/-! ## A119877.P10399904311918702468

`A004443(A119876(n)+A119875(n))`
-/

namespace A119877.P10399904311918702468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A119876 n + A119875 n).toNat

end

end A119877.P10399904311918702468

/-! ## A119877.P12324222732149143243

`A129760(A119876(n)+A119875(n))`
-/

namespace A119877.P12324222732149143243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A119876 n + A119875 n).toNat

end

end A119877.P12324222732149143243

/-! ## A119877.P11727329342019600370

`A273724(A119876(n)+A119875(n))`
-/

namespace A119877.P11727329342019600370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (A119876 n + A119875 n).toNat

end

end A119877.P11727329342019600370

/-! ## A119877.P15711647211437368923

`A276151(A119876(n)+A119875(n))`
-/

namespace A119877.P15711647211437368923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276151 (A119876 n + A119875 n).toNat

end

end A119877.P15711647211437368923

/-! ## A119877.P17837303927840870626

`A289207(A119876(n)+A119875(n))`
-/

namespace A119877.P17837303927840870626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A119876 n + A119875 n).toNat

end

end A119877.P17837303927840870626

/-! ## A119877.P14960879057979045853

`A023445(A119875(n)+A119876(n)+1)`
-/

namespace A119877.P14960879057979045853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A119875 n + (A119876 n + 1)).toNat

end

end A119877.P14960879057979045853

/-! ## A119877.P6773905267134648828

`A124625(A119875(n)-(1-A119876(n)))`
-/

namespace A119877.P6773905267134648828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A119875 n - (1 - A119876 n)).toNat

end

end A119877.P6773905267134648828

/-! ## A119877.P12684189686762905324

`A129760(A119875(n)-(1-A119876(n)))`
-/

namespace A119877.P12684189686762905324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A119875 n - (1 - A119876 n)).toNat

end

end A119877.P12684189686762905324

/-! ## A119877.P892894178264749132

`A273724(A119875(n)-(1-A119876(n)))`
-/

namespace A119877.P892894178264749132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (A119875 n - (1 - A119876 n)).toNat

end

end A119877.P892894178264749132

/-!
# A119878: 3*Volume of the root-n Waterman polyhedron of void-center type as defined in A119870.

The programs for A119878, there is no canonical definition to state claims against.
-/

/-! ## A119878.P5310314524319633322

`A065984(A004911(n+1)+∏{p}[n+1, #])`
-/

namespace A119878.P5310314524319633322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065984 (A004911 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A119878.P5310314524319633322

/-! ## A119878.P16050997192241138481

`A087254(A095384(n)*A269591(3*n))`
-/

namespace A119878.P16050997192241138481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087254 (A095384 n * A269591 (3 * n)).toNat

end

end A119878.P16050997192241138481

/-!
# A119879: Exponential Riordan array (sech(x),x).

The programs for A119879, there is no canonical definition to state claims against.
-/

/-! ## A119879.P11339016935955190046

`A109449(n)*A369736(n)`
-/

namespace A119879.P11339016935955190046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n * A369736 n

end

end A119879.P11339016935955190046

/-! ## A119879.P8149150429270135171

`A247453(n)*A369736(n)`
-/

namespace A119879.P8149150429270135171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 n * A369736 n

end

end A119879.P8149150429270135171

/-! ## A119879.P8075838699163540294

`A056594(A025581(n))*A109449(n)`
-/

namespace A119879.P8075838699163540294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A025581 n).toNat * A109449 n

end

end A119879.P8075838699163540294

/-! ## A119879.P12823753459447109149

`A056594(A051933(n))*A109449(n)`
-/

namespace A119879.P12823753459447109149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A051933 n).toNat * A109449 n

end

end A119879.P12823753459447109149

/-! ## A119879.P14132522055506601945

`A056594(A025581(n))*A247453(n)`
-/

namespace A119879.P14132522055506601945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A025581 n).toNat * A247453 n

end

end A119879.P14132522055506601945

/-! ## A119879.P15414653778663440841

`A056594(A051933(n))*A247453(n)`
-/

namespace A119879.P15414653778663440841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A051933 n).toNat * A247453 n

end

end A119879.P15414653778663440841

/-! ## A119879.P1451173819885173552

`A117569(A025581(n)+1)*A247453(n)`
-/

namespace A119879.P1451173819885173552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A025581 n + 1).toNat * A247453 n

end

end A119879.P1451173819885173552

/-! ## A119879.P6699273333680340949

`A081658(A061579(n))`
-/

namespace A119879.P6699273333680340949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081658 (A061579 n).toNat

end

end A119879.P6699273333680340949

/-! ## A119879.P10713465899498975577

`A081658(A038722(n+1)-1)`
-/

namespace A119879.P10713465899498975577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081658 (A038722 (n + 1) - 1).toNat

end

end A119879.P10713465899498975577

/-! ## A119879.P4466031114092886328

`A081658(A038722(n+2))`
-/

namespace A119879.P4466031114092886328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081658 (A038722 (n + 2)).toNat

end

end A119879.P4466031114092886328

/-! ## A119879.P9487269473158371731

`A056594(A083487(n+1))*A109449(n)`
-/

namespace A119879.P9487269473158371731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A083487 (n + 1)).toNat * A109449 n

end

end A119879.P9487269473158371731

/-!
# A119880: Expansion of e.g.f. exp(2x)*sech(x).

The programs for A119880, there is no canonical definition to state claims against.
-/

/-! ## A119880.P7592043799247342165

`A009832(n)+1`
-/

namespace A119880.P7592043799247342165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n + 1

end

end A119880.P7592043799247342165

/-! ## A119880.P8247189063476876475

`2-A122045(n)`
-/

namespace A119880.P8247189063476876475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A122045 n

end

end A119880.P8247189063476876475

/-! ## A119880.P12255875893956093381

`2-A119879(∑[n])`
-/

namespace A119880.P12255875893956093381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A119879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119880.P12255875893956093381

/-! ## A119880.P14939221750179798956

`2-Δ[A009390(n)]`
-/

namespace A119880.P14939221750179798956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A119880.P14939221750179798956

/-! ## A119880.P11336791543627846491

`∑[A241209(abs(1-n))]`
-/

namespace A119880.P11336791543627846491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241209 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119880.P11336791543627846491

/-! ## A119880.P17017525580536224816

`A241209(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A119880.P17017525580536224816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241209 (n - 1) + a (n - 1)

end

end A119880.P17017525580536224816

/-! ## A119880.P7990955078486699096

`A122045(n)*A280193(n+1)+2`
-/

namespace A119880.P7990955078486699096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n * A280193 (n + 1) + 2

end

end A119880.P7990955078486699096

/-! ## A119880.P12177876232228501939

`A342161(n)+A155585(n)`
-/

namespace A119880.P12177876232228501939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342161 n + A155585 n

end

end A119880.P12177876232228501939

/-! ## A119880.P4859414424179851675

`A155585(n)+A163982(n)+2`
-/

namespace A119880.P4859414424179851675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n + (A163982 n + 2)

end

end A119880.P4859414424179851675

/-! ## A119880.P11650851411002349637

`A155585(n)+1-A217714(n)`
-/

namespace A119880.P11650851411002349637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n + (1 - A217714 n)

end

end A119880.P11650851411002349637

/-!
# A119881: Expansion of e.g.f. exp(3*x)*sech(x).

The programs for A119881, there is no canonical definition to state claims against.
-/

/-! ## A119881.P9870066461696453778

`2^(n+1)-A155585(n)`
-/

namespace A119881.P9870066461696453778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A155585 n

end

end A119881.P9870066461696453778

/-! ## A119881.P10635506034119012025

`A126646(n)+1-A155585(n)`
-/

namespace A119881.P10635506034119012025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A155585 n)

end

end A119881.P10635506034119012025

/-! ## A119881.P7544077077901688292

`A084623(n+1)*A143074(n)`
-/

namespace A119881.P7544077077901688292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 1) * A143074 n

end

end A119881.P7544077077901688292

/-! ## A119881.P516786357427382839

`A000225(n+1)-A155585(n)+1`
-/

namespace A119881.P516786357427382839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A155585 n + 1

end

end A119881.P516786357427382839

/-! ## A119881.P17112487716002429215

`A000079(n+1)-(1-and(2, n))*A108040(∑[n])`
-/

namespace A119881.P17112487716002429215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (1 - (Nat.land 2 n : ℤ)) * A108040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119881.P17112487716002429215

/-! ## A119881.P2222105700402947997

`A000079(n+1)-A009006(n)*A057077(n)`
-/

namespace A119881.P2222105700402947997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A009006 n * A057077 n

end

end A119881.P2222105700402947997

/-! ## A119881.P9034632437380819745

`A000079(n)/A006519(n+1)*A143074(n)`
-/

namespace A119881.P9034632437380819745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A006519 (n + 1) : ℚ) * (A143074 n : ℚ)

end

end A119881.P9034632437380819745

/-! ## A119881.P14445399520896223448

`(A171977(n+1)-A198631(n))*A084623(n+1)`
-/

namespace A119881.P14445399520896223448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) - A198631 n) * A084623 (n + 1)

end

end A119881.P14445399520896223448

/-!
# A119882: Expansion of e.g.f.: (1+x)*sech(x).

The programs for A119882, there is no canonical definition to state claims against.
-/

/-! ## A119882.P12781471755159718069

`A119879(∑[A014681(n)])`
-/

namespace A119882.P12781471755159718069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119882.P12781471755159718069

/-! ## A119882.P5156775645175933521

`A119879(A000217(n)+A000035(n))`
-/

namespace A119882.P5156775645175933521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000217 n + A000035 n).toNat

end

end A119882.P5156775645175933521

/-! ## A119882.P355828492945936147

`A122045(n)+A119879(A000124(n))`
-/

namespace A119882.P355828492945936147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n + A119879 (A000124 n).toNat

end

end A119882.P355828492945936147

/-! ## A119882.P12403212910596660753

`A119879(A000096(n)-A052928(n))`
-/

namespace A119882.P12403212910596660753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000096 n - A052928 n).toNat

end

end A119882.P12403212910596660753

/-! ## A119882.P1972933093512573827

`A119879(A000124(n)-A059841(n))`
-/

namespace A119882.P1972933093512573827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000124 n - A059841 n).toNat

end

end A119882.P1972933093512573827

/-! ## A119882.P10585526290618977490

`A119879(A055998(n)-A042948(n))`
-/

namespace A119882.P10585526290618977490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A055998 n - A042948 n).toNat

end

end A119882.P10585526290618977490

/-! ## A119882.P10706696204969926717

`A119879(A000034(n)+A000217(n)-1)`
-/

namespace A119882.P10706696204969926717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000034 n + (A000217 n - 1)).toNat

end

end A119882.P10706696204969926717

/-! ## A119882.P11470362706129162009

`A119879(A000034(n)-(1-A000217(n)))`
-/

namespace A119882.P11470362706129162009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000034 n - (1 - A000217 n)).toNat

end

end A119882.P11470362706129162009

/-! ## A119882.P675533736156800509

`A119879(A000124(n)-A057427(A166586(n+1)))`
-/

namespace A119882.P675533736156800509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000124 n - A057427 (A166586 (n + 1)).toNat).toNat

end

end A119882.P675533736156800509

/-! ## A119882.P10437315814914298851

`A153641(A024206(n+1))`
-/

namespace A119882.P10437315814914298851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 (A024206 (n + 1)).toNat

end

end A119882.P10437315814914298851

/-!
# A119884: Expansion of e.g.f. sech(x)/(1-x).

The programs for A119884, there is no canonical definition to state claims against.
-/

/-! ## A119884.P9754289388636702763

`A122045(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A119884.P9754289388636702763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122045 n + (n : ℤ) * a (n - 1)

end

end A119884.P9754289388636702763

/-! ## A119884.P14871058743773902194

`A119879(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A119884.P14871058743773902194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119879 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A119884.P14871058743773902194

/-! ## A119884.P14957672371621001444

`Δ[A009390(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A119884.P14957672371621001444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A119884.P14957672371621001444

/-! ## A119884.P17813828535274933347

`A004277(∏[abs(or(1, -n))])-n^(n%2)`
-/

namespace A119884.P17813828535274933347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - (n ^ (n % 2) : ℤ)

end

end A119884.P17813828535274933347

/-!
# A119885: Natural numbers with number of divisors equal to a Lucas number.

The programs for A119885, the canonical program `A119885.P7055387291115707172` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119885 has offset 1).

The definition of A119885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119885.P16757704616162320223

`eq[1, A123927(n+1)]+1`
-/

namespace A119885.P16757704616162320223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119885.P16757704616162320223

namespace A119885

/-- `eq[1, A123927(n+1)]+1` -/
def P16757704616162320223.Spec : Prop :=
  ∀ n, (P16757704616162320223.a n : ℤ) = A119885 (n + 1)

end A119885

/-! ## A119885.P7055387291115707172

`eq[1, A102460(A000005(n+1))]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119885

/-- `eq[1, A102460(A000005(n+1))]+1` -/
def P7055387291115707172.Spec : Prop :=
  ∀ n, (P7055387291115707172.a n : ℤ) = A119885 (n + 1)

theorem P7055387291115707172.correct : P7055387291115707172.Spec := by
  intro n
  simp only [A119885, Nat.add_sub_cancel]

end A119885

/-! ## A119885.P8485642950696402257

`record[A000027(n+1)*A123927(n+1)]`
-/

namespace A119885.P8485642950696402257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A123927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119885.P8485642950696402257

namespace A119885

/-- `record[A000027(n+1)*A123927(n+1)]` -/
def P8485642950696402257.Spec : Prop :=
  ∀ n, P8485642950696402257.a n = A119885 (n + 1)

end A119885

/-! ## A119885.P9075961953311891292

`record[A000027(n+1)*A102460(A000005(n+1))]`
-/

namespace A119885.P9075961953311891292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A102460 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119885.P9075961953311891292

namespace A119885

/-- `record[A000027(n+1)*A102460(A000005(n+1))]` -/
def P9075961953311891292.Spec : Prop :=
  ∀ n, P9075961953311891292.a n = A119885 (n + 1)

end A119885

/-! ## A119885.P5888508775035626682

`filter[n+1, A123927(#)]`
-/

namespace A119885.P5888508775035626682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j) = 1) n)

end

end A119885.P5888508775035626682

namespace A119885

/-- `filter[n+1, A123927(#)]` -/
def P5888508775035626682.Spec : Prop :=
  ∀ n, (P5888508775035626682.a n : ℤ) = A119885 (n + 1)

end A119885

/-! ## A119885.P17033888636868945808

`record[A008619(n)*A123927(A008619(n))]`
-/

namespace A119885.P17033888636868945808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A123927 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119885.P17033888636868945808

namespace A119885

/-- `record[A008619(n)*A123927(A008619(n))]` -/
def P17033888636868945808.Spec : Prop :=
  ∀ n, P17033888636868945808.a n = A119885 (n + 1)

end A119885

/-! ## A119885.P7821654810287968354

`record[A028242(2*n)*A123927(A028242(2*n))]`
-/

namespace A119885.P7821654810287968354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A123927 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119885.P7821654810287968354

namespace A119885

/-- `record[A028242(2*n)*A123927(A028242(2*n))]` -/
def P7821654810287968354.Spec : Prop :=
  ∀ n, P7821654810287968354.a n = A119885 (n + 1)

end A119885

/-! ## A119885.P7727892521760145158

`record[A008620(n)*A123927(A008620(n))]`
-/

namespace A119885.P7727892521760145158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A123927 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119885.P7727892521760145158

namespace A119885

/-- `record[A008620(n)*A123927(A008620(n))]` -/
def P7727892521760145158.Spec : Prop :=
  ∀ n, P7727892521760145158.a n = A119885 (n + 1)

end A119885

/-!
# A119888: Numbers n such that (n,R_n)>1, where R_n=(10^n -1)/9=A002275(n).

The programs for A119888, there is no canonical definition to state claims against.
-/

/-! ## A119888.P8196545003577993803

`eq[A028310(A200510(n+2)), A252358(n)]`
-/

namespace A119888.P8196545003577993803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A200510 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119888.P8196545003577993803

/-! ## A119888.P15692354018263794648

`lt[2, gcd(n, ∑[floor(10^n/5)])]`
-/

namespace A119888.P15692354018263794648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119888.P15692354018263794648

/-! ## A119888.P452440702113329986

`lt[n*n²%3, or(n, ∑{p}[n^3, val(#, 11)])]`
-/

namespace A119888.P452440702113329986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119888.P452440702113329986

/-! ## A119888.P6623156507803706383

`eq[A200510(n+2), A252358(A000290(n))]`
-/

namespace A119888.P6623156507803706383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200510 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 (A000290 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119888.P6623156507803706383

/-! ## A119888.P6702173669048315526

`eq[A200510(n+2), A252358(A118759(n))]`
-/

namespace A119888.P6702173669048315526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200510 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 (A118759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119888.P6702173669048315526

/-!
# A119889: Prime soloist : prime number which is no member of any prime ensemble.

The programs for A119889, there is no canonical definition to state claims against.
-/

/-! ## A119889.P17014982030517097084

`p?[comp[A070026(A134483(n+1))]]`
-/

namespace A119889.P17014982030517097084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (A134483 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119889.P17014982030517097084

/-! ## A119889.P7273293570813543142

`p?[comp[A070026(A181440(n+2))]]`
-/

namespace A119889.P7273293570813543142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (A181440 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119889.P7273293570813543142

/-! ## A119889.P3302373649045983036

`p?[comp[A070026(A194339(3*n+1))]]`
-/

namespace A119889.P3302373649045983036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (A194339 (3 * n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119889.P3302373649045983036

/-! ## A119889.P6769335526728900228

`∩[A049282(n+1), A246448(n+1)]`
-/

namespace A119889.P6769335526728900228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119889.P6769335526728900228

/-!
# A119890: Prime duet leaders: largest number of a prime duet.

The programs for A119890, there is no canonical definition to state claims against.
-/

/-! ## A119890.P6521240574715978399

`A158217(n+5)`
-/

namespace A119890.P6521240574715978399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158217 (n + 5)

end

end A119890.P6521240574715978399

/-! ## A119890.P16726314063229618898

`or(1, A158217(A020710(n)))`
-/

namespace A119890.P16726314063229618898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A158217 (A020710 n).toNat)

end

end A119890.P16726314063229618898

/-! ## A119890.P974749986550921840

`A007318(C(2, n))*A158217(A020710(n))`
-/

namespace A119890.P974749986550921840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A158217 (A020710 n).toNat

end

end A119890.P974749986550921840

/-! ## A119890.P10129248199296499913

`A158217(A020710(n))%A040977(∑[gcd(2, n)])`
-/

namespace A119890.P10129248199296499913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158217 (A020710 n).toNat) (A040977 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A119890.P10129248199296499913

/-! ## A119890.P16845769089654195154

`A001221(A151800(n))*A158217(A020710(n))`
-/

namespace A119890.P16845769089654195154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151800 n).toNat * A158217 (A020710 n).toNat

end

end A119890.P16845769089654195154

/-! ## A119890.P6641902830043689235

`A000120(A001316(2*n))*A158217(A020710(n))`
-/

namespace A119890.P6641902830043689235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 (2 * n)).toNat * A158217 (A020710 n).toNat

end

end A119890.P6641902830043689235

/-! ## A119890.P1629704540815308280

`A158217(A020710(n))%A105238(A105255(n))`
-/

namespace A119890.P1629704540815308280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158217 (A020710 n).toNat) (A105238 (A105255 n).toNat)

end

end A119890.P1629704540815308280

/-! ## A119890.P14880526315861886097

`p?[A158217(A020710(n))]`
-/

namespace A119890.P14880526315861886097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158217 (A020710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119890.P14880526315861886097

/-! ## A119890.P315103615917838720

`∩[A070027(n+1), A304366(n+1)]`
-/

namespace A119890.P315103615917838720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119890.P315103615917838720

/-! ## A119890.P2797277054344809346

`∩[A046704(n+1), A304366(n+1)]`
-/

namespace A119890.P2797277054344809346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119890.P2797277054344809346

/-! ## A119890.P11177999424254069744

`∩[A078403(n+1), A304366(n+1)]`
-/

namespace A119890.P11177999424254069744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119890.P11177999424254069744

/-!
# A119891: Prime trio leaders: largest number of a prime trio.

The programs for A119891, there is no canonical definition to state claims against.
-/

/-! ## A119891.P13127433818533523646

`∩[A133223(2*A133223(n+1)), A165440(n+1)]`
-/

namespace A119891.P13127433818533523646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (2 * A133223 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119891.P13127433818533523646

/-! ## A119891.P14109207373781595963

`∩[A165440(n+1), A228485(n+1)]`
-/

namespace A119891.P14109207373781595963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119891.P14109207373781595963

/-!
# A119893: Prime soloists for which the sum of the digits is another prime soloist.

The programs for A119893, there is no canonical definition to state claims against.
-/

/-! ## A119893.P12860264022998068055

`A207293(comp[(4*n)²])`
-/

namespace A119893.P12860264022998068055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119893.P12860264022998068055

/-! ## A119893.P14911103232827231134

`p?[A207293(n+1)+char[15]]`
-/

namespace A119893.P14911103232827231134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119893.P14911103232827231134

/-! ## A119893.P9852990537045523933

`record[A207293(A216455(n+1))]`
-/

namespace A119893.P9852990537045523933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (A216455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119893.P9852990537045523933

/-! ## A119893.P3812399547598728577

`p?[or(A008835(n+1), A207293(n+1))]`
-/

namespace A119893.P3812399547598728577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008835 (n + 1)) (A207293 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119893.P3812399547598728577

/-! ## A119893.P4759891946118193926

`p?[A007318(A051904(n+1))*A207293(n+1)]`
-/

namespace A119893.P4759891946118193926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051904 (n + 1)).toNat * A207293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119893.P4759891946118193926

/-!
# A119895: Numbers k such that 2^k, 3^k, 5^k, 7^k, 11^k and 13^k have even digit sum.

The programs for A119895, there is no canonical definition to state claims against.
-/

/-! ## A119895.P15014152521491073430

`A119894(C(A228370(n+2), A301333(n+4)))`
-/

namespace A119895.P15014152521491073430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119894 (Nat.choose (A228370 (n + 2)).toNat (A301333 (n + 4)).toNat)

end

end A119895.P15014152521491073430

/-! ## A119895.P5536534074534530468

`A119894(eq[A001222(3*n+1), A060384(n)])`
-/

namespace A119895.P5536534074534530468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119894 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A119895.P5536534074534530468

/-!
# A119899: Integers i such that bigomega(i) (A001222) and tau(i) (A000005) are both even.

The programs for A119899, the canonical program `A119899.P6129127652273095795` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119899 has offset 1).

The definition of A119899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119899.P6129127652273095795

`eq[1, A353669(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119899

/-- `eq[1, A353669(n+1)]+1` -/
def P6129127652273095795.Spec : Prop :=
  ∀ n, (P6129127652273095795.a n : ℤ) = A119899 (n + 1)

theorem P6129127652273095795.correct : P6129127652273095795.Spec := by
  intro n
  simp only [A119899, Nat.add_sub_cancel]

end A119899

/-! ## A119899.P17344918424004816101

`filter[A028260(n+1), A049240(#)]`
-/

namespace A119899.P17344918424004816101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A119899.P17344918424004816101

namespace A119899

/-- `filter[A028260(n+1), A049240(#)]` -/
def P17344918424004816101.Spec : Prop :=
  ∀ n, P17344918424004816101.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P16150232087911768407

`filter[A028260(n+1), A353669(#)]`
-/

namespace A119899.P16150232087911768407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P16150232087911768407

namespace A119899

/-- `filter[A028260(n+1), A353669(#)]` -/
def P16150232087911768407.Spec : Prop :=
  ∀ n, P16150232087911768407.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P16755038057239553834

`filter[A347450(n+1), A353669(#)]`
-/

namespace A119899.P16755038057239553834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P16755038057239553834

namespace A119899

/-- `filter[A347450(n+1), A353669(#)]` -/
def P16755038057239553834.Spec : Prop :=
  ∀ n, P16755038057239553834.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P7365451703368810626

`lt[A316524(n+1), 0]+1`
-/

namespace A119899.P7365451703368810626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A119899.P7365451703368810626

namespace A119899

/-- `lt[A316524(n+1), 0]+1` -/
def P7365451703368810626.Spec : Prop :=
  ∀ n, (P7365451703368810626.a n : ℤ) = A119899 (n + 1)

end A119899

/-! ## A119899.P16764017989906006677

`filter[A174891(n+1), A353669(#)]`
-/

namespace A119899.P16764017989906006677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P16764017989906006677

namespace A119899

/-- `filter[A174891(n+1), A353669(#)]` -/
def P16764017989906006677.Spec : Prop :=
  ∀ n, P16764017989906006677.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P11191835131752188415

`filter[A239289(n+1), A353669(#)]`
-/

namespace A119899.P11191835131752188415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P11191835131752188415

namespace A119899

/-- `filter[A239289(n+1), A353669(#)]` -/
def P11191835131752188415.Spec : Prop :=
  ∀ n, P11191835131752188415.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P5357733680382393209

`filter[A229153(n+1), A065043(#)]`
-/

namespace A119899.P5357733680382393209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A119899.P5357733680382393209

namespace A119899

/-- `filter[A229153(n+1), A065043(#)]` -/
def P5357733680382393209.Spec : Prop :=
  ∀ n, P5357733680382393209.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P13942410423529032087

`filter[A229153(n+1), A353669(#)]`
-/

namespace A119899.P13942410423529032087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P13942410423529032087

namespace A119899

/-- `filter[A229153(n+1), A353669(#)]` -/
def P13942410423529032087.Spec : Prop :=
  ∀ n, P13942410423529032087.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P7901484554315668750

`∩[A028260(n+1), A229153(n+1)]`
-/

namespace A119899.P7901484554315668750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119899.P7901484554315668750

namespace A119899

/-- `∩[A028260(n+1), A229153(n+1)]` -/
def P7901484554315668750.Spec : Prop :=
  ∀ n, (P7901484554315668750.a n : ℤ) = A119899 (n + 1)

end A119899

/-! ## A119899.P8956626088302463127

`filter[A048943(n+1), A353669(#)]`
-/

namespace A119899.P8956626088302463127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P8956626088302463127

namespace A119899

/-- `filter[A048943(n+1), A353669(#)]` -/
def P8956626088302463127.Spec : Prop :=
  ∀ n, P8956626088302463127.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P12886630118773108014

`filter[A233182(n+1), A353669(#)]`
-/

namespace A119899.P12886630118773108014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P12886630118773108014

namespace A119899

/-- `filter[A233182(n+1), A353669(#)]` -/
def P12886630118773108014.Spec : Prop :=
  ∀ n, P12886630118773108014.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P5107134062692233774

`filter[A268376(n+1), A353669(#)]`
-/

namespace A119899.P5107134062692233774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P5107134062692233774

namespace A119899

/-- `filter[A268376(n+1), A353669(#)]` -/
def P5107134062692233774.Spec : Prop :=
  ∀ n, P5107134062692233774.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P2743487655390268210

`filter[A089229(n+1), A065043(#)]`
-/

namespace A119899.P2743487655390268210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A119899.P2743487655390268210

namespace A119899

/-- `filter[A089229(n+1), A065043(#)]` -/
def P2743487655390268210.Spec : Prop :=
  ∀ n, P2743487655390268210.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P2489191583356744169

`filter[A089229(n+1), A353669(#)]`
-/

namespace A119899.P2489191583356744169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P2489191583356744169

namespace A119899

/-- `filter[A089229(n+1), A353669(#)]` -/
def P2489191583356744169.Spec : Prop :=
  ∀ n, P2489191583356744169.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P3137996033153396374

`∩[A028260(n+1), A089229(n+1)]`
-/

namespace A119899.P3137996033153396374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119899.P3137996033153396374

namespace A119899

/-- `∩[A028260(n+1), A089229(n+1)]` -/
def P3137996033153396374.Spec : Prop :=
  ∀ n, (P3137996033153396374.a n : ℤ) = A119899 (n + 1)

end A119899

/-! ## A119899.P14364705946224489162

`filter[A024619(n+1), A353669(#)]`
-/

namespace A119899.P14364705946224489162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P14364705946224489162

namespace A119899

/-- `filter[A024619(n+1), A353669(#)]` -/
def P14364705946224489162.Spec : Prop :=
  ∀ n, P14364705946224489162.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P5396962777865983468

`filter[A361102(n+1), A353669(#)]`
-/

namespace A119899.P5396962777865983468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P5396962777865983468

namespace A119899

/-- `filter[A361102(n+1), A353669(#)]` -/
def P5396962777865983468.Spec : Prop :=
  ∀ n, P5396962777865983468.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P2880750399876426638

`filter[A387335(n+1), A353669(#)]`
-/

namespace A119899.P2880750399876426638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P2880750399876426638

namespace A119899

/-- `filter[A387335(n+1), A353669(#)]` -/
def P2880750399876426638.Spec : Prop :=
  ∀ n, P2880750399876426638.a n = A119899 (n + 1)

end A119899

/-! ## A119899.P11525774689086177641

`filter[A139118(n+1), A353669(#)]`
-/

namespace A119899.P11525774689086177641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A119899.P11525774689086177641

namespace A119899

/-- `filter[A139118(n+1), A353669(#)]` -/
def P11525774689086177641.Spec : Prop :=
  ∀ n, P11525774689086177641.a n = A119899 (n + 1)

end A119899

