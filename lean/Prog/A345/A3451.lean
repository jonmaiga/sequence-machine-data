import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A345100: a(n) = Sum_{k=1..n} k^floor(n/k).

The programs for A345100, the canonical program `A345100.P9674031221641543024` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345100 has offset 1).

The definition of A345100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345100.P9674031221641543024

`∑[A055225(n+1)+1-A087909(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345100

/-- `∑[A055225(n+1)+1-A087909(n+1)]` -/
def P9674031221641543024.Spec : Prop :=
  ∀ n, P9674031221641543024.a n = A345100 (n + 1)

theorem P9674031221641543024.correct : P9674031221641543024.Spec := by
  intro n
  simp only [A345100, Nat.add_sub_cancel]

end A345100

/-! ## A345100.P8975095689875920814

`∑[A055225(n+1)+A024000(A087909(n+1))]`
-/

namespace A345100.P8975095689875920814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (n + 1) + A024000 (A087909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345100.P8975095689875920814

namespace A345100

/-- `∑[A055225(n+1)+A024000(A087909(n+1))]` -/
def P8975095689875920814.Spec : Prop :=
  ∀ n, P8975095689875920814.a n = A345100 (n + 1)

end A345100

/-! ## A345100.P11321849607647638639

`∑[∏{e}[A324118(n+1)!, #]*A141310(n)]`
-/

namespace A345100.P11321849607647638639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A324118 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) * A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345100.P11321849607647638639

namespace A345100

/-- `∑[∏{e}[A324118(n+1)!, #]*A141310(n)]` -/
def P11321849607647638639.Spec : Prop :=
  ∀ n, P11321849607647638639.a n = A345100 (n + 1)

end A345100

/-!
# A345104: a(n) = 1 + 2 * Sum_{k=0..n-1} binomial(n-1,k) * a(k) * a(n-k-1).

The programs for A345104, there is no canonical definition to state claims against.
-/

/-! ## A345104.P12945853042746807923

`A063953(3^n-n)`
-/

namespace A345104.P12945853042746807923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 (3 ^ n - n)

end

end A345104.P12945853042746807923

/-!
# A345105: a(n) = 1 + 3 * Sum_{k=0..n-1} binomial(n-1,k) * a(k) * a(n-k-1).

The programs for A345105, there is no canonical definition to state claims against.
-/

/-! ## A345105.P11443926108088190423

`A001965(Δ[A216857(n)])`
-/

namespace A345105.P11443926108088190423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (f1 (n + 1) - f1 n).toNat

end

end A345105.P11443926108088190423

/-!
# A345106: a(n) = Sum_{k=1..n} k^(n - floor(n/k)).

The programs for A345106, there is no canonical definition to state claims against.
-/

/-! ## A345106.P18188391857373188509

`A000720(A199576(n+1))-n`
-/

namespace A345106.P18188391857373188509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A199576 (n + 1)).toNat - (n : ℤ)

end

end A345106.P18188391857373188509

/-!
# A345108: a(n) = Sum_{k=1..n} 2^(n - floor(n/k)).

The programs for A345108, the canonical program `A345108.P2496597667974495190` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345108 has offset 1).

The definition of A345108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345108.P2496597667974495190

`(n+1)*2^(n+1)-A178965(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A345108

/-- `(n+1)*2^(n+1)-A178965(n+1)` -/
def P2496597667974495190.Spec : Prop :=
  ∀ n, P2496597667974495190.a n = A345108 (n + 1)

theorem P2496597667974495190.correct : P2496597667974495190.Spec := by
  intro n
  simp only [A345108, Nat.add_sub_cancel]

end A345108

/-! ## A345108.P13800453486789984292

`A322903(A002512(n))`
-/

namespace A345108.P13800453486789984292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322903 (A002512 n).toNat

end

end A345108.P13800453486789984292

namespace A345108

/-- `A322903(A002512(n))` -/
def P13800453486789984292.Spec : Prop :=
  ∀ n, P13800453486789984292.a n = A345108 (n + 1)

end A345108

/-!
# A345111: a(n) = n + A345110(n).

The programs for A345111, there is no canonical definition to state claims against.
-/

/-! ## A345111.P15791504387427586105

`n+A345110(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345111.P15791504387427586105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A345110 n

end

end A345111.P15791504387427586105

/-! ## A345111.P17380629138016557195

`Δ[n²]-((11*floor(n/10)-n)*dr(n-dr(n))+1)`
-/

namespace A345111.P17380629138016557195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * (SequenceMachineLib.digitalRoot ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) : ℤ) + 1)

end

end A345111.P17380629138016557195

/-! ## A345111.P9790050961853985388

`Δ[n²]-(11*floor(n/10)-n)*dr(n-dr(n))-1`
-/

namespace A345111.P9790050961853985388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * (SequenceMachineLib.digitalRoot ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) : ℤ) - 1

end

end A345111.P9790050961853985388

/-! ## A345111.P11200982713592096643

`2*∑{digits}[n, #]+9*(n-9*floor(n/10))%((n-7*floor(n/10))^floor(n/10))`
-/

namespace A345111.P11200982713592096643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + 9 * Int.tmod ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋) (SequenceMachineLib.roundAway (((n : ℤ) - 7 * ⌊(n : ℚ) / 10⌋ : ℚ) ^ (⌊(n : ℚ) / 10⌋ : ℤ)))

end

end A345111.P11200982713592096643

/-! ## A345111.P17171572657434685499

`A056964(n)%155`
-/

namespace A345111.P17171572657434685499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 n) 155

end

end A345111.P17171572657434685499

/-! ## A345111.P5091779507357685735

`A052008(n)%495`
-/

namespace A345111.P5091779507357685735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052008 n) 495

end

end A345111.P5091779507357685735

/-! ## A345111.P16963302937204864211

`A056964(and(n, -65))`
-/

namespace A345111.P16963302937204864211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (Int.land (n : ℤ) (-65)).toNat

end

end A345111.P16963302937204864211

/-! ## A345111.P17667379445513018553

`A004086(n)+n%63`
-/

namespace A345111.P17667379445513018553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + ((n % 63 : ℕ) : ℤ)

end

end A345111.P17667379445513018553

/-! ## A345111.P12183003492607249714

`A056964(C(n, 64)+n)`
-/

namespace A345111.P12183003492607249714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (Nat.choose n 64 + n)

end

end A345111.P12183003492607249714

/-! ## A345111.P6091922981533111357

`A056964(comp[lcm(87, n)]-1)`
-/

namespace A345111.P6091922981533111357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 87 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1)

end

end A345111.P6091922981533111357

/-!
# A345112: a(n) is the number of steps to reach a palindrome > n under repeated applications of the map x -> A345111(x) starting with n, or 0 if no palindrome is ever reached.

The programs for A345112, there is no canonical definition to state claims against.
-/

/-! ## A345112.P4804760597178940448

`gcd(A000360(A027828(n)), A110591(n))`
-/

namespace A345112.P4804760597178940448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000360 (A027828 n).toNat) (A110591 n)

end

end A345112.P4804760597178940448

/-! ## A345112.P2170559201787450197

`A064834(A027828(n))+A016016(n+1)`
-/

namespace A345112.P2170559201787450197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A027828 n).toNat + A016016 (n + 1)

end

end A345112.P2170559201787450197

/-! ## A345112.P3713823665970978829

`gcd(A064770(A051885(n)), A110591(n+1))`
-/

namespace A345112.P3713823665970978829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064770 (A051885 n).toNat) (A110591 (n + 1))

end

end A345112.P3713823665970978829

/-! ## A345112.P5124296239103610168

`or(A016016(n+1), A033665(A113609(2*(n+2))))`
-/

namespace A345112.P5124296239103610168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016016 (n + 1)) (A033665 (A113609 (2 * (n + 2))).toNat)

end

end A345112.P5124296239103610168

/-! ## A345112.P1981324738555831717

`A064834(A027828(n))+A030547(A052008(n+1))`
-/

namespace A345112.P1981324738555831717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A027828 n).toNat + A030547 (A052008 (n + 1)).toNat

end

end A345112.P1981324738555831717

/-!
# A345113: a(n) is the palindrome reached after A345112(n) steps under repeated applications of the map x -> A345111(x), starting with n, or 0 if no palindrome is ever reached.

The programs for A345113, there is no canonical definition to state claims against.
-/

/-! ## A345113.P15403603661920521567

`A118759(A061563(n+1))`
-/

namespace A345113.P15403603661920521567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A061563 (n + 1)).toNat

end

end A345113.P15403603661920521567

/-! ## A345113.P9551763494538688455

`A061563(A151764(n+1))`
-/

namespace A345113.P9551763494538688455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061563 (A151764 (n + 1)).toNat

end

end A345113.P9551763494538688455

/-! ## A345113.P7827530721317970161

`A061563(A223080(n+1))`
-/

namespace A345113.P7827530721317970161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061563 (A223080 (n + 1)).toNat

end

end A345113.P7827530721317970161

/-! ## A345113.P10833097149728724874

`filter[A061563(n), A225181(#)]`
-/

namespace A345113.P10833097149728724874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A345113.P10833097149728724874

/-! ## A345113.P8633483925556682860

`A000196(A061563(n+1)²)`
-/

namespace A345113.P8633483925556682860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A061563 (n + 1) ^ 2).toNat

end

end A345113.P8633483925556682860

/-!
# A345114: Numbers whose trajectories under the map x -> A345111(x) do not reach a palindrome (conjectured).

The programs for A345114, there is no canonical definition to state claims against.
-/

/-! ## A345114.P6213246788396451254

`eq[5, A051889(A093882(n))]`
-/

namespace A345114.P6213246788396451254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A093882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345114.P6213246788396451254

/-! ## A345114.P12563173172796549626

`lt[4, A266193(A273005(n))]`
-/

namespace A345114.P12563173172796549626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A273005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345114.P12563173172796549626

/-! ## A345114.P9387390869418538744

`eq[11, A048766(A136613(n))]`
-/

namespace A345114.P9387390869418538744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A136613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345114.P9387390869418538744

/-! ## A345114.P14787082453067126008

`eq[7, A187324(A000194(A052008(n)))]`
-/

namespace A345114.P14787082453067126008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187324 (A000194 (A052008 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345114.P14787082453067126008

/-! ## A345114.P14370753377713854980

`lt[A063049(n+1), A295122(A007953(n))]`
-/

namespace A345114.P14370753377713854980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295122 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345114.P14370753377713854980

/-!
# A345116: Irregular triangle T(n,k) read by rows in which row n has length the n-th triangular number A000217(n) and every column k lists the positive integers A000027, n >= 1, k >= 1.

The programs for A345116, there is no canonical definition to state claims against.
-/

/-! ## A345116.P1053238861684403390

`A056559(n)+1`
-/

namespace A345116.P1053238861684403390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n + 1

end

end A345116.P1053238861684403390

/-! ## A345116.P932049120105287525

`A332662(Δ[n²])+1`
-/

namespace A345116.P932049120105287525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A345116.P932049120105287525

/-! ## A345116.P12775085817900809162

`∑[char[C(n, 3)]]-A056557(n)`
-/

namespace A345116.P12775085817900809162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056557 n

end

end A345116.P12775085817900809162

/-! ## A345116.P11238674189663856498

`(A332662(2*n+1)+1)%9`
-/

namespace A345116.P11238674189663856498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332662 (2 * n + 1) + 1) 9

end

end A345116.P11238674189663856498

/-! ## A345116.P12007462787086502668

`∑[char[C(n, 3)]]+1-A194848(n)`
-/

namespace A345116.P12007462787086502668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A194848 n

end

end A345116.P12007462787086502668

/-! ## A345116.P18163229829592911294

`A005496(A056559(n))`
-/

namespace A345116.P18163229829592911294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A056559 n).toNat

end

end A345116.P18163229829592911294

/-! ## A345116.P9903242929754952004

`A056559(comp[A332699(n)])`
-/

namespace A345116.P9903242929754952004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332699 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345116.P9903242929754952004

/-! ## A345116.P6539007765740039456

`A065120(A014311(n+1))`
-/

namespace A345116.P6539007765740039456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A014311 (n + 1)).toNat

end

end A345116.P6539007765740039456

/-! ## A345116.P17417065433594081538

`A004736(A123579(n+1))`
-/

namespace A345116.P17417065433594081538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A123579 (n + 1)).toNat

end

end A345116.P17417065433594081538

/-! ## A345116.P12216078165064031736

`A004736(A273824(n+1))`
-/

namespace A345116.P12216078165064031736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A273824 (n + 1)).toNat

end

end A345116.P12216078165064031736

/-!
# A345117: a(n) is the index (in Z/nZ) of the first already visited element in the process of moving around Z/nZ, starting at 0 with stride 1 and increasing stride by 1 after each step.

The programs for A345117, there is no canonical definition to state claims against.
-/

/-! ## A345117.P6479695141813197787

`A000217(A212652(n+1))%(n+1)`
-/

namespace A345117.P6479695141813197787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A212652 (n + 1)).toNat) (n + 1 : ℤ)

end

end A345117.P6479695141813197787

/-! ## A345117.P13015464353362315894

`A161680(A118235(n+1))%(n+1)`
-/

namespace A345117.P13015464353362315894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161680 (A118235 (n + 1)).toNat) (n + 1 : ℤ)

end

end A345117.P13015464353362315894

/-! ## A345117.P9413126654642946327

`A000217(A118235(n+1)-1)%(n+1)`
-/

namespace A345117.P9413126654642946327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A118235 (n + 1) - 1).toNat) (n + 1 : ℤ)

end

end A345117.P9413126654642946327

/-! ## A345117.P7568058279061520696

`(A205004(n+1)%(n+1))%A094527(n)`
-/

namespace A345117.P7568058279061520696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A205004 (n + 1)) (n + 1 : ℤ)) (A094527 n)

end

end A345117.P7568058279061520696

/-! ## A345117.P2158011182229362059

`A214928(A212652(n+1)²)%(n+1)`
-/

namespace A345117.P2158011182229362059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214928 (A212652 (n + 1) ^ 2).toNat) (n + 1 : ℤ)

end

end A345117.P2158011182229362059

/-!
# A345118: a(n) is the sum of the lengths of all the segments used to draw a square of side n representing a basketweave pattern where all the multiple strands are of unit width, the horizontal ones appearing as 1 X 3 rectangles, while the vertical ones as unit area squares.

The programs for A345118, the canonical program `A345118.P14035259063709570867` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345118 has offset 0).

The definition of A345118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345118.P14035259063709570867

`(n*(5+3*n)-(1-(-1)^n)*sin((n-1)*π/4))/2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A345118

/-- `(n*(5+3*n)-(1-(-1)^n)*sin((n-1)*π/4))/2` -/
def P14035259063709570867.Spec : Prop :=
  ∀ n, P14035259063709570867.a n = (A345118 n : ℝ)

end A345118

/-! ## A345118.P2890266926419371679

`∑[A016777(n)-A056594(A032766(n))]`
-/

namespace A345118.P2890266926419371679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A056594 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345118.P2890266926419371679

namespace A345118

/-- `∑[A016777(n)-A056594(A032766(n))]` -/
def P2890266926419371679.Spec : Prop :=
  ∀ n, P2890266926419371679.a n = A345118 n

end A345118

/-! ## A345118.P3605538028757932195

`∑[A290562(A032766(n))+A032766(n+1)]`
-/

namespace A345118.P3605538028757932195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290562 (A032766 n).toNat + A032766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345118.P3605538028757932195

namespace A345118

/-- `∑[A290562(A032766(n))+A032766(n+1)]` -/
def P3605538028757932195.Spec : Prop :=
  ∀ n, P3605538028757932195.a n = A345118 n

end A345118

/-! ## A345118.P2147159888326688557

`∑[3*n+1-A132380(A016789(n))]`
-/

namespace A345118.P2147159888326688557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A132380 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345118.P2147159888326688557

namespace A345118

/-- `∑[3*n+1-A132380(A016789(n))]` -/
def P2147159888326688557.Spec : Prop :=
  ∀ n, P2147159888326688557.a n = A345118 n

end A345118

/-! ## A345118.P8080468684605054771

`A008726(5*n)-A008726(n)`
-/

namespace A345118.P8080468684605054771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (5 * n) - A008726 n

end

end A345118.P8080468684605054771

namespace A345118

/-- `A008726(5*n)-A008726(n)` -/
def P8080468684605054771.Spec : Prop :=
  ∀ n, P8080468684605054771.a n = A345118 n

end A345118

/-! ## A345118.P18208041745613489423

`A000326(n)+Δ[A098180(A000326(n))]-1`
-/

namespace A345118.P18208041745613489423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (A000326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + (f1 (n + 1) - f1 n - 1)

end

end A345118.P18208041745613489423

namespace A345118

/-- `A000326(n)+Δ[A098180(A000326(n))]-1` -/
def P18208041745613489423.Spec : Prop :=
  ∀ n, P18208041745613489423.a n = A345118 n

end A345118

/-!
# A345119: Numbers that are the sum of three third powers in nine or more ways.

The programs for A345119, there is no canonical definition to state claims against.
-/

/-! ## A345119.P5120970793302635040

`∪[A345120(n+1), A345121(n+1)]`
-/

namespace A345119.P5120970793302635040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345119.P5120970793302635040

/-! ## A345119.P14399260229475964712

`∪[A345120(n+1), A345122(n+1)]%A344862(2*(n+1))`
-/

namespace A345119.P14399260229475964712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345122 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A344862 (2 * (n + 1)))

end

end A345119.P14399260229475964712

/-!
# A345120: Numbers that are the sum of three third powers in exactly nine ways.

The programs for A345120, there is no canonical definition to state claims against.
-/

/-! ## A345120.P13762069801263126591

`A345119(∑[A057856(n+1)])`
-/

namespace A345120.P13762069801263126591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345119 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345120.P13762069801263126591

/-! ## A345120.P7678970488843939578

`A345119(A002264(n)+A001104(n+1))`
-/

namespace A345120.P7678970488843939578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345119 (A002264 n + A001104 (n + 1)).toNat

end

end A345120.P7678970488843939578

/-! ## A345120.P1257999739002746393

`A345119(A302656(n+1)+A002264(n))`
-/

namespace A345120.P1257999739002746393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345119 (A302656 (n + 1) + A002264 n).toNat

end

end A345120.P1257999739002746393

/-!
# A345122: Numbers that are the sum of three third powers in exactly ten ways.

The programs for A345122, there is no canonical definition to state claims against.
-/

/-! ## A345122.P6676649668189703405

`A345121(eq[A000120(n), A191384(n)])`
-/

namespace A345122.P6676649668189703405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345121 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A345122.P6676649668189703405

/-!
# A345123: Number T(n,k) of ordered subsequences of {1,...,n} containing at least k elements and such that the first differences contain only odd numbers; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A345123, there is no canonical definition to state claims against.
-/

/-! ## A345123.P9786051510466876084

`A131252(n)+A121373(A001567(n+1))`
-/

namespace A345123.P9786051510466876084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131252 n + A121373 (A001567 (n + 1)).toNat

end

end A345123.P9786051510466876084

/-! ## A345123.P14838393532303539619

`A185294(A034699(n+1))+A131252(n)`
-/

namespace A345123.P14838393532303539619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 (A034699 (n + 1)).toNat + A131252 n

end

end A345123.P14838393532303539619

/-! ## A345123.P11681631999611812024

`A131252(n)+A024326(A136170(n))`
-/

namespace A345123.P11681631999611812024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131252 n + A024326 (A136170 n).toNat

end

end A345123.P11681631999611812024

/-! ## A345123.P640493423469650181

`A343958(A079366(n))+A131252(n)`
-/

namespace A345123.P640493423469650181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 (A079366 n).toNat + A131252 n

end

end A345123.P640493423469650181

/-!
# A345125: Numerator of 4/(1 + 1^2/(3 + 2^2/(5 + 3^2/(7 + ... + (n-1)^2/(2*n-1) )))).

The programs for A345125, there is no canonical definition to state claims against.
-/

/-! ## A345125.P7548034127569185551

`A054765(n)+A046145(A054773(n))`
-/

namespace A345125.P7548034127569185551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054765 n + A046145 (A054773 n).toNat

end

end A345125.P7548034127569185551

/-! ## A345125.P16985317141654782783

`A103310(A003645(n))+A054765(n)`
-/

namespace A345125.P16985317141654782783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (A003645 n).toNat + A054765 n

end

end A345125.P16985317141654782783

/-!
# A345128: Number of squarefree products s*t from all positive integer pairs (s,t), such that s + t = n, s <= t.

The programs for A345128, there is no canonical definition to state claims against.
-/

/-! ## A345128.P9816324037703350160

`ceil(A007457(n+1)/2)`
-/

namespace A345128.P9816324037703350160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007457 (n + 1) : ℚ) / 2⌉

end

end A345128.P9816324037703350160

/-! ## A345128.P6063185556200817791

`A007457(char[1]+1+n)/2`
-/

namespace A345128.P6063185556200817791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007457 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℚ) / 2

end

end A345128.P6063185556200817791

/-! ## A345128.P7210637598819168654

`round(A007457(round(acot(n+2)+n)+1)/2)`
-/

namespace A345128.P7210637598819168654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007457 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 2 : ℝ) + (n : ℝ)) + 1).toNat : ℚ) / 2)

end

end A345128.P7210637598819168654

/-! ## A345128.P3477519898742322320

`A004525(A007457(n+1))`
-/

namespace A345128.P3477519898742322320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007457 (n + 1)).toNat

end

end A345128.P3477519898742322320

/-! ## A345128.P2954404146203188778

`A004526(A007457(n+1)+1)`
-/

namespace A345128.P2954404146203188778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007457 (n + 1) + 1).toNat

end

end A345128.P2954404146203188778

/-! ## A345128.P9189672951100956088

`A001281(lcm(2, A007457(n+1)))`
-/

namespace A345128.P9189672951100956088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A007457 (n + 1)))

end

end A345128.P9189672951100956088

/-! ## A345128.P13949847321051793495

`A097140(A007457(n+1)%(n+1))`
-/

namespace A345128.P13949847321051793495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (Int.tmod (A007457 (n + 1)) (n + 1 : ℤ)).toNat

end

end A345128.P13949847321051793495

/-! ## A345128.P4529940239228290701

`round(A007457(p?[53*n-7]%2+n)/2)`
-/

namespace A345128.P4529940239228290701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007457 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2 + (n : ℤ)).toNat : ℚ) / 2)

end

end A345128.P4529940239228290701

/-!
# A345131: Number of ordered n-tuples of integers from [ 1..n ] with no global factor.

The programs for A345131, there is no canonical definition to state claims against.
-/

/-! ## A345131.P5463934104578529049

`A177976(∑[4*n]+1)`
-/

namespace A345131.P5463934104578529049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177976 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A345131.P5463934104578529049

/-! ## A345131.P11314055890537629381

`record[A003982(n)*A177976(n+1)]`
-/

namespace A345131.P11314055890537629381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A177976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345131.P11314055890537629381

/-! ## A345131.P1354362995494481795

`record[gcd(A112467(n), A177976(n+1))]`
-/

namespace A345131.P1354362995494481795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A177976 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345131.P1354362995494481795

/-! ## A345131.P3657209232017403471

`record[A177976(gcd(n+1, A114327(n)))]`
-/

namespace A345131.P3657209232017403471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177976 (Int.gcd (n + 1 : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345131.P3657209232017403471

/-! ## A345131.P2808580908354098478

`A177976(A001844(n))%A075841(n+1)`
-/

namespace A345131.P2808580908354098478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177976 (A001844 n).toNat) (A075841 (n + 1))

end

end A345131.P2808580908354098478

/-!
# A345132: Number of (n+2) X (n+2) symmetric matrices with nonnegative integer entries, trace 0, with n rows that sum to 2, and 2 rows that sum to 1.

The programs for A345132, there is no canonical definition to state claims against.
-/

/-! ## A345132.P12833871538690328849

`A002137(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A345132.P12833871538690328849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002137 n + (n : ℤ) * a (n - 1)

end

end A345132.P12833871538690328849

/-! ## A345132.P12902842297454864393

`A095693(A000096(n))+n*a(n-1)` with `a(0)=1`
-/

namespace A345132.P12902842297454864393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095693 (A000096 n).toNat + (n : ℤ) * a (n - 1)

end

end A345132.P12902842297454864393

/-! ## A345132.P15422900580103418836

`A136409(A000258(n)+A000108(n))`
-/

namespace A345132.P15422900580103418836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A000258 n + A000108 n).toNat

end

end A345132.P15422900580103418836

/-!
# A345134: Diagonal Donaldson-Thomas invariants for the Kronecker quiver K3.

The programs for A345134, there is no canonical definition to state claims against.
-/

/-! ## A345134.P6825937188549529571

`A000005(A000079(3*n+2))*A352309(n)`
-/

namespace A345134.P6825937188549529571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 (3 * n + 2)).toNat * A352309 n

end

end A345134.P6825937188549529571

/-!
# A345135: Number of ordered rooted binary trees with n leaves and with minimal Sackin tree balance index.

The programs for A345135, the canonical program `A345135.P893770826323321466` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345135 has offset 0).

The definition of A345135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345135.P893770826323321466

`C(A053644(n), n-A053644(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A345135

/-- `C(A053644(n), n-A053644(n))` -/
def P893770826323321466.Spec : Prop :=
  ∀ n, (P893770826323321466.a n : ℤ) = A345135 n

theorem P893770826323321466.correct : P893770826323321466.Spec := by
  intro n
  simp only [A345135]

end A345135

/-! ## A345135.P4290965143276516164

`C(A072376(2*n), n-A072376(2*n))`
-/

namespace A345135.P4290965143276516164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072376 (2 * n)).toNat ((n : ℤ) - A072376 (2 * n)).toNat

end

end A345135.P4290965143276516164

namespace A345135

/-- `C(A072376(2*n), n-A072376(2*n))` -/
def P4290965143276516164.Spec : Prop :=
  ∀ n, (P4290965143276516164.a n : ℤ) = A345135 n

end A345135

/-! ## A345135.P18134840990597697228

`C(n-A164089(2*n+1), A164089(2*n+1))`
-/

namespace A345135.P18134840990597697228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A164089 (2 * n + 1)).toNat (A164089 (2 * n + 1)).toNat

end

end A345135.P18134840990597697228

namespace A345135

/-- `C(n-A164089(2*n+1), A164089(2*n+1))` -/
def P18134840990597697228.Spec : Prop :=
  ∀ n, (P18134840990597697228.a n : ℤ) = A345135 n

end A345135

/-! ## A345135.P9522708479383907976

`C(A000010(A062383(n)), A062383(n)-n)`
-/

namespace A345135.P9522708479383907976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A062383 n).toNat).toNat (A062383 n - (n : ℤ)).toNat

end

end A345135.P9522708479383907976

namespace A345135

/-- `C(A000010(A062383(n)), A062383(n)-n)` -/
def P9522708479383907976.Spec : Prop :=
  ∀ n, (P9522708479383907976.a n : ℤ) = A345135 n

end A345135

/-! ## A345135.P1459483398303263823

`A169803(A000217(n)-A053644(n))`
-/

namespace A345135.P1459483398303263823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 (A000217 n - A053644 n).toNat

end

end A345135.P1459483398303263823

namespace A345135

/-- `A169803(A000217(n)-A053644(n))` -/
def P1459483398303263823.Spec : Prop :=
  ∀ n, P1459483398303263823.a n = A345135 n

end A345135

/-! ## A345135.P1374374193361619738

`A046854(∑[A153151(n)]+1)`
-/

namespace A345135.P1374374193361619738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A345135.P1374374193361619738

namespace A345135

/-- `A046854(∑[A153151(n)]+1)` -/
def P1374374193361619738.Spec : Prop :=
  ∀ n, P1374374193361619738.a n = A345135 n

end A345135

/-! ## A345135.P10619734274862533429

`A046854(∑[n+1]-A006257(n))`
-/

namespace A345135.P10619734274862533429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006257 n).toNat

end

end A345135.P10619734274862533429

namespace A345135

/-- `A046854(∑[n+1]-A006257(n))` -/
def P10619734274862533429.Spec : Prop :=
  ∀ n, P10619734274862533429.a n = A345135 n

end A345135

/-! ## A345135.P13865466297237866811

`A046854(A035327(n)+A000124(n))`
-/

namespace A345135.P13865466297237866811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A035327 n + A000124 n).toNat

end

end A345135.P13865466297237866811

namespace A345135

/-- `A046854(A035327(n)+A000124(n))` -/
def P13865466297237866811.Spec : Prop :=
  ∀ n, P13865466297237866811.a n = A345135 n

end A345135

/-! ## A345135.P2877499759668166505

`A065941(A006257(n)+∑[n+1])`
-/

namespace A345135.P2877499759668166505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A006257 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345135.P2877499759668166505

namespace A345135

/-- `A065941(A006257(n)+∑[n+1])` -/
def P2877499759668166505.Spec : Prop :=
  ∀ n, P2877499759668166505.a n = A345135 n

end A345135

/-!
# A345137: a(1) = a(2) = 1; a(n+2) = Sum_{d|n, d < n} a(d).

The programs for A345137, there is no canonical definition to state claims against.
-/

/-! ## A345137.P7286438837928206138

`A345138(n+1)+A167865(A057979(n))`
-/

namespace A345137.P7286438837928206138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345138 (n + 1) + A167865 (A057979 n).toNat

end

end A345137.P7286438837928206138

/-! ## A345137.P7217092743870902412

`A015716(eq[2, A087062(n+1)])`
-/

namespace A345137.P7217092743870902412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345137.P7217092743870902412

/-! ## A345137.P7939717008883915929

`∑{e}[A033879(A000079(n)+2)+1, #]`
-/

namespace A345137.P7939717008883915929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A000079 n + 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A345137.P7939717008883915929

/-! ## A345137.P1007580639476028973

`∑{e}[A033879(A016116(2*n)+2)+1, #]`
-/

namespace A345137.P1007580639476028973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A016116 (2 * n) + 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A345137.P1007580639476028973

/-! ## A345137.P9078314160718403682

`A087991(n+4)+A053694(floor(2^(n-1)))`
-/

namespace A345137.P9078314160718403682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (n + 4) + A053694 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A345137.P9078314160718403682

/-!
# A345138: a(1) = 1, a(2) = 0; a(n+2) = Sum_{d|n, d < n} a(d).

The programs for A345138, there is no canonical definition to state claims against.
-/

/-! ## A345138.P16479404270299846248

`A345137(n+1)-A167865(A057979(n))`
-/

namespace A345138.P16479404270299846248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345137 (n + 1) - A167865 (A057979 n).toNat

end

end A345138.P16479404270299846248

/-! ## A345138.P2392619026826376520

`A178691(lt[A178691(2*(n+1)), A178668(n+4)])`
-/

namespace A345138.P2392619026826376520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178668 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345138.P2392619026826376520

/-! ## A345138.P1077448009397016898

`A332761(or(A000463(n+1), A316552(n+1)))`
-/

namespace A345138.P1077448009397016898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332761 (Int.lor (A000463 (n + 1)) (A316552 (n + 1))).toNat

end

end A345138.P1077448009397016898

/-! ## A345138.P16137763853643059055

`A138707(C(n, 9)+1)%(2^n-3)`
-/

namespace A345138.P16137763853643059055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138707 (Nat.choose n 9 + 1)) ((2 ^ n : ℤ) - 3)

end

end A345138.P16137763853643059055

/-!
# A345139: a(1) = 1; a(n) = a(n-1) + Sum_{d|n, d < n} a(d).

The programs for A345139, there is no canonical definition to state claims against.
-/

/-! ## A345139.P7221043123761760320

`Δ[A351621(A028310(n))]+C(2, n+2)`
-/

namespace A345139.P7221043123761760320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A345139.P7221043123761760320

/-! ## A345139.P5217861798293737613

`A000007(n)+Δ[A351621(A028310(n))]`
-/

namespace A345139.P5217861798293737613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A345139.P5217861798293737613

/-! ## A345139.P9371693111769910012

`Δ[A351621(A028310(n))+A057427(n)]`
-/

namespace A345139.P9371693111769910012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345139.P9371693111769910012

/-! ## A345139.P7424172815802869018

`Δ[A351621(A028310(n))+A019426(2*n)]`
-/

namespace A345139.P7424172815802869018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat + A019426 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345139.P7424172815802869018

/-! ## A345139.P2479972422260253776

`Δ[A351621(A028310(n))]+A227715(n)%2`
-/

namespace A345139.P2479972422260253776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A227715 n) 2

end

end A345139.P2479972422260253776

/-! ## A345139.P6707285168461676303

`Δ[A351621(A028310(n))+A000040(n+1)%2]`
-/

namespace A345139.P6707285168461676303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345139.P6707285168461676303

/-! ## A345139.P2055654686843315147

`Δ[A351621(A028310(n))]+A000010(n+2)%2`
-/

namespace A345139.P2055654686843315147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000010 (n + 2)) 2

end

end A345139.P2055654686843315147

/-! ## A345139.P2538244719266856314

`Δ[A351621(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A345139.P2538244719266856314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345139.P2538244719266856314

/-! ## A345139.P8588193222308095674

`A351621(n+1)+A000007(n)-A351621(A028310(n))`
-/

namespace A345139.P8588193222308095674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (n + 1) + (A000007 n - A351621 (A028310 n).toNat)

end

end A345139.P8588193222308095674

/-! ## A345139.P16673559554830639712

`A351621(n+1)-A057427(n)*A351621(A028310(n))`
-/

namespace A345139.P16673559554830639712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351621 (n + 1) - A057427 n * A351621 (A028310 n).toNat

end

end A345139.P16673559554830639712

/-!
# A345140: a(1) = 1; a(n+1) = n + Sum_{d|n} a(d).

The programs for A345140, there is no canonical definition to state claims against.
-/

/-! ## A345140.P9280052008505617305

`A284584(A350137(∑[∑{d}[n, #]]+1))`
-/

namespace A345140.P9280052008505617305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (A350137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A345140.P9280052008505617305

/-!
# A345141: a(1) = 1, a(2) = 0; a(n+2) = Sum_{d|n} a(d).

The programs for A345141, there is no canonical definition to state claims against.
-/

/-! ## A345141.P10249667771077790076

`A346117(abs(1-n)+2)-A007439(n+1)`
-/

namespace A345141.P10249667771077790076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (|1 - (n : ℤ)| + 2).toNat - A007439 (n + 1)

end

end A345141.P10249667771077790076

/-! ## A345141.P15603801881830516921

`A346117(n+1)+A000007(n)-A007439(n+1)`
-/

namespace A345141.P15603801881830516921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (n + 1) + (A000007 n - A007439 (n + 1))

end

end A345141.P15603801881830516921

/-! ## A345141.P14131833554396565337

`A346117(n+1)-A007439(n+1)*A057427(n)`
-/

namespace A345141.P14131833554396565337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (n + 1) - A007439 (n + 1) * A057427 n

end

end A345141.P14131833554396565337

/-! ## A345141.P5960780921228306922

`A346117(n+1)-A007439(n+1)%A000123(n)`
-/

namespace A345141.P5960780921228306922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346117 (n + 1) - Int.tmod (A007439 (n + 1)) (A000123 n)

end

end A345141.P5960780921228306922

/-!
# A345143: Reflection of the concatenation of the previous two terms minus the previous term.

The programs for A345143, there is no canonical definition to state claims against.
-/

/-! ## A345143.P6414059337700363422

`A007431(A096456(n+2))`
-/

namespace A345143.P6414059337700363422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A096456 (n + 2)).toNat

end

end A345143.P6414059337700363422

/-!
# A345146: Numbers that are the sum of four third powers in nine or more ways.

The programs for A345146, there is no canonical definition to state claims against.
-/

/-! ## A345146.P5586857100198345520

`∪[A345154(n+1), A345155(n+1)]`
-/

namespace A345146.P5586857100198345520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345146.P5586857100198345520

/-!
# A345147: a(1)=1. If a(n) is a novel term, a(n+1) = A000005(a(n)). If a(n) is a repeat term, a(n+1) = a(n)+m, where m is the least prior term (which once used in this way is not used again).

The programs for A345147, there is no canonical definition to state claims against.
-/

/-! ## A345147.P1735529298968719510

`or(A102683(A330459(n)), A361511(n+1))`
-/

namespace A345147.P1735529298968719510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A330459 n).toNat) (A361511 (n + 1))

end

end A345147.P1735529298968719510

/-! ## A345147.P14450191777851663504

`A242112(A032741(A054046(n+1)))`
-/

namespace A345147.P14450191777851663504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A032741 (A054046 (n + 1)).toNat).toNat

end

end A345147.P14450191777851663504

/-! ## A345147.P8184558893782509171

`A361511(n+1)+A025465(A189076(n))`
-/

namespace A345147.P8184558893782509171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1) + A025465 (A189076 n).toNat

end

end A345147.P8184558893782509171

/-! ## A345147.P2980685806926708912

`A361511(n+1)+A102683(A351694(n+1))`
-/

namespace A345147.P2980685806926708912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1) + A102683 (A351694 (n + 1)).toNat

end

end A345147.P2980685806926708912

/-! ## A345147.P15852324875533129485

`A361511(n+1)+A324824(A370117(3*n+4))`
-/

namespace A345147.P15852324875533129485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361511 (n + 1) + A324824 (A370117 (3 * n + 4)).toNat

end

end A345147.P15852324875533129485

/-!
# A345148: Numbers that are the sum of four third powers in six or more ways.

The programs for A345148, there is no canonical definition to state claims against.
-/

/-! ## A345148.P2660975333531886696

`∪[A345149(n+1), A345150(n+1)]`
-/

namespace A345148.P2660975333531886696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345148.P2660975333531886696

/-!
# A345149: Numbers that are the sum of four third powers in exactly six ways.

The programs for A345149, there is no canonical definition to state claims against.
-/

/-! ## A345149.P11615630823062556901

`record[gcd(A251744(n), A345148(n+1))]`
-/

namespace A345149.P11615630823062556901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251744 n) (A345148 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345149.P11615630823062556901

/-! ## A345149.P16336517682604089448

`A345148(gcd(2, A072447(n+1))+n)`
-/

namespace A345149.P16336517682604089448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345148 (Int.gcd 2 (A072447 (n + 1)) + n)

end

end A345149.P16336517682604089448

/-!
# A345150: Numbers that are the sum of four third powers in seven or more ways.

The programs for A345150, there is no canonical definition to state claims against.
-/

/-! ## A345150.P16660801915668126008

`∪[A345151(n+1), A345152(n+1)]`
-/

namespace A345150.P16660801915668126008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345150.P16660801915668126008

/-!
# A345151: Numbers that are the sum of four third powers in exactly seven ways.

The programs for A345151, there is no canonical definition to state claims against.
-/

/-! ## A345151.P8246151229821360382

`A345150(A346151(n)%A346128(2*(n+1)))`
-/

namespace A345151.P8246151229821360382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345150 (Int.tmod (A346151 n) (A346128 (2 * (n + 1)))).toNat

end

end A345151.P8246151229821360382

/-! ## A345151.P15740601740064146912

`A345150(∑[∏{e}[A336568(2*(n+2))+1, #!]])`
-/

namespace A345151.P15740601740064146912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336568 (2 * (n + 2)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345151.P15740601740064146912

/-! ## A345151.P86124776537623132

`A345150(A060683(n+1)^A040790(n))`
-/

namespace A345151.P86124776537623132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345150 (SequenceMachineLib.roundAway ((A060683 (n + 1) : ℚ) ^ (A040790 n : ℤ))).toNat

end

end A345151.P86124776537623132

/-! ## A345151.P879723063729443006

`A345150(A346151(n)%A346167(n+1))`
-/

namespace A345151.P879723063729443006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345150 (Int.tmod (A346151 n) (A346167 (n + 1))).toNat

end

end A345151.P879723063729443006

/-! ## A345151.P127162093900980331

`A345150(A060683(n+1)%A319719(n+2))`
-/

namespace A345151.P127162093900980331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345150 (Int.tmod (A060683 (n + 1)) (A319719 (n + 2))).toNat

end

end A345151.P127162093900980331

/-!
# A345152: Numbers that are the sum of four third powers in eight or more ways.

The programs for A345152, there is no canonical definition to state claims against.
-/

/-! ## A345152.P11405229645695022462

`∪[A345146(n+1), A345153(n+1)]`
-/

namespace A345152.P11405229645695022462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345152.P11405229645695022462

/-!
# A345153: Numbers that are the sum of four third powers in exactly eight ways.

The programs for A345153, there is no canonical definition to state claims against.
-/

/-! ## A345153.P10234673353855788714

`A345152(A032555(n+1)+A003108(n))`
-/

namespace A345153.P10234673353855788714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345152 (A032555 (n + 1) + A003108 n).toNat

end

end A345153.P10234673353855788714

/-! ## A345153.P1905790938203505479

`A345152(A032559(n+1)+A003108(n))`
-/

namespace A345153.P1905790938203505479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345152 (A032559 (n + 1) + A003108 n).toNat

end

end A345153.P1905790938203505479

/-! ## A345153.P11274111951386859583

`A345152(A077739(n+1)+A003108(n))`
-/

namespace A345153.P11274111951386859583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345152 (A077739 (n + 1) + A003108 n).toNat

end

end A345153.P11274111951386859583

/-! ## A345153.P961842365224161651

`A345152(A078213(n+1)+A003108(n))`
-/

namespace A345153.P961842365224161651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345152 (A078213 (n + 1) + A003108 n).toNat

end

end A345153.P961842365224161651

/-! ## A345153.P16742537354512703751

`A345152(A256384(n)+A032555(n+1))`
-/

namespace A345153.P16742537354512703751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345152 (A256384 n + A032555 (n + 1)).toNat

end

end A345153.P16742537354512703751

/-!
# A345155: Numbers that are the sum of four third powers in ten or more ways.

The programs for A345155, there is no canonical definition to state claims against.
-/

/-! ## A345155.P18394954264123071448

`A345146(A219650(n+1)^A276126(n))`
-/

namespace A345155.P18394954264123071448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345146 (SequenceMachineLib.roundAway ((A219650 (n + 1) : ℚ) ^ (A276126 n : ℤ))).toNat

end

end A345155.P18394954264123071448

/-!
# A345160: a(n) = Product_{k=1..n} sigma_3(k).

The programs for A345160, there is no canonical definition to state claims against.
-/

/-! ## A345160.P5728025638065549372

`∏[∑{d}[n+1, #^3]]`
-/

namespace A345160.P5728025638065549372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A345160.P5728025638065549372

/-! ## A345160.P9615903256215498092

`exp(∑[log(∑{d}[n+1, #^3])])`
-/

namespace A345160.P9615903256215498092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∑ d ∈ Nat.divisors (f2 n), d ^ 3 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345160.P9615903256215498092

/-! ## A345160.P7859651503992485262

`a(n-1)*∑{d}[n+1, #^3]` with `a(0)=1`
-/

namespace A345160.P7859651503992485262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ d ∈ Nat.divisors (f1 n), d ^ 3)

end

end A345160.P7859651503992485262

/-! ## A345160.P13956964329031421153

`∏[A001158(n+1)]`
-/

namespace A345160.P13956964329031421153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A345160.P13956964329031421153

/-! ## A345160.P14663527251871152836

`∏[A361794((n+1)²)]`
-/

namespace A345160.P14663527251871152836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361794 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A345160.P14663527251871152836

/-!
# A345161: If n = Product (p_j^k_j) then a(n) = max (nextprime(p_j) - p_j), where nextprime = A151800.

The programs for A345161, there is no canonical definition to state claims against.
-/

/-! ## A345161.P17363055514069877364

`A347237(A109395(2*(n+1)))+1`
-/

namespace A345161.P17363055514069877364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347237 (A109395 (2 * (n + 1))).toNat + 1

end

end A345161.P17363055514069877364

/-! ## A345161.P8847158022160459334

`A347237(A109395(n+1))%(n+1)+1`
-/

namespace A345161.P8847158022160459334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347237 (A109395 (n + 1)).toNat) (n + 1 : ℤ) + 1

end

end A345161.P8847158022160459334

/-! ## A345161.P6983716472362674965

`A347237(A109395((n+1)²))+1-floor(acot(n))`
-/

namespace A345161.P6983716472362674965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347237 (A109395 ((n + 1) ^ 2)).toNat + 1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A345161.P6983716472362674965

/-! ## A345161.P319501028709342915

`A347237(A109395(n+1))+1-A000007(n)`
-/

namespace A345161.P319501028709342915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347237 (A109395 (n + 1)).toNat + 1 - A000007 n

end

end A345161.P319501028709342915

/-! ## A345161.P16677537842424940712

`A347237(A109395(n+1))+n+1-A028310(n)`
-/

namespace A345161.P16677537842424940712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347237 (A109395 (n + 1)).toNat + (n + 1 : ℤ) - A028310 n

end

end A345161.P16677537842424940712

/-! ## A345161.P4860004143432099412

`A347237(A109395(n+1))-A209229(n²+2)+1`
-/

namespace A345161.P4860004143432099412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347237 (A109395 (n + 1)).toNat - A209229 (n ^ 2 + 2) + 1

end

end A345161.P4860004143432099412

/-!
# A345162: Number of integer partitions of n with no alternating permutation covering an initial interval of positive integers.

The programs for A345162, there is no canonical definition to state claims against.
-/

/-! ## A345162.P15846584725009236751

`A000009(n)-A345163(n)`
-/

namespace A345162.P15846584725009236751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A345163 n

end

end A345162.P15846584725009236751

/-! ## A345162.P4897947613209765217

`abs(A081360(n))-A345163(n)`
-/

namespace A345162.P4897947613209765217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A345163 n

end

end A345162.P4897947613209765217

/-! ## A345162.P3570779457007773753

`∑[A087897(n)]-A345163(n)`
-/

namespace A345162.P3570779457007773753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A345163 n

end

end A345162.P3570779457007773753

/-! ## A345162.P5034134050168871018

`A096765(n)+A025147(n)-A345163(n)`
-/

namespace A345162.P5034134050168871018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n - A345163 n

end

end A345162.P5034134050168871018

/-! ## A345162.P1023446233367495956

`A238708(n)+A003114(n)-A345163(n)`
-/

namespace A345162.P1023446233367495956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238708 n + A003114 n - A345163 n

end

end A345162.P1023446233367495956

/-! ## A345162.P13753389511424291849

`A284593(∑[n])-A345163(n)`
-/

namespace A345162.P13753389511424291849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) - A345163 n

end

end A345162.P13753389511424291849

/-!
# A345163: Number of integer partitions of n with an alternating permutation covering an initial interval of positive integers.

The programs for A345163, there is no canonical definition to state claims against.
-/

/-! ## A345163.P9070746000324177500

`A000009(n)-A345162(n)`
-/

namespace A345163.P9070746000324177500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A345162 n

end

end A345163.P9070746000324177500

/-! ## A345163.P9798542298369028656

`abs(A081360(n))-A345162(n)`
-/

namespace A345163.P9798542298369028656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A345162 n

end

end A345163.P9798542298369028656

/-! ## A345163.P16199771683964908548

`∑[A087897(n)]-A345162(n)`
-/

namespace A345163.P16199771683964908548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A345162 n

end

end A345163.P16199771683964908548

/-! ## A345163.P12441439783904233271

`A111133(n)+1-A345162(n)`
-/

namespace A345163.P12441439783904233271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1 - A345162 n

end

end A345163.P12441439783904233271

/-! ## A345163.P10277618264396842694

`A284593(∑[n])-A345162(n)`
-/

namespace A345163.P10277618264396842694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) - A345162 n

end

end A345163.P10277618264396842694

/-!
# A345164: Number of alternating permutations of the multiset of prime factors of n.

The programs for A345164, there is no canonical definition to state claims against.
-/

/-! ## A345164.P9407681859358927788

`ceil(γ*A335452(n+1))`
-/

namespace A345164.P9407681859358927788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A335452 (n + 1) : ℝ)⌉

end

end A345164.P9407681859358927788

/-! ## A345164.P6738783058297132885

`ceil(2*abs(A355817(n+1))/3)`
-/

namespace A345164.P6738783058297132885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((|A355817 (n + 1)| : ℚ) / 3)⌉

end

end A345164.P6738783058297132885

/-! ## A345164.P2971110788587968608

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A350251(n+1)`
-/

namespace A345164.P2971110788587968608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A350251 (n + 1) : ℚ)

end

end A345164.P2971110788587968608

/-! ## A345164.P38790548641344318

`A003002(A335452(n+1))`
-/

namespace A345164.P38790548641344318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A335452 (n + 1)).toNat

end

end A345164.P38790548641344318

/-! ## A345164.P7099144149330934969

`A003002(abs(A355817(n+1)))`
-/

namespace A345164.P7099144149330934969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 |A355817 (n + 1)|.toNat

end

end A345164.P7099144149330934969

/-! ## A345164.P12811830780897636914

`A053644(abs(A355817(n+1)))`
-/

namespace A345164.P12811830780897636914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 |A355817 (n + 1)|.toNat

end

end A345164.P12811830780897636914

/-! ## A345164.P13220820060245027617

`A219642(abs(A355817(n+1)))`
-/

namespace A345164.P13220820060245027617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 |A355817 (n + 1)|.toNat

end

end A345164.P13220820060245027617

/-! ## A345164.P18239545678766840650

`A000720(A335452(n+1)+1)`
-/

namespace A345164.P18239545678766840650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A335452 (n + 1) + 1).toNat

end

end A345164.P18239545678766840650

/-! ## A345164.P8110094001418883422

`A056239(A335452(n+1)+1)`
-/

namespace A345164.P8110094001418883422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A335452 (n + 1) + 1).toNat

end

end A345164.P8110094001418883422

/-! ## A345164.P8397024928944467491

`A346697(A335452(n+1)+1)`
-/

namespace A345164.P8397024928944467491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (A335452 (n + 1) + 1).toNat

end

end A345164.P8397024928944467491

/-!
# A345165: Number of integer partitions of n without an alternating permutation.

The programs for A345165, there is no canonical definition to state claims against.
-/

/-! ## A345165.P11128649628366046858

`A344654(n)+char[2*(n+1)]`
-/

namespace A345165.P11128649628366046858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344654 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A345165.P11128649628366046858

/-! ## A345165.P13683224982752206823

`A345166(n)+A325535(n)`
-/

namespace A345165.P13683224982752206823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345166 n + A325535 n

end

end A345165.P13683224982752206823

/-! ## A345165.P8183419069465722734

`A000041(n)-A345170(n)`
-/

namespace A345165.P8183419069465722734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A345170 n

end

end A345165.P8183419069465722734

/-! ## A345165.P9523264019963960608

`sqrt(A001255(n))-A345170(n)`
-/

namespace A345165.P9523264019963960608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A345170 n : ℝ)

end

end A345165.P9523264019963960608

/-! ## A345165.P9815593305257224249

`A119620(2*n)-A345170(n)`
-/

namespace A345165.P9815593305257224249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A345170 n

end

end A345165.P9815593305257224249

/-!
# A345166: Number of separable integer partitions of n without an alternating permutation.

The programs for A345166, there is no canonical definition to state claims against.
-/

/-! ## A345166.P10476172491242423949

`A325534(n)-A345170(n)`
-/

namespace A345166.P10476172491242423949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 n - A345170 n

end

end A345166.P10476172491242423949

/-! ## A345166.P2525025668561486820

`A345165(n)-A325535(n)`
-/

namespace A345166.P2525025668561486820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345165 n - A325535 n

end

end A345166.P2525025668561486820

/-! ## A345166.P3314456091044687323

`A345165(n)%A325535(round(acot(n)+n))`
-/

namespace A345166.P3314456091044687323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345165 n) (A325535 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A345166.P3314456091044687323

/-! ## A345166.P8074807583526113725

`A000041(n)-(A345170(n)+A325535(n))`
-/

namespace A345166.P8074807583526113725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A345170 n + A325535 n)

end

end A345166.P8074807583526113725

/-! ## A345166.P18432582119009599222

`A325534(n)-(A035363(2*n)-A345165(n))`
-/

namespace A345166.P18432582119009599222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 n - (A035363 (2 * n) - A345165 n)

end

end A345166.P18432582119009599222

/-!
# A345167: Numbers k such that the k-th composition in standard order is alternating.

The programs for A345167, there is no canonical definition to state claims against.
-/

/-! ## A345167.P15911590559003635195

`∪[A350355(n+1), A350356(n+1)]`
-/

namespace A345167.P15911590559003635195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345167.P15911590559003635195

/-! ## A345167.P9693258103062381341

`comp[A345168(n+1)]%A124053(n+1)`
-/

namespace A345167.P9693258103062381341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A124053 (n + 1))

end

end A345167.P9693258103062381341

/-! ## A345167.P11975332326615821325

`eq[A124762(n), A380955(A335454(n))]`
-/

namespace A345167.P11975332326615821325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380955 (A335454 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345167.P11975332326615821325

/-! ## A345167.P4664206174955999161

`A000196(comp[A345168(n+1)]²)`
-/

namespace A345167.P4664206174955999161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A345167.P4664206174955999161

/-! ## A345167.P259486352747237043

`A349797(2*n+1)+comp[A345168(n+1)]`
-/

namespace A345167.P259486352747237043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A345167.P259486352747237043

/-!
# A345168: Numbers k such that the k-th composition in standard order is not alternating.

The programs for A345168, there is no canonical definition to state claims against.
-/

/-! ## A345168.P16980324350626049799

`comp[A345167(n+1)]`
-/

namespace A345168.P16980324350626049799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345168.P16980324350626049799

/-! ## A345168.P9812998922861619352

`comp[record[A345167(A286378(n))]]`
-/

namespace A345168.P9812998922861619352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345168.P9812998922861619352

/-! ## A345168.P14943432226640019421

`comp[record[A345167(A286554(n))]]`
-/

namespace A345168.P14943432226640019421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A286554 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345168.P14943432226640019421

/-! ## A345168.P8482260347428092058

`comp[record[A345167(A291769(n))]]`
-/

namespace A345168.P8482260347428092058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345168.P8482260347428092058

/-! ## A345168.P8131873856851377610

`comp[record[A345167(A328399(n))]]`
-/

namespace A345168.P8131873856851377610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345168.P8131873856851377610

/-! ## A345168.P515576140182346137

`comp[record[A345167(A344180(n))]]`
-/

namespace A345168.P515576140182346137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345168.P515576140182346137

/-! ## A345168.P17301623603726569292

`∪[A349057(n+1), A349799(n+1)]`
-/

namespace A345168.P17301623603726569292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345168.P17301623603726569292

/-! ## A345168.P4052092526446594792

`eq[char[A345167(n+2)], A000122(2*n)]`
-/

namespace A345168.P4052092526446594792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A345168.P4052092526446594792

/-! ## A345168.P12012371134449059170

`comp[∪[A350355(n+1), A350356(n+1)]]`
-/

namespace A345168.P12012371134449059170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A345168.P12012371134449059170

/-!
# A345169: Numbers k such that the k-th composition in standard order is a non-alternating anti-run.

The programs for A345169, there is no canonical definition to state claims against.
-/

/-! ## A345169.P5937447071530898758

`∩[A333489(A004709(n+1)), A349057(n+1)]`
-/

namespace A345169.P5937447071530898758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A004709 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345169.P5937447071530898758

/-! ## A345169.P2748127385494254301

`∩[A333489(n+1), A345168(n+1)]`
-/

namespace A345169.P2748127385494254301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345169.P2748127385494254301

/-!
# A345170: Number of integer partitions of n with an alternating permutation.

The programs for A345170, there is no canonical definition to state claims against.
-/

/-! ## A345170.P10889334638349762900

`A344740(n)-char[2*(n+1)]`
-/

namespace A345170.P10889334638349762900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344740 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A345170.P10889334638349762900

/-! ## A345170.P336809038453958544

`A000041(n)-A345165(n)`
-/

namespace A345170.P336809038453958544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A345165 n

end

end A345170.P336809038453958544

/-! ## A345170.P6880833120967711959

`A325534(n)-A345166(n)`
-/

namespace A345170.P6880833120967711959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325534 n - A345166 n

end

end A345170.P6880833120967711959

/-! ## A345170.P4923226665109475272

`∑[A002865(n)]-A345165(n)`
-/

namespace A345170.P4923226665109475272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A345165 n

end

end A345170.P4923226665109475272

/-! ## A345170.P1040854627490393634

`A035363(2*n)-A345165(n)`
-/

namespace A345170.P1040854627490393634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A345165 n

end

end A345170.P1040854627490393634

/-! ## A345170.P16450514913042707307

`A000041(n)-(A344654(n)+char[2*(n+1)])`
-/

namespace A345170.P16450514913042707307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A344654 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A345170.P16450514913042707307

/-! ## A345170.P9644909850579183249

`A000041(n)-(A345166(n)+A325535(n))`
-/

namespace A345170.P9644909850579183249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A345166 n + A325535 n)

end

end A345170.P9644909850579183249

/-! ## A345170.P17425224864809297716

`A208738(n)-(A345165(n)+A208740(n+1))`
-/

namespace A345170.P17425224864809297716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208738 n - (A345165 n + A208740 (n + 1))

end

end A345170.P17425224864809297716

/-!
# A345171: Numbers whose multiset of prime factors has no alternating permutation.

The programs for A345171, there is no canonical definition to state claims against.
-/

/-! ## A345171.P1279751439912076305

`∪[A335448(n+1), A291789(n)]`
-/

namespace A345171.P1279751439912076305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P1279751439912076305

/-! ## A345171.P657488770236088117

`∪[A001248(n+1), A344653(n+1)]`
-/

namespace A345171.P657488770236088117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P657488770236088117

/-! ## A345171.P10826113575583075163

`∪[A036454(n+1), A344653(n+1)]`
-/

namespace A345171.P10826113575583075163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P10826113575583075163

/-! ## A345171.P13759994878350726262

`∪[A051676(n+1), A344653(n+1)]`
-/

namespace A345171.P13759994878350726262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P13759994878350726262

/-! ## A345171.P12553424398746804967

`∪[A052043(n+1), A344653(n+1)]`
-/

namespace A345171.P12553424398746804967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P12553424398746804967

/-! ## A345171.P6027987163423334624

`∪[A053810(n+1), A344653(n+1)]`
-/

namespace A345171.P6027987163423334624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P6027987163423334624

/-! ## A345171.P6834873291678517892

`∪[A073045(n+1), A344653(n+1)]`
-/

namespace A345171.P6834873291678517892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P6834873291678517892

/-! ## A345171.P10687560362221342095

`∪[A077438(n+1), A344653(n+1)]`
-/

namespace A345171.P10687560362221342095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P10687560362221342095

/-! ## A345171.P14405821976735335185

`∪[A082180(n+1), A344653(n+1)]`
-/

namespace A345171.P14405821976735335185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P14405821976735335185

/-! ## A345171.P9154739292474438053

`∪[A082522(n+1), A344653(n+1)]`
-/

namespace A345171.P9154739292474438053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345171.P9154739292474438053

/-!
# A345173: Numbers whose multiset of prime factors is separable but has no alternating permutation.

The programs for A345173, there is no canonical definition to state claims against.
-/

/-! ## A345173.P18341974214363919357

`record[54*A053672(n+1)]`
-/

namespace A345173.P18341974214363919357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A053672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345173.P18341974214363919357

/-! ## A345173.P5516509685936765395

`record[54*A205236(n+1)]`
-/

namespace A345173.P5516509685936765395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * A205236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345173.P5516509685936765395

/-! ## A345173.P17388383062770547544

`∩[A189975(n+1), A348609(n+1)]`
-/

namespace A345173.P17388383062770547544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345173.P17388383062770547544

/-! ## A345173.P5509161524545676502

`A000040(n+3)*A040702(A000142(n))`
-/

namespace A345173.P5509161524545676502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A040702 (A000142 n).toNat

end

end A345173.P5509161524545676502

/-!
# A345174: Numbers that are the sum of five third powers in six or more ways.

The programs for A345174, there is no canonical definition to state claims against.
-/

/-! ## A345174.P9296627254476784581

`∪[A345175(n+1), A345180(n+1)]`
-/

namespace A345174.P9296627254476784581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345174.P9296627254476784581

/-! ## A345174.P13772536980582082567

`record[A345175(A002377(n+1))]`
-/

namespace A345174.P13772536980582082567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345175 (A002377 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345174.P13772536980582082567

/-! ## A345174.P3460602952704492329

`A345175(n+1)%A247830(n+1)`
-/

namespace A345174.P3460602952704492329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345175 (n + 1)) (A247830 (n + 1))

end

end A345174.P3460602952704492329

/-! ## A345174.P12937865348792204478

`A345175(n+1)+A147645(2^((n-1)%(n+1)))`
-/

namespace A345174.P12937865348792204478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345175 (n + 1) + A147645 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat

end

end A345174.P12937865348792204478

/-! ## A345174.P4333364356027857740

`A345175(∑[A001249(n)^A058343(n)])`
-/

namespace A345174.P4333364356027857740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001249 n : ℚ) ^ (A058343 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345175 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345174.P4333364356027857740

/-!
# A345175: Numbers that are the sum of five third powers in exactly six ways.

The programs for A345175, there is no canonical definition to state claims against.
-/

/-! ## A345175.P13788765167160848799

`A345174(A110303(n+1)%A048367(n+1))`
-/

namespace A345175.P13788765167160848799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345174 (Int.tmod (A110303 (n + 1)) (A048367 (n + 1))).toNat

end

end A345175.P13788765167160848799

/-!
# A345177: a(0) = 1, a(1) = 0; a(n+2) = Sum_{k=0..n} Stirling2(n,k) * a(k).

The programs for A345177, there is no canonical definition to state claims against.
-/

/-! ## A345177.P12787033509904953118

`A007469(round(acot(n)+n))-A345178(n)`
-/

namespace A345177.P12787033509904953118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A345178 n

end

end A345177.P12787033509904953118

/-! ## A345177.P5345367642684610683

`A007469(A028310(n))-A345178(n)`
-/

namespace A345177.P5345367642684610683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (A028310 n).toNat - A345178 n

end

end A345177.P5345367642684610683

/-! ## A345177.P3387621887392248985

`A007469(A233583(n+1))-A345178(n)`
-/

namespace A345177.P3387621887392248985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (A233583 (n + 1)).toNat - A345178 n

end

end A345177.P3387621887392248985

/-! ## A345177.P3853297656707981140

`A007469(A000007(n)+n)-A345178(n)`
-/

namespace A345177.P3853297656707981140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (A000007 n + (n : ℤ)).toNat - A345178 n

end

end A345177.P3853297656707981140

/-! ## A345177.P3499915182060357479

`A007469(A000038(n)+n)-A345178(n)`
-/

namespace A345177.P3499915182060357479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (A000038 n + (n : ℤ)).toNat - A345178 n

end

end A345177.P3499915182060357479

/-! ## A345177.P7557330454229688151

`A007469(A087255(n²+1)+n)-A345178(n)`
-/

namespace A345177.P7557330454229688151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (A087255 (n ^ 2 + 1) + (n : ℤ)).toNat - A345178 n

end

end A345177.P7557330454229688151

/-!
# A345178: a(0) = 0, a(1) = 1; a(n+2) = Sum_{k=0..n} Stirling2(n,k) * a(k).

The programs for A345178, there is no canonical definition to state claims against.
-/

/-! ## A345178.P13595437225525361639

`A007469(abs(1-n)+1)-A345177(n)`
-/

namespace A345178.P13595437225525361639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007469 (|1 - (n : ℤ)| + 1).toNat - A345177 n

end

end A345178.P13595437225525361639

/-! ## A345178.P16310872725311587434

`A365661(A078678(n))%A000420(n)`
-/

namespace A345178.P16310872725311587434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365661 (A078678 n).toNat) (A000420 n)

end

end A345178.P16310872725311587434

/-! ## A345178.P8710209600057766317

`A033183(xor(A124531(n), A218585(n+1)))`
-/

namespace A345178.P8710209600057766317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (Int.xor (A124531 n) (A218585 (n + 1))).toNat

end

end A345178.P8710209600057766317

/-!
# A345180: Numbers that are the sum of five third powers in seven or more ways.

The programs for A345180, there is no canonical definition to state claims against.
-/

/-! ## A345180.P8514285674641718933

`∪[A345181(n+1), A345183(n+1)]`
-/

namespace A345180.P8514285674641718933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345180.P8514285674641718933

/-!
# A345181: Numbers that are the sum of five third powers in exactly seven ways.

The programs for A345181, there is no canonical definition to state claims against.
-/

/-! ## A345181.P16061710460513868656

`record[A345180(A093640(2*(n+2)+1))]`
-/

namespace A345181.P16061710460513868656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345180 (A093640 (2 * (n + 2) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345181.P16061710460513868656

/-! ## A345181.P4209028861463828312

`A345180(comp[A164555(∑[n])])`
-/

namespace A345181.P4209028861463828312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345180 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345181.P4209028861463828312

/-! ## A345181.P1811301775294524612

`A345180(comp[A279847(n+1)-A296406(n)])`
-/

namespace A345181.P1811301775294524612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279847 (n + 1) - A296406 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345180 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345181.P1811301775294524612

/-!
# A345182: a(1) = 1, a(2) = 0; a(n) = Sum_{d|n, d < n} a(d).

The programs for A345182, there is no canonical definition to state claims against.
-/

/-! ## A345182.P12724584484522481842

`A002033(n)-A074206(∑[n]%(n+1))`
-/

namespace A345182.P12724584484522481842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A074206 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A345182.P12724584484522481842

/-! ## A345182.P3235193586827556121

`∑{d}[n+1, A067824(#)*A092673((n+1)/#)]`
-/

namespace A345182.P3235193586827556121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067824 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P3235193586827556121

/-! ## A345182.P5870807165414486723

`∑{d}[n+1, A026741(#)*A323910((n+1)/#)]`
-/

namespace A345182.P5870807165414486723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P5870807165414486723

/-! ## A345182.P8111544811152498815

`∑{d}[n+1, A002131(#)*A378432((n+1)/#)]`
-/

namespace A345182.P8111544811152498815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P8111544811152498815

/-! ## A345182.P6536444842795747707

`∑{d}[n+1, A008683(#)*A378223((n+1)/#)]`
-/

namespace A345182.P6536444842795747707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P6536444842795747707

/-! ## A345182.P7515208116927853106

`∑{d}[n+1, A323912(#)*A326305((n+1)/#)]`
-/

namespace A345182.P7515208116927853106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P7515208116927853106

/-! ## A345182.P17043978247222624895

`∑{d}[n+1, A330575(#)*A359484((n+1)/#)]`
-/

namespace A345182.P17043978247222624895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330575 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P17043978247222624895

/-! ## A345182.P11251279160986063696

`A074206(n+1)-A074206(∑[n+1]%(n+1))`
-/

namespace A345182.P11251279160986063696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A074206 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A345182.P11251279160986063696

/-! ## A345182.P12693828269845878473

`∑{d}[n+1, A002033(#-1)*A154955((n+1)/#)]`
-/

namespace A345182.P12693828269845878473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P12693828269845878473

/-! ## A345182.P10619963775850361782

`∑{d}[n+1, A059841(#-1)*A174725((n+1)/#)]`
-/

namespace A345182.P10619963775850361782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345182.P10619963775850361782

/-! ## A345182.P17765813670229250014

`A074206(n+1)-A074206(A142150(n+1))`
-/

namespace A345182.P17765813670229250014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A074206 (A142150 (n + 1)).toNat

end

end A345182.P17765813670229250014

/-!
# A345183: Numbers that are the sum of five third powers in eight or more ways.

The programs for A345183, there is no canonical definition to state claims against.
-/

/-! ## A345183.P3730506639079481150

`∪[A345184(n+1), A345185(n+1)]`
-/

namespace A345183.P3730506639079481150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345183.P3730506639079481150

/-! ## A345183.P3597395500877372968

`record[A345184(A341132(n+3))]`
-/

namespace A345183.P3597395500877372968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345184 (A341132 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345183.P3597395500877372968

/-! ## A345183.P5872527132663084903

`A345184(A245791(n)!+n)`
-/

namespace A345183.P5872527132663084903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345184 (Nat.factorial (A245791 n).toNat + n)

end

end A345183.P5872527132663084903

/-! ## A345183.P13973658411735581133

`A345184(∑[A345191(n+1)!])`
-/

namespace A345183.P13973658411735581133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A345191 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345184 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345183.P13973658411735581133

/-! ## A345183.P8191896483005377819

`record[A345184(n+1)/A279758(n)]`
-/

namespace A345183.P8191896483005377819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345184 (n + 1) : ℚ) / (A279758 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345183.P8191896483005377819

/-!
# A345184: Numbers that are the sum of five third powers in exactly eight ways.

The programs for A345184, there is no canonical definition to state claims against.
-/

/-! ## A345184.P10685881514649807724

`A345183(lt[A345176(n+1), A345209(3*n+1)])`
-/

namespace A345184.P10685881514649807724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345209 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345183 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345184.P10685881514649807724

/-!
# A345185: Numbers that are the sum of five third powers in nine or more ways.

The programs for A345185, there is no canonical definition to state claims against.
-/

/-! ## A345185.P5061977999999702718

`∪[A345186(n+1), A345187(n+1)]`
-/

namespace A345185.P5061977999999702718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345185.P5061977999999702718

/-! ## A345185.P5057643363069507739

`∪[A345188((n+1)^A145078(n+1)), A345186(n+1)]`
-/

namespace A345185.P5057643363069507739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A145078 (n + 1) : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345185.P5057643363069507739

/-! ## A345185.P1279412495435805237

`∪[A345186(n+1), A345188(n+1)%A068232(3*n+5)]`
-/

namespace A345185.P1279412495435805237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345188 (n + 1)) (A068232 (3 * n + 5))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345185.P1279412495435805237

/-!
# A345187: Numbers that are the sum of five third powers in ten or more ways.

The programs for A345187, there is no canonical definition to state claims against.
-/

/-! ## A345187.P14876546354259498962

`A075054(A345188(n+1))`
-/

namespace A345187.P14876546354259498962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A345188 (n + 1)).toNat

end

end A345187.P14876546354259498962

/-! ## A345187.P9152577969247078404

`A345188(A032551(n+2))`
-/

namespace A345187.P9152577969247078404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345188 (A032551 (n + 2)).toNat

end

end A345187.P9152577969247078404

/-! ## A345187.P9799683996847527440

`A345188(∑[A005447(n)²])`
-/

namespace A345187.P9799683996847527440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005447 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345187.P9799683996847527440

/-!
# A345188: Numbers that are the sum of five third powers in exactly ten ways.

The programs for A345188, there is no canonical definition to state claims against.
-/

/-! ## A345188.P135154694815383024

`record[A345187(n+1)/A146292(A296599(n+1))]`
-/

namespace A345188.P135154694815383024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345187 (n + 1) : ℚ) / (A146292 (A296599 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345188.P135154694815383024

/-! ## A345188.P7025773576998370534

`A345187(A038766(n)+A032551(n+1))`
-/

namespace A345188.P7025773576998370534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345187 (A038766 n + A032551 (n + 1)).toNat

end

end A345188.P7025773576998370534

/-! ## A345188.P10426444893933498748

`record[A345187(n+1)*A345197(A345195(n))]`
-/

namespace A345188.P10426444893933498748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345187 (n + 1) * A345197 (A345195 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345188.P10426444893933498748

/-!
# A345189: Number of rows with the value "false" in the Kleene truth tables of all bracketed formulae with n distinct propositions p1, ..., pn connected by the binary connective of implication.

The programs for A345189, there is no canonical definition to state claims against.
-/

/-! ## A345189.P13472757937186862048

`2*A005159(n)-A345190(n+1)`
-/

namespace A345189.P13472757937186862048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005159 n - A345190 (n + 1)

end

end A345189.P13472757937186862048

/-! ## A345189.P12039816690806398484

`A025226(n+1)%(A345190(n+1)+A005159(n))`
-/

namespace A345189.P12039816690806398484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025226 (n + 1)) (A345190 (n + 1) + A005159 n)

end

end A345189.P12039816690806398484

/-!
# A345190: Number of rows with the value "true" in the Kleene truth tables of all bracketed formulae with n distinct propositions p1, ..., pn connected by the binary connective of implication.

The programs for A345190, there is no canonical definition to state claims against.
-/

/-! ## A345190.P7371673777846564533

`2*A005159(n)-A345189(n+1)`
-/

namespace A345190.P7371673777846564533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005159 n - A345189 (n + 1)

end

end A345190.P7371673777846564533

/-! ## A345190.P8285463018379753126

`A025226(n+1)-(A345189(n+1)+A005159(n))`
-/

namespace A345190.P8285463018379753126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025226 (n + 1) - (A345189 (n + 1) + A005159 n)

end

end A345190.P8285463018379753126

/-!
# A345192: Number of non-alternating compositions of n.

The programs for A345192, there is no canonical definition to state claims against.
-/

/-! ## A345192.P17077612814744213125

`A011782(n)-A025047(n)`
-/

namespace A345192.P17077612814744213125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A025047 n

end

end A345192.P17077612814744213125

/-! ## A345192.P13223008188864939260

`A345195(n)+A261983(n)`
-/

namespace A345192.P13223008188864939260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345195 n + A261983 n

end

end A345192.P13223008188864939260

/-! ## A345192.P377983070368277985

`A349800(n)+A349053(n)`
-/

namespace A345192.P377983070368277985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349800 n + A349053 n

end

end A345192.P377983070368277985

/-! ## A345192.P441608820249974455

`A003242(n)+A261983(n)-A025047(n)`
-/

namespace A345192.P441608820249974455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A261983 n - A025047 n)

end

end A345192.P441608820249974455

/-! ## A345192.P5153499364105876484

`A011782(n)+A345195(n)-A003242(n)`
-/

namespace A345192.P5153499364105876484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A345195 n - A003242 n)

end

end A345192.P5153499364105876484

/-! ## A345192.P5582472454246992845

`A349052(n)+A349053(n)-A025047(n)`
-/

namespace A345192.P5582472454246992845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349052 n + (A349053 n - A025047 n)

end

end A345192.P5582472454246992845

/-!
# A345193: Heinz numbers of non-twin (x,x) inseparable partitions.

The programs for A345193, there is no canonical definition to state claims against.
-/

/-! ## A345193.P16515254365410789830

`∩[A344653(n+1), A335448(n+2)]`
-/

namespace A345193.P16515254365410789830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345193.P16515254365410789830

/-! ## A345193.P11387570286239460924

`∩[A335448(n+1), A375145(n+1)]`
-/

namespace A345193.P11387570286239460924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345193.P11387570286239460924

/-! ## A345193.P15418200591540228186

`∩[A046099(n+1), A335448(n+1)]`
-/

namespace A345193.P15418200591540228186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345193.P15418200591540228186

/-! ## A345193.P12456433117697824199

`∩[A344653(n+1), A212164(n+2)]`
-/

namespace A345193.P12456433117697824199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345193.P12456433117697824199

/-!
# A345194: Number of alternating patterns of length n.

The programs for A345194, there is no canonical definition to state claims against.
-/

/-! ## A345194.P5346917318029801500

`ceil(A349058(n)/2)`
-/

namespace A345194.P5346917318029801500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349058 n : ℚ) / 2⌉

end

end A345194.P5346917318029801500

/-! ## A345194.P13687234005309582624

`lcm(A327767(A001615(n+1)), A350354(n))`
-/

namespace A345194.P13687234005309582624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327767 (A001615 (n + 1)).toNat) (A350354 n)

end

end A345194.P13687234005309582624

/-! ## A345194.P11042880011473451177

`A000670(n)-A350252(n)`
-/

namespace A345194.P11042880011473451177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A350252 n

end

end A345194.P11042880011473451177

/-! ## A345194.P326084989977050763

`A122101(∑[n])-A350252(n)`
-/

namespace A345194.P326084989977050763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A350252 n

end

end A345194.P326084989977050763

/-! ## A345194.P87685553654302249

`A350354(n)+A350354(n)%A000670(n)`
-/

namespace A345194.P87685553654302249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350354 n + Int.tmod (A350354 n) (A000670 n)

end

end A345194.P87685553654302249

/-! ## A345194.P15666657938887556093

`A000629(n)/A284694((n+1)²)-A350252(n)`
-/

namespace A345194.P15666657938887556093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n : ℚ) / (A284694 ((n + 1) ^ 2) : ℚ) - (A350252 n : ℚ)

end

end A345194.P15666657938887556093

/-! ## A345194.P10276900390174714007

`A000629(n)/A020639(A004277(n))-A350252(n)`
-/

namespace A345194.P10276900390174714007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n : ℚ) / (A020639 (A004277 n).toNat : ℚ) - (A350252 n : ℚ)

end

end A345194.P10276900390174714007

/-! ## A345194.P14610783219251592575

`A000629(n)/A000005(A284694(n+1))-A350252(n)`
-/

namespace A345194.P14610783219251592575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n : ℚ) / (A000005 (A284694 (n + 1)).toNat : ℚ) - (A350252 n : ℚ)

end

end A345194.P14610783219251592575

/-!
# A345195: Number of non-alternating anti-run compositions of n.

The programs for A345195, there is no canonical definition to state claims against.
-/

/-! ## A345195.P13671780438770698289

`A003242(n)-A025047(n)`
-/

namespace A345195.P13671780438770698289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A025047 n

end

end A345195.P13671780438770698289

/-! ## A345195.P9754007592463790278

`A032020(n)+A285981(n)-A025047(n)`
-/

namespace A345195.P9754007592463790278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A285981 n - A025047 n)

end

end A345195.P9754007592463790278

/-! ## A345195.P9746086941231140785

`A345192(n)-A261983(n)`
-/

namespace A345195.P9746086941231140785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n - A261983 n

end

end A345195.P9746086941231140785

/-! ## A345195.P10647126129592427133

`A348377(n)-A348382(n)`
-/

namespace A345195.P10647126129592427133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348377 n - A348382 n

end

end A345195.P10647126129592427133

/-! ## A345195.P14857966268457564795

`A011782(n)-(A261983(n)+A025047(n))`
-/

namespace A345195.P14857966268457564795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A261983 n + A025047 n)

end

end A345195.P14857966268457564795

/-! ## A345195.P17253441660157335380

`A003242(n)+A345192(n)-A011782(n)`
-/

namespace A345195.P17253441660157335380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A345192 n - A011782 n)

end

end A345195.P17253441660157335380

/-! ## A345195.P14815194940507120854

`A106356(A152947(n+1))-A025047(n)`
-/

namespace A345195.P14815194940507120854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A152947 (n + 1)).toNat - A025047 n

end

end A345195.P14815194940507120854

/-! ## A345195.P2861976442055474017

`A261960(Δ[A074742(n)])-A025047(n)`
-/

namespace A345195.P2861976442055474017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261960 (f1 (n + 1) - f1 n).toNat - A025047 n

end

end A345195.P2861976442055474017

/-!
# A345197: Concatenation of square matrices A(n), each read by rows, where A(n)(k,i) is the number of compositions of n of length k with alternating sum i, where 1 <= k <= n, and i ranges from -n + 2 to n in steps of 2.

The programs for A345197, there is no canonical definition to state claims against.
-/

/-! ## A345197.P10429222660863626734

`A055641(lcm(A000003(n+1), A366463(n+1)))`
-/

namespace A345197.P10429222660863626734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.lcm (A000003 (n + 1)) (A366463 (n + 1)))

end

end A345197.P10429222660863626734

/-! ## A345197.P13251782451143819241

`A055641(A131818(n+2)*A366463(n+1))`
-/

namespace A345197.P13251782451143819241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A131818 (n + 2) * A366463 (n + 1)).toNat

end

end A345197.P13251782451143819241

/-! ## A345197.P11203300272551470114

`A010060(∑[A287950(n)+n])`
-/

namespace A345197.P11203300272551470114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287950 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345197.P11203300272551470114

/-! ## A345197.P16184303229976531965

`A344739(lcm(4, A057149(n+1)))`
-/

namespace A345197.P16184303229976531965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (Int.lcm 4 (A057149 (n + 1)))

end

end A345197.P16184303229976531965

/-! ## A345197.P12915060255592393855

`log2(A242784(n))^A055599(n+1)`
-/

namespace A345197.P12915060255592393855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A242784 n : ℝ) ^ (A055599 (n + 1) : ℤ)

end

end A345197.P12915060255592393855

